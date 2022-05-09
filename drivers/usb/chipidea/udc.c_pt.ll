; ModuleID = '/llk/IR_all_yes/drivers/usb/chipidea/udc.c_pt.bc'
source_filename = "../drivers/usb/chipidea/udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.78, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.78 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.td_node = type { %struct.list_head, i32, ptr, i32 }
%struct.ci_role_driver = type { ptr, ptr, ptr, ptr }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ci_hw_td = type { i32, i32, [5 x i32] }
%struct.ci_hw_qh = type { i32, i32, %struct.ci_hw_td, i32, %struct.usb_ctrlrequest }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ci_hw_req = type { %struct.usb_request, %struct.list_head, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gadget\00", [25 x i8] zeroinitializer }, align 32
@isr_reset_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 900, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"error: %i\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isr_reset_handler\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/chipidea/udc.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isr_reset_handler._entry_ptr = internal global ptr @isr_reset_handler._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@isr_tr_complete_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 1332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error: _ep_set_halt\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"isr_tr_complete_handler\00", [40 x i8] zeroinitializer }, align 32
@isr_tr_complete_handler._entry_ptr = internal global ptr @isr_tr_complete_handler._entry, section ".printk_index", align 4
@__tracepoint_ci_complete_td = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/chipidea/trace.h\00", [35 x i8] zeroinitializer }, align 32
@trace_ci_complete_td.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@isr_setup_status_phase.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@_ep_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 946, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"endpoint ctrl %X nuked\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_ep_queue\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@_ep_queue._entry_ptr = internal global ptr @_ep_queue._entry, section ".printk_index", align 4
@_ep_queue._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.3, i32 952, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"request length too big for isochronous\0A\00", [56 x i8] zeroinitializer }, align 32
@_ep_queue._entry_ptr.16 = internal global ptr @_ep_queue._entry.14, section ".printk_index", align 4
@_ep_queue._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.3, i32 958, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"request already in queue\0A\00", [38 x i8] zeroinitializer }, align 32
@_ep_queue._entry_ptr.19 = internal global ptr @_ep_queue._entry.17, section ".printk_index", align 4
@prepare_td_for_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"not supported operation for sg\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"prepare_td_for_sg\00", [46 x i8] zeroinitializer }, align 32
@prepare_td_for_sg._entry_ptr = internal global ptr @prepare_td_for_sg._entry, section ".printk_index", align 4
@prepare_td_for_sg._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"not page aligned sg buffer\0A\00", [36 x i8] zeroinitializer }, align 32
@prepare_td_for_sg._entry_ptr.24 = internal global ptr @prepare_td_for_sg._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_ci_prepare_td = external dso_local global %struct.tracepoint, align 4
@trace_ci_prepare_td.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@isr_setup_packet_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.25, ptr @.str.3, i32 1299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"isr_setup_packet_handler\00", [39 x i8] zeroinitializer }, align 32
@isr_setup_packet_handler._entry_ptr = internal global ptr @isr_setup_packet_handler._entry, section ".printk_index", align 4
@otg_a_alt_hnp_support._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1130, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"connect the device to an alternate port if you want HNP\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"otg_a_alt_hnp_support\00", [42 x i8] zeroinitializer }, align 32
@otg_a_alt_hnp_support._entry_ptr = internal global ptr @otg_a_alt_hnp_support._entry, section ".printk_index", align 4
@usb_gadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr null, ptr @ci_udc_wakeup, ptr @ci_udc_selfpowered, ptr @ci_udc_vbus_session, ptr @ci_udc_vbus_draw, ptr @ci_udc_pullup, ptr null, ptr null, ptr @ci_udc_start, ptr @ci_udc_stop, ptr null, ptr null, ptr null, ptr @ci_udc_match_ep, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ci_hw_qh\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ci_hw_td\00", [23 x i8] zeroinitializer }, align 32
@ctrl_endpt_out_desc = internal constant { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 16384, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ctrl_endpt_in_desc = internal constant { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 0, i16 16384, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%i%s\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@usb_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @ep_enable, ptr @ep_disable, ptr null, ptr @ep_alloc_request, ptr @ep_free_request, ptr @ep_queue, ptr @ep_dequeue, ptr @ep_set_halt, ptr @ep_set_wedge, ptr null, ptr @ep_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@ep_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1369, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"enabling a non-empty endpoint!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep_enable\00", [22 x i8] zeroinitializer }, align 32
@ep_enable._entry_ptr = internal global ptr @ep_enable._entry, section ".printk_index", align 4
@ep_enable._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 1400, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set control xfer at non-ep0\0A\00", [35 x i8] zeroinitializer }, align 32
@ep_enable._entry_ptr.37 = internal global ptr @ep_enable._entry.35, section ".printk_index", align 4
@ep_free_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 1492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"freeing queued request\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ep_free_request\00", [16 x i8] zeroinitializer }, align 32
@ep_free_request._entry_ptr = internal global ptr @ep_free_request._entry, section ".printk_index", align 4
@ep_fifo_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 1620, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%02X: -EINVAL\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ep_fifo_flush\00", [18 x i8] zeroinitializer }, align 32
@ep_fifo_flush._entry_ptr = internal global ptr @ep_fifo_flush._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 8, i64 128, i64 129, i64 130]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 5, i64 0, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 11]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 2188, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 900, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1331, i32 7 }
@___asan_gen_.83 = private unnamed_addr constant [32 x i8] c"../drivers/usb/chipidea/trace.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 77, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 108, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 945, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 952, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 958, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 515, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 521, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1299, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1129, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [15 x i8] c"usb_gadget_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1809, i32 36 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 2084, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 2090, i32 32 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"ctrl_endpt_out_desc\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 33, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant [19 x i8] c"ctrl_endpt_in_desc\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 43, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1829, i32 46 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1830, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1830, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant [11 x i8] c"usb_ep_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1639, i32 32 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1369, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1400, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1492, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [30 x i8] c"../drivers/usb/chipidea/udc.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1620, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @_ep_queue._entry, ptr @_ep_queue._entry.14, ptr @_ep_queue._entry.17, ptr @_ep_queue._entry_ptr, ptr @_ep_queue._entry_ptr.16, ptr @_ep_queue._entry_ptr.19, ptr @ep_enable._entry, ptr @ep_enable._entry.35, ptr @ep_enable._entry_ptr, ptr @ep_enable._entry_ptr.37, ptr @ep_fifo_flush._entry, ptr @ep_fifo_flush._entry_ptr, ptr @ep_free_request._entry, ptr @ep_free_request._entry_ptr, ptr @isr_reset_handler._entry, ptr @isr_reset_handler._entry_ptr, ptr @isr_setup_packet_handler._entry, ptr @isr_setup_packet_handler._entry_ptr, ptr @isr_tr_complete_handler._entry, ptr @isr_tr_complete_handler._entry_ptr, ptr @otg_a_alt_hnp_support._entry, ptr @otg_a_alt_hnp_support._entry_ptr, ptr @prepare_td_for_sg._entry, ptr @prepare_td_for_sg._entry.22, ptr @prepare_td_for_sg._entry_ptr, ptr @prepare_td_for_sg._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @usb_gadget_ops, ptr @.str.28, ptr @.str.29, ptr @ctrl_endpt_out_desc, ptr @ctrl_endpt_in_desc, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @usb_ep_ops, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_reset_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_tr_complete_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ep_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ep_queue._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ep_queue._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_td_for_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_td_for_sg._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_setup_packet_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_a_alt_hnp_support._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_gadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_endpt_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_endpt_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_enable._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_free_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_fifo_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_hdrc_gadget_destroy(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %gadget = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #9
  %hw_ep_max.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 21
  %2 = ptrtoint ptr %hw_ep_max.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_ep_max.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not.i = icmp eq i32 %3, 0
  br i1 %cmp9.not.i, label %if.end.destroy_eps.exit_crit_edge, label %for.body.lr.ph.i

if.end.destroy_eps.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_eps.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %qh_pool.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %pending_td.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.010.i, i32 10
  %4 = ptrtoint ptr %pending_td.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pending_td.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %td_pool.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.010.i, i32 9
  %6 = ptrtoint ptr %td_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %td_pool.i.i, align 4
  %ptr.i.i = getelementptr inbounds %struct.td_node, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptr.i.i, align 4
  %dma.i.i = getelementptr inbounds %struct.td_node, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %7, ptr noundef %9, i32 noundef %11) #9
  %12 = ptrtoint ptr %pending_td.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pending_td.i, align 4
  tail call void @kfree(ptr noundef nonnull %5) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %13 = ptrtoint ptr %qh_pool.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qh_pool.i, align 4
  %ptr.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.010.i, i32 5, i32 1
  %15 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptr.i, align 4
  %dma.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.010.i, i32 5, i32 2
  %17 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma.i, align 4
  tail call void @dma_pool_free(ptr noundef %14, ptr noundef %16, i32 noundef %18) #9
  %inc.i = add nuw i32 %i.010.i, 1
  %19 = ptrtoint ptr %hw_ep_max.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_ep_max.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.destroy_eps.exit_crit_edge

if.end.i.destroy_eps.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_eps.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

destroy_eps.exit:                                 ; preds = %if.end.i.destroy_eps.exit_crit_edge, %if.end.destroy_eps.exit_crit_edge
  %td_pool = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 17
  %21 = ptrtoint ptr %td_pool to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %td_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %22) #9
  %qh_pool = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 16
  %23 = ptrtoint ptr %qh_pool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qh_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %24) #9
  br label %return

return:                                           ; preds = %destroy_eps.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ci_hdrc_gadget_init(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ci, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 16, i32 noundef 3520) #9
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @udc_id_switch_for_device, ptr %call.i, align 4
  %stop = getelementptr inbounds %struct.ci_role_driver, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @udc_id_switch_for_host, ptr %stop, align 4
  %irq = getelementptr inbounds %struct.ci_role_driver, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @udc_irq, ptr %irq, align 4
  %name = getelementptr inbounds %struct.ci_role_driver, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %name, align 4
  %9 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci, align 8
  %platdata.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %11 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platdata.i, align 4
  %ci_otg_caps.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %12, i32 0, i32 10
  %gadget.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18
  %ops.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 2
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @usb_gadget_ops, ptr %ops.i, align 8
  %speed.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 5
  %14 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %speed.i, align 8
  %max_speed.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 6
  %15 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %max_speed.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %12, align 4
  %name7.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 10
  %18 = ptrtoint ptr %name7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %name7.i, align 4
  %otg_caps9.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 16
  %19 = ptrtoint ptr %otg_caps9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ci_otg_caps.i, ptr %otg_caps9.i, align 8
  %sg_supported.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 17
  %20 = ptrtoint ptr %sg_supported.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i = load i32, ptr %sg_supported.i, align 4
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %sg_supported.i, align 4
  %irq.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 3
  %21 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq.i, align 8
  %irq12.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 18
  %23 = ptrtoint ptr %irq12.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %irq12.i, align 8
  %flags.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %12, i32 0, i32 6
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i19 = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %tobool.not.i = icmp eq i32 %and.i19, 0
  br i1 %tobool.not.i, label %if.end4.if.end.i_crit_edge, label %if.then.i

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set17.i = or i32 %bf.load.i, -2146959360
  %26 = ptrtoint ptr %sg_supported.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %bf.set17.i, ptr %sg_supported.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end4.if.end.i_crit_edge
  %is_otg.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 6
  %27 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_otg.i, align 8, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool18.not.i = icmp eq i8 %28, 0
  br i1 %tobool18.not.i, label %if.end.i.if.end29.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %12, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hnp_support.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool19.not.i = icmp eq i8 %30, 0
  br i1 %tobool19.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then23.i_crit_edge

land.lhs.true.i.if.then23.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %12, i32 0, i32 10, i32 2
  %31 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %srp_support.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool20.not.i = icmp eq i8 %32, 0
  br i1 %tobool20.not.i, label %lor.lhs.false21.i, label %lor.lhs.false.i.if.then23.i_crit_edge

lor.lhs.false.i.if.then23.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %12, i32 0, i32 10, i32 3
  %33 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %adp_support.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool22.not.i = icmp eq i8 %34, 0
  br i1 %tobool22.not.i, label %lor.lhs.false21.i.if.end29.i_crit_edge, label %lor.lhs.false21.i.if.then23.i_crit_edge

lor.lhs.false21.i.if.then23.i_crit_edge:          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

lor.lhs.false21.i.if.end29.i_crit_edge:           ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then23.i:                                      ; preds = %lor.lhs.false21.i.if.then23.i_crit_edge, %lor.lhs.false.i.if.then23.i_crit_edge, %land.lhs.true.i.if.then23.i_crit_edge
  %35 = ptrtoint ptr %sg_supported.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load26.i = load i32, ptr %sg_supported.i, align 4
  %bf.set28.i = or i32 %bf.load26.i, 1073741824
  store i32 %bf.set28.i, ptr %sg_supported.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then23.i, %lor.lhs.false21.i.if.end29.i_crit_edge, %if.end.i.if.end29.i_crit_edge
  %ep_list.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 4
  %36 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %ep_list.i, ptr %ep_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 4, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ep_list.i, ptr %prev.i.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  %38 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent.i, align 8
  %call.i20 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.28, ptr noundef %39, i32 noundef 48, i32 noundef 64, i32 noundef 4096) #9
  %qh_pool.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 16
  %40 = ptrtoint ptr %qh_pool.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i20, ptr %qh_pool.i, align 4
  %cmp.i = icmp eq ptr %call.i20, null
  br i1 %cmp.i, label %if.end29.i.cleanup_crit_edge, label %if.end33.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33.i:                                       ; preds = %if.end29.i
  %41 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent.i, align 8
  %call35.i = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.29, ptr noundef %42, i32 noundef 28, i32 noundef 64, i32 noundef 4096) #9
  %td_pool.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 17
  %43 = ptrtoint ptr %td_pool.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call35.i, ptr %td_pool.i, align 8
  %cmp37.i = icmp eq ptr %call35.i, null
  br i1 %cmp37.i, label %udc_start.exit.thread27, label %if.end39.i

udc_start.exit.thread27:                          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %qh_pool.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %qh_pool.i, align 4
  tail call void @dma_pool_destroy(ptr noundef %45) #9
  br label %cleanup

if.end39.i:                                       ; preds = %if.end33.i
  %hw_ep_max.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 21
  %46 = ptrtoint ptr %hw_ep_max.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hw_ep_max.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp119.not.i.i = icmp ult i32 %47, 2
  br i1 %cmp119.not.i.i, label %if.end39.i.if.end43.i_crit_edge, label %for.cond2.preheader.lr.ph.i.i

if.end39.i.if.end43.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

for.cond2.preheader.lr.ph.i.i:                    ; preds = %if.end39.i
  %lock.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 1
  %ep0in.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 25
  %ep0out.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 24
  br label %for.cond2.preheader.i.i

for.cond2.preheader.i.i:                          ; preds = %cleanup.i.1.i.for.cond2.preheader.i.i_crit_edge, %for.cond2.preheader.lr.ph.i.i
  %retval1.0121.i.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i.i ], [ %spec.select.i.1.i, %cleanup.i.1.i.for.cond2.preheader.i.i_crit_edge ]
  %i.0120.i.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i.i ], [ %inc67.i.i, %cleanup.i.1.i.for.cond2.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0120.i.i)
  %cmp15.i.i = icmp eq i32 %i.0120.i.i, 0
  %..i.i = select i1 %cmp15.i.i, i8 -128, i8 112
  %arrayidx.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0120.i.i
  %name.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0120.i.i, i32 4
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %name.i.i, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %i.0120.i.i, ptr noundef nonnull @.str.32) #9
  %ci8.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0120.i.i, i32 7
  %48 = ptrtoint ptr %ci8.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %ci, ptr %ci8.i.i, align 4
  %lock9.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0120.i.i, i32 8
  %49 = ptrtoint ptr %lock9.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %lock.i.i, ptr %lock9.i.i, align 4
  %50 = ptrtoint ptr %td_pool.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %td_pool.i, align 8
  %td_pool10.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0120.i.i, i32 9
  %52 = ptrtoint ptr %td_pool10.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %td_pool10.i.i, align 4
  %name13.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %name13.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %name.i.i, ptr %name13.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @usb_ep_ops, ptr %ops.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i.i = load i8, ptr %caps.i.i, align 4
  %bf.set31.i.i = or i8 %..i.i, %bf.load.i.i
  %bf.set44.i.i = or i8 %bf.set31.i.i, 4
  store i8 %bf.set44.i.i, ptr %caps.i.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx.i.i, i32 noundef 65535) #9
  %qh.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0120.i.i, i32 5
  %56 = ptrtoint ptr %qh.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %qh.i.i, ptr %qh.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %qh.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %qh.i.i, ptr %prev.i.i.i, align 4
  %58 = ptrtoint ptr %qh_pool.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %qh_pool.i, align 4
  %dma.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0120.i.i, i32 5, i32 2
  %call.i.i.i = tail call ptr @dma_pool_alloc(ptr noundef %59, i32 noundef 3520, ptr noundef %dma.i.i) #9
  %ptr.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0120.i.i, i32 5, i32 1
  %60 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i.i.i, ptr %ptr.i.i, align 4
  %cmp52.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp15.i.i, label %if.end60.i.i, label %if.end62.i.i

if.end60.i.i:                                     ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %ep0out.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx.i.i, ptr %ep0out.i.i, align 8
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx.i.i, i32 noundef 64) #9
  br label %cleanup.i.i

if.end62.i.i:                                     ; preds = %for.cond2.preheader.i.i
  %ep_list.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list.i.i, ptr noundef %63, ptr noundef %ep_list.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end62.i.i.cleanup.i.i_crit_edge

if.end62.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i.i.i.i:                                   ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %ep_list.i.i, ptr %prev.i.i, align 4
  %65 = ptrtoint ptr %ep_list.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %ep_list.i, ptr %ep_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.i, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %ep_list.i.i, ptr %63, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i.i.i, %if.end62.i.i.cleanup.i.i_crit_edge, %if.end60.i.i
  %68 = ptrtoint ptr %hw_ep_max.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hw_ep_max.i.i, align 8
  %div6113.i.1.i = lshr i32 %69, 1
  %add.i.1.i = add nuw i32 %div6113.i.1.i, %i.0120.i.i
  %arrayidx.i.1.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %add.i.1.i
  %name.i.1.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %add.i.1.i, i32 4
  %call.i.1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %name.i.1.i, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %i.0120.i.i, ptr noundef nonnull @.str.31) #9
  %ci8.i.1.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %add.i.1.i, i32 7
  %70 = ptrtoint ptr %ci8.i.1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %ci, ptr %ci8.i.1.i, align 4
  %lock9.i.1.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %add.i.1.i, i32 8
  %71 = ptrtoint ptr %lock9.i.1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %lock.i.i, ptr %lock9.i.1.i, align 4
  %72 = ptrtoint ptr %td_pool.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %td_pool.i, align 8
  %td_pool10.i.1.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %add.i.1.i, i32 9
  %74 = ptrtoint ptr %td_pool10.i.1.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %td_pool10.i.1.i, align 4
  %name13.i.1.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.1.i, i32 0, i32 1
  %75 = ptrtoint ptr %name13.i.1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %name.i.1.i, ptr %name13.i.1.i, align 4
  %ops.i.1.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.1.i, i32 0, i32 2
  %76 = ptrtoint ptr %ops.i.1.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @usb_ep_ops, ptr %ops.i.1.i, align 4
  %caps.i.1.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.1.i, i32 0, i32 4
  %77 = ptrtoint ptr %caps.i.1.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i.1.i = load i8, ptr %caps.i.1.i, align 4
  %bf.set31.i.1.i = or i8 %..i.i, %bf.load.i.1.i
  %bf.set44.i.1.i = or i8 %bf.set31.i.1.i, 8
  store i8 %bf.set44.i.1.i, ptr %caps.i.1.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx.i.1.i, i32 noundef 65535) #9
  %qh.i.1.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %add.i.1.i, i32 5
  %78 = ptrtoint ptr %qh.i.1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %qh.i.1.i, ptr %qh.i.1.i, align 4
  %prev.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %qh.i.1.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %qh.i.1.i, ptr %prev.i.i.1.i, align 4
  %80 = ptrtoint ptr %qh_pool.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %qh_pool.i, align 4
  %dma.i.1.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %add.i.1.i, i32 5, i32 2
  %call.i.i.1.i = tail call ptr @dma_pool_alloc(ptr noundef %81, i32 noundef 3520, ptr noundef %dma.i.1.i) #9
  %ptr.i.1.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %add.i.1.i, i32 5, i32 1
  %82 = ptrtoint ptr %ptr.i.1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i.i.1.i, ptr %ptr.i.1.i, align 4
  %cmp52.i.1.i = icmp eq ptr %call.i.i.1.i, null
  %83 = select i1 %cmp52.i.1.i, i1 true, i1 %cmp52.i.i
  %spec.select.i.1.i = select i1 %83, i32 -12, i32 %retval1.0121.i.i
  br i1 %cmp15.i.i, label %if.end60.i.1.i, label %if.end62.i.1.i

if.end62.i.1.i:                                   ; preds = %cleanup.i.i
  %ep_list.i.1.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.1.i, i32 0, i32 3
  %84 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.1.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list.i.1.i, ptr noundef %85, ptr noundef %ep_list.i) #9
  br i1 %call.i.i.i.1.i, label %if.end.i.i.i.1.i, label %if.end62.i.1.i.cleanup.i.1.i_crit_edge

if.end62.i.1.i.cleanup.i.1.i_crit_edge:           ; preds = %if.end62.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.1.i

if.end.i.i.i.1.i:                                 ; preds = %if.end62.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %ep_list.i.1.i, ptr %prev.i.i, align 4
  %87 = ptrtoint ptr %ep_list.i.1.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %ep_list.i, ptr %ep_list.i.1.i, align 4
  %prev3.i.i.i.1.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i.1.i, i32 0, i32 3, i32 1
  %88 = ptrtoint ptr %prev3.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev3.i.i.i.1.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %ep_list.i.1.i, ptr %85, align 4
  br label %cleanup.i.1.i

if.end60.i.1.i:                                   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %ep0in.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %arrayidx.i.1.i, ptr %ep0in.i.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx.i.1.i, i32 noundef 64) #9
  br label %cleanup.i.1.i

cleanup.i.1.i:                                    ; preds = %if.end60.i.1.i, %if.end.i.i.i.1.i, %if.end62.i.1.i.cleanup.i.1.i_crit_edge
  %inc67.i.i = add nuw nsw i32 %i.0120.i.i, 1
  %91 = ptrtoint ptr %hw_ep_max.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hw_ep_max.i.i, align 8
  %div112.i.i = lshr i32 %92, 1
  %cmp.i.i = icmp ult i32 %inc67.i.i, %div112.i.i
  br i1 %cmp.i.i, label %cleanup.i.1.i.for.cond2.preheader.i.i_crit_edge, label %init_eps.exit.i

cleanup.i.1.i.for.cond2.preheader.i.i_crit_edge:  ; preds = %cleanup.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader.i.i

init_eps.exit.i:                                  ; preds = %cleanup.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.1.i)
  %tobool41.not.i = icmp eq i32 %spec.select.i.1.i, 0
  br i1 %tobool41.not.i, label %init_eps.exit.i.if.end43.i_crit_edge, label %init_eps.exit.i.udc_start.exit_crit_edge

init_eps.exit.i.udc_start.exit_crit_edge:         ; preds = %init_eps.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %udc_start.exit

init_eps.exit.i.if.end43.i_crit_edge:             ; preds = %init_eps.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.end43.i:                                       ; preds = %init_eps.exit.i.if.end43.i_crit_edge, %if.end39.i.if.end43.i_crit_edge
  %ep0in.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 25
  %93 = ptrtoint ptr %ep0in.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ep0in.i, align 4
  %ep0.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 3
  %95 = ptrtoint ptr %ep0.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %ep0.i, align 4
  %call46.i = tail call i32 @usb_add_gadget_udc(ptr noundef %10, ptr noundef %gadget.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end43.i.if.then7_crit_edge, label %destroy_eps.i

if.end43.i.if.then7_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

destroy_eps.i:                                    ; preds = %if.end43.i
  %96 = ptrtoint ptr %hw_ep_max.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %hw_ep_max.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp9.not.i.i = icmp eq i32 %97, 0
  br i1 %cmp9.not.i.i, label %destroy_eps.i.udc_start.exit_crit_edge, label %destroy_eps.i.for.body.i.i_crit_edge

destroy_eps.i.for.body.i.i_crit_edge:             ; preds = %destroy_eps.i
  br label %for.body.i.i

destroy_eps.i.udc_start.exit_crit_edge:           ; preds = %destroy_eps.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %udc_start.exit

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %destroy_eps.i.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %destroy_eps.i.for.body.i.i_crit_edge ]
  %pending_td.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.010.i.i, i32 10
  %98 = ptrtoint ptr %pending_td.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pending_td.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %99, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %td_pool.i.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.010.i.i, i32 9
  %100 = ptrtoint ptr %td_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %td_pool.i.i.i, align 4
  %ptr.i.i.i = getelementptr inbounds %struct.td_node, ptr %99, i32 0, i32 2
  %102 = ptrtoint ptr %ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ptr.i.i.i, align 4
  %dma.i.i.i = getelementptr inbounds %struct.td_node, ptr %99, i32 0, i32 1
  %104 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma.i.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %101, ptr noundef %103, i32 noundef %105) #9
  %106 = ptrtoint ptr %pending_td.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %pending_td.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %99) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %107 = ptrtoint ptr %qh_pool.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %qh_pool.i, align 4
  %ptr.i90.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.010.i.i, i32 5, i32 1
  %109 = ptrtoint ptr %ptr.i90.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ptr.i90.i, align 4
  %dma.i91.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.010.i.i, i32 5, i32 2
  %111 = ptrtoint ptr %dma.i91.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dma.i91.i, align 4
  tail call void @dma_pool_free(ptr noundef %108, ptr noundef %110, i32 noundef %112) #9
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %113 = ptrtoint ptr %hw_ep_max.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %hw_ep_max.i.i, align 8
  %cmp.i92.i = icmp ult i32 %inc.i.i, %114
  br i1 %cmp.i92.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.udc_start.exit_crit_edge

if.end.i.i.udc_start.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %udc_start.exit

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

udc_start.exit:                                   ; preds = %if.end.i.i.udc_start.exit_crit_edge, %destroy_eps.i.udc_start.exit_crit_edge, %init_eps.exit.i.udc_start.exit_crit_edge
  %retval2.0.i = phi i32 [ %spec.select.i.1.i, %init_eps.exit.i.udc_start.exit_crit_edge ], [ %call46.i, %destroy_eps.i.udc_start.exit_crit_edge ], [ %call46.i, %if.end.i.i.udc_start.exit_crit_edge ]
  %115 = ptrtoint ptr %td_pool.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %td_pool.i, align 8
  tail call void @dma_pool_destroy(ptr noundef %116) #9
  %117 = ptrtoint ptr %qh_pool.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %qh_pool.i, align 4
  tail call void @dma_pool_destroy(ptr noundef %118) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.0.i)
  %tobool6.not = icmp eq i32 %retval2.0.i, 0
  br i1 %tobool6.not, label %udc_start.exit.if.then7_crit_edge, label %udc_start.exit.cleanup_crit_edge

udc_start.exit.cleanup_crit_edge:                 ; preds = %udc_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

udc_start.exit.if.then7_crit_edge:                ; preds = %udc_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %udc_start.exit.if.then7_crit_edge, %if.end43.i.if.then7_crit_edge
  %arrayidx = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 1
  %119 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %udc_start.exit.cleanup_crit_edge, %udc_start.exit.thread27, %if.end29.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then7 ], [ %retval2.0.i, %udc_start.exit.cleanup_crit_edge ], [ -12, %udc_start.exit.thread27 ], [ -12, %if.end29.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_id_switch_for_device(ptr noundef %ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %0 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platdata, align 4
  %pins_device = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %pins_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins_device, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pctl = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pctl, align 4
  %call = tail call i32 @pinctrl_select_state(ptr noundef %5, ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %is_otg = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 6
  %6 = ptrtoint ptr %is_otg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_otg, align 8, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hw_write_otgsc(ptr noundef %ci, i32 noundef 134742016, i32 noundef 134742016) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udc_id_switch_for_host(ptr noundef %ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_otg = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 6
  %0 = ptrtoint ptr %is_otg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_otg, align 8, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hw_write_otgsc(ptr noundef %ci, i32 noundef 134742016, i32 noundef 524288) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vbus_active = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 33
  %2 = ptrtoint ptr %vbus_active to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vbus_active, align 8
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %3 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platdata, align 4
  %pins_device = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %pins_device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pins_device, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %pins_default = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %4, i32 0, i32 20
  %7 = ptrtoint ptr %pins_default to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pins_default, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %land.lhs.true.if.end8_crit_edge, label %if.then4

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %pctl = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %4, i32 0, i32 19
  %9 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pctl, align 4
  %call = tail call i32 @pinctrl_select_state(ptr noundef %10, ptr noundef nonnull %8) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_irq(ptr noundef %ci) #0 align 64 {
entry:
  %req.i.i = alloca %struct.usb_ctrlrequest, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ci, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %0 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platdata, align 4
  %flags = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 15
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %7 = and i32 %6, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %7)
  %cmp3.not = icmp eq i32 %7, 33554432
  br i1 %cmp3.not, label %if.then2.if.end7_crit_edge, label %if.then4

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call.i = tail call i32 @hw_read_intr_status(ptr noundef nonnull %ci) #9
  %call1.i = tail call i32 @hw_read_intr_enable(ptr noundef nonnull %ci) #9
  %and.i98 = and i32 %call1.i, %call.i
  %imx28_write_fix.i.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %8 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.end7.hw_test_and_clear_intr_active.exit_crit_edge

if.end7.hw_test_and_clear_intr_active.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_test_and_clear_intr_active.exit

if.else.i.i.i:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 5
  %10 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i98) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %12) #9, !srcloc !111
  br label %hw_test_and_clear_intr_active.exit

hw_test_and_clear_intr_active.exit:               ; preds = %if.else.i.i.i, %if.end7.hw_test_and_clear_intr_active.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool9.not = icmp eq i32 %and.i98, 0
  br i1 %tobool9.not, label %hw_test_and_clear_intr_active.exit.if.end61_crit_edge, label %if.then10

hw_test_and_clear_intr_active.exit.if.end61_crit_edge: ; preds = %hw_test_and_clear_intr_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then10:                                        ; preds = %hw_test_and_clear_intr_active.exit
  %and11 = and i32 %and.i98, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then10.if.end14_crit_edge, label %if.then13

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.then10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %gadget.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18
  %speed.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 5
  %13 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %if.then13.if.end.i_crit_edge, label %if.then.i

if.then13.if.end.i_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %driver.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 19
  %15 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver.i, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %gadget.i, ptr noundef %16) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then13.if.end.i_crit_edge
  tail call fastcc void @_gadget_stop_activity(ptr noundef %gadget.i) #9
  %arrayidx.i.i.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 7
  %17 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %20 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i.i.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i.i.i.i, label %hw_usb_set_address.exit.i.i, label %if.end.i.hw_write.exit.i.i_crit_edge

