; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc3/gadget.c_pt.bc'
source_filename = "../drivers/usb/dwc3/gadget.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dwc3_ep = type { %struct.usb_ep, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, i8, i8, i32, i32, [20 x i8], i8, i8, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dwc3_event_buffer = type { ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%union.power_supply_propval = type { i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_dcd_config_params = type { i8, i16, i8, i8 }
%union.dwc3_event = type { i32 }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dwc3_send_gadget_ep_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/usb/dwc3/gadget.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s %s: wakeup failed --> %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s %s: No resource for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s %s: UNKNOWN cmd status\0A\00", [37 x i8] zeroinitializer }, align 32
@__dwc3_gadget_ep_set_halt._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 2071, ptr @.str.6, ptr @.str.7 }, align 1
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s is of Isochronous type\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__dwc3_gadget_ep_set_halt\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__dwc3_gadget_ep_set_halt._entry_ptr = internal global ptr @__dwc3_gadget_ep_set_halt._entry, section ".printk_index", align 4
@__dwc3_gadget_ep_set_halt._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str, i32 2100, ptr @.str.6, ptr @.str.7 }, align 1
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set STALL on %s\0A\00", [37 x i8] zeroinitializer }, align 32
@__dwc3_gadget_ep_set_halt._entry_ptr.10 = internal global ptr @__dwc3_gadget_ep_set_halt._entry.8, section ".printk_index", align 4
@__dwc3_gadget_ep_set_halt._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str, i32 2129, ptr @.str.6, ptr @.str.7 }, align 1
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to clear STALL on %s\0A\00", [35 x i8] zeroinitializer }, align 32
@__dwc3_gadget_ep_set_halt._entry_ptr.13 = internal global ptr @__dwc3_gadget_ep_set_halt._entry.11, section ".printk_index", align 4
@dwc3_gadget_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 4285, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate ep0 trb\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwc3_gadget_init\00", [47 x i8] zeroinitializer }, align 32
@dwc3_gadget_init._entry_ptr = internal global ptr @dwc3_gadget_init._entry, section ".printk_index", align 4
@dwc3_gadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @dwc3_gadget_get_frame, ptr @dwc3_gadget_wakeup, ptr @dwc3_gadget_set_selfpowered, ptr null, ptr @dwc3_gadget_vbus_draw, ptr @dwc3_gadget_pullup, ptr null, ptr @dwc3_gadget_config_params, ptr @dwc3_gadget_start, ptr @dwc3_gadget_stop, ptr @dwc3_gadget_set_speed, ptr @dwc3_gadget_set_ssp_rate, ptr @dwc3_gadget_async_callbacks, ptr null, ptr @dwc3_gadget_check_config }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dwc3-gadget\00", [20 x i8] zeroinitializer }, align 32
@dwc3_gadget_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str, i32 4340, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"changing max_speed on rev %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dwc3_gadget_init._entry_ptr.20 = internal global ptr @dwc3_gadget_init._entry.17, section ".printk_index", align 4
@dwc3_gadget_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str, i32 4356, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to add gadget\0A\00", [42 x i8] zeroinitializer }, align 32
@dwc3_gadget_init._entry_ptr.23 = internal global ptr @dwc3_gadget_init._entry.21, section ".printk_index", align 4
@__tracepoint_dwc3_readl = external dso_local global %struct.tracepoint, align 4
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/dwc3/trace.h\00", [39 x i8] zeroinitializer }, align 32
@trace_dwc3_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_dwc3_writel = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dwc3_gadget_giveback = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_gadget_giveback.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dwc3_gadget_generic_cmd = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_gadget_generic_cmd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dwc3_gadget_ep_cmd = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_gadget_ep_cmd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dwc3_gadget_ep_cleanup_cancelled_requests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 1997, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"request cancelled with wrong reason:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dwc3_gadget_ep_cleanup_cancelled_requests\00", [54 x i8] zeroinitializer }, align 32
@dwc3_gadget_ep_cleanup_cancelled_requests._entry_ptr = internal global ptr @dwc3_gadget_ep_cleanup_cancelled_requests._entry, section ".printk_index", align 4
@__tracepoint_dwc3_prepare_trb = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_prepare_trb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__dwc3_gadget_wakeup._entry = internal constant %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str, i32 2252, ptr @.str.6, ptr @.str.7 }, align 1
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to put link in Recovery\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__dwc3_gadget_wakeup\00", [43 x i8] zeroinitializer }, align 32
@__dwc3_gadget_wakeup._entry_ptr = internal global ptr @__dwc3_gadget_wakeup._entry, section ".printk_index", align 4
@__dwc3_gadget_wakeup._entry.32 = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str, i32 2276, ptr @.str.6, ptr @.str.7 }, align 1
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to send remote wakeup\0A\00", [34 x i8] zeroinitializer }, align 32
@__dwc3_gadget_wakeup._entry_ptr.34 = internal global ptr @__dwc3_gadget_wakeup._entry.32, section ".printk_index", align 4
@dwc3_stop_active_transfer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peripheral\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dwc_usb3\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@dwc3_gadget_pullup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str, i32 2485, ptr @.str.40, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timed out waiting for SETUP phase\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dwc3_gadget_pullup\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dwc3_gadget_pullup._entry_ptr = internal global ptr @dwc3_gadget_pullup._entry, section ".printk_index", align 4
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc3\00", [27 x i8] zeroinitializer }, align 32
@dwc3_gadget_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str, i32 2731, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request irq #%d --> %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwc3_gadget_start\00", [46 x i8] zeroinitializer }, align 32
@dwc3_gadget_start._entry_ptr = internal global ptr @dwc3_gadget_start._entry, section ".printk_index", align 4
@dwc3_process_event_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 4106, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UNKNOWN IRQ type %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwc3_process_event_entry\00", [39 x i8] zeroinitializer }, align 32
@dwc3_process_event_entry._entry_ptr = internal global ptr @dwc3_process_event_entry._entry, section ".printk_index", align 4
@__tracepoint_dwc3_event = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dwc3_complete_trb = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_complete_trb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dwc3_gadget_endpoint_command_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.46, ptr @.str, i32 3434, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dwc3_gadget_endpoint_command_complete\00", [58 x i8] zeroinitializer }, align 32
@dwc3_gadget_endpoint_command_complete._entry_ptr = internal global ptr @dwc3_gadget_endpoint_command_complete._entry, section ".printk_index", align 4
@dwc3_gadget_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s %s: unexpected hibernation event\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s %s: UNKNOWN IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@dwc3_clear_stall_all_ep.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dwc3_gadget_ep0_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@dwc3_gadget_conndone_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"LPM Erratum not available on dwc3 revisions < 2.40a\0A\00", [43 x i8] zeroinitializer }, align 32
@dwc3_gadget_conndone_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str, i32 3881, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to enable %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dwc3_gadget_conndone_interrupt\00", [33 x i8] zeroinitializer }, align 32
@dwc3_gadget_conndone_interrupt._entry_ptr = internal global ptr @dwc3_gadget_conndone_interrupt._entry, section ".printk_index", align 4
@dwc3_gadget_conndone_interrupt._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str, i32 3888, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@dwc3_gadget_conndone_interrupt._entry_ptr.53 = internal global ptr @dwc3_gadget_conndone_interrupt._entry.52, section ".printk_index", align 4
@dwc3_gadget_resize_tx_fifos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str, i32 830, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Fifosize(%d) > RAM size(%d) %s depth:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dwc3_gadget_resize_tx_fifos\00", [36 x i8] zeroinitializer }, align 32
@dwc3_gadget_resize_tx_fifos._entry_ptr = internal global ptr @dwc3_gadget_resize_tx_fifos._entry, section ".printk_index", align 4
@__tracepoint_dwc3_gadget_ep_enable = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_gadget_ep_enable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%u%s\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@dwc3_gadget_ep0_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @dwc3_gadget_ep0_enable, ptr @dwc3_gadget_ep0_disable, ptr null, ptr @dwc3_gadget_ep_alloc_request, ptr @dwc3_gadget_ep_free_request, ptr @dwc3_gadget_ep0_queue, ptr @dwc3_gadget_ep_dequeue, ptr @dwc3_gadget_ep0_set_halt, ptr @dwc3_gadget_ep_set_wedge, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__tracepoint_dwc3_alloc_request = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_alloc_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dwc3_free_request = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_free_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dwc3_gadget_ep_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str, i32 2054, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"request %pK was not queued to %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dwc3_gadget_ep_dequeue\00", [41 x i8] zeroinitializer }, align 32
@dwc3_gadget_ep_dequeue._entry_ptr = internal global ptr @dwc3_gadget_ep_dequeue._entry, section ".printk_index", align 4
@__tracepoint_dwc3_ep_dequeue = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_ep_dequeue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dwc3_gadget_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @dwc3_gadget_ep_enable, ptr @dwc3_gadget_ep_disable, ptr null, ptr @dwc3_gadget_ep_alloc_request, ptr @dwc3_gadget_ep_free_request, ptr @dwc3_gadget_ep_queue, ptr @dwc3_gadget_ep_dequeue, ptr @dwc3_gadget_ep_set_halt, ptr @dwc3_gadget_ep_set_wedge, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dwc3_gadget_ep_enable.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.61, ptr @.str, ptr @.str.62, i8 1, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dwc3_gadget_ep_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dwc3: invalid parameters\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc3_gadget_ep_enable.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.61, ptr @.str, ptr @.str.63, i8 1, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dwc3: missing wMaxPacketSize\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc3_gadget_ep_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %s: %s is already enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc3_gadget_ep_disable.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.65, ptr @.str, ptr @.str.62, i8 1, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dwc3_gadget_ep_disable\00", [41 x i8] zeroinitializer }, align 32
@dwc3_gadget_ep_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s %s: %s is already disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@__tracepoint_dwc3_gadget_ep_disable = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_gadget_ep_disable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__dwc3_gadget_ep_queue.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.67, ptr @.str, ptr @.str.68, i8 1, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__dwc3_gadget_ep_queue\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: can't queue to disabled endpoint\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"request %pK belongs to '%s'\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: request %pK already in flight\0A\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_dwc3_ep_queue = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_ep_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dwc3_alloc_trb_pool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str, i32 479, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate trb pool for %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwc3_alloc_trb_pool\00", [44 x i8] zeroinitializer }, align 32
@dwc3_alloc_trb_pool._entry_ptr = internal global ptr @dwc3_alloc_trb_pool._entry, section ".printk_index", align 4
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@__dwc3_gadget_set_speed._entry = internal constant %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str, i32 2400, ptr @.str.6, ptr @.str.7 }, align 1
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid speed (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__dwc3_gadget_set_speed\00", [40 x i8] zeroinitializer }, align 32
@__dwc3_gadget_set_speed._entry_ptr = internal global ptr @__dwc3_gadget_set_speed._entry, section ".printk_index", align 4
@__dwc3_gadget_start._entry = internal constant %struct.pi_entry { ptr @.str.50, ptr @.str.75, ptr @.str, i32 2690, ptr @.str.6, ptr @.str.7 }, align 1
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__dwc3_gadget_start\00", [44 x i8] zeroinitializer }, align 32
@__dwc3_gadget_start._entry_ptr = internal global ptr @__dwc3_gadget_start._entry, section ".printk_index", align 4
@__dwc3_gadget_start._entry.76 = internal constant %struct.pi_entry { ptr @.str.50, ptr @.str.75, ptr @.str, i32 2697, ptr @.str.6, ptr @.str.7 }, align 1
@__dwc3_gadget_start._entry_ptr.77 = internal global ptr @__dwc3_gadget_start._entry.76, section ".printk_index", align 4
@switch.table.dwc3_gadget_ep_cleanup_cancelled_requests = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -108, i32 -104, i32 -32], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.81 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 14, i64 15]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65534]
@__sancov_gen_cov_switch_values.86 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 15]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 328, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 384, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 403, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2071, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2099, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2128, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 4285, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"dwc3_gadget_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2899, i32 36 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 4318, i32 23 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 4339, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 4356, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [28 x i8] c"../drivers/usb/dwc3/trace.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 41, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 108, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1997, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2252, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2276, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 4229, i32 52 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 4236, i32 52 }
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 87, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2485, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2728, i32 17 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2730, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 4106, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 3434, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 4065, i32 7 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 4092, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [21 x i8] c"dwc3_gadget_ep0_desc\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2182, i32 39 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 3859, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 3881, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 3888, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 828, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 3042, i32 41 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 3043, i32 16 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 3043, i32 23 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c"dwc3_gadget_ep0_ops\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2188, i32 32 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2053, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [19 x i8] c"dwc3_gadget_ep_ops\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2199, i32 32 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1059, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1064, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1071, i32 6 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1091, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1098, i32 6 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1869, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1874, i32 6 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1878, i32 6 }
@___asan_gen_.316 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 478, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2400, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.332 = private constant [29 x i8] c"../drivers/usb/dwc3/gadget.c\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2690, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant [55 x i8] c"switch.table.dwc3_gadget_ep_cleanup_cancelled_requests\00", align 1
@llvm.compiler.used = appending global [111 x ptr] [ptr @__dwc3_gadget_ep_set_halt._entry, ptr @__dwc3_gadget_ep_set_halt._entry.11, ptr @__dwc3_gadget_ep_set_halt._entry.8, ptr @__dwc3_gadget_ep_set_halt._entry_ptr, ptr @__dwc3_gadget_ep_set_halt._entry_ptr.10, ptr @__dwc3_gadget_ep_set_halt._entry_ptr.13, ptr @__dwc3_gadget_set_speed._entry, ptr @__dwc3_gadget_set_speed._entry_ptr, ptr @__dwc3_gadget_start._entry, ptr @__dwc3_gadget_start._entry.76, ptr @__dwc3_gadget_start._entry_ptr, ptr @__dwc3_gadget_start._entry_ptr.77, ptr @__dwc3_gadget_wakeup._entry, ptr @__dwc3_gadget_wakeup._entry.32, ptr @__dwc3_gadget_wakeup._entry_ptr, ptr @__dwc3_gadget_wakeup._entry_ptr.34, ptr @dwc3_alloc_trb_pool._entry, ptr @dwc3_alloc_trb_pool._entry_ptr, ptr @dwc3_gadget_conndone_interrupt._entry, ptr @dwc3_gadget_conndone_interrupt._entry.52, ptr @dwc3_gadget_conndone_interrupt._entry_ptr, ptr @dwc3_gadget_conndone_interrupt._entry_ptr.53, ptr @dwc3_gadget_endpoint_command_complete._entry, ptr @dwc3_gadget_endpoint_command_complete._entry_ptr, ptr @dwc3_gadget_ep_cleanup_cancelled_requests._entry, ptr @dwc3_gadget_ep_cleanup_cancelled_requests._entry_ptr, ptr @dwc3_gadget_ep_dequeue._entry, ptr @dwc3_gadget_ep_dequeue._entry_ptr, ptr @dwc3_gadget_init._entry, ptr @dwc3_gadget_init._entry.17, ptr @dwc3_gadget_init._entry.21, ptr @dwc3_gadget_init._entry_ptr, ptr @dwc3_gadget_init._entry_ptr.20, ptr @dwc3_gadget_init._entry_ptr.23, ptr @dwc3_gadget_pullup._entry, ptr @dwc3_gadget_pullup._entry_ptr, ptr @dwc3_gadget_resize_tx_fifos._entry, ptr @dwc3_gadget_resize_tx_fifos._entry_ptr, ptr @dwc3_gadget_start._entry, ptr @dwc3_gadget_start._entry_ptr, ptr @dwc3_process_event_entry._entry, ptr @dwc3_process_event_entry._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @dwc3_gadget_ops, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @init_completion.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @dwc3_gadget_ep0_desc, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @dwc3_gadget_ep0_ops, ptr @.str.59, ptr @.str.60, ptr @dwc3_gadget_ep_ops, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @switch.table.dwc3_gadget_ep_cleanup_cancelled_requests], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_ep_cleanup_cancelled_requests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_pullup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_process_event_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_endpoint_command_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_ep0_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_conndone_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_conndone_interrupt._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_resize_tx_fifos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_ep0_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_ep_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_gadget_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_alloc_trb_pool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwc3_gadget_ep_cleanup_cancelled_requests to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_set_test_mode(ptr nocapture noundef readonly %dwc, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 1540
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !226
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50948, i32 noundef %3) #12
  %mode.off = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mode.off)
  %switch = icmp ult i32 %mode.off, 5
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %3, -511
  %shl = shl nuw nsw i32 %mode, 1
  %shl.masked = and i32 %shl, -482
  %and.i = or i32 %and, %shl.masked
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %6) #12, !srcloc !229
  %add.ptr2.i.i = getelementptr i8, ptr %5, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 50948, i32 noundef %and.i) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_get_link_state(ptr nocapture noundef readonly %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 1548
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !226
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50956, i32 noundef %3) #12
  %and = lshr i32 %3, 18
  %shr = and i32 %and, 15
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_set_link_state(ptr nocapture noundef readonly %dwc, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %1)
  %cmp = icmp eq i32 %1, 21811
  br i1 %cmp, label %land.lhs.true, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %revision = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429412170, i32 %3)
  %cmp1 = icmp ult i32 %3, 1429412170
  br i1 %cmp1, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  br label %while.body

while.body:                                       ; preds = %if.then3.while.body_crit_edge, %if.then
  %dec63 = phi i32 [ 9999, %if.then ], [ %dec, %if.then3.while.body_crit_edge ]
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 1548
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !226
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %5, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50956, i32 noundef %7) #12
  %and = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %while.end, label %if.then3

if.then3:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #12
  %dec = add nsw i32 %dec63, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then3.cleanup_crit_edge, label %if.then3.while.body_crit_edge

if.then3.while.body_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec63)
  %cmp4 = icmp slt i32 %dec63, 1
  br i1 %cmp4, label %while.end.cleanup_crit_edge, label %while.end.if.end7_crit_edge

while.end.if.end7_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %while.end.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge
  %regs8 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %9 = ptrtoint ptr %regs8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs8, align 4
  %add.ptr1.i50 = getelementptr i8, ptr %10, i32 1540
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i50) #12, !srcloc !226
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i51 = getelementptr i8, ptr %10, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i51, i32 noundef 50948, i32 noundef %12) #12
  %and10 = and i32 %12, -481
  %13 = ptrtoint ptr %regs8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %and10) #12
  %add.ptr1.i53 = getelementptr i8, ptr %14, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i53, i32 %15) #12, !srcloc !229
  %add.ptr2.i = getelementptr i8, ptr %14, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 50948, i32 noundef %and10) #12
  %shl = shl i32 %state, 5
  %and12 = and i32 %shl, 480
  %or = or i32 %and10, %and12
  %16 = ptrtoint ptr %regs8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %add.ptr1.i55 = getelementptr i8, ptr %17, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i55, i32 %18) #12, !srcloc !229
  %add.ptr2.i56 = getelementptr i8, ptr %17, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i56, i32 noundef 50948, i32 noundef %or) #12
  %19 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %20)
  %cmp15 = icmp eq i32 %20, 21811
  br i1 %cmp15, label %land.lhs.true16, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true16:                                  ; preds = %if.end7
  %revision17 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %21 = ptrtoint ptr %revision17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %revision17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429412170, i32 %22)
  %cmp18 = icmp ult i32 %22, 1429412170
  br i1 %cmp18, label %land.lhs.true16.while.body24_crit_edge, label %land.lhs.true16.cleanup_crit_edge

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true16.while.body24_crit_edge:           ; preds = %land.lhs.true16
  br label %while.body24

while.body24:                                     ; preds = %if.end30.while.body24_crit_edge, %land.lhs.true16.while.body24_crit_edge
  %dec2264 = phi i32 [ %dec22, %if.end30.while.body24_crit_edge ], [ 9999, %land.lhs.true16.while.body24_crit_edge ]
  %23 = ptrtoint ptr %regs8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs8, align 4
  %add.ptr1.i58 = getelementptr i8, ptr %24, i32 1548
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58) #12, !srcloc !226
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i59 = getelementptr i8, ptr %24, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i59, i32 noundef 50956, i32 noundef %26) #12
  %and27 = lshr i32 %26, 18
  %shr = and i32 %and27, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %state)
  %cmp28 = icmp eq i32 %shr, %state
  br i1 %cmp28, label %while.body24.cleanup_crit_edge, label %if.end30

while.body24.cleanup_crit_edge:                   ; preds = %while.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %while.body24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 1073740) #12
  %dec22 = add nsw i32 %dec2264, -1
  %tobool23.not = icmp eq i32 %dec22, 0
  br i1 %tobool23.not, label %if.end30.cleanup_crit_edge, label %if.end30.while.body24_crit_edge

if.end30.while.body24_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body24

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end30.cleanup_crit_edge, %while.body24.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %while.end.cleanup_crit_edge ], [ 0, %land.lhs.true16.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -110, %if.end30.cleanup_crit_edge ], [ 0, %while.body24.cleanup_crit_edge ], [ -110, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_gadget_giveback(ptr noundef %dep, ptr noundef %req, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1, align 4
  %list.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.list_del.exit.i_crit_edge

entry.list_del.exit.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %entry.list_del.exit.i_crit_edge
  %8 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %remaining.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 7
  %10 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %remaining.i, align 4
  %needs_extra_trb.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 13
  %11 = ptrtoint ptr %needs_extra_trb.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %needs_extra_trb.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %needs_extra_trb.i, align 4
  %status2.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %12 = ptrtoint ptr %status2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %13)
  %cmp.i = icmp eq i32 %13, -115
  br i1 %cmp.i, label %if.then.i, label %list_del.exit.i.if.end.i_crit_edge

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %status2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %status, ptr %status2.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.i.if.end.i_crit_edge
  %trb.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 10
  %15 = ptrtoint ptr %trb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trb.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then5.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %sysdev.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sysdev.i, align 4
  %bf.lshr.i = lshr i8 %bf.clear.i, 6
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  tail call void @usb_gadget_unmap_request_by_dev(ptr noundef %18, ptr noundef %req, i32 noundef %bf.cast.i) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.end.i.if.end9.i_crit_edge
  %19 = ptrtoint ptr %trb.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %trb.i, align 4
  tail call fastcc void @trace_dwc3_gadget_giveback(ptr noundef %req) #12
  %number.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 12
  %20 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %number.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp11.i = icmp ugt i8 %21, 1
  br i1 %cmp11.i, label %if.then13.i, label %if.end9.i.dwc3_gadget_del_and_unmap_request.exit_crit_edge

if.end9.i.dwc3_gadget_del_and_unmap_request.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_del_and_unmap_request.exit

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %23, i32 noundef 5) #12
  br label %dwc3_gadget_del_and_unmap_request.exit

dwc3_gadget_del_and_unmap_request.exit:           ; preds = %if.then13.i, %if.end9.i.dwc3_gadget_del_and_unmap_request.exit_crit_edge
  %status2 = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 8
  %24 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %status2, align 4
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call void @usb_gadget_giveback_request(ptr noundef %dep, ptr noundef %req) #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc3_send_gadget_generic_command(ptr nocapture noundef readonly %dwc, i32 noundef %cmd, i32 noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %param) #12
  %add.ptr1.i = getelementptr i8, ptr %1, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %2) #12, !srcloc !229
  %add.ptr2.i = getelementptr i8, ptr %1, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 50960, i32 noundef %param) #12
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %or = or i32 %cmd, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %add.ptr1.i22 = getelementptr i8, ptr %4, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i22, i32 %5) #12, !srcloc !229
  %add.ptr2.i23 = getelementptr i8, ptr %4, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i23, i32 noundef 50964, i32 noundef %or) #12
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 500, %entry ], [ %dec, %do.cond.do.body_crit_edge ]
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr1.i25 = getelementptr i8, ptr %7, i32 1556
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i25) #12, !srcloc !226
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %7, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50964, i32 noundef %9) #12
  %and = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %do.cond

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %shr = lshr i32 %9, 12
  %and3 = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %spec.select18 = select i1 %tobool4.not, i32 0, i32 -22
  br label %do.end

do.cond:                                          ; preds = %do.body
  %dec = add nsw i32 %timeout.0, -1
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.then
  %timeout.1 = phi i32 [ %timeout.0, %if.then ], [ 0, %do.cond.do.end_crit_edge ]
  %status.0 = phi i32 [ %and3, %if.then ], [ 0, %do.cond.do.end_crit_edge ]
  %ret.0 = phi i32 [ %spec.select18, %if.then ], [ 0, %do.cond.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1)
  %tobool8.not = icmp eq i32 %timeout.1, 0
  %spec.select19 = select i1 %tobool8.not, i32 -110, i32 %status.0
  %spec.select20 = select i1 %tobool8.not, i32 -110, i32 %ret.0
  tail call fastcc void @trace_dwc3_gadget_generic_cmd(i32 noundef %cmd, i32 noundef %param, i32 noundef %spec.select19)
  ret i32 %spec.select20
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_gadget_generic_cmd(i32 noundef %cmd, i32 noundef %param, i32 noundef %status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_generic_cmd, i32 0, i32 1), ptr blockaddress(@trace_dwc3_gadget_generic_cmd, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !232
  %call42 = tail call i32 @__traceiter_dwc3_gadget_generic_cmd(ptr noundef null, i32 noundef %cmd, i32 noundef %param, i32 noundef %status) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !233
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_generic_cmd, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_generic_cmd, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_gadget_generic_cmd.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_gadget_generic_cmd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 183, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
define dso_local i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef %cmd, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %dwc2 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %2 = ptrtoint ptr %dwc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dwc2, align 4
  %gadget = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp ult i32 %7, 4
  br i1 %cmp, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then:                                          ; preds = %entry
  %regs = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 30
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %9, i32 256
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !226
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %9, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 49664, i32 noundef %11) #12
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then5, !prof !231

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %and6 = and i32 %11, -65
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %reg.0 = phi i32 [ %and6, %if.then5 ], [ %11, %if.then.if.end_crit_edge ]
  %saved_config.0 = phi i32 [ 64, %if.then5 ], [ 0, %if.then.if.end_crit_edge ]
  %and7 = and i32 %reg.0, 256
  %12 = or i32 %and7, %saved_config.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %if.end.if.end17_crit_edge, label %if.then14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %and11 = and i32 %reg.0, -257
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %and11) #12
  %add.ptr1.i253 = getelementptr i8, ptr %14, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i253, i32 %15) #12, !srcloc !229
  %add.ptr2.i = getelementptr i8, ptr %14, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 49664, i32 noundef %and11) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  %saved_config.2 = phi i32 [ %12, %if.then14 ], [ 0, %if.end.if.end17_crit_edge ], [ 0, %entry.if.end17_crit_edge ]
  %and18 = and i32 %cmd, 15
  %16 = zext i32 %and18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and18, label %if.end17.if.then80_crit_edge [
    i32 6, label %if.then20
    i32 7, label %land.lhs.true
  ]

if.end17.if.then80_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then80

if.then20:                                        ; preds = %if.end17
  %regs.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 30
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %18, i32 1548
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !226
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i.i = getelementptr i8, ptr %18, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 50956, i32 noundef %20) #12
  %and.i = lshr i32 %20, 18
  %shr.i = and i32 %and.i, 15
  %21 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %shr.i, label %if.then20.if.then80_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %if.then20.sw.bb27_crit_edge
  ]

if.then20.sw.bb27_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb27

if.then20.if.then80_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then80

sw.bb:                                            ; preds = %if.then20
  %22 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gadget, align 4
  %speed23 = getelementptr inbounds %struct.usb_gadget, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %speed23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp24 = icmp ugt i32 %25, 4
  br i1 %cmp24, label %sw.bb.if.then80_crit_edge, label %sw.bb.sw.bb27_crit_edge

sw.bb.sw.bb27_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb27

sw.bb.if.then80_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then80

sw.bb27:                                          ; preds = %sw.bb.sw.bb27_crit_edge, %if.then20.sw.bb27_crit_edge
  %call28 = tail call fastcc i32 @__dwc3_gadget_wakeup(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %sw.bb27.if.then80_crit_edge, label %land.rhs

sw.bb27.if.then80_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then80

land.rhs:                                         ; preds = %sw.bb27
  %.b250 = load i1, ptr @dwc3_send_gadget_ep_cmd.__already_done, align 1
  br i1 %.b250, label %land.rhs.if.then80_crit_edge, label %if.then44, !prof !231

land.rhs.if.then80_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then80

if.then44:                                        ; preds = %land.rhs
  store i1 true, ptr @dwc3_send_gadget_ep_cmd.__already_done, align 1
  %dev = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 12
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call54 = tail call ptr @dev_driver_string(ptr noundef %27) #12
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then44.dev_name.exit_crit_edge

if.then44.dev_name.exit_crit_edge:                ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then44.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %33, %if.end.i ], [ %31, %if.then44.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call54, ptr noundef %retval.0.i, i32 noundef %call28) #12
  br label %if.then80

if.then80:                                        ; preds = %dev_name.exit, %land.rhs.if.then80_crit_edge, %sw.bb27.if.then80_crit_edge, %sw.bb.if.then80_crit_edge, %if.then20.if.then80_crit_edge, %if.end17.if.then80_crit_edge
  %ret.1292 = phi i32 [ %call28, %land.rhs.if.then80_crit_edge ], [ %call28, %dev_name.exit ], [ 0, %sw.bb27.if.then80_crit_edge ], [ -22, %sw.bb.if.then80_crit_edge ], [ -22, %if.then20.if.then80_crit_edge ], [ -22, %if.end17.if.then80_crit_edge ]
  %regs81 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 4
  %34 = ptrtoint ptr %regs81 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs81, align 4
  %param0 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params, i32 0, i32 2
  %36 = ptrtoint ptr %param0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %param0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  %add.ptr1.i255 = getelementptr i8, ptr %35, i32 -49400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i255, i32 %38) #12, !srcloc !229
  %add.ptr2.i256 = getelementptr i8, ptr %35, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i256, i32 noundef 8, i32 noundef %37) #12
  %39 = ptrtoint ptr %regs81 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs81, align 4
  %param1 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params, i32 0, i32 1
  %41 = ptrtoint ptr %param1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %param1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #12
  %add.ptr1.i258 = getelementptr i8, ptr %40, i32 -49404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i258, i32 %43) #12, !srcloc !229
  %add.ptr2.i259 = getelementptr i8, ptr %40, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i259, i32 noundef 4, i32 noundef %42) #12
  %44 = ptrtoint ptr %regs81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs81, align 4
  %46 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %params, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #12
  %add.ptr1.i260 = getelementptr i8, ptr %45, i32 -49408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i260, i32 %48) #12, !srcloc !229
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr1.i260, i32 noundef 0, i32 noundef %47) #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end17
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bmAttributes.i, align 1
  %51 = and i8 %50, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %51)
  %cmp.i.not = icmp eq i8 %51, 1
  br i1 %cmp.i.not, label %land.lhs.true.if.else_crit_edge, label %if.then89

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then89:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %and90 = and i32 %cmd, -1281
  br label %if.end92

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then80
  %ret.1291 = phi i32 [ %ret.1292, %if.then80 ], [ -22, %land.lhs.true.if.else_crit_edge ]
  %or91 = or i32 %cmd, 1024
  br label %if.end92

if.end92:                                         ; preds = %if.else, %if.then89
  %ret.1290 = phi i32 [ %ret.1291, %if.else ], [ -22, %if.then89 ]
  %cmd.addr.0 = phi i32 [ %or91, %if.else ], [ %and90, %if.then89 ]
  %regs93 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 4
  %52 = ptrtoint ptr %regs93 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs93, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %54 = tail call i32 @llvm.bswap.i32(i32 %cmd.addr.0) #12
  %add.ptr1.i263 = getelementptr i8, ptr %53, i32 -49396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i263, i32 %54) #12, !srcloc !229
  %add.ptr2.i264 = getelementptr i8, ptr %53, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i264, i32 noundef 12, i32 noundef %cmd.addr.0) #12
  %and94 = and i32 %cmd.addr.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end92.skip_status_crit_edge, label %if.end92.do.body98_crit_edge

if.end92.do.body98_crit_edge:                     ; preds = %if.end92
  br label %do.body98

if.end92.skip_status_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_status

do.body98:                                        ; preds = %do.cond170.do.body98_crit_edge, %if.end92.do.body98_crit_edge
  %timeout.0 = phi i32 [ %dec, %do.cond170.do.body98_crit_edge ], [ 5000, %if.end92.do.body98_crit_edge ]
  %55 = ptrtoint ptr %regs93 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs93, align 4
  %add.ptr1.i266 = getelementptr i8, ptr %56, i32 -49396
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i266) #12, !srcloc !226
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i267 = getelementptr i8, ptr %56, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i267, i32 noundef 12, i32 noundef %58) #12
  %and101 = and i32 %58, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.then103, label %do.cond170

if.then103:                                       ; preds = %do.body98
  %shr = lshr i32 %58, 12
  %and104 = and i32 %shr, 15
  %59 = zext i32 %and104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %and104, label %do.end150 [
    i32 0, label %if.then103.do.end172_crit_edge
    i32 1, label %do.end119
    i32 2, label %sw.bb137
  ]

if.then103.do.end172_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end172

do.end119:                                        ; preds = %if.then103
  %dev120 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 12
  %60 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev120, align 4
  %call121 = tail call ptr @dev_driver_string(ptr noundef %61) #12
  %62 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev120, align 4
  %init_name.i268 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %init_name.i268 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i268, align 8
  %tobool.not.i269 = icmp eq ptr %65, null
  br i1 %tobool.not.i269, label %if.end.i270, label %do.end119.dev_name.exit272_crit_edge

do.end119.dev_name.exit272_crit_edge:             ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit272

if.end.i270:                                      ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  br label %dev_name.exit272

dev_name.exit272:                                 ; preds = %if.end.i270, %do.end119.dev_name.exit272_crit_edge
  %retval.0.i271 = phi ptr [ %67, %if.end.i270 ], [ %65, %do.end119.dev_name.exit272_crit_edge ]
  %name = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 385, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %call121, ptr noundef %retval.0.i271, ptr noundef %name) #12
  br label %do.end172

sw.bb137:                                         ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end172

do.end150:                                        ; preds = %if.then103
  %dev151 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 12
  %68 = ptrtoint ptr %dev151 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev151, align 4
  %call152 = tail call ptr @dev_driver_string(ptr noundef %69) #12
  %70 = ptrtoint ptr %dev151 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev151, align 4
  %init_name.i273 = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %init_name.i273 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i273, align 8
  %tobool.not.i274 = icmp eq ptr %73, null
  br i1 %tobool.not.i274, label %if.end.i275, label %do.end150.dev_name.exit277_crit_edge

do.end150.dev_name.exit277_crit_edge:             ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit277

if.end.i275:                                      ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %71, align 4
  br label %dev_name.exit277

dev_name.exit277:                                 ; preds = %if.end.i275, %do.end150.dev_name.exit277_crit_edge
  %retval.0.i276 = phi ptr [ %75, %if.end.i275 ], [ %73, %do.end150.dev_name.exit277_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 403, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %call152, ptr noundef %retval.0.i276) #12
  br label %do.end172

do.cond170:                                       ; preds = %do.body98
  %dec = add nsw i32 %timeout.0, -1
  %tobool171.not = icmp eq i32 %dec, 0
  br i1 %tobool171.not, label %do.cond170.do.end172_crit_edge, label %do.cond170.do.body98_crit_edge

do.cond170.do.body98_crit_edge:                   ; preds = %do.cond170
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body98

do.cond170.do.end172_crit_edge:                   ; preds = %do.cond170
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end172

do.end172:                                        ; preds = %do.cond170.do.end172_crit_edge, %dev_name.exit277, %sw.bb137, %dev_name.exit272, %if.then103.do.end172_crit_edge
  %cmd_status.0 = phi i32 [ %and104, %dev_name.exit277 ], [ 2, %sw.bb137 ], [ 1, %dev_name.exit272 ], [ %and104, %if.then103.do.end172_crit_edge ], [ 0, %do.cond170.do.end172_crit_edge ]
  %ret.2 = phi i32 [ %ret.1290, %dev_name.exit277 ], [ -11, %sw.bb137 ], [ -22, %dev_name.exit272 ], [ %and104, %if.then103.do.end172_crit_edge ], [ %ret.1290, %do.cond170.do.end172_crit_edge ]
  %timeout.1 = phi i32 [ %timeout.0, %dev_name.exit277 ], [ %timeout.0, %sw.bb137 ], [ %timeout.0, %dev_name.exit272 ], [ %timeout.0, %if.then103.do.end172_crit_edge ], [ 0, %do.cond170.do.end172_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1)
  %cmp173 = icmp eq i32 %timeout.1, 0
  %spec.select = select i1 %cmp173, i32 -110, i32 %cmd_status.0
  %spec.select251 = select i1 %cmp173, i32 -110, i32 %ret.2
  br label %skip_status

skip_status:                                      ; preds = %do.end172, %if.end92.skip_status_crit_edge
  %cmd_status.1 = phi i32 [ 0, %if.end92.skip_status_crit_edge ], [ %spec.select, %do.end172 ]
  %ret.3 = phi i32 [ 0, %if.end92.skip_status_crit_edge ], [ %spec.select251, %do.end172 ]
  tail call fastcc void @trace_dwc3_gadget_ep_cmd(ptr noundef %dep, i32 noundef %cmd.addr.0, ptr noundef %params, i32 noundef %cmd_status.1)
  %and176 = and i32 %cmd.addr.0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and176)
  %cmp177 = icmp eq i32 %and176, 6
  br i1 %cmp177, label %if.then178, label %skip_status.if.end186_crit_edge

skip_status.if.end186_crit_edge:                  ; preds = %skip_status
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.then178:                                       ; preds = %skip_status
  %76 = zext i32 %ret.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %ret.3, label %if.then178.if.then184_crit_edge [
    i32 0, label %if.then180
    i32 -110, label %if.then178.if.end186_crit_edge
  ]

if.then178.if.end186_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.then178.if.then184_crit_edge:                  ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then184

if.then180:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags, align 4
  %or181 = or i32 %78, 8
  store i32 %or181, ptr %flags, align 4
  br label %if.then184

if.then184:                                       ; preds = %if.then180, %if.then178.if.then184_crit_edge
  %79 = ptrtoint ptr %regs93 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs93, align 4
  %add.ptr1.i.i279 = getelementptr i8, ptr %80, i32 -49396
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i279) #12, !srcloc !226
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i.i280 = getelementptr i8, ptr %80, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i280, i32 noundef 12, i32 noundef %82) #12
  %shr.i281 = lshr i32 %82, 16
  %83 = trunc i32 %shr.i281 to i8
  %conv.i = and i8 %83, 127
  %resource_index.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 14
  %84 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv.i, ptr %resource_index.i, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then184, %if.then178.if.end186_crit_edge, %skip_status.if.end186_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %saved_config.2)
  %tobool187.not = icmp eq i32 %saved_config.2, 0
  br i1 %tobool187.not, label %if.end186.if.end193_crit_edge, label %if.then188

if.end186.if.end193_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end193

if.then188:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  %regs189 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 30
  %85 = ptrtoint ptr %regs189 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs189, align 4
  %add.ptr1.i283 = getelementptr i8, ptr %86, i32 256
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i283) #12, !srcloc !226
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i284 = getelementptr i8, ptr %86, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i284, i32 noundef 49664, i32 noundef %88) #12
  %or191 = or i32 %88, %saved_config.2
  %89 = ptrtoint ptr %regs189 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs189, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %91 = tail call i32 @llvm.bswap.i32(i32 %or191) #12
  %add.ptr1.i286 = getelementptr i8, ptr %90, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i286, i32 %91) #12, !srcloc !229
  %add.ptr2.i287 = getelementptr i8, ptr %90, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i287, i32 noundef 49664, i32 noundef %or191) #12
  br label %if.end193

if.end193:                                        ; preds = %if.then188, %if.end186.if.end193_crit_edge
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dwc3_gadget_wakeup(ptr nocapture noundef readonly %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 1548
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !226
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50956, i32 noundef %3) #12
  %and = lshr i32 %3, 18
  %conv = and i32 %and, 15
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %conv, label %entry.cleanup_crit_edge [
    i32 14, label %entry.sw.epilog_crit_edge
    i32 5, label %entry.sw.epilog_crit_edge57
    i32 3, label %entry.sw.epilog_crit_edge58
    i32 2, label %entry.sw.epilog_crit_edge59
    i32 1, label %entry.sw.epilog_crit_edge60
    i32 15, label %entry.sw.epilog_crit_edge61
  ]

entry.sw.epilog_crit_edge61:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge60:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge59:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge58:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge57:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge57, %entry.sw.epilog_crit_edge58, %entry.sw.epilog_crit_edge59, %entry.sw.epilog_crit_edge60, %entry.sw.epilog_crit_edge61
  %call2 = tail call i32 @dwc3_gadget_set_link_state(ptr noundef %dwc, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %sw.epilog.cleanup.sink.split_crit_edge, label %if.end

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end:                                           ; preds = %sw.epilog
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %6)
  %cmp4 = icmp eq i32 %6, 21811
  br i1 %cmp4, label %land.lhs.true, label %if.end.while.body.preheader_crit_edge

if.end.while.body.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

land.lhs.true:                                    ; preds = %if.end
  %revision = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %7 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429412170, i32 %8)
  %cmp6 = icmp ult i32 %8, 1429412170
  br i1 %cmp6, label %if.then8, label %land.lhs.true.while.body.preheader_crit_edge

land.lhs.true.while.body.preheader_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr1.i49 = getelementptr i8, ptr %10, i32 1540
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i49) #12, !srcloc !226
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i50 = getelementptr i8, ptr %10, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i50, i32 noundef 50948, i32 noundef %12) #12
  %and11 = and i32 %12, -481
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %and11) #12
  %add.ptr1.i52 = getelementptr i8, ptr %14, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i52, i32 %15) #12, !srcloc !229
  %add.ptr2.i = getelementptr i8, ptr %14, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 50948, i32 noundef %and11) #12
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.then8, %land.lhs.true.while.body.preheader_crit_edge, %if.end.while.body.preheader_crit_edge
  br label %while.body

while.cond:                                       ; preds = %while.body
  %dec = add nsw i32 %retries.056, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.cond.cleanup.sink.split_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.cleanup.sink.split_crit_edge:          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.preheader
  %retries.056 = phi i32 [ %dec, %while.cond.while.body_crit_edge ], [ 20000, %while.body.preheader ]
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr1.i54 = getelementptr i8, ptr %17, i32 1548
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i54) #12, !srcloc !226
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i55 = getelementptr i8, ptr %17, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i55, i32 noundef 50956, i32 noundef %19) #12
  %20 = and i32 %19, 3932160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp18 = icmp eq i32 %20, 0
  br i1 %cmp18, label %while.body.cleanup_crit_edge, label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %while.cond.cleanup.sink.split_crit_edge, %sw.epilog.cleanup.sink.split_crit_edge
  %.str.33.sink = phi ptr [ @.str.30, %sw.epilog.cleanup.sink.split_crit_edge ], [ @.str.33, %while.cond.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call2, %sw.epilog.cleanup.sink.split_crit_edge ], [ -22, %while.cond.cleanup.sink.split_crit_edge ]
  %dev30 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %21 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull %.str.33.sink) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_gadget_ep_cmd(ptr noundef %dep, i32 noundef %cmd, ptr noundef %params, i32 noundef %cmd_status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_cmd, i32 0, i32 1), ptr blockaddress(@trace_dwc3_gadget_ep_cmd, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !236
  %call42 = tail call i32 @__traceiter_dwc3_gadget_ep_cmd(ptr noundef null, ptr noundef %dep, i32 noundef %cmd, ptr noundef %params, i32 noundef %cmd_status) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !237
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_cmd, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_cmd, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_gadget_ep_cmd.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_gadget_ep_cmd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 217, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
define dso_local void @dwc3_gadget_clear_tx_fifos(ptr nocapture noundef %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %do_fifo_resize = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %0 = ptrtoint ptr %do_fifo_resize to i32
  call void @__asan_loadN_noabort(i32 %0, i32 6)
  %bf.load = load i48, ptr %do_fifo_resize, align 4
  %1 = and i48 %bf.load, 68719476736
  %tobool.not = icmp eq i48 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !226
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %3, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 49920, i32 noundef %5) #12
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %6 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %7)
  %cmp = icmp eq i32 %7, 21811
  %fifo_depth.0.v = select i1 %cmp, i32 65535, i32 32767
  %fifo_depth.0 = and i32 %fifo_depth.0.v, %5
  %last_fifo_depth = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 82
  %8 = ptrtoint ptr %last_fifo_depth to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %fifo_depth.0, ptr %last_fifo_depth, align 4
  %num_eps = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 65
  %9 = ptrtoint ptr %num_eps to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_eps, align 1
  %11 = tail call i8 @llvm.umin.i8(i8 %10, i8 32)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp654 = icmp ugt i8 %11, 3
  br i1 %cmp654, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %cond.end18.for.body_crit_edge, %if.end.for.body_crit_edge
  %num.055 = phi i32 [ %add25, %cond.end18.for.body_crit_edge ], [ 3, %if.end.for.body_crit_edge ]
  %arrayidx9 = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 %num.055
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx9, align 4
  %14 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %15)
  %cmp11 = icmp eq i32 %15, 21811
  br i1 %cmp11, label %for.body.cond.end18_crit_edge, label %cond.false14

for.body.cond.end18_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = shl nuw i32 %num.055, 1
  %.pre56 = add nuw nsw i32 %.pre, 49920
  %.pre58 = and i32 %.pre56, -4
  br label %cond.end18

cond.false14:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %18 = shl nuw i32 %num.055, 1
  %19 = add nuw nsw i32 %18, 49920
  %add = and i32 %19, -4
  %add.ptr.i48 = getelementptr i8, ptr %17, i32 -49408
  %add.ptr1.i49 = getelementptr i8, ptr %add.ptr.i48, i32 %add
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i49) #12, !srcloc !226
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i50 = getelementptr i8, ptr %17, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i50, i32 noundef %add, i32 noundef %21) #12
  %and17 = and i32 %21, 32768
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false14, %for.body.cond.end18_crit_edge
  %add23.pre-phi = phi i32 [ %.pre58, %for.body.cond.end18_crit_edge ], [ %add, %cond.false14 ]
  %cond19 = phi i32 [ 0, %for.body.cond.end18_crit_edge ], [ %and17, %cond.false14 ]
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %24 = shl nuw nsw i32 %cond19, 8
  %add.ptr.i51 = getelementptr i8, ptr %23, i32 -49408
  %add.ptr1.i52 = getelementptr i8, ptr %add.ptr.i51, i32 %add23.pre-phi
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i52, i32 %24) #12, !srcloc !229
  %add.ptr2.i = getelementptr i8, ptr %23, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef %add23.pre-phi, i32 noundef %cond19) #12
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %13, i32 0, i32 9
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and24 = and i32 %26, -4097
  store i32 %and24, ptr %flags, align 4
  %add25 = add nuw nsw i32 %num.055, 2
  %27 = ptrtoint ptr %num_eps to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_eps, align 1
  %29 = tail call i8 @llvm.umin.i8(i8 %28, i8 32)
  %cond = zext i8 %29 to i32
  %cmp6 = icmp ult i32 %add25, %cond
  br i1 %cmp6, label %cond.end18.for.body_crit_edge, label %cond.end18.for.end_crit_edge

cond.end18.for.end_crit_edge:                     ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cond.end18.for.body_crit_edge:                    ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cond.end18.for.end_crit_edge, %if.end.for.end_crit_edge
  %num_ep_resized = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 83
  %30 = ptrtoint ptr %num_ep_resized to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %num_ep_resized, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__dwc3_gadget_ep_set_halt(ptr noundef %dep, i32 noundef %value, i32 noundef %protocol) local_unnamed_addr #0 align 64 {
entry:
  %params.i141 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %params.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %params = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #12
  %dwc1 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bmAttributes.i, align 1
  %6 = and i8 %5, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.i.not = icmp eq i8 %6, 1
  br i1 %cmp.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef %name) #15
  br label %cleanup96

if.end:                                           ; preds = %entry
  %9 = call ptr @memset(ptr %params, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool2.not = icmp eq i32 %value, 0
  %number38 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 12
  %10 = ptrtoint ptr %number38 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number38, align 2
  br i1 %tobool2.not, label %if.else37, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp = icmp ugt i8 %11, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %trb_enqueue = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %12 = ptrtoint ptr %trb_enqueue to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %trb_enqueue, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 -1, i8 %13
  %trb_pool.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 5
  %14 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trb_pool.i, align 4
  %conv.i = zext i8 %spec.store.select.i to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr %struct.dwc3_trb, ptr %15, i32 %sub.i
  br label %if.end8

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %ep0_trb = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %ep0_trb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep0_trb, align 4
  %trb_enqueue7 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %18 = ptrtoint ptr %trb_enqueue7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %trb_enqueue7, align 4
  %idxprom = zext i8 %19 to i32
  %arrayidx = getelementptr %struct.dwc3_trb, ptr %17, i32 %idxprom
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %trb.0 = phi ptr [ %arrayidx.i, %if.then5 ], [ %arrayidx, %if.else ]
  %ctrl = getelementptr inbounds %struct.dwc3_trb, ptr %trb.0, i32 0, i32 3
  %20 = ptrtoint ptr %ctrl to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %ctrl, align 1
  %started_list = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 3
  %22 = ptrtoint ptr %started_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %started_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol)
  %tobool11.not = icmp eq i32 %protocol, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end8.if.end23_crit_edge

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end8
  %cmp.i138.not = icmp eq ptr %23, %started_list
  %and = and i32 %21, 1
  %direction = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %24 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool12.not = icmp sgt i8 %bf.load, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool12.not, i1 true, i1 %tobool14.not
  %tobool19.not.not = xor i1 %tobool12.not, true
  %brmerge = select i1 %tobool19.not.not, i1 true, i1 %cmp.i138.not
  %or.cond151 = select i1 %or.cond, i1 %brmerge, i1 false
  br i1 %or.cond151, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.cleanup96_crit_edge

land.lhs.true.cleanup96_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup96

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end8.if.end23_crit_edge
  %call24 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef 4, ptr noundef nonnull %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else33, label %do.end29

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %dev30 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev30, align 4
  %name31 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.9, ptr noundef %name31) #15
  br label %cleanup96

if.else33:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %or = or i32 %28, 2
  store i32 %or, ptr %flags, align 4
  br label %cleanup96

if.else37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp40 = icmp ult i8 %11, 2
  br i1 %cmp40, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #14
  %flags43 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %29 = ptrtoint ptr %flags43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags43, align 4
  %and44 = and i32 %30, -7
  store i32 %and44, ptr %flags43, align 4
  br label %cleanup96

if.end45:                                         ; preds = %if.else37
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i) #12
  %flags.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i, align 4
  %33 = and i32 %32, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %33)
  %34 = icmp eq i32 %33, 8
  br i1 %34, label %if.end.i, label %if.end45.dwc3_stop_active_transfer.exit_crit_edge

if.end45.dwc3_stop_active_transfer.exit_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_stop_active_transfer.exit

if.end.i:                                         ; preds = %if.end45
  %resource_index.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 14
  %35 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %resource_index.i, align 4
  %conv.i140 = zext i8 %36 to i32
  %shl.i = shl nuw nsw i32 %conv.i140, 16
  %or9.i = or i32 %shl.i, 2312
  %37 = call ptr @memset(ptr %params.i, i32 0, i32 12)
  %call.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef %or9.i, ptr noundef nonnull %params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end42.i_crit_edge, label %land.rhs.i

if.end.i.if.end42.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b1.i = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end42.i_crit_edge, label %if.then20.i, !prof !231

land.rhs.i.if.end42.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

if.then20.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #12
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then20.i, %land.rhs.i.if.end42.i_crit_edge, %if.end.i.if.end42.i_crit_edge
  %38 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %resource_index.i, align 4
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 4
  %or56.i = or i32 %40, 16
  store i32 %or56.i, ptr %flags.i, align 4
  br label %dwc3_stop_active_transfer.exit

dwc3_stop_active_transfer.exit:                   ; preds = %if.end42.i, %if.end45.dwc3_stop_active_transfer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #12
  %started_list46 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 3
  %41 = ptrtoint ptr %started_list46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %started_list46, align 4
  %cmp54.not152 = icmp eq ptr %42, %started_list46
  br i1 %cmp54.not152, label %dwc3_stop_active_transfer.exit.for.end_crit_edge, label %dwc3_stop_active_transfer.exit.for.body_crit_edge

dwc3_stop_active_transfer.exit.for.body_crit_edge: ; preds = %dwc3_stop_active_transfer.exit
  br label %for.body

dwc3_stop_active_transfer.exit.for.end_crit_edge: ; preds = %dwc3_stop_active_transfer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %dwc3_gadget_move_cancelled_request.exit.for.body_crit_edge, %dwc3_stop_active_transfer.exit.for.body_crit_edge
  %.pn.in153 = phi ptr [ %.pn, %dwc3_gadget_move_cancelled_request.exit.for.body_crit_edge ], [ %42, %dwc3_stop_active_transfer.exit.for.body_crit_edge ]
  %43 = ptrtoint ptr %.pn.in153 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn = load ptr, ptr %.pn.in153, align 4
  %dep1.i = getelementptr i8, ptr %.pn.in153, i32 8
  %44 = ptrtoint ptr %dep1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dep1.i, align 4
  %status.i = getelementptr i8, ptr %.pn.in153, i32 32
  %46 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %status.i, align 4
  %cancelled_list.i = getelementptr inbounds %struct.dwc3_ep, ptr %45, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in153) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.__list_del_entry.exit.i.i_crit_edge

for.body.__list_del_entry.exit.i.i_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %.pn.in153, i32 4
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i, align 4
  %49 = ptrtoint ptr %.pn.in153 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %.pn.in153, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %for.body.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %45, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in153, ptr noundef %54, ptr noundef %cancelled_list.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.dwc3_gadget_move_cancelled_request.exit_crit_edge

__list_del_entry.exit.i.i.dwc3_gadget_move_cancelled_request.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_move_cancelled_request.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %.pn.in153, ptr %prev.i2.i.i, align 4
  %56 = ptrtoint ptr %.pn.in153 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %cancelled_list.i, ptr %.pn.in153, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %.pn.in153, i32 4
  %57 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %.pn.in153, ptr %54, align 4
  br label %dwc3_gadget_move_cancelled_request.exit

dwc3_gadget_move_cancelled_request.exit:          ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.dwc3_gadget_move_cancelled_request.exit_crit_edge
  %cmp54.not = icmp eq ptr %.pn, %started_list46
  br i1 %cmp54.not, label %dwc3_gadget_move_cancelled_request.exit.for.end_crit_edge, label %dwc3_gadget_move_cancelled_request.exit.for.body_crit_edge

dwc3_gadget_move_cancelled_request.exit.for.body_crit_edge: ; preds = %dwc3_gadget_move_cancelled_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

dwc3_gadget_move_cancelled_request.exit.for.end_crit_edge: ; preds = %dwc3_gadget_move_cancelled_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %dwc3_gadget_move_cancelled_request.exit.for.end_crit_edge, %dwc3_stop_active_transfer.exit.for.end_crit_edge
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i, align 4
  %and64 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end69, label %if.then66

if.then66:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %or68 = or i32 %60, 2048
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or68, ptr %flags.i, align 4
  br label %cleanup96

if.end69:                                         ; preds = %for.end
  call fastcc void @dwc3_gadget_ep_cleanup_cancelled_requests(ptr noundef %dep)
  %62 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dwc1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i141) #12
  %direction.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %64 = ptrtoint ptr %direction.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i = load i8, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i142 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i142, label %if.end69.dwc3_send_clear_stall_ep_cmd.exit_crit_edge, label %land.lhs.true.i

if.end69.dwc3_send_clear_stall_ep_cmd.exit_crit_edge: ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_send_clear_stall_ep_cmd.exit

land.lhs.true.i:                                  ; preds = %if.end69
  %ip.i = getelementptr inbounds %struct.dwc3, ptr %63, i32 0, i32 54
  %65 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %66)
  %cmp.i143 = icmp eq i32 %66, 21811
  br i1 %cmp.i143, label %land.lhs.true2.i, label %land.lhs.true.i.land.lhs.true4.i_crit_edge

land.lhs.true.i.land.lhs.true4.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true4.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %revision.i = getelementptr inbounds %struct.dwc3, ptr %63, i32 0, i32 55
  %67 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429415434, i32 %68)
  %cmp3.i = icmp ult i32 %68, 1429415434
  br i1 %cmp3.i, label %land.lhs.true2.i.dwc3_send_clear_stall_ep_cmd.exit_crit_edge, label %land.lhs.true2.i.land.lhs.true4.i_crit_edge

land.lhs.true2.i.land.lhs.true4.i_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true4.i

land.lhs.true2.i.dwc3_send_clear_stall_ep_cmd.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_send_clear_stall_ep_cmd.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i.land.lhs.true4.i_crit_edge, %land.lhs.true.i.land.lhs.true4.i_crit_edge
  %gadget.i = getelementptr inbounds %struct.dwc3, ptr %63, i32 0, i32 18
  %69 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %gadget.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %72)
  %cmp5.inv.i = icmp ult i32 %72, 5
  %spec.select.i = select i1 %cmp5.inv.i, i32 5, i32 2053
  br label %dwc3_send_clear_stall_ep_cmd.exit

dwc3_send_clear_stall_ep_cmd.exit:                ; preds = %land.lhs.true4.i, %land.lhs.true2.i.dwc3_send_clear_stall_ep_cmd.exit_crit_edge, %if.end69.dwc3_send_clear_stall_ep_cmd.exit_crit_edge
  %cmd.0.i = phi i32 [ 5, %land.lhs.true2.i.dwc3_send_clear_stall_ep_cmd.exit_crit_edge ], [ 5, %if.end69.dwc3_send_clear_stall_ep_cmd.exit_crit_edge ], [ %spec.select.i, %land.lhs.true4.i ]
  %73 = call ptr @memset(ptr %params.i141, i32 0, i32 12)
  %call.i144 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef %cmd.0.i, ptr noundef nonnull %params.i141) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i141) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool71.not = icmp eq i32 %call.i144, 0
  br i1 %tobool71.not, label %if.end79, label %do.end75

do.end75:                                         ; preds = %dwc3_send_clear_stall_ep_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev76 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %74 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev76, align 4
  %name77 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.12, ptr noundef %name77) #15
  br label %cleanup96

if.end79:                                         ; preds = %dwc3_send_clear_stall_ep_cmd.exit
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i, align 4
  %and81 = and i32 %77, -7
  store i32 %and81, ptr %flags.i, align 4
  %and83 = and i32 %77, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end79.if.end92_crit_edge, label %land.lhs.true85

if.end79.if.end92_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

land.lhs.true85:                                  ; preds = %if.end79
  %78 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %desc, align 4
  %bmAttributes.i146 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %bmAttributes.i146 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bmAttributes.i146, align 1
  %82 = and i8 %81, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %82)
  %cmp.i147.not = icmp eq i8 %82, 1
  br i1 %cmp.i147.not, label %land.lhs.true85.if.end92_crit_edge, label %if.then90

land.lhs.true85.if.end92_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.then90:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #14
  %call91 = call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %dep)
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %land.lhs.true85.if.end92_crit_edge, %if.end79.if.end92_crit_edge
  %83 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags.i, align 4
  %and94 = and i32 %84, -65
  store i32 %and94, ptr %flags.i, align 4
  br label %cleanup96

cleanup96:                                        ; preds = %if.end92, %do.end75, %if.then66, %if.then42, %if.else33, %do.end29, %land.lhs.true.cleanup96_crit_edge, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ 0, %if.then42 ], [ 0, %if.then66 ], [ %call.i144, %do.end75 ], [ -11, %land.lhs.true.cleanup96_crit_edge ], [ 0, %if.end92 ], [ 0, %if.else33 ], [ %call24, %do.end29 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #12
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_gadget_ep_cleanup_cancelled_requests(ptr noundef %dep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cancelled_list = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 1
  %0 = ptrtoint ptr %cancelled_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cancelled_list, align 4
  %cmp.not36 = icmp eq ptr %1, %cancelled_list
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dwc1 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %2 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dwc1, align 4
  %trb_pool.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 5
  %trb_dequeue.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 11
  %dev = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in37 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn40, %for.inc.for.body_crit_edge ]
  %req.039 = getelementptr i8, ptr %.pn.in37, i32 -56
  %4 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn40 = load ptr, ptr %.pn.in37, align 4
  %trb.i = getelementptr i8, ptr %.pn.in37, i32 40
  %5 = ptrtoint ptr %trb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trb.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.dwc3_gadget_ep_skip_trbs.exit_crit_edge, label %for.cond.preheader.i

for.body.dwc3_gadget_ep_skip_trbs.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_ep_skip_trbs.exit

for.cond.preheader.i:                             ; preds = %for.body
  %num_trbs.i = getelementptr i8, ptr %.pn.in37, i32 48
  %7 = ptrtoint ptr %num_trbs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_trbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8.not.i = icmp eq i32 %8, 0
  br i1 %cmp8.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trb_pool.i, align 4
  %11 = ptrtoint ptr %trb_dequeue.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %trb_dequeue.i, align 1
  %idxprom.i = zext i8 %12 to i32
  %ctrl.i = getelementptr %struct.dwc3_trb, ptr %10, i32 %idxprom.i, i32 3
  %13 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %ctrl.i, align 1
  %and.i = and i32 %14, -2
  store i32 %and.i, ptr %ctrl.i, align 1
  %15 = load i8, ptr %trb_dequeue.i, align 1
  %inc.i.i.i = add i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %inc.i.i.i)
  %cmp.i.i.i = icmp eq i8 %inc.i.i.i, -1
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i8 0, i8 %inc.i.i.i
  %16 = ptrtoint ptr %trb_dequeue.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select.i.i.i, ptr %trb_dequeue.i, align 1
  %inc.i = add nuw i32 %i.09.i, 1
  %17 = ptrtoint ptr %num_trbs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_trbs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %18
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %19 = ptrtoint ptr %num_trbs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %num_trbs.i, align 4
  br label %dwc3_gadget_ep_skip_trbs.exit

dwc3_gadget_ep_skip_trbs.exit:                    ; preds = %for.end.i, %for.body.dwc3_gadget_ep_skip_trbs.exit_crit_edge
  %status = getelementptr i8, ptr %.pn.in37, i32 32
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  %switch.tableidx = add i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %22 = icmp ult i32 %switch.tableidx, 3
  br i1 %22, label %switch.lookup, label %do.end

do.end:                                           ; preds = %dwc3_gadget_ep_skip_trbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.27, i32 noundef %21) #15
  br label %for.inc

switch.lookup:                                    ; preds = %dwc3_gadget_ep_skip_trbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.dwc3_gadget_ep_cleanup_cancelled_requests, i32 0, i32 %switch.tableidx
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.inc

for.inc:                                          ; preds = %switch.lookup, %do.end
  %.sink = phi i32 [ -104, %do.end ], [ %switch.load, %switch.lookup ]
  tail call void @dwc3_gadget_giveback(ptr noundef %dep, ptr noundef %req.039, i32 noundef %.sink)
  %cmp.not = icmp eq ptr %.pn40, %cancelled_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %dep) unnamed_addr #0 align 64 {
entry:
  %params.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %params = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #12
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %params, align 4, !annotation !238
  %1 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !238
  %3 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !238
  %started_list.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 3
  %5 = ptrtoint ptr %started_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn180.i = load ptr, ptr %started_list.i, align 4
  %cmp.not182.i = icmp eq ptr %.pn180.i, %started_list.i
  br i1 %cmp.not182.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %trb_enqueue.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %trb_dequeue.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 11
  %stream_capable.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %dwc.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn184.i = phi ptr [ %.pn180.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %ret.0183.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ]
  %num_pending_sgs.i = getelementptr i8, ptr %.pn184.i, i32 20
  %6 = ptrtoint ptr %num_pending_sgs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pending_sgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not.i = icmp eq i32 %7, 0
  br i1 %cmp2.not.i, label %for.body.i.if.end6.i_crit_edge, label %if.then.i

for.body.i.if.end6.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then.i:                                        ; preds = %for.body.i
  %req.0185.i = getelementptr i8, ptr %.pn184.i, i32 -56
  %call.i = tail call fastcc i32 @dwc3_prepare_trbs_sg(ptr noundef %dep, ptr noundef %req.0185.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %lor.lhs.false.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then.i
  %8 = ptrtoint ptr %num_pending_sgs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_pending_sgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i = icmp eq i32 %9, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.end6.i_crit_edge, label %lor.lhs.false.i.dwc3_prepare_trbs.exit_crit_edge

lor.lhs.false.i.dwc3_prepare_trbs.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_prepare_trbs.exit

lor.lhs.false.i.if.end6.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %lor.lhs.false.i.if.end6.i_crit_edge, %for.body.i.if.end6.i_crit_edge
  %ret.1.i = phi i32 [ %call.i, %lor.lhs.false.i.if.end6.i_crit_edge ], [ %ret.0183.i, %for.body.i.if.end6.i_crit_edge ]
  %10 = ptrtoint ptr %trb_enqueue.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %trb_enqueue.i.i, align 4
  %12 = ptrtoint ptr %trb_dequeue.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %trb_dequeue.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %11)
  %cmp.i.i = icmp eq i8 %13, %11
  br i1 %cmp.i.i, label %if.then.i.i, label %dwc3_calc_trbs_left.exit.i

if.then.i.i:                                      ; preds = %if.end6.i
  %14 = ptrtoint ptr %started_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %started_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %15, %started_list.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i.if.end10.i_crit_edge, label %if.then.i.i.dwc3_prepare_trbs.exit_crit_edge

if.then.i.i.dwc3_prepare_trbs.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_prepare_trbs.exit

if.then.i.i.if.end10.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

dwc3_calc_trbs_left.exit.i:                       ; preds = %if.end6.i
  %sub.i.i = sub i8 %13, %11
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %11)
  %cmp16.i.i = icmp ult i8 %13, %11
  %dec.i.neg.i = zext i1 %cmp16.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i.i, i8 %dec.i.neg.i)
  %tobool8.not.i = icmp eq i8 %sub.i.i, %dec.i.neg.i
  br i1 %tobool8.not.i, label %dwc3_calc_trbs_left.exit.i.dwc3_prepare_trbs.exit_crit_edge, label %dwc3_calc_trbs_left.exit.i.if.end10.i_crit_edge

dwc3_calc_trbs_left.exit.i.if.end10.i_crit_edge:  ; preds = %dwc3_calc_trbs_left.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

dwc3_calc_trbs_left.exit.i.dwc3_prepare_trbs.exit_crit_edge: ; preds = %dwc3_calc_trbs_left.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_prepare_trbs.exit

if.end10.i:                                       ; preds = %dwc3_calc_trbs_left.exit.i.if.end10.i_crit_edge, %if.then.i.i.if.end10.i_crit_edge
  %16 = ptrtoint ptr %stream_capable.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %stream_capable.i, align 4
  %17 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not.i = icmp eq i8 %17, 0
  br i1 %tobool11.not.i, label %if.end10.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end10.i
  %is_last.i = getelementptr i8, ptr %.pn184.i, i32 -32
  %18 = ptrtoint ptr %is_last.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load12.i = load i32, ptr %is_last.i, align 4
  %19 = and i32 %bf.load12.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not.i = icmp eq i32 %19, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true16.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true16.i:                                ; preds = %land.lhs.true.i
  %20 = ptrtoint ptr %dwc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dwc.i, align 4
  %hwparams9.i = getelementptr inbounds %struct.dwc3, ptr %21, i32 0, i32 66, i32 9
  %22 = ptrtoint ptr %hwparams9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hwparams9.i, align 4
  %and.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true16.i.dwc3_prepare_trbs.exit_crit_edge, label %land.lhs.true16.i.for.inc.i_crit_edge

land.lhs.true16.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true16.i.dwc3_prepare_trbs.exit_crit_edge: ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_prepare_trbs.exit

for.inc.i:                                        ; preds = %land.lhs.true16.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.end10.i.for.inc.i_crit_edge
  %24 = ptrtoint ptr %.pn184.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn184.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %started_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %ret.1.i, %for.inc.i.for.end.i_crit_edge ]
  %pending_list.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 2
  %25 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pending_list.i, align 4
  %dwc41.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %cmp37.not188.i = icmp eq ptr %26, %pending_list.i
  br i1 %cmp37.not188.i, label %for.end.i.dwc3_prepare_trbs.exit_crit_edge, label %for.body39.lr.ph.i

for.end.i.dwc3_prepare_trbs.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_prepare_trbs.exit

for.body39.lr.ph.i:                               ; preds = %for.end.i
  %direction.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %trb_enqueue.i148.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %trb_dequeue.i149.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 11
  %req.1191.i130 = getelementptr i8, ptr %26, i32 -56
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn146192.i131 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %dwc41.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dwc41.i, align 4
  %sysdev.i132 = getelementptr inbounds %struct.dwc3, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %sysdev.i132 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sysdev.i132, align 4
  %32 = ptrtoint ptr %direction.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load43.i133 = load i8, ptr %direction.i, align 4
  %bf.lshr44.i134 = lshr i8 %bf.load43.i133, 7
  %bf.cast45.i135 = zext i8 %bf.lshr44.i134 to i32
  %call46.i136 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %31, ptr noundef %req.1191.i130, i32 noundef %bf.cast45.i135) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i136)
  %tobool47.not.i137 = icmp eq i32 %call46.i136, 0
  br i1 %tobool47.not.i137, label %for.body39.lr.ph.i.if.end49.i_crit_edge, label %for.body39.lr.ph.i.dwc3_prepare_trbs.exit_crit_edge

for.body39.lr.ph.i.dwc3_prepare_trbs.exit_crit_edge: ; preds = %for.body39.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_prepare_trbs.exit

for.body39.lr.ph.i.if.end49.i_crit_edge:          ; preds = %for.body39.lr.ph.i
  br label %if.end49.i

if.end49.i:                                       ; preds = %for.body39.i.backedge.if.end49.i_crit_edge, %for.body39.lr.ph.i.if.end49.i_crit_edge
  %33 = phi ptr [ %60, %for.body39.i.backedge.if.end49.i_crit_edge ], [ %29, %for.body39.lr.ph.i.if.end49.i_crit_edge ]
  %.pn146192.i141 = phi ptr [ %.pn146192.i, %for.body39.i.backedge.if.end49.i_crit_edge ], [ %.pn146192.i131, %for.body39.lr.ph.i.if.end49.i_crit_edge ]
  %req.1191.i140 = phi ptr [ %req.1191.i, %for.body39.i.backedge.if.end49.i_crit_edge ], [ %req.1191.i130, %for.body39.lr.ph.i.if.end49.i_crit_edge ]
  %.pn146.in189.i138 = phi ptr [ %.pn146192.i141, %for.body39.i.backedge.if.end49.i_crit_edge ], [ %26, %for.body39.lr.ph.i.if.end49.i_crit_edge ]
  %sg.i = getelementptr i8, ptr %.pn146.in189.i138, i32 -44
  %34 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sg.i, align 4
  %sg51.i = getelementptr i8, ptr %.pn146.in189.i138, i32 12
  %36 = ptrtoint ptr %sg51.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %sg51.i, align 4
  %start_sg.i = getelementptr i8, ptr %.pn146.in189.i138, i32 16
  %37 = ptrtoint ptr %start_sg.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %start_sg.i, align 4
  %num_queued_sgs.i = getelementptr i8, ptr %.pn146.in189.i138, i32 24
  %38 = ptrtoint ptr %num_queued_sgs.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %num_queued_sgs.i, align 4
  %num_mapped_sgs.i = getelementptr i8, ptr %.pn146.in189.i138, i32 -36
  %39 = ptrtoint ptr %num_mapped_sgs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_mapped_sgs.i, align 4
  %num_pending_sgs54.i = getelementptr i8, ptr %.pn146.in189.i138, i32 20
  %41 = ptrtoint ptr %num_pending_sgs54.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %num_pending_sgs54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp56.not.i = icmp eq i32 %40, 0
  br i1 %cmp56.not.i, label %if.else.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end49.i
  %call58.i = tail call fastcc i32 @dwc3_prepare_trbs_sg(ptr noundef %dep, ptr noundef %req.1191.i140) #12
  %42 = ptrtoint ptr %num_pending_sgs54.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_pending_sgs54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool60.not.i = icmp eq i32 %43, 0
  br i1 %tobool60.not.i, label %if.then57.i.if.end64.i_crit_edge, label %if.then57.i.dwc3_prepare_trbs.exit_crit_edge

if.then57.i.dwc3_prepare_trbs.exit_crit_edge:     ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_prepare_trbs.exit

if.then57.i.if.end64.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64.i

if.else.i:                                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  %length.i.i = getelementptr i8, ptr %.pn146.in189.i138, i32 -52
  %44 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length.i.i, align 4
  %call.i.i = tail call fastcc i32 @dwc3_prepare_last_sg(ptr noundef %dep, ptr noundef %req.1191.i140, i32 noundef %45, i32 noundef 0) #12
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.else.i, %if.then57.i.if.end64.i_crit_edge
  %ret.3.i = phi i32 [ %call58.i, %if.then57.i.if.end64.i_crit_edge ], [ %call.i.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool65.not.i = icmp eq i32 %ret.3.i, 0
  br i1 %tobool65.not.i, label %if.end64.i.if.end_crit_edge, label %lor.lhs.false66.i

if.end64.i.if.end_crit_edge:                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false66.i:                                ; preds = %if.end64.i
  %46 = ptrtoint ptr %trb_enqueue.i148.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %trb_enqueue.i148.i, align 4
  %48 = ptrtoint ptr %trb_dequeue.i149.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %trb_dequeue.i149.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %47)
  %cmp.i150.i = icmp eq i8 %49, %47
  br i1 %cmp.i150.i, label %if.then.i154.i, label %dwc3_calc_trbs_left.exit162.i

if.then.i154.i:                                   ; preds = %lor.lhs.false66.i
  %50 = ptrtoint ptr %started_list.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %started_list.i, align 4
  %cmp.i.not.i152.i = icmp eq ptr %51, %started_list.i
  br i1 %cmp.i.not.i152.i, label %if.then.i154.i.if.end70.i_crit_edge, label %if.then.i154.i.dwc3_prepare_trbs.exit_crit_edge

if.then.i154.i.dwc3_prepare_trbs.exit_crit_edge:  ; preds = %if.then.i154.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_prepare_trbs.exit

if.then.i154.i.if.end70.i_crit_edge:              ; preds = %if.then.i154.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

dwc3_calc_trbs_left.exit162.i:                    ; preds = %lor.lhs.false66.i
  %sub.i155.i = sub i8 %49, %47
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %47)
  %cmp16.i156.i = icmp ult i8 %49, %47
  %dec.i157.neg.i = zext i1 %cmp16.i156.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i155.i, i8 %dec.i157.neg.i)
  %tobool68.not.i = icmp eq i8 %sub.i155.i, %dec.i157.neg.i
  br i1 %tobool68.not.i, label %dwc3_calc_trbs_left.exit162.i.dwc3_prepare_trbs.exit_crit_edge, label %dwc3_calc_trbs_left.exit162.i.if.end70.i_crit_edge

dwc3_calc_trbs_left.exit162.i.if.end70.i_crit_edge: ; preds = %dwc3_calc_trbs_left.exit162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

dwc3_calc_trbs_left.exit162.i.dwc3_prepare_trbs.exit_crit_edge: ; preds = %dwc3_calc_trbs_left.exit162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_prepare_trbs.exit

if.end70.i:                                       ; preds = %dwc3_calc_trbs_left.exit162.i.if.end70.i_crit_edge, %if.then.i154.i.if.end70.i_crit_edge
  %52 = ptrtoint ptr %direction.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load72.i = load i8, ptr %direction.i, align 4
  %53 = and i8 %bf.load72.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool76.not.i = icmp eq i8 %53, 0
  br i1 %tobool76.not.i, label %if.end70.i.cleanup.i_crit_edge, label %land.lhs.true77.i

if.end70.i.cleanup.i_crit_edge:                   ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

land.lhs.true77.i:                                ; preds = %if.end70.i
  %is_last79.i = getelementptr i8, ptr %.pn146.in189.i138, i32 -32
  %54 = ptrtoint ptr %is_last79.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load80.i = load i32, ptr %is_last79.i, align 4
  %55 = and i32 %bf.load80.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool83.not.i = icmp eq i32 %55, 0
  br i1 %tobool83.not.i, label %land.lhs.true77.i.cleanup.i_crit_edge, label %land.lhs.true84.i

land.lhs.true77.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

land.lhs.true84.i:                                ; preds = %land.lhs.true77.i
  %hwparams986.i = getelementptr inbounds %struct.dwc3, ptr %33, i32 0, i32 66, i32 9
  %56 = ptrtoint ptr %hwparams986.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hwparams986.i, align 4
  %and87.i = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  %cmp37.not.i = icmp eq ptr %.pn146192.i141, %pending_list.i
  %or.cond.i = select i1 %tobool88.not.i, i1 true, i1 %cmp37.not.i
  br i1 %or.cond.i, label %land.lhs.true84.i.dwc3_prepare_trbs.exit_crit_edge, label %land.lhs.true84.i.for.body39.i.backedge_crit_edge

land.lhs.true84.i.for.body39.i.backedge_crit_edge: ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body39.i.backedge

land.lhs.true84.i.dwc3_prepare_trbs.exit_crit_edge: ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_prepare_trbs.exit

for.body39.i.backedge:                            ; preds = %cleanup.i.for.body39.i.backedge_crit_edge, %land.lhs.true84.i.for.body39.i.backedge_crit_edge
  %req.1191.i = getelementptr i8, ptr %.pn146192.i141, i32 -56
  %58 = ptrtoint ptr %.pn146192.i141 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn146192.i = load ptr, ptr %.pn146192.i141, align 4
  %59 = ptrtoint ptr %dwc41.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dwc41.i, align 4
  %sysdev.i = getelementptr inbounds %struct.dwc3, ptr %60, i32 0, i32 13
  %61 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sysdev.i, align 4
  %63 = ptrtoint ptr %direction.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load43.i = load i8, ptr %direction.i, align 4
  %bf.lshr44.i = lshr i8 %bf.load43.i, 7
  %bf.cast45.i = zext i8 %bf.lshr44.i to i32
  %call46.i = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %62, ptr noundef %req.1191.i, i32 noundef %bf.cast45.i) #12
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %for.body39.i.backedge.if.end49.i_crit_edge, label %for.body39.i.backedge.dwc3_prepare_trbs.exit_crit_edge

for.body39.i.backedge.dwc3_prepare_trbs.exit_crit_edge: ; preds = %for.body39.i.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_prepare_trbs.exit

for.body39.i.backedge.if.end49.i_crit_edge:       ; preds = %for.body39.i.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

cleanup.i:                                        ; preds = %land.lhs.true77.i.cleanup.i_crit_edge, %if.end70.i.cleanup.i_crit_edge
  %cmp37.not.old.i = icmp eq ptr %.pn146192.i141, %pending_list.i
  br i1 %cmp37.not.old.i, label %cleanup.i.dwc3_prepare_trbs.exit_crit_edge, label %cleanup.i.for.body39.i.backedge_crit_edge

cleanup.i.for.body39.i.backedge_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body39.i.backedge

cleanup.i.dwc3_prepare_trbs.exit_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_prepare_trbs.exit

dwc3_prepare_trbs.exit:                           ; preds = %cleanup.i.dwc3_prepare_trbs.exit_crit_edge, %for.body39.i.backedge.dwc3_prepare_trbs.exit_crit_edge, %land.lhs.true84.i.dwc3_prepare_trbs.exit_crit_edge, %dwc3_calc_trbs_left.exit162.i.dwc3_prepare_trbs.exit_crit_edge, %if.then.i154.i.dwc3_prepare_trbs.exit_crit_edge, %if.then57.i.dwc3_prepare_trbs.exit_crit_edge, %for.body39.lr.ph.i.dwc3_prepare_trbs.exit_crit_edge, %for.end.i.dwc3_prepare_trbs.exit_crit_edge, %land.lhs.true16.i.dwc3_prepare_trbs.exit_crit_edge, %dwc3_calc_trbs_left.exit.i.dwc3_prepare_trbs.exit_crit_edge, %if.then.i.i.dwc3_prepare_trbs.exit_crit_edge, %lor.lhs.false.i.dwc3_prepare_trbs.exit_crit_edge
  %retval.2.i = phi i32 [ %ret.0.lcssa.i, %for.end.i.dwc3_prepare_trbs.exit_crit_edge ], [ %call46.i136, %for.body39.lr.ph.i.dwc3_prepare_trbs.exit_crit_edge ], [ %ret.3.i, %cleanup.i.dwc3_prepare_trbs.exit_crit_edge ], [ %ret.3.i, %land.lhs.true84.i.dwc3_prepare_trbs.exit_crit_edge ], [ %ret.3.i, %dwc3_calc_trbs_left.exit162.i.dwc3_prepare_trbs.exit_crit_edge ], [ %ret.3.i, %if.then.i154.i.dwc3_prepare_trbs.exit_crit_edge ], [ %call58.i, %if.then57.i.dwc3_prepare_trbs.exit_crit_edge ], [ %call46.i, %for.body39.i.backedge.dwc3_prepare_trbs.exit_crit_edge ], [ %call.i, %lor.lhs.false.i.dwc3_prepare_trbs.exit_crit_edge ], [ %ret.1.i, %dwc3_calc_trbs_left.exit.i.dwc3_prepare_trbs.exit_crit_edge ], [ %ret.1.i, %land.lhs.true16.i.dwc3_prepare_trbs.exit_crit_edge ], [ %ret.1.i, %if.then.i.i.dwc3_prepare_trbs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %cmp = icmp slt i32 %retval.2.i, 0
  br i1 %cmp, label %dwc3_prepare_trbs.exit.cleanup80_crit_edge, label %dwc3_prepare_trbs.exit.if.end_crit_edge

dwc3_prepare_trbs.exit.if.end_crit_edge:          ; preds = %dwc3_prepare_trbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

dwc3_prepare_trbs.exit.cleanup80_crit_edge:       ; preds = %dwc3_prepare_trbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

if.end:                                           ; preds = %dwc3_prepare_trbs.exit.if.end_crit_edge, %if.end64.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %retval.2.i125 = phi i32 [ %retval.2.i, %dwc3_prepare_trbs.exit.if.end_crit_edge ], [ 0, %if.end64.i.if.end_crit_edge ], [ 0, %if.then.i.if.end_crit_edge ]
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %and = and i32 %65, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i125)
  %tobool1.not = icmp ne i32 %retval.2.i125, 0
  %brmerge = select i1 %tobool1.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end4, label %if.end.cleanup80_crit_edge

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

if.end4:                                          ; preds = %if.end
  %66 = ptrtoint ptr %started_list.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %started_list.i, align 4
  %cmp.not.i120 = icmp eq ptr %67, %started_list.i
  %add.ptr.i = getelementptr i8, ptr %67, i32 -56
  %tobool6.not126 = icmp eq ptr %add.ptr.i, null
  %tobool6.not = or i1 %cmp.not.i120, %tobool6.not126
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %65, 32
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or, ptr %flags, align 4
  br label %cleanup80

if.end9:                                          ; preds = %if.end4
  %69 = call ptr @memset(ptr %params, i32 0, i32 12)
  br i1 %tobool.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %trb_dma = getelementptr i8, ptr %67, i32 44
  %70 = ptrtoint ptr %trb_dma to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %trb_dma, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %1, align 4
  %stream_capable = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %73 = ptrtoint ptr %stream_capable to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load = load i8, ptr %stream_capable, align 4
  %74 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool15.not = icmp eq i8 %74, 0
  br i1 %tobool15.not, label %if.then11.if.end20_crit_edge, label %if.then16

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %stream_id = getelementptr i8, ptr %67, i32 -32
  %75 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load17 = load i32, ptr %stream_id, align 4
  %bf.lshr18 = and i32 %bf.load17, -65536
  %or19 = or i32 %bf.lshr18, 6
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then11.if.end20_crit_edge
  %cmd.0 = phi i32 [ %or19, %if.then16 ], [ 6, %if.then11.if.end20_crit_edge ]
  %desc = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %76 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bmAttributes.i, align 1
  %80 = and i8 %79, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %80)
  %cmp.i.not = icmp eq i8 %80, 1
  br i1 %cmp.i.not, label %if.then23, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %frame_number = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 15
  %81 = ptrtoint ptr %frame_number to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %frame_number, align 4
  %shl24 = shl i32 %82, 16
  %or25 = or i32 %shl24, %cmd.0
  br label %if.end29

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %resource_index = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 14
  %83 = ptrtoint ptr %resource_index to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %resource_index, align 4
  %conv = zext i8 %84 to i32
  %shl27 = shl nuw nsw i32 %conv, 16
  %or28 = or i32 %shl27, 7
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then23, %if.end20.if.end29_crit_edge
  %cmd.1 = phi i32 [ %or25, %if.then23 ], [ %cmd.0, %if.end20.if.end29_crit_edge ], [ %or28, %if.else ]
  %call30 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef %cmd.1, ptr noundef nonnull %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end60

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call30)
  %cmp34 = icmp eq i32 %call30, -11
  br i1 %cmp34, label %if.then33.cleanup80_crit_edge, label %if.end37

if.then33.cleanup80_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

if.end37:                                         ; preds = %if.then33
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i) #12
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 4
  %87 = and i32 %86, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %87)
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %if.end.i, label %if.end37.dwc3_stop_active_transfer.exit_crit_edge

if.end37.dwc3_stop_active_transfer.exit_crit_edge: ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_stop_active_transfer.exit

if.end.i:                                         ; preds = %if.end37
  %resource_index.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 14
  %89 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %resource_index.i, align 4
  %conv.i = zext i8 %90 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %or9.i = or i32 %shl.i, 2312
  %91 = call ptr @memset(ptr %params.i, i32 0, i32 12)
  %call.i121 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef %or9.i, ptr noundef nonnull %params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool10.not.i = icmp eq i32 %call.i121, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end42.i_crit_edge, label %land.rhs.i

if.end.i.if.end42.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b1.i = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end42.i_crit_edge, label %if.then20.i, !prof !231

land.rhs.i.if.end42.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

if.then20.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #12
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then20.i, %land.rhs.i.if.end42.i_crit_edge, %if.end.i.if.end42.i_crit_edge
  %92 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %resource_index.i, align 4
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags, align 4
  %or56.i = or i32 %94, 16
  store i32 %or56.i, ptr %flags, align 4
  br label %dwc3_stop_active_transfer.exit

dwc3_stop_active_transfer.exit:                   ; preds = %if.end42.i, %if.end37.dwc3_stop_active_transfer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #12
  %95 = ptrtoint ptr %started_list.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %started_list.i, align 4
  %cmp46.not147 = icmp eq ptr %96, %started_list.i
  br i1 %cmp46.not147, label %dwc3_stop_active_transfer.exit.for.end_crit_edge, label %dwc3_stop_active_transfer.exit.for.body_crit_edge

dwc3_stop_active_transfer.exit.for.body_crit_edge: ; preds = %dwc3_stop_active_transfer.exit
  br label %for.body

dwc3_stop_active_transfer.exit.for.end_crit_edge: ; preds = %dwc3_stop_active_transfer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %dwc3_gadget_move_cancelled_request.exit.for.body_crit_edge, %dwc3_stop_active_transfer.exit.for.body_crit_edge
  %.pn.in148 = phi ptr [ %.pn, %dwc3_gadget_move_cancelled_request.exit.for.body_crit_edge ], [ %96, %dwc3_stop_active_transfer.exit.for.body_crit_edge ]
  %97 = ptrtoint ptr %.pn.in148 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn = load ptr, ptr %.pn.in148, align 4
  %dep1.i = getelementptr i8, ptr %.pn.in148, i32 8
  %98 = ptrtoint ptr %dep1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dep1.i, align 4
  %status.i = getelementptr i8, ptr %.pn.in148, i32 32
  %100 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 3, ptr %status.i, align 4
  %cancelled_list.i = getelementptr inbounds %struct.dwc3_ep, ptr %99, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in148) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.__list_del_entry.exit.i.i_crit_edge

for.body.__list_del_entry.exit.i.i_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %.pn.in148, i32 4
  %101 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i.i.i, align 4
  %103 = ptrtoint ptr %.pn.in148 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %.pn.in148, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev1.i.i.i.i, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %104, ptr %102, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %for.body.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %99, i32 0, i32 1, i32 1
  %107 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in148, ptr noundef %108, ptr noundef %cancelled_list.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.dwc3_gadget_move_cancelled_request.exit_crit_edge

__list_del_entry.exit.i.i.dwc3_gadget_move_cancelled_request.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_move_cancelled_request.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %.pn.in148, ptr %prev.i2.i.i, align 4
  %110 = ptrtoint ptr %.pn.in148 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %cancelled_list.i, ptr %.pn.in148, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %.pn.in148, i32 4
  %111 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev3.i.i.i.i, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %.pn.in148, ptr %108, align 4
  br label %dwc3_gadget_move_cancelled_request.exit

dwc3_gadget_move_cancelled_request.exit:          ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.dwc3_gadget_move_cancelled_request.exit_crit_edge
  %cmp46.not = icmp eq ptr %.pn, %started_list.i
  br i1 %cmp46.not, label %dwc3_gadget_move_cancelled_request.exit.for.end_crit_edge, label %dwc3_gadget_move_cancelled_request.exit.for.body_crit_edge

dwc3_gadget_move_cancelled_request.exit.for.body_crit_edge: ; preds = %dwc3_gadget_move_cancelled_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

dwc3_gadget_move_cancelled_request.exit.for.end_crit_edge: ; preds = %dwc3_gadget_move_cancelled_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %dwc3_gadget_move_cancelled_request.exit.for.end_crit_edge, %dwc3_stop_active_transfer.exit.for.end_crit_edge
  %113 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags, align 4
  %and56 = and i32 %114, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.then58, label %for.end.cleanup80_crit_edge

for.end.cleanup80_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @dwc3_gadget_ep_cleanup_cancelled_requests(ptr noundef %dep)
  br label %cleanup80

if.end60:                                         ; preds = %if.end29
  %stream_capable61 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %115 = ptrtoint ptr %stream_capable61 to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load62 = load i8, ptr %stream_capable61, align 4
  %116 = and i8 %bf.load62, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool66.not = icmp eq i8 %116, 0
  br i1 %tobool66.not, label %if.end60.cleanup80_crit_edge, label %land.lhs.true67

if.end60.cleanup80_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

land.lhs.true67:                                  ; preds = %if.end60
  %is_last = getelementptr i8, ptr %67, i32 -32
  %117 = ptrtoint ptr %is_last to i32
  call void @__asan_load4_noabort(i32 %117)
  %bf.load69 = load i32, ptr %is_last, align 4
  %118 = and i32 %bf.load69, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool72.not = icmp eq i32 %118, 0
  br i1 %tobool72.not, label %land.lhs.true67.cleanup80_crit_edge, label %land.lhs.true73

land.lhs.true67.cleanup80_crit_edge:              ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

land.lhs.true73:                                  ; preds = %land.lhs.true67
  %dwc = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %119 = ptrtoint ptr %dwc to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dwc, align 4
  %hwparams9 = getelementptr inbounds %struct.dwc3, ptr %120, i32 0, i32 66, i32 9
  %121 = ptrtoint ptr %hwparams9 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %hwparams9, align 4
  %and74 = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.then76, label %land.lhs.true73.cleanup80_crit_edge

land.lhs.true73.cleanup80_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

if.then76:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags, align 4
  %or78 = or i32 %124, 128
  store i32 %or78, ptr %flags, align 4
  br label %cleanup80

cleanup80:                                        ; preds = %if.then76, %land.lhs.true73.cleanup80_crit_edge, %land.lhs.true67.cleanup80_crit_edge, %if.end60.cleanup80_crit_edge, %if.then58, %for.end.cleanup80_crit_edge, %if.then33.cleanup80_crit_edge, %if.then7, %if.end.cleanup80_crit_edge, %dwc3_prepare_trbs.exit.cleanup80_crit_edge
  %retval.1 = phi i32 [ 0, %if.then7 ], [ %retval.2.i, %dwc3_prepare_trbs.exit.cleanup80_crit_edge ], [ 0, %if.end.cleanup80_crit_edge ], [ %call30, %for.end.cleanup80_crit_edge ], [ %call30, %if.then58 ], [ -11, %if.then33.cleanup80_crit_edge ], [ 0, %if.then76 ], [ 0, %land.lhs.true73.cleanup80_crit_edge ], [ 0, %land.lhs.true67.cleanup80_crit_edge ], [ 0, %if.end60.cleanup80_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #12
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_init(ptr noundef %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %call.i = tail call i32 @platform_get_irq_byname_optional(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, -517
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @platform_get_irq_byname_optional(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp sgt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end3.i.if.end_crit_edge, label %if.end7.i

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call4.i)
  %cmp8.i = icmp eq i32 %call4.i, -517
  br i1 %cmp8.i, label %if.end7.i.cleanup_crit_edge, label %if.end10.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10.i:                                       ; preds = %if.end7.i
  %call11.i = tail call i32 @platform_get_irq(ptr noundef %add.ptr.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp sgt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.if.end_crit_edge, label %if.end14.i

if.end10.i.if.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  %spec.select = select i1 %tobool.not.i, i32 -22, i32 %call11.i
  br label %cleanup

if.end:                                           ; preds = %if.end10.i.if.end_crit_edge, %if.end3.i.if.end_crit_edge, %entry.if.end_crit_edge
  %irq.0.i = phi i32 [ %call.i, %entry.if.end_crit_edge ], [ %call4.i, %if.end3.i.if.end_crit_edge ], [ %call11.i, %if.end10.i.if.end_crit_edge ]
  %irq_gadget = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 43
  %2 = ptrtoint ptr %irq_gadget to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %irq.0.i, ptr %irq_gadget, align 4
  %sysdev = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 13
  %3 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sysdev, align 4
  %ep0_trb_addr = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 5
  %call.i150 = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 32, ptr noundef %ep0_trb_addr, i32 noundef 3264, i32 noundef 0) #12
  %ep0_trb = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 1
  %5 = ptrtoint ptr %ep0_trb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i150, ptr %ep0_trb, align 4
  %tobool.not = icmp eq ptr %call.i150, null
  br i1 %tobool.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 512) #16
  %setup_buf = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 4
  %9 = ptrtoint ptr %setup_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %setup_buf, align 4
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end5.err1_crit_edge, label %if.end10

if.end5.err1_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end10:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysdev, align 4
  %bounce_addr = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 6
  %call.i151 = tail call ptr @dma_alloc_attrs(ptr noundef %11, i32 noundef 1024, ptr noundef %bounce_addr, i32 noundef 3264, i32 noundef 0) #12
  %bounce = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 2
  %12 = ptrtoint ptr %bounce to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i151, ptr %bounce, align 4
  %tobool14.not = icmp eq ptr %call.i151, null
  br i1 %tobool14.not, label %if.end10.err2_crit_edge, label %if.end16

if.end10.err2_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2

if.end16:                                         ; preds = %if.end10
  %ep0_in_setup = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 9
  %13 = ptrtoint ptr %ep0_in_setup to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ep0_in_setup, align 4
  %wait.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i152 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 1048) #16
  %gadget = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %15 = ptrtoint ptr %gadget to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i152, ptr %gadget, align 4
  %tobool19.not = icmp eq ptr %call7.i.i152, null
  br i1 %tobool19.not, label %if.end16.err3_crit_edge, label %if.end21

if.end16.err3_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %err3

if.end21:                                         ; preds = %if.end16
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void @usb_initialize_gadget(ptr noundef %17, ptr noundef nonnull %call7.i.i152, ptr noundef nonnull @dwc_gadget_release) #12
  %18 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gadget, align 4
  %platform_data = getelementptr inbounds %struct.usb_gadget, ptr %19, i32 0, i32 11, i32 7
  %20 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dwc, ptr %platform_data, align 8
  %21 = load ptr, ptr %gadget, align 4
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dwc3_gadget_ops, ptr %ops, align 8
  %23 = load ptr, ptr %gadget, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %speed, align 8
  %25 = load ptr, ptr %gadget, align 4
  %ssp_rate = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %ssp_rate to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %ssp_rate, align 8
  %27 = load ptr, ptr %gadget, align 4
  %sg_supported = getelementptr inbounds %struct.usb_gadget, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %sg_supported to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load = load i32, ptr %sg_supported, align 4
  %bf.set = or i32 %bf.load, -2147483648
  store i32 %bf.set, ptr %sg_supported, align 4
  %29 = load ptr, ptr %gadget, align 4
  %name = getelementptr inbounds %struct.usb_gadget, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.16, ptr %name, align 4
  %usb2_gadget_lpm_disable = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %31 = ptrtoint ptr %usb2_gadget_lpm_disable to i32
  call void @__asan_loadN_noabort(i32 %31, i32 6)
  %bf.load31 = load i48, ptr %usb2_gadget_lpm_disable, align 4
  %32 = trunc i48 %bf.load31 to i32
  %33 = load ptr, ptr %gadget, align 4
  %lpm_capable = getelementptr inbounds %struct.usb_gadget, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %lpm_capable to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load35 = load i32, ptr %lpm_capable, align 4
  %35 = lshr i32 %32, 14
  %36 = and i32 %35, 32768
  %bf.clear36 = and i32 %bf.load35, -32769
  %37 = or i32 %36, %bf.clear36
  %bf.set37 = xor i32 %37, 32768
  store i32 %bf.set37, ptr %lpm_capable, align 4
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %38 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %39)
  %cmp38 = icmp eq i32 %39, 21811
  br i1 %cmp38, label %land.lhs.true, label %if.end21.if.end52_crit_edge

if.end21.if.end52_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end21
  %revision = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %40 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429414410, i32 %41)
  %cmp39 = icmp ult i32 %41, 1429414410
  br i1 %cmp39, label %land.lhs.true40, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

land.lhs.true40:                                  ; preds = %land.lhs.true
  %42 = ptrtoint ptr %usb2_gadget_lpm_disable to i32
  call void @__asan_loadN_noabort(i32 %42, i32 6)
  %bf.load41 = load i48, ptr %usb2_gadget_lpm_disable, align 4
  %43 = and i48 %bf.load41, 128
  %tobool45.not = icmp eq i48 %43, 0
  br i1 %tobool45.not, label %do.end49, label %land.lhs.true40.if.end52_crit_edge

land.lhs.true40.if.end52_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

do.end49:                                         ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.18, i32 noundef %41) #15
  br label %if.end52

if.end52:                                         ; preds = %do.end49, %land.lhs.true40.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge, %if.end21.if.end52_crit_edge
  %maximum_speed = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 50
  %46 = ptrtoint ptr %maximum_speed to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %maximum_speed, align 4
  %48 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gadget, align 4
  %max_speed = getelementptr inbounds %struct.usb_gadget, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %max_speed, align 4
  %max_ssp_rate = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 52
  %51 = ptrtoint ptr %max_ssp_rate to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_ssp_rate, align 4
  %53 = load ptr, ptr %gadget, align 4
  %max_ssp_rate55 = getelementptr inbounds %struct.usb_gadget, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %max_ssp_rate55 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %max_ssp_rate55, align 4
  %num_eps = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 65
  %55 = ptrtoint ptr %num_eps to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %num_eps, align 1
  %57 = load ptr, ptr %gadget, align 4
  %ep_list.i = getelementptr inbounds %struct.usb_gadget, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %ep_list.i, ptr %ep_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.usb_gadget, ptr %57, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %ep_list.i, ptr %prev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp13.not.i = icmp eq i8 %56, 0
  br i1 %cmp13.not.i, label %if.end52.if.end59_crit_edge, label %for.body.lr.ph.i

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

for.body.lr.ph.i:                                 ; preds = %if.end52
  %regs.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %wide.trip.count.i = zext i8 %56 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %and.i.i = and i32 %indvars.iv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 136) #16
  %tobool3.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool3.not.i.i, label %for.body.i.err4_crit_edge, label %if.end.i.i

for.body.i.err4_crit_edge:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err4

if.end.i.i:                                       ; preds = %for.body.i
  %61 = trunc i32 %indvars.iv.i to i8
  %62 = lshr i32 %indvars.iv.i, 1
  %dwc4.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 7
  %63 = ptrtoint ptr %dwc4.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %dwc, ptr %dwc4.i.i, align 8
  %number.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 12
  %64 = ptrtoint ptr %number.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %61, ptr %number.i.i, align 2
  %direction7.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 18
  %65 = ptrtoint ptr %direction7.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i.i = load i8, ptr %direction7.i.i, align 8
  %bf.shl.i.i = shl i8 %61, 7
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %direction7.i.i, align 8
  %66 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %indvars.iv.i, 4
  %add.i.i = add nuw nsw i32 %mul.i.i, 51200
  %add.ptr.i.i = getelementptr i8, ptr %67, i32 %add.i.i
  %regs9.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 4
  %68 = ptrtoint ptr %regs9.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr.i.i, ptr %regs9.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 %indvars.iv.i
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i.i.i, ptr %arrayidx.i.i, align 4
  %combo_num.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 19
  %70 = ptrtoint ptr %combo_num.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %combo_num.i.i, align 1
  %start_cmd_status.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 20
  %71 = ptrtoint ptr %start_cmd_status.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %start_cmd_status.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 17
  %conv10.i.i = and i32 %62, 127
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.58, ptr @.str.57
  %call13.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.i, i32 noundef 20, ptr noundef nonnull @.str.56, i32 noundef %conv10.i.i, ptr noundef nonnull %cond.i.i) #12
  %name16.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %name16.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %name.i.i, ptr %name16.i.i, align 4
  %73 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %number.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp.i.i = icmp ugt i8 %74, 1
  br i1 %cmp.i.i, label %if.end.i.i.if.end23.i.i_crit_edge, label %if.then20.i.i

if.end.i.i.if.end23.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i.i

if.then20.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %desc.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 9
  %75 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @dwc3_gadget_ep0_desc, ptr %desc.i.i, align 4
  %comp_desc.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 10
  %76 = ptrtoint ptr %comp_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %comp_desc.i.i, align 8
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then20.i.i, %if.end.i.i.if.end23.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv.i)
  %cmp25.i.i = icmp ult i32 %indvars.iv.i, 2
  %77 = ptrtoint ptr %dwc4.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dwc4.i.i, align 8
  br i1 %cmp25.i.i, label %if.then27.i.i, label %if.else.i.i

if.then27.i.i:                                    ; preds = %if.end23.i.i
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 512) #12
  %maxburst.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 7
  %79 = ptrtoint ptr %maxburst.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 7)
  %bf.load.i.i.i = load i56, ptr %maxburst.i.i.i, align 2
  %bf.clear.i.i.i = and i56 %bf.load.i.i.i, -63
  %bf.set.i.i.i = or i56 %bf.clear.i.i.i, 2
  store i56 %bf.set.i.i.i, ptr %maxburst.i.i.i, align 2
  %ops.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @dwc3_gadget_ep0_ops, ptr %ops.i.i.i, align 8
  %81 = ptrtoint ptr %direction7.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load4.i.i.i = load i8, ptr %direction7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load4.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load4.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then27.i.i.dwc3_gadget_init_control_endpoint.exit.i.i_crit_edge

if.then27.i.i.dwc3_gadget_init_control_endpoint.exit.i.i_crit_edge: ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_init_control_endpoint.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %gadget.i.i.i = getelementptr inbounds %struct.dwc3, ptr %78, i32 0, i32 18
  %82 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %gadget.i.i.i, align 4
  %ep0.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %ep0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call7.i.i.i.i, ptr %ep0.i.i.i, align 4
  br label %dwc3_gadget_init_control_endpoint.exit.i.i

dwc3_gadget_init_control_endpoint.exit.i.i:       ; preds = %if.then.i.i.i, %if.then27.i.i.dwc3_gadget_init_control_endpoint.exit.i.i_crit_edge
  %caps.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 4
  %85 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load7.i.i.i = load i8, ptr %caps.i.i.i, align 4
  %bf.set9.i.i.i = or i8 %bf.load7.i.i.i, -128
  store i8 %bf.set9.i.i.i, ptr %caps.i.i.i, align 4
  br label %for.inc.i

if.else.i.i:                                      ; preds = %if.end23.i.i
  %hwparams.i.i102.i.i = getelementptr inbounds %struct.dwc3, ptr %78, i32 0, i32 66
  %86 = ptrtoint ptr %hwparams.i.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hwparams.i.i102.i.i, align 4
  %shr.i.i103.i.i = lshr i32 %87, 8
  %and.i.i104.i.i = and i32 %shr.i.i103.i.i, 255
  %ip.i.i105.i.i = getelementptr inbounds %struct.dwc3, ptr %78, i32 0, i32 54
  %88 = ptrtoint ptr %ip.i.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ip.i.i105.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %89)
  %cmp.i.i106.i.i = icmp eq i32 %89, 13106
  br i1 %tobool.not.i.i, label %if.else32.i.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.else.i.i
  br i1 %cmp.i.i106.i.i, label %if.then.i.i.i.i, label %if.then30.i.i.dwc3_mdwidth.exit.i.i.i_crit_edge

if.then30.i.i.dwc3_mdwidth.exit.i.i.i_crit_edge:  ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_mdwidth.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %hwparams6.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %78, i32 0, i32 66, i32 6
  %90 = ptrtoint ptr %hwparams6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %hwparams6.i.i.i.i, align 4
  %and2.i.i.i.i = and i32 %91, 768
  %add.i.i.i.i = or i32 %and2.i.i.i.i, %and.i.i104.i.i
  br label %dwc3_mdwidth.exit.i.i.i

dwc3_mdwidth.exit.i.i.i:                          ; preds = %if.then.i.i.i.i, %if.then30.i.i.dwc3_mdwidth.exit.i.i.i_crit_edge
  %mdwidth.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ %and.i.i104.i.i, %if.then30.i.i.dwc3_mdwidth.exit.i.i.i_crit_edge ]
  %div51.i.i.i = lshr i32 %mdwidth.0.i.i.i.i, 3
  %regs.i.i.i = getelementptr inbounds %struct.dwc3, ptr %78, i32 0, i32 30
  %92 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i.i.i, align 4
  %94 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %number.i.i, align 2
  %96 = lshr i8 %95, 1
  %97 = zext i8 %96 to i32
  %mul.i.i.i = shl nuw nsw i32 %97, 2
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 49920
  %add.ptr.i.i.i.i = getelementptr i8, ptr %93, i32 -49408
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %add.i.i.i
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i.i) #12, !srcloc !226
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr.i.i.i.i, i32 noundef %add.i.i.i, i32 noundef %99) #12
  %100 = ptrtoint ptr %ip.i.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ip.i.i105.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %101)
  %cmp.i.i.i = icmp eq i32 %101, 21811
  %size.0.v.i.i.i = select i1 %cmp.i.i.i, i32 65535, i32 32767
  %size.0.i.i.i = and i32 %size.0.v.i.i.i, %99
  %mul5.i.i.i = mul i32 %size.0.i.i.i, %div51.i.i.i
  %maximum_speed.i.i.i = getelementptr inbounds %struct.dwc3, ptr %78, i32 0, i32 50
  %102 = ptrtoint ptr %maximum_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %maximum_speed.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %103)
  %cmp6.i.i.i = icmp ugt i32 %103, 4
  %size.1.v.i.i.i = select i1 %cmp6.i.i.i, i32 3, i32 2
  %size.1.i.i.i = sdiv i32 %mul5.i.i.i, %size.1.v.i.i.i
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %call7.i.i.i.i, i32 noundef %size.1.i.i.i) #12
  %max_streams.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 7
  %104 = ptrtoint ptr %max_streams.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 7)
  %bf.load.i95.i.i = load i56, ptr %max_streams.i.i.i, align 2
  %bf.clear.i96.i.i = and i56 %bf.load.i95.i.i, -16776961
  %bf.set.i97.i.i = or i56 %bf.clear.i96.i.i, 4096
  store i56 %bf.set.i97.i.i, ptr %max_streams.i.i.i, align 2
  %ops.i98.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 2
  %105 = ptrtoint ptr %ops.i98.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @dwc3_gadget_ep_ops, ptr %ops.i98.i.i, align 8
  %ep_list.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 3
  %gadget.i99.i.i = getelementptr inbounds %struct.dwc3, ptr %78, i32 0, i32 18
  %106 = ptrtoint ptr %gadget.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %gadget.i99.i.i, align 4
  %ep_list16.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %107, i32 0, i32 4
  %prev.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %107, i32 0, i32 4, i32 1
  %108 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list.i.i.i, ptr noundef %109, ptr noundef %ep_list16.i.i.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %dwc3_mdwidth.exit.i.i.i.list_add_tail.exit.i.i.i_crit_edge

dwc3_mdwidth.exit.i.i.i.list_add_tail.exit.i.i.i_crit_edge: ; preds = %dwc3_mdwidth.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %dwc3_mdwidth.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %ep_list.i.i.i, ptr %prev.i.i.i.i, align 4
  %111 = ptrtoint ptr %ep_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %ep_list16.i.i.i, ptr %ep_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %112 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev3.i.i.i.i.i, align 8
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %ep_list.i.i.i, ptr %109, align 4
  br label %list_add_tail.exit.i.i.i

list_add_tail.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %dwc3_mdwidth.exit.i.i.i.list_add_tail.exit.i.i.i_crit_edge
  %caps.i100.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %caps.i100.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load18.i.i.i = load i8, ptr %caps.i100.i.i, align 4
  %bf.set30.i.i.i = or i8 %bf.load18.i.i.i, 112
  store i8 %bf.set30.i.i.i, ptr %caps.i100.i.i, align 4
  %trb_pool.i.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 5
  %115 = ptrtoint ptr %trb_pool.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %trb_pool.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %116, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %list_add_tail.exit.i.i.i.for.inc.i_crit_edge

list_add_tail.exit.i.i.i.for.inc.i_crit_edge:     ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %list_add_tail.exit.i.i.i
  %117 = ptrtoint ptr %dwc4.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dwc4.i.i, align 8
  %sysdev.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %118, i32 0, i32 13
  %119 = ptrtoint ptr %sysdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sysdev.i.i.i.i, align 4
  %trb_pool_dma.i.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 6
  %call.i.i52.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %120, i32 noundef 4096, ptr noundef %trb_pool_dma.i.i.i.i, i32 noundef 3264, i32 noundef 0) #12
  %121 = ptrtoint ptr %trb_pool.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i.i52.i.i.i, ptr %trb_pool.i.i.i.i, align 8
  %tobool4.not.i.i.i.i = icmp eq ptr %call.i.i52.i.i.i, null
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.cleanup3.sink.split.i_crit_edge, label %if.end.i.i.i.i.for.inc.i_crit_edge

if.end.i.i.i.i.for.inc.i_crit_edge:               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i.i.i.cleanup3.sink.split.i_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup3.sink.split.i

if.else32.i.i:                                    ; preds = %if.else.i.i
  br i1 %cmp.i.i106.i.i, label %if.then.i.i110.i.i, label %if.else32.i.i.dwc3_mdwidth.exit.i129.i.i_crit_edge

if.else32.i.i.dwc3_mdwidth.exit.i129.i.i_crit_edge: ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_mdwidth.exit.i129.i.i

if.then.i.i110.i.i:                               ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %hwparams6.i.i107.i.i = getelementptr inbounds %struct.dwc3, ptr %78, i32 0, i32 66, i32 6
  %122 = ptrtoint ptr %hwparams6.i.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %hwparams6.i.i107.i.i, align 4
  %and2.i.i108.i.i = and i32 %123, 768
  %add.i.i109.i.i = or i32 %and2.i.i108.i.i, %and.i.i104.i.i
  br label %dwc3_mdwidth.exit.i129.i.i

dwc3_mdwidth.exit.i129.i.i:                       ; preds = %if.then.i.i110.i.i, %if.else32.i.i.dwc3_mdwidth.exit.i129.i.i_crit_edge
  %mdwidth.0.i.i111.i.i = phi i32 [ %add.i.i109.i.i, %if.then.i.i110.i.i ], [ %and.i.i104.i.i, %if.else32.i.i.dwc3_mdwidth.exit.i129.i.i_crit_edge ]
  %div46.i.i.i = lshr i32 %mdwidth.0.i.i111.i.i, 3
  %regs.i112.i.i = getelementptr inbounds %struct.dwc3, ptr %78, i32 0, i32 30
  %124 = ptrtoint ptr %regs.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i112.i.i, align 4
  %add.ptr1.i.i113.i.i = getelementptr i8, ptr %125, i32 640
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i113.i.i) #12, !srcloc !226
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i.i114.i.i = getelementptr i8, ptr %125, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i114.i.i, i32 noundef 50048, i32 noundef %127) #12
  %128 = ptrtoint ptr %ip.i.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ip.i.i105.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %129)
  %cmp.i115.i.i = icmp eq i32 %129, 21811
  %size.0.v.i116.i.i = select i1 %cmp.i115.i.i, i32 65535, i32 32767
  %size.0.i117.i.i = and i32 %size.0.v.i116.i.i, %127
  %mul.i118.i.i = mul i32 %size.0.i117.i.i, %div46.i.i.i
  %sub.i.i.i = add i32 %mul.i118.i.i, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp4.i.i.i = icmp slt i32 %sub.i.i.i, 0
  %div7.i.i.i = sdiv i32 %sub.i.i.i, 3
  %size.1.i119.i.i = select i1 %cmp4.i.i.i, i32 0, i32 %div7.i.i.i
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %call7.i.i.i.i, i32 noundef %size.1.i119.i.i) #12
  %max_streams.i120.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 7
  %130 = ptrtoint ptr %max_streams.i120.i.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 7)
  %bf.load.i121.i.i = load i56, ptr %max_streams.i120.i.i, align 2
  %bf.clear.i122.i.i = and i56 %bf.load.i121.i.i, -16776961
  %bf.set.i123.i.i = or i56 %bf.clear.i122.i.i, 4096
  store i56 %bf.set.i123.i.i, ptr %max_streams.i120.i.i, align 2
  %ops.i124.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 2
  %131 = ptrtoint ptr %ops.i124.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @dwc3_gadget_ep_ops, ptr %ops.i124.i.i, align 8
  %ep_list.i125.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 3
  %gadget.i126.i.i = getelementptr inbounds %struct.dwc3, ptr %78, i32 0, i32 18
  %132 = ptrtoint ptr %gadget.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %gadget.i126.i.i, align 4
  %ep_list12.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %133, i32 0, i32 4
  %prev.i.i127.i.i = getelementptr inbounds %struct.usb_gadget, ptr %133, i32 0, i32 4, i32 1
  %134 = ptrtoint ptr %prev.i.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i127.i.i, align 4
  %call.i.i.i128.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list.i125.i.i, ptr noundef %135, ptr noundef %ep_list12.i.i.i) #12
  br i1 %call.i.i.i128.i.i, label %if.end.i.i.i131.i.i, label %dwc3_mdwidth.exit.i129.i.i.list_add_tail.exit.i135.i.i_crit_edge

dwc3_mdwidth.exit.i129.i.i.list_add_tail.exit.i135.i.i_crit_edge: ; preds = %dwc3_mdwidth.exit.i129.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i135.i.i

if.end.i.i.i131.i.i:                              ; preds = %dwc3_mdwidth.exit.i129.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %prev.i.i127.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %ep_list.i125.i.i, ptr %prev.i.i127.i.i, align 4
  %137 = ptrtoint ptr %ep_list.i125.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %ep_list12.i.i.i, ptr %ep_list.i125.i.i, align 4
  %prev3.i.i.i130.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %138 = ptrtoint ptr %prev3.i.i.i130.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev3.i.i.i130.i.i, align 8
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %ep_list.i125.i.i, ptr %135, align 4
  br label %list_add_tail.exit.i135.i.i

list_add_tail.exit.i135.i.i:                      ; preds = %if.end.i.i.i131.i.i, %dwc3_mdwidth.exit.i129.i.i.list_add_tail.exit.i135.i.i_crit_edge
  %caps.i132.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 4
  %140 = ptrtoint ptr %caps.i132.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load14.i.i.i = load i8, ptr %caps.i132.i.i, align 4
  %bf.set26.i.i.i = or i8 %bf.load14.i.i.i, 112
  store i8 %bf.set26.i.i.i, ptr %caps.i132.i.i, align 4
  %trb_pool.i.i133.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 5
  %141 = ptrtoint ptr %trb_pool.i.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %trb_pool.i.i133.i.i, align 8
  %tobool.not.i.i134.i.i = icmp eq ptr %142, null
  br i1 %tobool.not.i.i134.i.i, label %if.end.i.i139.i.i, label %list_add_tail.exit.i135.i.i.for.inc.i_crit_edge

list_add_tail.exit.i135.i.i.for.inc.i_crit_edge:  ; preds = %list_add_tail.exit.i135.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i139.i.i:                                ; preds = %list_add_tail.exit.i135.i.i
  %143 = ptrtoint ptr %dwc4.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dwc4.i.i, align 8
  %sysdev.i.i136.i.i = getelementptr inbounds %struct.dwc3, ptr %144, i32 0, i32 13
  %145 = ptrtoint ptr %sysdev.i.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %sysdev.i.i136.i.i, align 4
  %trb_pool_dma.i.i137.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 6
  %call.i.i47.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %146, i32 noundef 4096, ptr noundef %trb_pool_dma.i.i137.i.i, i32 noundef 3264, i32 noundef 0) #12
  %147 = ptrtoint ptr %trb_pool.i.i133.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i.i47.i.i.i, ptr %trb_pool.i.i133.i.i, align 8
  %tobool4.not.i.i138.i.i = icmp eq ptr %call.i.i47.i.i.i, null
  br i1 %tobool4.not.i.i138.i.i, label %if.end.i.i139.i.i.cleanup3.sink.split.i_crit_edge, label %if.end.i.i139.i.i.for.inc.i_crit_edge

if.end.i.i139.i.i.for.inc.i_crit_edge:            ; preds = %if.end.i.i139.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i139.i.i.cleanup3.sink.split.i_crit_edge: ; preds = %if.end.i.i139.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup3.sink.split.i

for.inc.i:                                        ; preds = %if.end.i.i139.i.i.for.inc.i_crit_edge, %list_add_tail.exit.i135.i.i.for.inc.i_crit_edge, %if.end.i.i.i.i.for.inc.i_crit_edge, %list_add_tail.exit.i.i.i.for.inc.i_crit_edge, %dwc3_gadget_init_control_endpoint.exit.i.i
  %caps.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i.i.i, i32 0, i32 4
  %148 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %bf.load42.i.i = load i8, ptr %caps.i.i, align 4
  %bf.value.i.i = shl i8 %61, 3
  %bf.shl44.i.i = and i8 %bf.value.i.i, 8
  %bf.clear45.i.i = and i8 %bf.load42.i.i, -13
  %149 = shl i8 %61, 2
  %bf.value52.i.i = and i8 %149, 4
  %bf.set46.i.i = or i8 %bf.value52.i.i, %bf.shl44.i.i
  %150 = or i8 %bf.set46.i.i, %bf.clear45.i.i
  %bf.set55.i.i = xor i8 %150, 4
  store i8 %bf.set55.i.i, ptr %caps.i.i, align 4
  %pending_list.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 2
  %151 = ptrtoint ptr %pending_list.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %pending_list.i.i, ptr %pending_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %152 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %pending_list.i.i, ptr %prev.i.i.i, align 8
  %started_list.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 3
  %153 = ptrtoint ptr %started_list.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %started_list.i.i, ptr %started_list.i.i, align 4
  %prev.i144.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %154 = ptrtoint ptr %prev.i144.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %started_list.i.i, ptr %prev.i144.i.i, align 8
  %cancelled_list.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 1
  %155 = ptrtoint ptr %cancelled_list.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %cancelled_list.i.i, ptr %cancelled_list.i.i, align 4
  %prev.i145.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %156 = ptrtoint ptr %prev.i145.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %cancelled_list.i.i, ptr %prev.i145.i.i, align 8
  tail call void @dwc3_debugfs_create_endpoint_dir(ptr noundef nonnull %call7.i.i.i.i) #12
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end59_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end59_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

cleanup3.sink.split.i:                            ; preds = %if.end.i.i139.i.i.cleanup3.sink.split.i_crit_edge, %if.end.i.i.i.i.cleanup3.sink.split.i_crit_edge
  %157 = ptrtoint ptr %dwc4.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dwc4.i.i, align 8
  %dev.i.i140.i.i = getelementptr inbounds %struct.dwc3, ptr %158, i32 0, i32 12
  %159 = ptrtoint ptr %dev.i.i140.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev.i.i140.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.71, ptr noundef %name.i.i) #15
  br label %err4

if.end59:                                         ; preds = %for.inc.i.if.end59_crit_edge, %if.end52.if.end59_crit_edge
  %161 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %gadget, align 4
  %call61 = tail call i32 @usb_add_gadget(ptr noundef %162) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  %163 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.22) #15
  tail call fastcc void @dwc3_gadget_free_endpoints(ptr noundef %dwc)
  br label %err4

if.end68:                                         ; preds = %if.end59
  %165 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %166)
  %cmp70 = icmp eq i32 %166, 13106
  br i1 %cmp70, label %land.lhs.true71, label %if.end68.if.else_crit_edge

if.end68.if.else_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true71:                                  ; preds = %if.end68
  %167 = ptrtoint ptr %maximum_speed to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %maximum_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %168)
  %cmp73 = icmp eq i32 %168, 6
  br i1 %cmp73, label %if.then74, label %land.lhs.true71.if.else_crit_edge

land.lhs.true71.if.else_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then74:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %gadget, align 4
  %171 = ptrtoint ptr %max_ssp_rate to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %max_ssp_rate, align 4
  tail call void @dwc3_gadget_set_ssp_rate(ptr noundef %170, i32 noundef %172)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true71.if.else_crit_edge, %if.end68.if.else_crit_edge
  %173 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %gadget, align 4
  %175 = ptrtoint ptr %maximum_speed to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %maximum_speed, align 4
  %platform_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %174, i32 0, i32 11, i32 7
  %177 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %platform_data.i.i, align 8
  %lock.i = getelementptr inbounds %struct.dwc3, ptr %178, i32 0, i32 10
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %gadget_max_speed.i = getelementptr inbounds %struct.dwc3, ptr %178, i32 0, i32 51
  %179 = ptrtoint ptr %gadget_max_speed.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %176, ptr %gadget_max_speed.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #12
  br label %cleanup

err4:                                             ; preds = %do.end66, %cleanup3.sink.split.i, %for.body.i.err4_crit_edge
  %ret.0 = phi i32 [ %call61, %do.end66 ], [ -12, %cleanup3.sink.split.i ], [ -12, %for.body.i.err4_crit_edge ]
  %180 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %gadget, align 4
  %dev.i153 = getelementptr inbounds %struct.usb_gadget, ptr %181, i32 0, i32 11
  tail call void @put_device(ptr noundef %dev.i153) #12
  %182 = ptrtoint ptr %gadget to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %gadget, align 4
  br label %err3

err3:                                             ; preds = %err4, %if.end16.err3_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err4 ], [ -12, %if.end16.err3_crit_edge ]
  %183 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %sysdev, align 4
  %185 = ptrtoint ptr %bounce to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %bounce, align 4
  %187 = ptrtoint ptr %bounce_addr to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %bounce_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %184, i32 noundef 1024, ptr noundef %186, i32 noundef %188, i32 noundef 0) #12
  br label %err2

err2:                                             ; preds = %err3, %if.end10.err2_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err3 ], [ -12, %if.end10.err2_crit_edge ]
  %189 = ptrtoint ptr %setup_buf to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %setup_buf, align 4
  tail call void @kfree(ptr noundef %190) #12
  br label %err1

err1:                                             ; preds = %err2, %if.end5.err1_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err2 ], [ -12, %if.end5.err1_crit_edge ]
  %191 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %sysdev, align 4
  %193 = ptrtoint ptr %ep0_trb to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ep0_trb, align 4
  %195 = ptrtoint ptr %ep0_trb_addr to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %ep0_trb_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %192, i32 noundef 32, ptr noundef %194, i32 noundef %196, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.else, %if.then74, %do.end, %if.end14.i, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ 0, %if.then74 ], [ %ret.3, %err1 ], [ -12, %do.end ], [ -517, %if.end7.i.cleanup_crit_edge ], [ -517, %if.end.i.cleanup_crit_edge ], [ %spec.select, %if.end14.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_initialize_gadget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc_gadget_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -88
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_gadget_set_ssp_rate(ptr nocapture noundef readonly %g, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %gadget_max_speed = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %gadget_max_speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6, ptr %gadget_max_speed, align 4
  %gadget_ssp_rate = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 53
  %3 = ptrtoint ptr %gadget_ssp_rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %rate, ptr %gadget_ssp_rate, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_gadget_set_speed(ptr nocapture noundef readonly %g, i32 noundef %speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %gadget_max_speed = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %gadget_max_speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %speed, ptr %gadget_max_speed, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_gadget_free_endpoints(ptr nocapture noundef readonly %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %switch = icmp ult i32 %indvars.iv, 2
  br i1 %switch, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.end
  %dwc1.i = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dwc1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dwc1.i, align 4
  %sysdev.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysdev.i, align 4
  %trb_pool.i = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trb_pool.i, align 4
  %trb_pool_dma.i = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %trb_pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trb_pool_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %7, i32 noundef %9, i32 noundef 0) #12
  %10 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %trb_pool.i, align 4
  %11 = ptrtoint ptr %trb_pool_dma.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %trb_pool_dma.i, align 4
  %ep_list = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ep_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_del.exit_crit_edge

if.then8.list_del.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then8.list_del.exit_crit_edge
  %18 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %list_del.exit, %if.end.if.end9_crit_edge
  %name = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 17
  %dwc10 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %dwc10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dwc10, align 4
  %dev = getelementptr inbounds %struct.dwc3, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.dev_name.exit_crit_edge

if.end9.dev_name.exit_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end9.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %27, %if.end.i ], [ %25, %if.end9.dev_name.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %28 = load ptr, ptr @usb_debug_root, align 4
  %call11 = tail call ptr @debugfs_lookup(ptr noundef %retval.0.i, ptr noundef %28) #12
  %call12 = tail call ptr @debugfs_lookup(ptr noundef %name, ptr noundef %call11) #12
  tail call void @debugfs_remove(ptr noundef %call12) #12
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %for.inc

for.inc:                                          ; preds = %dev_name.exit, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_gadget_exit(ptr nocapture noundef readonly %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %0 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_del_gadget(ptr noundef nonnull %1) #12
  tail call fastcc void @dwc3_gadget_free_endpoints(ptr noundef %dwc)
  %2 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 11
  tail call void @put_device(ptr noundef %dev.i) #12
  %sysdev = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 13
  %4 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysdev, align 4
  %bounce = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 2
  %6 = ptrtoint ptr %bounce to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bounce, align 4
  %bounce_addr = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 6
  %8 = ptrtoint ptr %bounce_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bounce_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 1024, ptr noundef %7, i32 noundef %9, i32 noundef 0) #12
  %setup_buf = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 4
  %10 = ptrtoint ptr %setup_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %setup_buf, align 4
  tail call void @kfree(ptr noundef %11) #12
  %12 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sysdev, align 4
  %ep0_trb = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 1
  %14 = ptrtoint ptr %ep0_trb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep0_trb, align 4
  %ep0_trb_addr = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 5
  %16 = ptrtoint ptr %ep0_trb_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ep0_trb_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef 32, ptr noundef %15, i32 noundef %17, i32 noundef 0) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_suspend(ptr noundef %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget_driver = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 19
  %0 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget_driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %2 = tail call fastcc i32 @dwc3_gadget_run_stop(ptr noundef %dwc, i32 noundef 0)
  %async_callbacks.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %3 = ptrtoint ptr %async_callbacks.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 6)
  %bf.load.i = load i48, ptr %async_callbacks.i, align 4
  %4 = and i48 %bf.load.i, 32
  %tobool.not.i = icmp eq i48 %4, 0
  br i1 %tobool.not.i, label %if.end.dwc3_disconnect_gadget.exit_crit_edge, label %land.lhs.true.i

if.end.dwc3_disconnect_gadget.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_disconnect_gadget.exit

land.lhs.true.i:                                  ; preds = %if.end
  %5 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gadget_driver, align 4
  %disconnect.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disconnect.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.dwc3_disconnect_gadget.exit_crit_edge, label %if.then.i

land.lhs.true.i.dwc3_disconnect_gadget.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_disconnect_gadget.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %9 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gadget_driver, align 4
  %disconnect3.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %disconnect3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disconnect3.i, align 4
  %gadget.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %13 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gadget.i, align 4
  tail call void %12(ptr noundef %14) #12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  br label %dwc3_disconnect_gadget.exit

dwc3_disconnect_gadget.exit:                      ; preds = %if.then.i, %land.lhs.true.i.dwc3_disconnect_gadget.exit_crit_edge, %if.end.dwc3_disconnect_gadget.exit_crit_edge
  %regs.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i.i.i = getelementptr i8, ptr %16, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 0) #12, !srcloc !229
  %add.ptr2.i.i.i = getelementptr i8, ptr %16, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i.i, i32 noundef 50952, i32 noundef 0) #12
  %eps.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 17
  %17 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eps.i, align 4
  tail call fastcc void @__dwc3_gadget_ep_disable(ptr noundef %18) #12
  %arrayidx2.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx2.i, align 4
  tail call fastcc void @__dwc3_gadget_ep_disable(ptr noundef %20) #12
  br label %return

return:                                           ; preds = %dwc3_disconnect_gadget.exit, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_gadget_run_stop(ptr noundef %dwc, i32 noundef %is_on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %6, i32 1540
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !226
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %6, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50948, i32 noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %9 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %10)
  %cmp = icmp eq i32 %10, 21811
  br i1 %cmp, label %land.lhs.true4, label %if.then2.if.then14_crit_edge

if.then2.if.then14_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

land.lhs.true4:                                   ; preds = %if.then2
  %revision = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %11 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429411963, i32 %12)
  %cmp6 = icmp ult i32 %12, 1429411963
  %and = and i32 %8, -1966081
  %or = or i32 %and, 655360
  %reg.0.ph = select i1 %cmp6, i32 %or, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429412170, i32 %12)
  %cmp13 = icmp ult i32 %12, 1429412170
  br i1 %cmp13, label %land.lhs.true4.if.end16_crit_edge, label %land.lhs.true4.if.then14_crit_edge

land.lhs.true4.if.then14_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

land.lhs.true4.if.end16_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true4.if.then14_crit_edge, %if.then2.if.then14_crit_edge
  %reg.015 = phi i32 [ %reg.0.ph, %land.lhs.true4.if.then14_crit_edge ], [ %8, %if.then2.if.then14_crit_edge ]
  %and15 = and i32 %reg.015, -524289
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true4.if.end16_crit_edge
  %reg.1 = phi i32 [ %reg.0.ph, %land.lhs.true4.if.end16_crit_edge ], [ %and15, %if.then14 ]
  %has_hibernation = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %13 = ptrtoint ptr %has_hibernation to i32
  call void @__asan_loadN_noabort(i32 %13, i32 6)
  %bf.load = load i48, ptr %has_hibernation, align 4
  %14 = and i48 %bf.load, 4398046511104
  %tobool18.not = icmp eq i48 %14, 0
  %spec.select.v = select i1 %tobool18.not, i32 -2147483648, i32 -2146959360
  %spec.select = or i32 %spec.select.v, %reg.1
  %gadget_max_speed.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 51
  %15 = ptrtoint ptr %gadget_max_speed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gadget_max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i3 = icmp eq i32 %16, 0
  br i1 %cmp.i3, label %if.end16.if.then.i_crit_edge, label %lor.lhs.false.i

if.end16.if.then.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end16
  %maximum_speed.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 50
  %17 = ptrtoint ptr %maximum_speed.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maximum_speed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp1.i = icmp ugt i32 %16, %18
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end16.if.then.i_crit_edge
  %maximum_speed2.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 50
  %19 = ptrtoint ptr %maximum_speed2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %maximum_speed2.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %speed.0.i = phi i32 [ %20, %if.then.i ], [ %16, %lor.lhs.false.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %speed.0.i)
  %cmp3.i = icmp eq i32 %speed.0.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %10)
  %cmp4.i = icmp eq i32 %10, 13106
  %or.cond = select i1 %cmp3.i, i1 %cmp4.i, i1 false
  br i1 %or.cond, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  %gadget_ssp_rate.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 53
  %21 = ptrtoint ptr %gadget_ssp_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gadget_ssp_rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then5.i.if.end.i.i_crit_edge

if.then5.i.if.end.i.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_ssp_rate.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 52
  %23 = ptrtoint ptr %max_ssp_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_ssp_rate.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then5.i.if.end.i.i_crit_edge
  %ssp_rate.0.i.i = phi i32 [ %24, %if.then.i.i ], [ %22, %if.then5.i.if.end.i.i_crit_edge ]
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %26, i32 1536
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #12, !srcloc !226
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i.i.i = getelementptr i8, ptr %26, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i.i, i32 noundef 50944, i32 noundef %28) #12
  %and1.i.i = and i32 %28, 1073741816
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ssp_rate.0.i.i)
  %cmp2.i.i = icmp eq i32 %ssp_rate.0.i.i, 2
  br i1 %cmp2.i.i, label %if.end9.thread.i.i, label %if.end9.i.i

if.end9.thread.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i.i = or i32 %and1.i.i, 4
  br label %land.lhs.true.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %max_ssp_rate4.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 52
  %29 = ptrtoint ptr %max_ssp_rate4.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_ssp_rate4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp5.not.i.i = icmp eq i32 %30, 2
  %or7.i.i = or i32 %and1.i.i, 5
  %spec.select.i.i = select i1 %cmp5.not.i.i, i32 %and1.i.i, i32 %or7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ssp_rate.0.i.i)
  %cmp10.not.i.i = icmp eq i32 %ssp_rate.0.i.i, 1
  br i1 %cmp10.not.i.i, label %if.end9.i.i.__dwc3_gadget_set_ssp_rate.exit.i_crit_edge, label %if.end9.i.i.land.lhs.true.i.i_crit_edge

if.end9.i.i.land.lhs.true.i.i_crit_edge:          ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end9.i.i.__dwc3_gadget_set_ssp_rate.exit.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__dwc3_gadget_set_ssp_rate.exit.i

land.lhs.true.i.i:                                ; preds = %if.end9.i.i.land.lhs.true.i.i_crit_edge, %if.end9.thread.i.i
  %reg.034.i.i = phi i32 [ %or.i.i, %if.end9.thread.i.i ], [ %spec.select.i.i, %if.end9.i.i.land.lhs.true.i.i_crit_edge ]
  %max_ssp_rate11.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 52
  %31 = ptrtoint ptr %max_ssp_rate11.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_ssp_rate11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp12.not.i.i = icmp eq i32 %32, 1
  %or14.i.i = or i32 %reg.034.i.i, 1073741824
  %spec.select29.i.i = select i1 %cmp12.not.i.i, i32 %reg.034.i.i, i32 %or14.i.i
  br label %__dwc3_gadget_set_ssp_rate.exit.i

__dwc3_gadget_set_ssp_rate.exit.i:                ; preds = %land.lhs.true.i.i, %if.end9.i.i.__dwc3_gadget_set_ssp_rate.exit.i_crit_edge
  %reg.1.i.i = phi i32 [ %spec.select.i.i, %if.end9.i.i.__dwc3_gadget_set_ssp_rate.exit.i_crit_edge ], [ %spec.select29.i.i, %land.lhs.true.i.i ]
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %35 = tail call i32 @llvm.bswap.i32(i32 %reg.1.i.i) #12
  %add.ptr1.i31.i.i = getelementptr i8, ptr %34, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i31.i.i, i32 %35) #12, !srcloc !229
  br label %__dwc3_gadget_set_speed.exit

if.end6.i:                                        ; preds = %if.end.i
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %37, i32 1536
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !226
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i.i = getelementptr i8, ptr %37, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 50944, i32 noundef %39) #12
  %and.i = and i32 %39, -8
  %40 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %41)
  %cmp8.i = icmp eq i32 %41, 21811
  br i1 %cmp8.i, label %land.lhs.true9.i, label %if.end6.i.if.else.i_crit_edge

if.end6.i.if.else.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true9.i:                                 ; preds = %if.end6.i
  %revision.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %42 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429414410, i32 %43)
  %cmp10.i = icmp ult i32 %43, 1429414410
  br i1 %cmp10.i, label %land.lhs.true11.i, label %land.lhs.true9.i.if.else.i_crit_edge

land.lhs.true9.i.if.else.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true11.i:                                ; preds = %land.lhs.true9.i
  %44 = ptrtoint ptr %has_hibernation to i32
  call void @__asan_loadN_noabort(i32 %44, i32 6)
  %bf.load.i4 = load i48, ptr %has_hibernation, align 4
  %45 = and i48 %bf.load.i4, 128
  %tobool.not.i5 = icmp eq i48 %45, 0
  br i1 %tobool.not.i5, label %if.then12.i, label %land.lhs.true11.i.if.else.i_crit_edge

land.lhs.true11.i.if.else.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then12.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %and.i, 4
  br label %if.end33.i

if.else.i:                                        ; preds = %land.lhs.true11.i.if.else.i_crit_edge, %land.lhs.true9.i.if.else.i_crit_edge, %if.end6.i.if.else.i_crit_edge
  %46 = zext i32 %speed.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %speed.0.i, label %do.end.i [
    i32 2, label %sw.bb.i
    i32 3, label %if.else.i.if.end33.i_crit_edge
    i32 5, label %sw.bb16.i
    i32 6, label %sw.bb18.i
  ]

if.else.i.if.end33.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

sw.bb.i:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %or13.i = or i32 %and.i, 1
  br label %if.end33.i

sw.bb16.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %or17.i = or i32 %and.i, 4
  br label %if.end33.i

sw.bb18.i:                                        ; preds = %if.else.i
  br i1 %cmp8.i, label %if.then21.i, label %if.else23.i

if.then21.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #14
  %or22.i = or i32 %and.i, 4
  br label %if.end33.i

if.else23.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #14
  %or24.i = or i32 %and.i, 5
  br label %if.end33.i

do.end.i:                                         ; preds = %if.else.i
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.73, i32 noundef %speed.0.i) #15
  %49 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %50)
  %cmp27.i = icmp eq i32 %50, 21811
  br i1 %cmp27.i, label %if.then28.i, label %if.else30.i

if.then28.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %or29.i = or i32 %and.i, 4
  br label %if.end33.i

if.else30.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %or31.i = or i32 %and.i, 5
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else30.i, %if.then28.i, %if.else23.i, %if.then21.i, %sw.bb16.i, %sw.bb.i, %if.else.i.if.end33.i_crit_edge, %if.then12.i
  %reg.0.i = phi i32 [ %or29.i, %if.then28.i ], [ %or31.i, %if.else30.i ], [ %or22.i, %if.then21.i ], [ %or24.i, %if.else23.i ], [ %or17.i, %sw.bb16.i ], [ %or13.i, %sw.bb.i ], [ %or.i, %if.then12.i ], [ %and.i, %if.else.i.if.end33.i_crit_edge ]
  %51 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %52)
  %cmp35.i = icmp eq i32 %52, 13106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed.0.i)
  %cmp37.not.i = icmp ne i32 %speed.0.i, 0
  %or.cond.i = select i1 %cmp35.i, i1 %cmp37.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %speed.0.i)
  %cmp39.i = icmp ult i32 %speed.0.i, 6
  %or.cond74.i = select i1 %or.cond.i, i1 %cmp39.i, i1 false
  %and41.i = and i32 %reg.0.i, 1073741823
  %reg.1.i = select i1 %or.cond74.i, i32 %and41.i, i32 %reg.0.i
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %55 = tail call i32 @llvm.bswap.i32(i32 %reg.1.i) #12
  %add.ptr1.i76.i = getelementptr i8, ptr %54, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i76.i, i32 %55) #12, !srcloc !229
  br label %__dwc3_gadget_set_speed.exit

__dwc3_gadget_set_speed.exit:                     ; preds = %if.end33.i, %__dwc3_gadget_set_ssp_rate.exit.i
  %.sink.i = phi ptr [ %54, %if.end33.i ], [ %34, %__dwc3_gadget_set_ssp_rate.exit.i ]
  %reg.1.sink.i = phi i32 [ %reg.1.i, %if.end33.i ], [ %reg.1.i.i, %__dwc3_gadget_set_ssp_rate.exit.i ]
  %add.ptr2.i.i = getelementptr i8, ptr %.sink.i, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 50944, i32 noundef %reg.1.sink.i) #12
  %56 = ptrtoint ptr %has_hibernation to i32
  call void @__asan_loadN_noabort(i32 %56, i32 6)
  %bf.load22 = load i48, ptr %has_hibernation, align 4
  %bf.set = or i48 %bf.load22, 34359738368
  store i48 %bf.set, ptr %has_hibernation, align 4
  br label %if.end40

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %has_hibernation25 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %57 = ptrtoint ptr %has_hibernation25 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 6)
  %bf.load26 = load i48, ptr %has_hibernation25, align 4
  %58 = and i48 %bf.load26, 4398046511104
  %tobool30.not = icmp eq i48 %58, 0
  %reg.3.v = select i1 %tobool30.not, i32 2147483647, i32 2146959359
  %reg.3 = and i32 %reg.3.v, %8
  %bf.clear38 = and i48 %bf.load26, -34359738369
  store i48 %bf.clear38, ptr %has_hibernation25, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %__dwc3_gadget_set_speed.exit
  %reg.4 = phi i32 [ %spec.select, %__dwc3_gadget_set_speed.exit ], [ %reg.3, %if.else ]
  %and.i6 = and i32 %reg.4, -481
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %61 = tail call i32 @llvm.bswap.i32(i32 %and.i6) #12
  %add.ptr1.i.i8 = getelementptr i8, ptr %60, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i8, i32 %61) #12, !srcloc !229
  %add.ptr2.i.i9 = getelementptr i8, ptr %60, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i9, i32 noundef 50948, i32 noundef %and.i6) #12
  %lnot.ext = zext i1 %tobool.not to i32
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end40
  %timeout.0 = phi i32 [ 500, %if.end40 ], [ %dec, %land.rhs.do.body_crit_edge ]
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr1.i11 = getelementptr i8, ptr %63, i32 1548
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i11) #12, !srcloc !226
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i12 = getelementptr i8, ptr %63, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i12, i32 noundef 50956, i32 noundef %65) #12
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool44.not = icmp eq i32 %dec, 0
  br i1 %tobool44.not, label %do.body.cleanup_crit_edge, label %land.rhs

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %and43 = lshr i32 %65, 22
  %and43.lobit = and i32 %and43, 1
  %66 = xor i32 %and43.lobit, %lnot.ext
  %tobool49.not = icmp eq i32 %66, 1
  br i1 %tobool49.not, label %land.rhs.do.body_crit_edge, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

cleanup:                                          ; preds = %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge, %pm_runtime_suspended.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_suspended.exit.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ -110, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_resume(ptr noundef %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget_driver = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 19
  %0 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget_driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %softconnect = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %2 = ptrtoint ptr %softconnect to i32
  call void @__asan_loadN_noabort(i32 %2, i32 6)
  %bf.load = load i48, ptr %softconnect, align 4
  %3 = and i48 %bf.load, 70368744177664
  %tobool1.not = icmp eq i48 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @__dwc3_gadget_start(ptr noundef %dwc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @dwc3_gadget_run_stop(ptr noundef %dwc, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %err1, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err1:                                             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %regs.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 0) #12, !srcloc !229
  %add.ptr2.i.i.i = getelementptr i8, ptr %5, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i.i, i32 noundef 50952, i32 noundef 0) #12
  %eps.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 17
  %6 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eps.i, align 4
  tail call fastcc void @__dwc3_gadget_ep_disable(ptr noundef %7) #12
  %arrayidx2.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i, align 4
  tail call fastcc void @__dwc3_gadget_ep_disable(ptr noundef %9) #12
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call4, %err1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dwc3_gadget_start(ptr noundef %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %imod_interval = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 80
  %0 = ptrtoint ptr %imod_interval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %imod_interval, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %conv = zext i16 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv) #12
  %add.ptr1.i = getelementptr i8, ptr %3, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %4) #12, !srcloc !229
  %add.ptr2.i = getelementptr i8, ptr %3, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 51712, i32 noundef %conv) #12
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i82 = getelementptr i8, ptr %6, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i82, i32 128) #12, !srcloc !229
  %add.ptr2.i83 = getelementptr i8, ptr %6, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i83, i32 noundef 50188, i32 noundef -2147483648) #12
  br label %if.end5

if.else:                                          ; preds = %entry
  %call = tail call zeroext i1 @dwc3_has_imod(ptr noundef %dwc) #12
  br i1 %call, label %if.then3, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %regs4 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %7 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i85 = getelementptr i8, ptr %8, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i85, i32 0) #12, !srcloc !229
  %add.ptr2.i86 = getelementptr i8, ptr %8, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i86, i32 noundef 51712, i32 noundef 0) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.else.if.end5_crit_edge, %if.then
  %regs6 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %9 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs6, align 4
  %add.ptr1.i88 = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i88) #12, !srcloc !226
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %10, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 49420, i32 noundef %12) #12
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %13 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %14)
  %cmp = icmp eq i32 %14, 21811
  %reg.0.v = select i1 %cmp, i32 -536870913, i32 -67108865
  %reg.0 = and i32 %reg.0.v, %12
  %15 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #12
  %add.ptr1.i90 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i90, i32 %17) #12, !srcloc !229
  %add.ptr2.i91 = getelementptr i8, ptr %16, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i91, i32 noundef 49420, i32 noundef %reg.0) #12
  %hwparams7.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 7
  %18 = ptrtoint ptr %hwparams7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hwparams7.i, align 4
  %hwparams.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66
  %20 = ptrtoint ptr %hwparams.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hwparams.i.i, align 4
  %shr.i.i = lshr i32 %21, 8
  %and.i.i = and i32 %shr.i.i, 255
  %22 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %23)
  %cmp.i.i = icmp eq i32 %23, 13106
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end5.dwc3_gadget_setup_nump.exit_crit_edge

if.end5.dwc3_gadget_setup_nump.exit_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_setup_nump.exit

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %hwparams6.i.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 6
  %24 = ptrtoint ptr %hwparams6.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwparams6.i.i, align 4
  %and2.i.i = and i32 %25, 768
  %add.i.i = or i32 %and2.i.i, %and.i.i
  br label %dwc3_gadget_setup_nump.exit

dwc3_gadget_setup_nump.exit:                      ; preds = %if.then.i.i, %if.end5.dwc3_gadget_setup_nump.exit_crit_edge
  %mdwidth.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %and.i.i, %if.end5.dwc3_gadget_setup_nump.exit_crit_edge ]
  %shr.i = lshr i32 %19, 16
  %mul.i = mul nsw i32 %mdwidth.0.i.i, %shr.i
  %div14.i = lshr i32 %mul.i, 3
  %sub1.i = add nsw i32 %div14.i, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %sub1.i)
  %cmp.i = icmp ult i32 %sub1.i, 16384
  %26 = shl i32 %sub1.i, 7
  %phi.bo.i = and i32 %26, -131072
  %cond.i = select i1 %cmp.i, i32 %phi.bo.i, i32 2097152
  %27 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs6, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %28, i32 1536
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !226
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i.i = getelementptr i8, ptr %28, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 50944, i32 noundef %30) #12
  %and4.i = and i32 %30, -4063233
  %or.i = or i32 %cond.i, %and4.i
  %31 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %add.ptr1.i17.i = getelementptr i8, ptr %32, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i17.i, i32 %33) #12, !srcloc !229
  %add.ptr2.i.i = getelementptr i8, ptr %32, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 50944, i32 noundef %or.i) #12
  %34 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs6, align 4
  %add.ptr1.i93 = getelementptr i8, ptr %35, i32 1536
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i93) #12, !srcloc !226
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i94 = getelementptr i8, ptr %35, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i94, i32 noundef 50944, i32 noundef %37) #12
  %or = or i32 %37, 8388608
  %38 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %40 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %add.ptr1.i96 = getelementptr i8, ptr %39, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i96, i32 %40) #12, !srcloc !229
  %add.ptr2.i97 = getelementptr i8, ptr %39, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i97, i32 noundef 50944, i32 noundef %or) #12
  %hwparams9 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 9
  %41 = ptrtoint ptr %hwparams9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hwparams9, align 4
  %and17 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %dwc3_gadget_setup_nump.exit.if.end24_crit_edge, label %if.then19

dwc3_gadget_setup_nump.exit.if.end24_crit_edge:   ; preds = %dwc3_gadget_setup_nump.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then19:                                        ; preds = %dwc3_gadget_setup_nump.exit
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs6, align 4
  %add.ptr1.i99 = getelementptr i8, ptr %44, i32 1600
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i99) #12, !srcloc !226
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i100 = getelementptr i8, ptr %44, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i100, i32 noundef 51008, i32 noundef %46) #12
  %and22 = and i32 %46, -3
  %47 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %49 = tail call i32 @llvm.bswap.i32(i32 %and22) #12
  %add.ptr1.i102 = getelementptr i8, ptr %48, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i102, i32 %49) #12, !srcloc !229
  %add.ptr2.i103 = getelementptr i8, ptr %48, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i103, i32 noundef 51008, i32 noundef %and22) #12
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %dwc3_gadget_setup_nump.exit.if.end24_crit_edge
  store i16 2, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @dwc3_gadget_ep0_desc, i32 0, i32 4), align 1
  %eps = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 17
  %50 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %eps, align 4
  %call25 = tail call fastcc i32 @__dwc3_gadget_ep_enable(ptr noundef %51, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %do.end

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.dwc3_ep, ptr %51, i32 0, i32 17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.50, ptr noundef %name) #15
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %arrayidx30 = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 1
  %54 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx30, align 4
  %call31 = tail call fastcc i32 @__dwc3_gadget_ep_enable(ptr noundef %55, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end40, label %do.end36

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %dev37 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %56 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev37, align 4
  %name38 = getelementptr inbounds %struct.dwc3_ep, ptr %55, i32 0, i32 17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.50, ptr noundef %name38) #15
  %58 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %eps, align 4
  tail call fastcc void @__dwc3_gadget_ep_disable(ptr noundef %59)
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %ep0state = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 58
  %60 = ptrtoint ptr %ep0state to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %ep0state, align 4
  %link_state = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 59
  %61 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %link_state, align 4
  %delayed_status = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %62 = ptrtoint ptr %delayed_status to i32
  call void @__asan_loadN_noabort(i32 %62, i32 6)
  %bf.load = load i48, ptr %delayed_status, align 4
  %bf.clear = and i48 %bf.load, -35184372088833
  store i48 %bf.clear, ptr %delayed_status, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %dwc) #12
  %63 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %64)
  %cmp.i104 = icmp eq i32 %64, 21811
  br i1 %cmp.i104, label %land.lhs.true4.i, label %if.end40.if.then7.i_crit_edge

if.end40.if.then7.i_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

land.lhs.true4.i:                                 ; preds = %if.end40
  %revision.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %65 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429415178, i32 %66)
  %cmp1.i = icmp ult i32 %66, 1429415178
  %spec.select.i = select i1 %cmp1.i, i32 3615, i32 3607
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429414666, i32 %66)
  %cmp6.i = icmp ult i32 %66, 1429414666
  br i1 %cmp6.i, label %land.lhs.true4.i.dwc3_gadget_enable_irq.exit_crit_edge, label %land.lhs.true4.i.if.then7.i_crit_edge

land.lhs.true4.i.if.then7.i_crit_edge:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

land.lhs.true4.i.dwc3_gadget_enable_irq.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_enable_irq.exit

if.then7.i:                                       ; preds = %land.lhs.true4.i.if.then7.i_crit_edge, %if.end40.if.then7.i_crit_edge
  %reg.018.i = phi i32 [ %spec.select.i, %land.lhs.true4.i.if.then7.i_crit_edge ], [ 3607, %if.end40.if.then7.i_crit_edge ]
  %or8.i = or i32 %reg.018.i, 64
  br label %dwc3_gadget_enable_irq.exit

dwc3_gadget_enable_irq.exit:                      ; preds = %if.then7.i, %land.lhs.true4.i.dwc3_gadget_enable_irq.exit_crit_edge
  %reg.1.i = phi i32 [ %spec.select.i, %land.lhs.true4.i.dwc3_gadget_enable_irq.exit_crit_edge ], [ %or8.i, %if.then7.i ]
  %67 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %69 = tail call i32 @llvm.bswap.i32(i32 %reg.1.i) #12
  %add.ptr1.i.i106 = getelementptr i8, ptr %68, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i106, i32 %69) #12, !srcloc !229
  %add.ptr2.i.i107 = getelementptr i8, ptr %68, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i107, i32 noundef 50952, i32 noundef %reg.1.i) #12
  br label %cleanup

cleanup:                                          ; preds = %dwc3_gadget_enable_irq.exit, %do.end36, %do.end
  %retval.0 = phi i32 [ 0, %dwc3_gadget_enable_irq.exit ], [ %call25, %do.end ], [ %call31, %do.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_gadget_process_pending_events(ptr nocapture noundef %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_events = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %0 = ptrtoint ptr %pending_events to i32
  call void @__asan_loadN_noabort(i32 %0, i32 6)
  %bf.load = load i48, ptr %pending_events, align 4
  %1 = and i48 %bf.load, 137438953472
  %tobool.not = icmp eq i48 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %irq_gadget = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 43
  %2 = ptrtoint ptr %irq_gadget to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_gadget, align 4
  %ev_buf = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 16
  %4 = ptrtoint ptr %ev_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ev_buf, align 4
  %call = tail call i32 @dwc3_interrupt(i32 noundef %3, ptr noundef %5)
  %6 = ptrtoint ptr %pending_events to i32
  call void @__asan_loadN_noabort(i32 %6, i32 6)
  %bf.load2 = load i48, ptr %pending_events, align 4
  %bf.clear3 = and i48 %bf.load2, -137438953473
  store i48 %bf.clear3, ptr %pending_events, align 4
  %7 = ptrtoint ptr %irq_gadget to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_gadget, align 4
  tail call void @enable_irq(i32 noundef %8) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_interrupt(i32 noundef %irq, ptr nocapture noundef %_evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %_evt, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1.i, align 4
  %dev.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

pm_runtime_suspended.exit.i:                      ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %if.then.i, label %pm_runtime_suspended.exit.i.if.end.i_crit_edge

pm_runtime_suspended.exit.i.if.end.i_crit_edge:   ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 5) #12
  %irq_gadget.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 43
  %7 = ptrtoint ptr %irq_gadget.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_gadget.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %8) #12
  %pending_events.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %9 = ptrtoint ptr %pending_events.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 6)
  %bf.load.i = load i48, ptr %pending_events.i, align 4
  %bf.set.i = or i48 %bf.load.i, 137438953472
  store i48 %bf.set.i, ptr %pending_events.i, align 4
  br label %dwc3_check_event_buf.exit

if.end.i:                                         ; preds = %pm_runtime_suspended.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %_evt, i32 0, i32 5
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.dwc3_check_event_buf.exit_crit_edge

if.end.i.dwc3_check_event_buf.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_check_event_buf.exit

if.end5.i:                                        ; preds = %if.end.i
  %regs.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 30
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %13, i32 780
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !226
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i.i = getelementptr i8, ptr %13, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 50188, i32 noundef %15) #12
  %and7.i = and i32 %15, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.dwc3_check_event_buf.exit_crit_edge, label %if.end10.i

if.end5.i.dwc3_check_event_buf.exit_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_check_event_buf.exit

if.end10.i:                                       ; preds = %if.end5.i
  %count11.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %_evt, i32 0, i32 4
  %16 = ptrtoint ptr %count11.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and7.i, ptr %count11.i, align 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %18, 1
  store i32 %or.i, ptr %flags.i, align 4
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %length.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %_evt, i32 0, i32 2
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 4
  %and14.i = and i32 %22, 65535
  %or15.i = or i32 %and14.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %23 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #12
  %add.ptr1.i58.i = getelementptr i8, ptr %20, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i58.i, i32 %23) #12, !srcloc !229
  %add.ptr2.i.i = getelementptr i8, ptr %20, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 50184, i32 noundef %or15.i) #12
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 4
  %lpos.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %_evt, i32 0, i32 3
  %26 = ptrtoint ptr %lpos.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lpos.i, align 4
  %sub.i = sub i32 %25, %27
  %28 = tail call i32 @llvm.umin.i32(i32 %and7.i, i32 %sub.i) #12
  %cache.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %_evt, i32 0, i32 1
  %29 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cache.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 %27
  %31 = ptrtoint ptr %_evt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_evt, align 4
  %add.ptr19.i = getelementptr i8, ptr %32, i32 %27
  %33 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr19.i, i32 %28)
  call void @__sanitizer_cov_trace_cmp4(i32 %and7.i, i32 %sub.i)
  %cmp20.i = icmp ugt i32 %and7.i, %sub.i
  br i1 %cmp20.i, label %if.then21.i, label %if.end10.i.if.end25.i_crit_edge

if.end10.i.if.end25.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cache.i, align 4
  %36 = ptrtoint ptr %_evt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_evt, align 4
  %sub24.i = sub nsw i32 %and7.i, %28
  %38 = call ptr @memcpy(ptr %35, ptr %37, i32 %sub24.i)
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.end10.i.if.end25.i_crit_edge
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %41 = tail call i32 @llvm.bswap.i32(i32 %and7.i) #12
  %add.ptr1.i60.i = getelementptr i8, ptr %40, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i60.i, i32 %41) #12, !srcloc !229
  %add.ptr2.i61.i = getelementptr i8, ptr %40, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i61.i, i32 noundef 50188, i32 noundef %and7.i) #12
  br label %dwc3_check_event_buf.exit

dwc3_check_event_buf.exit:                        ; preds = %if.end25.i, %if.end5.i.dwc3_check_event_buf.exit_crit_edge, %if.end.i.dwc3_check_event_buf.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 2, %if.end25.i ], [ 1, %if.end.i.dwc3_check_event_buf.exit_crit_edge ], [ 0, %if.end5.i.dwc3_check_event_buf.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_readl(ptr noundef %base, i32 noundef %offset, i32 noundef %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), ptr blockaddress(@trace_dwc3_readl, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !239
  %call42 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !240
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_readl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 44, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
define internal fastcc void @trace_dwc3_writel(ptr noundef %base, i32 noundef %offset, i32 noundef %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), ptr blockaddress(@trace_dwc3_writel, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !241
  %call42 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !242
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_writel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 49, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
declare dso_local void @usb_gadget_unmap_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_gadget_giveback(ptr noundef %req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_giveback, i32 0, i32 1), ptr blockaddress(@trace_dwc3_gadget_giveback, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !243
  %call42 = tail call i32 @__traceiter_dwc3_gadget_giveback(ptr noundef null, ptr noundef %req) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !244
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_giveback, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_giveback, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_gadget_giveback.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_gadget_giveback.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 158, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_gadget_giveback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_gadget_generic_cmd(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_gadget_ep_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_prepare_trbs_sg(ptr noundef %dep, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %start_sg = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %start_sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %start_sg, align 4
  %length1 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %length1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length1, align 4
  %num_mapped_sgs = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 5
  %4 = ptrtoint ptr %num_mapped_sgs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_mapped_sgs, align 4
  %num_queued_sgs = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %num_queued_sgs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_queued_sgs, align 4
  %sub = sub i32 %5, %7
  %num_trbs3 = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 12
  %8 = ptrtoint ptr %num_trbs3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_trbs3, align 4
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %10 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc.i, align 4
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %14 = and i16 %13, -249
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  %and.i.i = zext i16 %15 to i32
  %rem1.i = urem i32 %3, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %entry
  %zero.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %16 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load i32, ptr %zero.i, align 4
  %17 = and i32 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not.i = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i)
  %tobool7.not.i = icmp eq i32 %rem1.i, 0
  %or.cond.i = select i1 %tobool5.not.i, i1 %tobool7.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true8.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bmAttributes.i.i, align 1
  %20 = and i8 %19, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.i.not.i = icmp eq i8 %20, 1
  br i1 %cmp.i.not.i, label %land.lhs.true8.i.lor.lhs.false.i_crit_edge, label %land.lhs.true8.i.dwc3_needs_extra_trb.exit_crit_edge

land.lhs.true8.i.dwc3_needs_extra_trb.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_needs_extra_trb.exit

land.lhs.true8.i.lor.lhs.false.i_crit_edge:       ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true8.i.lor.lhs.false.i_crit_edge, %land.lhs.true.i.lor.lhs.false.i_crit_edge, %entry.lor.lhs.false.i_crit_edge
  %direction.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 13
  %21 = ptrtoint ptr %direction.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load13.i = load i8, ptr %direction.i, align 4
  %22 = and i8 %bf.load13.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool16.not.i = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i)
  %tobool18.not.i = icmp ne i32 %rem1.i, 0
  %or.cond25.i = select i1 %tobool16.not.i, i1 %tobool18.not.i, i1 false
  br label %dwc3_needs_extra_trb.exit

dwc3_needs_extra_trb.exit:                        ; preds = %lor.lhs.false.i, %land.lhs.true8.i.dwc3_needs_extra_trb.exit_crit_edge
  %retval.0.i = phi i1 [ true, %land.lhs.true8.i.dwc3_needs_extra_trb.exit_crit_edge ], [ %or.cond25.i, %lor.lhs.false.i ]
  %23 = ptrtoint ptr %num_queued_sgs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_queued_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp131.not = icmp eq i32 %24, 0
  br i1 %cmp131.not, label %dwc3_needs_extra_trb.exit.for.cond9.preheader_crit_edge, label %for.body.preheader

dwc3_needs_extra_trb.exit.for.cond9.preheader_crit_edge: ; preds = %dwc3_needs_extra_trb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond9.preheader

for.body.preheader:                               ; preds = %dwc3_needs_extra_trb.exit
  %sg5 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 3
  %25 = ptrtoint ptr %sg5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sg5, align 4
  br label %for.body

for.cond9.preheader:                              ; preds = %for.body.for.cond9.preheader_crit_edge, %dwc3_needs_extra_trb.exit.for.cond9.preheader_crit_edge
  %length.0.lcssa = phi i32 [ %3, %dwc3_needs_extra_trb.exit.for.cond9.preheader_crit_edge ], [ %sub7, %for.body.for.cond9.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp10135.not = icmp eq i32 %5, %7
  br i1 %cmp10135.not, label %for.cond9.preheader.for.end59_crit_edge, label %for.body11.lr.ph

for.cond9.preheader.for.end59_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end59

for.body11.lr.ph:                                 ; preds = %for.cond9.preheader
  %trb_enqueue.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %trb_dequeue.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 11
  %started_list.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 3
  %sub16 = add i32 %sub, -1
  %num_pending_sgs = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 5
  br label %for.body11

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %length.0134 = phi i32 [ %sub7, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %i.0133 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %s.0132 = phi ptr [ %call8, %for.body.for.body_crit_edge ], [ %26, %for.body.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %s.0132, i32 0, i32 4
  %27 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_length, align 4
  %sub7 = sub i32 %length.0134, %28
  %inc = add nuw i32 %i.0133, 1
  %call8 = tail call ptr @sg_next(ptr noundef %s.0132) #12
  %29 = ptrtoint ptr %num_queued_sgs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_queued_sgs, align 4
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond9.preheader_crit_edge

for.body.for.cond9.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond9.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body11:                                       ; preds = %for.inc56.for.body11_crit_edge, %for.body11.lr.ph
  %length.1142 = phi i32 [ %length.0.lcssa, %for.body11.lr.ph ], [ %sub15154, %for.inc56.for.body11_crit_edge ]
  %i.1139 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc57, %for.inc56.for.body11_crit_edge ]
  %s.1136 = phi ptr [ %1, %for.body11.lr.ph ], [ %call58, %for.inc56.for.body11_crit_edge ]
  %31 = ptrtoint ptr %trb_enqueue.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %trb_enqueue.i, align 4
  %33 = ptrtoint ptr %trb_dequeue.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %trb_dequeue.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %32)
  %cmp.i = icmp eq i8 %34, %32
  br i1 %cmp.i, label %if.then.i, label %dwc3_calc_trbs_left.exit

if.then.i:                                        ; preds = %for.body11
  %35 = ptrtoint ptr %started_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %started_list.i, align 4
  %cmp.i.not.i112 = icmp eq ptr %36, %started_list.i
  br i1 %cmp.i.not.i112, label %if.end20.thread, label %if.then.i.for.end59_crit_edge

if.then.i.for.end59_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end59

dwc3_calc_trbs_left.exit:                         ; preds = %for.body11
  %sub.i = sub i8 %34, %32
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %32)
  %cmp16.i = icmp ult i8 %34, %32
  %dec.i = sext i1 %cmp16.i to i8
  %spec.select.i = add i8 %sub.i, %dec.i
  %dma_length13 = getelementptr inbounds %struct.scatterlist, ptr %s.1136, i32 0, i32 4
  %37 = ptrtoint ptr %dma_length13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_length13, align 4
  %39 = tail call i32 @llvm.umin.i32(i32 %length.1142, i32 %38)
  %sub15 = sub i32 %length.1142, %39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i)
  %tobool18.not = icmp eq i8 %spec.select.i, 0
  br i1 %tobool18.not, label %dwc3_calc_trbs_left.exit.for.end59_crit_edge, label %if.end20

dwc3_calc_trbs_left.exit.for.end59_crit_edge:     ; preds = %dwc3_calc_trbs_left.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end59

if.end20:                                         ; preds = %dwc3_calc_trbs_left.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15)
  %tobool.not = icmp eq i32 %sub15, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1139, i32 %sub16)
  %cmp17 = icmp eq i32 %i.1139, %sub16
  %or.cond = select i1 %cmp17, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end20.if.then22_crit_edge, label %if.else

if.end20.if.then22_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end20.thread:                                  ; preds = %if.then.i
  %dma_length13158 = getelementptr inbounds %struct.scatterlist, ptr %s.1136, i32 0, i32 4
  %40 = ptrtoint ptr %dma_length13158 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_length13158, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %length.1142, i32 %41)
  %sub15159 = sub i32 %length.1142, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15159)
  %tobool.not160 = icmp eq i32 %sub15159, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1139, i32 %sub16)
  %cmp17168 = icmp eq i32 %i.1139, %sub16
  %or.cond169 = select i1 %cmp17168, i1 true, i1 %tobool.not160
  br i1 %or.cond169, label %if.end20.thread.if.then22_crit_edge, label %if.end20.thread.if.end49_crit_edge

if.end20.thread.if.end49_crit_edge:               ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end20.thread.if.then22_crit_edge:              ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then22:                                        ; preds = %if.end20.thread.if.then22_crit_edge, %if.end20.if.then22_crit_edge
  %43 = phi i32 [ %42, %if.end20.thread.if.then22_crit_edge ], [ %39, %if.end20.if.then22_crit_edge ]
  %sub15163172 = phi i32 [ %sub15159, %if.end20.thread.if.then22_crit_edge ], [ %sub15, %if.end20.if.then22_crit_edge ]
  %tobool.not164170 = phi i1 [ %tobool.not160, %if.end20.thread.if.then22_crit_edge ], [ %tobool.not, %if.end20.if.then22_crit_edge ]
  %call23 = tail call fastcc i32 @dwc3_prepare_last_sg(ptr noundef %dep, ptr noundef %req, i32 noundef %43, i32 noundef %i.1139)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.for.end59_crit_edge, label %if.end43.thread

if.then22.for.end59_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end59

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %spec.select.i)
  %cmp27 = icmp eq i8 %spec.select.i, 1
  br i1 %cmp27, label %if.else.if.then35_crit_edge, label %lor.lhs.false28

if.else.if.then35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

lor.lhs.false28:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %spec.select.i)
  %cmp30 = icmp ult i8 %spec.select.i, 3
  %or.cond111 = select i1 %retval.0.i, i1 %cmp30, i1 false
  br i1 %or.cond111, label %land.lhs.true31, label %lor.lhs.false28.if.end49_crit_edge

lor.lhs.false28.if.end49_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

land.lhs.true31:                                  ; preds = %lor.lhs.false28
  %call32 = tail call ptr @sg_next(ptr noundef %s.1136) #12
  %dma_length33 = getelementptr inbounds %struct.scatterlist, ptr %call32, i32 0, i32 4
  %44 = ptrtoint ptr %dma_length33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_length33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %sub15)
  %cmp34.not = icmp ult i32 %45, %sub15
  br i1 %cmp34.not, label %land.lhs.true31.if.end49_crit_edge, label %land.lhs.true31.if.then35_crit_edge

land.lhs.true31.if.then35_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

land.lhs.true31.if.end49_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then35:                                        ; preds = %land.lhs.true31.if.then35_crit_edge, %if.else.if.then35_crit_edge
  tail call fastcc void @dwc3_prepare_one_trb(ptr noundef %dep, ptr noundef %req, i32 noundef %39, i32 noundef 1, i32 noundef %i.1139, i1 noundef zeroext false, i1 noundef zeroext true)
  %call41.c = tail call ptr @sg_next(ptr noundef %s.1136) #12
  %46 = ptrtoint ptr %start_sg to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call41.c, ptr %start_sg, align 4
  %47 = ptrtoint ptr %num_queued_sgs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_queued_sgs, align 4
  %inc45.c = add i32 %48, 1
  store i32 %inc45.c, ptr %num_queued_sgs, align 4
  %49 = ptrtoint ptr %num_pending_sgs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_pending_sgs, align 4
  %dec.c = add i32 %50, -1
  br label %for.end59.sink.split

if.end43.thread:                                  ; preds = %if.then22
  %51 = ptrtoint ptr %num_queued_sgs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_queued_sgs, align 4
  %inc45120 = add i32 %52, 1
  store i32 %inc45120, ptr %num_queued_sgs, align 4
  %53 = ptrtoint ptr %num_pending_sgs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_pending_sgs, align 4
  %dec122 = add i32 %54, -1
  store i32 %dec122, ptr %num_pending_sgs, align 4
  br i1 %tobool.not164170, label %if.end43.thread.for.end59.sink.split_crit_edge, label %if.end43.thread.for.inc56_crit_edge

if.end43.thread.for.inc56_crit_edge:              ; preds = %if.end43.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc56

if.end43.thread.for.end59.sink.split_crit_edge:   ; preds = %if.end43.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end59.sink.split

if.end49:                                         ; preds = %land.lhs.true31.if.end49_crit_edge, %lor.lhs.false28.if.end49_crit_edge, %if.end20.thread.if.end49_crit_edge
  %55 = phi i32 [ %39, %land.lhs.true31.if.end49_crit_edge ], [ %39, %lor.lhs.false28.if.end49_crit_edge ], [ %42, %if.end20.thread.if.end49_crit_edge ]
  %sub15155 = phi i32 [ %sub15, %land.lhs.true31.if.end49_crit_edge ], [ %sub15, %lor.lhs.false28.if.end49_crit_edge ], [ %sub15159, %if.end20.thread.if.end49_crit_edge ]
  tail call fastcc void @dwc3_prepare_one_trb(ptr noundef %dep, ptr noundef %req, i32 noundef %55, i32 noundef 1, i32 noundef %i.1139, i1 noundef zeroext false, i1 noundef zeroext false)
  %call41 = tail call ptr @sg_next(ptr noundef %s.1136) #12
  %56 = ptrtoint ptr %start_sg to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call41, ptr %start_sg, align 4
  %57 = ptrtoint ptr %num_queued_sgs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_queued_sgs, align 4
  %inc45 = add i32 %58, 1
  store i32 %inc45, ptr %num_queued_sgs, align 4
  %59 = ptrtoint ptr %num_pending_sgs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_pending_sgs, align 4
  %dec = add i32 %60, -1
  store i32 %dec, ptr %num_pending_sgs, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %if.end49, %if.end43.thread.for.inc56_crit_edge
  %sub15154 = phi i32 [ %sub15155, %if.end49 ], [ %sub15163172, %if.end43.thread.for.inc56_crit_edge ]
  %inc57 = add nuw i32 %i.1139, 1
  %call58 = tail call ptr @sg_next(ptr noundef %s.1136) #12
  %exitcond.not = icmp eq i32 %inc57, %sub
  br i1 %exitcond.not, label %for.inc56.for.end59_crit_edge, label %for.inc56.for.body11_crit_edge

for.inc56.for.body11_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11

for.inc56.for.end59_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end59

for.end59.sink.split:                             ; preds = %if.end43.thread.for.end59.sink.split_crit_edge, %if.then35
  %dec.c.sink = phi i32 [ %dec.c, %if.then35 ], [ 0, %if.end43.thread.for.end59.sink.split_crit_edge ]
  %61 = ptrtoint ptr %num_pending_sgs to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %dec.c.sink, ptr %num_pending_sgs, align 4
  br label %for.end59

for.end59:                                        ; preds = %for.end59.sink.split, %for.inc56.for.end59_crit_edge, %if.then22.for.end59_crit_edge, %dwc3_calc_trbs_left.exit.for.end59_crit_edge, %if.then.i.for.end59_crit_edge, %for.cond9.preheader.for.end59_crit_edge
  %62 = ptrtoint ptr %num_trbs3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_trbs3, align 4
  %sub61 = sub i32 %63, %9
  ret i32 %sub61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_prepare_last_sg(ptr noundef %dep, ptr noundef %req, i32 noundef %entry_length, i32 noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wMaxPacketSize.i, align 1
  %4 = and i16 %3, -249
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #12
  %and.i = zext i16 %5 to i32
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %rem1 = urem i32 %7, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.dwc3_needs_extra_trb.exit.thread68_crit_edge, label %land.lhs.true.i

entry.dwc3_needs_extra_trb.exit.thread68_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_needs_extra_trb.exit.thread68

land.lhs.true.i:                                  ; preds = %entry
  %zero.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %8 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %zero.i, align 4
  %9 = and i32 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1)
  %tobool7.not.i = icmp eq i32 %rem1, 0
  %or.cond.i = select i1 %tobool5.not.i, i1 %tobool7.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true8.i, label %dwc3_needs_extra_trb.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmAttributes.i.i, align 1
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i.not.i = icmp eq i8 %12, 1
  br i1 %cmp.i.not.i, label %land.lhs.true8.i.dwc3_needs_extra_trb.exit.thread68_crit_edge, label %land.lhs.true8.i.dwc3_needs_extra_trb.exit.thread_crit_edge

land.lhs.true8.i.dwc3_needs_extra_trb.exit.thread_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_needs_extra_trb.exit.thread

land.lhs.true8.i.dwc3_needs_extra_trb.exit.thread68_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_needs_extra_trb.exit.thread68

dwc3_needs_extra_trb.exit:                        ; preds = %land.lhs.true.i
  %direction.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 13
  %13 = ptrtoint ptr %direction.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load13.i = load i8, ptr %direction.i, align 4
  %14 = and i8 %bf.load13.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not.i = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1)
  %tobool18.not.i = icmp ne i32 %rem1, 0
  %or.cond25.i = select i1 %tobool16.not.i, i1 %tobool18.not.i, i1 false
  br i1 %or.cond25.i, label %dwc3_needs_extra_trb.exit.dwc3_needs_extra_trb.exit.thread_crit_edge, label %dwc3_needs_extra_trb.exit.dwc3_needs_extra_trb.exit.thread68_crit_edge

dwc3_needs_extra_trb.exit.dwc3_needs_extra_trb.exit.thread68_crit_edge: ; preds = %dwc3_needs_extra_trb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_needs_extra_trb.exit.thread68

dwc3_needs_extra_trb.exit.dwc3_needs_extra_trb.exit.thread_crit_edge: ; preds = %dwc3_needs_extra_trb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_needs_extra_trb.exit.thread

dwc3_needs_extra_trb.exit.thread:                 ; preds = %dwc3_needs_extra_trb.exit.dwc3_needs_extra_trb.exit.thread_crit_edge, %land.lhs.true8.i.dwc3_needs_extra_trb.exit.thread_crit_edge
  br label %dwc3_needs_extra_trb.exit.thread68

dwc3_needs_extra_trb.exit.thread68:               ; preds = %dwc3_needs_extra_trb.exit.thread, %dwc3_needs_extra_trb.exit.dwc3_needs_extra_trb.exit.thread68_crit_edge, %land.lhs.true8.i.dwc3_needs_extra_trb.exit.thread68_crit_edge, %entry.dwc3_needs_extra_trb.exit.thread68_crit_edge
  %retval.0.i66 = phi i8 [ -128, %dwc3_needs_extra_trb.exit.thread ], [ 0, %dwc3_needs_extra_trb.exit.dwc3_needs_extra_trb.exit.thread68_crit_edge ], [ 0, %entry.dwc3_needs_extra_trb.exit.thread68_crit_edge ], [ 0, %land.lhs.true8.i.dwc3_needs_extra_trb.exit.thread68_crit_edge ]
  %15 = phi i32 [ 2, %dwc3_needs_extra_trb.exit.thread ], [ 1, %dwc3_needs_extra_trb.exit.dwc3_needs_extra_trb.exit.thread68_crit_edge ], [ 1, %entry.dwc3_needs_extra_trb.exit.thread68_crit_edge ], [ 1, %land.lhs.true8.i.dwc3_needs_extra_trb.exit.thread68_crit_edge ]
  %trb_enqueue.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %16 = ptrtoint ptr %trb_enqueue.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %trb_enqueue.i, align 4
  %trb_dequeue.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 11
  %18 = ptrtoint ptr %trb_dequeue.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %trb_dequeue.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %17)
  %cmp.i = icmp eq i8 %19, %17
  br i1 %cmp.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %dwc3_needs_extra_trb.exit.thread68
  call void @__sanitizer_cov_trace_pc() #14
  %started_list.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 3
  %20 = ptrtoint ptr %started_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %started_list.i, align 4
  %cmp.i.not.i63 = icmp eq ptr %21, %started_list.i
  %..i = select i1 %cmp.i.not.i63, i32 255, i32 0
  br label %dwc3_calc_trbs_left.exit

if.end4.i:                                        ; preds = %dwc3_needs_extra_trb.exit.thread68
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i8 %19, %17
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %17)
  %cmp16.i = icmp ult i8 %19, %17
  %dec.i = sext i1 %cmp16.i to i8
  %spec.select.i = add i8 %sub.i, %dec.i
  %conv20.i = zext i8 %spec.select.i to i32
  br label %dwc3_calc_trbs_left.exit

dwc3_calc_trbs_left.exit:                         ; preds = %if.end4.i, %if.then.i
  %retval.0.i64 = phi i32 [ %conv20.i, %if.end4.i ], [ %..i, %if.then.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i64, i32 %15)
  %cmp = icmp ult i32 %retval.0.i64, %15
  br i1 %cmp, label %dwc3_calc_trbs_left.exit.cleanup_crit_edge, label %if.end5

dwc3_calc_trbs_left.exit.cleanup_crit_edge:       ; preds = %dwc3_calc_trbs_left.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %dwc3_calc_trbs_left.exit
  %needs_extra_trb = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 13
  %22 = ptrtoint ptr %needs_extra_trb to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %needs_extra_trb, align 4
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %retval.0.i66
  store i8 %bf.set, ptr %needs_extra_trb, align 4
  %23 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp ne i8 %23, 0
  %tobool.not.i.not = xor i1 %tobool.not.i, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool.not.i.not
  br i1 %brmerge, label %if.then12, label %if.end5.if.end17_crit_edge

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr15 = lshr exact i8 %retval.0.i66, 7
  %bf.cast16 = zext i8 %bf.lshr15 to i32
  tail call fastcc void @dwc3_prepare_one_trb(ptr noundef %dep, ptr noundef %req, i32 noundef %entry_length, i32 noundef %bf.cast16, i32 noundef %node, i1 noundef zeroext false, i1 noundef zeroext false)
  %24 = ptrtoint ptr %needs_extra_trb to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load19.pr = load i8, ptr %needs_extra_trb, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end5.if.end17_crit_edge
  %bf.load19 = phi i8 [ %bf.load19.pr, %if.then12 ], [ %bf.set, %if.end5.if.end17_crit_edge ]
  %25 = and i8 %bf.load19, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool23.not = icmp eq i8 %25, 0
  br i1 %tobool23.not, label %land.lhs.true, label %lor.lhs.false27

land.lhs.true:                                    ; preds = %if.end17
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool26.not = icmp ne i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19)
  %tobool32.not = icmp sgt i8 %bf.load19, -1
  %or.cond = select i1 %tobool26.not, i1 %tobool32.not, i1 false
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then33_crit_edge

land.lhs.true.if.then33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false27:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19)
  %tobool32.not.old = icmp sgt i8 %bf.load19, -1
  br i1 %tobool32.not.old, label %lor.lhs.false27.cleanup_crit_edge, label %lor.lhs.false27.if.then33_crit_edge

lor.lhs.false27.if.then33_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

lor.lhs.false27.cleanup_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then33:                                        ; preds = %lor.lhs.false27.if.then33_crit_edge, %land.lhs.true.if.then33_crit_edge
  %sub = sub nsw i32 %and.i, %rem1
  %spec.select62 = select i1 %tobool23.not, i32 %sub, i32 0
  tail call fastcc void @dwc3_prepare_one_trb(ptr noundef %dep, ptr noundef %req, i32 noundef %spec.select62, i32 noundef 0, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %lor.lhs.false27.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %dwc3_calc_trbs_left.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dwc3_calc_trbs_left.exit.cleanup_crit_edge ], [ %15, %if.then33 ], [ %15, %lor.lhs.false27.cleanup_crit_edge ], [ %15, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_prepare_one_trb(ptr noundef %dep, ptr noundef %req, i32 noundef %trb_length, i32 noundef %chain, i32 noundef %node, i1 noundef zeroext %use_bounce_buffer, i1 noundef zeroext %must_interrupt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_id2 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %stream_id2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %stream_id2, align 4
  br i1 %use_bounce_buffer, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dwc = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %1 = ptrtoint ptr %dwc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dwc, align 4
  %bounce_addr = getelementptr inbounds %struct.dwc3, ptr %2, i32 0, i32 6
  br label %if.end22

if.else:                                          ; preds = %entry
  %num_sgs = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 4
  %3 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.else19, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %start_sg = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %start_sg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %start_sg, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 3
  br label %if.end22

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %dma21 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.then18, %if.then
  %dma.0.in = phi ptr [ %bounce_addr, %if.then ], [ %dma_address, %if.then18 ], [ %dma21, %if.else19 ]
  %7 = ptrtoint ptr %dma.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %dma.0 = load i32, ptr %dma.0.in, align 4
  %trb_pool = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 5
  %8 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trb_pool, align 4
  %trb_enqueue = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %10 = ptrtoint ptr %trb_enqueue to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %trb_enqueue, align 4
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr %struct.dwc3_trb, ptr %9, i32 %idxprom
  %trb23 = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 10
  %12 = ptrtoint ptr %trb23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trb23, align 4
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %if.then25, label %if.end22.if.end27_crit_edge

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  %dep1.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %dep1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dep1.i, align 4
  %status.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 8
  %16 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %status.i, align 4
  %list.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 1
  %started_list.i = getelementptr inbounds %struct.dwc3_ep, ptr %15, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then25.__list_del_entry.exit.i.i_crit_edge

if.then25.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then25.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %15, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %24, ptr noundef %started_list.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.dwc3_gadget_move_started_request.exit_crit_edge

__list_del_entry.exit.i.i.dwc3_gadget_move_started_request.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_move_started_request.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list.i, ptr %prev.i2.i.i, align 4
  %26 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %started_list.i, ptr %list.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list.i, ptr %24, align 4
  br label %dwc3_gadget_move_started_request.exit

dwc3_gadget_move_started_request.exit:            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.dwc3_gadget_move_started_request.exit_crit_edge
  %29 = ptrtoint ptr %trb23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx, ptr %trb23, align 4
  %30 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trb_pool, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %trb_pool_dma.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 6
  %32 = ptrtoint ptr %trb_pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %trb_pool_dma.i, align 4
  %add.i = add i32 %sub.ptr.sub.i, %33
  %trb_dma = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 11
  %34 = ptrtoint ptr %trb_dma to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i, ptr %trb_dma, align 4
  br label %if.end27

if.end27:                                         ; preds = %dwc3_gadget_move_started_request.exit, %if.end22.if.end27_crit_edge
  %bf.lshr10 = lshr i32 %bf.load, 14
  %bf.clear11 = and i32 %bf.lshr10, 1
  %num_trbs = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 12
  %35 = ptrtoint ptr %num_trbs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_trbs, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %num_trbs, align 4
  %dwc1.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %37 = ptrtoint ptr %dwc1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dwc1.i, align 4
  %gadget2.i = getelementptr inbounds %struct.dwc3, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %gadget2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gadget2.i, align 4
  %speed3.i = getelementptr inbounds %struct.usb_gadget, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %speed3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %speed3.i, align 8
  %and.i = and i32 %trb_length, 16777215
  %size.i = getelementptr %struct.dwc3_trb, ptr %9, i32 %idxprom, i32 2
  %43 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %and.i, ptr %size.i, align 1
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %dma.0, ptr %arrayidx, align 1
  %bph.i = getelementptr %struct.dwc3_trb, ptr %9, i32 %idxprom, i32 1
  %45 = ptrtoint ptr %bph.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 0, ptr %bph.i, align 1
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %46 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc.i, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bmAttributes.i.i, align 1
  %50 = and i8 %49, 3
  %and.i.i = zext i8 %50 to i32
  %51 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and.i.i, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
    i32 2, label %if.end27.sw.bb25.i_crit_edge
    i32 3, label %if.end27.sw.bb25.i_crit_edge46
  ]

if.end27.sw.bb25.i_crit_edge46:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

if.end27.sw.bb25.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25.i

sw.bb.i:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl.i = getelementptr %struct.dwc3_trb, ptr %9, i32 %idxprom, i32 3
  %52 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 32, ptr %ctrl.i, align 1
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %node)
  %tobool.not.i = icmp eq i32 %node, 0
  %ctrl7.i = getelementptr %struct.dwc3_trb, ptr %9, i32 %idxprom, i32 3
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb6.i
  %53 = ptrtoint ptr %ctrl7.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 96, ptr %ctrl7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp.i = icmp eq i32 %42, 3
  br i1 %cmp.i, label %if.then8.i, label %if.then.i.if.end22.i_crit_edge

if.then.i.if.end22.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc.i, align 4
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %58 = and i16 %57, -249
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #12
  %and.i172.i = zext i16 %59 to i32
  %mul.i = shl nuw nsw i32 %and.i172.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %trb_length)
  %cmp12.not.i = icmp ult i32 %mul.i, %trb_length
  %spec.select.i = select i1 %cmp12.not.i, i32 2, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i172.i, i32 %trb_length)
  %cmp14.not.i = icmp uge i32 %and.i172.i, %trb_length
  %dec16.i = sext i1 %cmp14.not.i to i32
  %mult.1.i = add nsw i32 %spec.select.i, %dec16.i
  %and18.i = shl nuw nsw i32 %mult.1.i, 24
  %shl.i = and i32 %and18.i, 50331648
  %or.i = or i32 %shl.i, %and.i
  %60 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %or.i, ptr %size.i, align 1
  br label %if.end22.i

if.else.i:                                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %ctrl7.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 112, ptr %ctrl7.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.then8.i, %if.then.i.if.end22.i_crit_edge
  %62 = ptrtoint ptr %ctrl7.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %ctrl7.i, align 1
  %or24.i = or i32 %63, 1024
  store i32 %or24.i, ptr %ctrl7.i, align 1
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end27.sw.bb25.i_crit_edge, %if.end27.sw.bb25.i_crit_edge46
  %ctrl26.i = getelementptr %struct.dwc3_trb, ptr %9, i32 %idxprom, i32 3
  %64 = ptrtoint ptr %ctrl26.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 16, ptr %ctrl26.i, align 1
  br label %sw.epilog.i

entry.unreachabledefault.i:                       ; preds = %if.end27
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb25.i, %if.end22.i, %sw.bb.i
  %65 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %desc.i, align 4
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool53.not.i = icmp slt i8 %68, 0
  br i1 %tobool53.not.i, label %sw.epilog.i.if.end65.i_crit_edge, label %if.then54.i

sw.epilog.i.if.end65.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

if.then54.i:                                      ; preds = %sw.epilog.i
  %stream_capable.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %69 = ptrtoint ptr %stream_capable.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load.i = load i8, ptr %stream_capable.i, align 4
  %70 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool55.not.i = icmp eq i8 %70, 0
  br i1 %tobool55.not.i, label %if.then56.i, label %if.then54.i.if.end59.i_crit_edge

if.then54.i.if.end59.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then56.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl57.i = getelementptr %struct.dwc3_trb, ptr %9, i32 %idxprom, i32 3
  %71 = ptrtoint ptr %ctrl57.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %ctrl57.i, align 1
  %or58.i = or i32 %72, 8
  store i32 %or58.i, ptr %ctrl57.i, align 1
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then56.i, %if.then54.i.if.end59.i_crit_edge
  %73 = and i32 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool60.not.i = icmp eq i32 %73, 0
  br i1 %tobool60.not.i, label %if.end59.i.if.end65.i_crit_edge, label %if.then61.i

if.end59.i.if.end65.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

if.then61.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl62.i = getelementptr %struct.dwc3_trb, ptr %9, i32 %idxprom, i32 3
  %74 = ptrtoint ptr %ctrl62.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %ctrl62.i, align 1
  %or63.i = or i32 %75, 1024
  store i32 %or63.i, ptr %ctrl62.i, align 1
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then61.i, %if.end59.i.if.end65.i_crit_edge, %sw.epilog.i.if.end65.i_crit_edge
  %stream_capable66.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %76 = ptrtoint ptr %stream_capable66.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load67.i = load i8, ptr %stream_capable66.i, align 4
  %77 = and i8 %bf.load67.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool71.not.i = icmp eq i8 %77, 0
  br i1 %tobool71.not.i, label %if.end65.i.if.end77.i_crit_edge, label %land.lhs.true.i

if.end65.i.if.end77.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.i

land.lhs.true.i:                                  ; preds = %if.end65.i
  %hwparams9.i = getelementptr inbounds %struct.dwc3, ptr %38, i32 0, i32 66, i32 9
  %78 = ptrtoint ptr %hwparams9.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hwparams9.i, align 4
  %and72.i = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %land.lhs.true.i.if.end77.i_crit_edge, label %if.then74.i

land.lhs.true.i.if.end77.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.i

if.then74.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl75.i = getelementptr %struct.dwc3_trb, ptr %9, i32 %idxprom, i32 3
  %80 = ptrtoint ptr %ctrl75.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %ctrl75.i, align 1
  %or76.i = or i32 %81, 8
  store i32 %or76.i, ptr %ctrl75.i, align 1
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then74.i, %land.lhs.true.i.if.end77.i_crit_edge, %if.end65.i.if.end77.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chain)
  %tobool80.not.i = icmp eq i32 %chain, 0
  %82 = or i32 %bf.clear11, %chain
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %83 = icmp eq i32 %82, 0
  %brmerge.i = or i1 %83, %must_interrupt
  br i1 %brmerge.i, label %if.then82.i, label %if.end77.i.if.end85.i_crit_edge

if.end77.i.if.end85.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85.i

if.then82.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl83.i = getelementptr %struct.dwc3_trb, ptr %9, i32 %idxprom, i32 3
  %84 = ptrtoint ptr %ctrl83.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %ctrl83.i, align 1
  %or84.i = or i32 %85, 2048
  store i32 %or84.i, ptr %ctrl83.i, align 1
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then82.i, %if.end77.i.if.end85.i_crit_edge
  br i1 %tobool80.not.i, label %if.else90.i, label %if.end85.i.if.end108.sink.split.i_crit_edge

if.end85.i.if.end108.sink.split.i_crit_edge:      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108.sink.split.i

if.else90.i:                                      ; preds = %if.end85.i
  %86 = ptrtoint ptr %stream_capable66.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load92.i = load i8, ptr %stream_capable66.i, align 4
  %87 = and i8 %bf.load92.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool96.not.i = icmp eq i8 %87, 0
  %88 = and i32 %bf.load, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool98.not.i = icmp eq i32 %88, 0
  %or.cond171.i = or i1 %tobool98.not.i, %tobool96.not.i
  br i1 %or.cond171.i, label %if.else90.i.if.end108.i_crit_edge, label %land.lhs.true99.i

if.else90.i.if.end108.i_crit_edge:                ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108.i

land.lhs.true99.i:                                ; preds = %if.else90.i
  %hwparams9101.i = getelementptr inbounds %struct.dwc3, ptr %38, i32 0, i32 66, i32 9
  %89 = ptrtoint ptr %hwparams9101.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hwparams9101.i, align 4
  %and102.i = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp eq i32 %and102.i, 0
  br i1 %tobool103.not.i, label %land.lhs.true99.i.if.end108.sink.split.i_crit_edge, label %land.lhs.true99.i.if.end108.i_crit_edge

land.lhs.true99.i.if.end108.i_crit_edge:          ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108.i

land.lhs.true99.i.if.end108.sink.split.i_crit_edge: ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108.sink.split.i

if.end108.sink.split.i:                           ; preds = %land.lhs.true99.i.if.end108.sink.split.i_crit_edge, %if.end85.i.if.end108.sink.split.i_crit_edge
  %.sink176.i = phi i32 [ 4, %if.end85.i.if.end108.sink.split.i_crit_edge ], [ 2, %land.lhs.true99.i.if.end108.sink.split.i_crit_edge ]
  %ctrl88.i = getelementptr %struct.dwc3_trb, ptr %9, i32 %idxprom, i32 3
  %91 = ptrtoint ptr %ctrl88.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %ctrl88.i, align 1
  %or106.i = or i32 %92, %.sink176.i
  store i32 %or106.i, ptr %ctrl88.i, align 1
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.end108.sink.split.i, %land.lhs.true99.i.if.end108.i_crit_edge, %if.else90.i.if.end108.i_crit_edge
  %93 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %desc.i, align 4
  %bmAttributes.i175.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %bmAttributes.i175.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %bmAttributes.i175.i, align 1
  %97 = and i8 %96, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %97)
  %cmp.i.not.i = icmp eq i8 %97, 2
  br i1 %cmp.i.not.i, label %land.lhs.true113.i, label %if.end108.i.__dwc3_prepare_one_trb.exit_crit_edge

if.end108.i.__dwc3_prepare_one_trb.exit_crit_edge: ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__dwc3_prepare_one_trb.exit

land.lhs.true113.i:                               ; preds = %if.end108.i
  %98 = ptrtoint ptr %stream_capable66.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load115.i = load i8, ptr %stream_capable66.i, align 4
  %99 = and i8 %bf.load115.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool119.not.i = icmp eq i8 %99, 0
  br i1 %tobool119.not.i, label %land.lhs.true113.i.__dwc3_prepare_one_trb.exit_crit_edge, label %if.then120.i

land.lhs.true113.i.__dwc3_prepare_one_trb.exit_crit_edge: ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__dwc3_prepare_one_trb.exit

if.then120.i:                                     ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #14
  %100 = lshr i32 %bf.load, 2
  %and121.i = and i32 %100, 1073725440
  %ctrl123.i = getelementptr %struct.dwc3_trb, ptr %9, i32 %idxprom, i32 3
  %101 = ptrtoint ptr %ctrl123.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %ctrl123.i, align 1
  %or124.i = or i32 %102, %and121.i
  store i32 %or124.i, ptr %ctrl123.i, align 1
  br label %__dwc3_prepare_one_trb.exit

__dwc3_prepare_one_trb.exit:                      ; preds = %if.then120.i, %land.lhs.true113.i.__dwc3_prepare_one_trb.exit_crit_edge, %if.end108.i.__dwc3_prepare_one_trb.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  tail call void @arm_heavy_mb() #12
  %ctrl129.i = getelementptr %struct.dwc3_trb, ptr %9, i32 %idxprom, i32 3
  %103 = ptrtoint ptr %ctrl129.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %ctrl129.i, align 1
  %or130.i = or i32 %104, 1
  store i32 %or130.i, ptr %ctrl129.i, align 1
  %105 = ptrtoint ptr %trb_enqueue to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %trb_enqueue, align 1
  %inc.i.i.i = add i8 %106, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %inc.i.i.i)
  %cmp.i.i.i = icmp eq i8 %inc.i.i.i, -1
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i8 0, i8 %inc.i.i.i
  %107 = ptrtoint ptr %trb_enqueue to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %spec.select.i.i.i, ptr %trb_enqueue, align 1
  tail call fastcc void @trace_dwc3_prepare_trb(ptr noundef %dep, ptr noundef %arrayidx) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_prepare_trb(ptr noundef %dep, ptr noundef %trb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 1), ptr blockaddress(@trace_dwc3_prepare_trb, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !246
  %call42 = tail call i32 @__traceiter_dwc3_prepare_trb(ptr noundef null, ptr noundef %dep, ptr noundef %trb) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_prepare_trb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_prepare_trb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 283, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_get_frame(ptr nocapture noundef readonly %g) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %regs.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 1548
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !226
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i.i = getelementptr i8, ptr %3, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 50956, i32 noundef %5) #12
  %and.i = lshr i32 %5, 3
  %shr.i = and i32 %and.i, 16383
  ret i32 %shr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_wakeup(ptr nocapture noundef readonly %g) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call6 = tail call fastcc i32 @__dwc3_gadget_wakeup(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_set_selfpowered(ptr nocapture noundef %g, i32 noundef %is_selfpowered) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_selfpowered)
  %tobool.not = icmp eq i32 %is_selfpowered, 0
  %is_selfpowered7 = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 17
  %2 = ptrtoint ptr %is_selfpowered7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %is_selfpowered7, align 4
  %bf.shl = select i1 %tobool.not, i32 0, i32 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_vbus_draw(ptr nocapture noundef readonly %g, i32 noundef %mA) #0 align 64 {
entry:
  %val = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %usb2_phy = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb2_phy, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %entry
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %3, i32 noundef %mA) #12
  %set_power.i = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_power.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %5(ptr noundef nonnull %3, i32 noundef %mA) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_psy = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 40
  %6 = ptrtoint ptr %usb_psy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_psy, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mul = mul i32 %mA, 1000
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %val, align 4
  %call7 = call i32 @power_supply_set_property(ptr noundef nonnull %7, i32 noundef 38, ptr noundef nonnull %val) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then2.i, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ -95, %if.end.cleanup_crit_edge ], [ %call.i, %if.then2.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_pullup(ptr nocapture noundef readonly %g, i32 noundef %is_on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool = icmp ne i32 %is_on, 0
  %lnot.ext = zext i1 %tobool to i32
  %softconnect = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %softconnect to i32
  call void @__asan_loadN_noabort(i32 %2, i32 6)
  %bf.load = load i48, ptr %softconnect, align 4
  %bf.shl = select i1 %tobool, i48 70368744177664, i48 0
  %bf.clear = and i48 %bf.load, -70368744177665
  %bf.set = or i48 %bf.clear, %bf.shl
  store i48 %bf.set, ptr %softconnect, align 4
  br i1 %tobool, label %entry.if.end18_crit_edge, label %land.lhs.true

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %ep0state = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 58
  %3 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %land.lhs.true.if.then11_crit_edge, label %if.then

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.then:                                          ; preds = %land.lhs.true
  %ep0_in_setup = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %ep0_in_setup to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ep0_in_setup, align 4
  %call5 = tail call i32 @wait_for_completion_timeout(ptr noundef %ep0_in_setup, i32 noundef 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %do.end, label %if.then.if.then11_crit_edge

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev8 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.38) #15
  br label %if.then11

if.then11:                                        ; preds = %do.end, %if.then.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge
  %dev12 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev12, align 4
  %call13 = tail call i32 @pm_runtime_barrier(ptr noundef %9) #12
  %10 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev12, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 18
  %12 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp eq i32 %13, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.then11.if.end18_crit_edge

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

pm_runtime_suspended.exit:                        ; preds = %if.then11
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 15
  %14 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.end18_crit_edge

pm_runtime_suspended.exit.if.end18_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %pm_runtime_suspended.exit.if.end18_crit_edge, %if.then11.if.end18_crit_edge, %entry.if.end18_crit_edge
  %dev19 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev19, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %17 = icmp slt i32 %call.i, 1
  br i1 %17, label %if.end18.cleanup.sink.split_crit_edge, label %if.end26

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end18
  %irq_gadget = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 43
  %18 = ptrtoint ptr %irq_gadget to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_gadget, align 4
  tail call void @disable_irq(i32 noundef %19) #12
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br i1 %tobool, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end26
  %20 = ptrtoint ptr %softconnect to i32
  call void @__asan_loadN_noabort(i32 %20, i32 6)
  %bf.load38 = load i48, ptr %softconnect, align 4
  %bf.clear39 = and i48 %bf.load38, 140737488355327
  store i48 %bf.clear39, ptr %softconnect, align 4
  %num_eps.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 65
  %21 = ptrtoint ptr %num_eps.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_eps.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp8.i = icmp ugt i8 %22, 2
  br i1 %cmp8.i, label %if.then37.for.body.i_crit_edge, label %if.then37.dwc3_stop_active_transfers.exit_crit_edge

if.then37.dwc3_stop_active_transfers.exit_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_stop_active_transfers.exit

if.then37.for.body.i_crit_edge:                   ; preds = %if.then37
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then37.for.body.i_crit_edge
  %epnum.09.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 2, %if.then37.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dwc3, ptr %1, i32 0, i32 17, i32 %epnum.09.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i96 = icmp eq ptr %24, null
  br i1 %tobool.not.i96, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dwc3_remove_requests(ptr noundef nonnull %24) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %epnum.09.i, 1
  %25 = ptrtoint ptr %num_eps.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_eps.i, align 1
  %conv.i = zext i8 %26 to i32
  %cmp.i97 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i97, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.dwc3_stop_active_transfers.exit_crit_edge

cleanup.i.dwc3_stop_active_transfers.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_stop_active_transfers.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

dwc3_stop_active_transfers.exit:                  ; preds = %cleanup.i.dwc3_stop_active_transfers.exit_crit_edge, %if.then37.dwc3_stop_active_transfers.exit_crit_edge
  %regs.i.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 30
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i.i.i = getelementptr i8, ptr %28, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 0) #12, !srcloc !229
  %add.ptr2.i.i.i = getelementptr i8, ptr %28, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i.i, i32 noundef 50952, i32 noundef 0) #12
  %eps.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 17
  %29 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %eps.i, align 4
  tail call fastcc void @__dwc3_gadget_ep_disable(ptr noundef %30) #12
  %arrayidx2.i = getelementptr %struct.dwc3, ptr %1, i32 0, i32 17, i32 1
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx2.i, align 4
  tail call fastcc void @__dwc3_gadget_ep_disable(ptr noundef %32) #12
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %34, i32 780
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !226
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %34, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50188, i32 noundef %36) #12
  %and = and i32 %36, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp42.not = icmp eq i32 %and, 0
  br i1 %cmp42.not, label %dwc3_stop_active_transfers.exit.if.end51_crit_edge, label %if.then44

dwc3_stop_active_transfers.exit.if.end51_crit_edge: ; preds = %dwc3_stop_active_transfers.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then44:                                        ; preds = %dwc3_stop_active_transfers.exit
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %39 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %add.ptr1.i99 = getelementptr i8, ptr %38, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i99, i32 %39) #12, !srcloc !229
  %add.ptr2.i = getelementptr i8, ptr %38, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 50188, i32 noundef %and) #12
  %ev_buf = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 16
  %40 = ptrtoint ptr %ev_buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ev_buf, align 4
  %lpos = getelementptr inbounds %struct.dwc3_event_buffer, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %lpos to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lpos, align 4
  %add = add i32 %43, %and
  %length = getelementptr inbounds %struct.dwc3_event_buffer, ptr %41, i32 0, i32 2
  %44 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length, align 4
  %rem = urem i32 %add, %45
  store i32 %rem, ptr %lpos, align 4
  br label %if.end51

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %call50 = tail call fastcc i32 @__dwc3_gadget_start(ptr noundef %1)
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then44, %dwc3_stop_active_transfers.exit.if.end51_crit_edge
  %call52 = tail call fastcc i32 @dwc3_gadget_run_stop(ptr noundef %1, i32 noundef %lnot.ext)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #12
  %46 = ptrtoint ptr %irq_gadget to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq_gadget, align 4
  tail call void @enable_irq(i32 noundef %47) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end51, %if.end18.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call52, %if.end51 ], [ 0, %if.end18.cleanup.sink.split_crit_edge ]
  %48 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev19, align 4
  %call.i100 = tail call i32 @__pm_runtime_idle(ptr noundef %49, i32 noundef 5) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %pm_runtime_suspended.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_suspended.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwc3_gadget_config_params(ptr nocapture noundef readonly %g, ptr nocapture noundef writeonly %params) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %besl_baseline = getelementptr inbounds %struct.usb_dcd_config_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %besl_baseline to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %besl_baseline, align 2
  %besl_deep = getelementptr inbounds %struct.usb_dcd_config_params, ptr %params, i32 0, i32 3
  %3 = ptrtoint ptr %besl_deep to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %besl_deep, align 1
  %dis_enblslpm_quirk = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %4 = ptrtoint ptr %dis_enblslpm_quirk to i32
  call void @__asan_loadN_noabort(i32 %4, i32 6)
  %bf.load = load i48, ptr %dis_enblslpm_quirk, align 4
  %5 = and i48 %bf.load, 262144
  %tobool.not = icmp eq i48 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %besl_baseline to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %besl_baseline, align 2
  %7 = ptrtoint ptr %dis_enblslpm_quirk to i32
  call void @__asan_loadN_noabort(i32 %7, i32 6)
  %bf.load2 = load i48, ptr %dis_enblslpm_quirk, align 4
  %8 = and i48 %bf.load2, 549755813888
  %tobool6.not = icmp eq i48 %8, 0
  br i1 %tobool6.not, label %if.then.if.end26_crit_edge, label %if.then7

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %hird_threshold = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 72
  %9 = ptrtoint ptr %hird_threshold to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hird_threshold, align 1
  %11 = tail call i8 @llvm.umax.i8(i8 %10, i8 2)
  %12 = tail call i8 @llvm.umin.i8(i8 %11, i8 15)
  %13 = ptrtoint ptr %besl_deep to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %besl_deep, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then7, %if.then.if.end26_crit_edge, %entry.if.end26_crit_edge
  %14 = ptrtoint ptr %dis_enblslpm_quirk to i32
  call void @__asan_loadN_noabort(i32 %14, i32 6)
  %bf.load27 = load i48, ptr %dis_enblslpm_quirk, align 4
  %15 = and i48 %bf.load27, 131072
  %tobool31.not = icmp eq i48 %15, 0
  %. = select i1 %tobool31.not, i8 10, i8 0
  %16 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %., ptr %params, align 2
  %bf.load35 = load i48, ptr %dis_enblslpm_quirk, align 4
  %17 = and i48 %bf.load35, 65536
  %tobool39.not = icmp eq i48 %17, 0
  %spec.select = select i1 %tobool39.not, i16 -255, i16 0
  %18 = getelementptr inbounds %struct.usb_dcd_config_params, ptr %params, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %spec.select, ptr %18, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_start(ptr nocapture noundef readonly %g, ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %irq_gadget = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %irq_gadget to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_gadget, align 4
  %ev_buf = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %ev_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ev_buf, align 4
  %call1 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @dwc3_interrupt, ptr noundef nonnull @dwc3_thread_interrupt, i32 noundef 128, ptr noundef nonnull @.str.41, ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev2 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.42, i32 noundef %3, i32 noundef %call1) #15
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %gadget_driver = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %driver, ptr %gadget_driver, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %do.end
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_stop(ptr nocapture noundef readonly %g) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %gadget_driver = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %gadget_driver, align 4
  %max_cfg_eps = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 81
  %3 = ptrtoint ptr %max_cfg_eps to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %max_cfg_eps, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  %irq_gadget = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 43
  %4 = ptrtoint ptr %irq_gadget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_gadget, align 4
  %ev_buf = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %ev_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ev_buf, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %7) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_gadget_async_callbacks(ptr nocapture noundef readonly %g, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %async_callbacks = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %async_callbacks to i32
  call void @__asan_loadN_noabort(i32 %2, i32 6)
  %bf.load = load i48, ptr %async_callbacks, align 4
  %bf.shl = select i1 %enable, i48 32, i48 0
  %bf.clear = and i48 %bf.load, -33
  %bf.set = or i48 %bf.clear, %bf.shl
  store i48 %bf.set, ptr %async_callbacks, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_check_config(ptr noundef readonly %g) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %do_fifo_resize = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %do_fifo_resize to i32
  call void @__asan_loadN_noabort(i32 %2, i32 6)
  %bf.load = load i48, ptr %do_fifo_resize, align 4
  %3 = and i48 %bf.load, 68719476736
  %tobool.not = icmp eq i48 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 4
  %4 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn45 = load ptr, ptr %ep_list, align 4
  %cmp.not46 = icmp eq ptr %.pn45, %ep_list
  br i1 %cmp.not46, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn48 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn45, %if.end.for.body_crit_edge ]
  %ep_num.047 = phi i32 [ %ep_num.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %claimed = getelementptr i8, ptr %.pn48, i32 12
  %5 = ptrtoint ptr %claimed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %claimed, align 4, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %address = getelementptr i8, ptr %.pn48, i32 21
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %address, align 1
  %.lobit = lshr i8 %8, 7
  %9 = zext i8 %.lobit to i32
  %spec.select = add i32 %ep_num.047, %9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %ep_num.1 = phi i32 [ %ep_num.047, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %10 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn48, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %ep_num.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %ep_num.1, %for.inc.for.end_crit_edge ]
  %max_cfg_eps = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 81
  %11 = ptrtoint ptr %max_cfg_eps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_cfg_eps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ep_num.0.lcssa, i32 %12)
  %cmp12.not = icmp sgt i32 %ep_num.0.lcssa, %12
  br i1 %cmp12.not, label %if.end15, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %13 = ptrtoint ptr %max_cfg_eps to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ep_num.0.lcssa, ptr %max_cfg_eps, align 4
  %hwparams.i.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 66
  %14 = ptrtoint ptr %hwparams.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwparams.i.i, align 4
  %shr.i.i = lshr i32 %15, 8
  %and.i.i = and i32 %shr.i.i, 255
  %ip.i.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 54
  %16 = ptrtoint ptr %ip.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ip.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 13106
  br i1 %cmp.i.i, label %dwc3_mdwidth.exit.thread.i, label %dwc3_mdwidth.exit.i

dwc3_mdwidth.exit.thread.i:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %hwparams6.i.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 66, i32 6
  %18 = ptrtoint ptr %hwparams6.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hwparams6.i.i, align 4
  %and2.i.i = and i32 %19, 768
  %add.i.i = or i32 %and2.i.i, %and.i.i
  %20 = lshr i32 %add.i.i, 3
  br label %if.else.i

dwc3_mdwidth.exit.i:                              ; preds = %if.end15
  %shr18.i = lshr i32 %and.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %17)
  %cmp.i = icmp eq i32 %17, 21811
  br i1 %cmp.i, label %land.lhs.true.i, label %dwc3_mdwidth.exit.i.if.else.i_crit_edge

dwc3_mdwidth.exit.i.if.else.i_crit_edge:          ; preds = %dwc3_mdwidth.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %dwc3_mdwidth.exit.i
  %revision.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 55
  %21 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429416202, i32 %22)
  %cmp1.i = icmp ult i32 %22, 1429416202
  br i1 %cmp1.i, label %land.lhs.true.i.dwc3_gadget_calc_tx_fifo_size.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i.dwc3_gadget_calc_tx_fifo_size.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_calc_tx_fifo_size.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %dwc3_mdwidth.exit.i.if.else.i_crit_edge, %dwc3_mdwidth.exit.thread.i
  %shr16.i = phi i32 [ %20, %dwc3_mdwidth.exit.thread.i ], [ %shr18.i, %land.lhs.true.i.if.else.i_crit_edge ], [ %shr18.i, %dwc3_mdwidth.exit.i.if.else.i_crit_edge ]
  %add2.i = add nuw nsw i32 %shr16.i, 1024
  br label %dwc3_gadget_calc_tx_fifo_size.exit

dwc3_gadget_calc_tx_fifo_size.exit:               ; preds = %if.else.i, %land.lhs.true.i.dwc3_gadget_calc_tx_fifo_size.exit_crit_edge
  %shr17.i = phi i32 [ %shr16.i, %if.else.i ], [ %shr18.i, %land.lhs.true.i.dwc3_gadget_calc_tx_fifo_size.exit_crit_edge ]
  %.pn.i = phi i32 [ %add2.i, %if.else.i ], [ 1024, %land.lhs.true.i.dwc3_gadget_calc_tx_fifo_size.exit_crit_edge ]
  %div.pn19.i = udiv i32 %.pn.i, %shr17.i
  %fifo_size.0.in.i = mul i32 %div.pn19.i, %ep_num.0.lcssa
  %fifo_size.0.i = add i32 %ep_num.0.lcssa, 1
  %add = add i32 %fifo_size.0.i, %fifo_size.0.in.i
  %hwparams7 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 66, i32 7
  %23 = ptrtoint ptr %hwparams7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwparams7, align 4
  %and20 = and i32 %24, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %and20)
  %cmp21 = icmp sgt i32 %add, %and20
  %. = select i1 %cmp21, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %dwc3_gadget_calc_tx_fifo_size.exit, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %., %dwc3_gadget_calc_tx_fifo_size.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_set_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_charger_current(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_barrier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_remove_requests(ptr noundef %dep) unnamed_addr #0 align 64 {
entry:
  %params.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i) #12
  %flags.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %2 = and i32 %1, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %3 = icmp eq i32 %2, 8
  br i1 %3, label %if.end.i, label %entry.dwc3_stop_active_transfer.exit_crit_edge

entry.dwc3_stop_active_transfer.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_stop_active_transfer.exit

if.end.i:                                         ; preds = %entry
  %resource_index.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 14
  %4 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %resource_index.i, align 4
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %or9.i = or i32 %shl.i, 2056
  %6 = call ptr @memset(ptr %params.i, i32 0, i32 12)
  %call.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef %or9.i, ptr noundef nonnull %params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end42.i_crit_edge, label %land.rhs.i

if.end.i.if.end42.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b1.i = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end42.i_crit_edge, label %if.then20.i, !prof !231

land.rhs.i.if.end42.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

if.then20.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #12
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then20.i, %land.rhs.i.if.end42.i_crit_edge, %if.end.i.if.end42.i_crit_edge
  %7 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %resource_index.i, align 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and54.i = and i32 %9, -9
  store i32 %and54.i, ptr %flags.i, align 4
  br label %dwc3_stop_active_transfer.exit

dwc3_stop_active_transfer.exit:                   ; preds = %if.end42.i, %entry.dwc3_stop_active_transfer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #12
  %started_list = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 3
  %10 = ptrtoint ptr %started_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %started_list, align 4
  %cmp.i.not12 = icmp eq ptr %11, %started_list
  br i1 %cmp.i.not12, label %dwc3_stop_active_transfer.exit.while.cond3.preheader_crit_edge, label %dwc3_stop_active_transfer.exit.while.body_crit_edge

dwc3_stop_active_transfer.exit.while.body_crit_edge: ; preds = %dwc3_stop_active_transfer.exit
  br label %while.body

dwc3_stop_active_transfer.exit.while.cond3.preheader_crit_edge: ; preds = %dwc3_stop_active_transfer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %while.body.while.cond3.preheader_crit_edge, %dwc3_stop_active_transfer.exit.while.cond3.preheader_crit_edge
  %pending_list = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 2
  %12 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i2.not13 = icmp eq ptr %13, %pending_list
  br i1 %cmp.i2.not13, label %while.cond3.preheader.while.cond11.preheader_crit_edge, label %while.cond3.preheader.while.body7_crit_edge

while.cond3.preheader.while.body7_crit_edge:      ; preds = %while.cond3.preheader
  br label %while.body7

while.cond3.preheader.while.cond11.preheader_crit_edge: ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.preheader

while.body:                                       ; preds = %while.body.while.body_crit_edge, %dwc3_stop_active_transfer.exit.while.body_crit_edge
  %14 = ptrtoint ptr %started_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %started_list, align 4
  %cmp.not.i = icmp eq ptr %15, %started_list
  %add.ptr.i = getelementptr i8, ptr %15, i32 -56
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  call void @dwc3_gadget_giveback(ptr noundef %dep, ptr noundef %spec.select.i, i32 noundef -108)
  %16 = ptrtoint ptr %started_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %started_list, align 4
  %cmp.i.not = icmp eq ptr %17, %started_list
  br i1 %cmp.i.not, label %while.body.while.cond3.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.cond3.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond3.preheader

while.cond11.preheader:                           ; preds = %while.body7.while.cond11.preheader_crit_edge, %while.cond3.preheader.while.cond11.preheader_crit_edge
  %cancelled_list = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 1
  %18 = ptrtoint ptr %cancelled_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cancelled_list, align 4
  %cmp.i7.not14 = icmp eq ptr %19, %cancelled_list
  br i1 %cmp.i7.not14, label %while.cond11.preheader.while.end18_crit_edge, label %while.cond11.preheader.while.body15_crit_edge

while.cond11.preheader.while.body15_crit_edge:    ; preds = %while.cond11.preheader
  br label %while.body15

while.cond11.preheader.while.end18_crit_edge:     ; preds = %while.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end18

while.body7:                                      ; preds = %while.body7.while.body7_crit_edge, %while.cond3.preheader.while.body7_crit_edge
  %20 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %pending_list, align 4
  %cmp.not.i4 = icmp eq ptr %21, %pending_list
  %add.ptr.i5 = getelementptr i8, ptr %21, i32 -56
  %spec.select.i6 = select i1 %cmp.not.i4, ptr null, ptr %add.ptr.i5
  call void @dwc3_gadget_giveback(ptr noundef %dep, ptr noundef %spec.select.i6, i32 noundef -108)
  %22 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i2.not = icmp eq ptr %23, %pending_list
  br i1 %cmp.i2.not, label %while.body7.while.cond11.preheader_crit_edge, label %while.body7.while.body7_crit_edge

while.body7.while.body7_crit_edge:                ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body7

while.body7.while.cond11.preheader_crit_edge:     ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.preheader

while.body15:                                     ; preds = %while.body15.while.body15_crit_edge, %while.cond11.preheader.while.body15_crit_edge
  %24 = ptrtoint ptr %cancelled_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %cancelled_list, align 4
  %cmp.not.i9 = icmp eq ptr %25, %cancelled_list
  %add.ptr.i10 = getelementptr i8, ptr %25, i32 -56
  %spec.select.i11 = select i1 %cmp.not.i9, ptr null, ptr %add.ptr.i10
  call void @dwc3_gadget_giveback(ptr noundef %dep, ptr noundef %spec.select.i11, i32 noundef -108)
  %26 = ptrtoint ptr %cancelled_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %cancelled_list, align 4
  %cmp.i7.not = icmp eq ptr %27, %cancelled_list
  br i1 %cmp.i7.not, label %while.body15.while.end18_crit_edge, label %while.body15.while.body15_crit_edge

while.body15.while.body15_crit_edge:              ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body15

while.body15.while.end18_crit_edge:               ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end18

while.end18:                                      ; preds = %while.body15.while.end18_crit_edge, %while.cond11.preheader.while.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_thread_interrupt(i32 noundef %irq, ptr nocapture noundef %_evt) #0 align 64 {
entry:
  %params.i.i65.i.i.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %params.i.i.i.i.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %event.i = alloca %union.dwc3_event, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %_evt, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1, align 4
  tail call fastcc void @local_bh_disable()
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %2 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dwc1, align 4
  %count.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %_evt, i32 0, i32 4
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  %flags.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %_evt, i32 0, i32 5
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.dwc3_process_event_buf.exit_crit_edge, label %while.cond.preheader.i

entry.dwc3_process_event_buf.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_buf.exit

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp39.i = icmp sgt i32 %5, 0
  br i1 %cmp39.i, label %while.body.lr.ph.i, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %cache.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %_evt, i32 0, i32 1
  %lpos.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %_evt, i32 0, i32 3
  %dev.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 12
  %ip.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 54
  %revision.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 55
  %gadget.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 18
  %link_state.i144.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 59
  %async_callbacks.i.i145.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 79
  %gadget_driver.i.i149.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 19
  %lock.i.i153.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 10
  %hwparams1.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 66, i32 1
  %speed.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 64
  %regs.i136.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 30
  %u1u220.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 49
  %eps.i.i26.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 17
  %arrayidx.i.i.i.i = getelementptr %struct.dwc3, ptr %3, i32 0, i32 17, i32 1
  %hird_threshold.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 72
  %lpm_nyet_threshold.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 71
  %length.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %_evt, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %dwc3_process_event_entry.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %left.040.i = phi i32 [ %5, %while.body.lr.ph.i ], [ %sub.i, %dwc3_process_event_entry.exit.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %event.i) #12
  %8 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %event.i, align 4, !annotation !238
  %9 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cache.i, align 4
  %11 = ptrtoint ptr %lpos.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lpos.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %12
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  store i32 %14, ptr %event.i, align 4
  call fastcc void @trace_dwc3_event(i32 noundef %14, ptr noundef %3) #12
  %15 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i.i = load i32, ptr %event.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i, 26
  %arrayidx.i.i.i = getelementptr %struct.dwc3, ptr %3, i32 0, i32 17, i32 %bf.lshr.i.i.i
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.if.end11.i.i.i_crit_edge

if.then.i.i.if.end11.i.i.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %and2.i.i.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp ne i32 %and2.i.i.i, 0
  %20 = and i32 %bf.load.i.i, 62914560
  call void @__sanitizer_cov_trace_const_cmp4(i32 29360128, i32 %20)
  %cmp.not.i.i.i = icmp eq i32 %20, 29360128
  %or.cond.i.i.i = select i1 %tobool3.not.i.i.i, i1 %cmp.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then.i.i.i.if.end11.i.i.i_crit_edge, label %if.then.i.i.i.dwc3_process_event_entry.exit.i_crit_edge

if.then.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

if.then.i.i.i.if.end11.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then.i.i.i.if.end11.i.i.i_crit_edge, %if.then.i.i.if.end11.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %bf.load.i.i)
  %switch.i.i.i = icmp ult i32 %bf.load.i.i, 134217728
  br i1 %switch.i.i.i, label %if.then18.i.i.i, label %if.end19.i.i.i

if.then18.i.i.i:                                  ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dwc3_ep0_interrupt(ptr noundef %3, ptr noundef nonnull %event.i) #12
  br label %dwc3_process_event_entry.exit.i

if.end19.i.i.i:                                   ; preds = %if.end11.i.i.i
  %bf.lshr21.i.i.i = lshr i32 %bf.load.i.i, 22
  %bf.clear22.i.i.i = and i32 %bf.lshr21.i.i.i, 15
  %21 = zext i32 %bf.clear22.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %bf.clear22.i.i.i, label %if.end19.i.i.i.dwc3_process_event_entry.exit.i_crit_edge [
    i32 2, label %sw.bb.i.i.i
    i32 3, label %sw.bb23.i.i.i
    i32 7, label %sw.bb24.i.i.i
    i32 1, label %sw.bb25.i.i.i
    i32 6, label %sw.bb26.i.i.i
  ]

if.end19.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

sw.bb.i.i.i:                                      ; preds = %if.end19.i.i.i
  %desc.i.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %17, i32 0, i32 9
  %22 = ptrtoint ptr %desc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i.i, label %sw.bb.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, label %if.end.i.i.i.i

sw.bb.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

if.end.i.i.i.i:                                   ; preds = %sw.bb.i.i.i
  %bmAttributes.i.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %bmAttributes.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bmAttributes.i.i.i.i.i, align 1
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp.i.not.i.i.i.i = icmp eq i8 %26, 1
  br i1 %cmp.i.not.i.i.i.i, label %if.then4.i.i.i.i, label %if.end.i.i.i.i.if.end5.i.i.i.i_crit_edge

if.end.i.i.i.i.if.end5.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i.i.i.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear.i.i.i.i.i = and i32 %bf.load.i.i, 65535
  %frame_number.i.i.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %17, i32 0, i32 15
  %27 = ptrtoint ptr %frame_number.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bf.clear.i.i.i.i.i, ptr %frame_number.i.i.i.i.i, align 4
  br label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then4.i.i.i.i, %if.end.i.i.i.i.if.end5.i.i.i.i_crit_edge
  %28 = and i32 %bf.load.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool6.not.i.i.i.i = icmp eq i32 %28, 0
  %spec.select.i.i.i.i = select i1 %tobool6.not.i.i.i.i, i32 0, i32 -104
  %29 = and i32 %bf.load.i.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool13.not.i.i.i.i = icmp eq i32 %29, 0
  %status.1.i.i.i.i = select i1 %tobool13.not.i.i.i.i, i32 %spec.select.i.i.i.i, i32 -18
  %call16.i.i.i.i = call fastcc zeroext i1 @dwc3_gadget_endpoint_trbs_complete(ptr noundef %17, ptr noundef nonnull %event.i, i32 noundef %status.1.i.i.i.i) #12
  br label %dwc3_process_event_entry.exit.i

sw.bb23.i.i.i:                                    ; preds = %if.end19.i.i.i
  %bf.clear.i.i46.i.i.i = and i32 %bf.load.i.i, 65535
  %frame_number.i.i47.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %17, i32 0, i32 15
  %30 = ptrtoint ptr %frame_number.i.i47.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bf.clear.i.i46.i.i.i, ptr %frame_number.i.i47.i.i.i, align 4
  %and.i.i.i.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i48.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i48.i.i.i, label %if.end.i49.i.i.i, label %sw.bb23.i.i.i.dwc3_process_event_entry.exit.i_crit_edge

sw.bb23.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %sw.bb23.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

if.end.i49.i.i.i:                                 ; preds = %sw.bb23.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = call fastcc i32 @__dwc3_gadget_start_isoc(ptr noundef %17) #12
  br label %dwc3_process_event_entry.exit.i

sw.bb24.i.i.i:                                    ; preds = %if.end19.i.i.i
  %31 = and i32 %bf.load.i.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %31)
  %cmp.not.i.i.i.i = icmp eq i32 %31, 2048
  br i1 %cmp.not.i.i.i.i, label %if.end.i52.i.i.i, label %sw.bb24.i.i.i.dwc3_process_event_entry.exit.i_crit_edge

sw.bb24.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %sw.bb24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

if.end.i52.i.i.i:                                 ; preds = %sw.bb24.i.i.i
  %stream_capable.i.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %17, i32 0, i32 18
  %32 = ptrtoint ptr %stream_capable.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load3.i.i.i.i = load i8, ptr %stream_capable.i.i.i.i, align 4
  %33 = and i8 %bf.load3.i.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i51.i.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i51.i.i.i, label %if.end.i52.i.i.i.if.end6.i.i.i.i_crit_edge, label %if.then5.i.i.i.i

if.end.i52.i.i.i.if.end6.i.i.i.i_crit_edge:       ; preds = %if.end.i52.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i.i.i

if.then5.i.i.i.i:                                 ; preds = %if.end.i52.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i.i.i.i = or i32 %19, 256
  %34 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i.i.i.i, ptr %flags.i.i.i, align 4
  br label %if.end6.i.i.i.i

if.end6.i.i.i.i:                                  ; preds = %if.then5.i.i.i.i, %if.end.i52.i.i.i.if.end6.i.i.i.i_crit_edge
  %35 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i.i.i, align 4
  %and10.i.i.i.i = and i32 %36, -25
  store i32 %and10.i.i.i.i, ptr %flags.i.i.i, align 4
  call fastcc void @dwc3_gadget_ep_cleanup_cancelled_requests(ptr noundef %17) #12
  %37 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i.i.i, align 4
  %and12.i.i.i.i = and i32 %38, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i.i)
  %tobool13.not.i54.i.i.i = icmp eq i32 %and12.i.i.i.i, 0
  br i1 %tobool13.not.i54.i.i.i, label %if.end6.i.i.i.i.if.end39.i.i.i.i_crit_edge, label %if.then14.i.i.i.i

if.end6.i.i.i.i.if.end39.i.i.i.i_crit_edge:       ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i.i.i.i

if.then14.i.i.i.i:                                ; preds = %if.end6.i.i.i.i
  %dwc15.i.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %17, i32 0, i32 7
  %39 = ptrtoint ptr %dwc15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dwc15.i.i.i.i, align 4
  %and17.i.i.i.i = and i32 %38, -2049
  %41 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and17.i.i.i.i, ptr %flags.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i.i.i.i.i) #12
  %42 = ptrtoint ptr %stream_capable.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i.i55.i.i.i = load i8, ptr %stream_capable.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i55.i.i.i)
  %tobool.not.i.i.i.i.i = icmp sgt i8 %bf.load.i.i55.i.i.i, -1
  br i1 %tobool.not.i.i.i.i.i, label %if.then14.i.i.i.i.dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then14.i.i.i.i.dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i_crit_edge: ; preds = %if.then14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then14.i.i.i.i
  %ip.i.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %40, i32 0, i32 54
  %43 = ptrtoint ptr %ip.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ip.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %44)
  %cmp.i.i.i.i.i = icmp eq i32 %44, 21811
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.land.lhs.true4.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.land.lhs.true4.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true4.i.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %revision.i.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %40, i32 0, i32 55
  %45 = ptrtoint ptr %revision.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %revision.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429415434, i32 %46)
  %cmp3.i.i.i.i.i = icmp ult i32 %46, 1429415434
  br i1 %cmp3.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i.land.lhs.true4.i.i.i.i.i_crit_edge

land.lhs.true2.i.i.i.i.i.land.lhs.true4.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true4.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i

land.lhs.true4.i.i.i.i.i:                         ; preds = %land.lhs.true2.i.i.i.i.i.land.lhs.true4.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.land.lhs.true4.i.i.i.i.i_crit_edge
  %gadget.i.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %40, i32 0, i32 18
  %47 = ptrtoint ptr %gadget.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gadget.i.i.i.i.i, align 4
  %speed.i.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %speed.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %speed.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %50)
  %cmp5.inv.i.i.i.i.i = icmp ult i32 %50, 5
  %spec.select.i.i.i.i.i = select i1 %cmp5.inv.i.i.i.i.i, i32 5, i32 2053
  br label %dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i

dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i:        ; preds = %land.lhs.true4.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i_crit_edge, %if.then14.i.i.i.i.dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i_crit_edge
  %cmd.0.i.i.i.i.i = phi i32 [ 5, %land.lhs.true2.i.i.i.i.i.dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i_crit_edge ], [ 5, %if.then14.i.i.i.i.dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i.i, %land.lhs.true4.i.i.i.i.i ]
  %51 = call ptr @memset(ptr %params.i.i.i.i.i, i32 0, i32 12)
  %call.i.i.i.i.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %17, i32 noundef %cmd.0.i.i.i.i.i, ptr noundef nonnull %params.i.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool18.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool18.not.i.i.i.i, label %if.end28.i.i.i.i, label %if.then19.i.i.i.i

if.then19.i.i.i.i:                                ; preds = %dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i
  %eps.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %40, i32 0, i32 17
  %52 = ptrtoint ptr %eps.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %eps.i.i.i.i, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %40, i32 0, i32 12
  %54 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i.i.i.i, align 4
  %name.i.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %17, i32 0, i32 17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.12, ptr noundef %name.i.i.i.i) #15
  %delayed_status.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %40, i32 0, i32 79
  %56 = ptrtoint ptr %delayed_status.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 6)
  %bf.load20.i.i.i.i = load i48, ptr %delayed_status.i.i.i.i, align 4
  %57 = and i48 %bf.load20.i.i.i.i, 35184372088832
  %tobool24.not.i.i.i.i = icmp eq i48 %57, 0
  br i1 %tobool24.not.i.i.i.i, label %if.then19.i.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, label %if.then25.i.i.i.i

if.then19.i.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %if.then19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

if.then25.i.i.i.i:                                ; preds = %if.then19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call26.i.i.i.i = call i32 @__dwc3_gadget_ep0_set_halt(ptr noundef %53, i32 noundef 1) #12
  br label %dwc3_process_event_entry.exit.i

if.end28.i.i.i.i:                                 ; preds = %dwc3_send_clear_stall_ep_cmd.exit.i.i.i.i
  %58 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags.i.i.i, align 4
  %and30.i.i.i.i = and i32 %59, -7
  store i32 %and30.i.i.i.i, ptr %flags.i.i.i, align 4
  %delayed_status31.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %40, i32 0, i32 79
  %60 = ptrtoint ptr %delayed_status31.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 6)
  %bf.load32.i.i.i.i = load i48, ptr %delayed_status31.i.i.i.i, align 4
  %61 = and i48 %bf.load32.i.i.i.i, 35184372088832
  %tobool36.not.i.i.i.i = icmp eq i48 %61, 0
  br i1 %tobool36.not.i.i.i.i, label %if.end28.i.i.i.i.if.end39.i.i.i.i_crit_edge, label %if.then37.i.i.i.i

if.end28.i.i.i.i.if.end39.i.i.i.i_crit_edge:      ; preds = %if.end28.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i.i.i.i

if.then37.i.i.i.i:                                ; preds = %if.end28.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dwc3_ep0_send_delayed_status(ptr noundef %40) #12
  br label %if.end39.i.i.i.i

if.end39.i.i.i.i:                                 ; preds = %if.then37.i.i.i.i, %if.end28.i.i.i.i.if.end39.i.i.i.i_crit_edge, %if.end6.i.i.i.i.if.end39.i.i.i.i_crit_edge
  %62 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i.i.i, align 4
  %and41.i.i.i.i = and i32 %63, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i.i.i)
  %tobool42.not.i.i.i.i = icmp eq i32 %and41.i.i.i.i, 0
  br i1 %tobool42.not.i.i.i.i, label %if.end39.i.i.i.i.if.end48.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end39.i.i.i.i.if.end48.i.i.i.i_crit_edge:      ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end39.i.i.i.i
  %desc.i56.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %17, i32 0, i32 9
  %64 = ptrtoint ptr %desc.i56.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %desc.i56.i.i.i, align 4
  %bmAttributes.i.i57.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %bmAttributes.i.i57.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bmAttributes.i.i57.i.i.i, align 1
  %68 = and i8 %67, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp.i76.not.i.i.i.i = icmp eq i8 %68, 1
  br i1 %cmp.i76.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end48.i.i.i.i_crit_edge, label %if.then46.i.i.i.i

land.lhs.true.i.i.i.i.if.end48.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i.i.i.i

if.then46.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call47.i.i.i.i = call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %17) #12
  br label %if.end48.i.i.i.i

if.end48.i.i.i.i:                                 ; preds = %if.then46.i.i.i.i, %land.lhs.true.i.i.i.i.if.end48.i.i.i.i_crit_edge, %if.end39.i.i.i.i.if.end48.i.i.i.i_crit_edge
  %69 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i.i.i, align 4
  %and50.i.i.i.i = and i32 %70, -65
  store i32 %and50.i.i.i.i, ptr %flags.i.i.i, align 4
  br label %dwc3_process_event_entry.exit.i

sw.bb25.i.i.i:                                    ; preds = %if.end19.i.i.i
  %and.i59.i.i.i = and i32 %19, -9
  %71 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and.i59.i.i.i, ptr %flags.i.i.i, align 4
  %72 = and i32 %bf.load.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i61.i.i.i = icmp eq i32 %72, 0
  %spec.select.i62.i.i.i = select i1 %tobool.not.i61.i.i.i, i32 0, i32 -104
  %call.i63.i.i.i = call fastcc zeroext i1 @dwc3_gadget_endpoint_trbs_complete(ptr noundef %17, ptr noundef nonnull %event.i, i32 noundef %spec.select.i62.i.i.i) #12
  br i1 %call.i63.i.i.i, label %if.then2.i.i.i.i, label %sw.bb25.i.i.i.dwc3_process_event_entry.exit.i_crit_edge

sw.bb25.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %sw.bb25.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

if.then2.i.i.i.i:                                 ; preds = %sw.bb25.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i.i.i, align 4
  %and4.i.i.i.i = and i32 %74, -129
  store i32 %and4.i.i.i.i, ptr %flags.i.i.i, align 4
  br label %dwc3_process_event_entry.exit.i

sw.bb26.i.i.i:                                    ; preds = %if.end19.i.i.i
  %dwc1.i.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %17, i32 0, i32 7
  %75 = ptrtoint ptr %dwc1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dwc1.i.i.i.i, align 4
  %77 = and i32 %bf.load.i.i, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %77)
  %cmp.i.i.i.i = icmp eq i32 %77, 65536
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i69.i.i.i

if.then.i.i.i.i:                                  ; preds = %sw.bb26.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i68.i.i.i = or i32 %19, 1024
  %78 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or.i68.i.i.i, ptr %flags.i.i.i, align 4
  br label %out.i.i.i.i

if.end.i69.i.i.i:                                 ; preds = %sw.bb26.i.i.i
  %trunc.i.i.i.i = trunc i32 %bf.load.i.i to i16
  %79 = zext i16 %trunc.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %trunc.i.i.i.i, label %if.end.i69.i.i.i.out.i.i.i.i_crit_edge [
    i16 -2, label %sw.bb.i.i.i.i
    i16 0, label %sw.bb16.i.i.i.i
  ]

if.end.i69.i.i.i.out.i.i.i.i_crit_edge:           ; preds = %if.end.i69.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.end.i69.i.i.i
  %and.i70.i.i.i = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70.i.i.i)
  %tobool.not.i71.i.i.i = icmp eq i32 %and.i70.i.i.i, 0
  br i1 %tobool.not.i71.i.i.i, label %sw.bb.i.i.i.i.out.i.i.i.i_crit_edge, label %if.then5.i72.i.i.i

sw.bb.i.i.i.i.out.i.i.i.i_crit_edge:              ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i.i

if.then5.i72.i.i.i:                               ; preds = %sw.bb.i.i.i.i
  %and7.i.i.i.i = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i.i)
  %tobool8.not.i.i.i.i = icmp eq i32 %and7.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then9.i.i.i.i

if.then9.i.i.i.i:                                 ; preds = %if.then5.i72.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and11.i.i.i.i = and i32 %19, -513
  %80 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and11.i.i.i.i, ptr %flags.i.i.i, align 4
  br label %out.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then5.i72.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or13.i.i.i.i = or i32 %19, 1024
  %81 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or13.i.i.i.i, ptr %flags.i.i.i, align 4
  br label %out.i.i.i.i

sw.bb16.i.i.i.i:                                  ; preds = %if.end.i69.i.i.i
  %82 = and i32 %19, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %82)
  %.not.i.i.i.i = icmp eq i32 %82, 512
  br i1 %.not.i.i.i.i, label %lor.lhs.false23.i.i.i.i, label %sw.bb16.i.i.i.i.out.i.i.i.i_crit_edge

sw.bb16.i.i.i.i.out.i.i.i.i_crit_edge:            ; preds = %sw.bb16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i.i

lor.lhs.false23.i.i.i.i:                          ; preds = %sw.bb16.i.i.i.i
  %hwparams9.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %76, i32 0, i32 66, i32 9
  %83 = ptrtoint ptr %hwparams9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hwparams9.i.i.i.i, align 4
  %and24.i.i.i.i = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i.i.i)
  %tobool25.not.i.i.i.i = icmp eq i32 %and24.i.i.i.i, 0
  %and27.i.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i.i.i)
  %tobool28.not.i.i.i.i = icmp eq i32 %and27.i.i.i.i, 0
  %or.cond57.i.i.i.i = select i1 %tobool25.not.i.i.i.i, i1 %tobool28.not.i.i.i.i, i1 false
  br i1 %or.cond57.i.i.i.i, label %lor.lhs.false23.i.i.i.i.out.i.i.i.i_crit_edge, label %if.end30.i.i.i.i

lor.lhs.false23.i.i.i.i.out.i.i.i.i_crit_edge:    ; preds = %lor.lhs.false23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i.i

if.end30.i.i.i.i:                                 ; preds = %lor.lhs.false23.i.i.i.i
  %ip.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %76, i32 0, i32 54
  %85 = ptrtoint ptr %ip.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ip.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %86)
  %cmp31.i.i.i.i = icmp eq i32 %86, 13106
  br i1 %cmp31.i.i.i.i, label %land.lhs.true32.i.i.i.i, label %if.end30.i.i.i.i.if.else35.i.i.i.i_crit_edge

if.end30.i.i.i.i.if.else35.i.i.i.i_crit_edge:     ; preds = %if.end30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else35.i.i.i.i

land.lhs.true32.i.i.i.i:                          ; preds = %if.end30.i.i.i.i
  %revision.i.i.i.i = getelementptr inbounds %struct.dwc3, ptr %76, i32 0, i32 55
  %87 = ptrtoint ptr %revision.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %revision.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825241641, i32 %88)
  %cmp33.i.i.i.i = icmp ugt i32 %88, 825241641
  br i1 %cmp33.i.i.i.i, label %if.then34.i.i.i.i, label %land.lhs.true32.i.i.i.i.if.else35.i.i.i.i_crit_edge

land.lhs.true32.i.i.i.i.if.else35.i.i.i.i_crit_edge: ; preds = %land.lhs.true32.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else35.i.i.i.i

if.then34.i.i.i.i:                                ; preds = %land.lhs.true32.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %number.i.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %17, i32 0, i32 12
  %89 = ptrtoint ptr %number.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %number.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %90 to i32
  %call.i73.i.i.i = call i32 @dwc3_send_gadget_generic_command(ptr noundef %76, i32 noundef 13, i32 noundef %conv.i.i.i.i) #12
  br label %out.i.i.i.i

if.else35.i.i.i.i:                                ; preds = %land.lhs.true32.i.i.i.i.if.else35.i.i.i.i_crit_edge, %if.end30.i.i.i.i.if.else35.i.i.i.i_crit_edge
  %or37.i.i.i.i = or i32 %19, 64
  %91 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or37.i.i.i.i, ptr %flags.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i.i65.i.i.i) #12
  %92 = and i32 %19, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %92)
  %93 = icmp eq i32 %92, 8
  br i1 %93, label %if.end.i.i.i.i.i, label %if.else35.i.i.i.i.dwc3_stop_active_transfer.exit.i.i.i.i_crit_edge

if.else35.i.i.i.i.dwc3_stop_active_transfer.exit.i.i.i.i_crit_edge: ; preds = %if.else35.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_stop_active_transfer.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else35.i.i.i.i
  %resource_index.i.i.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %17, i32 0, i32 14
  %94 = ptrtoint ptr %resource_index.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %resource_index.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i8 %95 to i32
  %shl.i.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i.i, 16
  %or9.i.i.i.i.i = or i32 %shl.i.i.i.i.i, 2312
  %96 = call ptr @memset(ptr %params.i.i65.i.i.i, i32 0, i32 12)
  %call.i.i74.i.i.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %17, i32 noundef %or9.i.i.i.i.i, ptr noundef nonnull %params.i.i65.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74.i.i.i)
  %tobool10.not.i.i.i.i.i = icmp eq i32 %call.i.i74.i.i.i, 0
  br i1 %tobool10.not.i.i.i.i.i, label %if.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %land.rhs.i.i.i.i.i

if.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge:    ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %if.then20.i.i.i.i.i, !prof !231

land.rhs.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge:  ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i.i.i.i.i

if.then20.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #12
  br label %if.end42.i.i.i.i.i

if.end42.i.i.i.i.i:                               ; preds = %if.then20.i.i.i.i.i, %land.rhs.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge
  %97 = ptrtoint ptr %resource_index.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %resource_index.i.i.i.i.i, align 4
  %98 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags.i.i.i, align 4
  %or56.i.i.i.i.i = or i32 %99, 16
  store i32 %or56.i.i.i.i.i, ptr %flags.i.i.i, align 4
  br label %dwc3_stop_active_transfer.exit.i.i.i.i

dwc3_stop_active_transfer.exit.i.i.i.i:           ; preds = %if.end42.i.i.i.i.i, %if.else35.i.i.i.i.dwc3_stop_active_transfer.exit.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i.i65.i.i.i) #12
  br label %dwc3_process_event_entry.exit.i

out.i.i.i.i:                                      ; preds = %if.then34.i.i.i.i, %lor.lhs.false23.i.i.i.i.out.i.i.i.i_crit_edge, %sw.bb16.i.i.i.i.out.i.i.i.i_crit_edge, %if.else.i.i.i.i, %if.then9.i.i.i.i, %sw.bb.i.i.i.i.out.i.i.i.i_crit_edge, %if.end.i69.i.i.i.out.i.i.i.i_crit_edge, %if.then.i.i.i.i
  %100 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags.i.i.i, align 4
  %and40.i.i.i.i = and i32 %101, -257
  store i32 %and40.i.i.i.i, ptr %flags.i.i.i, align 4
  br label %dwc3_process_event_entry.exit.i

if.else.i.i:                                      ; preds = %while.body.i
  %102 = and i32 %bf.load.i.i, 2130706432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp.i.i = icmp eq i32 %102, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %do.end.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  %bf.lshr.i15.i.i = lshr i32 %bf.load.i.i, 20
  %bf.clear.i.i.i = and i32 %bf.lshr.i15.i.i, 15
  %103 = zext i32 %bf.clear.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %bf.clear.i.i.i, label %do.end79.i.i.i [
    i32 0, label %sw.bb.i16.i.i
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb2.i.i.i
    i32 4, label %sw.bb3.i.i.i
    i32 5, label %sw.bb4.i.i.i
    i32 3, label %sw.bb52.i.i.i
    i32 6, label %sw.bb56.i.i.i
    i32 7, label %if.then3.i.i.dwc3_process_event_entry.exit.i_crit_edge
    i32 9, label %if.then3.i.i.dwc3_process_event_entry.exit.i_crit_edge10
    i32 10, label %if.then3.i.i.dwc3_process_event_entry.exit.i_crit_edge11
    i32 11, label %if.then3.i.i.dwc3_process_event_entry.exit.i_crit_edge12
  ]

if.then3.i.i.dwc3_process_event_entry.exit.i_crit_edge12: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

if.then3.i.i.dwc3_process_event_entry.exit.i_crit_edge11: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

if.then3.i.i.dwc3_process_event_entry.exit.i_crit_edge10: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

if.then3.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

sw.bb.i16.i.i:                                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @dwc3_gadget_disconnect_interrupt(ptr noundef %3) #12
  br label %dwc3_process_event_entry.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @dwc3_gadget_reset_interrupt(ptr noundef %3) #12
  br label %dwc3_process_event_entry.exit.i

sw.bb2.i.i.i:                                     ; preds = %if.then3.i.i
  %104 = ptrtoint ptr %regs.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i136.i.i.i, align 4
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %105, i32 1548
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i.i.i) #12, !srcloc !226
  %107 = call i32 @llvm.bswap.i32(i32 %106) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i.i.i.i.i = getelementptr i8, ptr %105, i32 -49408
  call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i.i.i.i, i32 noundef 50956, i32 noundef %107) #12
  %108 = trunc i32 %107 to i8
  %conv.i.i17.i.i = and i8 %108, 7
  %109 = ptrtoint ptr %speed.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv.i.i17.i.i, ptr %speed.i.i.i.i, align 2
  %110 = ptrtoint ptr %ip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ip.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %111)
  %cmp.i.i19.i.i = icmp eq i32 %111, 13106
  %shr.i.i.i.i = lshr i32 %107, 30
  %add.i.i.i.i = add nuw nsw i32 %shr.i.i.i.i, 1
  %lanes.0.i.i.i.i = select i1 %cmp.i.i19.i.i, i32 %add.i.i.i.i, i32 1
  %112 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %gadget.i.i.i, align 4
  %ssp_rate.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %113, i32 0, i32 7
  %114 = ptrtoint ptr %ssp_rate.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %ssp_rate.i.i.i.i, align 8
  %conv5.i.i.i.i = zext i8 %conv.i.i17.i.i to i32
  %115 = zext i32 %conv5.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %conv5.i.i.i.i, label %sw.bb2.i.i.i.sw.epilog.i.i.i.i_crit_edge [
    i32 5, label %sw.bb.i.i21.i.i
    i32 4, label %sw.bb18.i.i.i.i
    i32 0, label %sw.bb43.i.i.i.i
    i32 1, label %sw.bb52.i.i.i.i
  ]

sw.bb2.i.i.i.sw.epilog.i.i.i.i_crit_edge:         ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i.i.i

sw.bb.i.i21.i.i:                                  ; preds = %sw.bb2.i.i.i
  store i16 2, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @dwc3_gadget_ep0_desc, i32 0, i32 4), align 1
  %116 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %gadget.i.i.i, align 4
  %ep0.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %ep0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ep0.i.i.i.i, align 4
  %maxpacket.i.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %119, i32 0, i32 7
  %120 = ptrtoint ptr %maxpacket.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 7)
  %bf.load.i.i20.i.i = load i56, ptr %maxpacket.i.i.i.i, align 2
  %bf.clear.i.i.i.i = and i56 %bf.load.i.i20.i.i, 1099511627775
  %bf.set.i.i.i.i = or i56 %bf.clear.i.i.i.i, 562949953421312
  store i56 %bf.set.i.i.i.i, ptr %maxpacket.i.i.i.i, align 2
  %121 = load ptr, ptr %gadget.i.i.i, align 4
  %speed8.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %speed8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 6, ptr %speed8.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lanes.0.i.i.i.i)
  %cmp10.i.i.i.i = icmp ugt i32 %lanes.0.i.i.i.i, 1
  %123 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %gadget.i.i.i, align 4
  %ssp_rate14.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %124, i32 0, i32 7
  br i1 %cmp10.i.i.i.i, label %if.then12.i.i.i.i, label %if.else.i.i22.i.i

if.then12.i.i.i.i:                                ; preds = %sw.bb.i.i21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %ssp_rate14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 3, ptr %ssp_rate14.i.i.i.i, align 8
  br label %sw.epilog.i.i.i.i

if.else.i.i22.i.i:                                ; preds = %sw.bb.i.i21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %ssp_rate14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %ssp_rate14.i.i.i.i, align 8
  br label %sw.epilog.i.i.i.i

sw.bb18.i.i.i.i:                                  ; preds = %sw.bb2.i.i.i
  %127 = ptrtoint ptr %ip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ip.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %128)
  %cmp20.i.i.i.i = icmp eq i32 %128, 21811
  br i1 %cmp20.i.i.i.i, label %land.lhs.true.i.i24.i.i, label %sw.bb18.i.i.i.i.if.end25.i.i.i.i_crit_edge

sw.bb18.i.i.i.i.if.end25.i.i.i.i_crit_edge:       ; preds = %sw.bb18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i.i.i.i

land.lhs.true.i.i24.i.i:                          ; preds = %sw.bb18.i.i.i.i
  %129 = ptrtoint ptr %revision.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %revision.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429412106, i32 %130)
  %cmp22.i.i.i.i = icmp ult i32 %130, 1429412106
  br i1 %cmp22.i.i.i.i, label %if.then24.i.i.i.i, label %land.lhs.true.i.i24.i.i.if.end25.i.i.i.i_crit_edge

land.lhs.true.i.i24.i.i.if.end25.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i.i.i.i

if.then24.i.i.i.i:                                ; preds = %land.lhs.true.i.i24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @dwc3_gadget_reset_interrupt(ptr noundef %3) #12
  br label %if.end25.i.i.i.i

if.end25.i.i.i.i:                                 ; preds = %if.then24.i.i.i.i, %land.lhs.true.i.i24.i.i.if.end25.i.i.i.i_crit_edge, %sw.bb18.i.i.i.i.if.end25.i.i.i.i_crit_edge
  store i16 2, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @dwc3_gadget_ep0_desc, i32 0, i32 4), align 1
  %131 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %gadget.i.i.i, align 4
  %ep027.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %ep027.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ep027.i.i.i.i, align 4
  %maxpacket28.i.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %134, i32 0, i32 7
  %135 = ptrtoint ptr %maxpacket28.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 7)
  %bf.load29.i.i.i.i = load i56, ptr %maxpacket28.i.i.i.i, align 2
  %bf.clear30.i.i.i.i = and i56 %bf.load29.i.i.i.i, 1099511627775
  %bf.set31.i.i.i.i = or i56 %bf.clear30.i.i.i.i, 562949953421312
  store i56 %bf.set31.i.i.i.i, ptr %maxpacket28.i.i.i.i, align 2
  %136 = load ptr, ptr %gadget.i.i.i, align 4
  %speed33.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %speed33.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 5, ptr %speed33.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lanes.0.i.i.i.i)
  %cmp35.i.i.i.i = icmp ugt i32 %lanes.0.i.i.i.i, 1
  br i1 %cmp35.i.i.i.i, label %if.then37.i.i25.i.i, label %if.end25.i.i.i.i.sw.epilog.i.i.i.i_crit_edge

if.end25.i.i.i.i.sw.epilog.i.i.i.i_crit_edge:     ; preds = %if.end25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i.i.i

if.then37.i.i25.i.i:                              ; preds = %if.end25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %gadget.i.i.i, align 4
  %speed39.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %139, i32 0, i32 5
  %140 = ptrtoint ptr %speed39.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 6, ptr %speed39.i.i.i.i, align 8
  %141 = load ptr, ptr %gadget.i.i.i, align 4
  %ssp_rate41.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %141, i32 0, i32 7
  %142 = ptrtoint ptr %ssp_rate41.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 2, ptr %ssp_rate41.i.i.i.i, align 8
  br label %sw.epilog.i.i.i.i

sw.bb43.i.i.i.i:                                  ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i16 16384, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @dwc3_gadget_ep0_desc, i32 0, i32 4), align 1
  %143 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %gadget.i.i.i, align 4
  %ep045.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %ep045.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ep045.i.i.i.i, align 4
  %maxpacket46.i.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %146, i32 0, i32 7
  %147 = ptrtoint ptr %maxpacket46.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 7)
  %bf.load47.i.i.i.i = load i56, ptr %maxpacket46.i.i.i.i, align 2
  %bf.clear48.i.i.i.i = and i56 %bf.load47.i.i.i.i, 1099511627775
  %bf.set49.i.i.i.i = or i56 %bf.clear48.i.i.i.i, 70368744177664
  store i56 %bf.set49.i.i.i.i, ptr %maxpacket46.i.i.i.i, align 2
  %148 = load ptr, ptr %gadget.i.i.i, align 4
  %speed51.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %148, i32 0, i32 5
  %149 = ptrtoint ptr %speed51.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 3, ptr %speed51.i.i.i.i, align 8
  br label %sw.epilog.i.i.i.i

sw.bb52.i.i.i.i:                                  ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i16 16384, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @dwc3_gadget_ep0_desc, i32 0, i32 4), align 1
  %150 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %gadget.i.i.i, align 4
  %ep054.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %ep054.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ep054.i.i.i.i, align 4
  %maxpacket55.i.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %153, i32 0, i32 7
  %154 = ptrtoint ptr %maxpacket55.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 7)
  %bf.load56.i.i.i.i = load i56, ptr %maxpacket55.i.i.i.i, align 2
  %bf.clear57.i.i.i.i = and i56 %bf.load56.i.i.i.i, 1099511627775
  %bf.set58.i.i.i.i = or i56 %bf.clear57.i.i.i.i, 70368744177664
  store i56 %bf.set58.i.i.i.i, ptr %maxpacket55.i.i.i.i, align 2
  %155 = load ptr, ptr %gadget.i.i.i, align 4
  %speed60.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %155, i32 0, i32 5
  %156 = ptrtoint ptr %speed60.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 2, ptr %speed60.i.i.i.i, align 8
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %sw.bb52.i.i.i.i, %sw.bb43.i.i.i.i, %if.then37.i.i25.i.i, %if.end25.i.i.i.i.sw.epilog.i.i.i.i_crit_edge, %if.else.i.i22.i.i, %if.then12.i.i.i.i, %sw.bb2.i.i.i.sw.epilog.i.i.i.i_crit_edge
  %157 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %gadget.i.i.i, align 4
  %ep062.i.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %ep062.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ep062.i.i.i.i, align 4
  %maxpacket63.i.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %160, i32 0, i32 7
  %161 = ptrtoint ptr %maxpacket63.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 7)
  %bf.load64.i.i.i.i = load i56, ptr %maxpacket63.i.i.i.i, align 2
  %bf.lshr.i.i.i.i = and i56 %bf.load64.i.i.i.i, -1099511627776
  %162 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %maxpacket65.i.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %163, i32 0, i32 7
  %164 = ptrtoint ptr %maxpacket65.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 7)
  %bf.load66.i.i.i.i = load i56, ptr %maxpacket65.i.i.i.i, align 2
  %bf.clear67.i.i.i.i = and i56 %bf.load66.i.i.i.i, 1099511627775
  %bf.set68.i.i.i.i = or i56 %bf.clear67.i.i.i.i, %bf.lshr.i.i.i.i
  store i56 %bf.set68.i.i.i.i, ptr %maxpacket65.i.i.i.i, align 2
  %165 = ptrtoint ptr %ip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ip.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %166)
  %cmp70.i.i.i.i = icmp eq i32 %166, 21811
  br i1 %cmp70.i.i.i.i, label %land.lhs.true76.i.i.i.i, label %sw.epilog.i.i.i.i.land.lhs.true80.i.i.i.i_crit_edge

sw.epilog.i.i.i.i.land.lhs.true80.i.i.i.i_crit_edge: ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true80.i.i.i.i

land.lhs.true76.i.i.i.i:                          ; preds = %sw.epilog.i.i.i.i
  %167 = ptrtoint ptr %revision.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %revision.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429412171, i32 %168)
  %cmp78.i.i.i.i = icmp ult i32 %168, 1429412171
  br i1 %cmp78.i.i.i.i, label %land.lhs.true76.i.i.i.i.if.else180.i.i.i.i_crit_edge, label %land.lhs.true76.i.i.i.i.land.lhs.true80.i.i.i.i_crit_edge

land.lhs.true76.i.i.i.i.land.lhs.true80.i.i.i.i_crit_edge: ; preds = %land.lhs.true76.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true80.i.i.i.i

land.lhs.true76.i.i.i.i.if.else180.i.i.i.i_crit_edge: ; preds = %land.lhs.true76.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else180.i.i.i.i

land.lhs.true80.i.i.i.i:                          ; preds = %land.lhs.true76.i.i.i.i.land.lhs.true80.i.i.i.i_crit_edge, %sw.epilog.i.i.i.i.land.lhs.true80.i.i.i.i_crit_edge
  %169 = ptrtoint ptr %async_callbacks.i.i145.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 6)
  %bf.load81.i.i.i.i = load i48, ptr %async_callbacks.i.i145.i.i.i, align 4
  %bf.load81.fr.i.i.i.i = freeze i48 %bf.load81.i.i.i.i
  %170 = and i48 %bf.load81.fr.i.i.i.i, 536870912
  %tobool.not.i.i27.i.i = icmp ne i48 %170, 0
  %171 = and i8 %108, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %171)
  %switch.i.i.i.i = icmp eq i8 %171, 4
  %or.cond296.i.i.i.i = select i1 %tobool.not.i.i27.i.i, i1 true, i1 %switch.i.i.i.i
  br i1 %or.cond296.i.i.i.i, label %land.lhs.true80.i.i.i.i.if.else180.i.i.i.i_crit_edge, label %if.then93.i.i.i.i

land.lhs.true80.i.i.i.i.if.else180.i.i.i.i_crit_edge: ; preds = %land.lhs.true80.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else180.i.i.i.i

if.then93.i.i.i.i:                                ; preds = %land.lhs.true80.i.i.i.i
  %172 = ptrtoint ptr %regs.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i136.i.i.i, align 4
  %add.ptr1.i298.i.i.i.i = getelementptr i8, ptr %173, i32 1536
  %174 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i298.i.i.i.i) #12, !srcloc !226
  %175 = call i32 @llvm.bswap.i32(i32 %174) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i299.i.i.i.i = getelementptr i8, ptr %173, i32 -49408
  call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i299.i.i.i.i, i32 noundef 50944, i32 noundef %175) #12
  %or.i.i28.i.i = or i32 %175, 4194304
  %176 = ptrtoint ptr %regs.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs.i136.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  call void @arm_heavy_mb() #12
  %178 = call i32 @llvm.bswap.i32(i32 %or.i.i28.i.i) #12
  %add.ptr1.i301.i.i.i.i = getelementptr i8, ptr %177, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i301.i.i.i.i, i32 %178) #12, !srcloc !229
  %add.ptr2.i.i.i.i.i = getelementptr i8, ptr %177, i32 -49408
  call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i.i.i.i, i32 noundef 50944, i32 noundef %or.i.i28.i.i) #12
  %179 = ptrtoint ptr %regs.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regs.i136.i.i.i, align 4
  %add.ptr1.i303.i.i.i.i = getelementptr i8, ptr %180, i32 1540
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i303.i.i.i.i) #12, !srcloc !226
  %182 = call i32 @llvm.bswap.i32(i32 %181) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i304.i.i.i.i = getelementptr i8, ptr %180, i32 -49408
  call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i304.i.i.i.i, i32 noundef 50948, i32 noundef %182) #12
  %and99.i.i.i.i = and i32 %182, -520355841
  %183 = ptrtoint ptr %hird_threshold.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %hird_threshold.i.i.i.i, align 1
  %conv100.i.i.i.i = zext i8 %184 to i32
  %185 = ptrtoint ptr %async_callbacks.i.i145.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %185, i32 6)
  %bf.load101.i.i.i.i = load i48, ptr %async_callbacks.i.i145.i.i.i, align 4
  %sh.diff.i.i.i.i = lshr i48 %bf.load101.i.i.i.i, 35
  %tr.sh.diff.i.i.i.i = trunc i48 %sh.diff.i.i.i.i to i32
  %shl.i.i.i.i = and i32 %tr.sh.diff.i.i.i.i, 16
  %or105.i.i.i.i = or i32 %shl.i.i.i.i, %conv100.i.i.i.i
  %shl106.i.i.i.i = shl nuw i32 %or105.i.i.i.i, 24
  %or107.i.i.i.i = or i32 %shl106.i.i.i.i, %and99.i.i.i.i
  %186 = ptrtoint ptr %ip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %ip.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %187)
  %cmp109.i.i.i.i = icmp eq i32 %187, 21811
  br i1 %cmp109.i.i.i.i, label %land.lhs.true111.i.i.i.i, label %if.then93.i.i.i.i.if.end152.i.i.i.i_crit_edge

if.then93.i.i.i.i.if.end152.i.i.i.i_crit_edge:    ; preds = %if.then93.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i.i.i

land.lhs.true111.i.i.i.i:                         ; preds = %if.then93.i.i.i.i
  %188 = ptrtoint ptr %revision.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %revision.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429414922, i32 %189)
  %cmp113.i.i.i.i = icmp ult i32 %189, 1429414922
  %190 = and i48 %bf.load101.i.i.i.i, 1099511627776
  %tobool119.i.i.i.i = icmp ne i48 %190, 0
  %or.cond.i.i.i.i = select i1 %cmp113.i.i.i.i, i1 %tobool119.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %land.rhs123.i.i.i.i, label %land.lhs.true111.i.i.i.i.if.end152.i.i.i.i_crit_edge

land.lhs.true111.i.i.i.i.if.end152.i.i.i.i_crit_edge: ; preds = %land.lhs.true111.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i.i.i

land.rhs123.i.i.i.i:                              ; preds = %land.lhs.true111.i.i.i.i
  %.b290.i.i.i.i = load i1, ptr @dwc3_gadget_conndone_interrupt.__already_done, align 1
  br i1 %.b290.i.i.i.i, label %land.rhs123.i.i.i.i.if.end152.i.i.i.i_crit_edge, label %if.then130.i.i.i.i, !prof !231

land.rhs123.i.i.i.i.if.end152.i.i.i.i_crit_edge:  ; preds = %land.rhs123.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i.i.i

if.then130.i.i.i.i:                               ; preds = %land.rhs123.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dwc3_gadget_conndone_interrupt.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3860, i32 noundef 9, ptr noundef nonnull @.str.49) #12
  br label %if.end152.i.i.i.i

if.end152.i.i.i.i:                                ; preds = %if.then130.i.i.i.i, %land.rhs123.i.i.i.i.if.end152.i.i.i.i_crit_edge, %land.lhs.true111.i.i.i.i.if.end152.i.i.i.i_crit_edge, %if.then93.i.i.i.i.if.end152.i.i.i.i_crit_edge
  %191 = ptrtoint ptr %async_callbacks.i.i145.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %191, i32 6)
  %bf.load161.i.i.i.i = load i48, ptr %async_callbacks.i.i145.i.i.i, align 4
  %192 = and i48 %bf.load161.i.i.i.i, 1099511627776
  %tobool165.not.i.i.i.i = icmp eq i48 %192, 0
  br i1 %tobool165.not.i.i.i.i, label %if.end152.i.i.i.i.if.end179.i.i.i.i_crit_edge, label %land.lhs.true166.i.i.i.i

if.end152.i.i.i.i.if.end179.i.i.i.i_crit_edge:    ; preds = %if.end152.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end179.i.i.i.i

land.lhs.true166.i.i.i.i:                         ; preds = %if.end152.i.i.i.i
  %193 = ptrtoint ptr %ip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %ip.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %194)
  %cmp168.i.i.i.i = icmp eq i32 %194, 21811
  br i1 %cmp168.i.i.i.i, label %land.lhs.true170.i.i.i.i, label %land.lhs.true166.i.i.i.i.if.then174.i.i.i.i_crit_edge

land.lhs.true166.i.i.i.i.if.then174.i.i.i.i_crit_edge: ; preds = %land.lhs.true166.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then174.i.i.i.i

land.lhs.true170.i.i.i.i:                         ; preds = %land.lhs.true166.i.i.i.i
  %195 = ptrtoint ptr %revision.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %revision.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429414922, i32 %196)
  %cmp172.i.i.i.i = icmp ult i32 %196, 1429414922
  br i1 %cmp172.i.i.i.i, label %land.lhs.true170.i.i.i.i.if.end179.i.i.i.i_crit_edge, label %land.lhs.true170.i.i.i.i.if.then174.i.i.i.i_crit_edge

land.lhs.true170.i.i.i.i.if.then174.i.i.i.i_crit_edge: ; preds = %land.lhs.true170.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then174.i.i.i.i

land.lhs.true170.i.i.i.i.if.end179.i.i.i.i_crit_edge: ; preds = %land.lhs.true170.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end179.i.i.i.i

if.then174.i.i.i.i:                               ; preds = %land.lhs.true170.i.i.i.i.if.then174.i.i.i.i_crit_edge, %land.lhs.true166.i.i.i.i.if.then174.i.i.i.i_crit_edge
  %197 = ptrtoint ptr %lpm_nyet_threshold.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %lpm_nyet_threshold.i.i.i.i, align 2
  %199 = and i8 %198, 15
  %and176.i.i.i.i = zext i8 %199 to i32
  %shl177.i.i.i.i = shl nuw nsw i32 %and176.i.i.i.i, 20
  %or178.i.i.i.i = or i32 %shl177.i.i.i.i, %or107.i.i.i.i
  br label %if.end179.i.i.i.i

if.end179.i.i.i.i:                                ; preds = %if.then174.i.i.i.i, %land.lhs.true170.i.i.i.i.if.end179.i.i.i.i_crit_edge, %if.end152.i.i.i.i.if.end179.i.i.i.i_crit_edge
  %reg.0.i.i.i.i = phi i32 [ %or107.i.i.i.i, %land.lhs.true170.i.i.i.i.if.end179.i.i.i.i_crit_edge ], [ %or178.i.i.i.i, %if.then174.i.i.i.i ], [ %or107.i.i.i.i, %if.end152.i.i.i.i.if.end179.i.i.i.i_crit_edge ]
  %and.i.i.i.i.i = and i32 %reg.0.i.i.i.i, -481
  %200 = ptrtoint ptr %regs.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs.i136.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  call void @arm_heavy_mb() #12
  %202 = call i32 @llvm.bswap.i32(i32 %and.i.i.i.i.i) #12
  %add.ptr1.i.i.i.i.i.i = getelementptr i8, ptr %201, i32 1540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i.i.i.i, i32 %202) #12, !srcloc !229
  br label %if.end196.i.i.i.i

if.else180.i.i.i.i:                               ; preds = %land.lhs.true80.i.i.i.i.if.else180.i.i.i.i_crit_edge, %land.lhs.true76.i.i.i.i.if.else180.i.i.i.i_crit_edge
  %203 = ptrtoint ptr %async_callbacks.i.i145.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %203, i32 6)
  %bf.load182.i.i.i.i = load i48, ptr %async_callbacks.i.i145.i.i.i, align 4
  %204 = and i48 %bf.load182.i.i.i.i, 536870912
  %tobool186.not.i.i.i.i = icmp eq i48 %204, 0
  br i1 %tobool186.not.i.i.i.i, label %if.else180.i.i.i.i.if.end192.i.i.i.i_crit_edge, label %if.then187.i.i.i.i

if.else180.i.i.i.i.if.end192.i.i.i.i_crit_edge:   ; preds = %if.else180.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192.i.i.i.i

if.then187.i.i.i.i:                               ; preds = %if.else180.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %205 = ptrtoint ptr %regs.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regs.i136.i.i.i, align 4
  %add.ptr1.i306.i.i.i.i = getelementptr i8, ptr %206, i32 1536
  %207 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i306.i.i.i.i) #12, !srcloc !226
  %208 = call i32 @llvm.bswap.i32(i32 %207) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i307.i.i.i.i = getelementptr i8, ptr %206, i32 -49408
  call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i307.i.i.i.i, i32 noundef 50944, i32 noundef %208) #12
  %and190.i.i.i.i = and i32 %208, -4194305
  %209 = ptrtoint ptr %regs.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regs.i136.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  call void @arm_heavy_mb() #12
  %211 = call i32 @llvm.bswap.i32(i32 %and190.i.i.i.i) #12
  %add.ptr1.i309.i.i.i.i = getelementptr i8, ptr %210, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i309.i.i.i.i, i32 %211) #12, !srcloc !229
  %add.ptr2.i310.i.i.i.i = getelementptr i8, ptr %210, i32 -49408
  call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i310.i.i.i.i, i32 noundef 50944, i32 noundef %and190.i.i.i.i) #12
  br label %if.end192.i.i.i.i

if.end192.i.i.i.i:                                ; preds = %if.then187.i.i.i.i, %if.else180.i.i.i.i.if.end192.i.i.i.i_crit_edge
  %212 = ptrtoint ptr %regs.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regs.i136.i.i.i, align 4
  %add.ptr1.i312.i.i.i.i = getelementptr i8, ptr %213, i32 1540
  %214 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i312.i.i.i.i) #12, !srcloc !226
  %215 = call i32 @llvm.bswap.i32(i32 %214) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i313.i.i.i.i = getelementptr i8, ptr %213, i32 -49408
  call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i313.i.i.i.i, i32 noundef 50948, i32 noundef %215) #12
  %and.i314.i.i.i.i = and i32 %215, -520094177
  %216 = ptrtoint ptr %regs.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs.i136.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  call void @arm_heavy_mb() #12
  %218 = call i32 @llvm.bswap.i32(i32 %and.i314.i.i.i.i) #12
  %add.ptr1.i.i316.i.i.i.i = getelementptr i8, ptr %217, i32 1540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i316.i.i.i.i, i32 %218) #12, !srcloc !229
  br label %if.end196.i.i.i.i

if.end196.i.i.i.i:                                ; preds = %if.end192.i.i.i.i, %if.end179.i.i.i.i
  %.sink.i.i.i.i = phi ptr [ %217, %if.end192.i.i.i.i ], [ %201, %if.end179.i.i.i.i ]
  %and.i314.sink.i.i.i.i = phi i32 [ %and.i314.i.i.i.i, %if.end192.i.i.i.i ], [ %and.i.i.i.i.i, %if.end179.i.i.i.i ]
  %add.ptr2.i.i317.i.i.i.i = getelementptr i8, ptr %.sink.i.i.i.i, i32 -49408
  call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i317.i.i.i.i, i32 noundef 50948, i32 noundef %and.i314.sink.i.i.i.i) #12
  %219 = ptrtoint ptr %eps.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %eps.i.i26.i.i, align 4
  %call199.i.i.i.i = call fastcc i32 @__dwc3_gadget_ep_enable(ptr noundef %220, i32 noundef -2147483648) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199.i.i.i.i)
  %tobool200.not.i.i.i.i = icmp eq i32 %call199.i.i.i.i, 0
  br i1 %tobool200.not.i.i.i.i, label %if.end205.i.i.i.i, label %if.end196.i.i.i.i.cleanup.sink.split.i.i.i.i_crit_edge

if.end196.i.i.i.i.cleanup.sink.split.i.i.i.i_crit_edge: ; preds = %if.end196.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i.i.i

if.end205.i.i.i.i:                                ; preds = %if.end196.i.i.i.i
  %221 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call208.i.i.i.i = call fastcc i32 @__dwc3_gadget_ep_enable(ptr noundef %222, i32 noundef -2147483648) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208.i.i.i.i)
  %tobool209.not.i.i.i.i = icmp eq i32 %call208.i.i.i.i, 0
  br i1 %tobool209.not.i.i.i.i, label %if.end205.i.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, label %if.end205.i.i.i.i.cleanup.sink.split.i.i.i.i_crit_edge

if.end205.i.i.i.i.cleanup.sink.split.i.i.i.i_crit_edge: ; preds = %if.end205.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i.i.i

if.end205.i.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %if.end205.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

cleanup.sink.split.i.i.i.i:                       ; preds = %if.end205.i.i.i.i.cleanup.sink.split.i.i.i.i_crit_edge, %if.end196.i.i.i.i.cleanup.sink.split.i.i.i.i_crit_edge
  %.sink319.i.i.i.i = phi ptr [ %220, %if.end196.i.i.i.i.cleanup.sink.split.i.i.i.i_crit_edge ], [ %222, %if.end205.i.i.i.i.cleanup.sink.split.i.i.i.i_crit_edge ]
  %223 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev.i.i, align 4
  %name215.i.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %.sink319.i.i.i.i, i32 0, i32 17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull @.str.50, ptr noundef %name215.i.i.i.i) #15
  br label %dwc3_process_event_entry.exit.i

sw.bb3.i.i.i:                                     ; preds = %if.then3.i.i
  %225 = ptrtoint ptr %async_callbacks.i.i145.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %225, i32 6)
  %bf.load.i124.i.i.i = load i48, ptr %async_callbacks.i.i145.i.i.i, align 4
  %226 = and i48 %bf.load.i124.i.i.i, 32
  %tobool.not.i125.i.i.i = icmp eq i48 %226, 0
  br i1 %tobool.not.i125.i.i.i, label %sw.bb3.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, label %land.lhs.true.i126.i.i.i

sw.bb3.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

land.lhs.true.i126.i.i.i:                         ; preds = %sw.bb3.i.i.i
  %227 = ptrtoint ptr %gadget_driver.i.i149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %gadget_driver.i.i149.i.i.i, align 4
  %resume.i.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %228, i32 0, i32 7
  %229 = ptrtoint ptr %resume.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %resume.i.i.i.i, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %230, null
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i126.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, label %if.then.i.i29.i.i

land.lhs.true.i126.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %land.lhs.true.i126.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

if.then.i.i29.i.i:                                ; preds = %land.lhs.true.i126.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %lock.i.i153.i.i.i) #12
  %231 = ptrtoint ptr %gadget_driver.i.i149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %gadget_driver.i.i149.i.i.i, align 4
  %resume3.i.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %232, i32 0, i32 7
  %233 = ptrtoint ptr %resume3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %resume3.i.i.i.i, align 4
  %235 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %gadget.i.i.i, align 4
  call void %234(ptr noundef %236) #12
  call void @_raw_spin_lock(ptr noundef %lock.i.i153.i.i.i) #12
  br label %dwc3_process_event_entry.exit.i

sw.bb4.i.i.i:                                     ; preds = %if.then3.i.i
  %237 = ptrtoint ptr %async_callbacks.i.i145.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %237, i32 6)
  %bf.load5.i.i.i = load i48, ptr %async_callbacks.i.i145.i.i.i, align 4
  %238 = and i48 %bf.load5.i.i.i, 4398046511104
  %tobool.not.i30.i.i = icmp eq i48 %238, 0
  br i1 %tobool.not.i30.i.i, label %land.rhs.i.i.i, label %sw.bb4.i.i.i.dwc3_process_event_entry.exit.i_crit_edge

sw.bb4.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %sw.bb4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

land.rhs.i.i.i:                                   ; preds = %sw.bb4.i.i.i
  %.b122.i.i.i = load i1, ptr @dwc3_gadget_interrupt.__already_done, align 1
  br i1 %.b122.i.i.i, label %land.rhs.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, label %if.then.i31.i.i, !prof !231

land.rhs.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

if.then.i31.i.i:                                  ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dwc3_gadget_interrupt.__already_done, align 1
  %239 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev.i.i, align 4
  %call.i.i.i = call ptr @dev_driver_string(ptr noundef %240) #12
  %241 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev.i.i, align 4
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %242, i32 0, i32 3
  %243 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i128.i.i.i = icmp eq ptr %244, null
  br i1 %tobool.not.i128.i.i.i, label %if.end.i.i32.i.i, label %if.then.i31.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i31.i.i.dev_name.exit.i.i.i_crit_edge:    ; preds = %if.then.i31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i.i

if.end.i.i32.i.i:                                 ; preds = %if.then.i31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %245 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %242, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i32.i.i, %if.then.i31.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %246, %if.end.i.i32.i.i ], [ %244, %if.then.i31.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4066, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef %call.i.i.i, ptr noundef %retval.0.i.i.i.i) #12
  br label %dwc3_process_event_entry.exit.i

sw.bb52.i.i.i:                                    ; preds = %if.then3.i.i
  %bf.lshr54.i.i.i = lshr i32 %bf.load.i.i, 7
  %and.i.i33.i.i = and i32 %bf.lshr54.i.i.i, 15
  %247 = ptrtoint ptr %ip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %ip.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %248)
  %cmp.i130.i.i.i = icmp eq i32 %248, 21811
  br i1 %cmp.i130.i.i.i, label %land.lhs.true.i133.i.i.i, label %sw.bb52.i.i.i.if.end27.i.i.i.i_crit_edge

sw.bb52.i.i.i.if.end27.i.i.i.i_crit_edge:         ; preds = %sw.bb52.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i.i.i

land.lhs.true.i133.i.i.i:                         ; preds = %sw.bb52.i.i.i
  %249 = ptrtoint ptr %hwparams1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %hwparams1.i.i.i.i, align 4
  %251 = ptrtoint ptr %revision.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %revision.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429415177, i32 %252)
  %cmp2.i.i.i.i = icmp ugt i32 %252, 1429415177
  %253 = and i32 %250, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %253)
  %cmp4.not.i.i.i.i = icmp eq i32 %253, 33554432
  %or.cond.i132.i.i.i = select i1 %cmp2.i.i.i.i, i1 true, i1 %cmp4.not.i.i.i.i
  br i1 %or.cond.i132.i.i.i, label %land.lhs.true.i133.i.i.i.land.lhs.true12.i.i.i.i_crit_edge, label %if.then.i134.i.i.i

land.lhs.true.i133.i.i.i.land.lhs.true12.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i133.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true12.i.i.i.i

if.then.i134.i.i.i:                               ; preds = %land.lhs.true.i133.i.i.i
  %254 = ptrtoint ptr %link_state.i144.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %link_state.i144.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %255)
  %cmp5.i.i.i.i = icmp eq i32 %255, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i.i33.i.i)
  %cmp7.i.i.i.i = icmp eq i32 %and.i.i33.i.i, 15
  %or.cond61.i.i.i.i = and i1 %cmp7.i.i.i.i, %cmp5.i.i.i.i
  br i1 %or.cond61.i.i.i.i, label %if.then.i134.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, label %if.then.i134.i.i.i.land.lhs.true12.i.i.i.i_crit_edge

if.then.i134.i.i.i.land.lhs.true12.i.i.i.i_crit_edge: ; preds = %if.then.i134.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true12.i.i.i.i

if.then.i134.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %if.then.i134.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

land.lhs.true12.i.i.i.i:                          ; preds = %if.then.i134.i.i.i.land.lhs.true12.i.i.i.i_crit_edge, %land.lhs.true.i133.i.i.i.land.lhs.true12.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429411898, i32 %252)
  %cmp14.i.i.i.i = icmp ult i32 %252, 1429411898
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i33.i.i)
  %cmp16.i.i.i.i = icmp eq i32 %and.i.i33.i.i, 0
  %or.cond62.i.i.i.i = and i1 %cmp16.i.i.i.i, %cmp14.i.i.i.i
  br i1 %or.cond62.i.i.i.i, label %if.then17.i.i.i.i, label %land.lhs.true12.i.i.i.i.if.end27.i.i.i.i_crit_edge

land.lhs.true12.i.i.i.i.if.end27.i.i.i.i_crit_edge: ; preds = %land.lhs.true12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i.i.i

if.then17.i.i.i.i:                                ; preds = %land.lhs.true12.i.i.i.i
  %256 = ptrtoint ptr %link_state.i144.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %link_state.i144.i.i.i, align 4
  %.off.i.i.i.i = add i32 %257, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i.i.i)
  %switch.i135.i.i.i = icmp ult i32 %.off.i.i.i.i, 2
  br i1 %switch.i135.i.i.i, label %sw.bb.i140.i.i.i, label %if.then17.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge

if.then17.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge:  ; preds = %if.then17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog36.i.i.i.i

sw.bb.i140.i.i.i:                                 ; preds = %if.then17.i.i.i.i
  %258 = ptrtoint ptr %regs.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %regs.i136.i.i.i, align 4
  %add.ptr1.i.i137.i.i.i = getelementptr i8, ptr %259, i32 1540
  %260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i137.i.i.i) #12, !srcloc !226
  %261 = call i32 @llvm.bswap.i32(i32 %260) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i.i138.i.i.i = getelementptr i8, ptr %259, i32 -49408
  call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i138.i.i.i, i32 noundef 50948, i32 noundef %261) #12
  %262 = ptrtoint ptr %u1u220.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %u1u220.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool.not.i139.i.i.i = icmp eq i32 %263, 0
  br i1 %tobool.not.i139.i.i.i, label %if.then21.i.i.i.i, label %sw.bb.i140.i.i.i.if.end24.i.i.i.i_crit_edge

sw.bb.i140.i.i.i.if.end24.i.i.i.i_crit_edge:      ; preds = %sw.bb.i140.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i.i.i

if.then21.i.i.i.i:                                ; preds = %sw.bb.i140.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and19.i.i.i.i = and i32 %261, 7680
  %264 = ptrtoint ptr %u1u220.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %and19.i.i.i.i, ptr %u1u220.i.i.i.i, align 4
  br label %if.end24.i.i.i.i

if.end24.i.i.i.i:                                 ; preds = %if.then21.i.i.i.i, %sw.bb.i140.i.i.i.if.end24.i.i.i.i_crit_edge
  %and.i.i141.i.i.i = and i32 %261, -8161
  %265 = ptrtoint ptr %regs.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regs.i136.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  call void @arm_heavy_mb() #12
  %267 = call i32 @llvm.bswap.i32(i32 %and.i.i141.i.i.i) #12
  %add.ptr1.i.i.i142.i.i.i = getelementptr i8, ptr %266, i32 1540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i142.i.i.i, i32 %267) #12, !srcloc !229
  %add.ptr2.i.i.i.i.i.i = getelementptr i8, ptr %266, i32 -49408
  call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i.i.i.i.i, i32 noundef 50948, i32 noundef %and.i.i141.i.i.i) #12
  br label %sw.epilog36.i.i.i.i

if.end27.i.i.i.i:                                 ; preds = %land.lhs.true12.i.i.i.i.if.end27.i.i.i.i_crit_edge, %sw.bb52.i.i.i.if.end27.i.i.i.i_crit_edge
  %268 = zext i32 %and.i.i33.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %and.i.i33.i.i, label %if.end27.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge [
    i32 1, label %sw.bb28.i.i.i.i
    i32 2, label %if.end27.i.i.i.i.sw.bb33.i.i.i.i_crit_edge
    i32 3, label %if.end27.i.i.i.i.sw.bb33.i.i.i.i_crit_edge13
    i32 15, label %sw.bb34.i.i.i.i
  ]

if.end27.i.i.i.i.sw.bb33.i.i.i.i_crit_edge13:     ; preds = %if.end27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb33.i.i.i.i

if.end27.i.i.i.i.sw.bb33.i.i.i.i_crit_edge:       ; preds = %if.end27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb33.i.i.i.i

if.end27.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge:   ; preds = %if.end27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog36.i.i.i.i

sw.bb28.i.i.i.i:                                  ; preds = %if.end27.i.i.i.i
  %269 = ptrtoint ptr %speed.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %speed.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %270)
  %cmp29.i.i.i.i = icmp eq i8 %270, 5
  br i1 %cmp29.i.i.i.i, label %if.then31.i.i.i.i, label %sw.bb28.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge

sw.bb28.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge:    ; preds = %sw.bb28.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog36.i.i.i.i

if.then31.i.i.i.i:                                ; preds = %sw.bb28.i.i.i.i
  %271 = ptrtoint ptr %async_callbacks.i.i145.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %271, i32 6)
  %bf.load.i.i.i.i.i = load i48, ptr %async_callbacks.i.i145.i.i.i, align 4
  %272 = and i48 %bf.load.i.i.i.i.i, 32
  %tobool.not.i.i.i34.i.i = icmp eq i48 %272, 0
  br i1 %tobool.not.i.i.i34.i.i, label %if.then31.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i35.i.i

if.then31.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge:  ; preds = %if.then31.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog36.i.i.i.i

land.lhs.true.i.i.i35.i.i:                        ; preds = %if.then31.i.i.i.i
  %273 = ptrtoint ptr %gadget_driver.i.i149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %gadget_driver.i.i149.i.i.i, align 4
  %suspend.i.i.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %274, i32 0, i32 6
  %275 = ptrtoint ptr %suspend.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %suspend.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i.i = icmp eq ptr %276, null
  br i1 %tobool1.not.i.i.i.i.i, label %land.lhs.true.i.i.i35.i.i.sw.epilog36.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true.i.i.i35.i.i.sw.epilog36.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog36.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %lock.i.i153.i.i.i) #12
  %277 = ptrtoint ptr %gadget_driver.i.i149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %gadget_driver.i.i149.i.i.i, align 4
  %suspend3.i.i.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %278, i32 0, i32 6
  %279 = ptrtoint ptr %suspend3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %suspend3.i.i.i.i.i, align 4
  %281 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %gadget.i.i.i, align 4
  call void %280(ptr noundef %282) #12
  call void @_raw_spin_lock(ptr noundef %lock.i.i153.i.i.i) #12
  br label %sw.epilog36.i.i.i.i

sw.bb33.i.i.i.i:                                  ; preds = %if.end27.i.i.i.i.sw.bb33.i.i.i.i_crit_edge, %if.end27.i.i.i.i.sw.bb33.i.i.i.i_crit_edge13
  %283 = ptrtoint ptr %async_callbacks.i.i145.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %283, i32 6)
  %bf.load.i64.i.i.i.i = load i48, ptr %async_callbacks.i.i145.i.i.i, align 4
  %284 = and i48 %bf.load.i64.i.i.i.i, 32
  %tobool.not.i65.i.i.i.i = icmp eq i48 %284, 0
  br i1 %tobool.not.i65.i.i.i.i, label %sw.bb33.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge, label %land.lhs.true.i69.i.i.i.i

sw.bb33.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge:    ; preds = %sw.bb33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog36.i.i.i.i

land.lhs.true.i69.i.i.i.i:                        ; preds = %sw.bb33.i.i.i.i
  %285 = ptrtoint ptr %gadget_driver.i.i149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %gadget_driver.i.i149.i.i.i, align 4
  %suspend.i67.i.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %286, i32 0, i32 6
  %287 = ptrtoint ptr %suspend.i67.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %suspend.i67.i.i.i.i, align 4
  %tobool1.not.i68.i.i.i.i = icmp eq ptr %288, null
  br i1 %tobool1.not.i68.i.i.i.i, label %land.lhs.true.i69.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge, label %if.then.i73.i.i.i.i

land.lhs.true.i69.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i69.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog36.i.i.i.i

if.then.i73.i.i.i.i:                              ; preds = %land.lhs.true.i69.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %lock.i.i153.i.i.i) #12
  %289 = ptrtoint ptr %gadget_driver.i.i149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %gadget_driver.i.i149.i.i.i, align 4
  %suspend3.i71.i.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %290, i32 0, i32 6
  %291 = ptrtoint ptr %suspend3.i71.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %suspend3.i71.i.i.i.i, align 4
  %293 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %gadget.i.i.i, align 4
  call void %292(ptr noundef %294) #12
  call void @_raw_spin_lock(ptr noundef %lock.i.i153.i.i.i) #12
  br label %sw.epilog36.i.i.i.i

sw.bb34.i.i.i.i:                                  ; preds = %if.end27.i.i.i.i
  %295 = ptrtoint ptr %async_callbacks.i.i145.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %295, i32 6)
  %bf.load.i76.i.i.i.i = load i48, ptr %async_callbacks.i.i145.i.i.i, align 4
  %296 = and i48 %bf.load.i76.i.i.i.i, 32
  %tobool.not.i77.i.i.i.i = icmp eq i48 %296, 0
  br i1 %tobool.not.i77.i.i.i.i, label %sw.bb34.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge, label %land.lhs.true.i80.i.i.i.i

sw.bb34.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge:    ; preds = %sw.bb34.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog36.i.i.i.i

land.lhs.true.i80.i.i.i.i:                        ; preds = %sw.bb34.i.i.i.i
  %297 = ptrtoint ptr %gadget_driver.i.i149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %gadget_driver.i.i149.i.i.i, align 4
  %resume.i.i.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %298, i32 0, i32 7
  %299 = ptrtoint ptr %resume.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %resume.i.i.i.i.i, align 4
  %tobool1.not.i79.i.i.i.i = icmp eq ptr %300, null
  br i1 %tobool1.not.i79.i.i.i.i, label %land.lhs.true.i80.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge, label %if.then.i83.i.i.i.i

land.lhs.true.i80.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i80.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog36.i.i.i.i

if.then.i83.i.i.i.i:                              ; preds = %land.lhs.true.i80.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %lock.i.i153.i.i.i) #12
  %301 = ptrtoint ptr %gadget_driver.i.i149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %gadget_driver.i.i149.i.i.i, align 4
  %resume3.i.i.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %302, i32 0, i32 7
  %303 = ptrtoint ptr %resume3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %resume3.i.i.i.i.i, align 4
  %305 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %gadget.i.i.i, align 4
  call void %304(ptr noundef %306) #12
  call void @_raw_spin_lock(ptr noundef %lock.i.i153.i.i.i) #12
  br label %sw.epilog36.i.i.i.i

sw.epilog36.i.i.i.i:                              ; preds = %if.then.i83.i.i.i.i, %land.lhs.true.i80.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge, %sw.bb34.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge, %if.then.i73.i.i.i.i, %land.lhs.true.i69.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge, %sw.bb33.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge, %if.then.i.i.i.i.i, %land.lhs.true.i.i.i35.i.i.sw.epilog36.i.i.i.i_crit_edge, %if.then31.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge, %sw.bb28.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge, %if.end27.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge, %if.end24.i.i.i.i, %if.then17.i.i.i.i.sw.epilog36.i.i.i.i_crit_edge
  %307 = ptrtoint ptr %link_state.i144.i.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %and.i.i33.i.i, ptr %link_state.i144.i.i.i, align 4
  br label %dwc3_process_event_entry.exit.i

sw.bb56.i.i.i:                                    ; preds = %if.then3.i.i
  %308 = ptrtoint ptr %ip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %ip.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %309)
  %cmp.i.i.i = icmp eq i32 %309, 21811
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %sw.bb56.i.i.i.if.then58.i.i.i_crit_edge

sw.bb56.i.i.i.if.then58.i.i.i_crit_edge:          ; preds = %sw.bb56.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb56.i.i.i
  %310 = ptrtoint ptr %revision.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %revision.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429414666, i32 %311)
  %cmp57.i.i.i = icmp ult i32 %311, 1429414666
  br i1 %cmp57.i.i.i, label %land.lhs.true.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, label %land.lhs.true.i.i.i.if.then58.i.i.i_crit_edge

land.lhs.true.i.i.i.if.then58.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58.i.i.i

land.lhs.true.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

if.then58.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.if.then58.i.i.i_crit_edge, %sw.bb56.i.i.i.if.then58.i.i.i_crit_edge
  %312 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %gadget.i.i.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %313, i32 0, i32 9
  %314 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %315)
  %cmp59.i.i.i = icmp ugt i32 %315, 6
  br i1 %cmp59.i.i.i, label %if.then60.i.i.i, label %if.then58.i.i.i.dwc3_process_event_entry.exit.i_crit_edge

if.then58.i.i.i.dwc3_process_event_entry.exit.i_crit_edge: ; preds = %if.then58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_entry.exit.i

if.then60.i.i.i:                                  ; preds = %if.then58.i.i.i
  %bf.lshr62.i.i.i = lshr i32 %bf.load.i.i, 7
  %and.i143.i.i.i = and i32 %bf.lshr62.i.i.i, 15
  %316 = ptrtoint ptr %link_state.i144.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %link_state.i144.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i143.i.i.i)
  %cmp1.i.i.i.i = icmp eq i32 %and.i143.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %317)
  %318 = icmp ne i32 %317, 3
  %319 = and i1 %cmp1.i.i.i.i, %318
  br i1 %319, label %if.then.i148.i.i.i, label %if.then60.i.i.i.dwc3_gadget_suspend_interrupt.exit.i.i.i_crit_edge

if.then60.i.i.i.dwc3_gadget_suspend_interrupt.exit.i.i.i_crit_edge: ; preds = %if.then60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_suspend_interrupt.exit.i.i.i

if.then.i148.i.i.i:                               ; preds = %if.then60.i.i.i
  %320 = ptrtoint ptr %async_callbacks.i.i145.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %320, i32 6)
  %bf.load.i.i146.i.i.i = load i48, ptr %async_callbacks.i.i145.i.i.i, align 4
  %321 = and i48 %bf.load.i.i146.i.i.i, 32
  %tobool.not.i.i147.i.i.i = icmp eq i48 %321, 0
  br i1 %tobool.not.i.i147.i.i.i, label %if.then.i148.i.i.i.dwc3_gadget_suspend_interrupt.exit.i.i.i_crit_edge, label %land.lhs.true.i.i152.i.i.i

if.then.i148.i.i.i.dwc3_gadget_suspend_interrupt.exit.i.i.i_crit_edge: ; preds = %if.then.i148.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_suspend_interrupt.exit.i.i.i

land.lhs.true.i.i152.i.i.i:                       ; preds = %if.then.i148.i.i.i
  %322 = ptrtoint ptr %gadget_driver.i.i149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %gadget_driver.i.i149.i.i.i, align 4
  %suspend.i.i150.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %323, i32 0, i32 6
  %324 = ptrtoint ptr %suspend.i.i150.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %suspend.i.i150.i.i.i, align 4
  %tobool1.not.i.i151.i.i.i = icmp eq ptr %325, null
  br i1 %tobool1.not.i.i151.i.i.i, label %land.lhs.true.i.i152.i.i.i.dwc3_gadget_suspend_interrupt.exit.i.i.i_crit_edge, label %if.then.i.i156.i.i.i

land.lhs.true.i.i152.i.i.i.dwc3_gadget_suspend_interrupt.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i152.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_suspend_interrupt.exit.i.i.i

if.then.i.i156.i.i.i:                             ; preds = %land.lhs.true.i.i152.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %lock.i.i153.i.i.i) #12
  %326 = ptrtoint ptr %gadget_driver.i.i149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %gadget_driver.i.i149.i.i.i, align 4
  %suspend3.i.i154.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %327, i32 0, i32 6
  %328 = ptrtoint ptr %suspend3.i.i154.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %suspend3.i.i154.i.i.i, align 4
  %330 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %gadget.i.i.i, align 4
  call void %329(ptr noundef %331) #12
  call void @_raw_spin_lock(ptr noundef %lock.i.i153.i.i.i) #12
  br label %dwc3_gadget_suspend_interrupt.exit.i.i.i

dwc3_gadget_suspend_interrupt.exit.i.i.i:         ; preds = %if.then.i.i156.i.i.i, %land.lhs.true.i.i152.i.i.i.dwc3_gadget_suspend_interrupt.exit.i.i.i_crit_edge, %if.then.i148.i.i.i.dwc3_gadget_suspend_interrupt.exit.i.i.i_crit_edge, %if.then60.i.i.i.dwc3_gadget_suspend_interrupt.exit.i.i.i_crit_edge
  %332 = ptrtoint ptr %link_state.i144.i.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %and.i143.i.i.i, ptr %link_state.i144.i.i.i, align 4
  br label %dwc3_process_event_entry.exit.i

do.end79.i.i.i:                                   ; preds = %if.then3.i.i
  %333 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %dev.i.i, align 4
  %call81.i.i.i = call ptr @dev_driver_string(ptr noundef %334) #12
  %335 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %dev.i.i, align 4
  %init_name.i158.i.i.i = getelementptr inbounds %struct.device, ptr %336, i32 0, i32 3
  %337 = ptrtoint ptr %init_name.i158.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %init_name.i158.i.i.i, align 8
  %tobool.not.i159.i.i.i = icmp eq ptr %338, null
  br i1 %tobool.not.i159.i.i.i, label %if.end.i160.i.i.i, label %do.end79.i.i.i.dev_name.exit162.i.i.i_crit_edge

do.end79.i.i.i.dev_name.exit162.i.i.i_crit_edge:  ; preds = %do.end79.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit162.i.i.i

if.end.i160.i.i.i:                                ; preds = %do.end79.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %339 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %336, align 4
  br label %dev_name.exit162.i.i.i

dev_name.exit162.i.i.i:                           ; preds = %if.end.i160.i.i.i, %do.end79.i.i.i.dev_name.exit162.i.i.i_crit_edge
  %retval.0.i161.i.i.i = phi ptr [ %340, %if.end.i160.i.i.i ], [ %338, %do.end79.i.i.i.dev_name.exit162.i.i.i_crit_edge ]
  %341 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %bf.load84.i.i.i = load i32, ptr %event.i, align 4
  %bf.lshr85.i.i.i = lshr i32 %bf.load84.i.i.i, 20
  %bf.clear86.i.i.i = and i32 %bf.lshr85.i.i.i, 15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4092, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef %call81.i.i.i, ptr noundef %retval.0.i161.i.i.i, i32 noundef %bf.clear86.i.i.i) #12
  br label %dwc3_process_event_entry.exit.i

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %342 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %343, ptr noundef nonnull @.str.44, i32 noundef %bf.load.i.i) #15
  br label %dwc3_process_event_entry.exit.i

dwc3_process_event_entry.exit.i:                  ; preds = %do.end.i.i, %dev_name.exit162.i.i.i, %dwc3_gadget_suspend_interrupt.exit.i.i.i, %if.then58.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %land.lhs.true.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %sw.epilog36.i.i.i.i, %if.then.i134.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %sw.bb4.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %if.then.i.i29.i.i, %land.lhs.true.i126.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %sw.bb3.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %cleanup.sink.split.i.i.i.i, %if.end205.i.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %sw.bb1.i.i.i, %sw.bb.i16.i.i, %if.then3.i.i.dwc3_process_event_entry.exit.i_crit_edge, %if.then3.i.i.dwc3_process_event_entry.exit.i_crit_edge10, %if.then3.i.i.dwc3_process_event_entry.exit.i_crit_edge11, %if.then3.i.i.dwc3_process_event_entry.exit.i_crit_edge12, %out.i.i.i.i, %dwc3_stop_active_transfer.exit.i.i.i.i, %if.then2.i.i.i.i, %sw.bb25.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %if.end48.i.i.i.i, %if.then25.i.i.i.i, %if.then19.i.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %sw.bb24.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %if.end.i49.i.i.i, %sw.bb23.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %if.end5.i.i.i.i, %sw.bb.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %if.end19.i.i.i.dwc3_process_event_entry.exit.i_crit_edge, %if.then18.i.i.i, %if.then.i.i.i.dwc3_process_event_entry.exit.i_crit_edge
  %344 = ptrtoint ptr %lpos.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %lpos.i, align 4
  %add.i = add i32 %345, 4
  %346 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %length.i, align 4
  %rem.i = urem i32 %add.i, %347
  store i32 %rem.i, ptr %lpos.i, align 4
  %sub.i = add nsw i32 %left.040.i, -4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %event.i) #12
  %cmp.i = icmp sgt i32 %left.040.i, 4
  br i1 %cmp.i, label %dwc3_process_event_entry.exit.i.while.body.i_crit_edge, label %dwc3_process_event_entry.exit.i.while.end.i_crit_edge

dwc3_process_event_entry.exit.i.while.end.i_crit_edge: ; preds = %dwc3_process_event_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

dwc3_process_event_entry.exit.i.while.body.i_crit_edge: ; preds = %dwc3_process_event_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %dwc3_process_event_entry.exit.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %348 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 0, ptr %count.i, align 4
  %349 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %flags.i, align 4
  %and6.i = and i32 %350, -2
  store i32 %and6.i, ptr %flags.i, align 4
  %regs.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 30
  %351 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %regs.i, align 4
  %length7.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %_evt, i32 0, i32 2
  %353 = ptrtoint ptr %length7.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %length7.i, align 4
  %and8.i = and i32 %354, 65535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  call void @arm_heavy_mb() #12
  %355 = call i32 @llvm.bswap.i32(i32 %and8.i) #12
  %add.ptr1.i.i = getelementptr i8, ptr %352, i32 776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %355) #12, !srcloc !229
  %add.ptr2.i.i = getelementptr i8, ptr %352, i32 -49408
  call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 50184, i32 noundef %and8.i) #12
  %imod_interval.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 80
  %356 = ptrtoint ptr %imod_interval.i to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %imod_interval.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %357)
  %tobool9.not.i = icmp eq i16 %357, 0
  br i1 %tobool9.not.i, label %while.end.i.dwc3_process_event_buf.exit_crit_edge, label %if.then10.i

while.end.i.dwc3_process_event_buf.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_process_event_buf.exit

if.then10.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %358 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  call void @arm_heavy_mb() #12
  %add.ptr1.i34.i = getelementptr i8, ptr %359, i32 780
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i34.i, i32 128) #12, !srcloc !229
  %add.ptr2.i35.i = getelementptr i8, ptr %359, i32 -49408
  call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i35.i, i32 noundef 50188, i32 noundef -2147483648) #12
  %360 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %regs.i, align 4
  %362 = ptrtoint ptr %imod_interval.i to i32
  call void @__asan_load2_noabort(i32 %362)
  %363 = load i16, ptr %imod_interval.i, align 2
  %conv.i = zext i16 %363 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  call void @arm_heavy_mb() #12
  %364 = call i32 @llvm.bswap.i32(i32 %conv.i) #12
  %add.ptr1.i37.i = getelementptr i8, ptr %361, i32 2304
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i37.i, i32 %364) #12, !srcloc !229
  %add.ptr2.i38.i = getelementptr i8, ptr %361, i32 -49408
  call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i38.i, i32 noundef 51712, i32 noundef %conv.i) #12
  br label %dwc3_process_event_buf.exit

dwc3_process_event_buf.exit:                      ; preds = %if.then10.i, %while.end.i.dwc3_process_event_buf.exit_crit_edge, %entry.dwc3_process_event_buf.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.dwc3_process_event_buf.exit_crit_edge ], [ 1, %if.then10.i ], [ 1, %while.end.i.dwc3_process_event_buf.exit_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  call fastcc void @local_bh_enable()
  ret i32 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_event(i32 noundef %event, ptr noundef %dwc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_event, i32 0, i32 1), ptr blockaddress(@trace_dwc3_event, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !249
  %call42 = tail call i32 @__traceiter_dwc3_event(ptr noundef null, i32 noundef %event, ptr noundef %dwc) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !250
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_event, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_event, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_event.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 71, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
declare dso_local i32 @__traceiter_dwc3_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_ep0_interrupt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dwc3_gadget_endpoint_trbs_complete(ptr noundef %dep, ptr nocapture noundef readonly %event, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  %params.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup45_crit_edge, label %if.end

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup45

if.end:                                           ; preds = %entry
  %started_list.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 3
  %4 = ptrtoint ptr %started_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %started_list.i, align 4
  %trb_pool.i31.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 5
  %trb_dequeue.i.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %dwc3_gadget_ep_cleanup_completed_request.exit.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %5, %if.end ], [ %.pn.i, %dwc3_gadget_ep_cleanup_completed_request.exit.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.in.i, %started_list.i
  br i1 %cmp.not.i, label %for.cond.i.dwc3_gadget_ep_cleanup_completed_requests.exit_crit_edge, label %for.body.i

for.cond.i.dwc3_gadget_ep_cleanup_completed_requests.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_ep_cleanup_completed_requests.exit

for.body.i:                                       ; preds = %for.cond.i
  %req.0.i = getelementptr i8, ptr %.pn.in.i, i32 -56
  %num_mapped_sgs.i.i = getelementptr i8, ptr %.pn.in.i, i32 -36
  %7 = ptrtoint ptr %num_mapped_sgs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_mapped_sgs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %sg1.i.i.i = getelementptr i8, ptr %.pn.in.i, i32 12
  %num_queued_sgs.i.i.i = getelementptr i8, ptr %.pn.in.i, i32 24
  %9 = ptrtoint ptr %num_queued_sgs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_queued_sgs.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1.not.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp1.not.i.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %for.body.preheader.i.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

for.body.preheader.i.i.i:                         ; preds = %if.then.i.i
  %11 = ptrtoint ptr %sg1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sg1.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.03.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %s.02.i.i.i = phi ptr [ %call9.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %12, %for.body.preheader.i.i.i ]
  %13 = ptrtoint ptr %trb_pool.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trb_pool.i31.i.i, align 4
  %15 = ptrtoint ptr %trb_dequeue.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %trb_dequeue.i.i.i, align 1
  %idxprom4.i.i.i = zext i8 %16 to i32
  %arrayidx5.i.i.i = getelementptr %struct.dwc3_trb, ptr %14, i32 %idxprom4.i.i.i
  %call.i.i.i = tail call ptr @sg_next(ptr noundef %s.02.i.i.i) #12
  %17 = ptrtoint ptr %sg1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i.i, ptr %sg1.i.i.i, align 4
  %18 = ptrtoint ptr %num_queued_sgs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_queued_sgs.i.i.i, align 4
  %dec.i.i.i = add i32 %19, -1
  store i32 %dec.i.i.i, ptr %num_queued_sgs.i.i.i, align 4
  %call8.i.i.i = tail call fastcc i32 @dwc3_gadget_ep_reclaim_completed_trb(ptr noundef %dep, ptr noundef %req.0.i, ptr noundef %arrayidx5.i.i.i, ptr noundef %event, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.if.end.i.i_crit_edge

for.body.i.i.i.if.end.i.i_crit_edge:              ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.03.i.i.i, 1
  %call9.i.i.i = tail call ptr @sg_next(ptr noundef %s.02.i.i.i) #12
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %10
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.end.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.if.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %trb_pool.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trb_pool.i31.i.i, align 4
  %22 = ptrtoint ptr %trb_dequeue.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %trb_dequeue.i.i.i, align 1
  %idxprom.i.i.i = zext i8 %23 to i32
  %arrayidx.i.i.i = getelementptr %struct.dwc3_trb, ptr %21, i32 %idxprom.i.i.i
  %call.i33.i.i = tail call fastcc i32 @dwc3_gadget_ep_reclaim_completed_trb(ptr noundef %dep, ptr noundef %req.0.i, ptr noundef %arrayidx.i.i.i, ptr noundef %event, i32 noundef 0) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %for.inc.i.i.i.if.end.i.i_crit_edge, %for.body.i.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i33.i.i, %if.else.i.i ], [ 0, %if.then.i.i.if.end.i.i_crit_edge ], [ 0, %for.inc.i.i.i.if.end.i.i_crit_edge ], [ 1, %for.body.i.i.i.if.end.i.i_crit_edge ]
  %length.i.i = getelementptr i8, ptr %.pn.in.i, i32 -52
  %24 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i.i, align 4
  %remaining.i.i = getelementptr i8, ptr %.pn.in.i, i32 28
  %26 = ptrtoint ptr %remaining.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %remaining.i.i, align 4
  %sub.i.i = sub i32 %25, %27
  %actual.i.i = getelementptr i8, ptr %.pn.in.i, i32 -4
  %28 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i.i, ptr %actual.i.i, align 4
  %num_pending_sgs.i.i.i = getelementptr i8, ptr %.pn.in.i, i32 20
  %29 = ptrtoint ptr %num_pending_sgs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_pending_sgs.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i.i = icmp eq i32 %30, 0
  br i1 %cmp.i.i.i, label %dwc3_gadget_ep_request_completed.exit.i.i, label %if.end.i.i.dwc3_gadget_ep_cleanup_completed_request.exit.i_crit_edge

if.end.i.i.dwc3_gadget_ep_cleanup_completed_request.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_ep_cleanup_completed_request.exit.i

dwc3_gadget_ep_request_completed.exit.i.i:        ; preds = %if.end.i.i
  %num_queued_sgs.i34.i.i = getelementptr i8, ptr %.pn.in.i, i32 24
  %31 = ptrtoint ptr %num_queued_sgs.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_queued_sgs.i34.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp1.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp1.i.i.i, label %if.end6.i.i, label %dwc3_gadget_ep_request_completed.exit.i.i.dwc3_gadget_ep_cleanup_completed_request.exit.i_crit_edge

dwc3_gadget_ep_request_completed.exit.i.i.dwc3_gadget_ep_cleanup_completed_request.exit.i_crit_edge: ; preds = %dwc3_gadget_ep_request_completed.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_ep_cleanup_completed_request.exit.i

if.end6.i.i:                                      ; preds = %dwc3_gadget_ep_request_completed.exit.i.i
  %needs_extra_trb.i.i = getelementptr i8, ptr %.pn.in.i, i32 52
  %33 = ptrtoint ptr %needs_extra_trb.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i = load i8, ptr %needs_extra_trb.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool7.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool7.not.i.i, label %if.end6.i.i.if.end12.i.i_crit_edge, label %if.then8.i.i

if.end6.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %trb_pool.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trb_pool.i31.i.i, align 4
  %36 = ptrtoint ptr %trb_dequeue.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %trb_dequeue.i.i.i, align 1
  %idxprom.i37.i.i = zext i8 %37 to i32
  %arrayidx.i38.i.i = getelementptr %struct.dwc3_trb, ptr %35, i32 %idxprom.i37.i.i
  %call.i39.i.i = tail call fastcc i32 @dwc3_gadget_ep_reclaim_completed_trb(ptr noundef %dep, ptr noundef %req.0.i, ptr noundef %arrayidx.i38.i.i, ptr noundef %event, i32 noundef 0) #12
  %38 = ptrtoint ptr %needs_extra_trb.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load11.i.i = load i8, ptr %needs_extra_trb.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load11.i.i, 127
  store i8 %bf.clear.i.i, ptr %needs_extra_trb.i.i, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then8.i.i, %if.end6.i.i.if.end12.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %call.i39.i.i, %if.then8.i.i ], [ %ret.0.i.i, %if.end6.i.i.if.end12.i.i_crit_edge ]
  tail call void @dwc3_gadget_giveback(ptr noundef %dep, ptr noundef %req.0.i, i32 noundef %status) #12
  br label %dwc3_gadget_ep_cleanup_completed_request.exit.i

dwc3_gadget_ep_cleanup_completed_request.exit.i:  ; preds = %if.end12.i.i, %dwc3_gadget_ep_request_completed.exit.i.i.dwc3_gadget_ep_cleanup_completed_request.exit.i_crit_edge, %if.end.i.i.dwc3_gadget_ep_cleanup_completed_request.exit.i_crit_edge
  %ret.2.i.i = phi i32 [ %ret.1.i.i, %if.end12.i.i ], [ %ret.0.i.i, %dwc3_gadget_ep_request_completed.exit.i.i.dwc3_gadget_ep_cleanup_completed_request.exit.i_crit_edge ], [ %ret.0.i.i, %if.end.i.i.dwc3_gadget_ep_cleanup_completed_request.exit.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %ret.2.i.i, 0
  br i1 %tobool.not.i, label %dwc3_gadget_ep_cleanup_completed_request.exit.i.for.cond.i_crit_edge, label %dwc3_gadget_ep_cleanup_completed_request.exit.i.dwc3_gadget_ep_cleanup_completed_requests.exit_crit_edge

dwc3_gadget_ep_cleanup_completed_request.exit.i.dwc3_gadget_ep_cleanup_completed_requests.exit_crit_edge: ; preds = %dwc3_gadget_ep_cleanup_completed_request.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_ep_cleanup_completed_requests.exit

dwc3_gadget_ep_cleanup_completed_request.exit.i.for.cond.i_crit_edge: ; preds = %dwc3_gadget_ep_cleanup_completed_request.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

dwc3_gadget_ep_cleanup_completed_requests.exit:   ; preds = %dwc3_gadget_ep_cleanup_completed_request.exit.i.dwc3_gadget_ep_cleanup_completed_requests.exit_crit_edge, %for.cond.i.dwc3_gadget_ep_cleanup_completed_requests.exit_crit_edge
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %dwc3_gadget_ep_cleanup_completed_requests.exit.out_crit_edge

dwc3_gadget_ep_cleanup_completed_requests.exit.out_crit_edge: ; preds = %dwc3_gadget_ep_cleanup_completed_requests.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end5:                                          ; preds = %dwc3_gadget_ep_cleanup_completed_requests.exit
  %41 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bmAttributes.i, align 1
  %45 = and i8 %44, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp.i.not = icmp eq i8 %45, 1
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end5.if.else_crit_edge

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end5
  %46 = ptrtoint ptr %started_list.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %started_list.i, align 4
  %cmp.i70.not = icmp eq ptr %47, %started_list.i
  br i1 %cmp.i70.not, label %land.lhs.true11, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true11:                                  ; preds = %land.lhs.true
  %pending_list = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 2
  %48 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i71 = icmp eq ptr %49, %pending_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %status)
  %cmp = icmp eq i32 %status, -18
  %or.cond = or i1 %cmp, %cmp.i71
  br i1 %or.cond, label %if.then14, label %land.lhs.true11.if.else_crit_edge

land.lhs.true11.if.else_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then14:                                        ; preds = %land.lhs.true11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i) #12
  %50 = and i32 %40, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %50)
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %if.end.i, label %if.then14.dwc3_stop_active_transfer.exit_crit_edge

if.then14.dwc3_stop_active_transfer.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_stop_active_transfer.exit

if.end.i:                                         ; preds = %if.then14
  %resource_index.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 14
  %52 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %resource_index.i, align 4
  %conv.i73 = zext i8 %53 to i32
  %shl.i = shl nuw nsw i32 %conv.i73, 16
  %or9.i = or i32 %shl.i, 2312
  %54 = call ptr @memset(ptr %params.i, i32 0, i32 12)
  %call.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef %or9.i, ptr noundef nonnull %params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end42.i_crit_edge, label %land.rhs.i

if.end.i.if.end42.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b1.i = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end42.i_crit_edge, label %if.then20.i, !prof !231

land.rhs.i.if.end42.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

if.then20.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #12
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then20.i, %land.rhs.i.if.end42.i_crit_edge, %if.end.i.if.end42.i_crit_edge
  %55 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %resource_index.i, align 4
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %or56.i = or i32 %57, 16
  store i32 %or56.i, ptr %flags, align 4
  br label %dwc3_stop_active_transfer.exit

dwc3_stop_active_transfer.exit:                   ; preds = %if.end42.i, %if.then14.dwc3_stop_active_transfer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #12
  br label %out

if.else:                                          ; preds = %land.lhs.true11.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end5.if.else_crit_edge
  %tobool.not.i74 = icmp eq ptr %42, null
  br i1 %tobool.not.i74, label %if.else.out_crit_edge, label %lor.lhs.false.i

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false.i:                                  ; preds = %if.else
  %58 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dwc1, align 4
  %pullups_connected.i = getelementptr inbounds %struct.dwc3, ptr %59, i32 0, i32 79
  %60 = ptrtoint ptr %pullups_connected.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 6)
  %bf.load.i = load i48, ptr %pullups_connected.i, align 4
  %61 = and i48 %bf.load.i, -140703128616960
  %.not.i = icmp eq i48 %61, -140703128616960
  br i1 %.not.i, label %if.end.i75, label %lor.lhs.false.i.out_crit_edge

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i75:                                       ; preds = %lor.lhs.false.i
  %pending_list.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 2
  %62 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %pending_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %63, %pending_list.i
  br i1 %cmp.i.not.i, label %if.end10.i, label %if.end.i75.if.then16_crit_edge

if.end.i75.if.then16_crit_edge:                   ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end10.i:                                       ; preds = %if.end.i75
  %64 = ptrtoint ptr %started_list.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %started_list.i, align 4
  %cmp.not.i.i = icmp eq ptr %65, %started_list.i
  %add.ptr.i.i = getelementptr i8, ptr %65, i32 -56
  %tobool12.not24.i = icmp eq ptr %add.ptr.i.i, null
  %tobool12.not.i = or i1 %cmp.not.i.i, %tobool12.not24.i
  br i1 %tobool12.not.i, label %if.end10.i.out_crit_edge, label %if.end14.i

if.end10.i.out_crit_edge:                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end14.i:                                       ; preds = %if.end10.i
  %num_pending_sgs.i.i = getelementptr i8, ptr %65, i32 20
  %66 = ptrtoint ptr %num_pending_sgs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_pending_sgs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i23.i = icmp eq i32 %67, 0
  br i1 %cmp.i23.i, label %dwc3_gadget_ep_should_continue.exit, label %if.end14.i.if.then16_crit_edge

if.end14.i.if.then16_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

dwc3_gadget_ep_should_continue.exit:              ; preds = %if.end14.i
  %num_queued_sgs.i.i = getelementptr i8, ptr %65, i32 24
  %68 = ptrtoint ptr %num_queued_sgs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_queued_sgs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp1.i.i.not = icmp eq i32 %69, 0
  br i1 %cmp1.i.i.not, label %dwc3_gadget_ep_should_continue.exit.out_crit_edge, label %dwc3_gadget_ep_should_continue.exit.if.then16_crit_edge

dwc3_gadget_ep_should_continue.exit.if.then16_crit_edge: ; preds = %dwc3_gadget_ep_should_continue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

dwc3_gadget_ep_should_continue.exit.out_crit_edge: ; preds = %dwc3_gadget_ep_should_continue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then16:                                        ; preds = %dwc3_gadget_ep_should_continue.exit.if.then16_crit_edge, %if.end14.i.if.then16_crit_edge, %if.end.i75.if.then16_crit_edge
  %call17 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %dep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp ne i32 %call17, 0
  br label %out

out:                                              ; preds = %if.then16, %dwc3_gadget_ep_should_continue.exit.out_crit_edge, %if.end10.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %if.else.out_crit_edge, %dwc3_stop_active_transfer.exit, %dwc3_gadget_ep_cleanup_completed_requests.exit.out_crit_edge
  %no_started_trb.0.off0 = phi i1 [ true, %dwc3_gadget_ep_cleanup_completed_requests.exit.out_crit_edge ], [ true, %dwc3_stop_active_transfer.exit ], [ true, %dwc3_gadget_ep_should_continue.exit.out_crit_edge ], [ %cmp18, %if.then16 ], [ true, %lor.lhs.false.i.out_crit_edge ], [ true, %if.else.out_crit_edge ], [ true, %if.end10.i.out_crit_edge ]
  %ip = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 54
  %70 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %71)
  %cmp23 = icmp eq i32 %71, 21811
  br i1 %cmp23, label %land.lhs.true24, label %out.cleanup45_crit_edge

out.cleanup45_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup45

land.lhs.true24:                                  ; preds = %out
  %revision = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 55
  %72 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429411898, i32 %73)
  %cmp25 = icmp ult i32 %73, 1429411898
  br i1 %cmp25, label %land.lhs.true24.for.body_crit_edge, label %land.lhs.true24.cleanup45_crit_edge

land.lhs.true24.cleanup45_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup45

land.lhs.true24.for.body_crit_edge:               ; preds = %land.lhs.true24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %land.lhs.true24.for.body_crit_edge
  %i.085 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %land.lhs.true24.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dwc3, ptr %1, i32 0, i32 17, i32 %i.085
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx, align 4
  %flags28 = getelementptr inbounds %struct.dwc3_ep, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags28, align 4
  %and29 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %if.end32

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end32:                                         ; preds = %for.body
  %started_list33 = getelementptr inbounds %struct.dwc3_ep, ptr %75, i32 0, i32 3
  %78 = ptrtoint ptr %started_list33 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %started_list33, align 4
  %cmp.i77.not = icmp eq ptr %79, %started_list33
  br i1 %cmp.i77.not, label %if.end32.for.inc_crit_edge, label %if.end32.cleanup45_crit_edge

if.end32.cleanup45_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup45

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %regs = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 30
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %81, i32 1540
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !226
  %83 = call i32 @llvm.bswap.i32(i32 %82) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %81, i32 -49408
  call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50948, i32 noundef %83) #12
  %u1u2 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 49
  %84 = ptrtoint ptr %u1u2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %u1u2, align 4
  %or = or i32 %85, %83
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  call void @arm_heavy_mb() #12
  %88 = call i32 @llvm.bswap.i32(i32 %or) #12
  %add.ptr1.i80 = getelementptr i8, ptr %87, i32 1540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i80, i32 %88) #12, !srcloc !229
  %add.ptr2.i = getelementptr i8, ptr %87, i32 -49408
  call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 50948, i32 noundef %or) #12
  %89 = ptrtoint ptr %u1u2 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %u1u2, align 4
  br label %cleanup45

cleanup45:                                        ; preds = %for.end, %if.end32.cleanup45_crit_edge, %land.lhs.true24.cleanup45_crit_edge, %out.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.1 = phi i1 [ true, %entry.cleanup45_crit_edge ], [ %no_started_trb.0.off0, %for.end ], [ %no_started_trb.0.off0, %land.lhs.true24.cleanup45_crit_edge ], [ %no_started_trb.0.off0, %out.cleanup45_crit_edge ], [ %no_started_trb.0.off0, %if.end32.cleanup45_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_gadget_ep_reclaim_completed_trb(ptr noundef %dep, ptr nocapture noundef %req, ptr noundef %trb, ptr nocapture noundef readonly %event, i32 noundef %chain) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trb_dequeue.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 11
  %0 = ptrtoint ptr %trb_dequeue.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %trb_dequeue.i, align 1
  %inc.i.i = add i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %inc.i.i)
  %cmp.i.i = icmp eq i8 %inc.i.i, -1
  %spec.select.i.i = select i1 %cmp.i.i, i8 0, i8 %inc.i.i
  %2 = ptrtoint ptr %trb_dequeue.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %spec.select.i.i, ptr %trb_dequeue.i, align 1
  tail call fastcc void @trace_dwc3_complete_trb(ptr noundef %dep, ptr noundef %trb)
  %num_trbs = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 12
  %3 = ptrtoint ptr %num_trbs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_trbs, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %num_trbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chain)
  %tobool.not = icmp eq i32 %chain, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ctrl = getelementptr inbounds %struct.dwc3_trb, ptr %trb, i32 0, i32 3
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %ctrl, align 1
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %and3 = and i32 %6, -2
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %and3, ptr %ctrl, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %desc = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmAttributes.i, align 1
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i.not = icmp eq i8 %12, 1
  br i1 %cmp.i.not, label %land.lhs.true5, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true5:                                   ; preds = %if.end
  %ctrl6 = getelementptr inbounds %struct.dwc3_trb, ptr %trb, i32 0, i32 3
  %13 = ptrtoint ptr %ctrl6 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %ctrl6, align 1
  %and7 = and i32 %14, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %land.lhs.true5.if.end14_crit_edge, label %if.then9

land.lhs.true5.if.end14_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  %and11 = lshr i32 %14, 14
  %shr = and i32 %and11, 65535
  %interval = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 16
  %15 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %interval, align 4
  %neg = sub i32 0, %16
  %and12 = and i32 %shr, %neg
  %frame_number13 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 10
  %17 = ptrtoint ptr %frame_number13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and12, ptr %frame_number13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true5.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %18 = ptrtoint ptr %trb to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %trb, align 1
  %dwc = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %20 = ptrtoint ptr %dwc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dwc, align 4
  %bounce_addr = getelementptr inbounds %struct.dwc3, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %bounce_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bounce_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp = icmp eq i32 %19, %23
  br i1 %cmp, label %land.lhs.true16, label %if.end14.if.end25_crit_edge

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true16:                                  ; preds = %if.end14
  %bph = getelementptr inbounds %struct.dwc3_trb, ptr %trb, i32 0, i32 1
  %24 = ptrtoint ptr %bph to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %bph, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp21 = icmp eq i32 %25, 0
  br i1 %cmp21, label %if.then22, label %land.lhs.true16.if.end25_crit_edge

land.lhs.true16.if.end25_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then22:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl23 = getelementptr inbounds %struct.dwc3_trb, ptr %trb, i32 0, i32 3
  %26 = ptrtoint ptr %ctrl23 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %ctrl23, align 1
  %and24 = and i32 %27, -2
  store i32 %and24, ptr %ctrl23, align 1
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true16.if.end25_crit_edge, %if.end14.if.end25_crit_edge
  %size = getelementptr inbounds %struct.dwc3_trb, ptr %trb, i32 0, i32 2
  %28 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %size, align 1
  %and26 = and i32 %29, 16777215
  %remaining = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 7
  %30 = ptrtoint ptr %remaining to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %remaining, align 4
  %add = add i32 %31, %and26
  store i32 %add, ptr %remaining, align 4
  %ctrl27 = getelementptr inbounds %struct.dwc3_trb, ptr %trb, i32 0, i32 3
  %32 = ptrtoint ptr %ctrl27 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %ctrl27, align 1
  %and28 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end33, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %34 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %bf.load = load i32, ptr %event, align 1
  %35 = and i32 %bf.load, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool35.not = icmp ne i32 %35, 0
  %36 = and i1 %tobool.not, %tobool35.not
  br i1 %36, label %if.end33.cleanup_crit_edge, label %if.end39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %37 = and i32 %33, 2050
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %38 = icmp ne i32 %37, 0
  %spec.select = zext i1 %38 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end33.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then22
  %retval.0 = phi i32 [ 1, %if.then22 ], [ 1, %if.end25.cleanup_crit_edge ], [ 1, %if.end33.cleanup_crit_edge ], [ %spec.select, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_complete_trb(ptr noundef %dep, ptr noundef %trb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_complete_trb, i32 0, i32 1), ptr blockaddress(@trace_dwc3_complete_trb, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !251
  %call42 = tail call i32 @__traceiter_dwc3_complete_trb(ptr noundef null, ptr noundef %dep, ptr noundef %trb) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !252
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_complete_trb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_complete_trb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_complete_trb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_complete_trb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 288, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dwc3_gadget_start_isoc(ptr noundef %dep) unnamed_addr #0 align 64 {
entry:
  %params.i.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %params.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %params = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %dwc2 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %2 = ptrtoint ptr %dwc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dwc2, align 4
  %pending_list = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 2
  %4 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %5, %pending_list
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %started_list = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 3
  %6 = ptrtoint ptr %started_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %started_list, align 4
  %cmp.i114.not = icmp eq ptr %7, %started_list
  br i1 %cmp.i114.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 32
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dis_start_transfer_quirk = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 79
  %10 = ptrtoint ptr %dis_start_transfer_quirk to i32
  call void @__asan_loadN_noabort(i32 %10, i32 6)
  %bf.load = load i48, ptr %dis_start_transfer_quirk, align 4
  %11 = and i48 %bf.load, 4294967296
  %tobool5.not = icmp eq i48 %11, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true6:                                   ; preds = %if.end
  %ip = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 54
  %12 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13105, i32 %13)
  %cmp = icmp eq i32 %13, 13105
  br i1 %cmp, label %land.lhs.true7, label %land.lhs.true6.if.end29_crit_edge

land.lhs.true6.if.end29_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true7:                                   ; preds = %land.lhs.true6
  %revision = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 55
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825700394, i32 %15)
  %cmp8 = icmp ult i32 %15, 825700394
  br i1 %cmp8, label %land.lhs.true7.if.then19_crit_edge, label %land.lhs.true11

land.lhs.true7.if.then19_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %16 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825700394, i32 %17)
  %cmp13 = icmp eq i32 %17, 825700394
  br i1 %cmp13, label %land.lhs.true14, label %land.lhs.true11.if.end29_crit_edge

land.lhs.true11.if.end29_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %version_type = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 56
  %18 = ptrtoint ptr %version_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version_type, align 4
  %20 = add i32 %19, -1700868145
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %21 = icmp ult i32 %20, 6
  br i1 %21, label %land.lhs.true14.if.then19_crit_edge, label %land.lhs.true14.if.end29_crit_edge

land.lhs.true14.if.end29_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true14.if.then19_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true14.if.then19_crit_edge, %land.lhs.true7.if.then19_crit_edge
  %gadget = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 18
  %22 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gadget, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp20 = icmp ult i32 %25, 4
  br i1 %cmp20, label %land.lhs.true21, label %if.then19.if.end29_crit_edge

if.then19.if.end29_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true21:                                  ; preds = %if.then19
  %direction = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %26 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load22 = load i8, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load22)
  %tobool25.not = icmp sgt i8 %bf.load22, -1
  br i1 %tobool25.not, label %land.lhs.true21.if.end29_crit_edge, label %if.then26

land.lhs.true21.if.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true21
  %combo_num.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 19
  %27 = ptrtoint ptr %combo_num.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %combo_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp144.i = icmp ult i8 %28, 2
  br i1 %cmp144.i, label %while.body.lr.ph.i, label %if.then26.while.end.i_crit_edge

if.then26.while.end.i_crit_edge:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then26
  %29 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params.i, i32 0, i32 2
  %frame_number.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 15
  %interval.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 16
  %start_cmd_status20.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 20
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %31 = phi i8 [ %28, %while.body.lr.ph.i ], [ %inc.i, %cleanup.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i) #12
  %32 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %params.i, align 4, !annotation !238
  %33 = ptrtoint ptr %frame_number.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %frame_number.i, align 4
  %and.i = and i32 %34, 16383
  %conv3.i = zext i8 %31 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 14
  %or.i = or i32 %and.i, %shl.i
  %35 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %interval.i, align 4
  %37 = call i32 @llvm.umax.i32(i32 %36, i32 4) #12
  %add.i = add i32 %or.i, %37
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %30, align 4
  %39 = ptrtoint ptr %dwc2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dwc2, align 4
  %bounce_addr8.i = getelementptr inbounds %struct.dwc3, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %bounce_addr8.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bounce_addr8.i, align 4
  %43 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %29, align 4
  %shl10.i = shl i32 %add.i, 16
  %or11.i = or i32 %shl10.i, 6
  %call.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef %or11.i, ptr noundef nonnull %params.i) #12
  %44 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call.i, label %if.then.i [
    i32 0, label %while.body.i.if.end.i_crit_edge
    i32 -11, label %while.body.i.if.end.i_crit_edge124
  ]

while.body.i.if.end.i_crit_edge124:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %start_cmd_status20.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %start_cmd_status20.i, align 4
  %46 = ptrtoint ptr %combo_num.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %combo_num.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge124
  %47 = ptrtoint ptr %combo_num.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %combo_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp17.i = icmp eq i8 %48, 0
  br i1 %cmp17.i, label %if.then19.i, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %start_cmd_status20.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call.i, ptr %start_cmd_status20.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end.i.if.end21.i_crit_edge
  %inc.i = add i8 %48, 1
  %50 = ptrtoint ptr %combo_num.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %inc.i, ptr %combo_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp23.i = icmp eq i32 %call.i, 0
  br i1 %cmp23.i, label %if.then25.i, label %cleanup.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i.i) #12
  %flags.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %51 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i.i, align 4
  %53 = and i32 %52, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %53)
  %54 = icmp eq i32 %53, 8
  br i1 %54, label %if.end.i.i, label %if.then25.i.dwc3_stop_active_transfer.exit.i_crit_edge

if.then25.i.dwc3_stop_active_transfer.exit.i_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_stop_active_transfer.exit.i

if.end.i.i:                                       ; preds = %if.then25.i
  %resource_index.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 14
  %55 = ptrtoint ptr %resource_index.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %resource_index.i.i, align 4
  %conv.i.i = zext i8 %56 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %or9.i.i = or i32 %shl.i.i, 2312
  %57 = call ptr @memset(ptr %params.i.i, i32 0, i32 12)
  %call.i.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef %or9.i.i, ptr noundef nonnull %params.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end.i.i.if.end42.i.i_crit_edge, label %land.rhs.i.i

if.end.i.i.if.end42.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i.i

land.rhs.i.i:                                     ; preds = %if.end.i.i
  %.b1.i.i = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.if.end42.i.i_crit_edge, label %if.then20.i.i, !prof !231

land.rhs.i.i.if.end42.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i.i

if.then20.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #12
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then20.i.i, %land.rhs.i.i.if.end42.i.i_crit_edge, %if.end.i.i.if.end42.i.i_crit_edge
  %58 = ptrtoint ptr %resource_index.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %resource_index.i.i, align 4
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i.i, align 4
  %or56.i.i = or i32 %60, 16
  store i32 %or56.i.i, ptr %flags.i.i, align 4
  br label %dwc3_stop_active_transfer.exit.i

dwc3_stop_active_transfer.exit.i:                 ; preds = %if.end42.i.i, %if.then25.i.dwc3_stop_active_transfer.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #12
  br label %cleanup

cleanup.i:                                        ; preds = %if.end21.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #12
  %cmp.i116 = icmp ult i8 %inc.i, 2
  br i1 %cmp.i116, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.while.end.i_crit_edge

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.then26.while.end.i_crit_edge
  %61 = xor i1 %cmp144.i, true
  %start_cmd_status29.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 20
  %62 = ptrtoint ptr %start_cmd_status29.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %start_cmd_status29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp30.i = icmp eq i32 %63, 0
  %brmerge.i = or i1 %cmp144.i, %cmp30.i
  br i1 %brmerge.i, label %if.else.i, label %while.end.i.if.end64.sink.split.i_crit_edge

while.end.i.if.end64.sink.split.i_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64.sink.split.i

if.else.i:                                        ; preds = %while.end.i
  %brmerge133.i = or i1 %cmp30.i, %61
  br i1 %brmerge133.i, label %if.else46.i, label %if.else.i.if.end64.sink.split.i_crit_edge

if.else.i.if.end64.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64.sink.split.i

if.else46.i:                                      ; preds = %if.else.i
  %64 = and i1 %cmp144.i, %cmp30.i
  br i1 %64, label %if.else46.i.if.end64.sink.split.i_crit_edge, label %if.else53.i

if.else46.i.if.end64.sink.split.i_crit_edge:      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64.sink.split.i

if.else53.i:                                      ; preds = %if.else46.i
  %65 = and i1 %cmp30.i, %61
  br i1 %65, label %if.else53.i.if.end64.sink.split.i_crit_edge, label %if.else53.i.if.end64.i_crit_edge

if.else53.i.if.end64.i_crit_edge:                 ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64.i

if.else53.i.if.end64.sink.split.i_crit_edge:      ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64.sink.split.i

if.end64.sink.split.i:                            ; preds = %if.else53.i.if.end64.sink.split.i_crit_edge, %if.else46.i.if.end64.sink.split.i_crit_edge, %if.else.i.if.end64.sink.split.i_crit_edge, %while.end.i.if.end64.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 1, %while.end.i.if.end64.sink.split.i_crit_edge ], [ 2, %if.else.i.if.end64.sink.split.i_crit_edge ], [ 3, %if.else46.i.if.end64.sink.split.i_crit_edge ], [ 0, %if.else53.i.if.end64.sink.split.i_crit_edge ]
  %66 = ptrtoint ptr %combo_num.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %.sink.i, ptr %combo_num.i, align 1
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.end64.sink.split.i, %if.else53.i.if.end64.i_crit_edge
  %frame_number65.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 15
  %67 = ptrtoint ptr %frame_number65.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %frame_number65.i, align 4
  %and66.i = and i32 %68, 16383
  %69 = ptrtoint ptr %combo_num.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %combo_num.i, align 1
  %conv68.i = zext i8 %70 to i32
  %shl69.i = shl nuw nsw i32 %conv68.i, 14
  %or71.i = or i32 %shl69.i, %and66.i
  %interval72.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 16
  %71 = ptrtoint ptr %interval72.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %interval72.i, align 4
  %73 = call i32 @llvm.umax.i32(i32 %72, i32 4) #12
  %add81.i = add i32 %or71.i, %73
  %74 = ptrtoint ptr %frame_number65.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add81.i, ptr %frame_number65.i, align 4
  %75 = ptrtoint ptr %start_cmd_status29.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %start_cmd_status29.i, align 4
  %76 = ptrtoint ptr %combo_num.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %combo_num.i, align 1
  %call84.i = call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %dep) #12
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true21.if.end29_crit_edge, %if.then19.if.end29_crit_edge, %land.lhs.true14.if.end29_crit_edge, %land.lhs.true11.if.end29_crit_edge, %land.lhs.true6.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 5
  %77 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %bInterval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %78)
  %cmp30 = icmp ult i8 %78, 15
  br i1 %cmp30, label %land.lhs.true32, label %if.end29.if.end49_crit_edge

if.end29.if.end49_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

land.lhs.true32:                                  ; preds = %if.end29
  %gadget33 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 18
  %79 = ptrtoint ptr %gadget33 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %gadget33, align 4
  %speed34 = getelementptr inbounds %struct.usb_gadget, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %speed34 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %speed34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp35 = icmp ugt i32 %82, 2
  br i1 %cmp35, label %if.then37, label %land.lhs.true32.if.end49_crit_edge

land.lhs.true32.if.end49_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then37:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  %regs.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 30
  %83 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %84, i32 1548
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !226
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i.i = getelementptr i8, ptr %84, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 50956, i32 noundef %86) #12
  %and.i117 = lshr i32 %86, 3
  %shr.i = and i32 %and.i117, 16383
  %frame_number = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 15
  %87 = ptrtoint ptr %frame_number to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %frame_number, align 4
  %and = and i32 %88, 16383
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %and)
  %cmp39 = icmp ult i32 %shr.i, %and
  %and42 = and i32 %88, -16384
  %or43 = or i32 %and42, %shr.i
  %add = add i32 %or43, 16384
  %spec.select = select i1 %cmp39, i32 %add, i32 %or43
  %89 = ptrtoint ptr %frame_number to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %spec.select, ptr %frame_number, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then37, %land.lhs.true32.if.end49_crit_edge, %if.end29.if.end49_crit_edge
  %frame_number52 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 15
  %interval = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 16
  %90 = ptrtoint ptr %frame_number52 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %frame_number52, align 4
  %92 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %interval, align 4
  %add54 = add i32 %93, %91
  %neg = sub i32 0, %93
  %and56 = and i32 %add54, %neg
  store i32 %and56, ptr %frame_number52, align 4
  %call58 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %dep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, -11
  br i1 %cmp59.not, label %for.cond, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond:                                         ; preds = %if.end49
  %94 = ptrtoint ptr %frame_number52 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %frame_number52, align 4
  %96 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %interval, align 4
  %mul.1 = shl i32 %97, 1
  %add54.1 = add i32 %mul.1, %95
  %neg.1 = sub i32 0, %97
  %and56.1 = and i32 %add54.1, %neg.1
  store i32 %and56.1, ptr %frame_number52, align 4
  %call58.1 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %dep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call58.1)
  %cmp59.not.1 = icmp eq i32 %call58.1, -11
  br i1 %cmp59.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %98 = ptrtoint ptr %frame_number52 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %frame_number52, align 4
  %100 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %interval, align 4
  %mul.2 = mul i32 %101, 3
  %add54.2 = add i32 %mul.2, %99
  %neg.2 = sub i32 0, %101
  %and56.2 = and i32 %add54.2, %neg.2
  store i32 %and56.2, ptr %frame_number52, align 4
  %call58.2 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %dep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call58.2)
  %cmp59.not.2 = icmp eq i32 %call58.2, -11
  br i1 %cmp59.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %102 = ptrtoint ptr %frame_number52 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %frame_number52, align 4
  %104 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %interval, align 4
  %mul.3 = shl i32 %105, 2
  %add54.3 = add i32 %mul.3, %103
  %neg.3 = sub i32 0, %105
  %and56.3 = and i32 %add54.3, %neg.3
  store i32 %and56.3, ptr %frame_number52, align 4
  %call58.3 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %dep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call58.3)
  %cmp59.not.3 = icmp eq i32 %call58.3, -11
  br i1 %cmp59.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %106 = ptrtoint ptr %frame_number52 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %frame_number52, align 4
  %108 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %interval, align 4
  %mul.4 = mul i32 %109, 5
  %add54.4 = add i32 %mul.4, %107
  %neg.4 = sub i32 0, %109
  %and56.4 = and i32 %add54.4, %neg.4
  store i32 %and56.4, ptr %frame_number52, align 4
  %call58.4 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %dep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call58.4)
  %cmp59.not.4 = icmp eq i32 %call58.4, -11
  br i1 %cmp59.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #12
  %resource_index = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 14
  %110 = ptrtoint ptr %resource_index to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %resource_index, align 4
  %conv66 = zext i8 %111 to i32
  %shl = shl nuw nsw i32 %conv66, 16
  %or67 = or i32 %shl, 264
  store i8 0, ptr %resource_index, align 4
  %112 = call ptr @memset(ptr %params, i32 0, i32 12)
  %call69 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef %or67, ptr noundef nonnull %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %for.cond.4.if.end74_crit_edge

for.cond.4.if.end74_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then71:                                        ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #14
  %flags72 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %113 = ptrtoint ptr %flags72 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags72, align 4
  %or73 = or i32 %114, 16
  store i32 %or73, ptr %flags72, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %for.cond.4.if.end74_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end64.i, %dwc3_stop_active_transfer.exit.i, %if.then.i, %if.then
  %retval.0 = phi i32 [ -11, %if.then ], [ %call69, %if.end74 ], [ %call84.i, %if.end64.i ], [ 0, %dwc3_stop_active_transfer.exit.i ], [ 0, %if.then.i ], [ %call58, %if.end49.cleanup_crit_edge ], [ %call58.1, %for.cond.cleanup_crit_edge ], [ %call58.2, %for.cond.1.cleanup_crit_edge ], [ %call58.3, %for.cond.2.cleanup_crit_edge ], [ %call58.4, %for.cond.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dwc3_gadget_ep0_set_halt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_ep0_send_delayed_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_gadget_disconnect_interrupt(ptr noundef %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dwc3_gadget_set_link_state(ptr noundef %dwc, i32 noundef 5)
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 1540
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !226
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50948, i32 noundef %3) #12
  %and.i = and i32 %3, -5601
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %6) #12, !srcloc !229
  %add.ptr2.i.i = getelementptr i8, ptr %5, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 50948, i32 noundef %and.i) #12
  %async_callbacks.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %7 = ptrtoint ptr %async_callbacks.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 6)
  %bf.load.i = load i48, ptr %async_callbacks.i, align 4
  %8 = and i48 %bf.load.i, 32
  %tobool.not.i = icmp eq i48 %8, 0
  br i1 %tobool.not.i, label %entry.dwc3_disconnect_gadget.exit_crit_edge, label %land.lhs.true.i

entry.dwc3_disconnect_gadget.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_disconnect_gadget.exit

land.lhs.true.i:                                  ; preds = %entry
  %gadget_driver.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 19
  %9 = ptrtoint ptr %gadget_driver.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gadget_driver.i, align 4
  %disconnect.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disconnect.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.dwc3_disconnect_gadget.exit_crit_edge, label %if.then.i

land.lhs.true.i.dwc3_disconnect_gadget.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_disconnect_gadget.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %13 = ptrtoint ptr %gadget_driver.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gadget_driver.i, align 4
  %disconnect3.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %disconnect3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disconnect3.i, align 4
  %gadget.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %17 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gadget.i, align 4
  tail call void %16(ptr noundef %18) #12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  br label %dwc3_disconnect_gadget.exit

dwc3_disconnect_gadget.exit:                      ; preds = %if.then.i, %land.lhs.true.i.dwc3_disconnect_gadget.exit_crit_edge, %entry.dwc3_disconnect_gadget.exit_crit_edge
  %gadget = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %19 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gadget, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %speed, align 8
  %22 = ptrtoint ptr %async_callbacks.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 6)
  %bf.load = load i48, ptr %async_callbacks.i, align 4
  %bf.clear = and i48 %bf.load, -17179869185
  store i48 %bf.clear, ptr %async_callbacks.i, align 4
  %23 = load ptr, ptr %gadget, align 4
  tail call void @usb_gadget_set_state(ptr noundef %23, i32 noundef 0) #12
  %24 = ptrtoint ptr %async_callbacks.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 6)
  %bf.load4 = load i48, ptr %async_callbacks.i, align 4
  %bf.clear5 = and i48 %bf.load4, 140737488355327
  store i48 %bf.clear5, ptr %async_callbacks.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_gadget_reset_interrupt(ptr noundef %dwc) unnamed_addr #0 align 64 {
entry:
  %params.i.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %connected = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %0 = ptrtoint ptr %connected to i32
  call void @__asan_loadN_noabort(i32 %0, i32 6)
  %bf.load = load i48, ptr %connected, align 4
  %bf.clear = and i48 %bf.load, 140737488355327
  store i48 %bf.clear, ptr %connected, align 4
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %2)
  %cmp = icmp eq i32 %2, 21811
  br i1 %cmp, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %revision = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %3 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429411977, i32 %4)
  %cmp1 = icmp ugt i32 %4, 1429411977
  %5 = and i48 %bf.load, 17179869184
  %tobool.not = icmp eq i48 %5, 0
  %or.cond = select i1 %cmp1, i1 true, i1 %tobool.not
  br i1 %or.cond, label %land.lhs.true.if.end5_crit_edge, label %if.then4

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dwc3_gadget_disconnect_interrupt(ptr noundef %dwc)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %gadget_driver.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 19
  %6 = ptrtoint ptr %gadget_driver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gadget_driver.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end5.dwc3_reset_gadget.exit_crit_edge, label %if.end.i

if.end5.dwc3_reset_gadget.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_reset_gadget.exit

if.end.i:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %connected to i32
  call void @__asan_loadN_noabort(i32 %8, i32 6)
  %bf.load.i = load i48, ptr %connected, align 4
  %9 = and i48 %bf.load.i, 32
  %tobool1.not.i = icmp eq i48 %9, 0
  br i1 %tobool1.not.i, label %if.end.i.dwc3_reset_gadget.exit_crit_edge, label %land.lhs.true.i

if.end.i.dwc3_reset_gadget.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_reset_gadget.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %gadget.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 18
  %10 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gadget.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.dwc3_reset_gadget.exit_crit_edge, label %if.then2.i

land.lhs.true.i.dwc3_reset_gadget.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_reset_gadget.exit

if.then2.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %14 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gadget.i, align 4
  %16 = ptrtoint ptr %gadget_driver.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gadget_driver.i, align 4
  tail call void @usb_gadget_udc_reset(ptr noundef %15, ptr noundef %17) #12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  br label %dwc3_reset_gadget.exit

dwc3_reset_gadget.exit:                           ; preds = %if.then2.i, %land.lhs.true.i.dwc3_reset_gadget.exit_crit_edge, %if.end.i.dwc3_reset_gadget.exit_crit_edge, %if.end5.dwc3_reset_gadget.exit_crit_edge
  %num_eps.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 65
  %18 = ptrtoint ptr %num_eps.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_eps.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp8.i = icmp ugt i8 %19, 2
  br i1 %cmp8.i, label %dwc3_reset_gadget.exit.for.body.i_crit_edge, label %dwc3_reset_gadget.exit.dwc3_stop_active_transfers.exit_crit_edge

dwc3_reset_gadget.exit.dwc3_stop_active_transfers.exit_crit_edge: ; preds = %dwc3_reset_gadget.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_stop_active_transfers.exit

dwc3_reset_gadget.exit.for.body.i_crit_edge:      ; preds = %dwc3_reset_gadget.exit
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %dwc3_reset_gadget.exit.for.body.i_crit_edge
  %epnum.09.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 2, %dwc3_reset_gadget.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 %epnum.09.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i31 = icmp eq ptr %21, null
  br i1 %tobool.not.i31, label %for.body.i.cleanup.i_crit_edge, label %if.end.i32

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i32:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dwc3_remove_requests(ptr noundef nonnull %21) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i32, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %epnum.09.i, 1
  %22 = ptrtoint ptr %num_eps.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_eps.i, align 1
  %conv.i = zext i8 %23 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.dwc3_stop_active_transfers.exit_crit_edge

cleanup.i.dwc3_stop_active_transfers.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_stop_active_transfers.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

dwc3_stop_active_transfers.exit:                  ; preds = %cleanup.i.dwc3_stop_active_transfers.exit_crit_edge, %dwc3_reset_gadget.exit.dwc3_stop_active_transfers.exit_crit_edge
  %24 = ptrtoint ptr %connected to i32
  call void @__asan_loadN_noabort(i32 %24, i32 6)
  %bf.load7 = load i48, ptr %connected, align 4
  %bf.set9 = or i48 %bf.load7, -140737488355328
  store i48 %bf.set9, ptr %connected, align 4
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %26, i32 1540
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !226
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %26, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50948, i32 noundef %28) #12
  %and.i = and i32 %28, -511
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %31 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %add.ptr1.i.i = getelementptr i8, ptr %30, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %31) #12, !srcloc !229
  %add.ptr2.i.i = getelementptr i8, ptr %30, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 50948, i32 noundef %and.i) #12
  %test_mode = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 69
  %32 = ptrtoint ptr %test_mode to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %test_mode, align 4
  br label %for.body.i35

for.body.i35:                                     ; preds = %cleanup.i40.for.body.i35_crit_edge, %dwc3_stop_active_transfers.exit
  %epnum.053.i = phi i32 [ 1, %dwc3_stop_active_transfers.exit ], [ %inc.i39, %cleanup.i40.for.body.i35_crit_edge ]
  %arrayidx.i33 = getelementptr %struct.dwc3, ptr %dwc, i32 0, i32 17, i32 %epnum.053.i
  %33 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i33, align 4
  %tobool.not.i34 = icmp eq ptr %34, null
  br i1 %tobool.not.i34, label %for.body.i35.cleanup.i40_crit_edge, label %if.end.i38

for.body.i35.cleanup.i40_crit_edge:               ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i40

if.end.i38:                                       ; preds = %for.body.i35
  %flags.i = getelementptr inbounds %struct.dwc3_ep, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and.i36 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool1.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool1.not.i37, label %if.end.i38.cleanup.i40_crit_edge, label %if.end3.i

if.end.i38.cleanup.i40_crit_edge:                 ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i40

if.end3.i:                                        ; preds = %if.end.i38
  %and5.i = and i32 %36, -3
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and5.i, ptr %flags.i, align 4
  %dwc1.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %34, i32 0, i32 7
  %38 = ptrtoint ptr %dwc1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dwc1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i.i) #12
  %direction.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %34, i32 0, i32 18
  %40 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i.i = load i8, ptr %direction.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end3.i.dwc3_send_clear_stall_ep_cmd.exit.i_crit_edge, label %land.lhs.true.i.i

if.end3.i.dwc3_send_clear_stall_ep_cmd.exit.i_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_send_clear_stall_ep_cmd.exit.i

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %ip.i.i = getelementptr inbounds %struct.dwc3, ptr %39, i32 0, i32 54
  %41 = ptrtoint ptr %ip.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ip.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %42)
  %cmp.i.i = icmp eq i32 %42, 21811
  br i1 %cmp.i.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i.land.lhs.true4.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true4.i.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true4.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %revision.i.i = getelementptr inbounds %struct.dwc3, ptr %39, i32 0, i32 55
  %43 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429415434, i32 %44)
  %cmp3.i.i = icmp ult i32 %44, 1429415434
  br i1 %cmp3.i.i, label %land.lhs.true2.i.i.dwc3_send_clear_stall_ep_cmd.exit.i_crit_edge, label %land.lhs.true2.i.i.land.lhs.true4.i.i_crit_edge

land.lhs.true2.i.i.land.lhs.true4.i.i_crit_edge:  ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true4.i.i

land.lhs.true2.i.i.dwc3_send_clear_stall_ep_cmd.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_send_clear_stall_ep_cmd.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true2.i.i.land.lhs.true4.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true4.i.i_crit_edge
  %gadget.i.i = getelementptr inbounds %struct.dwc3, ptr %39, i32 0, i32 18
  %45 = ptrtoint ptr %gadget.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %gadget.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_gadget, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %speed.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %48)
  %cmp5.inv.i.i = icmp ult i32 %48, 5
  %spec.select.i.i = select i1 %cmp5.inv.i.i, i32 5, i32 2053
  br label %dwc3_send_clear_stall_ep_cmd.exit.i

dwc3_send_clear_stall_ep_cmd.exit.i:              ; preds = %land.lhs.true4.i.i, %land.lhs.true2.i.i.dwc3_send_clear_stall_ep_cmd.exit.i_crit_edge, %if.end3.i.dwc3_send_clear_stall_ep_cmd.exit.i_crit_edge
  %cmd.0.i.i = phi i32 [ 5, %land.lhs.true2.i.i.dwc3_send_clear_stall_ep_cmd.exit.i_crit_edge ], [ 5, %if.end3.i.dwc3_send_clear_stall_ep_cmd.exit.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true4.i.i ]
  %49 = call ptr @memset(ptr %params.i.i, i32 0, i32 12)
  %call.i.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef nonnull %34, i32 noundef %cmd.0.i.i, ptr noundef nonnull %params.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %dwc3_send_clear_stall_ep_cmd.exit.i.cleanup.i40_crit_edge, label %land.rhs.i

dwc3_send_clear_stall_ep_cmd.exit.i.cleanup.i40_crit_edge: ; preds = %dwc3_send_clear_stall_ep_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i40

land.rhs.i:                                       ; preds = %dwc3_send_clear_stall_ep_cmd.exit.i
  %.b52.i = load i1, ptr @dwc3_clear_stall_all_ep.__already_done, align 1
  br i1 %.b52.i, label %land.rhs.i.cleanup.i40_crit_edge, label %if.then14.i, !prof !231

land.rhs.i.cleanup.i40_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i40

if.then14.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dwc3_clear_stall_all_ep.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3670, i32 noundef 9, ptr noundef null) #12
  br label %cleanup.i40

cleanup.i40:                                      ; preds = %if.then14.i, %land.rhs.i.cleanup.i40_crit_edge, %dwc3_send_clear_stall_ep_cmd.exit.i.cleanup.i40_crit_edge, %if.end.i38.cleanup.i40_crit_edge, %for.body.i35.cleanup.i40_crit_edge
  %inc.i39 = add nuw nsw i32 %epnum.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i39, 32
  br i1 %exitcond.not.i, label %dwc3_clear_stall_all_ep.exit, label %cleanup.i40.for.body.i35_crit_edge

cleanup.i40.for.body.i35_crit_edge:               ; preds = %cleanup.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i35

dwc3_clear_stall_all_ep.exit:                     ; preds = %cleanup.i40
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr1.i42 = getelementptr i8, ptr %51, i32 1536
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i42) #12, !srcloc !226
  %53 = call i32 @llvm.bswap.i32(i32 %52) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i43 = getelementptr i8, ptr %51, i32 -49408
  call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i43, i32 noundef 50944, i32 noundef %53) #12
  %and12 = and i32 %53, -1017
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  call void @arm_heavy_mb() #12
  %56 = call i32 @llvm.bswap.i32(i32 %and12) #12
  %add.ptr1.i45 = getelementptr i8, ptr %55, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i45, i32 %56) #12, !srcloc !229
  %add.ptr2.i = getelementptr i8, ptr %55, i32 -49408
  call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 50944, i32 noundef %and12) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dwc3_gadget_ep_enable(ptr noundef %dep, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  %params.i172 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %params.i134 = alloca %struct.dwc3_gadget_ep_cmd_params, align 8
  %params.i.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 8
  %params.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %params = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %dwc2 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %2 = ptrtoint ptr %dwc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dwc2, align 4
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %entry
  %do_fifo_resize.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 79
  %6 = ptrtoint ptr %do_fifo_resize.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 6)
  %bf.load.i = load i48, ptr %do_fifo_resize.i, align 4
  %7 = and i48 %bf.load.i, 68719476736
  %tobool.not.i = icmp eq i48 %7, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool2.not.i = icmp sgt i8 %9, -1
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %lor.lhs.false.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end.i
  %number.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 12
  %10 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i = icmp ugt i8 %11, 1
  %and.i = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  %or.cond = select i1 %cmp.i, i1 %tobool6.not.i, i1 false
  br i1 %or.cond, label %if.end8.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %hwparams7.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 66, i32 7
  %12 = ptrtoint ptr %hwparams7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwparams7.i, align 4
  %and9.i = and i32 %13, 65535
  %maxburst.i = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 7
  %14 = ptrtoint ptr %maxburst.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 7)
  %bf.load11.i = load i56, ptr %maxburst.i, align 2
  %15 = and i56 %bf.load11.i, 60
  %cmp15.not.i = icmp eq i56 %15, 0
  br i1 %cmp15.not.i, label %if.end8.i.lor.lhs.false21.i_crit_edge, label %land.lhs.true.i

if.end8.i.lor.lhs.false21.i_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false21.i

land.lhs.true.i:                                  ; preds = %if.end8.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bmAttributes.i.i, align 1
  %18 = and i8 %17, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.i.not.i = icmp eq i8 %18, 2
  br i1 %cmp.i.not.i, label %land.lhs.true.i.if.then26.i_crit_edge, label %land.lhs.true.i.lor.lhs.false21.i_crit_edge

land.lhs.true.i.lor.lhs.false21.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false21.i

land.lhs.true.i.if.then26.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

lor.lhs.false21.i:                                ; preds = %land.lhs.true.i.lor.lhs.false21.i_crit_edge, %if.end8.i.lor.lhs.false21.i_crit_edge
  %bmAttributes.i160.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %bmAttributes.i160.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bmAttributes.i160.i, align 1
  %21 = and i8 %20, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp.i161.not.i = icmp eq i8 %21, 1
  br i1 %cmp.i161.not.i, label %lor.lhs.false21.i.if.then26.i_crit_edge, label %lor.lhs.false21.i.if.end27.i_crit_edge

lor.lhs.false21.i.if.end27.i_crit_edge:           ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

lor.lhs.false21.i.if.then26.i_crit_edge:          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

if.then26.i:                                      ; preds = %lor.lhs.false21.i.if.then26.i_crit_edge, %land.lhs.true.i.if.then26.i_crit_edge
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %lor.lhs.false21.i.if.end27.i_crit_edge
  %num_fifos.0.i = phi i32 [ 3, %if.then26.i ], [ 1, %lor.lhs.false21.i.if.end27.i_crit_edge ]
  %22 = and i56 %bf.load11.i, 62
  %cmp34.i = icmp ugt i56 %22, 12
  br i1 %cmp34.i, label %land.lhs.true36.i, label %if.end27.i.if.end46.i_crit_edge

if.end27.i.if.end46.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i

land.lhs.true36.i:                                ; preds = %if.end27.i
  %bmAttributes.i163.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %bmAttributes.i163.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bmAttributes.i163.i, align 1
  %25 = and i8 %24, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp.i164.not.i = icmp eq i8 %25, 2
  br i1 %cmp.i164.not.i, label %land.lhs.true41.i, label %land.lhs.true36.i.if.end46.i_crit_edge

land.lhs.true36.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i

land.lhs.true41.i:                                ; preds = %land.lhs.true36.i
  %ip.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 54
  %26 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13105, i32 %27)
  %cmp42.i = icmp eq i32 %27, 13105
  br i1 %cmp42.i, label %if.then44.i, label %land.lhs.true41.i.if.end46.i_crit_edge

land.lhs.true41.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i

if.then44.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_fifo_resize_max_num.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 77
  %28 = ptrtoint ptr %tx_fifo_resize_max_num.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx_fifo_resize_max_num.i, align 4
  %conv45.i = zext i8 %29 to i32
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then44.i, %land.lhs.true41.i.if.end46.i_crit_edge, %land.lhs.true36.i.if.end46.i_crit_edge, %if.end27.i.if.end46.i_crit_edge
  %num_fifos.1.i = phi i32 [ %conv45.i, %if.then44.i ], [ %num_fifos.0.i, %land.lhs.true41.i.if.end46.i_crit_edge ], [ %num_fifos.0.i, %land.lhs.true36.i.if.end46.i_crit_edge ], [ %num_fifos.0.i, %if.end27.i.if.end46.i_crit_edge ]
  %hwparams.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 66
  %30 = ptrtoint ptr %hwparams.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hwparams.i.i.i, align 4
  %shr.i.i.i = lshr i32 %31, 8
  %and.i.i.i = and i32 %shr.i.i.i, 255
  %ip.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 54
  %32 = ptrtoint ptr %ip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ip.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %33)
  %cmp.i.i.i = icmp eq i32 %33, 13106
  br i1 %cmp.i.i.i, label %dwc3_mdwidth.exit.thread.i.i, label %dwc3_mdwidth.exit.i.i

dwc3_mdwidth.exit.thread.i.i:                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  %hwparams6.i.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 66, i32 6
  %34 = ptrtoint ptr %hwparams6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hwparams6.i.i.i, align 4
  %and2.i.i.i = and i32 %35, 768
  %add.i.i.i = or i32 %and2.i.i.i, %and.i.i.i
  %36 = lshr i32 %add.i.i.i, 3
  br label %if.else.i.i

dwc3_mdwidth.exit.i.i:                            ; preds = %if.end46.i
  %shr18.i.i = lshr i32 %and.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %33)
  %cmp.i166.i = icmp eq i32 %33, 21811
  br i1 %cmp.i166.i, label %land.lhs.true.i.i, label %dwc3_mdwidth.exit.i.i.if.else.i.i_crit_edge

dwc3_mdwidth.exit.i.i.if.else.i.i_crit_edge:      ; preds = %dwc3_mdwidth.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %dwc3_mdwidth.exit.i.i
  %revision.i.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 55
  %37 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429416202, i32 %38)
  %cmp1.i.i = icmp ult i32 %38, 1429416202
  br i1 %cmp1.i.i, label %land.lhs.true.i.i.dwc3_gadget_calc_tx_fifo_size.exit.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

land.lhs.true.i.i.dwc3_gadget_calc_tx_fifo_size.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_calc_tx_fifo_size.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %dwc3_mdwidth.exit.i.i.if.else.i.i_crit_edge, %dwc3_mdwidth.exit.thread.i.i
  %shr16.i.i = phi i32 [ %36, %dwc3_mdwidth.exit.thread.i.i ], [ %shr18.i.i, %land.lhs.true.i.i.if.else.i.i_crit_edge ], [ %shr18.i.i, %dwc3_mdwidth.exit.i.i.if.else.i.i_crit_edge ]
  %add2.i.i = add nuw nsw i32 %shr16.i.i, 1024
  br label %dwc3_gadget_calc_tx_fifo_size.exit.i

dwc3_gadget_calc_tx_fifo_size.exit.i:             ; preds = %if.else.i.i, %land.lhs.true.i.i.dwc3_gadget_calc_tx_fifo_size.exit.i_crit_edge
  %shr17.i.i = phi i32 [ %shr16.i.i, %if.else.i.i ], [ %shr18.i.i, %land.lhs.true.i.i.dwc3_gadget_calc_tx_fifo_size.exit.i_crit_edge ]
  %.pn.i.i = phi i32 [ %add2.i.i, %if.else.i.i ], [ 1024, %land.lhs.true.i.i.dwc3_gadget_calc_tx_fifo_size.exit.i_crit_edge ]
  %div.pn19.i.i = udiv i32 %.pn.i.i, %shr17.i.i
  %fifo_size.0.i.i = add nuw nsw i32 %div.pn19.i.i, 1
  %max_cfg_eps.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 81
  %39 = ptrtoint ptr %max_cfg_eps.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_cfg_eps.i, align 4
  %num_ep_resized.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 83
  %41 = ptrtoint ptr %num_ep_resized.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_ep_resized.i, align 4
  %sub.i = sub i32 %40, %42
  %add.neg.i = sub nuw nsw i32 -2, %div.pn19.i.i
  %mul.neg.i = mul i32 %sub.i, %add.neg.i
  %last_fifo_depth.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 82
  %43 = ptrtoint ptr %last_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %last_fifo_depth.i, align 4
  %sub48.i = sub i32 %and9.i, %44
  %sub49.i = add i32 %sub48.i, %mul.neg.i
  %45 = tail call i32 @llvm.smax.i32(i32 %sub49.i, i32 0) #12
  %sub53.i = add nsw i32 %num_fifos.1.i, -1
  %mul54.i = mul i32 %fifo_size.0.i.i, %sub53.i
  %46 = tail call i32 @llvm.smin.i32(i32 %45, i32 %mul54.i) #12
  %add59.i = add nuw nsw i32 %div.pn19.i.i, 2
  %inc.i = add i32 %add59.i, %46
  %regs.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 30
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %48, i32 512
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !226
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i.i = getelementptr i8, ptr %48, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 49920, i32 noundef %50) #12
  %and61.i = and i32 %50, -65536
  %51 = ptrtoint ptr %last_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %last_fifo_depth.i, align 4
  %shl.i = shl i32 %52, 16
  %add63.i = add i32 %shl.i, %and61.i
  %or.i = or i32 %add63.i, %inc.i
  %53 = ptrtoint ptr %ip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ip.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %54)
  %cmp65.i = icmp eq i32 %54, 21811
  %and71.i = and i32 %inc.i, 32767
  %and68.i = and i32 %inc.i, 65535
  %and71.pn.i = select i1 %cmp65.i, i32 %and68.i, i32 %and71.i
  %storemerge.i = add i32 %and71.pn.i, %52
  %55 = ptrtoint ptr %last_fifo_depth.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %storemerge.i, ptr %last_fifo_depth.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.i, i32 %and9.i)
  %cmp76.not.i = icmp slt i32 %storemerge.i, %and9.i
  br i1 %cmp76.not.i, label %if.end91.i, label %dwc3_gadget_resize_tx_fifos.exit

if.end91.i:                                       ; preds = %dwc3_gadget_calc_tx_fifo_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 4
  %58 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %number.i, align 2
  %60 = lshr i8 %59, 1
  %61 = zext i8 %60 to i32
  %mul95.i = shl nuw nsw i32 %61, 2
  %add96.i = add nuw nsw i32 %mul95.i, 49920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %add.ptr.i167.i = getelementptr i8, ptr %57, i32 %add96.i
  %add.ptr1.i168.i = getelementptr i8, ptr %add.ptr.i167.i, i32 -49408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i168.i, i32 %62) #12, !srcloc !229
  %add.ptr2.i.i = getelementptr i8, ptr %57, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef %add96.i, i32 noundef %or.i) #12
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %or98.i = or i32 %64, 4096
  store i32 %or98.i, ptr %flags, align 4
  %65 = ptrtoint ptr %num_ep_resized.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_ep_resized.i, align 4
  %inc100.i = add i32 %66, 1
  store i32 %inc100.i, ptr %num_ep_resized.i, align 4
  br label %if.end

dwc3_gadget_resize_tx_fifos.exit:                 ; preds = %dwc3_gadget_calc_tx_fifo_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 12
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  %name.i = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 1
  %69 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.54, i32 noundef %storemerge.i, i32 noundef %and9.i, ptr noundef %70, i32 noundef %or.i) #15
  %71 = ptrtoint ptr %ip.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ip.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %72)
  %cmp82.i = icmp eq i32 %72, 21811
  %fifo_size.1.i = select i1 %cmp82.i, i32 %and68.i, i32 %and71.i
  %73 = ptrtoint ptr %last_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %last_fifo_depth.i, align 4
  %sub90.i = sub i32 %74, %fifo_size.1.i
  store i32 %sub90.i, ptr %last_fifo_depth.i, align 4
  br label %cleanup76

if.end:                                           ; preds = %if.end91.i, %lor.lhs.false.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i) #12
  %number.i126 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 12
  %75 = ptrtoint ptr %number.i126 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %number.i126, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i127 = icmp eq i8 %76, 0
  br i1 %tobool.not.i127, label %if.end.i130, label %if.end.dwc3_gadget_start_config.exit.thread_crit_edge

if.end.dwc3_gadget_start_config.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_start_config.exit.thread

if.end.i130:                                      ; preds = %if.end
  %77 = call ptr @memset(ptr %params.i, i32 0, i32 12)
  %78 = ptrtoint ptr %dwc2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dwc2, align 4
  %call.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef 9, ptr noundef nonnull %params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i129 = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i129, label %for.cond.preheader.i, label %if.end.i130.dwc3_gadget_start_config.exit_crit_edge

if.end.i130.dwc3_gadget_start_config.exit_crit_edge: ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_start_config.exit

for.cond.preheader.i:                             ; preds = %if.end.i130
  %80 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.029.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i133, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dwc3, ptr %79, i32 0, i32 17, i32 %i.029.i
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i, align 4
  %tobool6.not.i131 = icmp eq ptr %82, null
  br i1 %tobool6.not.i131, label %for.body.i.for.inc.i_crit_edge, label %if.end8.i132

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end8.i132:                                     ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i.i) #12
  %83 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 0, ptr %params.i.i, align 8
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %80, align 8
  %call.i.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef nonnull %82, i32 noundef 2, ptr noundef nonnull %params.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not.i, label %if.end8.i132.for.inc.i_crit_edge, label %if.end8.i132.dwc3_gadget_start_config.exit_crit_edge

if.end8.i132.dwc3_gadget_start_config.exit_crit_edge: ; preds = %if.end8.i132
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_start_config.exit

if.end8.i132.for.inc.i_crit_edge:                 ; preds = %if.end8.i132
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i132.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i133 = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i133, 32
  br i1 %exitcond.not.i, label %for.inc.i.dwc3_gadget_start_config.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.dwc3_gadget_start_config.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_start_config.exit.thread

dwc3_gadget_start_config.exit.thread:             ; preds = %for.inc.i.dwc3_gadget_start_config.exit.thread_crit_edge, %if.end.dwc3_gadget_start_config.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #12
  br label %if.end9

dwc3_gadget_start_config.exit:                    ; preds = %if.end8.i132.dwc3_gadget_start_config.exit_crit_edge, %if.end.i130.dwc3_gadget_start_config.exit_crit_edge
  %retval.2.i = phi i32 [ %call.i, %if.end.i130.dwc3_gadget_start_config.exit_crit_edge ], [ %call.i.i, %if.end8.i132.dwc3_gadget_start_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #12
  br label %cleanup76

if.end9:                                          ; preds = %dwc3_gadget_start_config.exit.thread, %entry.if.end9_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i134) #12
  %85 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params.i134, i32 0, i32 1
  %86 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params.i134, i32 0, i32 2
  %87 = ptrtoint ptr %dwc2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dwc2, align 4
  %comp_desc2.i = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 10
  %89 = ptrtoint ptr %comp_desc2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %comp_desc2.i, align 4
  %91 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %desc1, align 4
  %93 = ptrtoint ptr %params.i134 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 0, ptr %params.i134, align 8
  %bmAttributes.i.i136 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %92, i32 0, i32 3
  %94 = ptrtoint ptr %bmAttributes.i.i136 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bmAttributes.i.i136, align 1
  %96 = shl i8 %95, 1
  %97 = and i8 %96, 6
  %shl.i137 = zext i8 %97 to i32
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %92, i32 0, i32 4
  %98 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %100 = and i16 %99, -249
  %101 = call i16 @llvm.bswap.i16(i16 %100) #12
  %102 = shl nuw nsw i16 %101, 3
  %and6.i = zext i16 %102 to i32
  %or.i138 = or i32 %and6.i, %shl.i137
  %103 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or.i138, ptr %86, align 8
  %gadget.i = getelementptr inbounds %struct.dwc3, ptr %88, i32 0, i32 18
  %104 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %gadget.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %107)
  %cmp.i139 = icmp ugt i32 %107, 4
  br i1 %cmp.i139, label %if.then.i, label %if.end9.if.end.i143_crit_edge

if.end9.if.end.i143_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i143

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %maxburst.i140 = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 7
  %108 = ptrtoint ptr %maxburst.i140 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 7)
  %bf.load.i141 = load i56, ptr %maxburst.i140, align 2
  %109 = trunc i56 %bf.load.i141 to i32
  %110 = shl i32 %109, 21
  %111 = add i32 %110, 62914560
  %shl10.i = and i32 %111, 62914560
  %or12.i = or i32 %shl10.i, %or.i138
  %112 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or12.i, ptr %86, align 8
  br label %if.end.i143

if.end.i143:                                      ; preds = %if.then.i, %if.end9.if.end.i143_crit_edge
  %113 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %86, align 8
  %or14.i = or i32 %114, %action
  store i32 %or14.i, ptr %86, align 8
  %115 = ptrtoint ptr %bmAttributes.i.i136 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %bmAttributes.i.i136, align 1
  %117 = and i8 %116, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp.i.not.i142 = icmp eq i8 %117, 0
  br i1 %cmp.i.not.i142, label %if.then20.i, label %if.end.i143.if.end21.i_crit_edge

if.end.i143.if.end21.i_crit_edge:                 ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then20.i:                                      ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 256, ptr %85, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %if.end.i143.if.end21.i_crit_edge
  %number.i144 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 12
  %119 = ptrtoint ptr %number.i144 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %number.i144, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %120)
  %cmp22.i = icmp ult i8 %120, 2
  br i1 %cmp22.i, label %if.end21.i.if.then26.i146_crit_edge, label %lor.lhs.false.i145

if.end21.i.if.then26.i146_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i146

lor.lhs.false.i145:                               ; preds = %if.end21.i
  %121 = ptrtoint ptr %bmAttributes.i.i136 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %bmAttributes.i.i136, align 1
  %123 = and i8 %122, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %123)
  %cmp.i130.not.i = icmp eq i8 %123, 1
  br i1 %cmp.i130.not.i, label %lor.lhs.false.i145.if.then26.i146_crit_edge, label %lor.lhs.false.i145.if.end29.i_crit_edge

lor.lhs.false.i145.if.end29.i_crit_edge:          ; preds = %lor.lhs.false.i145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

lor.lhs.false.i145.if.then26.i146_crit_edge:      ; preds = %lor.lhs.false.i145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i146

if.then26.i146:                                   ; preds = %lor.lhs.false.i145.if.then26.i146_crit_edge, %if.end21.i.if.then26.i146_crit_edge
  %124 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %85, align 4
  %or28.i = or i32 %125, 1024
  store i32 %or28.i, ptr %85, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i146, %lor.lhs.false.i145.if.end29.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %90, null
  br i1 %tobool.not.i.i, label %if.end29.i.if.end39.i_crit_edge, label %if.end.i.i

if.end29.i.if.end39.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.end.i.i:                                       ; preds = %if.end29.i
  %bmAttributes.i132.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %90, i32 0, i32 3
  %126 = ptrtoint ptr %bmAttributes.i132.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %bmAttributes.i132.i, align 1
  %128 = and i8 %127, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool1.not.i.i = icmp eq i8 %128, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end39.i_crit_edge, label %usb_ss_max_streams.exit.i

if.end.i.i.if.end39.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

usb_ss_max_streams.exit.i:                        ; preds = %if.end.i.i
  %129 = ptrtoint ptr %bmAttributes.i.i136 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %bmAttributes.i.i136, align 1
  %131 = and i8 %130, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %131)
  %cmp.i135.not.i = icmp eq i8 %131, 2
  br i1 %cmp.i135.not.i, label %if.then34.i, label %usb_ss_max_streams.exit.i.if.end39.i_crit_edge

usb_ss_max_streams.exit.i.if.end39.i_crit_edge:   ; preds = %usb_ss_max_streams.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.then34.i:                                      ; preds = %usb_ss_max_streams.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %85, align 4
  %or36.i = or i32 %133, 16785664
  store i32 %or36.i, ptr %85, align 4
  %stream_capable.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %134 = ptrtoint ptr %stream_capable.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load37.i = load i8, ptr %stream_capable.i, align 4
  %bf.set.i = or i8 %bf.load37.i, 64
  store i8 %bf.set.i, ptr %stream_capable.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then34.i, %usb_ss_max_streams.exit.i.if.end39.i_crit_edge, %if.end.i.i.if.end39.i_crit_edge, %if.end29.i.if.end39.i_crit_edge
  %135 = ptrtoint ptr %bmAttributes.i.i136 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %bmAttributes.i.i136, align 1
  %137 = and i8 %136, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %cmp.i138.not.i = icmp eq i8 %137, 0
  br i1 %cmp.i138.not.i, label %if.end39.i.if.end45.i_crit_edge, label %if.then42.i

if.end39.i.if.end45.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %85, align 4
  %or44.i = or i32 %139, 512
  store i32 %or44.i, ptr %85, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then42.i, %if.end39.i.if.end45.i_crit_edge
  %140 = and i8 %120, 31
  %and48.i = zext i8 %140 to i32
  %shl49.i = shl nuw nsw i32 %and48.i, 25
  %141 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %85, align 4
  %or51.i = or i32 %142, %shl49.i
  store i32 %or51.i, ptr %85, align 4
  %direction.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %143 = ptrtoint ptr %direction.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %bf.load52.i = load i8, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load52.i)
  %tobool55.not.i = icmp sgt i8 %bf.load52.i, -1
  br i1 %tobool55.not.i, label %if.end45.i.if.end63.i_crit_edge, label %if.then56.i

if.end45.i.if.end63.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63.i

if.then56.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  %144 = lshr i8 %120, 1
  %145 = and i8 %144, 31
  %and59.i = zext i8 %145 to i32
  %shl60.i = shl nuw nsw i32 %and59.i, 17
  %or62.i = or i32 %shl60.i, %or14.i
  %146 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or62.i, ptr %86, align 8
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then56.i, %if.end45.i.if.end63.i_crit_edge
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %92, i32 0, i32 5
  %147 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %bInterval.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool64.not.i = icmp eq i8 %148, 0
  br i1 %tobool64.not.i, label %if.end63.i.dwc3_gadget_set_ep_config.exit_crit_edge, label %if.then65.i

if.end63.i.dwc3_gadget_set_ep_config.exit_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_set_ep_config.exit

if.then65.i:                                      ; preds = %if.end63.i
  %sub68.i = add i8 %148, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %sub68.i)
  %cmp72.i = icmp ult i8 %sub68.i, 13
  %phi.cast.i = zext i8 %sub68.i to i32
  %phi.bo.i = shl nuw nsw i32 %phi.cast.i, 16
  %cond.i = select i1 %cmp72.i, i32 %phi.bo.i, i32 851968
  %149 = ptrtoint ptr %bmAttributes.i.i136 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %bmAttributes.i.i136, align 1
  %151 = and i8 %150, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %151)
  %cmp78.i = icmp eq i8 %151, 3
  br i1 %cmp78.i, label %land.lhs.true80.i, label %if.then65.i.if.else.i_crit_edge

if.then65.i.if.else.i_crit_edge:                  ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true80.i:                                ; preds = %if.then65.i
  %152 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %gadget.i, align 4
  %speed82.i = getelementptr inbounds %struct.usb_gadget, ptr %153, i32 0, i32 5
  %154 = ptrtoint ptr %speed82.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %speed82.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %155)
  %cmp83.i = icmp eq i32 %155, 2
  br i1 %cmp83.i, label %if.then85.i, label %land.lhs.true80.i.if.else.i_crit_edge

land.lhs.true80.i.if.else.i_crit_edge:            ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then85.i:                                      ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv87.i = zext i8 %148 to i32
  br label %if.end93.i

if.else.i:                                        ; preds = %land.lhs.true80.i.if.else.i_crit_edge, %if.then65.i.if.else.i_crit_edge
  %conv89.i = zext i8 %148 to i32
  %sub90.i147 = add nsw i32 %conv89.i, -1
  %shl91.i = shl nuw i32 1, %sub90.i147
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.else.i, %if.then85.i
  %shl91.sink.i = phi i32 [ %shl91.i, %if.else.i ], [ %conv87.i, %if.then85.i ]
  %interval92.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 16
  %156 = ptrtoint ptr %interval92.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %shl91.sink.i, ptr %interval92.i, align 4
  %or98.i148 = or i32 %cond.i, %or51.i
  %157 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %or98.i148, ptr %85, align 4
  br label %dwc3_gadget_set_ep_config.exit

dwc3_gadget_set_ep_config.exit:                   ; preds = %if.end93.i, %if.end63.i.dwc3_gadget_set_ep_config.exit_crit_edge
  %call100.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef 1, ptr noundef nonnull %params.i134) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i134) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool11.not = icmp eq i32 %call100.i, 0
  br i1 %tobool11.not, label %if.end13, label %dwc3_gadget_set_ep_config.exit.cleanup76_crit_edge

dwc3_gadget_set_ep_config.exit.cleanup76_crit_edge: ; preds = %dwc3_gadget_set_ep_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup76

if.end13:                                         ; preds = %dwc3_gadget_set_ep_config.exit
  %158 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flags, align 4
  %and15 = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end13.if.end39_crit_edge

if.end13.if.end39_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then17:                                        ; preds = %if.end13
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %160 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %bmAttributes.i, align 1
  %162 = and i8 %161, 3
  %type = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 13
  %163 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %type, align 1
  %or = or i32 %159, 1
  %164 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %or, ptr %flags, align 4
  %regs = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 30
  %165 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %166, i32 1568
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !226
  %168 = call i32 @llvm.bswap.i32(i32 %167) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %166, i32 -49408
  call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50976, i32 noundef %168) #12
  %169 = ptrtoint ptr %number.i144 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %number.i144, align 2
  %conv21 = zext i8 %170 to i32
  %shl = shl nuw i32 1, %conv21
  %or22 = or i32 %shl, %168
  %171 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  call void @arm_heavy_mb() #12
  %173 = call i32 @llvm.bswap.i32(i32 %or22) #12
  %add.ptr1.i151 = getelementptr i8, ptr %172, i32 1568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i151, i32 %173) #12, !srcloc !229
  %add.ptr2.i = getelementptr i8, ptr %172, i32 -49408
  call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 50976, i32 noundef %or22) #12
  %174 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %bmAttributes.i, align 1
  %176 = and i8 %175, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %cmp.i153.not = icmp eq i8 %176, 0
  br i1 %cmp.i153.not, label %if.then17.out_crit_edge, label %cleanup.thread

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

cleanup.thread:                                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %trb_dequeue = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 11
  %177 = ptrtoint ptr %trb_dequeue to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %trb_dequeue, align 1
  %trb_enqueue = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %178 = ptrtoint ptr %trb_enqueue to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %trb_enqueue, align 4
  %trb_pool = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 5
  %179 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %trb_pool, align 4
  %181 = call ptr @memset(ptr %180, i32 0, i32 4096)
  %182 = load ptr, ptr %trb_pool, align 4
  %arrayidx30 = getelementptr %struct.dwc3_trb, ptr %182, i32 255
  %trb_pool_dma.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 6
  %183 = ptrtoint ptr %trb_pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %trb_pool_dma.i, align 4
  %185 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_storeN_noabort(i32 %185, i32 4)
  store i32 %184, ptr %arrayidx30, align 1
  %bph = getelementptr %struct.dwc3_trb, ptr %182, i32 255, i32 1
  %186 = ptrtoint ptr %bph to i32
  call void @__asan_storeN_noabort(i32 %186, i32 4)
  store i32 0, ptr %bph, align 1
  %ctrl = getelementptr %struct.dwc3_trb, ptr %182, i32 255, i32 3
  %187 = ptrtoint ptr %ctrl to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %188 = load i32, ptr %ctrl, align 1
  %or37 = or i32 %188, 129
  store i32 %or37, ptr %ctrl, align 1
  br label %if.end39

if.end39:                                         ; preds = %cleanup.thread, %if.end13.if.end39_crit_edge
  %bmAttributes.i160 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %189 = ptrtoint ptr %bmAttributes.i160 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %bmAttributes.i160, align 1
  %191 = and i8 %190, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %switch.not = icmp eq i8 %191, 0
  br i1 %switch.not, label %if.end39.out_crit_edge, label %if.then44

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then44:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #12
  %192 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params, i32 0, i32 1
  %193 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params, i32 0, i32 2
  %194 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %params, align 4
  %trb_pool_dma.i170 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 6
  %195 = ptrtoint ptr %trb_pool_dma.i170 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %trb_pool_dma.i170, align 4
  %197 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %193, align 4
  %198 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %196, ptr %192, align 4
  %call51 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef 6, ptr noundef nonnull %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp = icmp slt i32 %call51, 0
  br i1 %cmp, label %cleanup76.critedge, label %if.end54

if.end54:                                         ; preds = %if.then44
  %199 = ptrtoint ptr %direction.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %bf.load = load i8, ptr %direction.i, align 4
  %200 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool55.not = icmp eq i8 %200, 0
  br i1 %tobool55.not, label %out.critedge, label %if.then56

if.then56:                                        ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i172) #12
  %201 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %flags, align 4
  %203 = and i32 %202, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %203)
  %204 = icmp eq i32 %203, 8
  br i1 %204, label %if.end.i177, label %if.then56.dwc3_stop_active_transfer.exit_crit_edge

if.then56.dwc3_stop_active_transfer.exit_crit_edge: ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_stop_active_transfer.exit

if.end.i177:                                      ; preds = %if.then56
  %resource_index.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 14
  %205 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %resource_index.i, align 4
  %conv.i = zext i8 %206 to i32
  %shl.i174 = shl nuw nsw i32 %conv.i, 16
  %or9.i = or i32 %shl.i174, 2312
  %207 = call ptr @memset(ptr %params.i172, i32 0, i32 12)
  %call.i175 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %dep, i32 noundef %or9.i, ptr noundef nonnull %params.i172) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool10.not.i176 = icmp eq i32 %call.i175, 0
  br i1 %tobool10.not.i176, label %if.end.i177.if.end42.i_crit_edge, label %land.rhs.i

if.end.i177.if.end42.i_crit_edge:                 ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.end.i177
  %.b1.i = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end42.i_crit_edge, label %if.then20.i178, !prof !231

land.rhs.i.if.end42.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

if.then20.i178:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #12
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then20.i178, %land.rhs.i.if.end42.i_crit_edge, %if.end.i177.if.end42.i_crit_edge
  %208 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %resource_index.i, align 4
  %209 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %flags, align 4
  %or56.i = or i32 %210, 16
  store i32 %or56.i, ptr %flags, align 4
  br label %dwc3_stop_active_transfer.exit

dwc3_stop_active_transfer.exit:                   ; preds = %if.end42.i, %if.then56.dwc3_stop_active_transfer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i172) #12
  %211 = ptrtoint ptr %direction.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %bf.load57 = load i8, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load57)
  %tobool60.not = icmp sgt i8 %bf.load57, -1
  br i1 %tobool60.not, label %dwc3_stop_active_transfer.exit.if.then64_crit_edge, label %lor.lhs.false61

dwc3_stop_active_transfer.exit.if.then64_crit_edge: ; preds = %dwc3_stop_active_transfer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64

lor.lhs.false61:                                  ; preds = %dwc3_stop_active_transfer.exit
  %hwparams9 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 66, i32 9
  %212 = ptrtoint ptr %hwparams9 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %hwparams9, align 4
  %and62 = and i32 %213, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %lor.lhs.false61.if.then64_crit_edge, label %out.critedge125

lor.lhs.false61.if.then64_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64

if.then64:                                        ; preds = %lor.lhs.false61.if.then64_crit_edge, %dwc3_stop_active_transfer.exit.if.then64_crit_edge
  %214 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %flags, align 4
  %or66 = or i32 %215, 512
  store i32 %or66, ptr %flags, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #12
  br label %out

out.critedge:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #12
  br label %out

out.critedge125:                                  ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #12
  br label %out

out:                                              ; preds = %out.critedge125, %out.critedge, %if.then64, %if.end39.out_crit_edge, %if.then17.out_crit_edge
  call fastcc void @trace_dwc3_gadget_ep_enable(ptr noundef %dep)
  br label %cleanup76

cleanup76.critedge:                               ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #12
  br label %cleanup76

cleanup76:                                        ; preds = %cleanup76.critedge, %out, %dwc3_gadget_set_ep_config.exit.cleanup76_crit_edge, %dwc3_gadget_start_config.exit, %dwc3_gadget_resize_tx_fifos.exit
  %retval.1 = phi i32 [ 0, %out ], [ -12, %dwc3_gadget_resize_tx_fifos.exit ], [ %retval.2.i, %dwc3_gadget_start_config.exit ], [ %call100.i, %dwc3_gadget_set_ep_config.exit.cleanup76_crit_edge ], [ %call51, %cleanup76.critedge ]
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_gadget_ep_enable(ptr noundef %dep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_enable, i32 0, i32 1), ptr blockaddress(@trace_dwc3_gadget_ep_enable, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !253
  %call42 = tail call i32 @__traceiter_dwc3_gadget_ep_enable(ptr noundef null, ptr noundef %dep) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !254
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_enable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_enable, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_gadget_ep_enable.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_gadget_ep_enable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 332, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
declare dso_local i32 @__traceiter_dwc3_gadget_ep_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_debugfs_create_endpoint_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwc3_gadget_ep0_enable(ptr nocapture noundef readnone %ep, ptr nocapture noundef readnone %desc) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwc3_gadget_ep0_disable(ptr nocapture noundef readnone %ep) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dwc3_gadget_ep_alloc_request(ptr noundef %ep, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !231

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 112) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %direction = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 18
  %2 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %direction, align 4
  %direction1 = getelementptr inbounds %struct.dwc3_request, ptr %call7.i.i, i32 0, i32 13
  %3 = ptrtoint ptr %direction1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2 = load i8, ptr %direction1, align 4
  %4 = lshr i8 %bf.load, 1
  %bf.shl = and i8 %4, 64
  %bf.clear = and i8 %bf.load2, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %direction1, align 4
  %number = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 12
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %number, align 2
  %epnum = getelementptr inbounds %struct.dwc3_request, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %epnum to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %epnum, align 4
  %dep3 = getelementptr inbounds %struct.dwc3_request, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %dep3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ep, ptr %dep3, align 8
  %status = getelementptr inbounds %struct.dwc3_request, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %status, align 8
  tail call fastcc void @trace_dwc3_alloc_request(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_gadget_ep_free_request(ptr nocapture noundef readnone %ep, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_dwc3_free_request(ptr noundef %request)
  tail call void @kfree(ptr noundef %request) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_ep0_queue(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_ep_dequeue(ptr noundef %ep, ptr noundef %request) #0 align 64 {
entry:
  %params.i = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc4 = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc4, align 4
  tail call fastcc void @trace_dwc3_ep_dequeue(ptr noundef %request)
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %cancelled_list = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %cancelled_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp14.not = icmp eq ptr %.pn, %cancelled_list
  br i1 %cmp14.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %r.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp16 = icmp eq ptr %r.0, %request
  br i1 %cmp16, label %for.body.out_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.end:                                          ; preds = %for.cond
  %pending_list = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 2
  br label %for.cond27

for.cond27:                                       ; preds = %for.body33.for.cond27_crit_edge, %for.end
  %.pn132.in = phi ptr [ %pending_list, %for.end ], [ %.pn132, %for.body33.for.cond27_crit_edge ]
  %3 = ptrtoint ptr %.pn132.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn132 = load ptr, ptr %.pn132.in, align 4
  %cmp30.not = icmp eq ptr %.pn132, %pending_list
  br i1 %cmp30.not, label %for.end44, label %for.body33

for.body33:                                       ; preds = %for.cond27
  %r.1 = getelementptr i8, ptr %.pn132, i32 -56
  %cmp34 = icmp eq ptr %r.1, %request
  br i1 %cmp34, label %if.then36, label %for.body33.for.cond27_crit_edge

for.body33.for.cond27_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond27

if.then36:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dwc3_gadget_giveback(ptr noundef %ep, ptr noundef %request, i32 noundef -104)
  br label %out

for.end44:                                        ; preds = %for.cond27
  %started_list = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 3
  br label %for.cond49

for.cond49:                                       ; preds = %for.body55.for.cond49_crit_edge, %for.end44
  %.pn133.in = phi ptr [ %started_list, %for.end44 ], [ %.pn133, %for.body55.for.cond49_crit_edge ]
  %4 = ptrtoint ptr %.pn133.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn133 = load ptr, ptr %.pn133.in, align 4
  %cmp52.not = icmp eq ptr %.pn133, %started_list
  br i1 %cmp52.not, label %do.end94, label %for.body55

for.body55:                                       ; preds = %for.cond49
  %r.2 = getelementptr i8, ptr %.pn133, i32 -56
  %cmp56 = icmp eq ptr %r.2, %request
  br i1 %cmp56, label %if.then58, label %for.body55.for.cond49_crit_edge

for.body55.for.cond49_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond49

if.then58:                                        ; preds = %for.body55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i) #12
  %flags.i = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 9
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %7 = and i32 %6, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %if.end.i, label %if.then58.dwc3_stop_active_transfer.exit_crit_edge

if.then58.dwc3_stop_active_transfer.exit_crit_edge: ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_stop_active_transfer.exit

if.end.i:                                         ; preds = %if.then58
  %resource_index.i = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 14
  %9 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %resource_index.i, align 4
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %or9.i = or i32 %shl.i, 2312
  %11 = call ptr @memset(ptr %params.i, i32 0, i32 12)
  %call.i = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %ep, i32 noundef %or9.i, ptr noundef nonnull %params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end42.i_crit_edge, label %land.rhs.i

if.end.i.if.end42.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b1.i = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end42.i_crit_edge, label %if.then20.i, !prof !231

land.rhs.i.if.end42.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

if.then20.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #12
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then20.i, %land.rhs.i.if.end42.i_crit_edge, %if.end.i.if.end42.i_crit_edge
  %12 = ptrtoint ptr %resource_index.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %resource_index.i, align 4
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %or56.i = or i32 %14, 16
  store i32 %or56.i, ptr %flags.i, align 4
  br label %dwc3_stop_active_transfer.exit

dwc3_stop_active_transfer.exit:                   ; preds = %if.end42.i, %if.then58.dwc3_stop_active_transfer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #12
  %15 = ptrtoint ptr %started_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %started_list, align 4
  %cmp72.not136 = icmp eq ptr %16, %started_list
  br i1 %cmp72.not136, label %dwc3_stop_active_transfer.exit.for.end82_crit_edge, label %dwc3_stop_active_transfer.exit.for.body75_crit_edge

dwc3_stop_active_transfer.exit.for.body75_crit_edge: ; preds = %dwc3_stop_active_transfer.exit
  br label %for.body75

dwc3_stop_active_transfer.exit.for.end82_crit_edge: ; preds = %dwc3_stop_active_transfer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82

for.body75:                                       ; preds = %dwc3_gadget_move_cancelled_request.exit.for.body75_crit_edge, %dwc3_stop_active_transfer.exit.for.body75_crit_edge
  %.pn134.in137 = phi ptr [ %.pn134, %dwc3_gadget_move_cancelled_request.exit.for.body75_crit_edge ], [ %16, %dwc3_stop_active_transfer.exit.for.body75_crit_edge ]
  %17 = ptrtoint ptr %.pn134.in137 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn134 = load ptr, ptr %.pn134.in137, align 4
  %dep1.i = getelementptr i8, ptr %.pn134.in137, i32 8
  %18 = ptrtoint ptr %dep1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dep1.i, align 4
  %status.i = getelementptr i8, ptr %.pn134.in137, i32 32
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %status.i, align 4
  %cancelled_list.i = getelementptr inbounds %struct.dwc3_ep, ptr %19, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn134.in137) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body75.__list_del_entry.exit.i.i_crit_edge

for.body75.__list_del_entry.exit.i.i_crit_edge:   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %.pn134.in137, i32 4
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %.pn134.in137 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn134.in137, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %for.body75.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.dwc3_ep, ptr %19, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn134.in137, ptr noundef %28, ptr noundef %cancelled_list.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.dwc3_gadget_move_cancelled_request.exit_crit_edge

__list_del_entry.exit.i.i.dwc3_gadget_move_cancelled_request.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_gadget_move_cancelled_request.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.pn134.in137, ptr %prev.i2.i.i, align 4
  %30 = ptrtoint ptr %.pn134.in137 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cancelled_list.i, ptr %.pn134.in137, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %.pn134.in137, i32 4
  %31 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %.pn134.in137, ptr %28, align 4
  br label %dwc3_gadget_move_cancelled_request.exit

dwc3_gadget_move_cancelled_request.exit:          ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.dwc3_gadget_move_cancelled_request.exit_crit_edge
  %cmp72.not = icmp eq ptr %.pn134, %started_list
  br i1 %cmp72.not, label %dwc3_gadget_move_cancelled_request.exit.for.end82_crit_edge, label %dwc3_gadget_move_cancelled_request.exit.for.body75_crit_edge

dwc3_gadget_move_cancelled_request.exit.for.body75_crit_edge: ; preds = %dwc3_gadget_move_cancelled_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body75

dwc3_gadget_move_cancelled_request.exit.for.end82_crit_edge: ; preds = %dwc3_gadget_move_cancelled_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82

for.end82:                                        ; preds = %dwc3_gadget_move_cancelled_request.exit.for.end82_crit_edge, %dwc3_stop_active_transfer.exit.for.end82_crit_edge
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %and = and i32 %34, -129
  store i32 %and, ptr %flags.i, align 4
  br label %out

do.end94:                                         ; preds = %for.cond49
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %37 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.59, ptr noundef %request, ptr noundef %38) #15
  br label %out

out:                                              ; preds = %do.end94, %for.end82, %if.then36, %for.body.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then36 ], [ 0, %for.end82 ], [ -22, %do.end94 ], [ 0, %for.body.out_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_ep0_set_halt(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_ep_set_wedge(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1 = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1, align 4
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %flags7 = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 9
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %flags7, align 4
  %number = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 12
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch = icmp ult i8 %5, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call i32 @__dwc3_gadget_ep0_set_halt(ptr noundef %ep, i32 noundef 1) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %ep, i32 noundef 1, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call15, %if.then ], [ %call16, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  ret i32 %ret.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_alloc_request(ptr noundef %req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_alloc_request, i32 0, i32 1), ptr blockaddress(@trace_dwc3_alloc_request, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !255
  %call42 = tail call i32 @__traceiter_dwc3_alloc_request(ptr noundef null, ptr noundef %req) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !256
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_alloc_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_alloc_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_alloc_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_alloc_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 138, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
declare dso_local i32 @__traceiter_dwc3_alloc_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_free_request(ptr noundef %req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_free_request, i32 0, i32 1), ptr blockaddress(@trace_dwc3_free_request, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !257
  %call42 = tail call i32 @__traceiter_dwc3_free_request(ptr noundef null, ptr noundef %req) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !258
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_free_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_free_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_free_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_free_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 143, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
declare dso_local i32 @__traceiter_dwc3_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_ep_dequeue(ptr noundef %req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ep_dequeue, i32 0, i32 1), ptr blockaddress(@trace_dwc3_ep_dequeue, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !259
  %call42 = tail call i32 @__traceiter_dwc3_ep_dequeue(ptr noundef null, ptr noundef %req) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !260
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ep_dequeue, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ep_dequeue, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_ep_dequeue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_ep_dequeue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 153, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
declare dso_local i32 @__traceiter_dwc3_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_ep_enable(ptr noundef %ep, ptr noundef readonly %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.do.body_crit_edge, label %lor.lhs.false2

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false2:                                   ; preds = %entry
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.not = icmp eq i8 %1, 5
  br i1 %cmp.not, label %if.end8, label %lor.lhs.false2.do.body_crit_edge

lor.lhs.false2.do.body_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false2.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc3_gadget_ep_enable.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwc3_gadget_ep_enable, %if.then7)) #12
          to label %cleanup [label %if.then7], !srcloc !230

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwc3_gadget_ep_enable.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false2
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %2 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wMaxPacketSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool9.not = icmp eq i16 %3, 0
  br i1 %tobool9.not, label %do.body11, label %if.end27

do.body11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc3_gadget_ep_enable.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwc3_gadget_ep_enable, %if.then23)) #12
          to label %cleanup [label %if.then23], !srcloc !230

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwc3_gadget_ep_enable.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.63) #12
  br label %cleanup

if.end27:                                         ; preds = %if.end8
  %dwc29 = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 7
  %4 = ptrtoint ptr %dwc29 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dwc29, align 4
  %flags30 = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 9
  %6 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags30, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %do.body89, label %land.rhs

land.rhs:                                         ; preds = %if.end27
  %.b115 = load i1, ptr @dwc3_gadget_ep_enable.__already_done, align 1
  br i1 %.b115, label %land.rhs.cleanup_crit_edge, label %if.then48, !prof !231

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then48:                                        ; preds = %land.rhs
  store i1 true, ptr @dwc3_gadget_ep_enable.__already_done, align 1
  %dev = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call61 = tail call ptr @dev_driver_string(ptr noundef %9) #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then48.dev_name.exit_crit_edge

if.then48.dev_name.exit_crit_edge:                ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then48.dev_name.exit_crit_edge
  %retval.0.i120 = phi ptr [ %15, %if.end.i ], [ %13, %if.then48.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1073, i32 noundef 9, ptr noundef nonnull @.str.64, ptr noundef %call61, ptr noundef %retval.0.i120, ptr noundef %name) #12
  br label %cleanup

do.body89:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 10
  %call94 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call99 = tail call fastcc i32 @__dwc3_gadget_ep_enable(ptr noundef nonnull %ep, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call94) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body89, %dev_name.exit, %land.rhs.cleanup_crit_edge, %if.then23, %do.body11, %if.then7, %do.body
  %retval.0 = phi i32 [ %call99, %do.body89 ], [ -22, %if.then7 ], [ -22, %if.then23 ], [ 0, %dev_name.exit ], [ 0, %land.rhs.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_ep_disable(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc3_gadget_ep_disable.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwc3_gadget_ep_disable, %if.then4)) #12
          to label %cleanup [label %if.then4], !srcloc !230

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwc3_gadget_ep_disable.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %dwc7 = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc7, align 4
  %flags8 = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 9
  %2 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags8, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %land.rhs, label %do.body68

land.rhs:                                         ; preds = %if.end5
  %.b90 = load i1, ptr @dwc3_gadget_ep_disable.__already_done, align 1
  br i1 %.b90, label %land.rhs.cleanup_crit_edge, label %if.then27, !prof !231

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27:                                        ; preds = %land.rhs
  store i1 true, ptr @dwc3_gadget_ep_disable.__already_done, align 1
  %dev = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call40 = tail call ptr @dev_driver_string(ptr noundef %5) #12
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then27.dev_name.exit_crit_edge

if.then27.dev_name.exit_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then27.dev_name.exit_crit_edge
  %retval.0.i92 = phi ptr [ %11, %if.end.i ], [ %9, %if.then27.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1100, i32 noundef 9, ptr noundef nonnull @.str.66, ptr noundef %call40, ptr noundef %retval.0.i92, ptr noundef %name) #12
  br label %cleanup

do.body68:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  tail call fastcc void @__dwc3_gadget_ep_disable(ptr noundef nonnull %ep)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call71) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body68, %dev_name.exit, %land.rhs.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %do.body68 ], [ -22, %if.then4 ], [ 0, %dev_name.exit ], [ 0, %land.rhs.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_ep_queue(ptr noundef %ep, ptr noundef %request, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc4 = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc4, align 4
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call10 = tail call fastcc i32 @__dwc3_gadget_ep_queue(ptr noundef %ep, ptr noundef %request)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #12
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_ep_set_halt(ptr noundef %ep, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1 = getelementptr inbounds %struct.dwc3_ep, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1, align 4
  %lock = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call7 = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %ep, i32 noundef %value, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dwc3_gadget_ep_disable(ptr noundef %dep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1, align 4
  tail call fastcc void @trace_dwc3_gadget_ep_disable(ptr noundef %dep)
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %dep, i32 noundef 0, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regs = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 1568
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !226
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %add.ptr3.i = getelementptr i8, ptr %5, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50976, i32 noundef %7) #12
  %number = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 12
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %number, align 2
  %conv = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %and3 = and i32 %7, %neg
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %and3) #12
  %add.ptr1.i2 = getelementptr i8, ptr %11, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i2, i32 %12) #12, !srcloc !229
  %add.ptr2.i = getelementptr i8, ptr %11, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 50976, i32 noundef %and3) #12
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %number, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp = icmp ugt i8 %14, 1
  br i1 %cmp, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %comp_desc = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 10
  %15 = ptrtoint ptr %comp_desc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %comp_desc, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %desc, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  tail call fastcc void @dwc3_remove_requests(ptr noundef %dep)
  %stream_capable = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %17 = ptrtoint ptr %stream_capable to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %stream_capable, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %stream_capable, align 4
  %type = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 13
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %type, align 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and12 = and i32 %20, 4096
  store i32 %and12, ptr %flags, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_gadget_ep_disable(ptr noundef %dep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_disable, i32 0, i32 1), ptr blockaddress(@trace_dwc3_gadget_ep_disable, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !261
  %call42 = tail call i32 @__traceiter_dwc3_gadget_ep_disable(ptr noundef null, ptr noundef %dep) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !262
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_disable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_disable, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_gadget_ep_disable.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_gadget_ep_disable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 337, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
declare dso_local i32 @__traceiter_dwc3_gadget_ep_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dwc3_gadget_ep_queue(ptr noundef %dep, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %pullups_connected = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %4 = ptrtoint ptr %pullups_connected to i32
  call void @__asan_loadN_noabort(i32 %4, i32 6)
  %bf.load = load i48, ptr %pullups_connected, align 4
  %5 = and i48 %bf.load, -140703128616960
  %.not = icmp eq i48 %5, -140703128616960
  br i1 %.not, label %if.end12, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__dwc3_gadget_ep_queue.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__dwc3_gadget_ep_queue, %if.then11)) #12
          to label %cleanup [label %if.then11], !srcloc !230

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__dwc3_gadget_ep_queue.__UNIQUE_ID_ddebug343, ptr noundef %7, ptr noundef nonnull @.str.68, ptr noundef %name) #12
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %dep13 = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %dep13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dep13, align 4
  %cmp.not = icmp eq ptr %9, %dep
  br i1 %cmp.not, label %if.end48, label %do.end29, !prof !231

do.end29:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %name31 = getelementptr inbounds %struct.dwc3_ep, ptr %9, i32 0, i32 17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1875, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef %req, ptr noundef %name31) #12
  br label %cleanup

if.end48:                                         ; preds = %if.end12
  %status = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 8
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp50 = icmp ult i32 %11, 5
  br i1 %cmp50, label %do.end66, label %if.end85, !prof !263

do.end66:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %name67 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1880, i32 noundef 9, ptr noundef nonnull @.str.70, ptr noundef %name67, ptr noundef %req) #12
  br label %cleanup

if.end85:                                         ; preds = %if.end48
  %dev86 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev86, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 5) #12
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %14 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %actual, align 4
  %status90 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %15 = ptrtoint ptr %status90 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -115, ptr %status90, align 4
  tail call fastcc void @trace_dwc3_ep_queue(ptr noundef %req)
  %list = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 1
  %pending_list = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %17, ptr noundef %pending_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end85.list_add_tail.exit_crit_edge

if.end85.list_add_tail.exit_crit_edge:            ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %prev.i, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pending_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end85.list_add_tail.exit_crit_edge
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %status, align 4
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool92.not = icmp eq i32 %and, 0
  br i1 %tobool92.not, label %if.end94, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end94:                                         ; preds = %list_add_tail.exit
  %25 = and i32 %24, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %if.end108, label %if.then106

if.then106:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %24, 64
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.end108:                                        ; preds = %if.end94
  %28 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bmAttributes.i, align 1
  %32 = and i8 %31, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp.i.not = icmp eq i8 %32, 1
  br i1 %cmp.i.not, label %if.then113, label %if.end108.if.end133_crit_edge

if.end108.if.end133_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then113:                                       ; preds = %if.end108
  %33 = and i32 %24, 40
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %33, label %if.then113.if.end133_crit_edge [
    i32 0, label %if.then113.cleanup_crit_edge
    i32 32, label %if.then129
  ]

if.then113.cleanup_crit_edge:                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then113.if.end133_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then129:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #14
  %call130 = tail call fastcc i32 @__dwc3_gadget_start_isoc(ptr noundef %dep)
  br label %cleanup

if.end133:                                        ; preds = %if.then113.if.end133_crit_edge, %if.end108.if.end133_crit_edge
  %call134 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %dep)
  br label %cleanup

cleanup:                                          ; preds = %if.end133, %if.then129, %if.then113.cleanup_crit_edge, %if.then106, %list_add_tail.exit.cleanup_crit_edge, %do.end66, %do.end29, %if.then11, %do.body
  %retval.0 = phi i32 [ -22, %do.end29 ], [ -22, %do.end66 ], [ 0, %if.then106 ], [ 0, %if.end133 ], [ %call130, %if.then129 ], [ -108, %if.then11 ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ %33, %if.then113.cleanup_crit_edge ], [ -108, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_ep_queue(ptr noundef %req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ep_queue, i32 0, i32 1), ptr blockaddress(@trace_dwc3_ep_queue, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !230

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !231

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !264
  %call42 = tail call i32 @__traceiter_dwc3_ep_queue(ptr noundef null, ptr noundef %req) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !265
  %13 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !231

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !216) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ep_queue, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ep_queue, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dwc3_ep_queue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_dwc3_ep_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 148, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %31 = tail call i32 @llvm.read_register.i32(metadata !216) #12
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
declare dso_local i32 @__traceiter_dwc3_ep_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dwc3_has_imod(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_ep0_out_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !63, !64, !66, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !87, !89, !91, !92, !93, !94, !95, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !112, !113, !115, !116, !117, !119, !120, !122, !124, !126, !127, !129, !130, !131, !132, !134, !135, !137, !139, !140, !141, !142, !144, !145, !147, !149, !151, !153, !155, !156, !158, !159, !161, !162, !163, !164, !166, !167, !169, !171, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !192, !194, !196, !198, !199, !201, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !215}
!llvm.named.register.sp = !{!216}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc3/gadget.c", i32 328, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/dwc3/gadget.c", i32 384, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/dwc3/gadget.c", i32 403, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/dwc3/gadget.c", i32 2071, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__dwc3_gadget_ep_set_halt._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @__dwc3_gadget_ep_set_halt._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/dwc3/gadget.c", i32 2099, i32 4}
!17 = !{ptr @__dwc3_gadget_ep_set_halt._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @__dwc3_gadget_ep_set_halt._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/dwc3/gadget.c", i32 2128, i32 4}
!21 = !{ptr @__dwc3_gadget_ep_set_halt._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @__dwc3_gadget_ep_set_halt._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/dwc3/gadget.c", i32 4285, i32 3}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dwc3_gadget_init._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @dwc3_gadget_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/dwc3/gadget.c", i32 4318, i32 23}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/dwc3/gadget.c", i32 4339, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dwc3_gadget_init._entry.17, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @dwc3_gadget_init._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/dwc3/gadget.c", i32 4356, i32 3}
!37 = !{ptr @dwc3_gadget_init._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @dwc3_gadget_init._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/usb/dwc3/trace.h", i32 41, i32 1}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!43 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!46 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../drivers/usb/dwc3/trace.h", i32 46, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../drivers/usb/dwc3/trace.h", i32 155, i32 1}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../drivers/usb/dwc3/trace.h", i32 180, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/usb/dwc3/trace.h", i32 213, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/dwc3/gadget.c", i32 1997, i32 4}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @dwc3_gadget_ep_cleanup_cancelled_requests._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @dwc3_gadget_ep_cleanup_cancelled_requests._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/dwc3/gadget.c", i32 1262, i32 3}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../drivers/usb/dwc3/trace.h", i32 280, i32 1}
!68 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/dwc3/gadget.c", i32 2252, i32 3}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__dwc3_gadget_wakeup._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @__dwc3_gadget_wakeup._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/dwc3/gadget.c", i32 2276, i32 3}
!76 = !{ptr @__dwc3_gadget_wakeup._entry.32, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @__dwc3_gadget_wakeup._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../drivers/usb/dwc3/gadget.c", i32 3643, i32 2}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/dwc3/gadget.c", i32 4229, i32 52}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/dwc3/gadget.c", i32 4236, i32 52}
!84 = !{ptr @init_completion.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../include/linux/completion.h", i32 87, i32 2}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @dwc3_gadget_ops, !88, !"dwc3_gadget_ops", i1 false, i1 false}
!88 = !{!"../drivers/usb/dwc3/gadget.c", i32 2899, i32 36}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/dwc3/gadget.c", i32 2485, i32 4}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @dwc3_gadget_pullup._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @dwc3_gadget_pullup._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/dwc3/gadget.c", i32 2728, i32 17}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/dwc3/gadget.c", i32 2730, i32 3}
!99 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @dwc3_gadget_start._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @dwc3_gadget_start._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/dwc3/gadget.c", i32 4106, i32 3}
!104 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @dwc3_process_event_entry._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @dwc3_process_event_entry._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../drivers/usb/dwc3/trace.h", i32 68, i32 1}
!109 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../drivers/usb/dwc3/trace.h", i32 285, i32 1}
!112 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/dwc3/gadget.c", i32 3434, i32 4}
!115 = !{ptr @dwc3_gadget_endpoint_command_complete._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @dwc3_gadget_endpoint_command_complete._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../drivers/usb/dwc3/gadget.c", i32 4065, i32 7}
!119 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/dwc3/gadget.c", i32 4092, i32 3}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../drivers/usb/dwc3/gadget.c", i32 3670, i32 3}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../drivers/usb/dwc3/gadget.c", i32 3859, i32 3}
!126 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/dwc3/gadget.c", i32 3881, i32 3}
!129 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @dwc3_gadget_conndone_interrupt._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @dwc3_gadget_conndone_interrupt._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @dwc3_gadget_conndone_interrupt._entry.52, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/usb/dwc3/gadget.c", i32 3888, i32 3}
!134 = !{ptr @dwc3_gadget_conndone_interrupt._entry_ptr.53, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @dwc3_gadget_ep0_desc, !136, !"dwc3_gadget_ep0_desc", i1 false, i1 false}
!136 = !{!"../drivers/usb/dwc3/gadget.c", i32 2182, i32 39}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/dwc3/gadget.c", i32 828, i32 3}
!139 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @dwc3_gadget_resize_tx_fifos._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @dwc3_gadget_resize_tx_fifos._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../drivers/usb/dwc3/trace.h", i32 329, i32 1}
!144 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!145 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/dwc3/gadget.c", i32 3042, i32 41}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/dwc3/gadget.c", i32 3043, i32 16}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/dwc3/gadget.c", i32 3043, i32 23}
!151 = !{ptr @dwc3_gadget_ep0_ops, !152, !"dwc3_gadget_ep0_ops", i1 false, i1 false}
!152 = !{!"../drivers/usb/dwc3/gadget.c", i32 2188, i32 32}
!153 = distinct !{null, !154, !"__already_done", i1 false, i1 false}
!154 = !{!"../drivers/usb/dwc3/trace.h", i32 135, i32 1}
!155 = distinct !{null, !154, !"__warned", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../drivers/usb/dwc3/trace.h", i32 140, i32 1}
!158 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!159 = !{ptr @.str.59, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/dwc3/gadget.c", i32 2053, i32 2}
!161 = !{ptr @.str.60, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @dwc3_gadget_ep_dequeue._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @dwc3_gadget_ep_dequeue._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = distinct !{null, !165, !"__already_done", i1 false, i1 false}
!165 = !{!"../drivers/usb/dwc3/trace.h", i32 150, i32 1}
!166 = distinct !{null, !165, !"__warned", i1 false, i1 false}
!167 = !{ptr @dwc3_gadget_ep_ops, !168, !"dwc3_gadget_ep_ops", i1 false, i1 false}
!168 = !{!"../drivers/usb/dwc3/gadget.c", i32 2199, i32 32}
!169 = !{ptr @.str.61, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/dwc3/gadget.c", i32 1059, i32 3}
!171 = !{ptr @.str.62, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @dwc3_gadget_ep_enable.__UNIQUE_ID_ddebug333, !170, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!173 = !{ptr @.str.63, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/dwc3/gadget.c", i32 1064, i32 3}
!175 = !{ptr @dwc3_gadget_ep_enable.__UNIQUE_ID_ddebug334, !174, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!176 = distinct !{null, !177, !"__already_done", i1 false, i1 false}
!177 = !{!"../drivers/usb/dwc3/gadget.c", i32 1071, i32 6}
!178 = !{ptr @.str.64, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/dwc3/gadget.c", i32 1091, i32 3}
!181 = !{ptr @dwc3_gadget_ep_disable.__UNIQUE_ID_ddebug335, !180, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!182 = distinct !{null, !183, !"__already_done", i1 false, i1 false}
!183 = !{!"../drivers/usb/dwc3/gadget.c", i32 1098, i32 6}
!184 = !{ptr @.str.66, !183, !"<string literal>", i1 false, i1 false}
!185 = distinct !{null, !186, !"__already_done", i1 false, i1 false}
!186 = !{!"../drivers/usb/dwc3/trace.h", i32 334, i32 1}
!187 = distinct !{null, !186, !"__warned", i1 false, i1 false}
!188 = !{ptr @.str.67, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/dwc3/gadget.c", i32 1869, i32 3}
!190 = !{ptr @.str.68, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @__dwc3_gadget_ep_queue.__UNIQUE_ID_ddebug343, !189, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!192 = !{ptr @.str.69, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/dwc3/gadget.c", i32 1874, i32 6}
!194 = !{ptr @.str.70, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/dwc3/gadget.c", i32 1878, i32 6}
!196 = distinct !{null, !197, !"__already_done", i1 false, i1 false}
!197 = !{!"../drivers/usb/dwc3/trace.h", i32 145, i32 1}
!198 = distinct !{null, !197, !"__warned", i1 false, i1 false}
!199 = !{ptr @.str.71, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/dwc3/gadget.c", i32 478, i32 3}
!201 = !{ptr @.str.72, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @dwc3_alloc_trb_pool._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @dwc3_alloc_trb_pool._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.73, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/dwc3/gadget.c", i32 2400, i32 4}
!206 = !{ptr @.str.74, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @__dwc3_gadget_set_speed._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @__dwc3_gadget_set_speed._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.75, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/dwc3/gadget.c", i32 2690, i32 3}
!211 = !{ptr @__dwc3_gadget_start._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @__dwc3_gadget_start._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @__dwc3_gadget_start._entry.76, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/usb/dwc3/gadget.c", i32 2697, i32 3}
!215 = !{ptr @__dwc3_gadget_start._entry_ptr.77, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{!"sp"}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"min_enum_size", i32 4}
!219 = !{i32 8, !"branch-target-enforcement", i32 0}
!220 = !{i32 8, !"sign-return-address", i32 0}
!221 = !{i32 8, !"sign-return-address-all", i32 0}
!222 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!223 = !{i32 7, !"uwtable", i32 1}
!224 = !{i32 7, !"frame-pointer", i32 2}
!225 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!226 = !{i64 5416964}
!227 = !{i64 2155894936}
!228 = !{i64 2155895340}
!229 = !{i64 5416546}
!230 = !{i64 2148807916, i64 2148807921, i64 2148807934, i64 2148807978, i64 2148808012, i64 2148808033}
!231 = !{!"branch_weights", i32 2000, i32 1}
!232 = !{i64 2155787441}
!233 = !{i64 2155787686}
!234 = !{i64 2149374205}
!235 = !{i64 2149375241}
!236 = !{i64 2155809500}
!237 = !{i64 2155809755}
!238 = !{!"auto-init"}
!239 = !{i64 2155633775}
!240 = !{i64 2155633996}
!241 = !{i64 2155649949}
!242 = !{i64 2155650172}
!243 = !{i64 2155770467}
!244 = !{i64 2155770676}
!245 = !{i64 2155937246}
!246 = !{i64 2155826384}
!247 = !{i64 2155826595}
!248 = !{i8 0, i8 2}
!249 = !{i64 2155669923}
!250 = !{i64 2155670126}
!251 = !{i64 2155842926}
!252 = !{i64 2155843139}
!253 = !{i64 2155859321}
!254 = !{i64 2155859532}
!255 = !{i64 2155701834}
!256 = !{i64 2155702039}
!257 = !{i64 2155718127}
!258 = !{i64 2155718330}
!259 = !{i64 2155754222}
!260 = !{i64 2155754421}
!261 = !{i64 2155879947}
!262 = !{i64 2155880160}
!263 = !{!"branch_weights", i32 1, i32 2000}
!264 = !{i64 2155738275}
!265 = !{i64 2155738470}