if.end.i.hw_write.exit.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_write.exit.i.i

hw_usb_set_address.exit.i.i:                      ; preds = %if.end.i
  %22 = and i32 %19, -255
  %23 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !111
  %25 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %.pr.i.i = load i8, ptr %imx28_write_fix.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %tobool.not.i.i.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %hw_usb_set_address.exit.i.i.hw_write.exit.i.i_crit_edge

hw_usb_set_address.exit.i.i.hw_write.exit.i.i_crit_edge: ; preds = %hw_usb_set_address.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_write.exit.i.i

if.else.i.i.i.i:                                  ; preds = %hw_usb_set_address.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5.i.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 18
  %26 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx5.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -1) #9, !srcloc !111
  br label %hw_write.exit.i.i

hw_write.exit.i.i:                                ; preds = %if.else.i.i.i.i, %hw_usb_set_address.exit.i.i.hw_write.exit.i.i_crit_edge, %if.end.i.hw_write.exit.i.i_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 16
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %31 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i2.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i2.i.i, label %if.else.i.i4.i.i, label %hw_write.exit.i.i.hw_write.exit5.i.i_crit_edge

hw_write.exit.i.i.hw_write.exit5.i.i_crit_edge:   ; preds = %hw_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_write.exit5.i.i

if.else.i.i4.i.i:                                 ; preds = %hw_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %30) #9, !srcloc !111
  br label %hw_write.exit5.i.i

hw_write.exit5.i.i:                               ; preds = %if.else.i.i4.i.i, %hw_write.exit.i.i.hw_write.exit5.i.i_crit_edge
  %arrayidx.i6.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 20
  %35 = ptrtoint ptr %arrayidx.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i6.i.i, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %38 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i8.i.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i.i8.i.i, label %if.else.i.i10.i.i, label %hw_write.exit5.i.i.hw_write.exit11.i.i_crit_edge

hw_write.exit5.i.i.hw_write.exit11.i.i_crit_edge: ; preds = %hw_write.exit5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_write.exit11.i.i

if.else.i.i10.i.i:                                ; preds = %hw_write.exit5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %arrayidx.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i6.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %37) #9, !srcloc !111
  br label %hw_write.exit11.i.i

hw_write.exit11.i.i:                              ; preds = %if.else.i.i10.i.i, %hw_write.exit5.i.i.hw_write.exit11.i.i_crit_edge
  %arrayidx.i12.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 17
  %42 = ptrtoint ptr %arrayidx.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i12.i.i, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not14.i.i = icmp eq i32 %44, 0
  br i1 %tobool.not14.i.i, label %hw_write.exit11.i.i.hw_usb_reset.exit.i_crit_edge, label %hw_write.exit11.i.i.while.body.i.i_crit_edge

hw_write.exit11.i.i.while.body.i.i_crit_edge:     ; preds = %hw_write.exit11.i.i
  br label %while.body.i.i

hw_write.exit11.i.i.hw_usb_reset.exit.i_crit_edge: ; preds = %hw_write.exit11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_usb_reset.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %hw_write.exit11.i.i.while.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #9
  %46 = ptrtoint ptr %arrayidx.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i12.i.i, align 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %tobool.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.hw_usb_reset.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.hw_usb_reset.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_usb_reset.exit.i

hw_usb_reset.exit.i:                              ; preds = %while.body.i.i.hw_usb_reset.exit.i_crit_edge, %hw_write.exit11.i.i.hw_usb_reset.exit.i_crit_edge
  %ep0in.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 25
  %49 = ptrtoint ptr %ep0in.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ep0in.i, align 4
  %call9.i = tail call ptr @usb_ep_alloc_request(ptr noundef %50, i32 noundef 2592) #9
  %status.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 26
  %51 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call9.i, ptr %status.i, align 8
  %cmp11.i = icmp eq ptr %call9.i, null
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br i1 %cmp11.i, label %do.end.i, label %hw_usb_reset.exit.i.if.end14_crit_edge

hw_usb_reset.exit.i.if.end14_crit_edge:           ; preds = %hw_usb_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end.i:                                         ; preds = %hw_usb_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ci, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.1, i32 noundef -12) #12
  br label %if.end14

if.end14:                                         ; preds = %do.end.i, %hw_usb_reset.exit.i.if.end14_crit_edge, %if.then10.if.end14_crit_edge
  %and15 = and i32 %and.i98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end33_crit_edge, label %if.then17

if.end14.if.end33_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then17:                                        ; preds = %if.end14
  %hw_bank.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2
  %54 = ptrtoint ptr %hw_bank.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hw_bank.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 13
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !107
  %59 = shl i32 %58, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i.i = and i32 %59, 100663296
  br label %hw_port_is_high_speed.exit

cond.false.i:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i4.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 12
  %60 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i4.i, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !107
  %63 = lshr i32 %62, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i5.i = and i32 %63, 512
  br label %hw_port_is_high_speed.exit

hw_port_is_high_speed.exit:                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %and.i.i, %cond.true.i ], [ %and.i5.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool19.not = icmp eq i32 %cond.i, 0
  %cond = select i1 %tobool19.not, i32 2, i32 3
  %gadget = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18
  %speed = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 5
  %64 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %cond, ptr %speed, align 8
  %suspended = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 30
  %65 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %suspended, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool20.not = icmp eq i8 %66, 0
  br i1 %tobool20.not, label %hw_port_is_high_speed.exit.if.end33_crit_edge, label %if.then21

hw_port_is_high_speed.exit.if.end33_crit_edge:    ; preds = %hw_port_is_high_speed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then21:                                        ; preds = %hw_port_is_high_speed.exit
  %driver = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 19
  %67 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver, align 8
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %resume, align 4
  %tobool22.not = icmp eq ptr %70, null
  br i1 %tobool22.not, label %if.then21.if.end29_crit_edge, label %if.then23

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %71 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver, align 8
  %resume26 = getelementptr inbounds %struct.usb_gadget_driver, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %resume26 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %resume26, align 4
  tail call void %74(ptr noundef %gadget) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.then21.if.end29_crit_edge
  %75 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %suspended, align 1
  %resume_state = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 20
  %76 = ptrtoint ptr %resume_state to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %resume_state, align 4
  tail call void @usb_gadget_set_state(ptr noundef %gadget, i32 noundef %77) #9
  br label %if.end33

if.end33:                                         ; preds = %if.end29, %hw_port_is_high_speed.exit.if.end33_crit_edge, %if.end14.if.end33_crit_edge
  %and34 = and i32 %and.i98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end37_crit_edge, label %if.then36

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then36:                                        ; preds = %if.end33
  %hw_ep_max.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 21
  %78 = ptrtoint ptr %hw_ep_max.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hw_ep_max.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp216.not.i = icmp eq i32 %79, 0
  br i1 %cmp216.not.i, label %if.then36.if.end37_crit_edge, label %for.body.lr.ph.i

if.then36.if.end37_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.body.lr.ph.i:                                 ; preds = %if.then36
  %arrayidx.i.i.i99 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 20
  %status.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 26
  %ep0_dir.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 23
  %ep0out.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 24
  %ep0in.i51.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 25
  %arrayidx.i.i101 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 16
  %80 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req.i.i, i32 0, i32 2
  %81 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req.i.i, i32 0, i32 3
  %82 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req.i.i, i32 0, i32 4
  %arrayidx.i.i.i.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 4
  %ptr.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 0, i32 5, i32 1
  %ci_hw_ep.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 22
  %is_otg.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 6
  %roles.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 4
  %arrayidx4.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 1
  %a_hnp_support.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 17
  %test_mode.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 31
  %remote_wakeup151.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 29
  %address.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 28
  %setaddr.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 27
  %driver.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 19
  %gadget194.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %83 = phi i32 [ %79, %for.body.lr.ph.i ], [ %444, %cleanup.i.for.body.i_crit_edge ]
  %i.0217.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i102 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0217.i
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i102, i32 0, i32 9
  %84 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %desc.i, align 4
  %cmp1.i = icmp eq ptr %85, null
  br i1 %cmp1.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i104

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i104:                                      ; preds = %for.body.i
  %div6.i.i.i = lshr i32 %83, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div6.i.i.i, i32 %i.0217.i)
  %cmp.not.i.i.i = icmp ugt i32 %div6.i.i.i, %i.0217.i
  %sub.i.i.i = sub nsw i32 16, %div6.i.i.i
  %add.i.i.i = select i1 %cmp.not.i.i.i, i32 0, i32 %sub.i.i.i
  %n.addr.0.i.i.i = add i32 %add.i.i.i, %i.0217.i
  %shl.i.i = shl nuw i32 1, %n.addr.0.i.i.i
  %86 = ptrtoint ptr %arrayidx.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i.i99, align 4
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #9, !srcloc !107
  %89 = call i32 @llvm.bswap.i32(i32 %88) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i.i.i = and i32 %89, %shl.i.i
  %90 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i.i.i.i103 = icmp eq i8 %91, 0
  br i1 %tobool.not.i.i.i.i103, label %if.else.i.i.i.i105, label %if.end.i104.hw_test_and_clear_complete.exit.i_crit_edge

if.end.i104.hw_test_and_clear_complete.exit.i_crit_edge: ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_test_and_clear_complete.exit.i

if.else.i.i.i.i105:                               ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %arrayidx.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i.i.i99, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  call void @arm_heavy_mb() #9
  %94 = call i32 @llvm.bswap.i32(i32 %and.i.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %94) #9, !srcloc !111
  br label %hw_test_and_clear_complete.exit.i

hw_test_and_clear_complete.exit.i:                ; preds = %if.else.i.i.i.i105, %if.end.i104.hw_test_and_clear_complete.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i106 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i106, label %hw_test_and_clear_complete.exit.i.if.end23.i_crit_edge, label %if.then2.i

hw_test_and_clear_complete.exit.i.if.end23.i_crit_edge: ; preds = %hw_test_and_clear_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then2.i:                                       ; preds = %hw_test_and_clear_complete.exit.i
  %qh.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0217.i, i32 5
  %95 = ptrtoint ptr %qh.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %qh.i.i, align 4
  %cmp.not67.i.i = icmp eq ptr %96, %qh.i.i
  br i1 %cmp.not67.i.i, label %if.then2.i.isr_tr_complete_low.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then2.i.isr_tr_complete_low.exit.i_crit_edge:  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %isr_tr_complete_low.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then2.i
  %ci1.i.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0217.i, i32 7
  %dir58.i.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0217.i, i32 1
  %pending_td.i.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0217.i, i32 10
  %td_pool.i.i.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0217.i, i32 9
  %lock.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0217.i, i32 8
  %type.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0217.i, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn.in69.i.i = phi ptr [ %96, %for.body.lr.ph.i.i ], [ %.pn72.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %hweptemp.068.i.i = phi ptr [ %arrayidx.i102, %for.body.lr.ph.i.i ], [ %hweptemp.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %hwreq.071.i.i = getelementptr i8, ptr %.pn.in69.i.i, i32 -56
  %97 = ptrtoint ptr %.pn.in69.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn72.i.i = load ptr, ptr %.pn.in69.i.i, align 4
  %98 = ptrtoint ptr %ci1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ci1.i.i.i, align 4
  %status.i.i.i = getelementptr i8, ptr %.pn.in69.i.i, i32 -8
  %100 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %status.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -114, i32 %101)
  %cmp.not.i.i46.i = icmp eq i32 %101, -114
  br i1 %cmp.not.i.i46.i, label %if.end.i.i.i, label %for.body.i.i.isr_tr_complete_low.exit.i_crit_edge

for.body.i.i.isr_tr_complete_low.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %isr_tr_complete_low.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %length.i.i.i = getelementptr i8, ptr %.pn.in69.i.i, i32 -52
  %102 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %length.i.i.i, align 4
  %104 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %status.i.i.i, align 4
  %tds.i.i.i = getelementptr i8, ptr %.pn.in69.i.i, i32 8
  %105 = ptrtoint ptr %tds.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tds.i.i.i, align 4
  %cmp11.not154.i.i.i = icmp eq ptr %106, %tds.i.i.i
  br i1 %cmp11.not154.i.i.i, label %if.end.i.i.i._hardware_dequeue.exit.i.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

if.end.i.i.i._hardware_dequeue.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_hardware_dequeue.exit.i.i

for.body.i.i.i:                                   ; preds = %list_del_init.exit.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %node.0156.i.i.i = phi ptr [ %tmpnode.0158.i.i.i, %list_del_init.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %106, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %actual.0155.i.i.i = phi i32 [ %sub.i.i48.i, %list_del_init.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %103, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %107 = ptrtoint ptr %node.0156.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %tmpnode.0158.i.i.i = load ptr, ptr %node.0156.i.i.i, align 4
  %ptr.i.i.i = getelementptr inbounds %struct.td_node, ptr %node.0156.i.i.i, i32 0, i32 2
  %108 = ptrtoint ptr %ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ptr.i.i.i, align 4
  %token.i.i.i = getelementptr inbounds %struct.ci_hw_td, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %token.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %token.i.i.i, align 4
  %112 = call i32 @llvm.bswap.i32(i32 %111) #9
  call fastcc void @trace_ci_complete_td(ptr noundef %arrayidx.i102, ptr noundef %hwreq.071.i.i, ptr noundef %node.0156.i.i.i) #9
  %and.i.i47.i = and i32 %112, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i47.i)
  %cmp12.not.i.i.i = icmp eq i32 %and.i.i47.i, 0
  br i1 %cmp12.not.i.i.i, label %if.end25.i.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %for.body.i.i.i
  %rev.i.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %99, i32 0, i32 45
  %113 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rev.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %114)
  %cmp15.i.i.i = icmp eq i32 %114, 24
  br i1 %cmp15.i.i.i, label %if.then17.i.i.i, label %if.then13.i.i.i.for.end.thread57.i.i_crit_edge

if.then13.i.i.i.for.end.thread57.i.i_crit_edge:   ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread57.i.i

if.then17.i.i.i:                                  ; preds = %if.then13.i.i.i
  %115 = ptrtoint ptr %dir58.i.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %dir58.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %116)
  %cmp.i.i.i.i = icmp eq i8 %116, 1
  %cond.i.i.i.i = select i1 %cmp.i.i.i.i, i32 16, i32 0
  %num.i.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0217.i, i32 2
  %117 = ptrtoint ptr %num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %num.i.i.i, align 1
  %conv.i.i.i = zext i8 %118 to i32
  %add.i.i.i.i = add nuw nsw i32 %cond.i.i.i.i, %conv.i.i.i
  %shl.i.i.i = shl nuw i32 1, %add.i.i.i.i
  %arrayidx.i.i.i.i107 = getelementptr %struct.ci_hdrc, ptr %99, i32 0, i32 2, i32 6, i32 19
  %119 = ptrtoint ptr %arrayidx.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i.i.i107, align 4
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #9, !srcloc !107
  %122 = call i32 @llvm.bswap.i32(i32 %121) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i.i.i.i = and i32 %122, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i108 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i108, label %if.then19.i.i.i, label %if.then17.i.i.i.for.end.thread57.i.i_crit_edge

if.then17.i.i.i.for.end.thread57.i.i_crit_edge:   ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread57.i.i

if.then19.i.i.i:                                  ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dma.i.i.i = getelementptr inbounds %struct.td_node, ptr %node.0156.i.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dma.i.i.i, align 4
  %125 = call i32 @llvm.bswap.i32(i32 %124) #9
  %ptr.i48.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0217.i, i32 5, i32 1
  %126 = ptrtoint ptr %ptr.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ptr.i48.i.i, align 4
  %td.i.i.i = getelementptr inbounds %struct.ci_hw_qh, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %td.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %125, ptr %td.i.i.i, align 4
  %129 = load ptr, ptr %ptr.i48.i.i, align 4
  %token.i49.i.i = getelementptr inbounds %struct.ci_hw_qh, ptr %129, i32 0, i32 2, i32 1
  %130 = ptrtoint ptr %token.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %token.i49.i.i, align 4
  %and.i50.i.i = and i32 %131, 1073741823
  store i32 %and.i50.i.i, ptr %token.i49.i.i, align 4
  %132 = ptrtoint ptr %num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %num.i.i.i, align 1
  %conv.i52.i.i = zext i8 %133 to i32
  %134 = ptrtoint ptr %dir58.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %dir58.i.i.i, align 4
  %conv4.i.i.i = zext i8 %135 to i32
  %136 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %cmp.i.i.i = icmp eq i8 %137, 0
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i32
  %call.i.i.i = call fastcc i32 @hw_ep_prime(ptr noundef %99, i32 noundef %conv.i52.i.i, i32 noundef %conv4.i.i.i, i32 noundef %conv6.i.i.i) #9
  br label %for.end.thread57.i.i

for.end.thread57.i.i:                             ; preds = %if.then19.i.i.i, %if.then17.i.i.i.for.end.thread57.i.i_crit_edge, %if.then13.i.i.i.for.end.thread57.i.i_crit_edge
  %138 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -114, ptr %status.i.i.i, align 4
  br label %195

if.end25.i.i.i:                                   ; preds = %for.body.i.i.i
  %and26.i.i.i = lshr i32 %112, 16
  %shr.i.i.i = and i32 %and26.i.i.i, 32767
  %sub.i.i48.i = sub i32 %actual.0155.i.i.i, %shr.i.i.i
  %and28.i.i.i = and i32 %112, 255
  %139 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %and28.i.i.i, ptr %status.i.i.i, align 4
  %and33.i.i.i = and i32 %112, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i.i)
  %tobool34.not.i.i.i = icmp eq i32 %and33.i.i.i, 0
  br i1 %tobool34.not.i.i.i, label %if.else.i.i.i109, label %if.end25.i.i.i.for.end.sink.split.i.i.i_crit_edge

if.end25.i.i.i.for.end.sink.split.i.i.i_crit_edge: ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.sink.split.i.i.i

if.else.i.i.i109:                                 ; preds = %if.end25.i.i.i
  %and40.i.i.i = and i32 %112, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i.i)
  %tobool41.not.i.i.i = icmp eq i32 %and40.i.i.i, 0
  br i1 %tobool41.not.i.i.i, label %if.else45.i.i.i, label %if.else.i.i.i109.for.end.sink.split.i.i.i_crit_edge

if.else.i.i.i109.for.end.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.sink.split.i.i.i

if.else45.i.i.i:                                  ; preds = %if.else.i.i.i109
  %and48.i.i.i = and i32 %112, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i.i)
  %tobool49.not.i.i.i = icmp eq i32 %and48.i.i.i, 0
  br i1 %tobool49.not.i.i.i, label %if.end55.i.i.i, label %if.else45.i.i.i.for.end.sink.split.i.i.i_crit_edge

if.else45.i.i.i.for.end.sink.split.i.i.i_crit_edge: ; preds = %if.else45.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.sink.split.i.i.i

if.end55.i.i.i:                                   ; preds = %if.else45.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %shr.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %if.end55.i.i.i.if.end66.i.i.i_crit_edge, label %if.then57.i.i.i

if.end55.i.i.i.if.end66.i.i.i_crit_edge:          ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i.i.i

if.then57.i.i.i:                                  ; preds = %if.end55.i.i.i
  %140 = ptrtoint ptr %dir58.i.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %dir58.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %141)
  %cmp60.i.i.i = icmp eq i8 %141, 1
  br i1 %cmp60.i.i.i, label %if.then57.i.i.i.for.end.sink.split.i.i.i_crit_edge, label %if.then57.i.i.i.if.end66.i.i.i_crit_edge

if.then57.i.i.i.if.end66.i.i.i_crit_edge:         ; preds = %if.then57.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i.i.i

if.then57.i.i.i.for.end.sink.split.i.i.i_crit_edge: ; preds = %if.then57.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.sink.split.i.i.i

if.end66.i.i.i:                                   ; preds = %if.then57.i.i.i.if.end66.i.i.i_crit_edge, %if.end55.i.i.i.if.end66.i.i.i_crit_edge
  %142 = ptrtoint ptr %pending_td.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pending_td.i.i.i, align 4
  %tobool67.not.i.i.i = icmp eq ptr %143, null
  br i1 %tobool67.not.i.i.i, label %if.end66.i.i.i.if.end69.i.i.i_crit_edge, label %if.then68.i.i.i

if.end66.i.i.i.if.end69.i.i.i_crit_edge:          ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i.i.i

if.then68.i.i.i:                                  ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %td_pool.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %td_pool.i.i.i.i, align 4
  %ptr.i.i.i.i = getelementptr inbounds %struct.td_node, ptr %143, i32 0, i32 2
  %146 = ptrtoint ptr %ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ptr.i.i.i.i, align 4
  %dma.i.i.i.i = getelementptr inbounds %struct.td_node, ptr %143, i32 0, i32 1
  %148 = ptrtoint ptr %dma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dma.i.i.i.i, align 4
  call void @dma_pool_free(ptr noundef %145, ptr noundef %147, i32 noundef %149) #9
  %150 = ptrtoint ptr %pending_td.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %pending_td.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %143) #9
  br label %if.end69.i.i.i

if.end69.i.i.i:                                   ; preds = %if.then68.i.i.i, %if.end66.i.i.i.if.end69.i.i.i_crit_edge
  %151 = ptrtoint ptr %pending_td.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %node.0156.i.i.i, ptr %pending_td.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %node.0156.i.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end69.i.i.i.list_del_init.exit.i.i.i_crit_edge

if.end69.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %if.end69.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end69.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.0156.i.i.i, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %154 = ptrtoint ptr %node.0156.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %node.0156.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev1.i.i.i.i.i.i, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %155, ptr %153, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.end69.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %158 = ptrtoint ptr %node.0156.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %node.0156.i.i.i, ptr %node.0156.i.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.0156.i.i.i, i32 0, i32 1
  %159 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %node.0156.i.i.i, ptr %prev.i3.i.i.i.i, align 4
  %cmp11.not.i.i.i = icmp eq ptr %tmpnode.0158.i.i.i, %tds.i.i.i
  br i1 %cmp11.not.i.i.i, label %list_del_init.exit.i.i.i._hardware_dequeue.exit.i.i_crit_edge, label %list_del_init.exit.i.i.i.for.body.i.i.i_crit_edge

list_del_init.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

list_del_init.exit.i.i.i._hardware_dequeue.exit.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_hardware_dequeue.exit.i.i

for.end.sink.split.i.i.i:                         ; preds = %if.then57.i.i.i.for.end.sink.split.i.i.i_crit_edge, %if.else45.i.i.i.for.end.sink.split.i.i.i_crit_edge, %if.else.i.i.i109.for.end.sink.split.i.i.i_crit_edge, %if.end25.i.i.i.for.end.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ -32, %if.end25.i.i.i.for.end.sink.split.i.i.i_crit_edge ], [ -71, %if.else.i.i.i109.for.end.sink.split.i.i.i_crit_edge ], [ -84, %if.else45.i.i.i.for.end.sink.split.i.i.i_crit_edge ], [ -71, %if.then57.i.i.i.for.end.sink.split.i.i.i_crit_edge ]
  %160 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %.sink.i.i.i, ptr %status.i.i.i, align 4
  br label %_hardware_dequeue.exit.i.i

_hardware_dequeue.exit.i.i:                       ; preds = %for.end.sink.split.i.i.i, %list_del_init.exit.i.i.i._hardware_dequeue.exit.i.i_crit_edge, %if.end.i.i.i._hardware_dequeue.exit.i.i_crit_edge
  %actual.1.i.i.i = phi i32 [ %103, %if.end.i.i.i._hardware_dequeue.exit.i.i_crit_edge ], [ %sub.i.i48.i, %for.end.sink.split.i.i.i ], [ %sub.i.i48.i, %list_del_init.exit.i.i.i._hardware_dequeue.exit.i.i_crit_edge ]
  %161 = ptrtoint ptr %ci1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ci1.i.i.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 8
  %parent.i.i.i = getelementptr inbounds %struct.device, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %parent.i.i.i, align 8
  %167 = ptrtoint ptr %dir58.i.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %dir58.i.i.i, align 4
  %conv80.i.i.i = zext i8 %168 to i32
  call void @usb_gadget_unmap_request_by_dev(ptr noundef %166, ptr noundef %hwreq.071.i.i, i32 noundef %conv80.i.i.i) #9
  %actual82.i.i.i = getelementptr i8, ptr %.pn.in69.i.i, i32 -4
  %169 = ptrtoint ptr %actual82.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %actual82.i.i.i, align 4
  %add.i.i49.i = add i32 %170, %actual.1.i.i.i
  store i32 %add.i.i49.i, ptr %actual82.i.i.i, align 4
  %171 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %status.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool85.not.i.i.i = icmp eq i32 %172, 0
  %add..i.i.i = select i1 %tobool85.not.i.i.i, i32 %add.i.i49.i, i32 %172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add..i.i.i)
  %cmp10.i.i = icmp slt i32 %add..i.i.i, 0
  br i1 %cmp10.i.i, label %for.end.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %_hardware_dequeue.exit.i.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in69.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del_init.exit.i.i_crit_edge

if.end.i.i.list_del_init.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in69.i.i, i32 0, i32 1
  %173 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %prev.i.i.i.i, align 4
  %175 = ptrtoint ptr %.pn.in69.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %.pn.in69.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %174, ptr %prev1.i.i.i.i.i, align 4
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %176, ptr %174, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del_init.exit.i.i_crit_edge
  %179 = ptrtoint ptr %.pn.in69.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %.pn.in69.i.i, ptr %.pn.in69.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in69.i.i, i32 0, i32 1
  %180 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %.pn.in69.i.i, ptr %prev.i3.i.i.i, align 4
  %complete.i.i = getelementptr i8, ptr %.pn.in69.i.i, i32 -28
  %181 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %complete.i.i, align 4
  %cmp12.not.i.i = icmp eq ptr %182, null
  br i1 %cmp12.not.i.i, label %list_del_init.exit.i.i.for.inc.i.i_crit_edge, label %if.then13.i.i

list_del_init.exit.i.i.for.inc.i.i_crit_edge:     ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then13.i.i:                                    ; preds = %list_del_init.exit.i.i
  %183 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %lock.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %184) #9
  %185 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %cmp14.i.i = icmp eq i8 %186, 0
  br i1 %cmp14.i.i, label %land.lhs.true.i.i, label %if.then13.i.i.if.end18.i.i_crit_edge

if.then13.i.i.if.end18.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i.i

land.lhs.true.i.i:                                ; preds = %if.then13.i.i
  %187 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i.i110 = icmp eq i32 %188, 0
  br i1 %tobool.not.i.i110, label %land.lhs.true.i.i.if.end18.i.i_crit_edge, label %if.then17.i.i

land.lhs.true.i.i.if.end18.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i.i

if.then17.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %189 = ptrtoint ptr %ci1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ci1.i.i.i, align 4
  %ep0in.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %190, i32 0, i32 25
  %191 = ptrtoint ptr %ep0in.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ep0in.i.i, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then17.i.i, %land.lhs.true.i.i.if.end18.i.i_crit_edge, %if.then13.i.i.if.end18.i.i_crit_edge
  %hweptemp.1.i.i = phi ptr [ %192, %if.then17.i.i ], [ %hweptemp.068.i.i, %land.lhs.true.i.i.if.end18.i.i_crit_edge ], [ %hweptemp.068.i.i, %if.then13.i.i.if.end18.i.i_crit_edge ]
  call void @usb_gadget_giveback_request(ptr noundef %hweptemp.1.i.i, ptr noundef %hwreq.071.i.i) #9
  %193 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %lock.i.i, align 4
  call void @_raw_spin_lock(ptr noundef %194) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end18.i.i, %list_del_init.exit.i.i.for.inc.i.i_crit_edge
  %hweptemp.2.i.i = phi ptr [ %hweptemp.1.i.i, %if.end18.i.i ], [ %hweptemp.068.i.i, %list_del_init.exit.i.i.for.inc.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %.pn72.i.i, %qh.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.isr_tr_complete_low.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.isr_tr_complete_low.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %isr_tr_complete_low.exit.i

for.end.i.i:                                      ; preds = %_hardware_dequeue.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %add..i.i.i)
  %cmp27.i.i = icmp eq i32 %add..i.i.i, -16
  br i1 %cmp27.i.i, label %for.end.i.i._crit_edge, label %for.end.i.i.isr_tr_complete_low.exit.i_crit_edge

for.end.i.i.isr_tr_complete_low.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %isr_tr_complete_low.exit.i

for.end.i.i._crit_edge:                           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %195

195:                                              ; preds = %for.end.i.i._crit_edge, %for.end.thread57.i.i
  br label %isr_tr_complete_low.exit.i

isr_tr_complete_low.exit.i:                       ; preds = %195, %for.end.i.i.isr_tr_complete_low.exit.i_crit_edge, %for.inc.i.i.isr_tr_complete_low.exit.i_crit_edge, %for.body.i.i.isr_tr_complete_low.exit.i_crit_edge, %if.then2.i.isr_tr_complete_low.exit.i_crit_edge
  %196 = phi i32 [ 0, %195 ], [ %add..i.i.i, %for.end.i.i.isr_tr_complete_low.exit.i_crit_edge ], [ 0, %if.then2.i.isr_tr_complete_low.exit.i_crit_edge ], [ %add..i.i.i, %for.inc.i.i.isr_tr_complete_low.exit.i_crit_edge ], [ -22, %for.body.i.i.isr_tr_complete_low.exit.i_crit_edge ]
  %type.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %i.0217.i, i32 3
  %197 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %cmp4.i = icmp eq i8 %198, 0
  br i1 %cmp4.i, label %if.then6.i, label %isr_tr_complete_low.exit.i.if.end23.i_crit_edge

isr_tr_complete_low.exit.i.if.end23.i_crit_edge:  ; preds = %isr_tr_complete_low.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then6.i:                                       ; preds = %isr_tr_complete_low.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp7.i = icmp sgt i32 %196, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.then6.i.if.end11.i_crit_edge

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.then6.i
  %199 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %status.i.i, align 8
  %tobool.not.i50.i = icmp eq ptr %200, null
  br i1 %tobool.not.i50.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then9.i
  %.b52.i.i = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  br i1 %.b52.i.i, label %land.rhs.i.i.if.then14.i_crit_edge, label %if.then.i.i, !prof !112

land.rhs.i.i.if.then14.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @isr_setup_status_phase.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1080, i32 noundef 9, ptr noundef null) #9
  br label %if.then14.i

if.end39.i.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %201 = ptrtoint ptr %ep0_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %ep0_dir.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %202)
  %cmp.i.i = icmp eq i32 %202, 1
  %cond.in.i.i = select i1 %cmp.i.i, ptr %ep0out.i.i, ptr %ep0in.i51.i
  %203 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %context.i.i = getelementptr inbounds %struct.usb_request, ptr %200, i32 0, i32 8
  %204 = ptrtoint ptr %context.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %ci, ptr %context.i.i, align 4
  %205 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %status.i.i, align 8
  %complete.i52.i = getelementptr inbounds %struct.usb_request, ptr %206, i32 0, i32 7
  %207 = ptrtoint ptr %complete.i52.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @isr_setup_status_complete, ptr %complete.i52.i, align 4
  %208 = load ptr, ptr %status.i.i, align 8
  %call.i.i = call fastcc i32 @_ep_queue(ptr noundef %cond.i.i, ptr noundef %208) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end39.i.i, %if.then6.i.if.end11.i_crit_edge
  %err.0.i = phi i32 [ %196, %if.then6.i.if.end11.i_crit_edge ], [ %call.i.i, %if.end39.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp12.i = icmp slt i32 %err.0.i, 0
  br i1 %cmp12.i, label %if.end11.i.if.then14.i_crit_edge, label %if.end11.i.if.end23.i_crit_edge

if.end11.i.if.end23.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.end11.i.if.then14.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.end11.i.if.then14.i_crit_edge, %if.then.i.i, %land.rhs.i.i.if.then14.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %call16.i = call fastcc i32 @_ep_set_halt(ptr noundef %arrayidx.i102, i32 noundef 1, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then14.i.if.end19.i_crit_edge, label %do.end.i111

if.then14.i.if.end19.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

do.end.i111:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %209 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ci, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %210, ptr noundef nonnull @.str.6) #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i111, %if.then14.i.if.end19.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end19.i, %if.end11.i.if.end23.i_crit_edge, %isr_tr_complete_low.exit.i.if.end23.i_crit_edge, %hw_test_and_clear_complete.exit.i.if.end23.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0217.i)
  %cmp24.i = icmp eq i32 %i.0217.i, 0
  br i1 %cmp24.i, label %land.lhs.true.i, label %if.end23.i.cleanup.i_crit_edge

if.end23.i.cleanup.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %if.end23.i
  %211 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx.i.i101, align 4
  %213 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #9, !srcloc !107
  %214 = lshr i32 %213, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i.i112 = and i32 %214, 1
  %215 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool.not.i.i53.i = icmp eq i8 %216, 0
  br i1 %tobool.not.i.i53.i, label %if.else.i.i54.i, label %land.lhs.true.i.hw_test_and_clear.exit.i_crit_edge

land.lhs.true.i.hw_test_and_clear.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_test_and_clear.exit.i

if.else.i.i54.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %217 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx.i.i101, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  call void @arm_heavy_mb() #9
  %219 = shl nuw nsw i32 %and.i.i112, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %219) #9, !srcloc !111
  br label %hw_test_and_clear.exit.i

hw_test_and_clear.exit.i:                         ; preds = %if.else.i.i54.i, %land.lhs.true.i.hw_test_and_clear.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i112)
  %tobool27.not.i = icmp eq i32 %and.i.i112, 0
  br i1 %tobool27.not.i, label %hw_test_and_clear.exit.i.cleanup.i_crit_edge, label %if.then28.i

hw_test_and_clear.exit.i.cleanup.i_crit_edge:     ; preds = %hw_test_and_clear.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then28.i:                                      ; preds = %hw_test_and_clear.exit.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i.i) #9
  %220 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 -1, ptr %req.i.i, align 8
  %221 = ptrtoint ptr %ep0out.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ep0out.i.i, align 8
  %call.i56.i = call fastcc i32 @_ep_nuke(ptr noundef %222) #9
  %223 = ptrtoint ptr %ep0in.i51.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ep0in.i51.i, align 4
  %call1.i.i = call fastcc i32 @_ep_nuke(ptr noundef %224) #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %hw_test_and_clear_setup_guard.exit.i.i.do.body.i.i_crit_edge, %if.then28.i
  %225 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %227 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %226) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %228 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %230 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %231 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool.not.i.i.i.i.i.i = icmp eq i8 %232, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i, label %do.body.i.i.hw_test_and_set_setup_guard.exit.i.i_crit_edge

do.body.i.i.hw_test_and_set_setup_guard.exit.i.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_test_and_set_setup_guard.exit.i.i

if.else.i.i.i.i.i.i:                              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %233 = or i32 %230, 2097152
  %234 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %233) #9, !srcloc !111
  br label %hw_test_and_set_setup_guard.exit.i.i

hw_test_and_set_setup_guard.exit.i.i:             ; preds = %if.else.i.i.i.i.i.i, %do.body.i.i.hw_test_and_set_setup_guard.exit.i.i_crit_edge
  %236 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %ptr.i.i, align 4
  %setup.i.i = getelementptr inbounds %struct.ci_hw_qh, ptr %237, i32 0, i32 4
  %238 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_loadN_noabort(i32 %238, i32 8)
  %239 = load i64, ptr %setup.i.i, align 4
  %240 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %242 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %243 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %245 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %246 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool.not.i.i.i.i281.i.i = icmp eq i8 %247, 0
  br i1 %tobool.not.i.i.i.i281.i.i, label %if.else.i.i.i.i282.i.i, label %hw_test_and_set_setup_guard.exit.i.i.hw_test_and_clear_setup_guard.exit.i.i_crit_edge

hw_test_and_set_setup_guard.exit.i.i.hw_test_and_clear_setup_guard.exit.i.i_crit_edge: ; preds = %hw_test_and_set_setup_guard.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_test_and_clear_setup_guard.exit.i.i

if.else.i.i.i.i282.i.i:                           ; preds = %hw_test_and_set_setup_guard.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %248 = and i32 %245, -2097153
  %249 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %248) #9, !srcloc !111
  br label %hw_test_and_clear_setup_guard.exit.i.i

hw_test_and_clear_setup_guard.exit.i.i:           ; preds = %if.else.i.i.i.i282.i.i, %hw_test_and_set_setup_guard.exit.i.i.hw_test_and_clear_setup_guard.exit.i.i_crit_edge
  %251 = and i32 %242, 2097152
  %tobool.not.i58.i = icmp eq i32 %251, 0
  br i1 %tobool.not.i58.i, label %hw_test_and_clear_setup_guard.exit.i.i.do.body.i.i_crit_edge, label %do.end.i.i

hw_test_and_clear_setup_guard.exit.i.i.do.body.i.i_crit_edge: ; preds = %hw_test_and_clear_setup_guard.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %hw_test_and_clear_setup_guard.exit.i.i
  %252 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 %239, ptr %req.i.i, align 8
  %253 = lshr i64 %239, 56
  %254 = trunc i64 %253 to i8
  %255 = lshr i8 %254, 7
  %and.lobit.i.i = zext i8 %255 to i32
  %256 = ptrtoint ptr %ep0_dir.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %and.lobit.i.i, ptr %ep0_dir.i.i, align 4
  %257 = lshr i64 %239, 48
  %258 = trunc i64 %257 to i8
  %259 = zext i8 %258 to i64
  call void @__sanitizer_cov_trace_switch(i64 %259, ptr @__sancov_gen_cov_switch_values)
  switch i8 %258, label %do.end.i.i.delegate.i.i_crit_edge [
    i8 1, label %sw.bb.i.i
    i8 0, label %sw.bb54.i.i
    i8 5, label %sw.bb81.i.i
    i8 3, label %sw.bb100.i.i
  ]

do.end.i.i.delegate.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delegate.i.i

sw.bb.i.i:                                        ; preds = %do.end.i.i
  %260 = zext i8 %254 to i64
  call void @__sanitizer_cov_trace_switch(i64 %260, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %254, label %sw.bb.i.i.delegate.i.i_crit_edge [
    i8 2, label %land.lhs.true.i60.i
    i8 0, label %land.lhs.true38.i.i
  ]

sw.bb.i.i.delegate.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delegate.i.i

land.lhs.true.i60.i:                              ; preds = %sw.bb.i.i
  %261 = ptrtoint ptr %80 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %262)
  %cmp8.i.i = icmp eq i16 %262, 0
  br i1 %cmp8.i.i, label %if.then.i61.i, label %land.lhs.true.i60.i.delegate.i.i_crit_edge

land.lhs.true.i60.i.delegate.i.i_crit_edge:       ; preds = %land.lhs.true.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delegate.i.i

if.then.i61.i:                                    ; preds = %land.lhs.true.i60.i
  %263 = ptrtoint ptr %82 to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %82, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %264)
  %cmp11.not.i.i = icmp eq i16 %264, 0
  br i1 %cmp11.not.i.i, label %if.end.i62.i, label %if.then.i61.i.if.then200.i.i_crit_edge

if.then.i61.i.if.then200.i.i_crit_edge:           ; preds = %if.then.i61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.end.i62.i:                                     ; preds = %if.then.i61.i
  %265 = ptrtoint ptr %81 to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %81, align 4
  %267 = call i16 @llvm.bswap.i16(i16 %266) #9
  %conv14.i.i = zext i16 %267 to i32
  %and15.i.i = and i32 %conv14.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  %and18.i.i = and i32 %conv14.i.i, 15
  br i1 %tobool16.not.i.i, label %if.end.i62.i.if.end22.i.i_crit_edge, label %if.then21.i.i

if.end.i62.i.if.end22.i.i_crit_edge:              ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.then21.i.i:                                    ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  %268 = ptrtoint ptr %hw_ep_max.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %hw_ep_max.i, align 8
  %div276.i.i = lshr i32 %269, 1
  %add.i.i = add nuw i32 %div276.i.i, %and18.i.i
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then21.i.i, %if.end.i62.i.if.end22.i.i_crit_edge
  %num.0.i.i = phi i32 [ %add.i.i, %if.then21.i.i ], [ %and18.i.i, %if.end.i62.i.if.end22.i.i_crit_edge ]
  %wedge.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %num.0.i.i, i32 6
  %270 = ptrtoint ptr %wedge.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %wedge.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool25.not.i.i = icmp eq i32 %271, 0
  br i1 %tobool25.not.i.i, label %if.then26.i.i, label %if.end22.i.i.if.end34.i.i_crit_edge

if.end22.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

if.then26.i.i:                                    ; preds = %if.end22.i.i
  %arrayidx24.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %num.0.i.i
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %call29.i.i = call i32 @usb_ep_clear_halt(ptr noundef %arrayidx24.i.i) #9
  call void @_raw_spin_lock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool31.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool31.not.i.i, label %if.then26.i.i.if.end34.i.i_crit_edge, label %if.then26.i.i.sw.epilog197.i.i_crit_edge

if.then26.i.i.sw.epilog197.i.i_crit_edge:         ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog197.i.i

if.then26.i.i.if.end34.i.i_crit_edge:             ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then26.i.i.if.end34.i.i_crit_edge, %if.end22.i.i.if.end34.i.i_crit_edge
  %272 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %status.i.i, align 8
  %tobool.not.i183.i = icmp eq ptr %273, null
  br i1 %tobool.not.i183.i, label %land.rhs.i185.i, label %if.end39.i196.i

land.rhs.i185.i:                                  ; preds = %if.end34.i.i
  %.b52.i184.i = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  br i1 %.b52.i184.i, label %land.rhs.i185.i.if.then200.i.i_crit_edge, label %land.rhs.i185.i.if.then200.i.sink.split.i_crit_edge, !prof !112

land.rhs.i185.i.if.then200.i.sink.split.i_crit_edge: ; preds = %land.rhs.i185.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.sink.split.i

land.rhs.i185.i.if.then200.i.i_crit_edge:         ; preds = %land.rhs.i185.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.end39.i196.i:                                  ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %274 = ptrtoint ptr %ep0_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %ep0_dir.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %275)
  %cmp.i188.i = icmp eq i32 %275, 1
  %cond.in.i191.i = select i1 %cmp.i188.i, ptr %ep0out.i.i, ptr %ep0in.i51.i
  %276 = ptrtoint ptr %cond.in.i191.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %cond.i192.i = load ptr, ptr %cond.in.i191.i, align 4
  %context.i193.i = getelementptr inbounds %struct.usb_request, ptr %273, i32 0, i32 8
  %277 = ptrtoint ptr %context.i193.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %ci, ptr %context.i193.i, align 4
  %278 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %status.i.i, align 8
  %complete.i194.i = getelementptr inbounds %struct.usb_request, ptr %279, i32 0, i32 7
  %280 = ptrtoint ptr %complete.i194.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr @isr_setup_status_complete, ptr %complete.i194.i, align 4
  %281 = load ptr, ptr %status.i.i, align 8
  %call.i195.i = call fastcc i32 @_ep_queue(ptr noundef %cond.i192.i, ptr noundef %281) #9
  br label %sw.epilog197.i.i

land.lhs.true38.i.i:                              ; preds = %sw.bb.i.i
  %282 = ptrtoint ptr %80 to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %283)
  %cmp41.i.i = icmp eq i16 %283, 256
  br i1 %cmp41.i.i, label %if.then43.i.i, label %land.lhs.true38.i.i.delegate.i.i_crit_edge

land.lhs.true38.i.i.delegate.i.i_crit_edge:       ; preds = %land.lhs.true38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delegate.i.i

if.then43.i.i:                                    ; preds = %land.lhs.true38.i.i
  %284 = ptrtoint ptr %82 to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %82, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %285)
  %cmp46.not.i.i = icmp eq i16 %285, 0
  br i1 %cmp46.not.i.i, label %if.end49.i.i, label %if.then43.i.i.if.then200.i.i_crit_edge

if.then43.i.i.if.then200.i.i_crit_edge:           ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.end49.i.i:                                     ; preds = %if.then43.i.i
  %286 = ptrtoint ptr %remote_wakeup151.i.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 0, ptr %remote_wakeup151.i.i, align 2
  %287 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %status.i.i, align 8
  %tobool.not.i166.i = icmp eq ptr %288, null
  br i1 %tobool.not.i166.i, label %land.rhs.i168.i, label %if.end39.i179.i

land.rhs.i168.i:                                  ; preds = %if.end49.i.i
  %.b52.i167.i = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  br i1 %.b52.i167.i, label %land.rhs.i168.i.if.then200.i.i_crit_edge, label %land.rhs.i168.i.if.then200.i.sink.split.i_crit_edge, !prof !112

land.rhs.i168.i.if.then200.i.sink.split.i_crit_edge: ; preds = %land.rhs.i168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.sink.split.i

land.rhs.i168.i.if.then200.i.i_crit_edge:         ; preds = %land.rhs.i168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.end39.i179.i:                                  ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %289 = ptrtoint ptr %ep0in.i51.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %cond.i175.i = load ptr, ptr %ep0in.i51.i, align 4
  %context.i176.i = getelementptr inbounds %struct.usb_request, ptr %288, i32 0, i32 8
  %290 = ptrtoint ptr %context.i176.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %ci, ptr %context.i176.i, align 4
  %291 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %status.i.i, align 8
  %complete.i177.i = getelementptr inbounds %struct.usb_request, ptr %292, i32 0, i32 7
  %293 = ptrtoint ptr %complete.i177.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr @isr_setup_status_complete, ptr %complete.i177.i, align 4
  %294 = load ptr, ptr %status.i.i, align 8
  %call.i178.i = call fastcc i32 @_ep_queue(ptr noundef %cond.i175.i, ptr noundef %294) #9
  br label %sw.epilog197.i.i

sw.bb54.i.i:                                      ; preds = %do.end.i.i
  %295 = zext i8 %254 to i64
  call void @__sanitizer_cov_trace_switch(i64 %295, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %254, label %sw.bb54.i.i.delegate.i.i_crit_edge [
    i8 -128, label %lor.lhs.false.i.i
    i8 -126, label %sw.bb54.i.i.if.end68.i.i_crit_edge
    i8 -127, label %sw.bb54.i.i.if.end68.i.i_crit_edge156
  ]

sw.bb54.i.i.if.end68.i.i_crit_edge156:            ; preds = %sw.bb54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i.i

sw.bb54.i.i.if.end68.i.i_crit_edge:               ; preds = %sw.bb54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i.i

sw.bb54.i.i.delegate.i.i_crit_edge:               ; preds = %sw.bb54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delegate.i.i

lor.lhs.false.i.i:                                ; preds = %sw.bb54.i.i
  %296 = ptrtoint ptr %81 to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %81, align 4
  %.fr.i.i = freeze i16 %297
  call void @__sanitizer_cov_trace_const_cmp2(i16 240, i16 %.fr.i.i)
  %cmp59.not.i.i = icmp eq i16 %.fr.i.i, 240
  br i1 %cmp59.not.i.i, label %lor.lhs.false.i.i.delegate.i.i_crit_edge, label %lor.lhs.false.i.i.if.end68.i.i_crit_edge

lor.lhs.false.i.i.if.end68.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i.i

lor.lhs.false.i.i.delegate.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delegate.i.i

if.end68.i.i:                                     ; preds = %lor.lhs.false.i.i.if.end68.i.i_crit_edge, %sw.bb54.i.i.if.end68.i.i_crit_edge, %sw.bb54.i.i.if.end68.i.i_crit_edge156
  %298 = ptrtoint ptr %82 to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %82, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %299)
  %cmp71.not.i.i = icmp eq i16 %299, 512
  br i1 %cmp71.not.i.i, label %lor.lhs.false73.i.i, label %if.end68.i.i.if.then200.i.i_crit_edge

if.end68.i.i.if.then200.i.i_crit_edge:            ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

lor.lhs.false73.i.i:                              ; preds = %if.end68.i.i
  %300 = ptrtoint ptr %80 to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %301)
  %cmp76.not.i.i = icmp eq i16 %301, 0
  br i1 %cmp76.not.i.i, label %if.end79.i.i, label %lor.lhs.false73.i.i.if.then200.i.i_crit_edge

lor.lhs.false73.i.i.if.then200.i.i_crit_edge:     ; preds = %lor.lhs.false73.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.end79.i.i:                                     ; preds = %lor.lhs.false73.i.i
  %302 = ptrtoint ptr %ep0in.i51.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %ep0in.i51.i, align 4
  %cmp.i.i64.i = icmp eq ptr %303, null
  br i1 %cmp.i.i64.i, label %if.end79.i.i.if.then200.i.i_crit_edge, label %if.end.i.i66.i

if.end79.i.i.if.then200.i.i_crit_edge:            ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.end.i.i66.i:                                   ; preds = %if.end79.i.i
  %lock.i.i.i = getelementptr inbounds %struct.ci_hw_ep, ptr %303, i32 0, i32 8
  %304 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %lock.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %305) #9
  %call.i.i65.i = call ptr @usb_ep_alloc_request(ptr noundef nonnull %303, i32 noundef 2592) #9
  %306 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %lock.i.i.i, align 4
  call void @_raw_spin_lock(ptr noundef %307) #9
  %cmp4.i.i.i = icmp eq ptr %call.i.i65.i, null
  br i1 %cmp4.i.i.i, label %if.end.i.i66.i.if.then200.i.i_crit_edge, label %if.end6.i.i.i

if.end.i.i66.i.if.then200.i.i_crit_edge:          ; preds = %if.end.i.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i66.i
  %complete.i.i.i = getelementptr inbounds %struct.usb_request, ptr %call.i.i65.i, i32 0, i32 7
  %308 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr @isr_get_status_complete, ptr %complete.i.i.i, align 4
  %length.i.i67.i = getelementptr inbounds %struct.usb_request, ptr %call.i.i65.i, i32 0, i32 1
  %309 = ptrtoint ptr %length.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 2, ptr %length.i.i67.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %310 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %310, i32 noundef 2848, i32 noundef 2) #13
  %311 = ptrtoint ptr %call.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %call7.i.i.i.i.i, ptr %call.i.i65.i, align 4
  %cmp10.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %cmp10.i.i.i, label %if.end6.i.i.i.err_free_req.i.i.i_crit_edge, label %if.end12.i.i.i

if.end6.i.i.i.err_free_req.i.i.i_crit_edge:       ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_req.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end6.i.i.i
  %312 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %req.i.i, align 8
  %trunc.i.i.i = trunc i8 %313 to i5
  %314 = zext i5 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %314, ptr @__sancov_gen_cov_switch_values.44)
  switch i5 %trunc.i.i.i, label %if.end12.i.i.i.if.end34.i.i.i_crit_edge [
    i5 0, label %if.then15.i.i.i
    i5 2, label %if.then24.i.i.i
  ]

if.end12.i.i.i.if.end34.i.i.i_crit_edge:          ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i.i

if.then15.i.i.i:                                  ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %315 = ptrtoint ptr %remote_wakeup151.i.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %remote_wakeup151.i.i, align 2
  %conv16.i.i.i = zext i8 %316 to i32
  %shl.i.i68.i = shl nuw nsw i32 %conv16.i.i.i, 1
  %317 = ptrtoint ptr %a_hnp_support.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %bf.load.i.i.i = load i32, ptr %a_hnp_support.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 18
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 1
  %or.i.i.i = or i32 %bf.clear.i.i.i, %shl.i.i68.i
  %conv17.i.i.i = trunc i32 %or.i.i.i to i16
  %318 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 %conv17.i.i.i, ptr %call7.i.i.i.i.i, align 8
  br label %if.end34.i.i.i

if.then24.i.i.i:                                  ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %319 = ptrtoint ptr %81 to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %81, align 4
  %321 = call i16 @llvm.bswap.i16(i16 %320) #9
  %conv25.i.i.i = zext i16 %321 to i32
  %and29.i.i.i = and i32 %conv25.i.i.i, 15
  %322 = and i32 %conv25.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %cmp.i.not.i.i.i = icmp eq i32 %322, 0
  %cond.i.i.i69.i = select i1 %cmp.i.not.i.i.i, i32 1, i32 65536
  %add.i.i.i70.i = add nuw nsw i32 %and29.i.i.i, 21
  %arrayidx.i.i.i283.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 %add.i.i.i70.i
  %323 = ptrtoint ptr %arrayidx.i.i.i283.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %arrayidx.i.i.i283.i.i, align 4
  %325 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %324) #9, !srcloc !107
  %326 = call i32 @llvm.bswap.i32(i32 %325) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i.i.i.i.i = and i32 %cond.i.i.i69.i, %326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i71.i = icmp ne i32 %and.i.i.i.i.i, 0
  %conv31.i.i.i = zext i1 %tobool.not.i.i.i71.i to i16
  %327 = ptrtoint ptr %call.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %call.i.i65.i, align 4
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 %conv31.i.i.i, ptr %328, align 2
  br label %if.end34.i.i.i

if.end34.i.i.i:                                   ; preds = %if.then24.i.i.i, %if.then15.i.i.i, %if.end12.i.i.i.if.end34.i.i.i_crit_edge
  %call36.i.i.i = call fastcc i32 @_ep_queue(ptr noundef nonnull %303, ptr noundef nonnull %call.i.i65.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i.i)
  %tobool37.not.i.i.i = icmp eq i32 %call36.i.i.i, 0
  br i1 %tobool37.not.i.i.i, label %if.end34.i.i.i.isr_setup_packet_handler.exit.i_crit_edge, label %err_free_buf.i.i.i

if.end34.i.i.i.isr_setup_packet_handler.exit.i_crit_edge: ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %isr_setup_packet_handler.exit.i

err_free_buf.i.i.i:                               ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %330 = ptrtoint ptr %call.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %call.i.i65.i, align 4
  call void @kfree(ptr noundef %331) #9
  br label %err_free_req.i.i.i

err_free_req.i.i.i:                               ; preds = %err_free_buf.i.i.i, %if.end6.i.i.i.err_free_req.i.i.i_crit_edge
  %retval1.0.i.i.i = phi i32 [ %call36.i.i.i, %err_free_buf.i.i.i ], [ -12, %if.end6.i.i.i.err_free_req.i.i.i_crit_edge ]
  %332 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %lock.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %333) #9
  call void @usb_ep_free_request(ptr noundef nonnull %303, ptr noundef nonnull %call.i.i65.i) #9
  %334 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %lock.i.i.i, align 4
  call void @_raw_spin_lock(ptr noundef %335) #9
  br label %sw.epilog197.i.i

sw.bb81.i.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %cmp82.not.i.i = icmp eq i8 %254, 0
  br i1 %cmp82.not.i.i, label %if.end85.i.i, label %sw.bb81.i.i.delegate.i.i_crit_edge

sw.bb81.i.i.delegate.i.i_crit_edge:               ; preds = %sw.bb81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delegate.i.i

if.end85.i.i:                                     ; preds = %sw.bb81.i.i
  %336 = ptrtoint ptr %82 to i32
  call void @__asan_load2_noabort(i32 %336)
  %337 = load i16, ptr %82, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %337)
  %cmp88.not.i.i = icmp eq i16 %337, 0
  br i1 %cmp88.not.i.i, label %lor.lhs.false90.i.i, label %if.end85.i.i.if.then200.i.i_crit_edge

if.end85.i.i.if.then200.i.i_crit_edge:            ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

lor.lhs.false90.i.i:                              ; preds = %if.end85.i.i
  %338 = ptrtoint ptr %81 to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %339)
  %cmp93.not.i.i = icmp eq i16 %339, 0
  br i1 %cmp93.not.i.i, label %if.end96.i.i, label %lor.lhs.false90.i.i.if.then200.i.i_crit_edge

lor.lhs.false90.i.i.if.then200.i.i_crit_edge:     ; preds = %lor.lhs.false90.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.end96.i.i:                                     ; preds = %lor.lhs.false90.i.i
  %340 = ptrtoint ptr %80 to i32
  call void @__asan_load2_noabort(i32 %340)
  %341 = load i16, ptr %80, align 2
  %342 = lshr i16 %341, 8
  %conv98.i.i = trunc i16 %342 to i8
  %343 = ptrtoint ptr %address.i.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %conv98.i.i, ptr %address.i.i, align 1
  %344 = ptrtoint ptr %setaddr.i.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 1, ptr %setaddr.i.i, align 4
  %345 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %status.i.i, align 8
  %tobool.not.i149.i = icmp eq ptr %346, null
  br i1 %tobool.not.i149.i, label %land.rhs.i151.i, label %if.end39.i162.i

land.rhs.i151.i:                                  ; preds = %if.end96.i.i
  %.b52.i150.i = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  br i1 %.b52.i150.i, label %land.rhs.i151.i.if.then200.i.i_crit_edge, label %land.rhs.i151.i.if.then200.i.sink.split.i_crit_edge, !prof !112

land.rhs.i151.i.if.then200.i.sink.split.i_crit_edge: ; preds = %land.rhs.i151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.sink.split.i

land.rhs.i151.i.if.then200.i.i_crit_edge:         ; preds = %land.rhs.i151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.end39.i162.i:                                  ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %347 = ptrtoint ptr %ep0in.i51.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %cond.i158.i = load ptr, ptr %ep0in.i51.i, align 4
  %context.i159.i = getelementptr inbounds %struct.usb_request, ptr %346, i32 0, i32 8
  %348 = ptrtoint ptr %context.i159.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr %ci, ptr %context.i159.i, align 4
  %349 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %status.i.i, align 8
  %complete.i160.i = getelementptr inbounds %struct.usb_request, ptr %350, i32 0, i32 7
  %351 = ptrtoint ptr %complete.i160.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr @isr_setup_status_complete, ptr %complete.i160.i, align 4
  %352 = load ptr, ptr %status.i.i, align 8
  %call.i161.i = call fastcc i32 @_ep_queue(ptr noundef %cond.i158.i, ptr noundef %352) #9
  br label %sw.epilog197.i.i

sw.bb100.i.i:                                     ; preds = %do.end.i.i
  %353 = zext i8 %254 to i64
  call void @__sanitizer_cov_trace_switch(i64 %353, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %254, label %sw.bb100.i.i.delegate.i.i_crit_edge [
    i8 2, label %land.lhs.true103.i.i
    i8 0, label %if.then141.i.i
  ]

sw.bb100.i.i.delegate.i.i_crit_edge:              ; preds = %sw.bb100.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delegate.i.i

land.lhs.true103.i.i:                             ; preds = %sw.bb100.i.i
  %354 = ptrtoint ptr %80 to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %355)
  %cmp106.i.i = icmp eq i16 %355, 0
  br i1 %cmp106.i.i, label %if.then108.i.i, label %land.lhs.true103.i.i.delegate.i.i_crit_edge

land.lhs.true103.i.i.delegate.i.i_crit_edge:      ; preds = %land.lhs.true103.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delegate.i.i

if.then108.i.i:                                   ; preds = %land.lhs.true103.i.i
  %356 = ptrtoint ptr %82 to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %82, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %357)
  %cmp111.not.i.i = icmp eq i16 %357, 0
  br i1 %cmp111.not.i.i, label %if.end114.i.i, label %if.then108.i.i.if.then200.i.i_crit_edge

if.then108.i.i.if.then200.i.i_crit_edge:          ; preds = %if.then108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.end114.i.i:                                    ; preds = %if.then108.i.i
  %358 = ptrtoint ptr %81 to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %81, align 4
  %360 = call i16 @llvm.bswap.i16(i16 %359) #9
  %conv116.i.i = zext i16 %360 to i32
  %and117.i.i = and i32 %conv116.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i.i)
  %tobool118.not.i.i = icmp eq i32 %and117.i.i, 0
  %and120.i.i = and i32 %conv116.i.i, 15
  br i1 %tobool118.not.i.i, label %if.end114.i.i.if.end127.i.i_crit_edge, label %if.then123.i.i

if.end114.i.i.if.end127.i.i_crit_edge:            ; preds = %if.end114.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127.i.i

if.then123.i.i:                                   ; preds = %if.end114.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %361 = ptrtoint ptr %hw_ep_max.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %hw_ep_max.i, align 8
  %div125275.i.i = lshr i32 %362, 1
  %add126.i.i = add nuw i32 %div125275.i.i, %and120.i.i
  br label %if.end127.i.i

if.end127.i.i:                                    ; preds = %if.then123.i.i, %if.end114.i.i.if.end127.i.i_crit_edge
  %num.1.i.i = phi i32 [ %add126.i.i, %if.then123.i.i ], [ %and120.i.i, %if.end114.i.i.if.end127.i.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %arrayidx130.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 22, i32 %num.1.i.i
  %call132.i.i = call fastcc i32 @_ep_set_halt(ptr noundef %arrayidx130.i.i, i32 noundef 1, i1 noundef zeroext false) #9
  call void @_raw_spin_lock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.i.i)
  %tobool134.not.i.i = icmp eq i32 %call132.i.i, 0
  br i1 %tobool134.not.i.i, label %if.then135.i.i, label %if.end127.i.i.sw.epilog197.i.i_crit_edge

if.end127.i.i.sw.epilog197.i.i_crit_edge:         ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog197.i.i

if.then135.i.i:                                   ; preds = %if.end127.i.i
  %363 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %status.i.i, align 8
  %tobool.not.i132.i = icmp eq ptr %364, null
  br i1 %tobool.not.i132.i, label %land.rhs.i134.i, label %if.end39.i145.i

land.rhs.i134.i:                                  ; preds = %if.then135.i.i
  %.b52.i133.i = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  br i1 %.b52.i133.i, label %land.rhs.i134.i.isr_setup_packet_handler.exit.i_crit_edge, label %if.then.i135.i, !prof !112

land.rhs.i134.i.isr_setup_packet_handler.exit.i_crit_edge: ; preds = %land.rhs.i134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %isr_setup_packet_handler.exit.i

if.then.i135.i:                                   ; preds = %land.rhs.i134.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @isr_setup_status_phase.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1080, i32 noundef 9, ptr noundef null) #9
  br label %isr_setup_packet_handler.exit.i

if.end39.i145.i:                                  ; preds = %if.then135.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %365 = ptrtoint ptr %ep0_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %ep0_dir.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %366)
  %cmp.i137.i = icmp eq i32 %366, 1
  %cond.in.i140.i = select i1 %cmp.i137.i, ptr %ep0out.i.i, ptr %ep0in.i51.i
  %367 = ptrtoint ptr %cond.in.i140.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %cond.i141.i = load ptr, ptr %cond.in.i140.i, align 4
  %context.i142.i = getelementptr inbounds %struct.usb_request, ptr %364, i32 0, i32 8
  %368 = ptrtoint ptr %context.i142.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %ci, ptr %context.i142.i, align 4
  %369 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %status.i.i, align 8
  %complete.i143.i = getelementptr inbounds %struct.usb_request, ptr %370, i32 0, i32 7
  %371 = ptrtoint ptr %complete.i143.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr @isr_setup_status_complete, ptr %complete.i143.i, align 4
  %372 = load ptr, ptr %status.i.i, align 8
  %call.i144.i = call fastcc i32 @_ep_queue(ptr noundef %cond.i141.i, ptr noundef %372) #9
  br label %isr_setup_packet_handler.exit.i

if.then141.i.i:                                   ; preds = %sw.bb100.i.i
  %373 = ptrtoint ptr %82 to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %82, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %374)
  %cmp144.not.i.i = icmp eq i16 %374, 0
  br i1 %cmp144.not.i.i, label %if.end147.i.i, label %if.then141.i.i.if.then200.i.i_crit_edge

if.then141.i.i.if.then200.i.i_crit_edge:          ; preds = %if.then141.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.end147.i.i:                                    ; preds = %if.then141.i.i
  %375 = ptrtoint ptr %80 to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %80, align 2
  %377 = call i16 @llvm.bswap.i16(i16 %376) #9
  %378 = zext i16 %377 to i64
  call void @__sanitizer_cov_trace_switch(i64 %378, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %377, label %if.end147.i.i.if.then189.i.i_crit_edge [
    i16 1, label %sw.bb150.i.i
    i16 2, label %sw.bb153.i.i
    i16 3, label %sw.bb160.i.i
    i16 5, label %sw.bb165.i.i
    i16 4, label %sw.bb170.i.i
  ]

if.end147.i.i.if.then189.i.i_crit_edge:           ; preds = %if.end147.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then189.i.i

sw.bb150.i.i:                                     ; preds = %if.end147.i.i
  %379 = ptrtoint ptr %remote_wakeup151.i.i to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 1, ptr %remote_wakeup151.i.i, align 2
  %380 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %status.i.i, align 8
  %tobool.not.i115.i = icmp eq ptr %381, null
  br i1 %tobool.not.i115.i, label %land.rhs.i117.i, label %if.end39.i128.i

land.rhs.i117.i:                                  ; preds = %sw.bb150.i.i
  %.b52.i116.i = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  br i1 %.b52.i116.i, label %land.rhs.i117.i.if.then200.i.i_crit_edge, label %land.rhs.i117.i.if.then200.i.sink.split.i_crit_edge, !prof !112

land.rhs.i117.i.if.then200.i.sink.split.i_crit_edge: ; preds = %land.rhs.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.sink.split.i

land.rhs.i117.i.if.then200.i.i_crit_edge:         ; preds = %land.rhs.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.end39.i128.i:                                  ; preds = %sw.bb150.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %382 = ptrtoint ptr %ep0in.i51.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %cond.i124.i = load ptr, ptr %ep0in.i51.i, align 4
  %context.i125.i = getelementptr inbounds %struct.usb_request, ptr %381, i32 0, i32 8
  %383 = ptrtoint ptr %context.i125.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr %ci, ptr %context.i125.i, align 4
  %384 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %status.i.i, align 8
  %complete.i126.i = getelementptr inbounds %struct.usb_request, ptr %385, i32 0, i32 7
  %386 = ptrtoint ptr %complete.i126.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr @isr_setup_status_complete, ptr %complete.i126.i, align 4
  %387 = load ptr, ptr %status.i.i, align 8
  %call.i127.i = call fastcc i32 @_ep_queue(ptr noundef %cond.i124.i, ptr noundef %387) #9
  br label %sw.epilog197.i.i

sw.bb153.i.i:                                     ; preds = %if.end147.i.i
  %388 = ptrtoint ptr %81 to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %81, align 4
  %trunc.i.i = trunc i16 %389 to i8
  %trunc.off.i.i = add i8 %trunc.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %trunc.off.i.i)
  %switch.i.i = icmp ult i8 %trunc.off.i.i, 5
  br i1 %switch.i.i, label %sw.bb158.i.i, label %sw.bb153.i.i.if.then200.i.i_crit_edge

sw.bb153.i.i.if.then200.i.i_crit_edge:            ; preds = %sw.bb153.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

sw.bb158.i.i:                                     ; preds = %sw.bb153.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %390 = ptrtoint ptr %test_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 %trunc.i.i, ptr %test_mode.i.i, align 8
  %call159.i.i = call fastcc i32 @isr_setup_status_phase(ptr noundef %ci) #9
  br label %sw.epilog197.i.i

sw.bb160.i.i:                                     ; preds = %if.end147.i.i
  %391 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %platdata, align 4
  %393 = ptrtoint ptr %is_otg.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %is_otg.i.i, align 8, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %394)
  %tobool.not.i97.i = icmp eq i8 %394, 0
  br i1 %tobool.not.i97.i, label %sw.bb160.i.i.if.then200.i.i_crit_edge, label %land.lhs.true.i100.i

sw.bb160.i.i.if.then200.i.i_crit_edge:            ; preds = %sw.bb160.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

land.lhs.true.i100.i:                             ; preds = %sw.bb160.i.i
  %395 = ptrtoint ptr %roles.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %roles.i.i, align 4
  %tobool1.not.i99.i = icmp eq ptr %396, null
  br i1 %tobool1.not.i99.i, label %land.lhs.true.i100.i.if.then200.i.i_crit_edge, label %land.lhs.true2.i103.i

land.lhs.true.i100.i.if.then200.i.i_crit_edge:    ; preds = %land.lhs.true.i100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

land.lhs.true2.i103.i:                            ; preds = %land.lhs.true.i100.i
  %397 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %arrayidx4.i.i, align 4
  %tobool5.not.i102.i = icmp eq ptr %398, null
  br i1 %tobool5.not.i102.i, label %land.lhs.true2.i103.i.if.then200.i.i_crit_edge, label %land.rhs.i106.i

land.lhs.true2.i103.i.if.then200.i.i_crit_edge:   ; preds = %land.lhs.true2.i103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

land.rhs.i106.i:                                  ; preds = %land.lhs.true2.i103.i
  %srp_support.i104.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %392, i32 0, i32 10, i32 2
  %399 = ptrtoint ptr %srp_support.i104.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %srp_support.i104.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %400)
  %tobool6.not.i105.i = icmp eq i8 %400, 0
  br i1 %tobool6.not.i105.i, label %lor.lhs.false.i109.i, label %land.rhs.i106.i.if.then162.i.i_crit_edge

land.rhs.i106.i.if.then162.i.i_crit_edge:         ; preds = %land.rhs.i106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then162.i.i

lor.lhs.false.i109.i:                             ; preds = %land.rhs.i106.i
  %hnp_support.i107.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %392, i32 0, i32 10, i32 1
  %401 = ptrtoint ptr %hnp_support.i107.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %hnp_support.i107.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %402)
  %tobool7.not.i108.i = icmp eq i8 %402, 0
  br i1 %tobool7.not.i108.i, label %ci_otg_is_fsm_mode.exit113.i, label %lor.lhs.false.i109.i.if.then162.i.i_crit_edge

lor.lhs.false.i109.i.if.then162.i.i_crit_edge:    ; preds = %lor.lhs.false.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then162.i.i

ci_otg_is_fsm_mode.exit113.i:                     ; preds = %lor.lhs.false.i109.i
  %adp_support.i110.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %392, i32 0, i32 10, i32 3
  %403 = ptrtoint ptr %adp_support.i110.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %adp_support.i110.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %404)
  %tobool8.i111.not.i = icmp eq i8 %404, 0
  br i1 %tobool8.i111.not.i, label %ci_otg_is_fsm_mode.exit113.i.if.then200.i.i_crit_edge, label %ci_otg_is_fsm_mode.exit113.i.if.then162.i.i_crit_edge

ci_otg_is_fsm_mode.exit113.i.if.then162.i.i_crit_edge: ; preds = %ci_otg_is_fsm_mode.exit113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then162.i.i

ci_otg_is_fsm_mode.exit113.i.if.then200.i.i_crit_edge: ; preds = %ci_otg_is_fsm_mode.exit113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.then162.i.i:                                   ; preds = %ci_otg_is_fsm_mode.exit113.i.if.then162.i.i_crit_edge, %lor.lhs.false.i109.i.if.then162.i.i_crit_edge, %land.rhs.i106.i.if.then162.i.i_crit_edge
  %405 = ptrtoint ptr %a_hnp_support.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %bf.load.i.i = load i32, ptr %a_hnp_support.i.i, align 4
  %bf.set.i.i = or i32 %bf.load.i.i, 268435456
  store i32 %bf.set.i.i, ptr %a_hnp_support.i.i, align 4
  %call163.i.i = call fastcc i32 @isr_setup_status_phase(ptr noundef %ci) #9
  br label %sw.epilog197.i.i

sw.bb165.i.i:                                     ; preds = %if.end147.i.i
  %406 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %platdata, align 4
  %408 = ptrtoint ptr %is_otg.i.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %is_otg.i.i, align 8, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %409)
  %tobool.not.i78.i = icmp eq i8 %409, 0
  br i1 %tobool.not.i78.i, label %sw.bb165.i.i.if.then200.i.i_crit_edge, label %land.lhs.true.i81.i

sw.bb165.i.i.if.then200.i.i_crit_edge:            ; preds = %sw.bb165.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

land.lhs.true.i81.i:                              ; preds = %sw.bb165.i.i
  %410 = ptrtoint ptr %roles.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %roles.i.i, align 4
  %tobool1.not.i80.i = icmp eq ptr %411, null
  br i1 %tobool1.not.i80.i, label %land.lhs.true.i81.i.if.then200.i.i_crit_edge, label %land.lhs.true2.i84.i

land.lhs.true.i81.i.if.then200.i.i_crit_edge:     ; preds = %land.lhs.true.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

land.lhs.true2.i84.i:                             ; preds = %land.lhs.true.i81.i
  %412 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %arrayidx4.i.i, align 4
  %tobool5.not.i83.i = icmp eq ptr %413, null
  br i1 %tobool5.not.i83.i, label %land.lhs.true2.i84.i.if.then200.i.i_crit_edge, label %land.rhs.i87.i

land.lhs.true2.i84.i.if.then200.i.i_crit_edge:    ; preds = %land.lhs.true2.i84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

land.rhs.i87.i:                                   ; preds = %land.lhs.true2.i84.i
  %srp_support.i85.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %407, i32 0, i32 10, i32 2
  %414 = ptrtoint ptr %srp_support.i85.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %srp_support.i85.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %415)
  %tobool6.not.i86.i = icmp eq i8 %415, 0
  br i1 %tobool6.not.i86.i, label %lor.lhs.false.i90.i, label %land.rhs.i87.i.if.then167.i.i_crit_edge

land.rhs.i87.i.if.then167.i.i_crit_edge:          ; preds = %land.rhs.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then167.i.i

lor.lhs.false.i90.i:                              ; preds = %land.rhs.i87.i
  %hnp_support.i88.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %407, i32 0, i32 10, i32 1
  %416 = ptrtoint ptr %hnp_support.i88.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %hnp_support.i88.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %417)
  %tobool7.not.i89.i = icmp eq i8 %417, 0
  br i1 %tobool7.not.i89.i, label %ci_otg_is_fsm_mode.exit94.i, label %lor.lhs.false.i90.i.if.then167.i.i_crit_edge

lor.lhs.false.i90.i.if.then167.i.i_crit_edge:     ; preds = %lor.lhs.false.i90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then167.i.i

ci_otg_is_fsm_mode.exit94.i:                      ; preds = %lor.lhs.false.i90.i
  %adp_support.i91.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %407, i32 0, i32 10, i32 3
  %418 = ptrtoint ptr %adp_support.i91.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %adp_support.i91.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %419)
  %tobool8.i92.not.i = icmp eq i8 %419, 0
  br i1 %tobool8.i92.not.i, label %ci_otg_is_fsm_mode.exit94.i.if.then200.i.i_crit_edge, label %ci_otg_is_fsm_mode.exit94.i.if.then167.i.i_crit_edge

ci_otg_is_fsm_mode.exit94.i.if.then167.i.i_crit_edge: ; preds = %ci_otg_is_fsm_mode.exit94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then167.i.i

ci_otg_is_fsm_mode.exit94.i.if.then200.i.i_crit_edge: ; preds = %ci_otg_is_fsm_mode.exit94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.then167.i.i:                                   ; preds = %ci_otg_is_fsm_mode.exit94.i.if.then167.i.i_crit_edge, %lor.lhs.false.i90.i.if.then167.i.i_crit_edge, %land.rhs.i87.i.if.then167.i.i_crit_edge
  %call168.i.i = call fastcc i32 @otg_a_alt_hnp_support(ptr noundef %ci) #9
  br label %sw.epilog197.i.i

sw.bb170.i.i:                                     ; preds = %if.end147.i.i
  %420 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %platdata, align 4
  %422 = ptrtoint ptr %is_otg.i.i to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %is_otg.i.i, align 8, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %423)
  %tobool.not.i72.i = icmp eq i8 %423, 0
  br i1 %tobool.not.i72.i, label %sw.bb170.i.i.if.then200.i.i_crit_edge, label %land.lhs.true.i73.i

sw.bb170.i.i.if.then200.i.i_crit_edge:            ; preds = %sw.bb170.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

land.lhs.true.i73.i:                              ; preds = %sw.bb170.i.i
  %424 = ptrtoint ptr %roles.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %roles.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %425, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i73.i.if.then200.i.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i73.i.if.then200.i.i_crit_edge:     ; preds = %land.lhs.true.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i73.i
  %426 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %arrayidx4.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %427, null
  br i1 %tobool5.not.i.i, label %land.lhs.true2.i.i.if.then200.i.i_crit_edge, label %land.rhs.i74.i

land.lhs.true2.i.i.if.then200.i.i_crit_edge:      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

land.rhs.i74.i:                                   ; preds = %land.lhs.true2.i.i
  %srp_support.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %421, i32 0, i32 10, i32 2
  %428 = ptrtoint ptr %srp_support.i.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %srp_support.i.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %429)
  %tobool6.not.i.i = icmp eq i8 %429, 0
  br i1 %tobool6.not.i.i, label %lor.lhs.false.i75.i, label %land.rhs.i74.i.if.then172.i.i_crit_edge

land.rhs.i74.i.if.then172.i.i_crit_edge:          ; preds = %land.rhs.i74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then172.i.i

lor.lhs.false.i75.i:                              ; preds = %land.rhs.i74.i
  %hnp_support.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %421, i32 0, i32 10, i32 1
  %430 = ptrtoint ptr %hnp_support.i.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %hnp_support.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %431)
  %tobool7.not.i.i = icmp eq i8 %431, 0
  br i1 %tobool7.not.i.i, label %ci_otg_is_fsm_mode.exit.i, label %lor.lhs.false.i75.i.if.then172.i.i_crit_edge

lor.lhs.false.i75.i.if.then172.i.i_crit_edge:     ; preds = %lor.lhs.false.i75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then172.i.i

ci_otg_is_fsm_mode.exit.i:                        ; preds = %lor.lhs.false.i75.i
  %adp_support.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %421, i32 0, i32 10, i32 3
  %432 = ptrtoint ptr %adp_support.i.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %adp_support.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %433)
  %tobool8.i.not.i = icmp eq i8 %433, 0
  br i1 %tobool8.i.not.i, label %ci_otg_is_fsm_mode.exit.i.if.then200.i.i_crit_edge, label %ci_otg_is_fsm_mode.exit.i.if.then172.i.i_crit_edge

ci_otg_is_fsm_mode.exit.i.if.then172.i.i_crit_edge: ; preds = %ci_otg_is_fsm_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then172.i.i

ci_otg_is_fsm_mode.exit.i.if.then200.i.i_crit_edge: ; preds = %ci_otg_is_fsm_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.then172.i.i:                                   ; preds = %ci_otg_is_fsm_mode.exit.i.if.then172.i.i_crit_edge, %lor.lhs.false.i75.i.if.then172.i.i_crit_edge, %land.rhs.i74.i.if.then172.i.i_crit_edge
  %434 = ptrtoint ptr %a_hnp_support.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %bf.load174.i.i = load i32, ptr %a_hnp_support.i.i, align 4
  %bf.set176.i.i = or i32 %bf.load174.i.i, 134217728
  store i32 %bf.set176.i.i, ptr %a_hnp_support.i.i, align 4
  %call177.i.i = call fastcc i32 @isr_setup_status_phase(ptr noundef %ci) #9
  br label %sw.epilog197.i.i

delegate.i.i:                                     ; preds = %land.lhs.true103.i.i.delegate.i.i_crit_edge, %sw.bb100.i.i.delegate.i.i_crit_edge, %sw.bb81.i.i.delegate.i.i_crit_edge, %lor.lhs.false.i.i.delegate.i.i_crit_edge, %sw.bb54.i.i.delegate.i.i_crit_edge, %land.lhs.true38.i.i.delegate.i.i_crit_edge, %land.lhs.true.i60.i.delegate.i.i_crit_edge, %sw.bb.i.i.delegate.i.i_crit_edge, %do.end.i.i.delegate.i.i_crit_edge
  %435 = ptrtoint ptr %82 to i32
  call void @__asan_load2_noabort(i32 %435)
  %.pr.i.i113 = load i16, ptr %82, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i.i113)
  %cmp187.i.i = icmp eq i16 %.pr.i.i113, 0
  br i1 %cmp187.i.i, label %delegate.i.i.if.then189.i.i_crit_edge, label %delegate.i.i.if.end191.i.i_crit_edge

delegate.i.i.if.end191.i.i_crit_edge:             ; preds = %delegate.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191.i.i

delegate.i.i.if.then189.i.i_crit_edge:            ; preds = %delegate.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then189.i.i

if.then189.i.i:                                   ; preds = %delegate.i.i.if.then189.i.i_crit_edge, %if.end147.i.i.if.then189.i.i_crit_edge
  %436 = ptrtoint ptr %ep0_dir.i.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 1, ptr %ep0_dir.i.i, align 4
  br label %if.end191.i.i

if.end191.i.i:                                    ; preds = %if.then189.i.i, %delegate.i.i.if.end191.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %437 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %driver.i.i, align 8
  %setup193.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %438, i32 0, i32 4
  %439 = ptrtoint ptr %setup193.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %setup193.i.i, align 4
  %call195.i.i = call i32 %440(ptr noundef %gadget194.i.i, ptr noundef nonnull %req.i.i) #9
  call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %sw.epilog197.i.i

sw.epilog197.i.i:                                 ; preds = %if.end191.i.i, %if.then172.i.i, %if.then167.i.i, %if.then162.i.i, %sw.bb158.i.i, %if.end39.i128.i, %if.end127.i.i.sw.epilog197.i.i_crit_edge, %if.end39.i162.i, %err_free_req.i.i.i, %if.end39.i179.i, %if.end39.i196.i, %if.then26.i.i.sw.epilog197.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call195.i.i, %if.end191.i.i ], [ %call132.i.i, %if.end127.i.i.sw.epilog197.i.i_crit_edge ], [ %call177.i.i, %if.then172.i.i ], [ %call168.i.i, %if.then167.i.i ], [ %call163.i.i, %if.then162.i.i ], [ %call159.i.i, %sw.bb158.i.i ], [ %call29.i.i, %if.then26.i.i.sw.epilog197.i.i_crit_edge ], [ %retval1.0.i.i.i, %err_free_req.i.i.i ], [ %call.i195.i, %if.end39.i196.i ], [ %call.i178.i, %if.end39.i179.i ], [ %call.i161.i, %if.end39.i162.i ], [ %call.i127.i, %if.end39.i128.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp198.i.i = icmp slt i32 %err.0.i.i, 0
  br i1 %cmp198.i.i, label %sw.epilog197.i.i.if.then200.i.i_crit_edge, label %sw.epilog197.i.i.isr_setup_packet_handler.exit.i_crit_edge

sw.epilog197.i.i.isr_setup_packet_handler.exit.i_crit_edge: ; preds = %sw.epilog197.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %isr_setup_packet_handler.exit.i

sw.epilog197.i.i.if.then200.i.i_crit_edge:        ; preds = %sw.epilog197.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then200.i.i

if.then200.i.sink.split.i:                        ; preds = %land.rhs.i117.i.if.then200.i.sink.split.i_crit_edge, %land.rhs.i151.i.if.then200.i.sink.split.i_crit_edge, %land.rhs.i168.i.if.then200.i.sink.split.i_crit_edge, %land.rhs.i185.i.if.then200.i.sink.split.i_crit_edge
  store i1 true, ptr @isr_setup_status_phase.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1080, i32 noundef 9, ptr noundef null) #9
  br label %if.then200.i.i

if.then200.i.i:                                   ; preds = %if.then200.i.sink.split.i, %sw.epilog197.i.i.if.then200.i.i_crit_edge, %ci_otg_is_fsm_mode.exit.i.if.then200.i.i_crit_edge, %land.lhs.true2.i.i.if.then200.i.i_crit_edge, %land.lhs.true.i73.i.if.then200.i.i_crit_edge, %sw.bb170.i.i.if.then200.i.i_crit_edge, %ci_otg_is_fsm_mode.exit94.i.if.then200.i.i_crit_edge, %land.lhs.true2.i84.i.if.then200.i.i_crit_edge, %land.lhs.true.i81.i.if.then200.i.i_crit_edge, %sw.bb165.i.i.if.then200.i.i_crit_edge, %ci_otg_is_fsm_mode.exit113.i.if.then200.i.i_crit_edge, %land.lhs.true2.i103.i.if.then200.i.i_crit_edge, %land.lhs.true.i100.i.if.then200.i.i_crit_edge, %sw.bb160.i.i.if.then200.i.i_crit_edge, %sw.bb153.i.i.if.then200.i.i_crit_edge, %land.rhs.i117.i.if.then200.i.i_crit_edge, %if.then141.i.i.if.then200.i.i_crit_edge, %if.then108.i.i.if.then200.i.i_crit_edge, %land.rhs.i151.i.if.then200.i.i_crit_edge, %lor.lhs.false90.i.i.if.then200.i.i_crit_edge, %if.end85.i.i.if.then200.i.i_crit_edge, %if.end.i.i66.i.if.then200.i.i_crit_edge, %if.end79.i.i.if.then200.i.i_crit_edge, %lor.lhs.false73.i.i.if.then200.i.i_crit_edge, %if.end68.i.i.if.then200.i.i_crit_edge, %land.rhs.i168.i.if.then200.i.i_crit_edge, %if.then43.i.i.if.then200.i.i_crit_edge, %land.rhs.i185.i.if.then200.i.i_crit_edge, %if.then.i61.i.if.then200.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %call203.i.i = call fastcc i32 @_ep_set_halt(ptr noundef %ci_hw_ep.i.i, i32 noundef 1, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203.i.i)
  %tobool204.not.i.i = icmp eq i32 %call203.i.i, 0
  br i1 %tobool204.not.i.i, label %if.then200.i.i.if.end209.i.i_crit_edge, label %do.end208.i.i

if.then200.i.i.if.end209.i.i_crit_edge:           ; preds = %if.then200.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209.i.i

do.end208.i.i:                                    ; preds = %if.then200.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %441 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %ci, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %442, ptr noundef nonnull @.str.6) #12
  br label %if.end209.i.i

if.end209.i.i:                                    ; preds = %do.end208.i.i, %if.then200.i.i.if.end209.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %isr_setup_packet_handler.exit.i

isr_setup_packet_handler.exit.i:                  ; preds = %if.end209.i.i, %sw.epilog197.i.i.isr_setup_packet_handler.exit.i_crit_edge, %if.end39.i145.i, %if.then.i135.i, %land.rhs.i134.i.isr_setup_packet_handler.exit.i_crit_edge, %if.end34.i.i.i.isr_setup_packet_handler.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i.i) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %isr_setup_packet_handler.exit.i, %hw_test_and_clear.exit.i.cleanup.i_crit_edge, %if.end23.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.0217.i, 1
  %443 = ptrtoint ptr %hw_ep_max.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %hw_ep_max.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %444
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.if.end37_crit_edge

cleanup.i.if.end37_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end37:                                         ; preds = %cleanup.i.if.end37_crit_edge, %if.then36.if.end37_crit_edge, %if.end33.if.end37_crit_edge
  %and38 = and i32 %and.i98, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end61_crit_edge, label %land.lhs.true

if.end37.if.end61_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

land.lhs.true:                                    ; preds = %if.end37
  %suspended40 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 30
  %445 = ptrtoint ptr %suspended40 to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %suspended40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %446)
  %tobool41.not = icmp eq i8 %446, 0
  br i1 %tobool41.not, label %if.then42, label %land.lhs.true.if.end61_crit_edge

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then42:                                        ; preds = %land.lhs.true
  %447 = ptrtoint ptr %suspended40 to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 1, ptr %suspended40, align 1
  %gadget44 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18
  %state = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 9
  %448 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %state, align 8
  %resume_state45 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 20
  %450 = ptrtoint ptr %resume_state45 to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 %449, ptr %resume_state45, align 4
  %speed47 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 5
  %451 = ptrtoint ptr %speed47 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %speed47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %452)
  %cmp48.not = icmp eq i32 %452, 0
  br i1 %cmp48.not, label %if.then42.if.end58_crit_edge, label %land.lhs.true49

if.then42.if.end58_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

land.lhs.true49:                                  ; preds = %if.then42
  %driver50 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 19
  %453 = ptrtoint ptr %driver50 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %driver50, align 8
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %454, i32 0, i32 6
  %455 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %suspend, align 4
  %tobool51.not = icmp eq ptr %456, null
  br i1 %tobool51.not, label %land.lhs.true49.if.end58_crit_edge, label %if.then52

land.lhs.true49.if.end58_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %457 = ptrtoint ptr %driver50 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %driver50, align 8
  %suspend55 = getelementptr inbounds %struct.usb_gadget_driver, ptr %458, i32 0, i32 6
  %459 = ptrtoint ptr %suspend55 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %suspend55, align 4
  call void %460(ptr noundef %gadget44) #9
  call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %land.lhs.true49.if.end58_crit_edge, %if.then42.if.end58_crit_edge
  call void @usb_gadget_set_state(ptr noundef %gadget44, i32 noundef 8) #9
  br label %if.end61

if.end61:                                         ; preds = %if.end58, %land.lhs.true.if.end61_crit_edge, %if.end37.if.end61_crit_edge, %hw_test_and_clear_intr_active.exit.if.end61_crit_edge
  %retval1.0 = phi i32 [ 1, %if.end58 ], [ 1, %land.lhs.true.if.end61_crit_edge ], [ 1, %if.end37.if.end61_crit_edge ], [ 0, %hw_test_and_clear_intr_active.exit.if.end61_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %retval1.0, %if.end61 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_write_otgsc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_intr_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_intr_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_write(ptr nocapture noundef readonly %ci, i32 noundef %reg, i32 noundef %mask, i32 noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask)
  %tobool.not = icmp eq i32 %mask, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %mask, -1
  %arrayidx = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 %reg
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !107
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and = and i32 %3, %neg
  %and2 = and i32 %data, %mask
  %or = or i32 %and, %and2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.addr.0 = phi i32 [ %or, %if.then ], [ %data, %entry.if.end_crit_edge ]
  %imx28_write_fix.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %4 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %imx28_write_fix.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.__hw_write.exit_crit_edge

if.end.__hw_write.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hw_write.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 %reg
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %data.addr.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %8) #9, !srcloc !111
  br label %__hw_write.exit

__hw_write.exit:                                  ; preds = %if.else.i, %if.end.__hw_write.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_gadget_stop_activity(ptr noundef %gadget) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 4
  %0 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn2 = load ptr, ptr %ep_list, align 4
  %cmp.not3 = icmp eq ptr %.pn2, %ep_list
  br i1 %cmp.not3, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn4 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn2, %entry.for.body_crit_edge ]
  %ep.0 = getelementptr i8, ptr %.pn4, i32 -12
  tail call void @usb_ep_fifo_flush(ptr noundef %ep.0) #9
  %1 = ptrtoint ptr %.pn4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn4, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ep0out = getelementptr i8, ptr %gadget, i32 4264
  %2 = ptrtoint ptr %ep0out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep0out, align 8
  tail call void @usb_ep_fifo_flush(ptr noundef %3) #9
  %ep0in = getelementptr i8, ptr %gadget, i32 4268
  %4 = ptrtoint ptr %ep0in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep0in, align 4
  tail call void @usb_ep_fifo_flush(ptr noundef %5) #9
  %6 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn15 = load ptr, ptr %ep_list, align 4
  %cmp21.not6 = icmp eq ptr %.pn15, %ep_list
  br i1 %cmp21.not6, label %for.end.for.end30_crit_edge, label %for.end.for.body23_crit_edge

for.end.for.body23_crit_edge:                     ; preds = %for.end
  br label %for.body23

for.end.for.end30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.end.for.body23_crit_edge
  %.pn17 = phi ptr [ %.pn1, %for.body23.for.body23_crit_edge ], [ %.pn15, %for.end.for.body23_crit_edge ]
  %ep.1 = getelementptr i8, ptr %.pn17, i32 -12
  %call = tail call i32 @usb_ep_disable(ptr noundef %ep.1) #9
  %7 = ptrtoint ptr %.pn17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn1 = load ptr, ptr %.pn17, align 4
  %cmp21.not = icmp eq ptr %.pn1, %ep_list
  br i1 %cmp21.not, label %for.body23.for.end30_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23

for.body23.for.end30_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30

for.end30:                                        ; preds = %for.body23.for.end30_crit_edge, %for.end.for.end30_crit_edge
  %status = getelementptr i8, ptr %gadget, i32 4272
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %status, align 8
  %cmp31.not = icmp eq ptr %9, null
  br i1 %cmp31.not, label %for.end30.do.body36_crit_edge, label %if.then

for.end30.do.body36_crit_edge:                    ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body36

if.then:                                          ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %ep0in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep0in, align 4
  tail call void @usb_ep_free_request(ptr noundef %11, ptr noundef nonnull %9) #9
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %status, align 8
  br label %do.body36

do.body36:                                        ; preds = %if.then, %for.end30.do.body36_crit_edge
  %lock = getelementptr i8, ptr %gadget, i32 -876
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %speed, align 8
  %remote_wakeup = getelementptr i8, ptr %gadget, i32 4278
  %14 = ptrtoint ptr %remote_wakeup to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %remote_wakeup, align 2
  %suspended = getelementptr i8, ptr %gadget, i32 4279
  %15 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %suspended, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_fifo_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isr_setup_status_phase(ptr noundef %ci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 26
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b52 = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  br i1 %.b52, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !112

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @isr_setup_status_phase.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1080, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ep0_dir = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 23
  %2 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep0_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %ep0out = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 24
  %ep0in = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 25
  %cond.in = select i1 %cmp, ptr %ep0out, ptr %ep0in
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load ptr, ptr %cond.in, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ci, ptr %context, align 4
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %status, align 8
  %complete = getelementptr inbounds %struct.usb_request, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @isr_setup_status_complete, ptr %complete, align 4
  %9 = load ptr, ptr %status, align 8
  %call = tail call fastcc i32 @_ep_queue(ptr noundef %cond, ptr noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end39 ], [ -32, %if.then ], [ -32, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ep_set_halt(ptr noundef %ep, i32 noundef %value, i1 noundef zeroext %check_transfer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ep, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %cmp3 = icmp eq ptr %1, null
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bmAttributes.i, align 1
  %4 = and i8 %3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.i.not = icmp eq i8 %4, 1
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %do.body8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body8:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 8
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool15.not = icmp eq i32 %value, 0
  br i1 %tobool15.not, label %do.body8.if.end32_crit_edge, label %land.lhs.true

do.body8.if.end32_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true:                                    ; preds = %do.body8
  %dir = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 1
  %7 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp17 = icmp eq i8 %8, 1
  %9 = and i1 %cmp17, %check_transfer
  br i1 %9, label %land.lhs.true22, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true22:                                  ; preds = %land.lhs.true
  %qh = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 5
  %10 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %qh, align 4
  %cmp.i85.not = icmp eq ptr %11, %qh
  br i1 %cmp.i85.not, label %land.lhs.true22.if.end32_crit_edge, label %land.lhs.true25

land.lhs.true22.if.end32_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %bmAttributes.i86 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %bmAttributes.i86 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bmAttributes.i86, align 1
  %16 = and i8 %15, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i87.not = icmp eq i8 %16, 0
  br i1 %cmp.i87.not, label %land.lhs.true25.if.end32_crit_edge, label %land.lhs.true25.cleanup.sink.split_crit_edge

land.lhs.true25.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true25.if.end32_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true25.if.end32_crit_edge, %land.lhs.true22.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %do.body8.if.end32_crit_edge
  %dir33 = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 1
  %17 = ptrtoint ptr %dir33 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dir33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %value)
  %switch.i = icmp ult i32 %value, 2
  %num = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 2
  %ci = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 7
  %wedge = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 6
  %type = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 3
  br label %do.body35

do.body35:                                        ; preds = %do.cond54.do.body35_crit_edge, %if.end32
  %retval1.0 = phi i32 [ 0, %if.end32 ], [ %or, %do.cond54.do.body35_crit_edge ]
  br i1 %switch.i, label %do.body.preheader.i, label %do.body35.hw_ep_set_halt.exit_crit_edge

do.body35.hw_ep_set_halt.exit_crit_edge:          ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_ep_set_halt.exit

do.body.preheader.i:                              ; preds = %do.body35
  %19 = ptrtoint ptr %dir33 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dir33, align 4
  %21 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num, align 1
  %conv36 = zext i8 %22 to i32
  %23 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ci, align 4
  %add.i = add nuw nsw i32 %conv36, 21
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp2.i = icmp eq i8 %20, 1
  %cond.i = select i1 %cmp2.i, i32 65536, i32 1
  %arrayidx.i.i = getelementptr %struct.ci_hdrc, ptr %24, i32 0, i32 2, i32 6, i32 %add.i
  %imx28_write_fix.i.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %24, i32 0, i32 41
  %or.i = select i1 %cmp2.i, i32 4259840, i32 65
  %neg.i.i = xor i32 %or.i, -1
  %cond4.i = select i1 %cmp2.i, i32 4194304, i32 64
  %cond5.i = select i1 %tobool15.not, i32 %cond4.i, i32 %cond.i
  %and2.i.i = and i32 %cond5.i, %or.i
  br label %do.body.i

do.body.i:                                        ; preds = %hw_write.exit.i.do.body.i_crit_edge, %do.body.preheader.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %28 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %do.body.i.hw_write.exit.i_crit_edge

do.body.i.hw_write.exit.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_write.exit.i

if.else.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %and.i.i = and i32 %30, %neg.i.i
  %or.i.i = or i32 %and.i.i, %and2.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %33) #9, !srcloc !111
  br label %hw_write.exit.i

hw_write.exit.i:                                  ; preds = %if.else.i.i.i, %do.body.i.hw_write.exit.i_crit_edge
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !107
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i.i.i = and i32 %37, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i.i, 0
  %cond1.i.i = zext i1 %tobool.not.i.i to i32
  %cmp6.not.i = icmp eq i32 %cond1.i.i, %value
  br i1 %cmp6.not.i, label %hw_write.exit.i.hw_ep_set_halt.exit_crit_edge, label %hw_write.exit.i.do.body.i_crit_edge

hw_write.exit.i.do.body.i_crit_edge:              ; preds = %hw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

hw_write.exit.i.hw_ep_set_halt.exit_crit_edge:    ; preds = %hw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_ep_set_halt.exit

hw_ep_set_halt.exit:                              ; preds = %hw_write.exit.i.hw_ep_set_halt.exit_crit_edge, %do.body35.hw_ep_set_halt.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.body35.hw_ep_set_halt.exit_crit_edge ], [ 0, %hw_write.exit.i.hw_ep_set_halt.exit_crit_edge ]
  %or = or i32 %retval.0.i, %retval1.0
  br i1 %tobool15.not, label %if.then41, label %hw_ep_set_halt.exit.if.end42_crit_edge

hw_ep_set_halt.exit.if.end42_crit_edge:           ; preds = %hw_ep_set_halt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then41:                                        ; preds = %hw_ep_set_halt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %wedge to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %wedge, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %hw_ep_set_halt.exit.if.end42_crit_edge
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp44 = icmp eq i8 %40, 0
  br i1 %cmp44, label %if.then46, label %if.end42.do.cond54_crit_edge

if.end42.do.cond54_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond54

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %dir33 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dir33, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp49 = icmp ne i8 %42, 1
  %conv51 = zext i1 %cmp49 to i8
  %43 = ptrtoint ptr %dir33 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv51, ptr %dir33, align 4
  br label %do.cond54

do.cond54:                                        ; preds = %if.then46, %if.end42.do.cond54_crit_edge
  %44 = ptrtoint ptr %dir33 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dir33, align 4
  %cmp57.not = icmp eq i8 %45, %18
  br i1 %cmp57.not, label %do.cond54.cleanup.sink.split_crit_edge, label %do.cond54.do.body35_crit_edge

do.cond54.do.body35_crit_edge:                    ; preds = %do.cond54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

do.cond54.cleanup.sink.split_crit_edge:           ; preds = %do.cond54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.cond54.cleanup.sink.split_crit_edge, %land.lhs.true25.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -11, %land.lhs.true25.cleanup.sink.split_crit_edge ], [ %or, %do.cond54.cleanup.sink.split_crit_edge ]
  %46 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %call12) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ci_complete_td(ptr noundef %hwep, ptr noundef %hwreq, ptr noundef %td) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ci_complete_td, i32 0, i32 1), ptr blockaddress(@trace_ci_complete_td, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !113

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !97) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !112

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !97) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !114
  %call42 = tail call i32 @__traceiter_ci_complete_td(ptr noundef null, ptr noundef %hwep, ptr noundef %hwreq, ptr noundef %td) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !115
  %13 = tail call i32 @llvm.read_register.i32(metadata !97) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !97) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !112

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !97) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ci_complete_td, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ci_complete_td, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ci_complete_td.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ci_complete_td.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 80, ptr noundef nonnull @.str.9) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  %31 = tail call i32 @llvm.read_register.i32(metadata !97) #9
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
define internal fastcc void @reprime_dtd(ptr nocapture noundef readonly %ci, ptr nocapture noundef readonly %hwep, ptr nocapture noundef readonly %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.td_node, ptr %node, i32 0, i32 1
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %ptr = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptr, align 4
  %td = getelementptr inbounds %struct.ci_hw_qh, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %td to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %td, align 4
  %6 = load ptr, ptr %ptr, align 4
  %token = getelementptr inbounds %struct.ci_hw_qh, ptr %6, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %token, align 4
  %and = and i32 %8, 1073741823
  store i32 %and, ptr %token, align 4
  %num = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 2
  %9 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num, align 1
  %conv = zext i8 %10 to i32
  %dir = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 1
  %11 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dir, align 4
  %conv4 = zext i8 %12 to i32
  %type = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 3
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp = icmp eq i8 %14, 0
  %conv6 = zext i1 %cmp to i32
  %call = tail call fastcc i32 @hw_ep_prime(ptr noundef %ci, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ci_complete_td(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw_ep_prime(ptr nocapture noundef readonly %ci, i32 noundef %num, i32 noundef %dir, i32 noundef %is_ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 1
  %cond.i = select i1 %cmp.i, i32 16, i32 0
  %add.i = add i32 %cond.i, %num
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  tail call void @arm_heavy_mb() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_ctrl)
  %tobool.not = icmp ne i32 %is_ctrl, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %land.lhs.true1, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true1:                                   ; preds = %entry
  %shl = shl nuw i32 1, %num
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 16
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !107
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not = icmp eq i32 %and.i, 0
  br i1 %tobool3.not, label %land.lhs.true1.if.end_crit_edge, label %land.lhs.true1.cleanup_crit_edge

land.lhs.true1.cleanup_crit_edge:                 ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true1.if.end_crit_edge, %entry.if.end_crit_edge
  %shl4 = shl nuw i32 1, %add.i
  %imx28_write_fix.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %4 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end.hw_write.exit_crit_edge

if.end.hw_write.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_write.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 17
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl4) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %8) #9, !srcloc !111
  br label %hw_write.exit

hw_write.exit:                                    ; preds = %if.else.i.i, %if.end.hw_write.exit_crit_edge
  %arrayidx.i37 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 17
  %9 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i37, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !107
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i3841 = and i32 %12, %shl4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3841)
  %tobool7.not42 = icmp eq i32 %and.i3841, 0
  br i1 %tobool7.not42, label %hw_write.exit.while.end_crit_edge, label %hw_write.exit.do.end12_crit_edge

hw_write.exit.do.end12_crit_edge:                 ; preds = %hw_write.exit
  br label %do.end12

hw_write.exit.while.end_crit_edge:                ; preds = %hw_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end12:                                         ; preds = %do.end12.do.end12_crit_edge, %hw_write.exit.do.end12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !120
  %13 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i37, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !107
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i38 = and i32 %16, %shl4
  %tobool7.not = icmp eq i32 %and.i38, 0
  br i1 %tobool7.not, label %do.end12.while.end_crit_edge, label %do.end12.do.end12_crit_edge

do.end12.do.end12_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end12.while.end_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end12.while.end_crit_edge, %hw_write.exit.while.end_crit_edge
  br i1 %or.cond, label %land.lhs.true20, label %while.end.if.end25_crit_edge

while.end.if.end25_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true20:                                  ; preds = %while.end
  %shl21 = shl nuw i32 1, %num
  %arrayidx.i39 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 16
  %17 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i39, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !107
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i40 = and i32 %20, %shl21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool23.not = icmp eq i32 %and.i40, 0
  br i1 %tobool23.not, label %land.lhs.true20.if.end25_crit_edge, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true20.if.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true20.if.end25_crit_edge, %while.end.if.end25_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %land.lhs.true20.cleanup_crit_edge, %land.lhs.true1.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -11, %land.lhs.true1.cleanup_crit_edge ], [ -11, %land.lhs.true20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isr_setup_status_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %setaddr = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %setaddr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %setaddr, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %if.then

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

if.then:                                          ; preds = %entry
  %address = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %address, align 1
  %arrayidx.i.i = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 2, i32 6, i32 7
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %imx28_write_fix.i.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 41
  %9 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.hw_usb_set_address.exit_crit_edge

if.then.hw_usb_set_address.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_usb_set_address.exit

if.else.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = and i32 %8, -255
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %conv.i = zext i8 %5 to i32
  %shl.i = shl i32 %conv.i, 25
  %or.i.i = or i32 %12, %shl.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %15) #9, !srcloc !111
  br label %hw_usb_set_address.exit

hw_usb_set_address.exit:                          ; preds = %if.else.i.i.i, %if.then.hw_usb_set_address.exit_crit_edge
  %16 = ptrtoint ptr %setaddr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %setaddr, align 4
  %17 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %address, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not = icmp eq i8 %18, 0
  br i1 %tobool3.not, label %hw_usb_set_address.exit.do.body6_crit_edge, label %if.then4

hw_usb_set_address.exit.do.body6_crit_edge:       ; preds = %hw_usb_set_address.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

if.then4:                                         ; preds = %hw_usb_set_address.exit
  call void @__sanitizer_cov_trace_pc() #11
  %gadget = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 18
  tail call void @usb_gadget_set_state(ptr noundef %gadget, i32 noundef 6) #9
  br label %do.body6

do.body6:                                         ; preds = %if.then4, %hw_usb_set_address.exit.do.body6_crit_edge, %entry.do.body6_crit_edge
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %test_mode = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 31
  %19 = ptrtoint ptr %test_mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %test_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool10.not = icmp eq i8 %20, 0
  br i1 %tobool10.not, label %do.body6.if.end14_crit_edge, label %if.then11

do.body6.if.end14_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @hw_port_test_set(ptr noundef %1, i8 noundef zeroext %20) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.body6.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ep_queue(ptr noundef %ep, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ci4 = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %ci4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci4, align 4
  %cmp = icmp eq ptr %ep, null
  %cmp6 = icmp eq ptr %req, null
  %or.cond = or i1 %cmp, %cmp6
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false7:                                   ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %cmp9 = icmp eq ptr %3, null
  br i1 %cmp9, label %lor.lhs.false7.cleanup_crit_edge, label %if.end

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp10 = icmp eq i8 %5, 0
  br i1 %cmp10, label %if.then12, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then12:                                        ; preds = %if.end
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then12.if.end16_crit_edge, label %if.then13

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %ep0_dir = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ep0_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14 = icmp eq i32 %9, 0
  %ep0out = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 24
  %ep0in = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 25
  %cond.in = select i1 %cmp14, ptr %ep0out, ptr %ep0in
  %10 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond = load ptr, ptr %cond.in, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then12.if.end16_crit_edge
  %hwep.0 = phi ptr [ %cond, %if.then13 ], [ %ep, %if.then12.if.end16_crit_edge ]
  %qh = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.0, i32 0, i32 5
  %11 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %qh, align 4
  %cmp.i.not = icmp eq ptr %12, %qh
  br i1 %cmp.i.not, label %if.end16.if.end24_crit_edge, label %if.then18

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call fastcc i32 @_ep_nuke(ptr noundef %hwep.0)
  %ci20 = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.0, i32 0, i32 7
  %13 = ptrtoint ptr %ci20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ci20, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %dir.i = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.0, i32 0, i32 1
  %17 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i1 = icmp eq i8 %18, 1
  %cond.i = select i1 %cmp.i1, i8 -128, i8 0
  %num.i = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.0, i32 0, i32 2
  %19 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num.i, align 1
  %or.i = or i8 %cond.i, %20
  %conv22 = zext i8 %or.i to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.11, i32 noundef %conv22) #12
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end16.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %hwep.1 = phi ptr [ %hwep.0, %if.end16.if.end24_crit_edge ], [ %hwep.0, %if.then18 ], [ %ep, %if.end.if.end24_crit_edge ]
  %desc26 = getelementptr inbounds %struct.usb_ep, ptr %hwep.1, i32 0, i32 9
  %21 = ptrtoint ptr %desc26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc26, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bmAttributes.i, align 1
  %25 = and i8 %24, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp.i2.not = icmp eq i8 %25, 1
  br i1 %cmp.i2.not, label %land.lhs.true, label %if.end24.if.end44_crit_edge

if.end24.if.end44_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end24
  %length30 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %26 = ptrtoint ptr %length30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length30, align 4
  %mult = getelementptr inbounds %struct.usb_ep, ptr %hwep.1, i32 0, i32 7
  %28 = ptrtoint ptr %mult to i32
  call void @__asan_loadN_noabort(i32 %28, i32 7)
  %bf.load = load i56, ptr %mult, align 2
  %29 = trunc i56 %bf.load to i32
  %30 = lshr i32 %29, 6
  %bf.cast = and i32 %30, 3
  %bf.lshr34 = lshr i56 %bf.load, 40
  %bf.cast35 = trunc i56 %bf.lshr34 to i32
  %mul = mul nuw nsw i32 %bf.cast, %bf.cast35
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %mul)
  %cmp36 = icmp ugt i32 %27, %mul
  br i1 %cmp36, label %do.end41, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end41:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %ci42 = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.1, i32 0, i32 7
  %31 = ptrtoint ptr %ci42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ci42, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %if.end24.if.end44_crit_edge
  %queue45 = getelementptr inbounds %struct.ci_hw_req, ptr %req, i32 0, i32 1
  %35 = ptrtoint ptr %queue45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %queue45, align 4
  %cmp.i3.not = icmp eq ptr %36, %queue45
  br i1 %cmp.i3.not, label %if.end.i, label %do.end51

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %ci52 = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.1, i32 0, i32 7
  %37 = ptrtoint ptr %ci52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ci52, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end44
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %41 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %42 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %actual, align 4
  %ci1.i = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.1, i32 0, i32 7
  %43 = ptrtoint ptr %ci1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ci1.i, align 4
  store i32 -114, ptr %status, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent.i, align 8
  %dir.i6 = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.1, i32 0, i32 1
  %49 = ptrtoint ptr %dir.i6 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dir.i6, align 4
  %conv.i7 = zext i8 %50 to i32
  %call.i = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %48, ptr noundef nonnull %req, i32 noundef %conv.i7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i._hardware_enqueue.exit_crit_edge

if.end.i._hardware_enqueue.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_hardware_enqueue.exit

if.end6.i:                                        ; preds = %if.end.i
  %num_mapped_sgs.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 5
  %51 = ptrtoint ptr %num_mapped_sgs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_mapped_sgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool8.not.i = icmp eq i32 %52, 0
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end6.i
  %sg.i.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 3
  %53 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %if.then9.i._hardware_enqueue.exit.thread.thread16_crit_edge, label %lor.lhs.false.i.i

if.then9.i._hardware_enqueue.exit.thread.thread16_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_hardware_enqueue.exit.thread.thread16

lor.lhs.false.i.i:                                ; preds = %if.then9.i
  %zero.i.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %55 = ptrtoint ptr %zero.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load.i.i = load i32, ptr %zero.i.i, align 4
  %56 = and i32 %bf.load.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool2.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i._hardware_enqueue.exit.thread.thread16_crit_edge

lor.lhs.false.i.i._hardware_enqueue.exit.thread.thread16_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_hardware_enqueue.exit.thread.thread16

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %57 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i = icmp eq i32 %58, 0
  br i1 %cmp.i.i, label %lor.lhs.false3.i.i._hardware_enqueue.exit.thread.thread16_crit_edge, label %while.body.lr.ph.i.i

lor.lhs.false3.i.i._hardware_enqueue.exit.thread.thread16_crit_edge: ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_hardware_enqueue.exit.thread.thread16

while.body.lr.ph.i.i:                             ; preds = %lor.lhs.false3.i.i
  %prev.i.i = getelementptr inbounds %struct.ci_hw_req, ptr %req, i32 0, i32 2, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end21.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %inc54.i.i = phi i32 [ 1, %while.body.lr.ph.i.i ], [ %inc.i.i, %if.end21.i.i.while.body.i.i_crit_edge ]
  %node.053.i.i = phi ptr [ null, %while.body.lr.ph.i.i ], [ %node.1.i.i, %if.end21.i.i.while.body.i.i_crit_edge ]
  %s.050.i.i = phi ptr [ %54, %while.body.lr.ph.i.i ], [ %call22.i.i, %if.end21.i.i.while.body.i.i_crit_edge ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.050.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_address.i.i, align 4
  %rem.i.i = and i32 %60, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool5.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end12.i.i, label %while.body.i.i._hardware_enqueue.exit.thread.thread16_crit_edge

while.body.i.i._hardware_enqueue.exit.thread.thread16_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_hardware_enqueue.exit.thread.thread16

if.end12.i.i:                                     ; preds = %while.body.i.i
  %tobool13.not.i.i = icmp eq ptr %node.053.i.i, null
  br i1 %tobool13.not.i.i, label %if.end12.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.end12.i.i.if.else.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end12.i.i
  %td_remaining_size.i.i = getelementptr inbounds %struct.td_node, ptr %node.053.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %td_remaining_size.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %td_remaining_size.i.i, align 4
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.050.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_length.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp14.not.i.i = icmp ult i32 %62, %64
  br i1 %cmp14.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then15.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  %sub.i.i.i = sub i32 20480, %62
  %div17.i.i.i = lshr i32 %sub.i.i.i, 12
  %ptr.i.i.i = getelementptr inbounds %struct.td_node, ptr %node.053.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ptr.i.i.i, align 4
  %token1.i.i.i = getelementptr inbounds %struct.ci_hw_td, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %token1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %token1.i.i.i, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  %shl.i.i.i = shl i32 %64, 16
  %add.i.i.i = add i32 %69, %shl.i.i.i
  %70 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #9
  %71 = ptrtoint ptr %token1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %token1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %sub.i.i.i)
  %cmp18.i.i.i = icmp ult i32 %sub.i.i.i, 20480
  br i1 %cmp18.i.i.i, label %for.body.lr.ph.i.i.i, label %if.then15.i.i.ci_add_buffer_entry.exit.i.i_crit_edge

if.then15.i.i.ci_add_buffer_entry.exit.i.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ci_add_buffer_entry.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then15.i.i
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %div17.i.i.i, i32 4) #9
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.019.i.i.i = phi i32 [ %div17.i.i.i, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %72 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_address.i.i, align 4
  %sub4.i.i.i = sub nuw nsw i32 %i.019.i.i.i, %div17.i.i.i
  %mul.i.i.i = shl i32 %sub4.i.i.i, 12
  %add5.i.i.i = add i32 %mul.i.i.i, %73
  %and.i.i.i = and i32 %add5.i.i.i, -4096
  %74 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #9
  %75 = ptrtoint ptr %ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ptr.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.ci_hw_td, ptr %76, i32 0, i32 2, i32 %i.019.i.i.i
  %77 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %74, ptr %arrayidx.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.019.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %i.019.i.i.i, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.ci_add_buffer_entry.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.body.i.i.i.ci_add_buffer_entry.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ci_add_buffer_entry.exit.i.i

ci_add_buffer_entry.exit.i.i:                     ; preds = %for.body.i.i.i.ci_add_buffer_entry.exit.i.i_crit_edge, %if.then15.i.i.ci_add_buffer_entry.exit.i.i_crit_edge
  %78 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma_length.i.i, align 4
  %80 = ptrtoint ptr %td_remaining_size.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %td_remaining_size.i.i, align 4
  %sub.i.i = sub i32 %81, %79
  store i32 %sub.i.i, ptr %td_remaining_size.i.i, align 4
  br label %if.end21.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end12.i.i.if.else.i.i_crit_edge
  %dma_length.i45.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.050.i.i, i32 0, i32 4
  %82 = ptrtoint ptr %dma_length.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma_length.i45.i.i, align 4
  %84 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.not15.i.i.i = icmp eq i32 %83, 0
  br i1 %cmp.not15.i.i.i, label %if.else.i.i.if.end20.i.i_crit_edge, label %if.else.i.i.while.body.i.i.i_crit_edge

if.else.i.i.while.body.i.i.i_crit_edge:           ; preds = %if.else.i.i
  br label %while.body.i.i.i

if.else.i.i.if.end20.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.else.i.i.while.body.i.i.i_crit_edge
  %rest.016.i.i.i = phi i32 [ %sub.i46.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %83, %if.else.i.i.while.body.i.i.i_crit_edge ]
  %85 = tail call i32 @llvm.umin.i32(i32 %rest.016.i.i.i, i32 20480) #9
  %call.i.i.i = tail call fastcc i32 @add_td_to_list(ptr noundef %hwep.1, ptr noundef %req, i32 noundef %85, ptr noundef %s.050.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp2.i.i.i = icmp slt i32 %call.i.i.i, 0
  %sub.i46.i.i = sub i32 %rest.016.i.i.i, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i46.i.i)
  %cmp.not.i.i.i = icmp eq i32 %sub.i46.i.i, 0
  %or.cond.i.i.i = select i1 %cmp2.i.i.i, i1 true, i1 %cmp.not.i.i.i
  br i1 %or.cond.i.i.i, label %prepare_td_per_sg.exit.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

prepare_td_per_sg.exit.i.i:                       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool18.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool18.not.i.i, label %prepare_td_per_sg.exit.i.i.if.end20.i.i_crit_edge, label %prepare_td_per_sg.exit.i.i._hardware_enqueue.exit_crit_edge

prepare_td_per_sg.exit.i.i._hardware_enqueue.exit_crit_edge: ; preds = %prepare_td_per_sg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_hardware_enqueue.exit

prepare_td_per_sg.exit.i.i.if.end20.i.i_crit_edge: ; preds = %prepare_td_per_sg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %prepare_td_per_sg.exit.i.i.if.end20.i.i_crit_edge, %if.else.i.i.if.end20.i.i_crit_edge
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.end20.i.i, %ci_add_buffer_entry.exit.i.i
  %node.1.i.i = phi ptr [ %node.053.i.i, %ci_add_buffer_entry.exit.i.i ], [ %87, %if.end20.i.i ]
  %call22.i.i = tail call ptr @sg_next(ptr noundef %s.050.i.i) #9
  %inc.i.i = add i32 %inc54.i.i, 1
  %88 = ptrtoint ptr %num_mapped_sgs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_mapped_sgs.i, align 4
  %cmp4.i.i = icmp ult i32 %inc54.i.i, %89
  br i1 %cmp4.i.i, label %if.end21.i.i.while.body.i.i_crit_edge, label %if.end21.i.i.if.end15.i_crit_edge

if.end21.i.i.if.end15.i_crit_edge:                ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end21.i.i.while.body.i.i_crit_edge:            ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

_hardware_enqueue.exit.thread.thread16:           ; preds = %while.body.i.i._hardware_enqueue.exit.thread.thread16_crit_edge, %lor.lhs.false3.i.i._hardware_enqueue.exit.thread.thread16_crit_edge, %lor.lhs.false.i.i._hardware_enqueue.exit.thread.thread16_crit_edge, %if.then9.i._hardware_enqueue.exit.thread.thread16_crit_edge
  %.str.23.sink.i.i = phi ptr [ @.str.20, %if.then9.i._hardware_enqueue.exit.thread.thread16_crit_edge ], [ @.str.20, %lor.lhs.false.i.i._hardware_enqueue.exit.thread.thread16_crit_edge ], [ @.str.20, %lor.lhs.false3.i.i._hardware_enqueue.exit.thread.thread16_crit_edge ], [ @.str.23, %while.body.i.i._hardware_enqueue.exit.thread.thread16_crit_edge ]
  %90 = ptrtoint ptr %ci1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ci1.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull %.str.23.sink.i.i) #12
  br label %cleanup

if.else.i:                                        ; preds = %if.end6.i
  %length.i211.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %94 = ptrtoint ptr %length.i211.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %length.i211.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i212.i = icmp eq i32 %95, 0
  br i1 %cmp.i212.i, label %if.then.i.i, label %while.body.lr.ph.i215.i

if.then.i.i:                                      ; preds = %if.else.i
  %call.i.i = tail call fastcc i32 @add_td_to_list(ptr noundef %hwep.1, ptr noundef nonnull %req, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %if.then.i.i._hardware_enqueue.exit_crit_edge, label %if.then.i.i.while.end.i.i_crit_edge

if.then.i.i.while.end.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

if.then.i.i._hardware_enqueue.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_hardware_enqueue.exit

while.body.lr.ph.i215.i:                          ; preds = %if.else.i
  %dma.i.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %96 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma.i.i, align 4
  %rem.i213.i = and i32 %97, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i213.i)
  %tobool.not.i214.i = icmp eq i32 %rem.i213.i, 0
  %spec.select.i.i = select i1 %tobool.not.i214.i, i32 20480, i32 16384
  br label %while.body.i217.i

while.cond.i.i:                                   ; preds = %while.body.i217.i
  %sub16.i.i = sub i32 %rest.071.i.i, %102
  %cmp7.not.i.i = icmp eq i32 %sub16.i.i, 0
  br i1 %cmp7.not.i.i, label %while.cond.i.i.while.end.i.i_crit_edge, label %while.cond.i.i.while.body.i217.i_crit_edge

while.cond.i.i.while.body.i217.i_crit_edge:       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i217.i

while.cond.i.i.while.end.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.i217.i:                                ; preds = %while.cond.i.i.while.body.i217.i_crit_edge, %while.body.lr.ph.i215.i
  %rest.071.i.i = phi i32 [ %95, %while.body.lr.ph.i215.i ], [ %sub16.i.i, %while.cond.i.i.while.body.i217.i_crit_edge ]
  %98 = ptrtoint ptr %length.i211.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %length.i211.i, align 4
  %100 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %actual, align 4
  %sub.i216.i = sub i32 %99, %101
  %102 = tail call i32 @llvm.umin.i32(i32 %sub.i216.i, i32 %spec.select.i.i) #9
  %call12.i.i = tail call fastcc i32 @add_td_to_list(ptr noundef %hwep.1, ptr noundef %req, i32 noundef %102, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %while.body.i217.i._hardware_enqueue.exit_crit_edge, label %while.cond.i.i

while.body.i217.i._hardware_enqueue.exit_crit_edge: ; preds = %while.body.i217.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_hardware_enqueue.exit

while.end.i.i:                                    ; preds = %while.cond.i.i.while.end.i.i_crit_edge, %if.then.i.i.while.end.i.i_crit_edge
  %ret.1.lcssa.i.i = phi i32 [ 0, %if.then.i.i.while.end.i.i_crit_edge ], [ %call12.i.i, %while.cond.i.i.while.end.i.i_crit_edge ]
  %zero.i218.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %103 = ptrtoint ptr %zero.i218.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %bf.load.i219.i = load i32, ptr %zero.i218.i, align 4
  %104 = and i32 %bf.load.i219.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool18.not.i220.i = icmp eq i32 %104, 0
  br i1 %tobool18.not.i220.i, label %while.end.i.i.if.end12.i_crit_edge, label %land.lhs.true.i221.i

while.end.i.i.if.end12.i_crit_edge:               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true.i221.i:                             ; preds = %while.end.i.i
  %105 = ptrtoint ptr %length.i211.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %length.i211.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool21.not.i.i = icmp eq i32 %106, 0
  br i1 %tobool21.not.i.i, label %land.lhs.true.i221.i.if.end12.i_crit_edge, label %land.lhs.true22.i.i

land.lhs.true.i221.i.if.end12.i_crit_edge:        ; preds = %land.lhs.true.i221.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true22.i.i:                              ; preds = %land.lhs.true.i221.i
  %107 = ptrtoint ptr %dir.i6 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %dir.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %108)
  %cmp23.i.i = icmp eq i8 %108, 1
  br i1 %cmp23.i.i, label %land.lhs.true25.i.i, label %land.lhs.true22.i.i.if.end12.i_crit_edge

land.lhs.true22.i.i.if.end12.i_crit_edge:         ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true25.i.i:                              ; preds = %land.lhs.true22.i.i
  %maxpacket.i.i = getelementptr inbounds %struct.usb_ep, ptr %hwep.1, i32 0, i32 7
  %109 = ptrtoint ptr %maxpacket.i.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 7)
  %bf.load28.i.i = load i56, ptr %maxpacket.i.i, align 2
  %bf.lshr29.i.i = lshr i56 %bf.load28.i.i, 40
  %bf.cast.i.i = trunc i56 %bf.lshr29.i.i to i32
  %rem30.i.i = urem i32 %106, %bf.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem30.i.i)
  %cmp31.i.i = icmp eq i32 %rem30.i.i, 0
  br i1 %cmp31.i.i, label %if.then33.i.i, label %land.lhs.true25.i.i.if.end12.i_crit_edge

land.lhs.true25.i.i.if.end12.i_crit_edge:         ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then33.i.i:                                    ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call34.i.i = tail call fastcc i32 @add_td_to_list(ptr noundef %hwep.1, ptr noundef %req, i32 noundef 0, ptr noundef null) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then33.i.i, %land.lhs.true25.i.i.if.end12.i_crit_edge, %land.lhs.true22.i.i.if.end12.i_crit_edge, %land.lhs.true.i221.i.if.end12.i_crit_edge, %while.end.i.i.if.end12.i_crit_edge
  %ret.0.i = phi i32 [ %call34.i.i, %if.then33.i.i ], [ %ret.1.lcssa.i.i, %land.lhs.true25.i.i.if.end12.i_crit_edge ], [ %ret.1.lcssa.i.i, %land.lhs.true22.i.i.if.end12.i_crit_edge ], [ %ret.1.lcssa.i.i, %land.lhs.true.i221.i.if.end12.i_crit_edge ], [ %ret.1.lcssa.i.i, %while.end.i.i.if.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool13.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end15.i_crit_edge, label %if.end12.i._hardware_enqueue.exit_crit_edge

if.end12.i._hardware_enqueue.exit_crit_edge:      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_hardware_enqueue.exit

if.end12.i.if.end15.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end12.i.if.end15.i_crit_edge, %if.end21.i.i.if.end15.i_crit_edge
  %tds.i = getelementptr inbounds %struct.ci_hw_req, ptr %req, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.ci_hw_req, ptr %req, i32 0, i32 2, i32 1
  %110 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i, align 4
  %ptr.i = getelementptr inbounds %struct.td_node, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ptr.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 16777216, ptr %113, align 4
  %no_interrupt.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %115 = ptrtoint ptr %no_interrupt.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %bf.load.i = load i32, ptr %no_interrupt.i, align 4
  %116 = and i32 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool17.not.i = icmp eq i32 %116, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end15.i.if.end20.i_crit_edge

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ptr.i, align 4
  %token.i = getelementptr inbounds %struct.ci_hw_td, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %token.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %token.i, align 4
  %or.i8 = or i32 %120, 8388608
  store i32 %or.i8, ptr %token.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end20.i_crit_edge
  %121 = ptrtoint ptr %tds.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tds.i, align 4
  %cmp32.not242.i = icmp eq ptr %122, %tds.i
  br i1 %cmp32.not242.i, label %if.end20.i.for.end.i_crit_edge, label %if.end20.i.for.body.i_crit_edge

if.end20.i.for.body.i_crit_edge:                  ; preds = %if.end20.i
  br label %for.body.i

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end20.i.for.body.i_crit_edge
  %firstnode.0243.i = phi ptr [ %lastnode.0.i, %for.body.i.for.body.i_crit_edge ], [ %122, %if.end20.i.for.body.i_crit_edge ]
  %123 = ptrtoint ptr %firstnode.0243.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %lastnode.0.i = load ptr, ptr %firstnode.0243.i, align 4
  tail call fastcc void @trace_ci_prepare_td(ptr noundef %hwep.1, ptr noundef %req, ptr noundef %firstnode.0243.i) #9
  %cmp32.not.i = icmp eq ptr %lastnode.0.i, %tds.i
  br i1 %cmp32.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge
  %124 = ptrtoint ptr %tds.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tds.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %126 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %actual, align 4
  %qh.i = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.1, i32 0, i32 5
  %127 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile ptr, ptr %qh.i, align 4
  %cmp.i222.not.i = icmp eq ptr %128, %qh.i
  br i1 %cmp.i222.not.i, label %for.end.i.if.end98.i_crit_edge, label %if.then47.i

for.end.i.if.end98.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i

if.then47.i:                                      ; preds = %for.end.i
  %num.i9 = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.1, i32 0, i32 2
  %129 = ptrtoint ptr %num.i9 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %num.i9, align 1
  %conv48.i = zext i8 %130 to i32
  %131 = ptrtoint ptr %dir.i6 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %dir.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %132)
  %cmp.i223.i = icmp eq i8 %132, 1
  %cond.i.i = select i1 %cmp.i223.i, i32 16, i32 0
  %add.i.i = add nuw nsw i32 %cond.i.i, %conv48.i
  %dma.i = getelementptr inbounds %struct.td_node, ptr %125, i32 0, i32 1
  %133 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dma.i, align 4
  %and.i = and i32 %134, -64
  %prev56.i = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.1, i32 0, i32 5, i32 0, i32 1
  %135 = ptrtoint ptr %prev56.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev56.i, align 4
  %prev61.i = getelementptr i8, ptr %136, i32 12
  %137 = ptrtoint ptr %prev61.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev61.i, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %ptr64.i = getelementptr inbounds %struct.td_node, ptr %138, i32 0, i32 2
  %140 = ptrtoint ptr %ptr64.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ptr64.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %139, ptr %141, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %rev.i = getelementptr inbounds %struct.ci_hdrc, ptr %44, i32 0, i32 45
  %143 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %144)
  %cmp69.i = icmp eq i32 %144, 22
  %shl.i = shl nuw i32 1, %add.i.i
  br i1 %cmp69.i, label %if.then71.i, label %if.then47.i.if.end77.i_crit_edge

if.then47.i.if.end77.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then71.i:                                      ; preds = %if.then47.i
  %arrayidx.i.i = getelementptr %struct.ci_hdrc, ptr %44, i32 0, i32 2, i32 6, i32 19
  %145 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i.i, align 4
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #9, !srcloc !107
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i.i = and i32 %148, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool73.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool73.not.i, label %if.then74.i, label %if.then71.i.if.end77.i_crit_edge

if.then71.i.if.end77.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then74.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @reprime_dtd(ptr noundef %44, ptr noundef %hwep.1, ptr noundef %138) #9
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then74.i, %if.then71.i.if.end77.i_crit_edge, %if.then47.i.if.end77.i_crit_edge
  %arrayidx.i224.i = getelementptr %struct.ci_hdrc, ptr %44, i32 0, i32 2, i32 6, i32 17
  %149 = ptrtoint ptr %arrayidx.i224.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i224.i, align 4
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #9, !srcloc !107
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i225.i = and i32 %152, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i225.i)
  %tobool80.not.i = icmp eq i32 %and.i225.i, 0
  br i1 %tobool80.not.i, label %do.body83.preheader.i, label %if.end77.i.if.then63_crit_edge

if.end77.i.if.then63_crit_edge:                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

do.body83.preheader.i:                            ; preds = %if.end77.i
  %arrayidx.i226.i = getelementptr %struct.ci_hdrc, ptr %44, i32 0, i32 2, i32 6, i32 4
  %imx28_write_fix.i.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %44, i32 0, i32 41
  %arrayidx.i229.i = getelementptr %struct.ci_hdrc, ptr %44, i32 0, i32 2, i32 6, i32 19
  br label %do.body83.i

do.body83.i:                                      ; preds = %hw_write.exit.i.do.body83.i_crit_edge, %do.body83.preheader.i
  %153 = ptrtoint ptr %arrayidx.i226.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx.i226.i, align 4
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %156 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i.i.i = icmp eq i8 %157, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %do.body83.i.hw_write.exit.i_crit_edge

do.body83.i.hw_write.exit.i_crit_edge:            ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_write.exit.i

if.else.i.i.i:                                    ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #11
  %158 = or i32 %155, 4194304
  %159 = ptrtoint ptr %arrayidx.i226.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i226.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #9, !srcloc !111
  br label %hw_write.exit.i

hw_write.exit.i:                                  ; preds = %if.else.i.i.i, %do.body83.i.hw_write.exit.i_crit_edge
  %161 = ptrtoint ptr %arrayidx.i229.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx.i229.i, align 4
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %164 = ptrtoint ptr %arrayidx.i226.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i226.i, align 4
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %167 = and i32 %166, 4194304
  %tobool88.not.i = icmp eq i32 %167, 0
  br i1 %tobool88.not.i, label %hw_write.exit.i.do.body83.i_crit_edge, label %do.end90.i

hw_write.exit.i.do.body83.i_crit_edge:            ; preds = %hw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body83.i

do.end90.i:                                       ; preds = %hw_write.exit.i
  %168 = tail call i32 @llvm.bswap.i32(i32 %163) #9
  %and.i230.i = and i32 %168, %shl.i
  tail call fastcc void @hw_write(ptr noundef %44, i32 noundef 4, i32 noundef 16384, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i230.i)
  %tobool91.not.i = icmp eq i32 %and.i230.i, 0
  br i1 %tobool91.not.i, label %do.end90.i.if.end98.i_crit_edge, label %do.end90.i.if.then63_crit_edge

do.end90.i.if.then63_crit_edge:                   ; preds = %do.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

do.end90.i.if.end98.i_crit_edge:                  ; preds = %do.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i

if.end98.i:                                       ; preds = %do.end90.i.if.end98.i_crit_edge, %for.end.i.if.end98.i_crit_edge
  %dma99.i = getelementptr inbounds %struct.td_node, ptr %125, i32 0, i32 1
  %169 = ptrtoint ptr %dma99.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %dma99.i, align 4
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #9
  %ptr101.i = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.1, i32 0, i32 5, i32 1
  %172 = ptrtoint ptr %ptr101.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ptr101.i, align 4
  %td102.i = getelementptr inbounds %struct.ci_hw_qh, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %td102.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %171, ptr %td102.i, align 4
  %175 = load ptr, ptr %ptr101.i, align 4
  %token107.i = getelementptr inbounds %struct.ci_hw_qh, ptr %175, i32 0, i32 2, i32 1
  %176 = ptrtoint ptr %token107.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %token107.i, align 4
  %and108.i = and i32 %177, 1073741823
  store i32 %and108.i, ptr %token107.i, align 4
  %type.i = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.1, i32 0, i32 3
  %178 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %179)
  %cmp110.i = icmp eq i8 %179, 1
  br i1 %cmp110.i, label %land.lhs.true.i, label %if.end98.i.if.end139.i_crit_edge

if.end98.i.if.end139.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139.i

land.lhs.true.i:                                  ; preds = %if.end98.i
  %180 = ptrtoint ptr %dir.i6 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %dir.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %cmp114.i = icmp eq i8 %181, 0
  br i1 %cmp114.i, label %if.then116.i, label %land.lhs.true.i.if.end139.i_crit_edge

land.lhs.true.i.if.end139.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139.i

if.then116.i:                                     ; preds = %land.lhs.true.i
  %length.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %182 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %length.i, align 4
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %hwep.1, i32 0, i32 7
  %184 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %184, i32 7)
  %bf.load118.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr119.i = lshr i56 %bf.load118.i, 40
  %bf.cast.i = trunc i56 %bf.lshr119.i to i32
  %.frozen = freeze i32 %183
  %bf.cast.i.frozen = freeze i32 %bf.cast.i
  %div.i = udiv i32 %.frozen, %bf.cast.i.frozen
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp122.i = icmp eq i32 %183, 0
  br i1 %cmp122.i, label %if.then116.i.if.then132.i_crit_edge, label %lor.lhs.false.i

if.then116.i.if.then132.i_crit_edge:              ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132.i

lor.lhs.false.i:                                  ; preds = %if.then116.i
  %185 = mul i32 %div.i, %bf.cast.i.frozen
  %rem.i.decomposed = sub i32 %.frozen, %185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool131.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool131.not.i, label %lor.lhs.false.i.if.end133.i_crit_edge, label %lor.lhs.false.i.if.then132.i_crit_edge

lor.lhs.false.i.if.then132.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then132.i

lor.lhs.false.i.if.end133.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133.i

if.then132.i:                                     ; preds = %lor.lhs.false.i.if.then132.i_crit_edge, %if.then116.i.if.then132.i_crit_edge
  %inc.i = add i32 %div.i, 1
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then132.i, %lor.lhs.false.i.if.end133.i_crit_edge
  %mul.0.i = phi i32 [ %inc.i, %if.then132.i ], [ %div.i, %lor.lhs.false.i.if.end133.i_crit_edge ]
  %186 = shl i32 %mul.0.i, 6
  %187 = and i32 %186, 192
  %188 = ptrtoint ptr %ptr101.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ptr101.i, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 4
  %or138.i = or i32 %191, %187
  store i32 %or138.i, ptr %189, align 4
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.end133.i, %land.lhs.true.i.if.end139.i_crit_edge, %if.end98.i.if.end139.i_crit_edge
  %num140.i = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.1, i32 0, i32 2
  %192 = ptrtoint ptr %num140.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %num140.i, align 1
  %conv141.i = zext i8 %193 to i32
  %194 = ptrtoint ptr %dir.i6 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %dir.i6, align 4
  %conv143.i = zext i8 %195 to i32
  %196 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %cmp146.i = icmp eq i8 %197, 0
  %conv147.i = zext i1 %cmp146.i to i32
  %call148.i = tail call fastcc i32 @hw_ep_prime(ptr noundef %44, i32 noundef %conv141.i, i32 noundef %conv143.i, i32 noundef %conv147.i) #9
  br label %_hardware_enqueue.exit

_hardware_enqueue.exit:                           ; preds = %if.end139.i, %if.end12.i._hardware_enqueue.exit_crit_edge, %while.body.i217.i._hardware_enqueue.exit_crit_edge, %if.then.i.i._hardware_enqueue.exit_crit_edge, %prepare_td_per_sg.exit.i.i._hardware_enqueue.exit_crit_edge, %if.end.i._hardware_enqueue.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i._hardware_enqueue.exit_crit_edge ], [ %ret.0.i, %if.end12.i._hardware_enqueue.exit_crit_edge ], [ %call148.i, %if.end139.i ], [ %call.i.i, %if.then.i.i._hardware_enqueue.exit_crit_edge ], [ %call12.i.i, %while.body.i217.i._hardware_enqueue.exit_crit_edge ], [ %call.i.i.i, %prepare_td_per_sg.exit.i.i._hardware_enqueue.exit_crit_edge ]
  %198 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %retval.0.i, label %_hardware_enqueue.exit.cleanup_crit_edge [
    i32 -114, label %_hardware_enqueue.exit.if.then63_crit_edge
    i32 0, label %_hardware_enqueue.exit.if.then63_crit_edge29
  ]

_hardware_enqueue.exit.if.then63_crit_edge29:     ; preds = %_hardware_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

_hardware_enqueue.exit.if.then63_crit_edge:       ; preds = %_hardware_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

_hardware_enqueue.exit.cleanup_crit_edge:         ; preds = %_hardware_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then63:                                        ; preds = %_hardware_enqueue.exit.if.then63_crit_edge, %_hardware_enqueue.exit.if.then63_crit_edge29, %do.end90.i.if.then63_crit_edge, %if.end77.i.if.then63_crit_edge
  %qh65 = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.1, i32 0, i32 5
  %prev.i10 = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep.1, i32 0, i32 5, i32 0, i32 1
  %199 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %prev.i10, align 4
  %call.i.i11 = tail call zeroext i1 @__list_add_valid(ptr noundef %queue45, ptr noundef %200, ptr noundef %qh65) #9
  br i1 %call.i.i11, label %if.end.i.i, label %if.then63.cleanup_crit_edge

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %201 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %queue45, ptr %prev.i10, align 4
  %202 = ptrtoint ptr %queue45 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %qh65, ptr %queue45, align 4
  %prev3.i.i = getelementptr inbounds %struct.ci_hw_req, ptr %req, i32 0, i32 1, i32 1
  %203 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %200, ptr %prev3.i.i, align 4
  %204 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile ptr %queue45, ptr %200, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.then63.cleanup_crit_edge, %_hardware_enqueue.exit.cleanup_crit_edge, %_hardware_enqueue.exit.thread.thread16, %do.end51, %do.end41, %lor.lhs.false7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %do.end41 ], [ -16, %do.end51 ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then63.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ -22, %_hardware_enqueue.exit.thread.thread16 ], [ %retval.0.i, %_hardware_enqueue.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_port_test_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ep_nuke(ptr noundef %hwep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwep, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ci = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 7
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 4
  %num = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 2
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 1
  %conv = zext i8 %3 to i32
  %dir = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 1
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i.i = icmp eq i8 %5, 1
  %cond.i.i = select i1 %cmp.i.i, i32 16, i32 0
  %add.i.i = add nuw nsw i32 %cond.i.i, %conv
  %arrayidx.i1.i = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 2, i32 6, i32 19
  %shl.i = shl nuw i32 1, %add.i.i
  %imx28_write_fix.i.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 41
  %arrayidx5.i.i = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 2, i32 6, i32 18
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond10.i.do.body.i_crit_edge, %if.end
  %7 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %do.body.i.hw_write.exit.i_crit_edge

do.body.i.hw_write.exit.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_write.exit.i

if.else.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx5.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %6) #9, !srcloc !111
  br label %hw_write.exit.i

hw_write.exit.i:                                  ; preds = %if.else.i.i.i, %do.body.i.hw_write.exit.i_crit_edge
  %11 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx5.i.i, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !107
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i3.i = and i32 %14, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not4.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not4.i, label %hw_write.exit.i.do.cond10.i_crit_edge, label %hw_write.exit.i.do.end.i_crit_edge

hw_write.exit.i.do.end.i_crit_edge:               ; preds = %hw_write.exit.i
  br label %do.end.i

hw_write.exit.i.do.cond10.i_crit_edge:            ; preds = %hw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond10.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %hw_write.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !124
  %15 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx5.i.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !107
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i.i = and i32 %18, %shl.i
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.end.i.do.cond10.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.do.cond10.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond10.i

do.cond10.i:                                      ; preds = %do.end.i.do.cond10.i_crit_edge, %hw_write.exit.i.do.cond10.i_crit_edge
  %19 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i1.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !107
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i2.i = and i32 %22, %shl.i
  %tobool13.not.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool13.not.i, label %while.cond.preheader, label %do.cond10.i.do.body.i_crit_edge

do.cond10.i.do.body.i_crit_edge:                  ; preds = %do.cond10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

while.cond.preheader:                             ; preds = %do.cond10.i
  %qh = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 5
  %23 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %qh, align 4
  %cmp.i.not69 = icmp eq ptr %24, %qh
  br i1 %cmp.i.not69, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %td_pool = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 9
  %lock = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.body.lr.ph
  %25 = phi ptr [ %24, %while.body.lr.ph ], [ %60, %if.end32.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %25, i32 -56
  %tds = getelementptr i8, ptr %25, i32 8
  %26 = ptrtoint ptr %tds to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tds, align 4
  %cmp15.not66 = icmp eq ptr %27, %tds
  br i1 %cmp15.not66, label %while.body.for.end_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %while.body.for.body_crit_edge
  %node.067 = phi ptr [ %tmpnode.0, %list_del_init.exit.for.body_crit_edge ], [ %27, %while.body.for.body_crit_edge ]
  %28 = ptrtoint ptr %node.067 to i32
  call void @__asan_load4_noabort(i32 %28)
  %tmpnode.0 = load ptr, ptr %node.067, align 4
  %29 = ptrtoint ptr %td_pool to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %td_pool, align 4
  %ptr = getelementptr inbounds %struct.td_node, ptr %node.067, i32 0, i32 2
  %31 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ptr, align 4
  %dma = getelementptr inbounds %struct.td_node, ptr %node.067, i32 0, i32 1
  %33 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma, align 4
  tail call void @dma_pool_free(ptr noundef %30, ptr noundef %32, i32 noundef %34) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.067) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.067, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %node.067 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %node.067, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %41 = ptrtoint ptr %node.067 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %node.067, ptr %node.067, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %node.067, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %node.067, ptr %prev.i3.i, align 4
  %43 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %ptr, align 4
  tail call void @kfree(ptr noundef %node.067) #9
  %cmp15.not = icmp eq ptr %tmpnode.0, %tds
  br i1 %cmp15.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %while.body.for.end_crit_edge
  %call.i.i60 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %25) #9
  br i1 %call.i.i60, label %if.end.i.i63, label %for.end.list_del_init.exit65_crit_edge

for.end.list_del_init.exit65_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit65

if.end.i.i63:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i61 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i61, align 4
  %46 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %25, align 4
  %prev1.i.i.i62 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i62, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del_init.exit65

list_del_init.exit65:                             ; preds = %if.end.i.i63, %for.end.list_del_init.exit65_crit_edge
  %50 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %25, ptr %25, align 4
  %prev.i3.i64 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i3.i64 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %25, ptr %prev.i3.i64, align 4
  %status = getelementptr i8, ptr %25, i32 -8
  %52 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -108, ptr %status, align 4
  %complete = getelementptr i8, ptr %25, i32 -28
  %53 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %complete, align 4
  %cmp27.not = icmp eq ptr %54, null
  br i1 %cmp27.not, label %list_del_init.exit65.if.end32_crit_edge, label %if.then29

list_del_init.exit65.if.end32_crit_edge:          ; preds = %list_del_init.exit65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then29:                                        ; preds = %list_del_init.exit65
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %56) #9
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %hwep, ptr noundef %add.ptr) #9
  %57 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_lock(ptr noundef %58) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %list_del_init.exit65.if.end32_crit_edge
  %59 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %qh, align 4
  %cmp.i.not = icmp eq ptr %60, %qh
  br i1 %cmp.i.not, label %if.end32.while.end_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end32.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %pending_td = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 10
  %61 = ptrtoint ptr %pending_td to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pending_td, align 4
  %tobool33.not = icmp eq ptr %62, null
  br i1 %tobool33.not, label %while.end.cleanup_crit_edge, label %if.then34

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then34:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %td_pool.i = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 9
  %63 = ptrtoint ptr %td_pool.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %td_pool.i, align 4
  %ptr.i = getelementptr inbounds %struct.td_node, ptr %62, i32 0, i32 2
  %65 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ptr.i, align 4
  %dma.i = getelementptr inbounds %struct.td_node, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma.i, align 4
  tail call void @dma_pool_free(ptr noundef %64, ptr noundef %66, i32 noundef %68) #9
  %69 = ptrtoint ptr %pending_td to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %pending_td, align 4
  tail call void @kfree(ptr noundef nonnull %62) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_ep_flush(ptr nocapture noundef readonly %ci, i32 noundef %num, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 1
  %cond.i = select i1 %cmp.i, i32 16, i32 0
  %add.i = add i32 %cond.i, %num
  %arrayidx.i1 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 19
  %shl = shl nuw i32 1, %add.i
  %imx28_write_fix.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %arrayidx5.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 18
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  br label %do.body

do.body:                                          ; preds = %do.cond10.do.body_crit_edge, %entry
  %1 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body.hw_write.exit_crit_edge

do.body.hw_write.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_write.exit

if.else.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %0) #9, !srcloc !111
  br label %hw_write.exit

hw_write.exit:                                    ; preds = %if.else.i.i, %do.body.hw_write.exit_crit_edge
  %5 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx5.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !107
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i3 = and i32 %8, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.not4 = icmp eq i32 %and.i3, 0
  br i1 %tobool.not4, label %hw_write.exit.do.cond10_crit_edge, label %hw_write.exit.do.end_crit_edge

hw_write.exit.do.end_crit_edge:                   ; preds = %hw_write.exit
  br label %do.end

hw_write.exit.do.cond10_crit_edge:                ; preds = %hw_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond10

do.end:                                           ; preds = %do.end.do.end_crit_edge, %hw_write.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !124
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx5.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !107
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i = and i32 %12, %shl
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end.do.cond10_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.do.cond10_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond10

do.cond10:                                        ; preds = %do.end.do.cond10_crit_edge, %hw_write.exit.do.cond10_crit_edge
  %13 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i1, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !107
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i2 = and i32 %16, %shl
  %tobool13.not = icmp eq i32 %and.i2, 0
  br i1 %tobool13.not, label %do.end14, label %do.cond10.do.body_crit_edge

do.cond10.do.body_crit_edge:                      ; preds = %do.cond10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end14:                                         ; preds = %do.cond10
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ci_prepare_td(ptr noundef %hwep, ptr noundef %hwreq, ptr noundef %td) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ci_prepare_td, i32 0, i32 1), ptr blockaddress(@trace_ci_prepare_td, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !113

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !97) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !112

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !97) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !125
  %call42 = tail call i32 @__traceiter_ci_prepare_td(ptr noundef null, ptr noundef %hwep, ptr noundef %hwreq, ptr noundef %td) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !97) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !97) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !112

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !97) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ci_prepare_td, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ci_prepare_td, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ci_prepare_td.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ci_prepare_td.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 75, ptr noundef nonnull @.str.9) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  %31 = tail call i32 @llvm.read_register.i32(metadata !97) #9
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
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_td_to_list(ptr nocapture noundef readonly %hwep, ptr noundef %hwreq, i32 noundef %length, ptr noundef readonly %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 20) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %td_pool = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 9
  %1 = ptrtoint ptr %td_pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %td_pool, align 4
  %dma = getelementptr inbounds %struct.td_node, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 2848, ptr noundef %dma) #9
  %ptr = getelementptr inbounds %struct.td_node, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %ptr, align 4
  %cmp3 = icmp eq ptr %call.i, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = tail call i32 @llvm.bswap.i32(i32 %length)
  %5 = lshr i32 %4, 16
  %token = getelementptr inbounds %struct.ci_hw_td, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %token, align 4
  %7 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptr, align 4
  %token9 = getelementptr inbounds %struct.ci_hw_td, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %token9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %token9, align 4
  %and = and i32 %10, 65407
  store i32 %and, ptr %token9, align 4
  %11 = load ptr, ptr %ptr, align 4
  %token11 = getelementptr inbounds %struct.ci_hw_td, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %token11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %token11, align 4
  %or = or i32 %13, -2147483648
  store i32 %or, ptr %token11, align 4
  %type = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 3
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp12 = icmp eq i8 %15, 1
  br i1 %cmp12, label %land.lhs.true, label %if.end5.if.end37_crit_edge

if.end5.if.end37_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end5
  %dir = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 1
  %16 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp15 = icmp eq i8 %17, 1
  br i1 %cmp15, label %if.then17, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then17:                                        ; preds = %land.lhs.true
  %length18 = getelementptr inbounds %struct.usb_request, ptr %hwreq, i32 0, i32 1
  %18 = ptrtoint ptr %length18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length18, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %hwep, i32 0, i32 7
  %20 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %20, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %.frozen = freeze i32 %19
  %bf.cast.frozen = freeze i32 %bf.cast
  %div = udiv i32 %.frozen, %bf.cast.frozen
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp21 = icmp eq i32 %19, 0
  br i1 %cmp21, label %if.then17.if.then30_crit_edge, label %lor.lhs.false

if.then17.if.then30_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.then17
  %21 = mul i32 %div, %bf.cast.frozen
  %rem.decomposed = sub i32 %.frozen, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end31_crit_edge, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.then17.if.then30_crit_edge
  %inc = add i32 %div, 1
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %lor.lhs.false.if.end31_crit_edge
  %mul.0 = phi i32 [ %inc, %if.then30 ], [ %div, %lor.lhs.false.if.end31_crit_edge ]
  %shl33 = shl i32 %mul.0, 10
  %22 = tail call i32 @llvm.bswap.i32(i32 %shl33)
  %23 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptr, align 4
  %token35 = getelementptr inbounds %struct.ci_hw_td, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %token35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %token35, align 4
  %or36 = or i32 %26, %22
  store i32 %or36, ptr %token35, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end31, %land.lhs.true.if.end37_crit_edge, %if.end5.if.end37_crit_edge
  %tobool38.not = icmp eq ptr %s, null
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %s, i32 0, i32 3
  %27 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_address, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %hwreq, i32 0, i32 12
  %29 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %actual, align 4
  %add = add i32 %30, %28
  %sub = sub i32 20480, %length
  %td_remaining_size = getelementptr inbounds %struct.td_node, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %td_remaining_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub, ptr %td_remaining_size, align 8
  br label %if.end46

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %dma42 = getelementptr inbounds %struct.usb_request, ptr %hwreq, i32 0, i32 2
  %32 = ptrtoint ptr %dma42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma42, align 4
  %actual44 = getelementptr inbounds %struct.usb_request, ptr %hwreq, i32 0, i32 12
  %34 = ptrtoint ptr %actual44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %actual44, align 4
  %add45 = add i32 %35, %33
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then39
  %temp.0 = phi i32 [ %add, %if.then39 ], [ %add45, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool47.not = icmp eq i32 %length, 0
  br i1 %tobool47.not, label %if.end46.if.end60_crit_edge, label %if.then48

if.end46.if.end60_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %36 = tail call i32 @llvm.bswap.i32(i32 %temp.0)
  %37 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ptr, align 4
  %page = getelementptr inbounds %struct.ci_hw_td, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %page, align 4
  %add54 = add i32 %temp.0, 4096
  %and55 = and i32 %add54, -4096
  %40 = tail call i32 @llvm.bswap.i32(i32 %and55)
  %41 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ptr, align 4
  %arrayidx58 = getelementptr %struct.ci_hw_td, ptr %42, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %arrayidx58, align 4
  %add54.1 = add i32 %temp.0, 8192
  %and55.1 = and i32 %add54.1, -4096
  %44 = tail call i32 @llvm.bswap.i32(i32 %and55.1)
  %45 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ptr, align 4
  %arrayidx58.1 = getelementptr %struct.ci_hw_td, ptr %46, i32 0, i32 2, i32 2
  %47 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %arrayidx58.1, align 4
  %add54.2 = add i32 %temp.0, 12288
  %and55.2 = and i32 %add54.2, -4096
  %48 = tail call i32 @llvm.bswap.i32(i32 %and55.2)
  %49 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ptr, align 4
  %arrayidx58.2 = getelementptr %struct.ci_hw_td, ptr %50, i32 0, i32 2, i32 3
  %51 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %arrayidx58.2, align 4
  %add54.3 = add i32 %temp.0, 16384
  %and55.3 = and i32 %add54.3, -4096
  %52 = tail call i32 @llvm.bswap.i32(i32 %and55.3)
  %53 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ptr, align 4
  %arrayidx58.3 = getelementptr %struct.ci_hw_td, ptr %54, i32 0, i32 2, i32 4
  %55 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %arrayidx58.3, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then48, %if.end46.if.end60_crit_edge
  %actual62 = getelementptr inbounds %struct.usb_request, ptr %hwreq, i32 0, i32 12
  %56 = ptrtoint ptr %actual62 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %actual62, align 4
  %add63 = add i32 %57, %length
  store i32 %add63, ptr %actual62, align 4
  %tds = getelementptr inbounds %struct.ci_hw_req, ptr %hwreq, i32 0, i32 2
  %58 = ptrtoint ptr %tds to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %tds, align 4
  %cmp.i.not = icmp eq ptr %59, %tds
  br i1 %cmp.i.not, label %if.end60.if.end70_crit_edge, label %if.then66

if.end60.if.end70_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %prev = getelementptr inbounds %struct.ci_hw_req, ptr %hwreq, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev, align 4
  %62 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma, align 8
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %ptr69 = getelementptr inbounds %struct.td_node, ptr %61, i32 0, i32 2
  %65 = ptrtoint ptr %ptr69 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ptr69, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %64, ptr %66, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.end60.if.end70_crit_edge
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %prev.i113 = getelementptr inbounds %struct.ci_hw_req, ptr %hwreq, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i113, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %71, ptr noundef %tds) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i, ptr %prev.i113, align 4
  %73 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %tds, ptr %call7.i.i, align 8
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %call7.i.i, ptr %71, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end70.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end70.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ci_prepare_td(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_clear_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @otg_a_alt_hnp_support(ptr noundef %ci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26) #12
  %status.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 26
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b52.i = load i1, ptr @isr_setup_status_phase.__already_done, align 1
  br i1 %.b52.i, label %land.rhs.i.isr_setup_status_phase.exit_crit_edge, label %if.then.i, !prof !112

land.rhs.i.isr_setup_status_phase.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %isr_setup_status_phase.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @isr_setup_status_phase.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1080, i32 noundef 9, ptr noundef null) #9
  br label %isr_setup_status_phase.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ep0_dir.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 23
  %2 = ptrtoint ptr %ep0_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep0_dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %ep0out.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 24
  %ep0in.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 25
  %cond.in.i = select i1 %cmp.i, ptr %ep0out.i, ptr %ep0in.i
  %4 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %context.i = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ci, ptr %context.i, align 4
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %status.i, align 8
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @isr_setup_status_complete, ptr %complete.i, align 4
  %9 = load ptr, ptr %status.i, align 8
  %call.i = tail call fastcc i32 @_ep_queue(ptr noundef %cond.i, ptr noundef %9) #9
  br label %isr_setup_status_phase.exit

isr_setup_status_phase.exit:                      ; preds = %if.end39.i, %if.then.i, %land.rhs.i.isr_setup_status_phase.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end39.i ], [ -32, %if.then.i ], [ -32, %land.rhs.i.isr_setup_status_phase.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isr_get_status_complete(ptr noundef %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ep, null
  %cmp1 = icmp eq ptr %req, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  tail call void @kfree(ptr noundef %1) #9
  tail call void @usb_ep_free_request(ptr noundef nonnull %ep, ptr noundef nonnull %req) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_udc_wakeup(ptr noundef %_gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %_gadget, i32 -876
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %_gadget, i32 0, i32 5
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6 = icmp eq i32 %1, 0
  br i1 %cmp6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %remote_wakeup = getelementptr i8, ptr %_gadget, i32 4278
  %2 = ptrtoint ptr %remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %remote_wakeup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %arrayidx.i = getelementptr i8, ptr %_gadget, i32 -760
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool12.not = icmp sgt i32 %6, -1
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %imx28_write_fix.i.i = getelementptr i8, ptr %_gadget, i32 4318
  %10 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %12 = or i32 %9, 1073741824
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !111
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.else.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_udc_selfpowered(ptr nocapture noundef %_gadget, i32 noundef %is_on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep0in = getelementptr i8, ptr %_gadget, i32 4268
  %0 = ptrtoint ptr %ep0in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep0in, align 4
  %lock = getelementptr inbounds %struct.ci_hw_ep, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %cmp6.not = icmp eq i32 %is_on, 0
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %_gadget, i32 0, i32 17
  %4 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.shl = select i1 %cmp6.not, i32 0, i32 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered, align 4
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_udc_vbus_session(ptr noundef %_gadget, i32 noundef %is_active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %_gadget, i32 -880
  %lock = getelementptr i8, ptr %_gadget, i32 -876
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %vbus_active = getelementptr i8, ptr %_gadget, i32 4288
  %0 = ptrtoint ptr %vbus_active to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %is_active, ptr %vbus_active, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %usb_phy = getelementptr i8, ptr %_gadget, i32 4308
  %1 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb_phy, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_active)
  %tobool8.not = icmp eq i32 %is_active, 0
  %cond = select i1 %tobool8.not, i32 2, i32 1
  tail call void @usb_phy_set_charger_state(ptr noundef nonnull %2, i32 noundef %cond) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %platdata = getelementptr i8, ptr %_gadget, i32 4284
  %3 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platdata, align 4
  %notify_event = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %notify_event to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %notify_event, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 %6(ptr noundef %add.ptr, i32 noundef 4) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then10 ], [ 0, %if.end.if.end14_crit_edge ]
  %driver = getelementptr i8, ptr %_gadget, i32 1048
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver, align 8
  %tobool15.not = icmp eq ptr %8, null
  br i1 %tobool15.not, label %if.end14.if.end17_crit_edge, label %if.then16

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ci_hdrc_gadget_connect(ptr noundef %_gadget, i32 noundef %is_active)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_udc_vbus_draw(ptr nocapture noundef readonly %_gadget, i32 noundef %ma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_phy = getelementptr i8, ptr %_gadget, i32 4308
  %0 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_phy, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %1, i32 noundef %ma) #9
  %set_power.i = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_power.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %3(ptr noundef nonnull %1, i32 noundef %ma) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ %call.i, %if.then2.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_udc_pullup(ptr nocapture noundef readonly %_gadget, i32 noundef %is_on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %_gadget, i32 -880
  %platdata.i = getelementptr i8, ptr %_gadget, i32 4284
  %0 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platdata.i, align 4
  %is_otg.i = getelementptr i8, ptr %_gadget, i32 -640
  %2 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_otg.i, align 8, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true.i

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true.i:                                  ; preds = %entry
  %roles.i = getelementptr i8, ptr %_gadget, i32 -652
  %4 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %roles.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.lor.lhs.false_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr i8, ptr %_gadget, i32 -648
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.lor.lhs.false_crit_edge, label %land.rhs.i

land.lhs.true2.i.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.rhs.i:                                       ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %srp_support.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.i = icmp eq i8 %9, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.rhs.i.cleanup_crit_edge

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hnp_support.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not.i = icmp eq i8 %11, 0
  br i1 %tobool7.not.i, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %adp_support.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.i.not = icmp eq i8 %13, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.lor.lhs.false_crit_edge, label %ci_otg_is_fsm_mode.exit.cleanup_crit_edge

ci_otg_is_fsm_mode.exit.cleanup_crit_edge:        ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ci_otg_is_fsm_mode.exit.lor.lhs.false_crit_edge:  ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %ci_otg_is_fsm_mode.exit.lor.lhs.false_crit_edge, %land.lhs.true2.i.lor.lhs.false_crit_edge, %land.lhs.true.i.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %role = getelementptr i8, ptr %_gadget, i32 -644
  %14 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  %arrayidx.i11 = getelementptr i8, ptr %_gadget, i32 -792
  %18 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i11, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %imx28_write_fix.i.i13 = getelementptr i8, ptr %_gadget, i32 4318
  %21 = ptrtoint ptr %imx28_write_fix.i.i13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %imx28_write_fix.i.i13, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i14 = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  br i1 %tobool.not.i.i14, label %if.else.i.i, label %if.then2.if.end3_crit_edge

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.else.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %23 = or i32 %20, 16777216
  %24 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !111
  br label %if.end3

if.else:                                          ; preds = %if.end
  br i1 %tobool.not.i.i14, label %if.else.i.i16, label %if.else.if.end3_crit_edge

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.else.i.i16:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %26 = and i32 %20, -16777217
  %27 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !111
  br label %if.end3

if.end3:                                          ; preds = %if.else.i.i16, %if.else.if.end3_crit_edge, %if.else.i.i, %if.then2.if.end3_crit_edge
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  %call.i18 = tail call i32 @__pm_runtime_idle(ptr noundef %30, i32 noundef 4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %lor.lhs.false.cleanup_crit_edge, %ci_otg_is_fsm_mode.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_udc_start(ptr noundef %gadget, ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -880
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 5
  %0 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disconnect, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ep0out = getelementptr i8, ptr %gadget, i32 4264
  %2 = ptrtoint ptr %ep0out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep0out, align 8
  %desc = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ctrl_endpt_out_desc, ptr %desc, align 4
  %5 = load ptr, ptr %ep0out, align 8
  %call = tail call i32 @usb_ep_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ep0in = getelementptr i8, ptr %gadget, i32 4268
  %6 = ptrtoint ptr %ep0in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep0in, align 4
  %desc7 = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %desc7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ctrl_endpt_in_desc, ptr %desc7, align 4
  %9 = load ptr, ptr %ep0in, align 4
  %call10 = tail call i32 @usb_ep_enable(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %driver14 = getelementptr i8, ptr %gadget, i32 1048
  %10 = ptrtoint ptr %driver14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %driver, ptr %driver14, align 8
  %platdata.i = getelementptr i8, ptr %gadget, i32 4284
  %11 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platdata.i, align 4
  %is_otg.i = getelementptr i8, ptr %gadget, i32 -640
  %13 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_otg.i, align 8, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end13.if.end18_crit_edge, label %land.lhs.true.i

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true.i:                                  ; preds = %if.end13
  %roles.i = getelementptr i8, ptr %gadget, i32 -652
  %15 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %roles.i, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end18_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end18_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr i8, ptr %gadget, i32 -648
  %17 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %18, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.if.end18_crit_edge, label %land.rhs.i

land.lhs.true2.i.if.end18_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.rhs.i:                                       ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %12, i32 0, i32 10, i32 2
  %19 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %srp_support.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool6.not.i = icmp eq i8 %20, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.rhs.i.land.lhs.true_crit_edge

land.rhs.i.land.lhs.true_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %12, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hnp_support.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool7.not.i = icmp eq i8 %22, 0
  br i1 %tobool7.not.i, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i.land.lhs.true_crit_edge

lor.lhs.false.i.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %12, i32 0, i32 10, i32 3
  %23 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %adp_support.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool8.i.not = icmp eq i8 %24, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.if.end18_crit_edge, label %ci_otg_is_fsm_mode.exit.land.lhs.true_crit_edge

ci_otg_is_fsm_mode.exit.land.lhs.true_crit_edge:  ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

ci_otg_is_fsm_mode.exit.if.end18_crit_edge:       ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %ci_otg_is_fsm_mode.exit.land.lhs.true_crit_edge, %lor.lhs.false.i.land.lhs.true_crit_edge, %land.rhs.i.land.lhs.true_crit_edge
  %fsm = getelementptr i8, ptr %gadget, i32 -592
  %25 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fsm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16.not = icmp eq i32 %26, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end18_crit_edge, label %if.then17

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ci_hdrc_otg_fsm_start(ptr noundef %add.ptr) #9
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %ci_otg_is_fsm_mode.exit.if.end18_crit_edge, %land.lhs.true2.i.if.end18_crit_edge, %land.lhs.true.i.if.end18_crit_edge, %if.end13.if.end18_crit_edge
  %vbus_active = getelementptr i8, ptr %gadget, i32 4288
  %27 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vbus_active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool19.not = icmp eq i32 %28, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ci_hdrc_gadget_connect(ptr noundef %gadget, i32 noundef 1)
  br label %cleanup

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_udc_vbus_handler(ptr noundef %gadget, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then20, %if.then17, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then17 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call10, %if.end5.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_udc_stop(ptr noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -880
  %lock = getelementptr i8, ptr %gadget, i32 -876
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %driver = getelementptr i8, ptr %gadget, i32 1048
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver, align 8
  %vbus_active = getelementptr i8, ptr %gadget, i32 4288
  %1 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vbus_active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then:                                          ; preds = %entry
  %imx28_write_fix.i.i6.i = getelementptr i8, ptr %gadget, i32 4318
  %3 = ptrtoint ptr %imx28_write_fix.i.i6.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %imx28_write_fix.i.i6.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i7.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i7.i, label %if.else.i.i9.i, label %if.then.hw_device_state.exit_crit_edge

if.then.hw_device_state.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_device_state.exit

if.else.i.i9.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5.i8.i = getelementptr i8, ptr %gadget, i32 -784
  %5 = ptrtoint ptr %arrayidx5.i8.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx5.i8.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #9, !srcloc !111
  br label %hw_device_state.exit

hw_device_state.exit:                             ; preds = %if.else.i.i9.i, %if.then.hw_device_state.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %platdata = getelementptr i8, ptr %gadget, i32 4284
  %7 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platdata, align 4
  %notify_event = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %notify_event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %notify_event, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %hw_device_state.exit.if.end_crit_edge, label %if.then9

hw_device_state.exit.if.end_crit_edge:            ; preds = %hw_device_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then9:                                         ; preds = %hw_device_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 %10(ptr noundef %add.ptr, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then9, %hw_device_state.exit.if.end_crit_edge
  tail call fastcc void @_gadget_stop_activity(ptr noundef %gadget)
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #9
  br label %if.end30

if.end30:                                         ; preds = %if.end, %entry.if.end30_crit_edge
  %flags.0 = phi i32 [ %call24, %if.end ], [ %call3, %entry.if.end30_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #9
  %platdata.i.i = getelementptr i8, ptr %gadget, i32 4284
  %13 = ptrtoint ptr %platdata.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platdata.i.i, align 4
  %is_otg.i.i = getelementptr i8, ptr %gadget, i32 -640
  %15 = ptrtoint ptr %is_otg.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_otg.i.i, align 8, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %if.end30.ci_udc_stop_for_otg_fsm.exit_crit_edge, label %land.lhs.true.i.i

if.end30.ci_udc_stop_for_otg_fsm.exit_crit_edge:  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %ci_udc_stop_for_otg_fsm.exit

land.lhs.true.i.i:                                ; preds = %if.end30
  %roles.i.i = getelementptr i8, ptr %gadget, i32 -652
  %17 = ptrtoint ptr %roles.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %roles.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.ci_udc_stop_for_otg_fsm.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.ci_udc_stop_for_otg_fsm.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ci_udc_stop_for_otg_fsm.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %gadget, i32 -648
  %19 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx4.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %20, null
  br i1 %tobool5.not.i.i, label %land.lhs.true2.i.i.ci_udc_stop_for_otg_fsm.exit_crit_edge, label %land.rhs.i.i

land.lhs.true2.i.i.ci_udc_stop_for_otg_fsm.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ci_udc_stop_for_otg_fsm.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true2.i.i
  %srp_support.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %14, i32 0, i32 10, i32 2
  %21 = ptrtoint ptr %srp_support.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %srp_support.i.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool6.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool6.not.i.i, label %lor.lhs.false.i.i, label %land.rhs.i.i.if.end.i_crit_edge

land.rhs.i.i.if.end.i_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

lor.lhs.false.i.i:                                ; preds = %land.rhs.i.i
  %hnp_support.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %14, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %hnp_support.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hnp_support.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool7.not.i.i, label %ci_otg_is_fsm_mode.exit.i, label %lor.lhs.false.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

ci_otg_is_fsm_mode.exit.i:                        ; preds = %lor.lhs.false.i.i
  %adp_support.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %14, i32 0, i32 10, i32 3
  %25 = ptrtoint ptr %adp_support.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %adp_support.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool8.i.not.i = icmp eq i8 %26, 0
  br i1 %tobool8.i.not.i, label %ci_otg_is_fsm_mode.exit.i.ci_udc_stop_for_otg_fsm.exit_crit_edge, label %ci_otg_is_fsm_mode.exit.i.if.end.i_crit_edge

ci_otg_is_fsm_mode.exit.i.if.end.i_crit_edge:     ; preds = %ci_otg_is_fsm_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

ci_otg_is_fsm_mode.exit.i.ci_udc_stop_for_otg_fsm.exit_crit_edge: ; preds = %ci_otg_is_fsm_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ci_udc_stop_for_otg_fsm.exit

if.end.i:                                         ; preds = %ci_otg_is_fsm_mode.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.if.end.i_crit_edge, %land.rhs.i.i.if.end.i_crit_edge
  %lock.i = getelementptr i8, ptr %gadget, i32 -420
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %otg.i = getelementptr i8, ptr %gadget, i32 -428
  %27 = ptrtoint ptr %otg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %otg.i, align 4
  %state.i = getelementptr inbounds %struct.usb_otg, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %30, label %if.end.i.if.end14.i_crit_edge [
    i32 11, label %if.then2.i
    i32 3, label %if.then8.i
  ]

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %a_bidl_adis_tmout.i = getelementptr i8, ptr %gadget, i32 -436
  %32 = ptrtoint ptr %a_bidl_adis_tmout.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %a_bidl_adis_tmout.i, align 4
  tail call void @ci_hdrc_otg_fsm_start(ptr noundef %add.ptr) #9
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %protocol.i = getelementptr i8, ptr %gadget, i32 -424
  %33 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %protocol.i, align 8
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %state.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.then2.i, %if.end.i.if.end14.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %ci_udc_stop_for_otg_fsm.exit

ci_udc_stop_for_otg_fsm.exit:                     ; preds = %if.end14.i, %ci_otg_is_fsm_mode.exit.i.ci_udc_stop_for_otg_fsm.exit_crit_edge, %land.lhs.true2.i.i.ci_udc_stop_for_otg_fsm.exit_crit_edge, %land.lhs.true.i.i.ci_udc_stop_for_otg_fsm.exit_crit_edge, %if.end30.ci_udc_stop_for_otg_fsm.exit_crit_edge
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @ci_udc_match_ep(ptr noundef readonly %gadget, ptr nocapture noundef readonly %desc, ptr nocapture noundef readnone %comp_desc) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bmAttributes.i, align 1
  %2 = and i8 %1, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.i.not = icmp eq i8 %2, 1
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %3 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %tobool2.not = icmp sgt i8 %4, -1
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 4
  %prev = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn29 = load ptr, ptr %prev, align 4
  %cmp.not30 = icmp eq ptr %.pn29, %ep_list
  br i1 %cmp.not30, label %if.then.cleanup_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn31 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn29, %if.then.for.body_crit_edge ]
  %caps = getelementptr i8, ptr %.pn31, i32 8
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %caps, align 4
  %7 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %land.lhs.true11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true11:                                  ; preds = %for.body
  %claimed = getelementptr i8, ptr %.pn31, i32 12
  %8 = ptrtoint ptr %claimed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %claimed, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %cleanup.loopexit.split.loop.exit, label %land.lhs.true11.for.inc_crit_edge

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %prev16 = getelementptr inbounds %struct.list_head, ptr %.pn31, i32 0, i32 1
  %10 = ptrtoint ptr %prev16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %prev16, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  %ep.0.le = getelementptr i8, ptr %.pn31, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.inc.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %ep.0.le, %cleanup.loopexit.split.loop.exit ], [ null, %if.then.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_charger_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ci_hdrc_gadget_connect(ptr noundef %_gadget, i32 noundef %is_active) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %_gadget, i32 -880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_active)
  %tobool.not = icmp eq i32 %is_active, 0
  br i1 %tobool.not, label %if.else7, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %call1 = tail call i32 @hw_device_reset(ptr noundef %add.ptr) #9
  %lock = getelementptr i8, ptr %_gadget, i32 -876
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %driver = getelementptr i8, ptr %_gadget, i32 1048
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %ep0out = getelementptr i8, ptr %_gadget, i32 4264
  %4 = ptrtoint ptr %ep0out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep0out, align 8
  %dma = getelementptr inbounds %struct.ci_hw_ep, ptr %5, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %imx28_write_fix.i.i6.i = getelementptr i8, ptr %_gadget, i32 4318
  %8 = ptrtoint ptr %imx28_write_fix.i.i6.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %imx28_write_fix.i.i6.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i7.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  br i1 %tobool.not.i.i7.i, label %hw_write.exit.i, label %if.then.i.hw_device_state.exit_crit_edge

if.then.i.hw_device_state.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_device_state.exit

hw_write.exit.i:                                  ; preds = %if.then.i
  %arrayidx5.i.i = getelementptr i8, ptr %_gadget, i32 -776
  %10 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %12) #9, !srcloc !111
  %13 = ptrtoint ptr %imx28_write_fix.i.i6.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %.pr.i = load i8, ptr %imx28_write_fix.i.i6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool.not.i.i2.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool.not.i.i2.i, label %if.else.i.i4.i, label %hw_write.exit.i.hw_device_state.exit_crit_edge

hw_write.exit.i.hw_device_state.exit_crit_edge:   ; preds = %hw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_device_state.exit

if.else.i.i4.i:                                   ; preds = %hw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5.i3.i = getelementptr i8, ptr %_gadget, i32 -784
  %14 = ptrtoint ptr %arrayidx5.i3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5.i3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1191247872) #9, !srcloc !111
  br label %hw_device_state.exit

if.else.i:                                        ; preds = %if.then3
  br i1 %tobool.not.i.i7.i, label %if.else.i.i9.i, label %if.else.i.hw_device_state.exit_crit_edge

if.else.i.hw_device_state.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_device_state.exit

if.else.i.i9.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5.i8.i = getelementptr i8, ptr %_gadget, i32 -784
  %16 = ptrtoint ptr %arrayidx5.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx5.i8.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #9, !srcloc !111
  br label %hw_device_state.exit

hw_device_state.exit:                             ; preds = %if.else.i.i9.i, %if.else.i.hw_device_state.exit_crit_edge, %if.else.i.i4.i, %hw_write.exit.i.hw_device_state.exit_crit_edge, %if.then.i.hw_device_state.exit_crit_edge
  tail call void @usb_gadget_set_state(ptr noundef %_gadget, i32 noundef 2) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  tail call void @usb_udc_vbus_handler(ptr noundef %_gadget, i1 noundef zeroext true) #9
  br label %if.end24

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  br label %if.end24

if.else7:                                         ; preds = %entry
  tail call void @usb_udc_vbus_handler(ptr noundef %_gadget, i1 noundef zeroext false) #9
  %driver8 = getelementptr i8, ptr %_gadget, i32 1048
  %18 = ptrtoint ptr %driver8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver8, align 8
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %if.else7.if.end12_crit_edge, label %if.then10

if.else7.if.end12_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disconnect, align 4
  tail call void %21(ptr noundef %_gadget) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else7.if.end12_crit_edge
  %imx28_write_fix.i.i6.i46 = getelementptr i8, ptr %_gadget, i32 4318
  %22 = ptrtoint ptr %imx28_write_fix.i.i6.i46 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %imx28_write_fix.i.i6.i46, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i7.i47 = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i7.i47, label %if.else.i.i9.i50, label %if.end12.hw_device_state.exit51_crit_edge

if.end12.hw_device_state.exit51_crit_edge:        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_device_state.exit51

if.else.i.i9.i50:                                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5.i8.i49 = getelementptr i8, ptr %_gadget, i32 -784
  %24 = ptrtoint ptr %arrayidx5.i8.i49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx5.i8.i49, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #9, !srcloc !111
  br label %hw_device_state.exit51

hw_device_state.exit51:                           ; preds = %if.else.i.i9.i50, %if.end12.hw_device_state.exit51_crit_edge
  %platdata = getelementptr i8, ptr %_gadget, i32 4284
  %26 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %platdata, align 4
  %notify_event = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %notify_event to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %notify_event, align 4
  %tobool14.not = icmp eq ptr %29, null
  br i1 %tobool14.not, label %hw_device_state.exit51.if.end19_crit_edge, label %if.then15

hw_device_state.exit51.if.end19_crit_edge:        ; preds = %hw_device_state.exit51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then15:                                        ; preds = %hw_device_state.exit51
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 %29(ptr noundef %add.ptr, i32 noundef 1) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %hw_device_state.exit51.if.end19_crit_edge
  tail call fastcc void @_gadget_stop_activity(ptr noundef %_gadget)
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 8
  %call.i52 = tail call i32 @__pm_runtime_idle(ptr noundef %31, i32 noundef 4) #9
  tail call void @usb_gadget_set_state(ptr noundef %_gadget, i32 noundef 0) #9
  br label %if.end24

if.end24:                                         ; preds = %if.end19, %if.else, %hw_device_state.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_device_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_udc_vbus_handler(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_charger_current(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_otg_fsm_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_enable(ptr noundef %ep, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ep, null
  %cmp2 = icmp eq ptr %desc, null
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body3:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 8
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %qh = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 5
  %2 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %qh, align 4
  %cmp.i.not = icmp eq ptr %3, %qh
  br i1 %cmp.i.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %ci = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 7
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.33) #12
  br label %cleanup.sink.split

if.end15:                                         ; preds = %do.body3
  %desc17 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %8 = ptrtoint ptr %desc17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %desc, ptr %desc17, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %9 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool19.not = icmp slt i8 %10, 0
  %.lobit = lshr i8 %10, 7
  %dir = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 1
  %11 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.lobit, ptr %dir, align 4
  %12 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bEndpointAddress.i, align 1
  %14 = and i8 %13, 15
  %num = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 2
  %15 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %num, align 1
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %16 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bmAttributes.i, align 1
  %18 = and i8 %17, 3
  %type = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 3
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %type, align 2
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %20 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %wMaxPacketSize.i, align 1
  %22 = and i16 %21, -249
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %24 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %24, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.value = zext i16 %23 to i56
  %bf.shl = shl nuw nsw i56 %bf.value, 40
  %bf.clear = and i56 %bf.load, 1099511627775
  %bf.set = or i56 %bf.shl, %bf.clear
  store i56 %bf.set, ptr %maxpacket, align 2
  %25 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %wMaxPacketSize.i, align 1
  %27 = shl i16 %26, 3
  %narrow.i = and i16 %27, 192
  %28 = add nuw nsw i16 %narrow.i, 64
  %29 = and i16 %28, 192
  %bf.shl31 = zext i16 %29 to i56
  %bf.clear32 = and i56 %bf.set, 2251799813685055
  %bf.set33 = or i56 %bf.clear32, %bf.shl31
  store i56 %bf.set33, ptr %maxpacket, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp37 = icmp eq i8 %18, 0
  %spec.select = select i1 %cmp37, i32 536903680, i32 536870912
  %bf.value.tr = zext i16 %23 to i32
  %tr.sh.diff = shl nuw nsw i32 %bf.value.tr, 16
  %or46 = or i32 %tr.sh.diff, %spec.select
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp49 = icmp eq i8 %18, 1
  %or58 = or i32 %or46, -1073741824
  %30 = select i1 %cmp49, i1 %tobool19.not, i1 false
  %cap.1 = select i1 %30, i32 %or58, i32 %or46
  %31 = tail call i32 @llvm.bswap.i32(i32 %cap.1)
  %ptr = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptr, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %33, align 4
  %35 = load ptr, ptr %ptr, align 4
  %td = getelementptr inbounds %struct.ci_hw_qh, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %td, align 4
  %or64 = or i32 %37, 16777216
  store i32 %or64, ptr %td, align 4
  %38 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp67.not = icmp eq i8 %39, 0
  br i1 %cmp67.not, label %if.end15.cleanup.sink.split_crit_edge, label %land.lhs.true69

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true69:                                  ; preds = %if.end15
  %40 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp72 = icmp eq i8 %41, 0
  br i1 %cmp72, label %if.end80, label %land.lhs.true69.if.then83_crit_edge

land.lhs.true69.if.then83_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

if.end80:                                         ; preds = %land.lhs.true69
  %ci78 = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 7
  %42 = ptrtoint ptr %ci78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ci78, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.36) #12
  %46 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %46)
  %.pr = load i8, ptr %num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool82.not = icmp eq i8 %.pr, 0
  br i1 %tobool82.not, label %if.end80.cleanup.sink.split_crit_edge, label %if.end80.if.then83_crit_edge

if.end80.if.then83_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

if.end80.cleanup.sink.split_crit_edge:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then83:                                        ; preds = %if.end80.if.then83_crit_edge, %land.lhs.true69.if.then83_crit_edge
  %retval1.0147 = phi i32 [ -22, %if.end80.if.then83_crit_edge ], [ 0, %land.lhs.true69.if.then83_crit_edge ]
  %47 = phi i8 [ %.pr, %if.end80.if.then83_crit_edge ], [ %39, %land.lhs.true69.if.then83_crit_edge ]
  %ci84 = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 7
  %48 = ptrtoint ptr %ci84 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ci84, align 4
  %conv86 = zext i8 %47 to i32
  %50 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dir, align 4
  %52 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %type, align 2
  %add.i139 = add nuw nsw i32 %conv86, 21
  %arrayidx.i.i = getelementptr %struct.ci_hdrc, ptr %49, i32 0, i32 2, i32 6, i32 %add.i139
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %imx28_write_fix.i.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %49, i32 0, i32 41
  %57 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then83.cleanup.sink.split_crit_edge

if.then83.cleanup.sink.split_crit_edge:           ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else.i.i.i:                                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  %conv90 = zext i8 %53 to i32
  %59 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %51)
  %cmp.i140 = icmp eq i8 %51, 1
  %mask.0.i = select i1 %cmp.i140, i32 13434880, i32 205
  %neg.i.i = xor i32 %mask.0.i, -1
  %and.i.i = and i32 %59, %neg.i.i
  %shl.i = shl nuw nsw i32 %conv90, 18
  %or4.i = or i32 %shl.i, 12582912
  %shl6.i = shl nuw nsw i32 %conv90, 2
  %or11.i = or i32 %shl6.i, 192
  %data.0.i = select i1 %cmp.i140, i32 %or4.i, i32 %or11.i
  %and2.i.i = and i32 %data.0.i, %mask.0.i
  %or.i.i = or i32 %and2.i.i, %and.i.i
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %62) #9, !srcloc !111
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.i.i.i, %if.then83.cleanup.sink.split_crit_edge, %if.end80.cleanup.sink.split_crit_edge, %if.end15.cleanup.sink.split_crit_edge, %do.end13
  %retval.0.ph = phi i32 [ -16, %do.end13 ], [ -22, %if.end80.cleanup.sink.split_crit_edge ], [ %retval1.0147, %if.then83.cleanup.sink.split_crit_edge ], [ %retval1.0147, %if.else.i.i.i ], [ 0, %if.end15.cleanup.sink.split_crit_edge ]
  %63 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_disable(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ep, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %cmp3 = icmp eq ptr %1, null
  br i1 %cmp3, label %if.else.cleanup_crit_edge, label %do.body6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body6:                                         ; preds = %if.else
  %lock = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %ci = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 7
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci, align 4
  %speed = getelementptr inbounds %struct.ci_hdrc, ptr %5, i32 0, i32 18, i32 5
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp eq i32 %7, 0
  br i1 %cmp12, label %do.body6.cleanup.sink.split_crit_edge, label %if.end16

do.body6.cleanup.sink.split_crit_edge:            ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end16:                                         ; preds = %do.body6
  %dir = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 1
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dir, align 4
  %num = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 2
  %type = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 3
  br label %do.body18

do.body18:                                        ; preds = %do.cond37.do.body18_crit_edge, %if.end16
  %retval1.0 = phi i32 [ 0, %if.end16 ], [ %or, %do.cond37.do.body18_crit_edge ]
  %call19 = tail call fastcc i32 @_ep_nuke(ptr noundef nonnull %ep)
  %or = or i32 %call19, %retval1.0
  %10 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci, align 4
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num, align 1
  %conv21 = zext i8 %13 to i32
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dir, align 4
  %add.i = add nuw nsw i32 %conv21, 21
  %arrayidx.i.i = getelementptr %struct.ci_hdrc, ptr %11, i32 0, i32 2, i32 6, i32 %add.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %imx28_write_fix.i.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %11, i32 0, i32 41
  %19 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %do.body18.hw_ep_disable.exit_crit_edge

do.body18.hw_ep_disable.exit_crit_edge:           ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_ep_disable.exit

if.else.i.i.i:                                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.i = icmp eq i8 %15, 1
  %neg.i.i = select i1 %cmp.i, i32 -8388609, i32 -129
  %and.i.i = and i32 %21, %neg.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %24) #9, !srcloc !111
  br label %hw_ep_disable.exit

hw_ep_disable.exit:                               ; preds = %if.else.i.i.i, %do.body18.hw_ep_disable.exit_crit_edge
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp27 = icmp eq i8 %26, 0
  br i1 %cmp27, label %if.then29, label %hw_ep_disable.exit.do.cond37_crit_edge

hw_ep_disable.exit.do.cond37_crit_edge:           ; preds = %hw_ep_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond37

if.then29:                                        ; preds = %hw_ep_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp32 = icmp ne i8 %28, 1
  %conv34 = zext i1 %cmp32 to i8
  %29 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv34, ptr %dir, align 4
  br label %do.cond37

do.cond37:                                        ; preds = %if.then29, %hw_ep_disable.exit.do.cond37_crit_edge
  %30 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dir, align 4
  %cmp40.not = icmp eq i8 %31, %9
  br i1 %cmp40.not, label %do.end42, label %do.cond37.do.body18_crit_edge

do.cond37.do.body18_crit_edge:                    ; preds = %do.cond37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18

do.end42:                                         ; preds = %do.cond37
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %desc, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end42, %do.body6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %or, %do.end42 ], [ 0, %do.body6.cleanup.sink.split_crit_edge ]
  %33 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ep_alloc_request(ptr noundef readnone %ep, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ep, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !112

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end
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

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 72) #13
  %cond = icmp eq ptr %call7.i.i, null
  br i1 %cond, label %kzalloc.exit.cleanup_crit_edge, label %if.then2

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %queue = getelementptr inbounds %struct.ci_hw_req, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.ci_hw_req, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  %tds = getelementptr inbounds %struct.ci_hw_req, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %tds to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %tds, ptr %tds, align 8
  %prev.i9 = getelementptr inbounds %struct.ci_hw_req, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tds, ptr %prev.i9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %kzalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.then2 ], [ null, %kzalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep_free_request(ptr noundef readonly %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ep, null
  %cmp4 = icmp eq ptr %req, null
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %queue = getelementptr inbounds %struct.ci_hw_req, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %do.body8, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %ci = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 7
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.38) #12
  br label %cleanup

do.body8:                                         ; preds = %if.else
  %lock = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 8
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %tds = getelementptr inbounds %struct.ci_hw_req, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %tds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tds, align 4
  %cmp26.not55 = icmp eq ptr %9, %tds
  br i1 %cmp26.not55, label %do.body8.for.end_crit_edge, label %for.body.lr.ph

do.body8.for.end_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body8
  %td_pool = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %for.body.lr.ph
  %node.056 = phi ptr [ %9, %for.body.lr.ph ], [ %tmpnode.0, %list_del_init.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %node.056 to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmpnode.0 = load ptr, ptr %node.056, align 4
  %11 = ptrtoint ptr %td_pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %td_pool, align 4
  %ptr = getelementptr inbounds %struct.td_node, ptr %node.056, i32 0, i32 2
  %13 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptr, align 4
  %dma = getelementptr inbounds %struct.td_node, ptr %node.056, i32 0, i32 1
  %15 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma, align 4
  tail call void @dma_pool_free(ptr noundef %12, ptr noundef %14, i32 noundef %16) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.056) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.056, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %node.056 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %node.056, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %node.056 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node.056, ptr %node.056, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %node.056, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %node.056, ptr %prev.i3.i, align 4
  %25 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ptr, align 4
  tail call void @kfree(ptr noundef %node.056) #9
  %cmp26.not = icmp eq ptr %tmpnode.0, %tds
  br i1 %cmp26.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %do.body8.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %req) #9
  %26 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %call12) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_queue(ptr noundef %ep, ptr noundef %req, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ep, null
  %cmp2 = icmp eq ptr %req, null
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %cmp5 = icmp eq ptr %1, null
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %do.body6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body6:                                         ; preds = %lor.lhs.false3
  %lock = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %ci = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 7
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci, align 4
  %speed = getelementptr inbounds %struct.ci_hdrc, ptr %5, i32 0, i32 18, i32 5
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp eq i32 %7, 0
  br i1 %cmp12, label %do.body6.cleanup.sink.split_crit_edge, label %if.end16

do.body6.cleanup.sink.split_crit_edge:            ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end16:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call fastcc i32 @_ep_queue(ptr noundef nonnull %ep, ptr noundef nonnull %req)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end16, %do.body6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call17, %if.end16 ], [ 0, %do.body6.cleanup.sink.split_crit_edge ]
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_dequeue(ptr noundef %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ep, null
  %cmp4 = icmp eq ptr %req, null
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false5:                                   ; preds = %entry
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -114, i32 %1)
  %cmp7.not = icmp eq i32 %1, -114
  br i1 %cmp7.not, label %lor.lhs.false8, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %cmp10 = icmp eq ptr %3, null
  br i1 %cmp10, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false11

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %queue = getelementptr inbounds %struct.ci_hw_req, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %5, %queue
  br i1 %cmp.i.not, label %lor.lhs.false11.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false11
  %qh = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 5
  %6 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %qh, align 4
  %cmp.i97.not = icmp eq ptr %7, %qh
  br i1 %cmp.i97.not, label %lor.lhs.false12.cleanup_crit_edge, label %do.body16

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body16:                                        ; preds = %lor.lhs.false12
  %lock = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 8
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock, align 4
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #9
  %ci = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 7
  %10 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci, align 4
  %speed = getelementptr inbounds %struct.ci_hdrc, ptr %11, i32 0, i32 18, i32 5
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp23.not = icmp eq i32 %13, 0
  br i1 %cmp23.not, label %do.body16.if.end30_crit_edge, label %if.then25

do.body16.if.end30_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then25:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %num = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 2
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num, align 1
  %conv27 = zext i8 %15 to i32
  %dir = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 1
  %16 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dir, align 4
  %conv28 = zext i8 %17 to i32
  tail call fastcc void @hw_ep_flush(ptr noundef %11, i32 noundef %conv27, i32 noundef %conv28)
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %do.body16.if.end30_crit_edge
  %tds = getelementptr inbounds %struct.ci_hw_req, ptr %req, i32 0, i32 2
  %18 = ptrtoint ptr %tds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tds, align 4
  %cmp40.not103 = icmp eq ptr %19, %tds
  br i1 %cmp40.not103, label %if.end30.for.end_crit_edge, label %for.body.lr.ph

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end30
  %td_pool = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %node.0104 = phi ptr [ %19, %for.body.lr.ph ], [ %tmpnode.0, %list_del.exit.for.body_crit_edge ]
  %20 = ptrtoint ptr %node.0104 to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmpnode.0 = load ptr, ptr %node.0104, align 4
  %21 = ptrtoint ptr %td_pool to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %td_pool, align 4
  %ptr = getelementptr inbounds %struct.td_node, ptr %node.0104, i32 0, i32 2
  %23 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptr, align 4
  %dma = getelementptr inbounds %struct.td_node, ptr %node.0104, i32 0, i32 1
  %25 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma, align 4
  tail call void @dma_pool_free(ptr noundef %22, ptr noundef %24, i32 noundef %26) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.0104) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.0104, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %node.0104 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %node.0104, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %33 = ptrtoint ptr %node.0104 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %node.0104, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.0104, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %node.0104) #9
  %cmp40.not = icmp eq ptr %tmpnode.0, %tds
  br i1 %cmp40.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end30.for.end_crit_edge
  %call.i.i99 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i99, label %if.end.i.i102, label %for.end.list_del_init.exit_crit_edge

for.end.list_del_init.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i102:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i100 = getelementptr inbounds %struct.ci_hw_req, ptr %req, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i.i100 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i100, align 4
  %37 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %queue, align 4
  %prev1.i.i.i101 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i101, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i102, %for.end.list_del_init.exit_crit_edge
  %41 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.ci_hw_req, ptr %req, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %queue, ptr %prev.i3.i, align 4
  %43 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ci, align 4
  %gadget50 = getelementptr inbounds %struct.ci_hdrc, ptr %44, i32 0, i32 18
  %dir51 = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 1
  %45 = ptrtoint ptr %dir51 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dir51, align 4
  %conv52 = zext i8 %46 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %gadget50, ptr noundef nonnull %req, i32 noundef %conv52) #9
  %47 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -104, ptr %status, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 7
  %48 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %complete, align 4
  %cmp55.not = icmp eq ptr %49, null
  br i1 %cmp55.not, label %list_del_init.exit.if.end62_crit_edge, label %if.then57

list_del_init.exit.if.end62_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then57:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %51) #9
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %ep, ptr noundef nonnull %req) #9
  %52 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_lock(ptr noundef %53) #9
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %list_del_init.exit.if.end62_crit_edge
  %54 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %55, i32 noundef %call20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_set_halt(ptr noundef %ep, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_ep_set_halt(ptr noundef %ep, i32 noundef %value, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_set_wedge(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ep, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %do.body3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %wedge = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 6
  %4 = ptrtoint ptr %wedge to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %wedge, align 4
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call6) #9
  %call10 = tail call i32 @usb_ep_set_halt(ptr noundef nonnull %ep) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.body3 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep_fifo_flush(ptr noundef readonly %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ep, null
  br i1 %cmp, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 84)
  %0 = load ptr, ptr inttoptr (i32 84 to ptr), align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  call void @__asan_load1_noabort(i32 44)
  %3 = load i8, ptr inttoptr (i32 44 to ptr), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  %cond.i = select i1 %cmp.i, i8 -128, i8 0
  call void @__asan_load1_noabort(i32 45)
  %4 = load i8, ptr inttoptr (i32 45 to ptr), align 1
  %or.i = or i8 %cond.i, %4
  %conv = zext i8 %or.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.40, i32 noundef %conv) #12
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 8
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  %ci12 = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 7
  %7 = ptrtoint ptr %ci12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci12, align 4
  %speed = getelementptr inbounds %struct.ci_hdrc, ptr %8, i32 0, i32 18, i32 5
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13 = icmp eq i32 %10, 0
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call7) #9
  br label %cleanup

if.end17:                                         ; preds = %do.body2
  %num = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 2
  %13 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num, align 1
  %conv19 = zext i8 %14 to i32
  %dir = getelementptr inbounds %struct.ci_hw_ep, ptr %ep, i32 0, i32 1
  %15 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp.i.i = icmp eq i8 %16, 1
  %cond.i.i = select i1 %cmp.i.i, i32 16, i32 0
  %add.i.i = add nuw nsw i32 %cond.i.i, %conv19
  %arrayidx.i1.i = getelementptr %struct.ci_hdrc, ptr %8, i32 0, i32 2, i32 6, i32 19
  %shl.i = shl nuw i32 1, %add.i.i
  %imx28_write_fix.i.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %8, i32 0, i32 41
  %arrayidx5.i.i = getelementptr %struct.ci_hdrc, ptr %8, i32 0, i32 2, i32 6, i32 18
  %17 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond10.i.do.body.i_crit_edge, %if.end17
  %18 = ptrtoint ptr %imx28_write_fix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %imx28_write_fix.i.i.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %do.body.i.hw_write.exit.i_crit_edge

do.body.i.hw_write.exit.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_write.exit.i

if.else.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx5.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #9, !srcloc !111
  br label %hw_write.exit.i

hw_write.exit.i:                                  ; preds = %if.else.i.i.i, %do.body.i.hw_write.exit.i_crit_edge
  %22 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx5.i.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !107
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i3.i = and i32 %25, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not4.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not4.i, label %hw_write.exit.i.do.cond10.i_crit_edge, label %hw_write.exit.i.do.end.i_crit_edge

hw_write.exit.i.do.end.i_crit_edge:               ; preds = %hw_write.exit.i
  br label %do.end.i

hw_write.exit.i.do.cond10.i_crit_edge:            ; preds = %hw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond10.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %hw_write.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !124
  %26 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx5.i.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !107
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i.i = and i32 %29, %shl.i
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.end.i.do.cond10.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.do.cond10.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond10.i

do.cond10.i:                                      ; preds = %do.end.i.do.cond10.i_crit_edge, %hw_write.exit.i.do.cond10.i_crit_edge
  %30 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i1.i, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !107
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and.i2.i = and i32 %33, %shl.i
  %tobool13.not.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool13.not.i, label %hw_ep_flush.exit, label %do.cond10.i.do.body.i_crit_edge

do.cond10.i.do.body.i_crit_edge:                  ; preds = %do.cond10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

hw_ep_flush.exit:                                 ; preds = %do.cond10.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %call7) #9
  br label %cleanup

cleanup:                                          ; preds = %hw_ep_flush.exit, %if.then15, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96}
!llvm.named.register.sp = !{!97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/chipidea/udc.c", i32 2188, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/chipidea/udc.c", i32 900, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @isr_reset_handler._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @isr_reset_handler._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/chipidea/udc.c", i32 1331, i32 7}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @isr_tr_complete_handler._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @isr_tr_complete_handler._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/usb/chipidea/trace.h", i32 77, i32 1}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/usb/chipidea/udc.c", i32 1080, i32 6}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/chipidea/udc.c", i32 945, i32 4}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @_ep_queue._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @_ep_queue._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/chipidea/udc.c", i32 952, i32 3}
!33 = !{ptr @_ep_queue._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @_ep_queue._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/chipidea/udc.c", i32 958, i32 3}
!37 = !{ptr @_ep_queue._entry.17, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @_ep_queue._entry_ptr.19, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/chipidea/udc.c", i32 515, i32 3}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @prepare_td_for_sg._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @prepare_td_for_sg._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/chipidea/udc.c", i32 521, i32 4}
!46 = !{ptr @prepare_td_for_sg._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @prepare_td_for_sg._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/usb/chipidea/trace.h", i32 72, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/chipidea/udc.c", i32 1299, i32 4}
!53 = !{ptr @isr_setup_packet_handler._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @isr_setup_packet_handler._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/chipidea/udc.c", i32 1129, i32 2}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @otg_a_alt_hnp_support._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @otg_a_alt_hnp_support._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/chipidea/udc.c", i32 2084, i32 32}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/chipidea/udc.c", i32 2090, i32 32}
!64 = !{ptr @usb_gadget_ops, !65, !"usb_gadget_ops", i1 false, i1 false}
!65 = !{!"../drivers/usb/chipidea/udc.c", i32 1809, i32 36}
!66 = !{ptr @ctrl_endpt_out_desc, !67, !"ctrl_endpt_out_desc", i1 false, i1 false}
!67 = !{!"../drivers/usb/chipidea/udc.c", i32 33, i32 1}
!68 = !{ptr @ctrl_endpt_in_desc, !69, !"ctrl_endpt_in_desc", i1 false, i1 false}
!69 = !{!"../drivers/usb/chipidea/udc.c", i32 43, i32 1}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/chipidea/udc.c", i32 1829, i32 46}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/chipidea/udc.c", i32 1830, i32 19}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/chipidea/udc.c", i32 1830, i32 26}
!76 = !{ptr @usb_ep_ops, !77, !"usb_ep_ops", i1 false, i1 false}
!77 = !{!"../drivers/usb/chipidea/udc.c", i32 1639, i32 32}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/chipidea/udc.c", i32 1369, i32 3}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ep_enable._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @ep_enable._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/chipidea/udc.c", i32 1400, i32 3}
!85 = !{ptr @ep_enable._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ep_enable._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/chipidea/udc.c", i32 1492, i32 3}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ep_free_request._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ep_free_request._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/chipidea/udc.c", i32 1620, i32 3}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ep_fifo_flush._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @ep_fifo_flush._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{!"sp"}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 6257521}
!108 = !{i64 2153797870}
!109 = !{i8 0, i8 2}
!110 = !{i64 2153799225}
!111 = !{i64 6257103}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 2148808341, i64 2148808346, i64 2148808359, i64 2148808403, i64 2148808437, i64 2148808458}
!114 = !{i64 2155475599}
!115 = !{i64 2155475820}
!116 = !{i64 2149309497}
!117 = !{i64 2149310533}
!118 = !{i64 2155496544}
!119 = !{i64 2155497051}
!120 = !{i64 2155496893}
!121 = !{i64 2155519131}
!122 = !{i64 2155522140}
!123 = !{i64 2155495123}
!124 = !{i64 2155494965}
!125 = !{i64 2155458805}
!126 = !{i64 2155459024}
