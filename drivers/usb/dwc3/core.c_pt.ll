; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc3/core.c_pt.bc'
source_filename = "../drivers/usb/dwc3/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.dwc3_event_buffer = type { ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }

@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_dwc3__332_2074_dwc3_driver_init6 = internal global ptr @dwc3_driver_init, section ".initcall6.init", align 4
@dwc3_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dwc3_probe, ptr @dwc3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_dwc3_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dwc3_driver_exit = internal global ptr @dwc3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias333 = internal constant [25 x i8] c"dwc3.alias=platform:dwc3\00", section ".modinfo", align 1
@__UNIQUE_ID_author334 = internal constant [40 x i8] c"dwc3.author=Felipe Balbi <balbi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file335 = internal constant [32 x i8] c"dwc3.file=drivers/usb/dwc3/dwc3\00", section ".modinfo", align 1
@__UNIQUE_ID_license336 = internal constant [20 x i8] c"dwc3.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description337 = internal constant [55 x i8] c"dwc3.description=DesignWare USB3 DRD Controller Driver\00", section ".modinfo", align 1
@__tracepoint_dwc3_readl = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/dwc3/trace.h\00", [39 x i8] zeroinitializer }, align 32
@trace_dwc3_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_dwc3_writel = external dso_local global %struct.tracepoint, align 4
@trace_dwc3_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc3\00", [27 x i8] zeroinitializer }, align 32
@of_dwc3_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"synopsys,dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@dwc3_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr @dwc3_complete, ptr @dwc3_suspend, ptr @dwc3_resume, ptr @dwc3_suspend, ptr @dwc3_resume, ptr @dwc3_suspend, ptr @dwc3_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_runtime_suspend, ptr @dwc3_runtime_resume, ptr @dwc3_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@dwc3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1571, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"missing memory resource\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dwc3_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/usb/dwc3/core.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc3_probe._entry_ptr = internal global ptr @dwc3_probe._entry, section ".printk_index", align 4
@dwc3_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1631, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"this is not a DesignWare USB3 DRD Core\0A\00", [56 x i8] zeroinitializer }, align 32
@dwc3_probe._entry_ptr.11 = internal global ptr @dwc3_probe._entry.9, section ".printk_index", align 4
@dwc3_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dwc->lock\00", [21 x i8] zeroinitializer }, align 32
@dwc3_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dwc->mutex\00", [20 x i8] zeroinitializer }, align 32
@dwc3_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 1654, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate event buffers\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc3_probe._entry_ptr.17 = internal global ptr @dwc3_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialize core\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"linux,sysdev_is_parent\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb-psy-name\00", [19 x i8] zeroinitializer }, align 32
@dwc3_get_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 1341, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't get usb power supply\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwc3_get_properties\00", [44 x i8] zeroinitializer }, align 32
@dwc3_get_properties._entry_ptr = internal global ptr @dwc3_get_properties._entry, section ".printk_index", align 4
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snps,has-lpm-erratum\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snps,lpm-nyet-threshold\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snps,is-utmi-l1-suspend\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snps,hird-threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snps,dis-start-transfer-quirk\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snps,usb3_lpm_capable\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snps,usb2-lpm-disable\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snps,usb2-gadget-lpm-disable\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snps,rx-thr-num-pkt-prd\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snps,rx-max-burst-prd\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snps,tx-thr-num-pkt-prd\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snps,tx-max-burst-prd\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx-fifo-resize\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx-fifo-max-num\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snps,disable_scramble_quirk\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snps,u2exit_lfps_quirk\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snps,u2ss_inp3_quirk\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snps,req_p1p2p3_quirk\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snps,del_p1p2p3_quirk\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snps,del_phy_power_chg_quirk\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snps,lfps_filter_quirk\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snps,rx_detect_poll_quirk\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snps,dis_u3_susphy_quirk\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snps,dis_u2_susphy_quirk\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snps,dis_enblslpm_quirk\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snps,dis-u1-entry-quirk\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snps,dis-u2-entry-quirk\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snps,dis_rxdet_inp3_quirk\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snps,dis-u2-freeclk-exists-quirk\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snps,dis-del-phy-power-chg-quirk\00", [63 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"snps,dis-tx-ipgap-linecheck-quirk\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snps,parkmode-disable-ss-quirk\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snps,tx_de_emphasis_quirk\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snps,tx_de_emphasis\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snps,hsphy_interface\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"snps,quirk-frame-length-adjustment\00", [61 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snps,ref-clock-period-ns\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snps,dis_metastability_quirk\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snps,dis-split-quirk\00", [43 x i8] zeroinitializer }, align 32
@dwc3_alloc_event_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.6, i32 431, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't allocate event buffer\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwc3_alloc_event_buffers\00", [39 x i8] zeroinitializer }, align 32
@dwc3_alloc_event_buffers._entry_ptr = internal global ptr @dwc3_alloc_event_buffers._entry, section ".printk_index", align 4
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb-role-switch\00", [16 x i8] zeroinitializer }, align 32
@dwc3_get_dr_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.6, i32 98, ptr @.str.67, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Configuration mismatch. dr_mode forced to %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwc3_get_dr_mode\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dwc3_get_dr_mode._entry_ptr = internal global ptr @dwc3_get_dr_mode._entry, section ".printk_index", align 4
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gadget\00", [25 x i8] zeroinitializer }, align 32
@dwc3_core_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.6, i32 1051, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to setup event buffers\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dwc3_core_init\00", [17 x i8] zeroinitializer }, align 32
@dwc3_core_init._entry_ptr = internal global ptr @dwc3_core_init._entry, section ".printk_index", align 4
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utmi\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ulpi\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb-phy\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no usb2 phy configured\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no usb3 phy configured\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb2-phy\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb3-phy\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dwc3_core_setup_global_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.6, i32 831, ptr @.str.81, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Running with FPGA optimizations\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dwc3_core_setup_global_control\00", [33 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dwc3_core_setup_global_control._entry_ptr = internal global ptr @dwc3_core_setup_global_control._entry, section ".printk_index", align 4
@dwc3_core_setup_global_control.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.82 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"disable_scramble cannot be used on non-FPGA builds\0A\00", [44 x i8] zeroinitializer }, align 32
@dwc3_setup_scratch_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.6, i32 513, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to map scratch buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dwc3_setup_scratch_buffers\00", [37 x i8] zeroinitializer }, align 32
@dwc3_setup_scratch_buffers._entry_ptr = internal global ptr @dwc3_setup_scratch_buffers._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snps,incr-burst-type-adjustment\00", [32 x i8] zeroinitializer }, align 32
@dwc3_set_incr_burst_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.6, i32 890, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error to get memory\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwc3_set_incr_burst_type\00", [39 x i8] zeroinitializer }, align 32
@dwc3_set_incr_burst_type._entry_ptr = internal global ptr @dwc3_set_incr_burst_type._entry, section ".printk_index", align 4
@dwc3_set_incr_burst_type._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.6, i32 899, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error to get property\0A\00", [41 x i8] zeroinitializer }, align 32
@dwc3_set_incr_burst_type._entry_ptr.92 = internal global ptr @dwc3_set_incr_burst_type._entry.90, section ".printk_index", align 4
@dwc3_set_incr_burst_type._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.6, i32 948, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid property\0A\00", [46 x i8] zeroinitializer }, align 32
@dwc3_set_incr_burst_type._entry_ptr.95 = internal global ptr @dwc3_set_incr_burst_type._entry.93, section ".printk_index", align 4
@dwc3_check_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.6, i32 1460, ptr @.str.67, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Interrupt moderation not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwc3_check_params\00", [46 x i8] zeroinitializer }, align 32
@dwc3_check_params._entry_ptr = internal global ptr @dwc3_check_params._entry, section ".printk_index", align 4
@dwc3_check_params._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.6, i32 1482, ptr @.str.67, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"UDC doesn't support Gen 1\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc3_check_params._entry_ptr.100 = internal global ptr @dwc3_check_params._entry.98, section ".printk_index", align 4
@dwc3_check_params._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.97, ptr @.str.6, i32 1489, ptr @.str.67, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UDC doesn't support SSP\0A\00", [39 x i8] zeroinitializer }, align 32
@dwc3_check_params._entry_ptr.103 = internal global ptr @dwc3_check_params._entry.101, section ".printk_index", align 4
@dwc3_check_params._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.97, ptr @.str.6, i32 1493, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid maximum_speed parameter %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dwc3_check_params._entry_ptr.106 = internal global ptr @dwc3_check_params._entry.104, section ".printk_index", align 4
@dwc3_check_params._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.97, ptr @.str.6, i32 1527, ptr @.str.67, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UDC only supports Gen 1\0A\00", [39 x i8] zeroinitializer }, align 32
@dwc3_check_params._entry_ptr.109 = internal global ptr @dwc3_check_params._entry.107, section ".printk_index", align 4
@dwc3_check_params._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.97, ptr @.str.6, i32 1532, ptr @.str.67, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"UDC only supports single lane\0A\00", [33 x i8] zeroinitializer }, align 32
@dwc3_check_params._entry_ptr.112 = internal global ptr @dwc3_check_params._entry.110, section ".printk_index", align 4
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize gadget\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialize host\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc3_core_init_mode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&dwc->drd_work)\00", [62 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to initialize dual-role\0A\00", [32 x i8] zeroinitializer }, align 32
@dwc3_core_init_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.6, i32 1264, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported mode of operation %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwc3_core_init_mode\00", [44 x i8] zeroinitializer }, align 32
@dwc3_core_init_mode._entry_ptr = internal global ptr @dwc3_core_init_mode._entry, section ".printk_index", align 4
@__dwc3_set_mode._entry = internal constant %struct.pi_entry { ptr @.str.114, ptr @.str.119, ptr @.str.6, i32 191, ptr @.str.7, ptr @.str.8 }, align 1
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__dwc3_set_mode\00", [16 x i8] zeroinitializer }, align 32
@__dwc3_set_mode._entry_ptr = internal global ptr @__dwc3_set_mode._entry, section ".printk_index", align 4
@__dwc3_set_mode._entry.120 = internal constant %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.6, i32 216, ptr @.str.7, ptr @.str.8 }, align 1
@.str.121 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize peripheral\0A\00", [63 x i8] zeroinitializer }, align 32
@__dwc3_set_mode._entry_ptr.122 = internal global ptr @__dwc3_set_mode._entry.120, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 13105, i64 21811]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 16, i64 13105, i64 13106, i64 21811]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967290]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967290]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 4294967258, i64 4294967277]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 4294967258, i64 4294967277]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.134 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 32, i64 13105, i64 13106, i64 21811]
@__sancov_gen_cov_switch_values.137 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 13105, i64 13106]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 13105, i64 13106]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.149 = private unnamed_addr constant [12 x i8] c"dwc3_driver\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2063, i32 31 }
@___asan_gen_.156 = private unnamed_addr constant [28 x i8] c"../drivers/usb/dwc3/trace.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 41, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 108, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2067, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"of_dwc3_match\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2040, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"dwc3_dev_pm_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2032, i32 32 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1571, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1631, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1639, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1640, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1654, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1669, i32 27 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1331, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1337, i32 41 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1341, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1345, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1346, i32 31 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1349, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1350, i32 31 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1353, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1355, i32 5 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1357, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1359, i32 5 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1360, i32 31 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1362, i32 31 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1364, i32 31 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1366, i32 31 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1369, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1371, i32 32 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1375, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1377, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1379, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1381, i32 5 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1383, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1385, i32 5 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1387, i32 5 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1389, i32 5 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1391, i32 5 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1393, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1395, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1397, i32 5 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1399, i32 5 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1401, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1403, i32 5 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1405, i32 5 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1407, i32 5 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1409, i32 5 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1412, i32 5 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1413, i32 31 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1415, i32 35 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1417, i32 32 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1419, i32 32 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1423, i32 5 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1426, i32 5 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 431, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 90, i32 45 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 96, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1051, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 680, i32 36 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 684, i32 36 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1179, i32 52 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1191, i32 35 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1200, i32 35 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1204, i32 44 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1214, i32 44 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 831, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 835, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 513, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 326, i32 6 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 884, i32 41 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 890, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 899, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 948, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1460, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1482, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1489, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1492, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1527, i32 5 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1532, i32 5 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1243, i32 35 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1255, i32 35 }
@___asan_gen_.506 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1258, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1261, i32 35 }
@___asan_gen_.515 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1264, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 191, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.528 = private constant [27 x i8] c"../drivers/usb/dwc3/core.c\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 216, i32 4 }
@llvm.compiler.used = appending global [158 x ptr] [ptr @__UNIQUE_ID_alias333, ptr @__UNIQUE_ID_author334, ptr @__UNIQUE_ID_description337, ptr @__UNIQUE_ID_file335, ptr @__UNIQUE_ID_license336, ptr @__dwc3_set_mode._entry, ptr @__dwc3_set_mode._entry.120, ptr @__dwc3_set_mode._entry_ptr, ptr @__dwc3_set_mode._entry_ptr.122, ptr @__exitcall_dwc3_driver_exit, ptr @__initcall__kmod_dwc3__332_2074_dwc3_driver_init6, ptr @dwc3_alloc_event_buffers._entry, ptr @dwc3_alloc_event_buffers._entry_ptr, ptr @dwc3_check_params._entry, ptr @dwc3_check_params._entry.101, ptr @dwc3_check_params._entry.104, ptr @dwc3_check_params._entry.107, ptr @dwc3_check_params._entry.110, ptr @dwc3_check_params._entry.98, ptr @dwc3_check_params._entry_ptr, ptr @dwc3_check_params._entry_ptr.100, ptr @dwc3_check_params._entry_ptr.103, ptr @dwc3_check_params._entry_ptr.106, ptr @dwc3_check_params._entry_ptr.109, ptr @dwc3_check_params._entry_ptr.112, ptr @dwc3_core_init._entry, ptr @dwc3_core_init._entry_ptr, ptr @dwc3_core_init_mode._entry, ptr @dwc3_core_init_mode._entry_ptr, ptr @dwc3_core_setup_global_control._entry, ptr @dwc3_core_setup_global_control._entry_ptr, ptr @dwc3_driver_exit, ptr @dwc3_get_dr_mode._entry, ptr @dwc3_get_dr_mode._entry_ptr, ptr @dwc3_get_properties._entry, ptr @dwc3_get_properties._entry_ptr, ptr @dwc3_probe._entry, ptr @dwc3_probe._entry.15, ptr @dwc3_probe._entry.9, ptr @dwc3_probe._entry_ptr, ptr @dwc3_probe._entry_ptr.11, ptr @dwc3_probe._entry_ptr.17, ptr @dwc3_set_incr_burst_type._entry, ptr @dwc3_set_incr_burst_type._entry.90, ptr @dwc3_set_incr_burst_type._entry.93, ptr @dwc3_set_incr_burst_type._entry_ptr, ptr @dwc3_set_incr_burst_type._entry_ptr.92, ptr @dwc3_set_incr_burst_type._entry_ptr.95, ptr @dwc3_setup_scratch_buffers._entry, ptr @dwc3_setup_scratch_buffers._entry_ptr, ptr @dwc3_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @of_dwc3_match, ptr @dwc3_dev_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @dwc3_probe.__key, ptr @.str.12, ptr @dwc3_probe.__key.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @dwc3_core_init_mode.__key, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dwc3_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_get_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_alloc_event_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_get_dr_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_core_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_core_setup_global_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_setup_scratch_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_set_incr_burst_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_set_incr_burst_type._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_set_incr_burst_type._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_check_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_check_params._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_check_params._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_check_params._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_check_params._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_check_params._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_core_init_mode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_core_init_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_set_prtcap(ptr nocapture noundef %dwc, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !266
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 49424, i32 noundef %3) #12
  %and = and i32 %3, -12289
  %shl = shl i32 %mode, 12
  %or = or i32 %and, %shl
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %add.ptr1.i8 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8, i32 %6) #12, !srcloc !269
  %add.ptr2.i = getelementptr i8, ptr %5, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 49424, i32 noundef %or) #12
  %current_dr_role = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 33
  %7 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mode, ptr %current_dr_role, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_writel(ptr noundef %base, i32 noundef %offset, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %add.ptr = getelementptr i8, ptr %base, i32 %offset
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -49408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %0) #12, !srcloc !269
  %add.ptr2 = getelementptr i8, ptr %base, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2, i32 noundef %offset, i32 noundef %value)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_set_mode(ptr noundef %dwc, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_mode = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 32
  %0 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %desired_dr_role = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 34
  %2 = ptrtoint ptr %desired_dr_role to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mode, ptr %desired_dr_role, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %3 = load ptr, ptr @system_freezable_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %dwc) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc3_core_fifo_space(ptr nocapture noundef readonly %dep, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dwc1 = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 7
  %0 = ptrtoint ptr %dwc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc1, align 4
  %regs = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %number = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 12
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number, align 2
  %6 = and i8 %5, 31
  %and = zext i8 %6 to i32
  %conv2 = zext i8 %type to i32
  %shl = shl nuw nsw i32 %conv2, 5
  %and3 = and i32 %shl, 480
  %or = or i32 %and3, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %add.ptr1.i = getelementptr i8, ptr %3, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %7) #12, !srcloc !269
  %add.ptr2.i = getelementptr i8, ptr %3, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 49504, i32 noundef %or) #12
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr1.i9 = getelementptr i8, ptr %9, i32 96
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i9) #12, !srcloc !266
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i = getelementptr i8, ptr %9, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 49504, i32 noundef %11) #12
  %shr = lshr i32 %11, 16
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc3_event_buffers_setup(ptr nocapture noundef readonly %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ev_buf = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 16
  %0 = ptrtoint ptr %ev_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev_buf, align 4
  %lpos = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %lpos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %lpos, align 4
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %dma = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %add.ptr1.i = getelementptr i8, ptr %4, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %7) #12, !srcloc !269
  %add.ptr2.i = getelementptr i8, ptr %4, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 50176, i32 noundef %6) #12
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i15 = getelementptr i8, ptr %9, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i15, i32 0) #12, !srcloc !269
  %add.ptr2.i16 = getelementptr i8, ptr %9, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i16, i32 noundef 50180, i32 noundef 0) #12
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %length = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  %and5 = and i32 %13, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %and5) #12
  %add.ptr1.i18 = getelementptr i8, ptr %11, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i18, i32 %14) #12, !srcloc !269
  %add.ptr2.i19 = getelementptr i8, ptr %11, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i19, i32 noundef 50184, i32 noundef %and5) #12
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i21 = getelementptr i8, ptr %16, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i21, i32 0) #12, !srcloc !269
  %add.ptr2.i22 = getelementptr i8, ptr %16, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i22, i32 noundef 50188, i32 noundef 0) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc3_event_buffers_cleanup(ptr nocapture noundef readonly %dwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ev_buf = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 16
  %0 = ptrtoint ptr %ev_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev_buf, align 4
  %lpos = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %lpos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %lpos, align 4
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i = getelementptr i8, ptr %4, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #12, !srcloc !269
  %add.ptr2.i = getelementptr i8, ptr %4, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 50176, i32 noundef 0) #12
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i9 = getelementptr i8, ptr %6, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i9, i32 0) #12, !srcloc !269
  %add.ptr2.i10 = getelementptr i8, ptr %6, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i10, i32 noundef 50180, i32 noundef 0) #12
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i12 = getelementptr i8, ptr %8, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i12, i32 128) #12, !srcloc !269
  %add.ptr2.i13 = getelementptr i8, ptr %8, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i13, i32 noundef 50184, i32 noundef -2147483648) #12
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i15 = getelementptr i8, ptr %10, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i15, i32 0) #12, !srcloc !269
  %add.ptr2.i16 = getelementptr i8, ptr %10, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i16, i32 noundef 50188, i32 noundef 0) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dwc3_has_imod(ptr nocapture noundef readonly %dwc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ip, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.lor.rhs_crit_edge [
    i32 21811, label %land.lhs.true
    i32 13105, label %land.lhs.true4
  ]

entry.lor.rhs_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %revision = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %3 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429417993, i32 %4)
  %cmp1 = icmp ugt i32 %4, 1429417993
  br i1 %cmp1, label %land.lhs.true.lor.end_crit_edge, label %land.lhs.true.lor.rhs_crit_edge

land.lhs.true.lor.rhs_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs

land.lhs.true.lor.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

land.lhs.true4:                                   ; preds = %entry
  %revision5 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %5 = ptrtoint ptr %revision5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %revision5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825372713, i32 %6)
  %cmp6 = icmp ugt i32 %6, 825372713
  br i1 %cmp6, label %land.lhs.true4.lor.end_crit_edge, label %land.lhs.true4.lor.rhs_crit_edge

land.lhs.true4.lor.rhs_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs

land.lhs.true4.lor.end_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true4.lor.rhs_crit_edge, %land.lhs.true.lor.rhs_crit_edge, %entry.lor.rhs_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %1)
  %cmp8 = icmp eq i32 %1, 13106
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true4.lor.end_crit_edge, %land.lhs.true.lor.end_crit_edge
  %7 = phi i1 [ true, %land.lhs.true4.lor.end_crit_edge ], [ true, %land.lhs.true.lor.end_crit_edge ], [ %cmp8, %lor.rhs ]
  ret i1 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc3_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc3_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_readl(ptr noundef %base, i32 noundef %offset, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), ptr blockaddress(@trace_dwc3_readl, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !270

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !256) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !271

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !256) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !272
  %call42 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !273
  %13 = tail call i32 @llvm.read_register.i32(metadata !256) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !256) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !271

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !256) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !274
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 44, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !275
  %31 = tail call i32 @llvm.read_register.i32(metadata !256) #12
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dwc3_writel(ptr noundef %base, i32 noundef %offset, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), ptr blockaddress(@trace_dwc3_writel, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !270

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !256) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !271

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !256) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !276
  %call42 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !277
  %13 = tail call i32 @llvm.read_register.i32(metadata !256) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !256) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !271

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !256) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !274
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 49, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !275
  %31 = tail call i32 @llvm.read_register.i32(metadata !256) #12
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
declare dso_local i32 @__traceiter_dwc3_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %lpm_nyet_threshold.i = alloca i8, align 1
  %tx_de_emphasis.i = alloca i8, align 1
  %hird_threshold.i = alloca i8, align 1
  %rx_thr_num_pkt_prd.i = alloca i8, align 1
  %rx_max_burst_prd.i = alloca i8, align 1
  %tx_thr_num_pkt_prd.i = alloca i8, align 1
  %tx_max_burst_prd.i = alloca i8, align 1
  %tx_fifo_resize_max_num.i = alloca i8, align 1
  %usb_psy_name.i = alloca ptr, align 4
  %dwc_res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dwc_res) #12
  %0 = getelementptr inbounds %struct.resource, ptr %dwc_res, i32 0, i32 1
  %1 = call ptr @memset(ptr %dwc_res, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 852, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 12
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call3, align 4
  %xhci_resources = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 15
  %5 = ptrtoint ptr %xhci_resources to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %xhci_resources, align 4
  %add = add i32 %4, 32767
  %end = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 15, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %end, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %flags15 = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %9 = ptrtoint ptr %flags15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %flags15, align 4
  %name = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %name18 = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 15, i32 0, i32 2
  %12 = ptrtoint ptr %name18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %name18, align 4
  %13 = call ptr @memcpy(ptr %dwc_res, ptr %call3, i32 32)
  %14 = ptrtoint ptr %dwc_res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dwc_res, align 4
  %add20 = add i32 %15, 49408
  store i32 %add20, ptr %dwc_res, align 4
  %call21 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %dwc_res) #12
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end6
  %regs26 = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 30
  %17 = ptrtoint ptr %regs26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call21, ptr %regs26, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %20 = ptrtoint ptr %dwc_res to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dwc_res, align 4
  %sub.i = add i32 %19, 1
  %add.i = sub i32 %sub.i, %21
  %regs_size = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 31
  %22 = ptrtoint ptr %regs_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %regs_size, align 4
  %23 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lpm_nyet_threshold.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx_de_emphasis.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hird_threshold.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_thr_num_pkt_prd.i) #12
  %25 = ptrtoint ptr %rx_thr_num_pkt_prd.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %rx_thr_num_pkt_prd.i, align 1, !annotation !278
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_max_burst_prd.i) #12
  %26 = ptrtoint ptr %rx_max_burst_prd.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %rx_max_burst_prd.i, align 1, !annotation !278
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx_thr_num_pkt_prd.i) #12
  %27 = ptrtoint ptr %tx_thr_num_pkt_prd.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %tx_thr_num_pkt_prd.i, align 1, !annotation !278
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx_max_burst_prd.i) #12
  %28 = ptrtoint ptr %tx_max_burst_prd.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %tx_max_burst_prd.i, align 1, !annotation !278
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx_fifo_resize_max_num.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usb_psy_name.i) #12
  %29 = ptrtoint ptr %usb_psy_name.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %usb_psy_name.i, align 4, !annotation !278
  %30 = ptrtoint ptr %lpm_nyet_threshold.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 15, ptr %lpm_nyet_threshold.i, align 1
  %31 = ptrtoint ptr %tx_de_emphasis.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %tx_de_emphasis.i, align 1
  %32 = ptrtoint ptr %hird_threshold.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 12, ptr %hird_threshold.i, align 1
  %33 = ptrtoint ptr %tx_fifo_resize_max_num.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 6, ptr %tx_fifo_resize_max_num.i, align 1
  %call.i229 = call i32 @usb_get_maximum_speed(ptr noundef %24) #12
  %maximum_speed.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 50
  %34 = ptrtoint ptr %maximum_speed.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i229, ptr %maximum_speed.i, align 4
  %call2.i = call i32 @usb_get_maximum_ssp_rate(ptr noundef %24) #12
  %max_ssp_rate.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 52
  %35 = ptrtoint ptr %max_ssp_rate.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call2.i, ptr %max_ssp_rate.i, align 4
  %call3.i = call i32 @usb_get_dr_mode(ptr noundef %24) #12
  %dr_mode.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 32
  %36 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call3.i, ptr %dr_mode.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 27
  %37 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node.i, align 8
  %call4.i = call i32 @of_usb_get_phy_mode(ptr noundef %38) #12
  %hsphy_mode.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 37
  %39 = ptrtoint ptr %hsphy_mode.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call4.i, ptr %hsphy_mode.i, align 4
  %call.i.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.19) #12
  %sysdev_is_parent.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 79
  %40 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 6)
  %bf.load.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl.i = select i1 %call.i.i, i48 2199023255552, i48 0
  %bf.clear.i = and i48 %bf.load.i, -2199023255553
  %bf.set.i = or i48 %bf.clear.i, %bf.shl.i
  store i48 %bf.set.i, ptr %sysdev_is_parent.i, align 4
  br i1 %call.i.i, label %if.then.i, label %if.end25.if.end.i_crit_edge

if.end25.if.end.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev2, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end25.if.end.i_crit_edge
  %.sink.in.i = phi ptr [ %parent.i, %if.then.i ], [ %dev2, %if.end25.if.end.i_crit_edge ]
  %43 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  %44 = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 13
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %.sink.i, ptr %44, align 4
  %call12.i = call i32 @device_property_read_string(ptr noundef %24, ptr noundef nonnull @.str.20, ptr noundef nonnull %usb_psy_name.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12.i)
  %cmp.i230 = icmp sgt i32 %call12.i, -1
  br i1 %cmp.i230, label %if.then14.i, label %if.end.i.if.end20.i_crit_edge

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end.i
  %46 = ptrtoint ptr %usb_psy_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_psy_name.i, align 4
  %call15.i = call ptr @power_supply_get_by_name(ptr noundef %47) #12
  %usb_psy.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 40
  %48 = ptrtoint ptr %usb_psy.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call15.i, ptr %usb_psy.i, align 4
  %tobool17.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool17.not.i, label %do.end.i, label %if.then14.i.if.end20.i_crit_edge

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

do.end.i:                                         ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.21) #15
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %if.then14.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  %call.i377.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.23) #12
  %49 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 6)
  %bf.load23.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl25.i = select i1 %call.i377.i, i48 1099511627776, i48 0
  %bf.clear26.i = and i48 %bf.load23.i, -1099511627777
  %bf.set27.i = or i48 %bf.clear26.i, %bf.shl25.i
  store i48 %bf.set27.i, ptr %sysdev_is_parent.i, align 4
  %call.i378.i = call i32 @device_property_read_u8_array(ptr noundef %24, ptr noundef nonnull @.str.24, ptr noundef nonnull %lpm_nyet_threshold.i, i32 noundef 1) #12
  %call.i379.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.25) #12
  %50 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 6)
  %bf.load32.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl34.i = select i1 %call.i379.i, i48 549755813888, i48 0
  %bf.clear35.i = and i48 %bf.load32.i, -549755813889
  %bf.set36.i = or i48 %bf.clear35.i, %bf.shl34.i
  store i48 %bf.set36.i, ptr %sysdev_is_parent.i, align 4
  %call.i380.i = call i32 @device_property_read_u8_array(ptr noundef %24, ptr noundef nonnull @.str.26, ptr noundef nonnull %hird_threshold.i, i32 noundef 1) #12
  %call.i381.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.27) #12
  %51 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 6)
  %bf.load41.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl43.i = select i1 %call.i381.i, i48 4294967296, i48 0
  %bf.clear44.i = and i48 %bf.load41.i, -4294967297
  %bf.set45.i = or i48 %bf.clear44.i, %bf.shl43.i
  store i48 %bf.set45.i, ptr %sysdev_is_parent.i, align 4
  %call.i382.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.28) #12
  %52 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 6)
  %bf.load49.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl51.i = select i1 %call.i382.i, i48 2147483648, i48 0
  %bf.clear52.i = and i48 %bf.load49.i, -2147483649
  %bf.set53.i = or i48 %bf.clear52.i, %bf.shl51.i
  store i48 %bf.set53.i, ptr %sysdev_is_parent.i, align 4
  %call.i383.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.29) #12
  %53 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 6)
  %bf.load57.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl59.i = select i1 %call.i383.i, i48 1073741824, i48 0
  %bf.clear60.i = and i48 %bf.load57.i, -1073741825
  %bf.set61.i = or i48 %bf.clear60.i, %bf.shl59.i
  store i48 %bf.set61.i, ptr %sysdev_is_parent.i, align 4
  %call.i384.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.30) #12
  %54 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 6)
  %bf.load65.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl67.i = select i1 %call.i384.i, i48 536870912, i48 0
  %bf.clear68.i = and i48 %bf.load65.i, -536870913
  %bf.set69.i = or i48 %bf.clear68.i, %bf.shl67.i
  store i48 %bf.set69.i, ptr %sysdev_is_parent.i, align 4
  %call.i385.i = call i32 @device_property_read_u8_array(ptr noundef %24, ptr noundef nonnull @.str.31, ptr noundef nonnull %rx_thr_num_pkt_prd.i, i32 noundef 1) #12
  %call.i386.i = call i32 @device_property_read_u8_array(ptr noundef %24, ptr noundef nonnull @.str.32, ptr noundef nonnull %rx_max_burst_prd.i, i32 noundef 1) #12
  %call.i387.i = call i32 @device_property_read_u8_array(ptr noundef %24, ptr noundef nonnull @.str.33, ptr noundef nonnull %tx_thr_num_pkt_prd.i, i32 noundef 1) #12
  %call.i388.i = call i32 @device_property_read_u8_array(ptr noundef %24, ptr noundef nonnull @.str.34, ptr noundef nonnull %tx_max_burst_prd.i, i32 noundef 1) #12
  %call.i389.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.35) #12
  %55 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 6)
  %bf.load77.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl79.i = select i1 %call.i389.i, i48 68719476736, i48 0
  %bf.clear80.i = and i48 %bf.load77.i, -68719476737
  %bf.set81.i = or i48 %bf.clear80.i, %bf.shl79.i
  store i48 %bf.set81.i, ptr %sysdev_is_parent.i, align 4
  br i1 %call.i389.i, label %if.then89.i, label %if.end20.i.dwc3_get_properties.exit_crit_edge

if.end20.i.dwc3_get_properties.exit_crit_edge:    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_get_properties.exit

if.then89.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i390.i = call i32 @device_property_read_u8_array(ptr noundef %24, ptr noundef nonnull @.str.36, ptr noundef nonnull %tx_fifo_resize_max_num.i, i32 noundef 1) #12
  br label %dwc3_get_properties.exit

dwc3_get_properties.exit:                         ; preds = %if.then89.i, %if.end20.i.dwc3_get_properties.exit_crit_edge
  %call.i391.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.37) #12
  %56 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 6)
  %bf.load94.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl96.i = select i1 %call.i391.i, i48 268435456, i48 0
  %bf.clear97.i = and i48 %bf.load94.i, -268435457
  %bf.set98.i = or i48 %bf.clear97.i, %bf.shl96.i
  store i48 %bf.set98.i, ptr %sysdev_is_parent.i, align 4
  %call.i392.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.38) #12
  %57 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 6)
  %bf.load102.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl104.i = select i1 %call.i392.i, i48 134217728, i48 0
  %bf.clear105.i = and i48 %bf.load102.i, -134217729
  %bf.set106.i = or i48 %bf.clear105.i, %bf.shl104.i
  store i48 %bf.set106.i, ptr %sysdev_is_parent.i, align 4
  %call.i393.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.39) #12
  %58 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 6)
  %bf.load110.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl112.i = select i1 %call.i393.i, i48 67108864, i48 0
  %bf.clear113.i = and i48 %bf.load110.i, -67108865
  %bf.set114.i = or i48 %bf.clear113.i, %bf.shl112.i
  store i48 %bf.set114.i, ptr %sysdev_is_parent.i, align 4
  %call.i394.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.40) #12
  %59 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 6)
  %bf.load118.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl120.i = select i1 %call.i394.i, i48 33554432, i48 0
  %bf.clear121.i = and i48 %bf.load118.i, -33554433
  %bf.set122.i = or i48 %bf.clear121.i, %bf.shl120.i
  store i48 %bf.set122.i, ptr %sysdev_is_parent.i, align 4
  %call.i395.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.41) #12
  %60 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 6)
  %bf.load126.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl128.i = select i1 %call.i395.i, i48 16777216, i48 0
  %bf.clear129.i = and i48 %bf.load126.i, -16777217
  %bf.set130.i = or i48 %bf.clear129.i, %bf.shl128.i
  store i48 %bf.set130.i, ptr %sysdev_is_parent.i, align 4
  %call.i396.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.42) #12
  %61 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 6)
  %bf.load134.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl136.i = select i1 %call.i396.i, i48 8388608, i48 0
  %bf.clear137.i = and i48 %bf.load134.i, -8388609
  %bf.set138.i = or i48 %bf.clear137.i, %bf.shl136.i
  store i48 %bf.set138.i, ptr %sysdev_is_parent.i, align 4
  %call.i397.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.43) #12
  %62 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 6)
  %bf.load142.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl144.i = select i1 %call.i397.i, i48 4194304, i48 0
  %bf.clear145.i = and i48 %bf.load142.i, -4194305
  %bf.set146.i = or i48 %bf.clear145.i, %bf.shl144.i
  store i48 %bf.set146.i, ptr %sysdev_is_parent.i, align 4
  %call.i398.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.44) #12
  %63 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 6)
  %bf.load150.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl152.i = select i1 %call.i398.i, i48 2097152, i48 0
  %bf.clear153.i = and i48 %bf.load150.i, -2097153
  %bf.set154.i = or i48 %bf.clear153.i, %bf.shl152.i
  store i48 %bf.set154.i, ptr %sysdev_is_parent.i, align 4
  %call.i399.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.45) #12
  %64 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 6)
  %bf.load158.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl160.i = select i1 %call.i399.i, i48 1048576, i48 0
  %bf.clear161.i = and i48 %bf.load158.i, -1048577
  %bf.set162.i = or i48 %bf.clear161.i, %bf.shl160.i
  store i48 %bf.set162.i, ptr %sysdev_is_parent.i, align 4
  %call.i400.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.46) #12
  %65 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 6)
  %bf.load166.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl168.i = select i1 %call.i400.i, i48 524288, i48 0
  %bf.clear169.i = and i48 %bf.load166.i, -524289
  %bf.set170.i = or i48 %bf.clear169.i, %bf.shl168.i
  store i48 %bf.set170.i, ptr %sysdev_is_parent.i, align 4
  %call.i401.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.47) #12
  %66 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 6)
  %bf.load174.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl176.i = select i1 %call.i401.i, i48 262144, i48 0
  %bf.clear177.i = and i48 %bf.load174.i, -262145
  %bf.set178.i = or i48 %bf.clear177.i, %bf.shl176.i
  store i48 %bf.set178.i, ptr %sysdev_is_parent.i, align 4
  %call.i402.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.48) #12
  %67 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 6)
  %bf.load182.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl184.i = select i1 %call.i402.i, i48 131072, i48 0
  %bf.clear185.i = and i48 %bf.load182.i, -131073
  %bf.set186.i = or i48 %bf.clear185.i, %bf.shl184.i
  store i48 %bf.set186.i, ptr %sysdev_is_parent.i, align 4
  %call.i403.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.49) #12
  %68 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 6)
  %bf.load190.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl192.i = select i1 %call.i403.i, i48 65536, i48 0
  %bf.clear193.i = and i48 %bf.load190.i, -65537
  %bf.set194.i = or i48 %bf.clear193.i, %bf.shl192.i
  store i48 %bf.set194.i, ptr %sysdev_is_parent.i, align 4
  %call.i404.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.50) #12
  %69 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 6)
  %bf.load198.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl200.i = select i1 %call.i404.i, i48 32768, i48 0
  %bf.clear201.i = and i48 %bf.load198.i, -32769
  %bf.set202.i = or i48 %bf.clear201.i, %bf.shl200.i
  store i48 %bf.set202.i, ptr %sysdev_is_parent.i, align 4
  %call.i405.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.51) #12
  %70 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 6)
  %bf.load206.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl208.i = select i1 %call.i405.i, i48 16384, i48 0
  %bf.clear209.i = and i48 %bf.load206.i, -16385
  %bf.set210.i = or i48 %bf.clear209.i, %bf.shl208.i
  store i48 %bf.set210.i, ptr %sysdev_is_parent.i, align 4
  %call.i406.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.52) #12
  %71 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 6)
  %bf.load214.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl216.i = select i1 %call.i406.i, i48 8192, i48 0
  %bf.clear217.i = and i48 %bf.load214.i, -8193
  %bf.set218.i = or i48 %bf.clear217.i, %bf.shl216.i
  store i48 %bf.set218.i, ptr %sysdev_is_parent.i, align 4
  %call.i407.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.53) #12
  %72 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 6)
  %bf.load222.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl224.i = select i1 %call.i407.i, i48 4096, i48 0
  %bf.clear225.i = and i48 %bf.load222.i, -4097
  %bf.set226.i = or i48 %bf.clear225.i, %bf.shl224.i
  store i48 %bf.set226.i, ptr %sysdev_is_parent.i, align 4
  %call.i408.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.54) #12
  %73 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 6)
  %bf.load230.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl232.i = select i1 %call.i408.i, i48 2048, i48 0
  %bf.clear233.i = and i48 %bf.load230.i, -2049
  %bf.set234.i = or i48 %bf.clear233.i, %bf.shl232.i
  store i48 %bf.set234.i, ptr %sysdev_is_parent.i, align 4
  %call.i409.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.55) #12
  %74 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 6)
  %bf.load238.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl240.i = select i1 %call.i409.i, i48 1024, i48 0
  %bf.clear241.i = and i48 %bf.load238.i, -1025
  %bf.set242.i = or i48 %bf.clear241.i, %bf.shl240.i
  store i48 %bf.set242.i, ptr %sysdev_is_parent.i, align 4
  %call.i410.i = call i32 @device_property_read_u8_array(ptr noundef %24, ptr noundef nonnull @.str.56, ptr noundef nonnull %tx_de_emphasis.i, i32 noundef 1) #12
  %hsphy_interface.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 78
  %call245.i = call i32 @device_property_read_string(ptr noundef %24, ptr noundef nonnull @.str.57, ptr noundef %hsphy_interface.i) #12
  %fladj.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 41
  %call.i411.i = call i32 @device_property_read_u32_array(ptr noundef %24, ptr noundef nonnull @.str.58, ptr noundef %fladj.i, i32 noundef 1) #12
  %ref_clk_per.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 42
  %call.i412.i = call i32 @device_property_read_u32_array(ptr noundef %24, ptr noundef nonnull @.str.59, ptr noundef %ref_clk_per.i, i32 noundef 1) #12
  %call.i413.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.60) #12
  %75 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 6)
  %bf.load250.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl252.i = select i1 %call.i413.i, i48 128, i48 0
  %bf.clear253.i = and i48 %bf.load250.i, -129
  %bf.set254.i = or i48 %bf.clear253.i, %bf.shl252.i
  store i48 %bf.set254.i, ptr %sysdev_is_parent.i, align 4
  %call.i414.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.61) #12
  %76 = ptrtoint ptr %sysdev_is_parent.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 6)
  %bf.load258.i = load i48, ptr %sysdev_is_parent.i, align 4
  %bf.shl260.i = select i1 %call.i414.i, i48 64, i48 0
  %bf.clear261.i = and i48 %bf.load258.i, -833
  %bf.set262.i = or i48 %bf.shl260.i, %bf.clear261.i
  %77 = ptrtoint ptr %lpm_nyet_threshold.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %lpm_nyet_threshold.i, align 1
  %lpm_nyet_threshold264.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 71
  %79 = ptrtoint ptr %lpm_nyet_threshold264.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %lpm_nyet_threshold264.i, align 2
  %80 = ptrtoint ptr %tx_de_emphasis.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %tx_de_emphasis.i, align 1
  %82 = and i8 %81, 3
  %bf.value268.i = zext i8 %82 to i48
  %bf.shl269.i = shl nuw nsw i48 %bf.value268.i, 8
  %bf.set271.i = or i48 %bf.shl269.i, %bf.set262.i
  store i48 %bf.set271.i, ptr %sysdev_is_parent.i, align 4
  %83 = ptrtoint ptr %hird_threshold.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %hird_threshold.i, align 1
  %hird_threshold273.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 72
  %85 = ptrtoint ptr %hird_threshold273.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %hird_threshold273.i, align 1
  %86 = ptrtoint ptr %rx_thr_num_pkt_prd.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %rx_thr_num_pkt_prd.i, align 1
  %rx_thr_num_pkt_prd274.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 73
  %88 = ptrtoint ptr %rx_thr_num_pkt_prd274.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %rx_thr_num_pkt_prd274.i, align 4
  %89 = ptrtoint ptr %rx_max_burst_prd.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %rx_max_burst_prd.i, align 1
  %rx_max_burst_prd275.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 74
  %91 = ptrtoint ptr %rx_max_burst_prd275.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %rx_max_burst_prd275.i, align 1
  %92 = ptrtoint ptr %tx_thr_num_pkt_prd.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %tx_thr_num_pkt_prd.i, align 1
  %tx_thr_num_pkt_prd276.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 75
  %94 = ptrtoint ptr %tx_thr_num_pkt_prd276.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %tx_thr_num_pkt_prd276.i, align 2
  %95 = ptrtoint ptr %tx_max_burst_prd.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %tx_max_burst_prd.i, align 1
  %tx_max_burst_prd277.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 76
  %97 = ptrtoint ptr %tx_max_burst_prd277.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %tx_max_burst_prd277.i, align 1
  %imod_interval.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 80
  %98 = ptrtoint ptr %imod_interval.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %imod_interval.i, align 2
  %99 = ptrtoint ptr %tx_fifo_resize_max_num.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %tx_fifo_resize_max_num.i, align 1
  %tx_fifo_resize_max_num278.i = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 77
  %101 = ptrtoint ptr %tx_fifo_resize_max_num278.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %tx_fifo_resize_max_num278.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usb_psy_name.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx_fifo_resize_max_num.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx_max_burst_prd.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx_thr_num_pkt_prd.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_max_burst_prd.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_thr_num_pkt_prd.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hird_threshold.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx_de_emphasis.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lpm_nyet_threshold.i) #12
  %102 = and i48 %bf.load258.i, 2199023255552
  %tobool28.not = icmp eq i48 %102, 0
  br i1 %tobool28.not, label %if.then29, label %dwc3_get_properties.exit.if.end34_crit_edge

dwc3_get_properties.exit.if.end34_crit_edge:      ; preds = %dwc3_get_properties.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then29:                                        ; preds = %dwc3_get_properties.exit
  %103 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %44, align 4
  %call.i231 = call i32 @dma_set_mask(ptr noundef %104, i64 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %cmp.i232 = icmp eq i32 %call.i231, 0
  br i1 %cmp.i232, label %dma_set_mask_and_coherent.exit.thread, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

dma_set_mask_and_coherent.exit.thread:            ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %104, i64 noundef -1) #12
  br label %if.end34

if.end34:                                         ; preds = %dma_set_mask_and_coherent.exit.thread, %dwc3_get_properties.exit.if.end34_crit_edge
  %call.i235 = call ptr @devm_reset_control_array_get(ptr noundef %dev1, i1 noundef zeroext true, i1 noundef zeroext true) #12
  %reset = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 22
  %105 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i235, ptr %reset, align 4
  %cmp.i236 = icmp ugt ptr %call.i235, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %106 = ptrtoint ptr %call.i235 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %107 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %of_node, align 8
  %tobool42.not = icmp eq ptr %108, null
  br i1 %tobool42.not, label %if.end41.if.end51_crit_edge, label %if.then43

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then43:                                        ; preds = %if.end41
  %clks = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 20
  %call44 = call i32 @devm_clk_bulk_get_all(ptr noundef %dev1, ptr noundef %clks) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call44)
  %cmp = icmp eq i32 %call44, -517
  br i1 %cmp, label %if.then43.cleanup_crit_edge, label %if.end46

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  %num_clks = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 21
  %109 = call i32 @llvm.smax.i32(i32 %call44, i32 0)
  %110 = ptrtoint ptr %num_clks to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %num_clks, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end46, %if.end41.if.end51_crit_edge
  %111 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %reset, align 4
  %call53 = call i32 @reset_control_deassert(ptr noundef %112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %num_clks57 = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 21
  %113 = ptrtoint ptr %num_clks57 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %num_clks57, align 4
  %clks58 = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 20
  %115 = ptrtoint ptr %clks58 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %clks58, align 4
  %call.i237 = call i32 @clk_bulk_prepare(i32 noundef %114, ptr noundef %116) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool.not.i = icmp eq i32 %call.i237, 0
  br i1 %tobool.not.i, label %if.end.i239, label %if.end56.assert_reset_crit_edge

if.end56.assert_reset_crit_edge:                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %assert_reset

if.end.i239:                                      ; preds = %if.end56
  %call1.i238 = call i32 @clk_bulk_enable(i32 noundef %114, ptr noundef %116) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i238)
  %tobool2.not.i = icmp eq i32 %call1.i238, 0
  br i1 %tobool2.not.i, label %if.end62, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #14
  call void @clk_bulk_unprepare(i32 noundef %114, ptr noundef %116) #12
  br label %assert_reset

if.end62:                                         ; preds = %if.end.i239
  %call63 = call fastcc zeroext i1 @dwc3_core_is_valid(ptr noundef nonnull %call.i)
  br i1 %call63, label %if.end69, label %do.end67

do.end67:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.10) #15
  br label %disable_clks

if.end69:                                         ; preds = %if.end62
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %119 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call fastcc void @dwc3_cache_hwparams(ptr noundef nonnull %call.i)
  %lock = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 10
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @dwc3_probe.__key, i16 noundef signext 3) #12
  %mutex = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 11
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.14, ptr noundef nonnull @dwc3_probe.__key.13) #12
  %call.i240 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #12
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #12
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 5000) #12
  call void @pm_runtime_enable(ptr noundef %dev1) #12
  %call.i241 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %cmp79 = icmp slt i32 %call.i241, 0
  br i1 %cmp79, label %if.end69.err1_crit_edge, label %if.end81

if.end69.err1_crit_edge:                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end81:                                         ; preds = %if.end69
  call void @pm_runtime_forbid(ptr noundef %dev1) #12
  %call82 = call fastcc i32 @dwc3_alloc_event_buffers(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end89, label %do.end87

do.end87:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.16) #15
  br label %err2

if.end89:                                         ; preds = %if.end81
  call fastcc void @dwc3_get_dr_mode(ptr noundef nonnull %call.i)
  %call94 = call fastcc i32 @dwc3_alloc_scratch_buffers(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end89.err3_crit_edge

if.end89.err3_crit_edge:                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %err3

if.end97:                                         ; preds = %if.end89
  %call98 = call fastcc i32 @dwc3_core_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end102, label %if.then100

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %call101 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call98, ptr noundef nonnull @.str.18) #12
  br label %err4

if.end102:                                        ; preds = %if.end97
  call fastcc void @dwc3_check_params(ptr noundef nonnull %call.i)
  call void @dwc3_debugfs_init(ptr noundef nonnull %call.i) #12
  %call103 = call fastcc i32 @dwc3_core_init_mode(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %err5

if.end106:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  %call.i242 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #12
  br label %cleanup

err5:                                             ; preds = %if.end102
  call void @dwc3_debugfs_exit(ptr noundef nonnull %call.i) #12
  call void @dwc3_event_buffers_cleanup(ptr noundef nonnull %call.i)
  %usb2_phy = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 23
  %122 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %usb2_phy, align 4
  %tobool.not.i243 = icmp eq ptr %123, null
  br i1 %tobool.not.i243, label %err5.usb_phy_shutdown.exit_crit_edge, label %land.lhs.true.i

err5.usb_phy_shutdown.exit_crit_edge:             ; preds = %err5
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_shutdown.exit

land.lhs.true.i:                                  ; preds = %err5
  %shutdown.i = getelementptr inbounds %struct.usb_phy, ptr %123, i32 0, i32 23
  %124 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %shutdown.i, align 4
  %tobool1.not.i = icmp eq ptr %125, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.usb_phy_shutdown.exit_crit_edge, label %if.then.i244

land.lhs.true.i.usb_phy_shutdown.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_shutdown.exit

if.then.i244:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call void %125(ptr noundef nonnull %123) #12
  br label %usb_phy_shutdown.exit

usb_phy_shutdown.exit:                            ; preds = %if.then.i244, %land.lhs.true.i.usb_phy_shutdown.exit_crit_edge, %err5.usb_phy_shutdown.exit_crit_edge
  %usb3_phy = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 24
  %126 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %usb3_phy, align 4
  %tobool.not.i246 = icmp eq ptr %127, null
  br i1 %tobool.not.i246, label %usb_phy_shutdown.exit.usb_phy_shutdown.exit252_crit_edge, label %land.lhs.true.i249

usb_phy_shutdown.exit.usb_phy_shutdown.exit252_crit_edge: ; preds = %usb_phy_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_shutdown.exit252

land.lhs.true.i249:                               ; preds = %usb_phy_shutdown.exit
  %shutdown.i247 = getelementptr inbounds %struct.usb_phy, ptr %127, i32 0, i32 23
  %128 = ptrtoint ptr %shutdown.i247 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %shutdown.i247, align 4
  %tobool1.not.i248 = icmp eq ptr %129, null
  br i1 %tobool1.not.i248, label %land.lhs.true.i249.usb_phy_shutdown.exit252_crit_edge, label %if.then.i250

land.lhs.true.i249.usb_phy_shutdown.exit252_crit_edge: ; preds = %land.lhs.true.i249
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_shutdown.exit252

if.then.i250:                                     ; preds = %land.lhs.true.i249
  call void @__sanitizer_cov_trace_pc() #14
  call void %129(ptr noundef nonnull %127) #12
  br label %usb_phy_shutdown.exit252

usb_phy_shutdown.exit252:                         ; preds = %if.then.i250, %land.lhs.true.i249.usb_phy_shutdown.exit252_crit_edge, %usb_phy_shutdown.exit.usb_phy_shutdown.exit252_crit_edge
  %usb2_generic_phy = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 25
  %130 = ptrtoint ptr %usb2_generic_phy to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %usb2_generic_phy, align 4
  %call108 = call i32 @phy_exit(ptr noundef %131) #12
  %usb3_generic_phy = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 26
  %132 = ptrtoint ptr %usb3_generic_phy to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %usb3_generic_phy, align 4
  %call109 = call i32 @phy_exit(ptr noundef %133) #12
  %134 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %usb2_phy, align 4
  %tobool.not.i253 = icmp eq ptr %135, null
  br i1 %tobool.not.i253, label %usb_phy_shutdown.exit252.usb_phy_set_suspend.exit_crit_edge, label %land.lhs.true.i254

usb_phy_shutdown.exit252.usb_phy_set_suspend.exit_crit_edge: ; preds = %usb_phy_shutdown.exit252
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit

land.lhs.true.i254:                               ; preds = %usb_phy_shutdown.exit252
  %set_suspend.i = getelementptr inbounds %struct.usb_phy, ptr %135, i32 0, i32 26
  %136 = ptrtoint ptr %set_suspend.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %set_suspend.i, align 4
  %cmp.not.i = icmp eq ptr %137, null
  br i1 %cmp.not.i, label %land.lhs.true.i254.usb_phy_set_suspend.exit_crit_edge, label %if.then.i256

land.lhs.true.i254.usb_phy_set_suspend.exit_crit_edge: ; preds = %land.lhs.true.i254
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit

if.then.i256:                                     ; preds = %land.lhs.true.i254
  call void @__sanitizer_cov_trace_pc() #14
  %call.i255 = call i32 %137(ptr noundef nonnull %135, i32 noundef 1) #12
  br label %usb_phy_set_suspend.exit

usb_phy_set_suspend.exit:                         ; preds = %if.then.i256, %land.lhs.true.i254.usb_phy_set_suspend.exit_crit_edge, %usb_phy_shutdown.exit252.usb_phy_set_suspend.exit_crit_edge
  %138 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %usb3_phy, align 4
  %tobool.not.i257 = icmp eq ptr %139, null
  br i1 %tobool.not.i257, label %usb_phy_set_suspend.exit.usb_phy_set_suspend.exit263_crit_edge, label %land.lhs.true.i260

usb_phy_set_suspend.exit.usb_phy_set_suspend.exit263_crit_edge: ; preds = %usb_phy_set_suspend.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit263

land.lhs.true.i260:                               ; preds = %usb_phy_set_suspend.exit
  %set_suspend.i258 = getelementptr inbounds %struct.usb_phy, ptr %139, i32 0, i32 26
  %140 = ptrtoint ptr %set_suspend.i258 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %set_suspend.i258, align 4
  %cmp.not.i259 = icmp eq ptr %141, null
  br i1 %cmp.not.i259, label %land.lhs.true.i260.usb_phy_set_suspend.exit263_crit_edge, label %if.then.i262

land.lhs.true.i260.usb_phy_set_suspend.exit263_crit_edge: ; preds = %land.lhs.true.i260
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit263

if.then.i262:                                     ; preds = %land.lhs.true.i260
  call void @__sanitizer_cov_trace_pc() #14
  %call.i261 = call i32 %141(ptr noundef nonnull %139, i32 noundef 1) #12
  br label %usb_phy_set_suspend.exit263

usb_phy_set_suspend.exit263:                      ; preds = %if.then.i262, %land.lhs.true.i260.usb_phy_set_suspend.exit263_crit_edge, %usb_phy_set_suspend.exit.usb_phy_set_suspend.exit263_crit_edge
  %142 = ptrtoint ptr %usb2_generic_phy to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %usb2_generic_phy, align 4
  %call115 = call i32 @phy_power_off(ptr noundef %143) #12
  %144 = ptrtoint ptr %usb3_generic_phy to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %usb3_generic_phy, align 4
  %call117 = call i32 @phy_power_off(ptr noundef %145) #12
  call void @dwc3_ulpi_exit(ptr noundef nonnull %call.i) #12
  br label %err4

err4:                                             ; preds = %usb_phy_set_suspend.exit263, %if.then100
  %ret.0 = phi i32 [ %call98, %if.then100 ], [ %call103, %usb_phy_set_suspend.exit263 ]
  call fastcc void @dwc3_free_scratch_buffers(ptr noundef nonnull %call.i)
  br label %err3

err3:                                             ; preds = %err4, %if.end89.err3_crit_edge
  %ret.1 = phi i32 [ %call94, %if.end89.err3_crit_edge ], [ %ret.0, %err4 ]
  call fastcc void @dwc3_free_event_buffers(ptr noundef nonnull %call.i)
  br label %err2

err2:                                             ; preds = %err3, %do.end87
  %ret.2 = phi i32 [ -12, %do.end87 ], [ %ret.1, %err3 ]
  call void @pm_runtime_allow(ptr noundef %dev1) #12
  br label %err1

err1:                                             ; preds = %err2, %if.end69.err1_crit_edge
  %ret.3 = phi i32 [ %call.i241, %if.end69.err1_crit_edge ], [ %ret.2, %err2 ]
  %call.i264 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #12
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #12
  br label %disable_clks

disable_clks:                                     ; preds = %err1, %do.end67
  %ret.4 = phi i32 [ %ret.3, %err1 ], [ -19, %do.end67 ]
  %146 = ptrtoint ptr %num_clks57 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %num_clks57, align 4
  %148 = ptrtoint ptr %clks58 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %clks58, align 4
  call void @clk_bulk_disable(i32 noundef %147, ptr noundef %149) #12
  call void @clk_bulk_unprepare(i32 noundef %147, ptr noundef %149) #12
  br label %assert_reset

assert_reset:                                     ; preds = %disable_clks, %if.then3.i, %if.end56.assert_reset_crit_edge
  %ret.5 = phi i32 [ %ret.4, %disable_clks ], [ %call1.i238, %if.then3.i ], [ %call.i237, %if.end56.assert_reset_crit_edge ]
  %150 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %reset, align 4
  %call125 = call i32 @reset_control_assert(ptr noundef %151) #12
  %usb_psy = getelementptr inbounds %struct.dwc3, ptr %call.i, i32 0, i32 40
  %152 = ptrtoint ptr %usb_psy to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %usb_psy, align 4
  %tobool126.not = icmp eq ptr %153, null
  br i1 %tobool126.not, label %assert_reset.cleanup_crit_edge, label %if.then127

assert_reset.cleanup_crit_edge:                   ; preds = %assert_reset
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then127:                                       ; preds = %assert_reset
  call void @__sanitizer_cov_trace_pc() #14
  call void @power_supply_put(ptr noundef nonnull %153) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then127, %assert_reset.cleanup_crit_edge, %if.end106, %if.end51.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %if.then38, %if.then29.cleanup_crit_edge, %if.then23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then23 ], [ %106, %if.then38 ], [ 0, %if.end106 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then43.cleanup_crit_edge ], [ %call53, %if.end51.cleanup_crit_edge ], [ %ret.5, %if.then127 ], [ %ret.5, %assert_reset.cleanup_crit_edge ], [ %call.i231, %if.then29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dwc_res) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  %dr_mode.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dr_mode.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %3, label %entry.dwc3_core_exit_mode.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

entry.dwc3_core_exit_mode.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_core_exit_mode.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dwc3_gadget_exit(ptr noundef %1) #12
  br label %dwc3_core_exit_mode.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dwc3_host_exit(ptr noundef %1) #12
  br label %dwc3_core_exit_mode.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dwc3_drd_exit(ptr noundef %1) #12
  br label %dwc3_core_exit_mode.exit

dwc3_core_exit_mode.exit:                         ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %entry.dwc3_core_exit_mode.exit_crit_edge
  %regs.i.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 30
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #12, !srcloc !266
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i.i.i = getelementptr i8, ptr %6, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i.i, i32 noundef 49424, i32 noundef %8) #12
  %and.i.i = and i32 %8, -12289
  %or.i.i = or i32 %and.i.i, 8192
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %add.ptr1.i8.i.i = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i.i, i32 %11) #12, !srcloc !269
  %add.ptr2.i.i.i = getelementptr i8, ptr %10, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i.i, i32 noundef 49424, i32 noundef %or.i.i) #12
  %current_dr_role.i.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 33
  %12 = ptrtoint ptr %current_dr_role.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %current_dr_role.i.i, align 4
  tail call void @dwc3_debugfs_exit(ptr noundef %1) #12
  tail call fastcc void @dwc3_core_exit(ptr noundef %1)
  tail call void @dwc3_ulpi_exit(ptr noundef %1) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !279
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !280
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %dwc3_core_exit_mode.exit.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

dwc3_core_exit_mode.exit.pm_runtime_put_noidle.exit_crit_edge: ; preds = %dwc3_core_exit_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %dwc3_core_exit_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !281
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %dwc3_core_exit_mode.exit.pm_runtime_put_noidle.exit_crit_edge
  %call.i18 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #12
  %ev_buf.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %ev_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ev_buf.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %pm_runtime_put_noidle.exit.dwc3_free_event_buffers.exit_crit_edge, label %if.then.i

pm_runtime_put_noidle.exit.dwc3_free_event_buffers.exit_crit_edge: ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_free_event_buffers.exit

if.then.i:                                        ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sysdev.i.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %sysdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sysdev.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i.i, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  %dma.i.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %15, i32 0, i32 6
  %22 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef 0) #12
  br label %dwc3_free_event_buffers.exit

dwc3_free_event_buffers.exit:                     ; preds = %if.then.i, %pm_runtime_put_noidle.exit.dwc3_free_event_buffers.exit_crit_edge
  %has_hibernation.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %24 = ptrtoint ptr %has_hibernation.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 6)
  %bf.load.i = load i48, ptr %has_hibernation.i, align 4
  %25 = and i48 %bf.load.i, 4398046511104
  %tobool.not.i19 = icmp eq i48 %25, 0
  br i1 %tobool.not.i19, label %dwc3_free_event_buffers.exit.dwc3_free_scratch_buffers.exit_crit_edge, label %if.end.i

dwc3_free_event_buffers.exit.dwc3_free_scratch_buffers.exit_crit_edge: ; preds = %dwc3_free_event_buffers.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_free_scratch_buffers.exit

if.end.i:                                         ; preds = %dwc3_free_event_buffers.exit
  %nr_scratch.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 48
  %26 = ptrtoint ptr %nr_scratch.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_scratch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool1.not.i = icmp eq i32 %27, 0
  br i1 %tobool1.not.i, label %if.end.i.dwc3_free_scratch_buffers.exit_crit_edge, label %if.end3.i

if.end.i.dwc3_free_scratch_buffers.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_free_scratch_buffers.exit

if.end3.i:                                        ; preds = %if.end.i
  %scratchbuf.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %scratchbuf.i, align 4
  %tobool4.not.i = icmp eq ptr %29, null
  br i1 %tobool4.not.i, label %if.end3.i.dwc3_free_scratch_buffers.exit_crit_edge, label %do.end.i, !prof !271

if.end3.i.dwc3_free_scratch_buffers.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_free_scratch_buffers.exit

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 553, i32 noundef 9, ptr noundef null) #12
  %sysdev.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sysdev.i, align 4
  %scratch_addr.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %scratch_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %scratch_addr.i, align 4
  %34 = ptrtoint ptr %nr_scratch.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_scratch.i, align 4
  %mul.i = shl i32 %35, 12
  tail call void @dma_unmap_page_attrs(ptr noundef %31, i32 noundef %33, i32 noundef %mul.i, i32 noundef 0, i32 noundef 0) #12
  %36 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %scratchbuf.i, align 4
  tail call void @kfree(ptr noundef %37) #12
  br label %dwc3_free_scratch_buffers.exit

dwc3_free_scratch_buffers.exit:                   ; preds = %do.end.i, %if.end3.i.dwc3_free_scratch_buffers.exit_crit_edge, %if.end.i.dwc3_free_scratch_buffers.exit_crit_edge, %dwc3_free_event_buffers.exit.dwc3_free_scratch_buffers.exit_crit_edge
  %usb_psy = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 40
  %38 = ptrtoint ptr %usb_psy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_psy, align 4
  %tobool.not = icmp eq ptr %39, null
  br i1 %tobool.not, label %dwc3_free_scratch_buffers.exit.if.end_crit_edge, label %if.then

dwc3_free_scratch_buffers.exit.if.end_crit_edge:  ; preds = %dwc3_free_scratch_buffers.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %dwc3_free_scratch_buffers.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @power_supply_put(ptr noundef nonnull %39) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %dwc3_free_scratch_buffers.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dwc3_core_is_valid(ptr nocapture noundef %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !266
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 49440, i32 noundef %3) #12
  %shr = lshr i32 %3, 16
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %ip, align 4
  %trunc = trunc i32 %shr to i16
  %5 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.124)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 21811, label %if.then
    i16 13105, label %entry.if.then6_crit_edge
    i16 13106, label %entry.if.then6_crit_edge30
  ]

entry.if.then6_crit_edge30:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %revision = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %6 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %revision, align 4
  br label %cleanup

if.then6:                                         ; preds = %entry.if.then6_crit_edge, %entry.if.then6_crit_edge30
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr1.i25 = getelementptr i8, ptr %8, i32 160
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i25) #12, !srcloc !266
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i26 = getelementptr i8, ptr %8, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i26, i32 noundef 49568, i32 noundef %10) #12
  %revision9 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %11 = ptrtoint ptr %revision9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %revision9, align 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr1.i28 = getelementptr i8, ptr %13, i32 164
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i28) #12, !srcloc !266
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i29 = getelementptr i8, ptr %13, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i29, i32 noundef 49572, i32 noundef %15) #12
  %version_type = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 56
  %16 = ptrtoint ptr %version_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %version_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.then6 ], [ true, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_cache_hwparams(ptr nocapture noundef %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwparams = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !266
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 49472, i32 noundef %3) #12
  %4 = ptrtoint ptr %hwparams to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %hwparams, align 4
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr1.i40 = getelementptr i8, ptr %6, i32 68
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i40) #12, !srcloc !266
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i41 = getelementptr i8, ptr %6, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i41, i32 noundef 49476, i32 noundef %8) #12
  %hwparams1 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 1
  %9 = ptrtoint ptr %hwparams1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %hwparams1, align 4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr1.i43 = getelementptr i8, ptr %11, i32 72
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i43) #12, !srcloc !266
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i44 = getelementptr i8, ptr %11, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i44, i32 noundef 49480, i32 noundef %13) #12
  %hwparams2 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 2
  %14 = ptrtoint ptr %hwparams2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %hwparams2, align 4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr1.i46 = getelementptr i8, ptr %16, i32 76
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i46) #12, !srcloc !266
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i47 = getelementptr i8, ptr %16, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i47, i32 noundef 49484, i32 noundef %18) #12
  %hwparams3 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 3
  %19 = ptrtoint ptr %hwparams3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %hwparams3, align 4
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr1.i49 = getelementptr i8, ptr %21, i32 80
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i49) #12, !srcloc !266
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i50 = getelementptr i8, ptr %21, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i50, i32 noundef 49488, i32 noundef %23) #12
  %hwparams4 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 4
  %24 = ptrtoint ptr %hwparams4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %hwparams4, align 4
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr1.i52 = getelementptr i8, ptr %26, i32 84
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i52) #12, !srcloc !266
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i53 = getelementptr i8, ptr %26, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i53, i32 noundef 49492, i32 noundef %28) #12
  %hwparams5 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 5
  %29 = ptrtoint ptr %hwparams5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %hwparams5, align 4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr1.i55 = getelementptr i8, ptr %31, i32 88
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i55) #12, !srcloc !266
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i56 = getelementptr i8, ptr %31, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i56, i32 noundef 49496, i32 noundef %33) #12
  %hwparams6 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 6
  %34 = ptrtoint ptr %hwparams6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %hwparams6, align 4
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr1.i58 = getelementptr i8, ptr %36, i32 92
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58) #12, !srcloc !266
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i59 = getelementptr i8, ptr %36, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i59, i32 noundef 49500, i32 noundef %38) #12
  %hwparams7 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 7
  %39 = ptrtoint ptr %hwparams7 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %hwparams7, align 4
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr1.i61 = getelementptr i8, ptr %41, i32 1280
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i61) #12, !srcloc !266
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i62 = getelementptr i8, ptr %41, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i62, i32 noundef 50688, i32 noundef %43) #12
  %hwparams8 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 8
  %44 = ptrtoint ptr %hwparams8 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %hwparams8, align 4
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %45 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %46)
  %cmp = icmp eq i32 %46, 13106
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr1.i64 = getelementptr i8, ptr %48, i32 1504
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i64) #12, !srcloc !266
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i65 = getelementptr i8, ptr %48, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i65, i32 noundef 50912, i32 noundef %50) #12
  %hwparams9 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 9
  %51 = ptrtoint ptr %hwparams9 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %hwparams9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_alloc_event_buffers(ptr noundef %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 32, i32 noundef 3520) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i:                                         ; preds = %entry
  %dwc2.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %call.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %dwc2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dwc, ptr %dwc2.i, align 4
  %length3.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %call.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %length3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4096, ptr %length3.i, align 4
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %call.i1.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 4096, i32 noundef 3520) #12
  %cache.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %call.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i1.i, ptr %cache.i, align 4
  %tobool7.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool7.not.i, label %if.end.i.do.end_crit_edge, label %if.end10.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end10.i:                                       ; preds = %if.end.i
  %sysdev.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 13
  %7 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sysdev.i, align 4
  %dma.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %call.i.i, i32 0, i32 6
  %call.i2.i = tail call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef 4096, ptr noundef %dma.i, i32 noundef 3264, i32 noundef 0) #12
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i2.i, ptr %call.i.i, align 4
  %tobool13.not.i = icmp eq ptr %call.i2.i, null
  br i1 %tobool13.not.i, label %if.end10.i.do.end_crit_edge, label %dwc3_alloc_one_event_buffer.exit

if.end10.i.do.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

dwc3_alloc_one_event_buffer.exit:                 ; preds = %if.end10.i
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dwc3_alloc_one_event_buffer.exit.do.end_crit_edge, label %if.end

dwc3_alloc_one_event_buffer.exit.do.end_crit_edge: ; preds = %dwc3_alloc_one_event_buffer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %dwc3_alloc_one_event_buffer.exit.do.end_crit_edge, %if.end10.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i3 = phi ptr [ %call.i.i, %dwc3_alloc_one_event_buffer.exit.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.i.do.end_crit_edge ]
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.62) #15
  %12 = ptrtoint ptr %retval.0.i3 to i32
  br label %cleanup

if.end:                                           ; preds = %dwc3_alloc_one_event_buffer.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ev_buf = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 16
  %13 = ptrtoint ptr %ev_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %ev_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %12, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_get_dr_mode(ptr nocapture noundef %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dr_mode = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 32
  %2 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %dr_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %dr_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hwparams = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66
  %5 = ptrtoint ptr %hwparams to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwparams, align 4
  %and = and i32 %6, 3
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %and, label %sw.default [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %8 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp5 = icmp eq i32 %9, 3
  br i1 %cmp5, label %land.lhs.true, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.default
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.64) #12
  br i1 %call.i, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true7

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true7:                                   ; preds = %land.lhs.true
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %11)
  %cmp8 = icmp eq i32 %11, 21811
  br i1 %cmp8, label %land.lhs.true9, label %land.lhs.true7.if.then11_crit_edge

land.lhs.true7.if.then11_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %revision = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %12 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429418762, i32 %13)
  %cmp10 = icmp ult i32 %13, 1429418762
  br i1 %cmp10, label %land.lhs.true9.sw.epilog_crit_edge, label %land.lhs.true9.if.then11_crit_edge

land.lhs.true9.if.then11_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

land.lhs.true9.sw.epilog_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then11:                                        ; preds = %land.lhs.true9.if.then11_crit_edge, %land.lhs.true7.if.then11_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %land.lhs.true9.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %sw.bb4, %if.end.sw.epilog_crit_edge
  %mode.0 = phi i32 [ 3, %land.lhs.true.sw.epilog_crit_edge ], [ 3, %land.lhs.true9.sw.epilog_crit_edge ], [ 2, %if.then11 ], [ %9, %sw.default.sw.epilog_crit_edge ], [ 1, %sw.bb4 ], [ 2, %if.end.sw.epilog_crit_edge ]
  %14 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mode.0, i32 %15)
  %cmp14.not = icmp eq i32 %mode.0, %15
  br i1 %cmp14.not, label %sw.epilog.if.end18_crit_edge, label %do.end

sw.epilog.if.end18_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode.0)
  %cmp16 = icmp eq i32 %mode.0, 1
  %cond = select i1 %cmp16, ptr @.str.68, ptr @.str.69
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.65, ptr noundef nonnull %cond) #15
  %16 = ptrtoint ptr %dr_mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mode.0, ptr %dr_mode, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.end, %sw.epilog.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_alloc_scratch_buffers(ptr nocapture noundef %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %has_hibernation = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %0 = ptrtoint ptr %has_hibernation to i32
  call void @__asan_loadN_noabort(i32 %0, i32 6)
  %bf.load = load i48, ptr %has_hibernation, align 4
  %1 = and i48 %bf.load, 4398046511104
  %tobool.not = icmp eq i48 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %nr_scratch = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 48
  %2 = ptrtoint ptr %nr_scratch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_scratch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4096) #12
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end3.kmalloc_array.exit_crit_edge, label %if.end7.i, !prof !282

if.end3.kmalloc_array.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %kmalloc_array.exit

if.end7.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #16
  br label %kmalloc_array.exit

kmalloc_array.exit:                               ; preds = %if.end7.i, %if.end3.kmalloc_array.exit_crit_edge
  %retval.0.i = phi ptr [ %call8.i, %if.end7.i ], [ null, %if.end3.kmalloc_array.exit_crit_edge ]
  %scratchbuf = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 3
  %7 = ptrtoint ptr %scratchbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i, ptr %scratchbuf, align 4
  %tobool6.not = icmp eq ptr %retval.0.i, null
  %. = select i1 %tobool6.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %kmalloc_array.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %., %kmalloc_array.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_core_init(ptr noundef %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwparams = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66
  %0 = ptrtoint ptr %hwparams to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwparams, align 4
  %and = and i32 %1, 3
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 1115392) #12, !srcloc !269
  %add.ptr2.i = getelementptr i8, ptr %3, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 49448, i32 noundef 332032) #12
  %4 = ptrtoint ptr %hwparams to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwparams, align 4
  %and.i = and i32 %5, 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 448
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !266
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i.i = getelementptr i8, ptr %7, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 49856, i32 noundef %9) #12
  %and1.i = and i32 %9, -134217729
  %ip.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %10 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %11)
  %cmp.i = icmp eq i32 %11, 21811
  br i1 %cmp.i, label %land.lhs.true3.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

land.lhs.true3.i:                                 ; preds = %entry
  %revision.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %12 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429412171, i32 %13)
  %cmp5.i = icmp ult i32 %13, 1429412171
  br i1 %cmp5.i, label %land.lhs.true3.i.if.end.i_crit_edge, label %land.lhs.true3.i.if.then.i_crit_edge

land.lhs.true3.i.if.then.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

land.lhs.true3.i.if.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %or.i = or i32 %and1.i, 131072
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.if.end.i_crit_edge
  %reg.0.i = phi i32 [ %and1.i, %land.lhs.true3.i.if.end.i_crit_edge ], [ %or.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp6.i = icmp eq i32 %and.i, 2
  %and8.i = and i32 %reg.0.i, -131073
  %spec.select.i = select i1 %cmp6.i, i32 %and8.i, i32 %reg.0.i
  %u2ss_inp3_quirk.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %14 = ptrtoint ptr %u2ss_inp3_quirk.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 6)
  %bf.load.i = load i48, ptr %u2ss_inp3_quirk.i, align 4
  %15 = trunc i48 %bf.load.i to i32
  %16 = shl i32 %15, 3
  %17 = and i32 %16, 536870912
  %18 = or i32 %17, %spec.select.i
  %19 = shl i32 %15, 13
  %20 = and i32 %19, 268435456
  %21 = or i32 %18, %20
  %22 = lshr i32 %15, 1
  %23 = and i32 %22, 16777216
  %24 = or i32 %21, %23
  %25 = lshr i32 %15, 5
  %26 = and i32 %25, 524288
  %27 = or i32 %24, %26
  %28 = and i32 %25, 262144
  %29 = or i32 %27, %28
  %30 = lshr i32 %15, 13
  %31 = and i32 %30, 512
  %32 = or i32 %29, %31
  %33 = and i32 %30, 256
  %34 = or i32 %32, %33
  %35 = and i48 %bf.load.i, 1024
  %tobool65.not.i = icmp eq i48 %35, 0
  %36 = lshr i32 %15, 7
  %shl.i = and i32 %36, 6
  %or71.i = select i1 %tobool65.not.i, i32 0, i32 %shl.i
  %reg.9.i = or i32 %34, %or71.i
  %37 = and i48 %bf.load.i, 1048576
  %tobool77.not.i = icmp eq i48 %37, 0
  %and79.i = and i32 %reg.9.i, -131073
  %reg.10.i = select i1 %tobool77.not.i, i32 %reg.9.i, i32 %and79.i
  %38 = and i48 %bf.load.i, 8192
  %tobool85.not.i = icmp eq i48 %38, 0
  %and87.i = and i32 %reg.10.i, -262145
  %reg.11.i = select i1 %tobool85.not.i, i32 %reg.10.i, i32 %and87.i
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %41 = tail call i32 @llvm.bswap.i32(i32 %reg.11.i) #12
  %add.ptr1.i3.i = getelementptr i8, ptr %40, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i3.i, i32 %41) #12, !srcloc !269
  %add.ptr2.i.i = getelementptr i8, ptr %40, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 49856, i32 noundef %reg.11.i) #12
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr1.i5.i = getelementptr i8, ptr %43, i32 256
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i5.i) #12, !srcloc !266
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i6.i = getelementptr i8, ptr %43, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i6.i, i32 noundef 49664, i32 noundef %45) #12
  %hwparams3.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 3
  %46 = ptrtoint ptr %hwparams3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hwparams3.i, align 4
  %48 = and i32 %47, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %48)
  %cond.i = icmp eq i32 %48, 12
  br i1 %cond.i, label %sw.bb.i, label %if.end.i.sw.epilog.i_crit_edge

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  %hsphy_interface.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 78
  %49 = ptrtoint ptr %hsphy_interface.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hsphy_interface.i, align 4
  %tobool94.not.i = icmp eq ptr %50, null
  br i1 %tobool94.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %land.lhs.true95.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

land.lhs.true95.i:                                ; preds = %sw.bb.i
  %call97.i = tail call i32 @strncmp(ptr noundef nonnull %50, ptr noundef nonnull dereferenceable(5) @.str.72, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %tobool98.not.i = icmp eq i32 %call97.i, 0
  br i1 %tobool98.not.i, label %if.then99.i, label %land.lhs.true103.i

if.then99.i:                                      ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #14
  %and100.i = and i32 %45, -17
  br label %sw.epilog.i

land.lhs.true103.i:                               ; preds = %land.lhs.true95.i
  %call105.i = tail call i32 @strncmp(ptr noundef nonnull %50, ptr noundef nonnull dereferenceable(5) @.str.73, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %tobool106.not.i = icmp eq i32 %call105.i, 0
  br i1 %tobool106.not.i, label %if.then107.i, label %land.lhs.true103.i.sw.epilog.i_crit_edge

land.lhs.true103.i.sw.epilog.i_crit_edge:         ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then107.i:                                     ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #14
  %or108.i = or i32 %45, 16
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %53 = tail call i32 @llvm.bswap.i32(i32 %or108.i) #12
  %add.ptr1.i8.i = getelementptr i8, ptr %52, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i, i32 %53) #12, !srcloc !269
  %add.ptr2.i9.i = getelementptr i8, ptr %52, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i9.i, i32 noundef 49664, i32 noundef %or108.i) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then107.i, %land.lhs.true103.i.sw.epilog.i_crit_edge, %if.then99.i, %sw.bb.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge
  %reg.12.i = phi i32 [ %45, %land.lhs.true103.i.sw.epilog.i_crit_edge ], [ %or108.i, %if.then107.i ], [ %and100.i, %if.then99.i ], [ %45, %if.end.i.sw.epilog.i_crit_edge ], [ %45, %sw.bb.i.sw.epilog.i_crit_edge ]
  %hsphy_mode.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 37
  %54 = ptrtoint ptr %hsphy_mode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hsphy_mode.i, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %55, label %sw.epilog.i.sw.epilog125.i_crit_edge [
    i32 1, label %sw.bb118.i
    i32 2, label %sw.bb121.i
  ]

sw.epilog.i.sw.epilog125.i_crit_edge:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog125.i

sw.bb118.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %and119.i = and i32 %reg.12.i, -15369
  %or120.i = or i32 %and119.i, 9216
  br label %sw.epilog125.i

sw.bb121.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %and122.i = and i32 %reg.12.i, -15369
  %or123.i = or i32 %and122.i, 5128
  br label %sw.epilog125.i

sw.epilog125.i:                                   ; preds = %sw.bb121.i, %sw.bb118.i, %sw.epilog.i.sw.epilog125.i_crit_edge
  %reg.13.i = phi i32 [ %reg.12.i, %sw.epilog.i.sw.epilog125.i_crit_edge ], [ %or123.i, %sw.bb121.i ], [ %or120.i, %sw.bb118.i ]
  %57 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %58)
  %cmp127.i = icmp eq i32 %58, 21811
  br i1 %cmp127.i, label %land.lhs.true131.i, label %sw.epilog125.i.if.then134.i_crit_edge

sw.epilog125.i.if.then134.i_crit_edge:            ; preds = %sw.epilog125.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then134.i

land.lhs.true131.i:                               ; preds = %sw.epilog125.i
  %revision129.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %59 = ptrtoint ptr %revision129.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %revision129.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429412171, i32 %60)
  %cmp133.i = icmp ult i32 %60, 1429412171
  br i1 %cmp133.i, label %land.lhs.true131.i.dwc3_phy_setup.exit_crit_edge, label %land.lhs.true131.i.if.then134.i_crit_edge

land.lhs.true131.i.if.then134.i_crit_edge:        ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then134.i

land.lhs.true131.i.dwc3_phy_setup.exit_crit_edge: ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_phy_setup.exit

if.then134.i:                                     ; preds = %land.lhs.true131.i.if.then134.i_crit_edge, %sw.epilog125.i.if.then134.i_crit_edge
  %or135.i = or i32 %reg.13.i, 64
  br label %dwc3_phy_setup.exit

dwc3_phy_setup.exit:                              ; preds = %if.then134.i, %land.lhs.true131.i.dwc3_phy_setup.exit_crit_edge
  %reg.14.i = phi i32 [ %reg.13.i, %land.lhs.true131.i.dwc3_phy_setup.exit_crit_edge ], [ %or135.i, %if.then134.i ]
  %and139.i = and i32 %reg.14.i, -65
  %spec.select1.i = select i1 %cmp6.i, i32 %and139.i, i32 %reg.14.i
  %61 = ptrtoint ptr %u2ss_inp3_quirk.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 6)
  %bf.load141.i = load i48, ptr %u2ss_inp3_quirk.i, align 4
  %62 = and i48 %bf.load141.i, 524288
  %tobool145.not.i = icmp eq i48 %62, 0
  %reg.16.i = select i1 %tobool145.not.i, i32 %spec.select1.i, i32 %and139.i
  %and155.i = and i32 %reg.16.i, -257
  %63 = trunc i48 %bf.load141.i to i32
  %64 = lshr i32 %63, 10
  %65 = and i32 %64, 256
  %66 = or i32 %and155.i, %65
  %reg.17.i = xor i32 %66, 256
  %67 = and i48 %bf.load141.i, 16384
  %tobool163.not.i = icmp eq i48 %67, 0
  %and165.i = and i32 %reg.17.i, -1073741825
  %reg.18.i = select i1 %tobool163.not.i, i32 %reg.17.i, i32 %and165.i
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %70 = tail call i32 @llvm.bswap.i32(i32 %reg.18.i) #12
  %add.ptr1.i11.i = getelementptr i8, ptr %69, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i11.i, i32 %70) #12, !srcloc !269
  %add.ptr2.i12.i = getelementptr i8, ptr %69, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i12.i, i32 noundef 49664, i32 noundef %reg.18.i) #12
  %ulpi_ready = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 29
  %71 = ptrtoint ptr %ulpi_ready to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ulpi_ready, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool1.not = icmp eq i8 %72, 0
  br i1 %tobool1.not, label %if.then2, label %dwc3_phy_setup.exit.if.end8_crit_edge

dwc3_phy_setup.exit.if.end8_crit_edge:            ; preds = %dwc3_phy_setup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then2:                                         ; preds = %dwc3_phy_setup.exit
  %73 = ptrtoint ptr %hwparams3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hwparams3.i, align 4
  %and.i314 = lshr i32 %74, 2
  %shr.i = and i32 %and.i314, 3
  %75 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %shr.i, label %if.then2.if.end6_crit_edge [
    i32 2, label %if.then2.dwc3_core_ulpi_init.exit_crit_edge
    i32 3, label %land.lhs.true.i
  ]

if.then2.dwc3_core_ulpi_init.exit_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_core_ulpi_init.exit

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true.i:                                  ; preds = %if.then2
  %hsphy_interface.i315 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 78
  %76 = ptrtoint ptr %hsphy_interface.i315 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hsphy_interface.i315, align 4
  %tobool.not.i = icmp eq ptr %77, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end6_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call.i = tail call i32 @strncmp(ptr noundef nonnull %77, ptr noundef nonnull dereferenceable(5) @.str.73, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.dwc3_core_ulpi_init.exit_crit_edge, label %land.lhs.true2.i.if.end6_crit_edge

land.lhs.true2.i.if.end6_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true2.i.dwc3_core_ulpi_init.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_core_ulpi_init.exit

dwc3_core_ulpi_init.exit:                         ; preds = %land.lhs.true2.i.dwc3_core_ulpi_init.exit_crit_edge, %if.then2.dwc3_core_ulpi_init.exit_crit_edge
  %call5.i = tail call i32 @dwc3_ulpi_init(ptr noundef %dwc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool4.not = icmp eq i32 %call5.i, 0
  br i1 %tobool4.not, label %dwc3_core_ulpi_init.exit.if.end6_crit_edge, label %dwc3_core_ulpi_init.exit.cleanup_crit_edge

dwc3_core_ulpi_init.exit.cleanup_crit_edge:       ; preds = %dwc3_core_ulpi_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

dwc3_core_ulpi_init.exit.if.end6_crit_edge:       ; preds = %dwc3_core_ulpi_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end6:                                          ; preds = %dwc3_core_ulpi_init.exit.if.end6_crit_edge, %land.lhs.true2.i.if.end6_crit_edge, %land.lhs.true.i.if.end6_crit_edge, %if.then2.if.end6_crit_edge
  %78 = ptrtoint ptr %ulpi_ready to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %ulpi_ready, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %dwc3_phy_setup.exit.if.end8_crit_edge
  %phys_ready = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 27
  %79 = ptrtoint ptr %phys_ready to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %phys_ready, align 4, !range !283
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool9.not = icmp eq i8 %80, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then10:                                        ; preds = %if.end8
  %dev1.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %81 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev1.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %82, i32 0, i32 27
  %83 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i318 = icmp eq ptr %84, null
  br i1 %tobool.not.i318, label %if.else.i, label %if.then.i320

if.then.i320:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %call.i319 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %82, ptr noundef nonnull @.str.74, i8 noundef zeroext 0) #12
  %usb2_phy.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 23
  %85 = ptrtoint ptr %usb2_phy.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i319, ptr %usb2_phy.i, align 4
  %call2.i = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %82, ptr noundef nonnull @.str.74, i8 noundef zeroext 1) #12
  br label %if.end.i322

if.else.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = tail call ptr @devm_usb_get_phy(ptr noundef %82, i32 noundef 1) #12
  %usb2_phy4.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 23
  %86 = ptrtoint ptr %usb2_phy4.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call3.i, ptr %usb2_phy4.i, align 4
  %call5.i321 = tail call ptr @devm_usb_get_phy(ptr noundef %82, i32 noundef 2) #12
  br label %if.end.i322

if.end.i322:                                      ; preds = %if.else.i, %if.then.i320
  %call2.sink.i = phi ptr [ %call5.i321, %if.else.i ], [ %call2.i, %if.then.i320 ]
  %87 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 24
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call2.sink.i, ptr %87, align 4
  %usb2_phy7.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 23
  %89 = ptrtoint ptr %usb2_phy7.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %usb2_phy7.i, align 4
  %cmp.i.i = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then9.i, label %if.end.i322.if.end18.i_crit_edge

if.end.i322.if.end18.i_crit_edge:                 ; preds = %if.end.i322
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then9.i:                                       ; preds = %if.end.i322
  %91 = ptrtoint ptr %90 to i32
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %91, label %if.else15.i [
    i32 -6, label %if.then9.i.if.then13.i_crit_edge
    i32 -19, label %if.then9.i.if.then13.i_crit_edge474
  ]

if.then9.i.if.then13.i_crit_edge474:              ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13.i

if.then9.i.if.then13.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.then9.i.if.then13.i_crit_edge, %if.then9.i.if.then13.i_crit_edge474
  %93 = ptrtoint ptr %usb2_phy7.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %usb2_phy7.i, align 4
  br label %if.end18.i

if.else15.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %82, i32 noundef %91, ptr noundef nonnull @.str.75) #12
  br label %dwc3_core_get_phy.exit

if.end18.i:                                       ; preds = %if.then13.i, %if.end.i322.if.end18.i_crit_edge
  %cmp.i104.i = icmp ugt ptr %call2.sink.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104.i, label %if.then21.i, label %if.end18.i.if.end32.i_crit_edge

if.end18.i.if.end32.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i

if.then21.i:                                      ; preds = %if.end18.i
  %94 = ptrtoint ptr %call2.sink.i to i32
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %94, label %if.else29.i [
    i32 -6, label %if.then21.i.if.then27.i_crit_edge
    i32 -19, label %if.then21.i.if.then27.i_crit_edge475
  ]

if.then21.i.if.then27.i_crit_edge475:             ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

if.then21.i.if.then27.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

if.then27.i:                                      ; preds = %if.then21.i.if.then27.i_crit_edge, %if.then21.i.if.then27.i_crit_edge475
  %96 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %87, align 4
  br label %if.end32.i

if.else29.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  %call30.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %82, i32 noundef %94, ptr noundef nonnull @.str.76) #12
  br label %dwc3_core_get_phy.exit

if.end32.i:                                       ; preds = %if.then27.i, %if.end18.i.if.end32.i_crit_edge
  %call33.i = tail call ptr @devm_phy_get(ptr noundef %82, ptr noundef nonnull @.str.77) #12
  %usb2_generic_phy.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 25
  %97 = ptrtoint ptr %usb2_generic_phy.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call33.i, ptr %usb2_generic_phy.i, align 4
  %cmp.i105.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105.i, label %if.then36.i, label %if.end32.i.if.end47.i_crit_edge

if.end32.i.if.end47.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.then36.i:                                      ; preds = %if.end32.i
  %98 = ptrtoint ptr %call33.i to i32
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %98, label %if.else44.i [
    i32 -38, label %if.then36.i.if.then42.i_crit_edge
    i32 -19, label %if.then36.i.if.then42.i_crit_edge476
  ]

if.then36.i.if.then42.i_crit_edge476:             ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42.i

if.then36.i.if.then42.i_crit_edge:                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42.i

if.then42.i:                                      ; preds = %if.then36.i.if.then42.i_crit_edge, %if.then36.i.if.then42.i_crit_edge476
  %100 = ptrtoint ptr %usb2_generic_phy.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %usb2_generic_phy.i, align 4
  br label %if.end47.i

if.else44.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  %call45.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %82, i32 noundef %98, ptr noundef nonnull @.str.75) #12
  br label %dwc3_core_get_phy.exit

if.end47.i:                                       ; preds = %if.then42.i, %if.end32.i.if.end47.i_crit_edge
  %call48.i = tail call ptr @devm_phy_get(ptr noundef %82, ptr noundef nonnull @.str.78) #12
  %usb3_generic_phy.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 26
  %101 = ptrtoint ptr %usb3_generic_phy.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call48.i, ptr %usb3_generic_phy.i, align 4
  %cmp.i106.i = icmp ugt ptr %call48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106.i, label %if.then51.i, label %if.end47.i.if.end14_crit_edge

if.end47.i.if.end14_crit_edge:                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then51.i:                                      ; preds = %if.end47.i
  %102 = ptrtoint ptr %call48.i to i32
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %102, label %if.else59.i [
    i32 -38, label %if.then51.i.if.then57.i_crit_edge
    i32 -19, label %if.then51.i.if.then57.i_crit_edge477
  ]

if.then51.i.if.then57.i_crit_edge477:             ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then57.i

if.then51.i.if.then57.i_crit_edge:                ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then57.i

if.then57.i:                                      ; preds = %if.then51.i.if.then57.i_crit_edge, %if.then51.i.if.then57.i_crit_edge477
  %104 = ptrtoint ptr %usb3_generic_phy.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %usb3_generic_phy.i, align 4
  br label %if.end14

if.else59.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  %call60.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %82, i32 noundef %102, ptr noundef nonnull @.str.76) #12
  br label %dwc3_core_get_phy.exit

dwc3_core_get_phy.exit:                           ; preds = %if.else59.i, %if.else44.i, %if.else29.i, %if.else15.i
  %retval.0.i = phi i32 [ %call60.i, %if.else59.i ], [ %call45.i, %if.else44.i ], [ %call30.i, %if.else29.i ], [ %call16.i, %if.else15.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool12.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool12.not, label %dwc3_core_get_phy.exit.if.end14_crit_edge, label %dwc3_core_get_phy.exit.err0a_crit_edge

dwc3_core_get_phy.exit.err0a_crit_edge:           ; preds = %dwc3_core_get_phy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err0a

dwc3_core_get_phy.exit.if.end14_crit_edge:        ; preds = %dwc3_core_get_phy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end14:                                         ; preds = %dwc3_core_get_phy.exit.if.end14_crit_edge, %if.then57.i, %if.end47.i.if.end14_crit_edge
  %105 = ptrtoint ptr %phys_ready to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %phys_ready, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.end8.if.end16_crit_edge
  %usb2_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 23
  %106 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %usb2_phy, align 4
  %tobool.not.i323 = icmp eq ptr %107, null
  br i1 %tobool.not.i323, label %if.end16.usb_phy_init.exit_crit_edge, label %land.lhs.true.i324

if.end16.usb_phy_init.exit_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_init.exit

land.lhs.true.i324:                               ; preds = %if.end16
  %init.i = getelementptr inbounds %struct.usb_phy, ptr %107, i32 0, i32 22
  %108 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %init.i, align 4
  %tobool1.not.i = icmp eq ptr %109, null
  br i1 %tobool1.not.i, label %land.lhs.true.i324.usb_phy_init.exit_crit_edge, label %if.then.i326

land.lhs.true.i324.usb_phy_init.exit_crit_edge:   ; preds = %land.lhs.true.i324
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_init.exit

if.then.i326:                                     ; preds = %land.lhs.true.i324
  call void @__sanitizer_cov_trace_pc() #14
  %call.i325 = tail call i32 %109(ptr noundef nonnull %107) #12
  br label %usb_phy_init.exit

usb_phy_init.exit:                                ; preds = %if.then.i326, %land.lhs.true.i324.usb_phy_init.exit_crit_edge, %if.end16.usb_phy_init.exit_crit_edge
  %usb3_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 24
  %110 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %usb3_phy, align 4
  %tobool.not.i327 = icmp eq ptr %111, null
  br i1 %tobool.not.i327, label %usb_phy_init.exit.usb_phy_init.exit333_crit_edge, label %land.lhs.true.i330

usb_phy_init.exit.usb_phy_init.exit333_crit_edge: ; preds = %usb_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_init.exit333

land.lhs.true.i330:                               ; preds = %usb_phy_init.exit
  %init.i328 = getelementptr inbounds %struct.usb_phy, ptr %111, i32 0, i32 22
  %112 = ptrtoint ptr %init.i328 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %init.i328, align 4
  %tobool1.not.i329 = icmp eq ptr %113, null
  br i1 %tobool1.not.i329, label %land.lhs.true.i330.usb_phy_init.exit333_crit_edge, label %if.then.i332

land.lhs.true.i330.usb_phy_init.exit333_crit_edge: ; preds = %land.lhs.true.i330
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_init.exit333

if.then.i332:                                     ; preds = %land.lhs.true.i330
  call void @__sanitizer_cov_trace_pc() #14
  %call.i331 = tail call i32 %113(ptr noundef nonnull %111) #12
  br label %usb_phy_init.exit333

usb_phy_init.exit333:                             ; preds = %if.then.i332, %land.lhs.true.i330.usb_phy_init.exit333_crit_edge, %usb_phy_init.exit.usb_phy_init.exit333_crit_edge
  %usb2_generic_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 25
  %114 = ptrtoint ptr %usb2_generic_phy to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %usb2_generic_phy, align 4
  %call19 = tail call i32 @phy_init(ptr noundef %115) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %usb_phy_init.exit333.err0a_crit_edge, label %if.end21

usb_phy_init.exit333.err0a_crit_edge:             ; preds = %usb_phy_init.exit333
  call void @__sanitizer_cov_trace_pc() #14
  br label %err0a

if.end21:                                         ; preds = %usb_phy_init.exit333
  %usb3_generic_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 26
  %116 = ptrtoint ptr %usb3_generic_phy to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %usb3_generic_phy, align 4
  %call22 = tail call i32 @phy_init(ptr noundef %117) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.err0a.sink.split_crit_edge, label %if.end27

if.end21.err0a.sink.split_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %err0a.sink.split

if.end27:                                         ; preds = %if.end21
  %call28 = tail call fastcc i32 @dwc3_core_soft_reset(ptr noundef %dwc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.err1_crit_edge

if.end27.err1_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp32 = icmp eq i32 %and, 2
  br i1 %cmp32, label %land.lhs.true, label %if.end31.if.end57_crit_edge

if.end31.if.end57_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end31
  %118 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %119)
  %cmp33 = icmp eq i32 %119, 21811
  br i1 %cmp33, label %land.lhs.true36, label %land.lhs.true.if.then39_crit_edge

land.lhs.true.if.then39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

land.lhs.true36:                                  ; preds = %land.lhs.true
  %revision = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %120 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429412171, i32 %121)
  %cmp38 = icmp ult i32 %121, 1429412171
  br i1 %cmp38, label %land.lhs.true36.if.end57_crit_edge, label %land.lhs.true36.if.then39_crit_edge

land.lhs.true36.if.then39_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

land.lhs.true36.if.end57_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then39:                                        ; preds = %land.lhs.true36.if.then39_crit_edge, %land.lhs.true.if.then39_crit_edge
  %122 = ptrtoint ptr %u2ss_inp3_quirk.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 6)
  %bf.load = load i48, ptr %u2ss_inp3_quirk.i, align 4
  %123 = and i48 %bf.load, 1048576
  %tobool40.not = icmp eq i48 %123, 0
  br i1 %tobool40.not, label %if.then41, label %if.then39.if.end45_crit_edge

if.then39.if.end45_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs, align 4
  %add.ptr1.i335 = getelementptr i8, ptr %125, i32 448
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i335) #12, !srcloc !266
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i = getelementptr i8, ptr %125, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 49856, i32 noundef %127) #12
  %or = or i32 %127, 131072
  %128 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs, align 4
  tail call fastcc void @dwc3_writel(ptr noundef %129, i32 noundef 49856, i32 noundef %or)
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.then39.if.end45_crit_edge
  %130 = ptrtoint ptr %u2ss_inp3_quirk.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 6)
  %bf.load46 = load i48, ptr %u2ss_inp3_quirk.i, align 4
  %131 = and i48 %bf.load46, 524288
  %tobool50.not = icmp eq i48 %131, 0
  br i1 %tobool50.not, label %if.then51, label %if.end45.if.end57_crit_edge

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs, align 4
  %add.ptr1.i337 = getelementptr i8, ptr %133, i32 256
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i337) #12, !srcloc !266
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i338 = getelementptr i8, ptr %133, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i338, i32 noundef 49664, i32 noundef %135) #12
  %or54 = or i32 %135, 64
  %136 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs, align 4
  tail call fastcc void @dwc3_writel(ptr noundef %137, i32 noundef 49664, i32 noundef %or54)
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.end45.if.end57_crit_edge, %land.lhs.true36.if.end57_crit_edge, %if.end31.if.end57_crit_edge
  %hwparams41.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 4
  %138 = ptrtoint ptr %hwparams41.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %hwparams41.i, align 4
  %140 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs, align 4
  %add.ptr1.i.i340 = getelementptr i8, ptr %141, i32 16
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i340) #12, !srcloc !266
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i.i341 = getelementptr i8, ptr %141, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i341, i32 noundef 49424, i32 noundef %143) #12
  %and.i342 = and i32 %143, -49
  %hwparams1.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 1
  %144 = ptrtoint ptr %hwparams1.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %hwparams1.i, align 4
  %and3.i = lshr i32 %145, 24
  %shr.i343 = and i32 %and3.i, 3
  %146 = zext i32 %shr.i343 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %shr.i343, label %if.end57.sw.epilog.i354_crit_edge [
    i32 1, label %sw.bb.i344
    i32 2, label %sw.bb13.i
  ]

if.end57.sw.epilog.i354_crit_edge:                ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i354

sw.bb.i344:                                       ; preds = %if.end57
  %dr_mode.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 32
  %147 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %dr_mode.i, align 4
  %149 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %148, label %sw.bb.i344.if.else.i351_crit_edge [
    i32 1, label %sw.bb.i344.land.lhs.true.i347_crit_edge
    i32 3, label %sw.bb.i344.land.lhs.true.i347_crit_edge478
  ]

sw.bb.i344.land.lhs.true.i347_crit_edge478:       ; preds = %sw.bb.i344
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i347

sw.bb.i344.land.lhs.true.i347_crit_edge:          ; preds = %sw.bb.i344
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i347

sw.bb.i344.if.else.i351_crit_edge:                ; preds = %sw.bb.i344
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i351

land.lhs.true.i347:                               ; preds = %sw.bb.i344.land.lhs.true.i347_crit_edge, %sw.bb.i344.land.lhs.true.i347_crit_edge478
  %150 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %151)
  %cmp6.i346 = icmp eq i32 %151, 21811
  br i1 %cmp6.i346, label %land.lhs.true7.i, label %land.lhs.true.i347.if.else.i351_crit_edge

land.lhs.true.i347.if.else.i351_crit_edge:        ; preds = %land.lhs.true.i347
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i351

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i347
  %revision.i348 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %152 = ptrtoint ptr %revision.i348 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %revision.i348, align 4
  %154 = add i32 %153, -1429414154
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %154)
  %155 = icmp ult i32 %154, 1025
  br i1 %155, label %if.then.i350, label %land.lhs.true7.i.if.else.i351_crit_edge

land.lhs.true7.i.if.else.i351_crit_edge:          ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i351

if.then.i350:                                     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i349 = or i32 %and.i342, 1025
  br label %sw.epilog.i354

if.else.i351:                                     ; preds = %land.lhs.true7.i.if.else.i351_crit_edge, %land.lhs.true.i347.if.else.i351_crit_edge, %sw.bb.i344.if.else.i351_crit_edge
  %and12.i = and i32 %143, -50
  br label %sw.epilog.i354

sw.bb13.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %and14.i = lshr i32 %139, 13
  %shr15.i = and i32 %and14.i, 15
  %nr_scratch.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 48
  %156 = ptrtoint ptr %nr_scratch.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %shr15.i, ptr %nr_scratch.i, align 4
  %or16.i = or i32 %and.i342, 2
  br label %sw.epilog.i354

sw.epilog.i354:                                   ; preds = %sw.bb13.i, %if.else.i351, %if.then.i350, %if.end57.sw.epilog.i354_crit_edge
  %reg.0.i352 = phi i32 [ %and.i342, %if.end57.sw.epilog.i354_crit_edge ], [ %or16.i, %sw.bb13.i ], [ %or.i349, %if.then.i350 ], [ %and12.i, %if.else.i351 ]
  %hwparams6.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 6
  %157 = ptrtoint ptr %hwparams6.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %hwparams6.i, align 4
  %and18.i = and i32 %158, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not.i353 = icmp eq i32 %and18.i, 0
  br i1 %tobool.not.i353, label %sw.epilog.i354.if.end20.i_crit_edge, label %do.end.i

sw.epilog.i354.if.end20.i_crit_edge:              ; preds = %sw.epilog.i354
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

do.end.i:                                         ; preds = %sw.epilog.i354
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %159 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %160, ptr noundef nonnull @.str.79) #15
  %161 = ptrtoint ptr %u2ss_inp3_quirk.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 6)
  %bf.load.i355 = load i48, ptr %u2ss_inp3_quirk.i, align 4
  %bf.set.i = or i48 %bf.load.i355, 274877906944
  store i48 %bf.set.i, ptr %u2ss_inp3_quirk.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %sw.epilog.i354.if.end20.i_crit_edge
  %162 = ptrtoint ptr %u2ss_inp3_quirk.i to i32
  call void @__asan_loadN_noabort(i32 %162, i32 6)
  %bf.load21.i = load i48, ptr %u2ss_inp3_quirk.i, align 4
  %163 = and i48 %bf.load21.i, 275146342400
  %164 = icmp eq i48 %163, 268435456
  br i1 %164, label %land.rhs33.i, label %if.end20.i.if.end65.i_crit_edge

if.end20.i.if.end65.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

land.rhs33.i:                                     ; preds = %if.end20.i
  %.b139.i = load i1, ptr @dwc3_core_setup_global_control.__already_done, align 1
  br i1 %.b139.i, label %land.rhs33.i.if.end65.i_crit_edge, label %if.then40.i, !prof !271

land.rhs33.i.if.end65.i_crit_edge:                ; preds = %land.rhs33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

if.then40.i:                                      ; preds = %land.rhs33.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dwc3_core_setup_global_control.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 836, i32 noundef 9, ptr noundef nonnull @.str.82) #12
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then40.i, %land.rhs33.i.if.end65.i_crit_edge, %if.end20.i.if.end65.i_crit_edge
  %165 = ptrtoint ptr %u2ss_inp3_quirk.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 6)
  %bf.load74.i = load i48, ptr %u2ss_inp3_quirk.i, align 4
  %166 = and i48 %bf.load74.i, 275146342400
  %.not.i = icmp eq i48 %166, 275146342400
  %and89.i = and i32 %reg.0.i352, -9
  %masksel.i = select i1 %.not.i, i32 8, i32 0
  %reg.1.i = or i32 %masksel.i, %and89.i
  %167 = trunc i48 %bf.load74.i to i32
  %168 = lshr i32 %167, 25
  %169 = and i32 %168, 4
  %170 = or i32 %reg.1.i, %169
  %171 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %172)
  %cmp100.i = icmp eq i32 %172, 21811
  br i1 %cmp100.i, label %land.lhs.true101.i, label %if.end65.i.dwc3_core_setup_global_control.exit_crit_edge

if.end65.i.dwc3_core_setup_global_control.exit_crit_edge: ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_core_setup_global_control.exit

land.lhs.true101.i:                               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  %revision102.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %173 = ptrtoint ptr %revision102.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %revision102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429412106, i32 %174)
  %cmp103.i = icmp ult i32 %174, 1429412106
  %or105.i = or i32 %170, 65536
  %spec.select.i356 = select i1 %cmp103.i, i32 %or105.i, i32 %170
  br label %dwc3_core_setup_global_control.exit

dwc3_core_setup_global_control.exit:              ; preds = %land.lhs.true101.i, %if.end65.i.dwc3_core_setup_global_control.exit_crit_edge
  %reg.3.i = phi i32 [ %170, %if.end65.i.dwc3_core_setup_global_control.exit_crit_edge ], [ %spec.select.i356, %land.lhs.true101.i ]
  %175 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %177 = tail call i32 @llvm.bswap.i32(i32 %reg.3.i) #12
  %add.ptr1.i143.i = getelementptr i8, ptr %176, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i143.i, i32 %177) #12, !srcloc !269
  %add.ptr2.i.i357 = getelementptr i8, ptr %176, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i357, i32 noundef 49424, i32 noundef %reg.3.i) #12
  %178 = ptrtoint ptr %hwparams3.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %hwparams3.i, align 4
  %and.i359 = lshr i32 %179, 12
  %180 = trunc i32 %and.i359 to i8
  %conv.i = and i8 %180, 63
  %num_eps.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 65
  %181 = ptrtoint ptr %num_eps.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %conv.i, ptr %num_eps.i, align 1
  %182 = ptrtoint ptr %u2ss_inp3_quirk.i to i32
  call void @__asan_loadN_noabort(i32 %182, i32 6)
  %bf.load.i360 = load i48, ptr %u2ss_inp3_quirk.i, align 4
  %183 = and i48 %bf.load.i360, 4398046511104
  %tobool.not.i361 = icmp eq i48 %183, 0
  br i1 %tobool.not.i361, label %dwc3_core_setup_global_control.exit.if.end61_crit_edge, label %if.end.i364

dwc3_core_setup_global_control.exit.if.end61_crit_edge: ; preds = %dwc3_core_setup_global_control.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end.i364:                                      ; preds = %dwc3_core_setup_global_control.exit
  %nr_scratch.i362 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 48
  %184 = ptrtoint ptr %nr_scratch.i362 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %nr_scratch.i362, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool1.not.i363 = icmp eq i32 %185, 0
  br i1 %tobool1.not.i363, label %if.end.i364.if.end61_crit_edge, label %if.end3.i

if.end.i364.if.end61_crit_edge:                   ; preds = %if.end.i364
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end3.i:                                        ; preds = %if.end.i364
  %scratchbuf.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 3
  %186 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %scratchbuf.i, align 4
  %tobool4.not.i365 = icmp eq ptr %187, null
  br i1 %tobool4.not.i365, label %if.end3.i.if.end61_crit_edge, label %do.end.i367, !prof !271

if.end3.i.if.end61_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

do.end.i367:                                      ; preds = %if.end3.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 506, i32 noundef 9, ptr noundef null) #12
  %sysdev.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 13
  %188 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %sysdev.i, align 4
  %190 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %scratchbuf.i, align 4
  %192 = ptrtoint ptr %nr_scratch.i362 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %nr_scratch.i362, align 4
  %mul.i = shl i32 %193, 12
  %call.i366 = tail call fastcc i32 @dma_map_single_attrs(ptr noundef %189, ptr noundef %191, i32 noundef %mul.i) #12
  %194 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %sysdev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %195, i32 noundef %call.i366) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i366)
  %cmp.i.not.i = icmp eq i32 %call.i366, -1
  br i1 %cmp.i.not.i, label %do.end37.i, label %if.end39.i

do.end37.i:                                       ; preds = %do.end.i367
  call void @__sanitizer_cov_trace_pc() #14
  %196 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %sysdev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.83) #15
  br label %err1

if.end39.i:                                       ; preds = %do.end.i367
  %scratch_addr40.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 7
  %198 = ptrtoint ptr %scratch_addr40.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %call.i366, ptr %scratch_addr40.i, align 4
  %call41.i = tail call i32 @dwc3_send_gadget_generic_command(ptr noundef %dwc, i32 noundef 4, i32 noundef %call.i366) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp.i368 = icmp slt i32 %call41.i, 0
  br i1 %cmp.i368, label %if.end39.i.err1.i_crit_edge, label %if.end43.i

if.end39.i.err1.i_crit_edge:                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1.i

if.end43.i:                                       ; preds = %if.end39.i
  %call45.i369 = tail call i32 @dwc3_send_gadget_generic_command(ptr noundef %dwc, i32 noundef 5, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i369)
  %cmp46.i = icmp slt i32 %call45.i369, 0
  br i1 %cmp46.i, label %if.end43.i.err1.i_crit_edge, label %if.end43.i.if.end61_crit_edge

if.end43.i.if.end61_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end43.i.err1.i_crit_edge:                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1.i

err1.i:                                           ; preds = %if.end43.i.err1.i_crit_edge, %if.end39.i.err1.i_crit_edge
  %ret.0.i370 = phi i32 [ %call41.i, %if.end39.i.err1.i_crit_edge ], [ %call45.i369, %if.end43.i.err1.i_crit_edge ]
  %199 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %sysdev.i, align 4
  %201 = ptrtoint ptr %scratch_addr40.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %scratch_addr40.i, align 4
  %203 = ptrtoint ptr %nr_scratch.i362 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %nr_scratch.i362, align 4
  %mul52.i = shl i32 %204, 12
  tail call void @dma_unmap_page_attrs(ptr noundef %200, i32 noundef %202, i32 noundef %mul52.i, i32 noundef 0, i32 noundef 0) #12
  br label %err1

if.end61:                                         ; preds = %if.end43.i.if.end61_crit_edge, %if.end3.i.if.end61_crit_edge, %if.end.i364.if.end61_crit_edge, %dwc3_core_setup_global_control.exit.if.end61_crit_edge
  %205 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %206)
  %cmp.i373 = icmp eq i32 %206, 21811
  br i1 %cmp.i373, label %land.lhs.true.i375, label %if.end61.if.end.i376_crit_edge

if.end61.if.end.i376_crit_edge:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i376

land.lhs.true.i375:                               ; preds = %if.end61
  %revision.i374 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %207 = ptrtoint ptr %revision.i374 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %revision.i374, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429415178, i32 %208)
  %cmp1.i = icmp ult i32 %208, 1429415178
  br i1 %cmp1.i, label %land.lhs.true.i375.dwc3_frame_length_adjustment.exit_crit_edge, label %land.lhs.true.i375.if.end.i376_crit_edge

land.lhs.true.i375.if.end.i376_crit_edge:         ; preds = %land.lhs.true.i375
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i376

land.lhs.true.i375.dwc3_frame_length_adjustment.exit_crit_edge: ; preds = %land.lhs.true.i375
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_frame_length_adjustment.exit

if.end.i376:                                      ; preds = %land.lhs.true.i375.if.end.i376_crit_edge, %if.end61.if.end.i376_crit_edge
  %fladj.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 41
  %209 = ptrtoint ptr %fladj.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %fladj.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp2.i = icmp eq i32 %210, 0
  br i1 %cmp2.i, label %if.end.i376.dwc3_frame_length_adjustment.exit_crit_edge, label %if.end4.i

if.end.i376.dwc3_frame_length_adjustment.exit_crit_edge: ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_frame_length_adjustment.exit

if.end4.i:                                        ; preds = %if.end.i376
  %211 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regs, align 4
  %add.ptr1.i.i378 = getelementptr i8, ptr %212, i32 1328
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i378) #12, !srcloc !266
  %214 = tail call i32 @llvm.bswap.i32(i32 %213) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i.i379 = getelementptr i8, ptr %212, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i379, i32 noundef 50736, i32 noundef %214) #12
  %and.i380 = and i32 %214, 63
  %215 = ptrtoint ptr %fladj.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %fladj.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i380, i32 %216)
  %cmp6.not.i = icmp eq i32 %and.i380, %216
  br i1 %cmp6.not.i, label %if.end4.i.dwc3_frame_length_adjustment.exit_crit_edge, label %if.then7.i

if.end4.i.dwc3_frame_length_adjustment.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_frame_length_adjustment.exit

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %and8.i381 = and i32 %214, -192
  %or.i382 = or i32 %and8.i381, %216
  %or10.i = or i32 %or.i382, 128
  %217 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %219 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #12
  %add.ptr1.i24.i = getelementptr i8, ptr %218, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i24.i, i32 %219) #12, !srcloc !269
  %add.ptr2.i.i383 = getelementptr i8, ptr %218, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i383, i32 noundef 50736, i32 noundef %or10.i) #12
  br label %dwc3_frame_length_adjustment.exit

dwc3_frame_length_adjustment.exit:                ; preds = %if.then7.i, %if.end4.i.dwc3_frame_length_adjustment.exit_crit_edge, %if.end.i376.dwc3_frame_length_adjustment.exit_crit_edge, %land.lhs.true.i375.dwc3_frame_length_adjustment.exit_crit_edge
  %ref_clk_per.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 42
  %220 = ptrtoint ptr %ref_clk_per.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %ref_clk_per.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %cmp.i384 = icmp eq i32 %221, 0
  br i1 %cmp.i384, label %dwc3_frame_length_adjustment.exit.dwc3_ref_clk_period.exit_crit_edge, label %if.end.i390

dwc3_frame_length_adjustment.exit.dwc3_ref_clk_period.exit_crit_edge: ; preds = %dwc3_frame_length_adjustment.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_ref_clk_period.exit

if.end.i390:                                      ; preds = %dwc3_frame_length_adjustment.exit
  call void @__sanitizer_cov_trace_pc() #14
  %222 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regs, align 4
  %add.ptr1.i.i386 = getelementptr i8, ptr %223, i32 44
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i386) #12, !srcloc !266
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i.i387 = getelementptr i8, ptr %223, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i387, i32 noundef 49452, i32 noundef %225) #12
  %226 = ptrtoint ptr %ref_clk_per.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %ref_clk_per.i, align 4
  %and.i391 = and i32 %225, 4194303
  %shl.i392 = shl i32 %227, 22
  %or.i393 = or i32 %shl.i392, %and.i391
  %228 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %230 = tail call i32 @llvm.bswap.i32(i32 %or.i393) #12
  %add.ptr1.i29.i = getelementptr i8, ptr %229, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i29.i, i32 %230) #12, !srcloc !269
  %add.ptr2.i.i394 = getelementptr i8, ptr %229, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i394, i32 noundef 49452, i32 noundef %or.i393) #12
  br label %dwc3_ref_clk_period.exit

dwc3_ref_clk_period.exit:                         ; preds = %if.end.i390, %dwc3_frame_length_adjustment.exit.dwc3_ref_clk_period.exit_crit_edge
  %dev1.i395 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %231 = ptrtoint ptr %dev1.i395 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev1.i395, align 4
  %233 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %regs, align 4
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #12, !srcloc !266
  %236 = tail call i32 @llvm.bswap.i32(i32 %235) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i.i397 = getelementptr i8, ptr %234, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i397, i32 noundef 49408, i32 noundef %236) #12
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %232, ptr noundef nonnull @.str.87, ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i398 = icmp slt i32 %call.i.i, 1
  br i1 %cmp.i398, label %dwc3_ref_clk_period.exit.dwc3_set_incr_burst_type.exit_crit_edge, label %if.end.i399

dwc3_ref_clk_period.exit.dwc3_set_incr_burst_type.exit_crit_edge: ; preds = %dwc3_ref_clk_period.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dwc3_set_incr_burst_type.exit

if.end.i399:                                      ; preds = %dwc3_ref_clk_period.exit
  %237 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i.i, i32 4) #12
  %238 = extractvalue { i32, i1 } %237, 1
  br i1 %238, label %if.end.i399.do.end.i401_crit_edge, label %if.end7.i.i.i, !prof !282

if.end.i399.do.end.i401_crit_edge:                ; preds = %if.end.i399
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i401

if.end7.i.i.i:                                    ; preds = %if.end.i399
  %239 = extractvalue { i32, i1 } %237, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %239, i32 noundef 3520) #16
  %tobool.not.i400 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i400, label %if.end7.i.i.i.do.end.i401_crit_edge, label %if.end5.i

if.end7.i.i.i.do.end.i401_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i401

do.end.i401:                                      ; preds = %if.end7.i.i.i.do.end.i401_crit_edge, %if.end.i399.do.end.i401_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %232, ptr noundef nonnull @.str.88) #15
  br label %dwc3_set_incr_burst_type.exit

if.end5.i:                                        ; preds = %if.end7.i.i.i
  %call6.i = tail call i32 @device_property_read_u32_array(ptr noundef %232, ptr noundef nonnull @.str.87, ptr noundef nonnull %call8.i.i.i, i32 noundef %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end12.i, label %if.then8.i402

if.then8.i402:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %232, ptr noundef nonnull @.str.91) #15
  br label %dwc3_set_incr_burst_type.exit

if.end12.i:                                       ; preds = %if.end5.i
  %240 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %call8.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp13.i = icmp ugt i32 %call.i.i, 1
  br i1 %cmp13.i, label %if.end12.i.for.body.i_crit_edge, label %if.end12.i.if.end20.i405_crit_edge

if.end12.i.if.end20.i405_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i405

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end12.i.for.body.i_crit_edge
  %i.088.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end12.i.for.body.i_crit_edge ]
  %incrx_size.087.i = phi i32 [ %244, %for.body.i.for.body.i_crit_edge ], [ %241, %if.end12.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.088.i
  %242 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx.i, align 4
  %244 = tail call i32 @llvm.umax.i32(i32 %243, i32 %incrx_size.087.i) #12
  %inc.i = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i.i
  br i1 %exitcond.not.i, label %for.body.i.if.end20.i405_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.if.end20.i405_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i405

if.end20.i405:                                    ; preds = %for.body.i.if.end20.i405_crit_edge, %if.end12.i.if.end20.i405_crit_edge
  %incrx_size.2.i = phi i32 [ %241, %if.end12.i.if.end20.i405_crit_edge ], [ %244, %for.body.i.if.end20.i405_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #12
  %and.i403 = and i32 %236, -256
  %or.i404 = zext i1 %cmp13.i to i32
  %spec.select77.i = or i32 %and.i403, %or.i404
  %245 = zext i32 %incrx_size.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %245, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %incrx_size.2.i, label %do.end39.i [
    i32 256, label %sw.bb.i406
    i32 128, label %sw.bb25.i
    i32 64, label %sw.bb27.i
    i32 32, label %sw.bb29.i
    i32 16, label %sw.bb31.i
    i32 8, label %sw.bb33.i
    i32 4, label %sw.bb35.i
    i32 1, label %if.end20.i405.sw.epilog.i408_crit_edge
  ]

if.end20.i405.sw.epilog.i408_crit_edge:           ; preds = %if.end20.i405
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i408

sw.bb.i406:                                       ; preds = %if.end20.i405
  call void @__sanitizer_cov_trace_pc() #14
  %or24.i = or i32 %spec.select77.i, 128
  br label %sw.epilog.i408

sw.bb25.i:                                        ; preds = %if.end20.i405
  call void @__sanitizer_cov_trace_pc() #14
  %or26.i = or i32 %spec.select77.i, 64
  br label %sw.epilog.i408

sw.bb27.i:                                        ; preds = %if.end20.i405
  call void @__sanitizer_cov_trace_pc() #14
  %or28.i = or i32 %spec.select77.i, 32
  br label %sw.epilog.i408

sw.bb29.i:                                        ; preds = %if.end20.i405
  call void @__sanitizer_cov_trace_pc() #14
  %or30.i = or i32 %spec.select77.i, 16
  br label %sw.epilog.i408

sw.bb31.i:                                        ; preds = %if.end20.i405
  call void @__sanitizer_cov_trace_pc() #14
  %or32.i = or i32 %spec.select77.i, 8
  br label %sw.epilog.i408

sw.bb33.i:                                        ; preds = %if.end20.i405
  call void @__sanitizer_cov_trace_pc() #14
  %or34.i = or i32 %spec.select77.i, 4
  br label %sw.epilog.i408

sw.bb35.i:                                        ; preds = %if.end20.i405
  call void @__sanitizer_cov_trace_pc() #14
  %or36.i = or i32 %spec.select77.i, 2
  br label %sw.epilog.i408

do.end39.i:                                       ; preds = %if.end20.i405
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %232, ptr noundef nonnull @.str.94) #15
  br label %sw.epilog.i408

sw.epilog.i408:                                   ; preds = %do.end39.i, %sw.bb35.i, %sw.bb33.i, %sw.bb31.i, %sw.bb29.i, %sw.bb27.i, %sw.bb25.i, %sw.bb.i406, %if.end20.i405.sw.epilog.i408_crit_edge
  %cfg.1.i = phi i32 [ %spec.select77.i, %do.end39.i ], [ %spec.select77.i, %if.end20.i405.sw.epilog.i408_crit_edge ], [ %or36.i, %sw.bb35.i ], [ %or34.i, %sw.bb33.i ], [ %or32.i, %sw.bb31.i ], [ %or30.i, %sw.bb29.i ], [ %or28.i, %sw.bb27.i ], [ %or26.i, %sw.bb25.i ], [ %or24.i, %sw.bb.i406 ]
  %246 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %248 = tail call i32 @llvm.bswap.i32(i32 %cfg.1.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 %248) #12, !srcloc !269
  %add.ptr2.i.i407 = getelementptr i8, ptr %247, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i407, i32 noundef 49408, i32 noundef %cfg.1.i) #12
  br label %dwc3_set_incr_burst_type.exit

dwc3_set_incr_burst_type.exit:                    ; preds = %sw.epilog.i408, %if.then8.i402, %do.end.i401, %dwc3_ref_clk_period.exit.dwc3_set_incr_burst_type.exit_crit_edge
  %249 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %usb2_phy, align 4
  %tobool.not.i409 = icmp eq ptr %250, null
  br i1 %tobool.not.i409, label %dwc3_set_incr_burst_type.exit.usb_phy_set_suspend.exit_crit_edge, label %land.lhs.true.i410

dwc3_set_incr_burst_type.exit.usb_phy_set_suspend.exit_crit_edge: ; preds = %dwc3_set_incr_burst_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit

land.lhs.true.i410:                               ; preds = %dwc3_set_incr_burst_type.exit
  %set_suspend.i = getelementptr inbounds %struct.usb_phy, ptr %250, i32 0, i32 26
  %251 = ptrtoint ptr %set_suspend.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %set_suspend.i, align 4
  %cmp.not.i = icmp eq ptr %252, null
  br i1 %cmp.not.i, label %land.lhs.true.i410.usb_phy_set_suspend.exit_crit_edge, label %if.then.i412

land.lhs.true.i410.usb_phy_set_suspend.exit_crit_edge: ; preds = %land.lhs.true.i410
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit

if.then.i412:                                     ; preds = %land.lhs.true.i410
  call void @__sanitizer_cov_trace_pc() #14
  %call.i411 = tail call i32 %252(ptr noundef nonnull %250, i32 noundef 0) #12
  br label %usb_phy_set_suspend.exit

usb_phy_set_suspend.exit:                         ; preds = %if.then.i412, %land.lhs.true.i410.usb_phy_set_suspend.exit_crit_edge, %dwc3_set_incr_burst_type.exit.usb_phy_set_suspend.exit_crit_edge
  %253 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %usb3_phy, align 4
  %tobool.not.i413 = icmp eq ptr %254, null
  br i1 %tobool.not.i413, label %usb_phy_set_suspend.exit.usb_phy_set_suspend.exit419_crit_edge, label %land.lhs.true.i416

usb_phy_set_suspend.exit.usb_phy_set_suspend.exit419_crit_edge: ; preds = %usb_phy_set_suspend.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit419

land.lhs.true.i416:                               ; preds = %usb_phy_set_suspend.exit
  %set_suspend.i414 = getelementptr inbounds %struct.usb_phy, ptr %254, i32 0, i32 26
  %255 = ptrtoint ptr %set_suspend.i414 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %set_suspend.i414, align 4
  %cmp.not.i415 = icmp eq ptr %256, null
  br i1 %cmp.not.i415, label %land.lhs.true.i416.usb_phy_set_suspend.exit419_crit_edge, label %if.then.i418

land.lhs.true.i416.usb_phy_set_suspend.exit419_crit_edge: ; preds = %land.lhs.true.i416
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit419

if.then.i418:                                     ; preds = %land.lhs.true.i416
  call void @__sanitizer_cov_trace_pc() #14
  %call.i417 = tail call i32 %256(ptr noundef nonnull %254, i32 noundef 0) #12
  br label %usb_phy_set_suspend.exit419

usb_phy_set_suspend.exit419:                      ; preds = %if.then.i418, %land.lhs.true.i416.usb_phy_set_suspend.exit419_crit_edge, %usb_phy_set_suspend.exit.usb_phy_set_suspend.exit419_crit_edge
  %257 = ptrtoint ptr %usb2_generic_phy to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %usb2_generic_phy, align 4
  %call67 = tail call i32 @phy_power_on(ptr noundef %258) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %usb_phy_set_suspend.exit419.err2_crit_edge, label %if.end70

usb_phy_set_suspend.exit419.err2_crit_edge:       ; preds = %usb_phy_set_suspend.exit419
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2

if.end70:                                         ; preds = %usb_phy_set_suspend.exit419
  %259 = ptrtoint ptr %usb3_generic_phy to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %usb3_generic_phy, align 4
  %call72 = tail call i32 @phy_power_on(ptr noundef %260) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %err3, label %if.end75

if.end75:                                         ; preds = %if.end70
  %call76 = tail call i32 @dwc3_event_buffers_setup(ptr noundef %dwc)
  %261 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %262)
  %cmp81 = icmp eq i32 %262, 21811
  br i1 %cmp81, label %land.lhs.true82, label %if.end75.if.then96_crit_edge

if.end75.if.then96_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then96

land.lhs.true82:                                  ; preds = %if.end75
  %revision83 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %263 = ptrtoint ptr %revision83 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %revision83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429418249, i32 %264)
  %cmp84 = icmp ugt i32 %264, 1429418249
  br i1 %cmp84, label %if.then85, label %land.lhs.true82.if.end90_crit_edge

land.lhs.true82.if.end90_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then85:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #14
  %265 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regs, align 4
  %add.ptr1.i421 = getelementptr i8, ptr %266, i32 156
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i421) #12, !srcloc !266
  %268 = tail call i32 @llvm.bswap.i32(i32 %267) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i422 = getelementptr i8, ptr %266, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i422, i32 noundef 49564, i32 noundef %268) #12
  %or88 = or i32 %268, 16384
  %269 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regs, align 4
  tail call fastcc void @dwc3_writel(ptr noundef %270, i32 noundef 49564, i32 noundef %or88)
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %land.lhs.true82.if.end90_crit_edge
  %271 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %.pr = load i32, ptr %ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %.pr)
  %cmp92 = icmp eq i32 %.pr, 21811
  br i1 %cmp92, label %land.lhs.true93, label %if.end90.if.then96_crit_edge

if.end90.if.then96_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then96

land.lhs.true93:                                  ; preds = %if.end90
  %272 = ptrtoint ptr %revision83 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %revision83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429415178, i32 %273)
  %cmp95 = icmp ult i32 %273, 1429415178
  br i1 %cmp95, label %land.lhs.true93.if.end132_crit_edge, label %land.lhs.true93.if.then96_crit_edge

land.lhs.true93.if.then96_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then96

land.lhs.true93.if.end132_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.then96:                                        ; preds = %land.lhs.true93.if.then96_crit_edge, %if.end90.if.then96_crit_edge, %if.end75.if.then96_crit_edge
  %274 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %regs, align 4
  %add.ptr1.i424 = getelementptr i8, ptr %275, i32 28
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i424) #12, !srcloc !266
  %277 = tail call i32 @llvm.bswap.i32(i32 %276) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i425 = getelementptr i8, ptr %275, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i425, i32 noundef 49436, i32 noundef %277) #12
  %278 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %279)
  %cmp100 = icmp eq i32 %279, 21811
  br i1 %cmp100, label %land.lhs.true101, label %if.end106

land.lhs.true101:                                 ; preds = %if.then96
  %revision102 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %280 = ptrtoint ptr %revision102 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %revision102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429416202, i32 %281)
  %cmp103 = icmp ult i32 %281, 1429416202
  %or105472 = or i32 %277, 16777216
  %spec.select473 = select i1 %cmp103, i32 %277, i32 %or105472
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429417994, i32 %281)
  %cmp111 = icmp ult i32 %281, 1429417994
  br i1 %cmp111, label %land.lhs.true101.if.end114_crit_edge, label %land.lhs.true101.if.then112_crit_edge

land.lhs.true101.if.then112_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112

land.lhs.true101.if.end114_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.end106:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #14
  %or105 = or i32 %277, 16777216
  br label %if.then112

if.then112:                                       ; preds = %if.end106, %land.lhs.true101.if.then112_crit_edge
  %reg.0470 = phi i32 [ %spec.select473, %land.lhs.true101.if.then112_crit_edge ], [ %or105, %if.end106 ]
  %or113 = or i32 %reg.0470, -2147483648
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %land.lhs.true101.if.end114_crit_edge
  %reg.1 = phi i32 [ %spec.select473, %land.lhs.true101.if.end114_crit_edge ], [ %or113, %if.then112 ]
  %282 = ptrtoint ptr %u2ss_inp3_quirk.i to i32
  call void @__asan_loadN_noabort(i32 %282, i32 6)
  %bf.load115 = load i48, ptr %u2ss_inp3_quirk.i, align 4
  %283 = trunc i48 %bf.load115 to i32
  %284 = shl i32 %283, 16
  %285 = and i32 %284, 268435456
  %286 = or i32 %285, %reg.1
  %287 = shl i32 %283, 6
  %288 = and i32 %287, 131072
  %289 = or i32 %286, %288
  %290 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %regs, align 4
  tail call fastcc void @dwc3_writel(ptr noundef %291, i32 noundef 49436, i32 noundef %289)
  br label %if.end132

if.end132:                                        ; preds = %if.end114, %land.lhs.true93.if.end132_crit_edge
  %dr_mode = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 32
  %292 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %dr_mode, align 4
  %294 = zext i32 %293 to i64
  call void @__sanitizer_cov_trace_switch(i64 %294, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %293, label %if.end132.if.end141_crit_edge [
    i32 1, label %if.end132.if.then136_crit_edge
    i32 3, label %if.end132.if.then136_crit_edge479
  ]

if.end132.if.then136_crit_edge479:                ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

if.end132.if.then136_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

if.end132.if.end141_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then136:                                       ; preds = %if.end132.if.then136_crit_edge, %if.end132.if.then136_crit_edge479
  %295 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %regs, align 4
  %add.ptr1.i427 = getelementptr i8, ptr %296, i32 44
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i427) #12, !srcloc !266
  %298 = tail call i32 @llvm.bswap.i32(i32 %297) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i428 = getelementptr i8, ptr %296, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i428, i32 noundef 49452, i32 noundef %298) #12
  %or139 = or i32 %298, 16384
  %299 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %regs, align 4
  tail call fastcc void @dwc3_writel(ptr noundef %300, i32 noundef 49452, i32 noundef %or139)
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %if.end132.if.end141_crit_edge
  %301 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %302)
  %cmp143 = icmp eq i32 %302, 21811
  br i1 %cmp143, label %if.end141.cleanup_crit_edge, label %land.lhs.true144

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true144:                                 ; preds = %if.end141
  %303 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %304)
  %cmp146 = icmp eq i32 %304, 1
  br i1 %cmp146, label %if.then147, label %land.lhs.true144.cleanup_crit_edge

land.lhs.true144.cleanup_crit_edge:               ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then147:                                       ; preds = %land.lhs.true144
  %rx_thr_num_pkt_prd = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 73
  %305 = ptrtoint ptr %rx_thr_num_pkt_prd to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %rx_thr_num_pkt_prd, align 4
  %tx_thr_num_pkt_prd = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 75
  %307 = ptrtoint ptr %tx_thr_num_pkt_prd to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %tx_thr_num_pkt_prd, align 2
  %tx_max_burst_prd = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 76
  %309 = ptrtoint ptr %tx_max_burst_prd to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %tx_max_burst_prd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool148.not = icmp eq i8 %306, 0
  br i1 %tobool148.not, label %if.then147.if.end165_crit_edge, label %land.lhs.true149

if.then147.if.end165_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

land.lhs.true149:                                 ; preds = %if.then147
  %rx_max_burst_prd = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 74
  %311 = ptrtoint ptr %rx_max_burst_prd to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %rx_max_burst_prd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %312)
  %tobool151.not = icmp eq i8 %312, 0
  br i1 %tobool151.not, label %land.lhs.true149.if.end165_crit_edge, label %if.then152

land.lhs.true149.if.end165_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

if.then152:                                       ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #14
  %313 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %regs, align 4
  %add.ptr1.i430 = getelementptr i8, ptr %314, i32 12
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i430) #12, !srcloc !266
  %316 = tail call i32 @llvm.bswap.i32(i32 %315) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i431 = getelementptr i8, ptr %314, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i431, i32 noundef 49420, i32 noundef %316) #12
  %or155 = and i32 %316, -2048
  %317 = and i8 %306, 31
  %and158 = zext i8 %317 to i32
  %shl = shl nuw nsw i32 %and158, 5
  %and156 = or i32 %or155, %shl
  %318 = and i8 %312, 31
  %and162 = zext i8 %318 to i32
  %or159 = or i32 %and156, %and162
  %or163 = or i32 %or159, 1024
  %319 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %regs, align 4
  tail call fastcc void @dwc3_writel(ptr noundef %320, i32 noundef 49420, i32 noundef %or163)
  br label %if.end165

if.end165:                                        ; preds = %if.then152, %land.lhs.true149.if.end165_crit_edge, %if.then147.if.end165_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %tobool167.not = icmp eq i8 %308, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %tobool170.not = icmp eq i8 %310, 0
  %or.cond = select i1 %tobool167.not, i1 true, i1 %tobool170.not
  br i1 %or.cond, label %if.end165.cleanup_crit_edge, label %if.then171

if.end165.cleanup_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then171:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  %321 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %regs, align 4
  %add.ptr1.i433 = getelementptr i8, ptr %322, i32 8
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i433) #12, !srcloc !266
  %324 = tail call i32 @llvm.bswap.i32(i32 %323) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i434 = getelementptr i8, ptr %322, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i434, i32 noundef 49416, i32 noundef %324) #12
  %or174 = and i32 %324, -2048
  %325 = and i8 %308, 31
  %and177 = zext i8 %325 to i32
  %shl178 = shl nuw nsw i32 %and177, 5
  %and175 = or i32 %or174, %shl178
  %326 = and i8 %310, 31
  %and182 = zext i8 %326 to i32
  %or179 = or i32 %and175, %and182
  %or183 = or i32 %or179, 1024
  %327 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %regs, align 4
  tail call fastcc void @dwc3_writel(ptr noundef %328, i32 noundef 49416, i32 noundef %or183)
  br label %cleanup

err3:                                             ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  %329 = ptrtoint ptr %usb2_generic_phy to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %usb2_generic_phy, align 4
  %call190 = tail call i32 @phy_power_off(ptr noundef %330) #12
  br label %err2

err2:                                             ; preds = %err3, %usb_phy_set_suspend.exit419.err2_crit_edge
  %ret.1 = phi i32 [ %call67, %usb_phy_set_suspend.exit419.err2_crit_edge ], [ %call72, %err3 ]
  %331 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %usb2_phy, align 4
  %tobool.not.i435 = icmp eq ptr %332, null
  br i1 %tobool.not.i435, label %err2.usb_phy_set_suspend.exit441_crit_edge, label %land.lhs.true.i438

err2.usb_phy_set_suspend.exit441_crit_edge:       ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit441

land.lhs.true.i438:                               ; preds = %err2
  %set_suspend.i436 = getelementptr inbounds %struct.usb_phy, ptr %332, i32 0, i32 26
  %333 = ptrtoint ptr %set_suspend.i436 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %set_suspend.i436, align 4
  %cmp.not.i437 = icmp eq ptr %334, null
  br i1 %cmp.not.i437, label %land.lhs.true.i438.usb_phy_set_suspend.exit441_crit_edge, label %if.then.i440

land.lhs.true.i438.usb_phy_set_suspend.exit441_crit_edge: ; preds = %land.lhs.true.i438
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit441

if.then.i440:                                     ; preds = %land.lhs.true.i438
  call void @__sanitizer_cov_trace_pc() #14
  %call.i439 = tail call i32 %334(ptr noundef nonnull %332, i32 noundef 1) #12
  br label %usb_phy_set_suspend.exit441

usb_phy_set_suspend.exit441:                      ; preds = %if.then.i440, %land.lhs.true.i438.usb_phy_set_suspend.exit441_crit_edge, %err2.usb_phy_set_suspend.exit441_crit_edge
  %335 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %usb3_phy, align 4
  %tobool.not.i442 = icmp eq ptr %336, null
  br i1 %tobool.not.i442, label %usb_phy_set_suspend.exit441.err1_crit_edge, label %land.lhs.true.i445

usb_phy_set_suspend.exit441.err1_crit_edge:       ; preds = %usb_phy_set_suspend.exit441
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

land.lhs.true.i445:                               ; preds = %usb_phy_set_suspend.exit441
  %set_suspend.i443 = getelementptr inbounds %struct.usb_phy, ptr %336, i32 0, i32 26
  %337 = ptrtoint ptr %set_suspend.i443 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %set_suspend.i443, align 4
  %cmp.not.i444 = icmp eq ptr %338, null
  br i1 %cmp.not.i444, label %land.lhs.true.i445.err1_crit_edge, label %if.then.i447

land.lhs.true.i445.err1_crit_edge:                ; preds = %land.lhs.true.i445
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.then.i447:                                     ; preds = %land.lhs.true.i445
  call void @__sanitizer_cov_trace_pc() #14
  %call.i446 = tail call i32 %338(ptr noundef nonnull %336, i32 noundef 1) #12
  br label %err1

err1:                                             ; preds = %if.then.i447, %land.lhs.true.i445.err1_crit_edge, %usb_phy_set_suspend.exit441.err1_crit_edge, %err1.i, %do.end37.i, %if.end27.err1_crit_edge
  %ret.2 = phi i32 [ %call28, %if.end27.err1_crit_edge ], [ -14, %do.end37.i ], [ %ret.0.i370, %err1.i ], [ %ret.1, %usb_phy_set_suspend.exit441.err1_crit_edge ], [ %ret.1, %land.lhs.true.i445.err1_crit_edge ], [ %ret.1, %if.then.i447 ]
  %339 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %usb2_phy, align 4
  %tobool.not.i449 = icmp eq ptr %340, null
  br i1 %tobool.not.i449, label %err1.usb_phy_shutdown.exit_crit_edge, label %land.lhs.true.i451

err1.usb_phy_shutdown.exit_crit_edge:             ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_shutdown.exit

land.lhs.true.i451:                               ; preds = %err1
  %shutdown.i = getelementptr inbounds %struct.usb_phy, ptr %340, i32 0, i32 23
  %341 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %shutdown.i, align 4
  %tobool1.not.i450 = icmp eq ptr %342, null
  br i1 %tobool1.not.i450, label %land.lhs.true.i451.usb_phy_shutdown.exit_crit_edge, label %if.then.i452

land.lhs.true.i451.usb_phy_shutdown.exit_crit_edge: ; preds = %land.lhs.true.i451
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_shutdown.exit

if.then.i452:                                     ; preds = %land.lhs.true.i451
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %342(ptr noundef nonnull %340) #12
  br label %usb_phy_shutdown.exit

usb_phy_shutdown.exit:                            ; preds = %if.then.i452, %land.lhs.true.i451.usb_phy_shutdown.exit_crit_edge, %err1.usb_phy_shutdown.exit_crit_edge
  %343 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %usb3_phy, align 4
  %tobool.not.i454 = icmp eq ptr %344, null
  br i1 %tobool.not.i454, label %usb_phy_shutdown.exit.usb_phy_shutdown.exit460_crit_edge, label %land.lhs.true.i457

usb_phy_shutdown.exit.usb_phy_shutdown.exit460_crit_edge: ; preds = %usb_phy_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_shutdown.exit460

land.lhs.true.i457:                               ; preds = %usb_phy_shutdown.exit
  %shutdown.i455 = getelementptr inbounds %struct.usb_phy, ptr %344, i32 0, i32 23
  %345 = ptrtoint ptr %shutdown.i455 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %shutdown.i455, align 4
  %tobool1.not.i456 = icmp eq ptr %346, null
  br i1 %tobool1.not.i456, label %land.lhs.true.i457.usb_phy_shutdown.exit460_crit_edge, label %if.then.i458

land.lhs.true.i457.usb_phy_shutdown.exit460_crit_edge: ; preds = %land.lhs.true.i457
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_shutdown.exit460

if.then.i458:                                     ; preds = %land.lhs.true.i457
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %346(ptr noundef nonnull %344) #12
  br label %usb_phy_shutdown.exit460

usb_phy_shutdown.exit460:                         ; preds = %if.then.i458, %land.lhs.true.i457.usb_phy_shutdown.exit460_crit_edge, %usb_phy_shutdown.exit.usb_phy_shutdown.exit460_crit_edge
  %347 = ptrtoint ptr %usb2_generic_phy to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %usb2_generic_phy, align 4
  %call198 = tail call i32 @phy_exit(ptr noundef %348) #12
  br label %err0a.sink.split

err0a.sink.split:                                 ; preds = %usb_phy_shutdown.exit460, %if.end21.err0a.sink.split_crit_edge
  %usb3_generic_phy.sink = phi ptr [ %usb3_generic_phy, %usb_phy_shutdown.exit460 ], [ %usb2_generic_phy, %if.end21.err0a.sink.split_crit_edge ]
  %ret.3.ph = phi i32 [ %ret.2, %usb_phy_shutdown.exit460 ], [ %call22, %if.end21.err0a.sink.split_crit_edge ]
  %349 = ptrtoint ptr %usb3_generic_phy.sink to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %usb3_generic_phy.sink, align 4
  %call200 = tail call i32 @phy_exit(ptr noundef %350) #12
  br label %err0a

err0a:                                            ; preds = %err0a.sink.split, %usb_phy_init.exit333.err0a_crit_edge, %dwc3_core_get_phy.exit.err0a_crit_edge
  %ret.3 = phi i32 [ %call19, %usb_phy_init.exit333.err0a_crit_edge ], [ %retval.0.i, %dwc3_core_get_phy.exit.err0a_crit_edge ], [ %ret.3.ph, %err0a.sink.split ]
  tail call void @dwc3_ulpi_exit(ptr noundef %dwc) #12
  br label %cleanup

cleanup:                                          ; preds = %err0a, %if.then171, %if.end165.cleanup_crit_edge, %land.lhs.true144.cleanup_crit_edge, %if.end141.cleanup_crit_edge, %dwc3_core_ulpi_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end165.cleanup_crit_edge ], [ 0, %if.then171 ], [ 0, %land.lhs.true144.cleanup_crit_edge ], [ 0, %if.end141.cleanup_crit_edge ], [ %ret.3, %err0a ], [ %call5.i, %dwc3_core_ulpi_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_check_params(ptr nocapture noundef %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %hwparams3 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 66, i32 3
  %2 = ptrtoint ptr %hwparams3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwparams3, align 4
  %and = and i32 %3, 3
  %imod_interval = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 80
  %4 = ptrtoint ptr %imod_interval to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %imod_interval, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.land.lhs.true6_crit_edge, label %land.lhs.true

entry.land.lhs.true6_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true6

land.lhs.true:                                    ; preds = %entry
  %ip.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %6 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ip.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %7, label %land.lhs.true.do.end_crit_edge [
    i32 21811, label %land.lhs.true.i
    i32 13105, label %land.lhs.true4.i
    i32 13106, label %land.lhs.true.if.end13_crit_edge
  ]

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %revision.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %9 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429417993, i32 %10)
  %cmp1.i = icmp ugt i32 %10, 1429417993
  br i1 %cmp1.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.do.end_crit_edge

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true4.i:                                 ; preds = %land.lhs.true
  %revision5.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %11 = ptrtoint ptr %revision5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %revision5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825372713, i32 %12)
  %cmp6.i = icmp ugt i32 %12, 825372713
  br i1 %cmp6.i, label %land.lhs.true4.i.if.end_crit_edge, label %land.lhs.true4.i.do.end_crit_edge

land.lhs.true4.i.do.end_crit_edge:                ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4.i.if.end_crit_edge:                ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.lhs.true4.i.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.96) #15
  %13 = ptrtoint ptr %imod_interval to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %imod_interval, align 2
  br label %land.lhs.true6

if.end:                                           ; preds = %land.lhs.true4.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %14 = ptrtoint ptr %imod_interval to i32
  call void @__asan_load2_noabort(i32 %14)
  %.pr.pr = load i16, ptr %imod_interval, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.pr)
  %tobool5.not = icmp eq i16 %.pr.pr, 0
  br i1 %tobool5.not, label %if.end.land.lhs.true6_crit_edge, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end.land.lhs.true6_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end.land.lhs.true6_crit_edge, %do.end, %entry.land.lhs.true6_crit_edge
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %15 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21811, i32 %16)
  %cmp = icmp eq i32 %16, 21811
  br i1 %cmp, label %land.lhs.true8, label %land.lhs.true6.if.end13_crit_edge

land.lhs.true6.if.end13_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %revision = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %17 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1429417994, i32 %18)
  %cmp9 = icmp eq i32 %18, 1429417994
  br i1 %cmp9, label %if.then11, label %land.lhs.true8.if.end13_crit_edge

land.lhs.true8.if.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %imod_interval to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %imod_interval, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true8.if.end13_crit_edge, %land.lhs.true6.if.end13_crit_edge, %if.end.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge
  %maximum_speed = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 50
  %20 = ptrtoint ptr %maximum_speed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %maximum_speed, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %21, label %do.end42 [
    i32 2, label %if.end13.if.end101_crit_edge
    i32 3, label %if.end13.if.end101_crit_edge151
    i32 5, label %sw.bb14
    i32 6, label %sw.bb22
    i32 0, label %if.end13.sw.bb44_crit_edge
  ]

if.end13.sw.bb44_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb44

if.end13.if.end101_crit_edge151:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.end13.if.end101_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

sw.bb14:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp15 = icmp eq i32 %and, 0
  br i1 %cmp15, label %sw.bb14.sw.epilog59.sink.split_crit_edge, label %sw.bb14.if.end101_crit_edge

sw.bb14.if.end101_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

sw.bb14.sw.epilog59.sink.split_crit_edge:         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog59.sink.split

sw.bb22:                                          ; preds = %if.end13
  %ip23 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %23 = ptrtoint ptr %ip23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ip23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %24)
  %cmp24 = icmp eq i32 %24, 13106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp27 = icmp ne i32 %and, 0
  %not.cmp24 = xor i1 %cmp24, true
  %or.cond = select i1 %not.cmp24, i1 true, i1 %cmp27
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp33.not = icmp eq i32 %and, 2
  %or.cond138 = select i1 %cmp24, i1 true, i1 %cmp33.not
  %or.cond148 = select i1 %or.cond, i1 %or.cond138, i1 false
  br i1 %or.cond148, label %sw.bb22.sw.epilog59_crit_edge, label %sw.bb22.sw.epilog59.sink.split_crit_edge

sw.bb22.sw.epilog59.sink.split_crit_edge:         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog59.sink.split

sw.bb22.sw.epilog59_crit_edge:                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog59

do.end42:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.105, i32 noundef %21) #15
  br label %sw.bb44

sw.bb44:                                          ; preds = %do.end42, %if.end13.sw.bb44_crit_edge
  %25 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %and, label %sw.default57 [
    i32 2, label %sw.bb44.if.then63.sink.split_crit_edge
    i32 1, label %sw.bb47
    i32 0, label %sw.bb55
  ]

sw.bb44.if.then63.sink.split_crit_edge:           ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63.sink.split

sw.bb47:                                          ; preds = %sw.bb44
  %ip48 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %26 = ptrtoint ptr %ip48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ip48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %27)
  %cmp49 = icmp eq i32 %27, 13106
  br i1 %cmp49, label %sw.bb47.if.then63.sink.split_crit_edge, label %if.else

sw.bb47.if.then63.sink.split_crit_edge:           ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63.sink.split

if.else:                                          ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %maximum_speed to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %maximum_speed, align 4
  br label %if.end101

sw.bb55:                                          ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %maximum_speed to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %maximum_speed, align 4
  br label %if.end101

sw.default57:                                     ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %maximum_speed to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %maximum_speed, align 4
  br label %if.end101

sw.epilog59.sink.split:                           ; preds = %sw.bb22.sw.epilog59.sink.split_crit_edge, %sw.bb14.sw.epilog59.sink.split_crit_edge
  %.str.102.sink = phi ptr [ @.str.99, %sw.bb14.sw.epilog59.sink.split_crit_edge ], [ @.str.102, %sw.bb22.sw.epilog59.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull %.str.102.sink) #15
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %sw.epilog59.sink.split, %sw.bb22.sw.epilog59_crit_edge
  %31 = ptrtoint ptr %maximum_speed to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr143 = load i32, ptr %maximum_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr143)
  %cmp61 = icmp eq i32 %.pr143, 6
  br i1 %cmp61, label %sw.epilog59.if.then63_crit_edge, label %sw.epilog59.if.end101_crit_edge

sw.epilog59.if.end101_crit_edge:                  ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

sw.epilog59.if.then63_crit_edge:                  ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

if.then63.sink.split:                             ; preds = %sw.bb47.if.then63.sink.split_crit_edge, %sw.bb44.if.then63.sink.split_crit_edge
  %32 = ptrtoint ptr %maximum_speed to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 6, ptr %maximum_speed, align 4
  br label %if.then63

if.then63:                                        ; preds = %if.then63.sink.split, %sw.epilog59.if.then63_crit_edge
  %max_ssp_rate = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 52
  %33 = ptrtoint ptr %max_ssp_rate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_ssp_rate, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %34, label %sw.default82 [
    i32 1, label %sw.bb64
    i32 2, label %if.then63.sw.bb72_crit_edge
    i32 3, label %if.then63.sw.bb72_crit_edge152
  ]

if.then63.sw.bb72_crit_edge152:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb72

if.then63.sw.bb72_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb72

sw.bb64:                                          ; preds = %if.then63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp65 = icmp eq i32 %and, 1
  br i1 %cmp65, label %do.end70, label %sw.bb64.if.end101_crit_edge

sw.bb64.if.end101_crit_edge:                      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

do.end70:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.108) #15
  br label %if.end101

sw.bb72:                                          ; preds = %if.then63.sw.bb72_crit_edge, %if.then63.sw.bb72_crit_edge152
  %ip73 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %36 = ptrtoint ptr %ip73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ip73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13105, i32 %37)
  %cmp74 = icmp eq i32 %37, 13105
  br i1 %cmp74, label %do.end79, label %sw.bb72.if.end101_crit_edge

sw.bb72.if.end101_crit_edge:                      ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

do.end79:                                         ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.111) #15
  br label %if.end101

sw.default82:                                     ; preds = %if.then63
  %38 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %and, label %sw.default82.if.end101_crit_edge [
    i32 2, label %sw.bb83
    i32 1, label %sw.bb92
  ]

sw.default82.if.end101_crit_edge:                 ; preds = %sw.default82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

sw.bb83:                                          ; preds = %sw.default82
  %ip84 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %39 = ptrtoint ptr %ip84 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ip84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %40)
  %cmp85 = icmp eq i32 %40, 13106
  br i1 %cmp85, label %if.then87, label %if.else89

if.then87:                                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %max_ssp_rate to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %max_ssp_rate, align 4
  br label %if.end101

if.else89:                                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %max_ssp_rate to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %max_ssp_rate, align 4
  br label %if.end101

sw.bb92:                                          ; preds = %sw.default82
  %ip93 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %43 = ptrtoint ptr %ip93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ip93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13106, i32 %44)
  %cmp94 = icmp eq i32 %44, 13106
  br i1 %cmp94, label %if.then96, label %sw.bb92.if.end101_crit_edge

sw.bb92.if.end101_crit_edge:                      ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then96:                                        ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %max_ssp_rate to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %max_ssp_rate, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then96, %sw.bb92.if.end101_crit_edge, %if.else89, %if.then87, %sw.default82.if.end101_crit_edge, %do.end79, %sw.bb72.if.end101_crit_edge, %do.end70, %sw.bb64.if.end101_crit_edge, %sw.epilog59.if.end101_crit_edge, %sw.default57, %sw.bb55, %if.else, %sw.bb14.if.end101_crit_edge, %if.end13.if.end101_crit_edge, %if.end13.if.end101_crit_edge151
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_debugfs_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_core_init_mode(ptr noundef %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dr_mode = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 32
  %2 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dr_mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %3, label %do.end40 [
    i32 2, label %sw.bb
    i32 1, label %sw.bb10
    i32 3, label %do.body
  ]

sw.bb:                                            ; preds = %entry
  %regs.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !266
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i.i = getelementptr i8, ptr %6, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 49424, i32 noundef %8) #12
  %and.i = and i32 %8, -12289
  %or.i = or i32 %and.i, 8192
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %add.ptr1.i8.i = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i, i32 %11) #12, !srcloc !269
  %add.ptr2.i.i = getelementptr i8, ptr %10, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 49424, i32 noundef %or.i) #12
  %current_dr_role.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 33
  %12 = ptrtoint ptr %current_dr_role.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %current_dr_role.i, align 4
  %usb2_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 23
  %13 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb2_phy, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %sw.bb
  %otg = getelementptr inbounds %struct.usb_phy, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %otg, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %set_vbus.i = getelementptr inbounds %struct.usb_otg, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %set_vbus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_vbus.i, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %18(ptr noundef nonnull %16, i1 noundef zeroext false) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %usb2_generic_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 25
  %19 = ptrtoint ptr %usb2_generic_phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb2_generic_phy, align 4
  %call3 = tail call i32 @phy_set_mode_ext(ptr noundef %20, i32 noundef 6, i32 noundef 0) #12
  %usb3_generic_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 26
  %21 = ptrtoint ptr %usb3_generic_phy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb3_generic_phy, align 4
  %call4 = tail call i32 @phy_set_mode_ext(ptr noundef %22, i32 noundef 6, i32 noundef 0) #12
  %call5 = tail call i32 @dwc3_gadget_init(ptr noundef %dwc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %1, i32 noundef %call5, ptr noundef nonnull @.str.113) #12
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %regs.i72 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %23 = ptrtoint ptr %regs.i72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i72, align 4
  %add.ptr1.i.i73 = getelementptr i8, ptr %24, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i73) #12, !srcloc !266
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i.i74 = getelementptr i8, ptr %24, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i74, i32 noundef 49424, i32 noundef %26) #12
  %and.i75 = and i32 %26, -12289
  %or.i76 = or i32 %and.i75, 4096
  %27 = ptrtoint ptr %regs.i72 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i72, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i76) #12
  %add.ptr1.i8.i77 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i77, i32 %29) #12, !srcloc !269
  %add.ptr2.i.i78 = getelementptr i8, ptr %28, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i78, i32 noundef 49424, i32 noundef %or.i76) #12
  %current_dr_role.i79 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 33
  %30 = ptrtoint ptr %current_dr_role.i79 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %current_dr_role.i79, align 4
  %usb2_phy11 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 23
  %31 = ptrtoint ptr %usb2_phy11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb2_phy11, align 4
  %tobool12.not = icmp eq ptr %32, null
  br i1 %tobool12.not, label %sw.bb10.if.end17_crit_edge, label %if.then13

sw.bb10.if.end17_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then13:                                        ; preds = %sw.bb10
  %otg15 = getelementptr inbounds %struct.usb_phy, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %otg15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %otg15, align 4
  %tobool.not.i80 = icmp eq ptr %34, null
  br i1 %tobool.not.i80, label %if.then13.if.end17_crit_edge, label %land.lhs.true.i83

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true.i83:                                ; preds = %if.then13
  %set_vbus.i81 = getelementptr inbounds %struct.usb_otg, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %set_vbus.i81 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_vbus.i81, align 4
  %tobool1.not.i82 = icmp eq ptr %36, null
  br i1 %tobool1.not.i82, label %land.lhs.true.i83.if.end17_crit_edge, label %if.then.i85

land.lhs.true.i83.if.end17_crit_edge:             ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then.i85:                                      ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #14
  %call.i84 = tail call i32 %36(ptr noundef nonnull %34, i1 noundef zeroext true) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then.i85, %land.lhs.true.i83.if.end17_crit_edge, %if.then13.if.end17_crit_edge, %sw.bb10.if.end17_crit_edge
  %usb2_generic_phy18 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 25
  %37 = ptrtoint ptr %usb2_generic_phy18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb2_generic_phy18, align 4
  %call19 = tail call i32 @phy_set_mode_ext(ptr noundef %38, i32 noundef 1, i32 noundef 0) #12
  %usb3_generic_phy20 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 26
  %39 = ptrtoint ptr %usb3_generic_phy20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %usb3_generic_phy20, align 4
  %call21 = tail call i32 @phy_set_mode_ext(ptr noundef %40, i32 noundef 1, i32 noundef 0) #12
  %call22 = tail call i32 @dwc3_host_init(ptr noundef %dwc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end17.cleanup_crit_edge, label %if.then24

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call25 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %1, i32 noundef %call22, ptr noundef nonnull @.str.114) #12
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__init_work(ptr noundef %dwc, i32 noundef 0) #12
  %41 = ptrtoint ptr %dwc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -64, ptr %dwc, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %dwc, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.115, ptr noundef nonnull @dwc3_core_init_mode.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry31 = getelementptr inbounds %struct.work_struct, ptr %dwc, i32 0, i32 1
  %42 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %dwc, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry31, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %dwc, i32 0, i32 2
  %44 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @__dwc3_set_mode, ptr %func, align 4
  %call33 = tail call i32 @dwc3_drd_init(ptr noundef %dwc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.body.cleanup_crit_edge, label %if.then35

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call36 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %1, i32 noundef %call33, ptr noundef nonnull @.str.116) #12
  br label %cleanup

do.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.117, i32 noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.then35, %do.body.cleanup_crit_edge, %if.then24, %if.end17.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end40 ], [ %call36, %if.then35 ], [ %call25, %if.then24 ], [ %call8, %if.then7 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_debugfs_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_ulpi_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_free_scratch_buffers(ptr nocapture noundef readonly %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %has_hibernation = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %0 = ptrtoint ptr %has_hibernation to i32
  call void @__asan_loadN_noabort(i32 %0, i32 6)
  %bf.load = load i48, ptr %has_hibernation, align 4
  %1 = and i48 %bf.load, 4398046511104
  %tobool.not = icmp eq i48 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %nr_scratch = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 48
  %2 = ptrtoint ptr %nr_scratch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_scratch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end3:                                          ; preds = %if.end
  %scratchbuf = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 3
  %4 = ptrtoint ptr %scratchbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scratchbuf, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end3.return_crit_edge, label %do.end, !prof !271

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 553, i32 noundef 9, ptr noundef null) #12
  %sysdev = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 13
  %6 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysdev, align 4
  %scratch_addr = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 7
  %8 = ptrtoint ptr %scratch_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scratch_addr, align 4
  %10 = ptrtoint ptr %nr_scratch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_scratch, align 4
  %mul = shl i32 %11, 12
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %9, i32 noundef %mul, i32 noundef 0, i32 noundef 0) #12
  %12 = ptrtoint ptr %scratchbuf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scratchbuf, align 4
  tail call void @kfree(ptr noundef %13) #12
  br label %return

return:                                           ; preds = %do.end, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_free_event_buffers(ptr nocapture noundef readonly %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ev_buf = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 16
  %0 = ptrtoint ptr %ev_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sysdev.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 13
  %2 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysdev.i, align 4
  %length.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dma.i = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_speed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_ssp_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_phy_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_core_soft_reset(ptr nocapture noundef readonly %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %current_dr_role = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 33
  %0 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_dr_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %3, i32 1540
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !266
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i = getelementptr i8, ptr %3, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50948, i32 noundef %5) #12
  %or = or i32 %5, 1073741824
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %add.ptr1.i49 = getelementptr i8, ptr %7, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i49, i32 %8) #12, !srcloc !269
  %add.ptr2.i = getelementptr i8, ptr %7, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 50948, i32 noundef %or) #12
  %ip = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 54
  %9 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ip, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %10, label %if.end.if.end7_crit_edge [
    i32 13105, label %land.lhs.true
    i32 13106, label %if.end.if.then6_crit_edge
  ]

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %revision = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  %12 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825831465, i32 %13)
  %cmp3 = icmp ugt i32 %13, 825831465
  br i1 %cmp3, label %land.lhs.true.if.then6_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true.if.then6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

if.then6:                                         ; preds = %land.lhs.true.if.then6_crit_edge, %if.end.if.then6_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %retries.0 = phi i32 [ 10, %if.then6 ], [ 1000, %land.lhs.true.if.end7_crit_edge ], [ 1000, %if.end.if.end7_crit_edge ]
  %revision15 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 55
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end7
  %retries.1 = phi i32 [ %retries.0, %if.end7 ], [ %dec, %do.cond.do.body_crit_edge ]
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr1.i51 = getelementptr i8, ptr %15, i32 1540
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i51) #12, !srcloc !266
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i52 = getelementptr i8, ptr %15, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i52, i32 noundef 50948, i32 noundef %17) #12
  %and = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %18 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ip, align 4
  br i1 %tobool.not, label %done, label %if.end11

if.end11:                                         ; preds = %do.body
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %19, label %if.end11.if.else_crit_edge [
    i32 13105, label %land.lhs.true14
    i32 13106, label %if.end11.if.then20_crit_edge
  ]

if.end11.if.then20_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true14:                                  ; preds = %if.end11
  %21 = ptrtoint ptr %revision15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %revision15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825831465, i32 %22)
  %cmp16 = icmp ugt i32 %22, 825831465
  br i1 %cmp16, label %land.lhs.true14.if.then20_crit_edge, label %land.lhs.true14.if.else_crit_edge

land.lhs.true14.if.else_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true14.if.then20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

if.then20:                                        ; preds = %land.lhs.true14.if.then20_crit_edge, %if.end11.if.then20_crit_edge
  tail call void @msleep(i32 noundef 20) #12
  br label %do.cond

if.else:                                          ; preds = %land.lhs.true14.if.else_crit_edge, %if.end11.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #12
  br label %do.cond

do.cond:                                          ; preds = %if.else, %if.then20
  %dec = add nsw i32 %retries.1, -1
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

done:                                             ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 13105, i32 %19)
  %cmp24 = icmp eq i32 %19, 13105
  br i1 %cmp24, label %land.lhs.true28, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true28:                                  ; preds = %done
  %24 = ptrtoint ptr %revision15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %revision15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825765931, i32 %25)
  %cmp30 = icmp ult i32 %25, 825765931
  br i1 %cmp30, label %if.then31, label %land.lhs.true28.cleanup_crit_edge

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 50) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %land.lhs.true28.cleanup_crit_edge, %done.cleanup_crit_edge, %do.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %land.lhs.true28.cleanup_crit_edge ], [ 0, %done.cleanup_crit_edge ], [ -110, %do.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_ulpi_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %dev, ptr noundef %ptr, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %ptr) #12
  br i1 %call, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1, label %land.rhs.return_crit_edge, label %if.then, !prof !271

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16 = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.86, ptr noundef %call16, ptr noundef %retval.0.i) #12
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %ptr, i32 noundef %size) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %ptr to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %shr
  %and = and i32 %5, 4095
  %call41 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %and, i32 noundef %size, i32 noundef 0, i32 noundef 0) #12
  br label %return

return:                                           ; preds = %if.end39, %dev_name.exit, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end39 ], [ -1, %dev_name.exit ], [ -1, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_send_gadget_generic_command(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_host_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__dwc3_set_mode(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %dev = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %current_dr_role = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 33
  %2 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_dr_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dwc3_otg_update(ptr noundef %work, i1 noundef zeroext false) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %desired_dr_role = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 34
  %4 = ptrtoint ptr %desired_dr_role to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %desired_dr_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end2:                                          ; preds = %if.end
  %6 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_dr_role, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5 = icmp eq i32 %5, %7
  br i1 %cmp5, label %if.end2.out_crit_edge, label %if.end7

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end7:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp9 = icmp eq i32 %5, 3
  br i1 %cmp9, label %land.lhs.true, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end7
  %edev = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 35
  %8 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edev, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %7, label %if.end12.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3, label %sw.bb15
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dwc3_host_exit(ptr noundef %work) #12
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dwc3_gadget_exit(ptr noundef %work) #12
  tail call void @dwc3_event_buffers_cleanup(ptr noundef %work)
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dwc3_otg_exit(ptr noundef %work) #12
  %lock = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 10
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %desired_otg_role = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 46
  %11 = ptrtoint ptr %desired_otg_role to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %desired_otg_role, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #12
  tail call void @dwc3_otg_update(ptr noundef %work, i1 noundef zeroext true) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb14, %sw.bb, %if.end12.sw.epilog_crit_edge
  %12 = ptrtoint ptr %desired_dr_role to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desired_dr_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp25.not = icmp eq i32 %13, 3
  br i1 %cmp25.not, label %sw.epilog.do.body35_crit_edge, label %if.then27

sw.epilog.do.body35_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

if.then27:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %regs = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 30
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !266
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i = getelementptr i8, ptr %15, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 49424, i32 noundef %17) #12
  %or = or i32 %17, 2048
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %add.ptr1.i162 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i162, i32 %20) #12, !srcloc !269
  %add.ptr2.i = getelementptr i8, ptr %19, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 49424, i32 noundef %or) #12
  tail call void @msleep(i32 noundef 100) #12
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr1.i164 = getelementptr i8, ptr %22, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i164) #12, !srcloc !266
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i165 = getelementptr i8, ptr %22, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i165, i32 noundef 49424, i32 noundef %24) #12
  %and = and i32 %24, -2049
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %add.ptr1.i167 = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i167, i32 %27) #12, !srcloc !269
  %add.ptr2.i168 = getelementptr i8, ptr %26, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i168, i32 noundef 49424, i32 noundef %and) #12
  br label %do.body35

do.body35:                                        ; preds = %if.then27, %sw.epilog.do.body35_crit_edge
  %lock41 = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 10
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock41) #12
  %28 = ptrtoint ptr %desired_dr_role to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %desired_dr_role, align 4
  %regs.i = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 30
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %31, i32 16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !266
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i.i = getelementptr i8, ptr %31, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 49424, i32 noundef %33) #12
  %and.i = and i32 %33, -12289
  %shl.i = shl i32 %29, 12
  %or.i = or i32 %and.i, %shl.i
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %add.ptr1.i8.i = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i, i32 %36) #12, !srcloc !269
  %add.ptr2.i.i = getelementptr i8, ptr %35, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 49424, i32 noundef %or.i) #12
  %37 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %29, ptr %current_dr_role, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock41, i32 noundef %call43) #12
  %38 = ptrtoint ptr %desired_dr_role to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %desired_dr_role, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %39, label %do.body35.out_crit_edge [
    i32 1, label %sw.bb51
    i32 2, label %sw.bb74
    i32 3, label %sw.bb96
  ]

do.body35.out_crit_edge:                          ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb51:                                          ; preds = %do.body35
  %call52 = tail call i32 @dwc3_host_init(ptr noundef %work) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.else, label %do.end57

do.end57:                                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.114) #15
  br label %out

if.else:                                          ; preds = %sw.bb51
  %usb2_phy = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 23
  %43 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb2_phy, align 4
  %tobool59.not = icmp eq ptr %44, null
  br i1 %tobool59.not, label %if.else.if.end63_crit_edge, label %if.then60

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then60:                                        ; preds = %if.else
  %otg = getelementptr inbounds %struct.usb_phy, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %otg, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.then60.if.end63_crit_edge, label %land.lhs.true.i

if.then60.if.end63_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true.i:                                  ; preds = %if.then60
  %set_vbus.i = getelementptr inbounds %struct.usb_otg, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %set_vbus.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_vbus.i, align 4
  %tobool1.not.i = icmp eq ptr %48, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end63_crit_edge, label %if.then.i

land.lhs.true.i.if.end63_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i169 = tail call i32 %48(ptr noundef nonnull %46, i1 noundef zeroext true) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end63_crit_edge, %if.then60.if.end63_crit_edge, %if.else.if.end63_crit_edge
  %usb2_generic_phy = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 25
  %49 = ptrtoint ptr %usb2_generic_phy to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usb2_generic_phy, align 4
  %call64 = tail call i32 @phy_set_mode_ext(ptr noundef %50, i32 noundef 1, i32 noundef 0) #12
  %usb3_generic_phy = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 26
  %51 = ptrtoint ptr %usb3_generic_phy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %usb3_generic_phy, align 4
  %call65 = tail call i32 @phy_set_mode_ext(ptr noundef %52, i32 noundef 1, i32 noundef 0) #12
  %dis_split_quirk = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 79
  %53 = ptrtoint ptr %dis_split_quirk to i32
  call void @__asan_loadN_noabort(i32 %53, i32 6)
  %bf.load = load i48, ptr %dis_split_quirk, align 4
  %54 = and i48 %bf.load, 64
  %tobool66.not = icmp eq i48 %54, 0
  br i1 %tobool66.not, label %if.end63.out_crit_edge, label %if.then67

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i171 = getelementptr i8, ptr %56, i32 1292
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i171) #12, !srcloc !266
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i172 = getelementptr i8, ptr %56, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i172, i32 noundef 50700, i32 noundef %58) #12
  %or70 = or i32 %58, 16384
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %61 = tail call i32 @llvm.bswap.i32(i32 %or70) #12
  %add.ptr1.i174 = getelementptr i8, ptr %60, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i174, i32 %61) #12, !srcloc !269
  %add.ptr2.i175 = getelementptr i8, ptr %60, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i175, i32 noundef 50700, i32 noundef %or70) #12
  br label %out

sw.bb74:                                          ; preds = %do.body35
  %call75 = tail call fastcc i32 @dwc3_core_soft_reset(ptr noundef %work)
  %call76 = tail call i32 @dwc3_event_buffers_setup(ptr noundef %work)
  %usb2_phy77 = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 23
  %62 = ptrtoint ptr %usb2_phy77 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %usb2_phy77, align 4
  %tobool78.not = icmp eq ptr %63, null
  br i1 %tobool78.not, label %sw.bb74.if.end83_crit_edge, label %if.then79

sw.bb74.if.end83_crit_edge:                       ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then79:                                        ; preds = %sw.bb74
  %otg81 = getelementptr inbounds %struct.usb_phy, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %otg81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %otg81, align 4
  %tobool.not.i176 = icmp eq ptr %65, null
  br i1 %tobool.not.i176, label %if.then79.if.end83_crit_edge, label %land.lhs.true.i179

if.then79.if.end83_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

land.lhs.true.i179:                               ; preds = %if.then79
  %set_vbus.i177 = getelementptr inbounds %struct.usb_otg, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %set_vbus.i177 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_vbus.i177, align 4
  %tobool1.not.i178 = icmp eq ptr %67, null
  br i1 %tobool1.not.i178, label %land.lhs.true.i179.if.end83_crit_edge, label %if.then.i181

land.lhs.true.i179.if.end83_crit_edge:            ; preds = %land.lhs.true.i179
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then.i181:                                     ; preds = %land.lhs.true.i179
  call void @__sanitizer_cov_trace_pc() #14
  %call.i180 = tail call i32 %67(ptr noundef nonnull %65, i1 noundef zeroext false) #12
  br label %if.end83

if.end83:                                         ; preds = %if.then.i181, %land.lhs.true.i179.if.end83_crit_edge, %if.then79.if.end83_crit_edge, %sw.bb74.if.end83_crit_edge
  %usb2_generic_phy84 = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 25
  %68 = ptrtoint ptr %usb2_generic_phy84 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %usb2_generic_phy84, align 4
  %call85 = tail call i32 @phy_set_mode_ext(ptr noundef %69, i32 noundef 6, i32 noundef 0) #12
  %usb3_generic_phy86 = getelementptr inbounds %struct.dwc3, ptr %work, i32 0, i32 26
  %70 = ptrtoint ptr %usb3_generic_phy86 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %usb3_generic_phy86, align 4
  %call87 = tail call i32 @phy_set_mode_ext(ptr noundef %71, i32 noundef 6, i32 noundef 0) #12
  %call88 = tail call i32 @dwc3_gadget_init(ptr noundef %work) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end83.out_crit_edge, label %do.end93

if.end83.out_crit_edge:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end93:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.121) #15
  br label %out

sw.bb96:                                          ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dwc3_otg_init(ptr noundef %work) #12
  tail call void @dwc3_otg_update(ptr noundef %work, i1 noundef zeroext false) #12
  br label %out

out:                                              ; preds = %sw.bb96, %do.end93, %if.end83.out_crit_edge, %if.then67, %if.end63.out_crit_edge, %do.end57, %do.body35.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end2.out_crit_edge, %if.end.out_crit_edge
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %call.i183 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 12, i32 22
  %76 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store volatile i64 %call.i183, ptr %last_busy.i, align 8
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 4
  %call.i184 = tail call i32 @__pm_runtime_suspend(ptr noundef %78, i32 noundef 13) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_drd_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_otg_update(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_host_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_gadget_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_otg_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_otg_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_core_exit(ptr nocapture noundef readonly %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dwc3_event_buffers_cleanup(ptr noundef %dwc)
  %usb2_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 23
  %0 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb2_phy, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.usb_phy_shutdown.exit_crit_edge, label %land.lhs.true.i

entry.usb_phy_shutdown.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_shutdown.exit

land.lhs.true.i:                                  ; preds = %entry
  %shutdown.i = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shutdown.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.usb_phy_shutdown.exit_crit_edge, label %if.then.i

land.lhs.true.i.usb_phy_shutdown.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_shutdown.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3(ptr noundef nonnull %1) #12
  br label %usb_phy_shutdown.exit

usb_phy_shutdown.exit:                            ; preds = %if.then.i, %land.lhs.true.i.usb_phy_shutdown.exit_crit_edge, %entry.usb_phy_shutdown.exit_crit_edge
  %usb3_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 24
  %4 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3_phy, align 4
  %tobool.not.i22 = icmp eq ptr %5, null
  br i1 %tobool.not.i22, label %usb_phy_shutdown.exit.usb_phy_shutdown.exit27_crit_edge, label %land.lhs.true.i25

usb_phy_shutdown.exit.usb_phy_shutdown.exit27_crit_edge: ; preds = %usb_phy_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_shutdown.exit27

land.lhs.true.i25:                                ; preds = %usb_phy_shutdown.exit
  %shutdown.i23 = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %shutdown.i23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shutdown.i23, align 4
  %tobool1.not.i24 = icmp eq ptr %7, null
  br i1 %tobool1.not.i24, label %land.lhs.true.i25.usb_phy_shutdown.exit27_crit_edge, label %if.then.i26

land.lhs.true.i25.usb_phy_shutdown.exit27_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_shutdown.exit27

if.then.i26:                                      ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %7(ptr noundef nonnull %5) #12
  br label %usb_phy_shutdown.exit27

usb_phy_shutdown.exit27:                          ; preds = %if.then.i26, %land.lhs.true.i25.usb_phy_shutdown.exit27_crit_edge, %usb_phy_shutdown.exit.usb_phy_shutdown.exit27_crit_edge
  %usb2_generic_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 25
  %8 = ptrtoint ptr %usb2_generic_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb2_generic_phy, align 4
  %call = tail call i32 @phy_exit(ptr noundef %9) #12
  %usb3_generic_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 26
  %10 = ptrtoint ptr %usb3_generic_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb3_generic_phy, align 4
  %call1 = tail call i32 @phy_exit(ptr noundef %11) #12
  %12 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb2_phy, align 4
  %tobool.not.i28 = icmp eq ptr %13, null
  br i1 %tobool.not.i28, label %usb_phy_shutdown.exit27.usb_phy_set_suspend.exit_crit_edge, label %land.lhs.true.i29

usb_phy_shutdown.exit27.usb_phy_set_suspend.exit_crit_edge: ; preds = %usb_phy_shutdown.exit27
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit

land.lhs.true.i29:                                ; preds = %usb_phy_shutdown.exit27
  %set_suspend.i = getelementptr inbounds %struct.usb_phy, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %set_suspend.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_suspend.i, align 4
  %cmp.not.i = icmp eq ptr %15, null
  br i1 %cmp.not.i, label %land.lhs.true.i29.usb_phy_set_suspend.exit_crit_edge, label %if.then.i30

land.lhs.true.i29.usb_phy_set_suspend.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit

if.then.i30:                                      ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %15(ptr noundef nonnull %13, i32 noundef 1) #12
  br label %usb_phy_set_suspend.exit

usb_phy_set_suspend.exit:                         ; preds = %if.then.i30, %land.lhs.true.i29.usb_phy_set_suspend.exit_crit_edge, %usb_phy_shutdown.exit27.usb_phy_set_suspend.exit_crit_edge
  %16 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb3_phy, align 4
  %tobool.not.i31 = icmp eq ptr %17, null
  br i1 %tobool.not.i31, label %usb_phy_set_suspend.exit.usb_phy_set_suspend.exit37_crit_edge, label %land.lhs.true.i34

usb_phy_set_suspend.exit.usb_phy_set_suspend.exit37_crit_edge: ; preds = %usb_phy_set_suspend.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit37

land.lhs.true.i34:                                ; preds = %usb_phy_set_suspend.exit
  %set_suspend.i32 = getelementptr inbounds %struct.usb_phy, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %set_suspend.i32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_suspend.i32, align 4
  %cmp.not.i33 = icmp eq ptr %19, null
  br i1 %cmp.not.i33, label %land.lhs.true.i34.usb_phy_set_suspend.exit37_crit_edge, label %if.then.i36

land.lhs.true.i34.usb_phy_set_suspend.exit37_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_phy_set_suspend.exit37

if.then.i36:                                      ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #14
  %call.i35 = tail call i32 %19(ptr noundef nonnull %17, i32 noundef 1) #12
  br label %usb_phy_set_suspend.exit37

usb_phy_set_suspend.exit37:                       ; preds = %if.then.i36, %land.lhs.true.i34.usb_phy_set_suspend.exit37_crit_edge, %usb_phy_set_suspend.exit.usb_phy_set_suspend.exit37_crit_edge
  %20 = ptrtoint ptr %usb2_generic_phy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb2_generic_phy, align 4
  %call7 = tail call i32 @phy_power_off(ptr noundef %21) #12
  %22 = ptrtoint ptr %usb3_generic_phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb3_generic_phy, align 4
  %call9 = tail call i32 @phy_power_off(ptr noundef %23) #12
  %num_clks = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 21
  %24 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 20
  %26 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %25, ptr noundef %27) #12
  tail call void @clk_bulk_unprepare(i32 noundef %25, ptr noundef %27) #12
  %reset = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 22
  %28 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reset, align 4
  %call10 = tail call i32 @reset_control_assert(ptr noundef %29) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_drd_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_complete(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %current_dr_role = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_dr_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dis_split_quirk = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %4 = ptrtoint ptr %dis_split_quirk to i32
  call void @__asan_loadN_noabort(i32 %4, i32 6)
  %bf.load = load i48, ptr %dis_split_quirk, align 4
  %5 = and i48 %bf.load, 64
  %tobool.not = icmp eq i48 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %regs = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 30
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %7, i32 1292
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !266
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i = getelementptr i8, ptr %7, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 50700, i32 noundef %9) #12
  %or = or i32 %9, 16384
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %add.ptr1.i8 = getelementptr i8, ptr %11, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8, i32 %12) #12, !srcloc !269
  %add.ptr2.i = getelementptr i8, ptr %11, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 50700, i32 noundef %or) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @dwc3_suspend_common(ptr noundef %1, [1 x i32] [i32 2])
  %call2 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #12
  %call2 = tail call fastcc i32 @dwc3_resume_common(ptr noundef %1, [1 x i32] [i32 16])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #12
  tail call void @pm_runtime_enable(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %current_dr_role.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %current_dr_role.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_dr_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond.i = icmp eq i32 %3, 2
  br i1 %cond.i, label %sw.bb.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb.i:                                          ; preds = %entry
  %connected.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %4 = ptrtoint ptr %connected.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 6)
  %bf.load.i = load i48, ptr %connected.i, align 4
  %tobool.not.i = icmp sgt i48 %bf.load.i, -1
  br i1 %tobool.not.i, label %sw.bb.i.if.end_crit_edge, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %sw.bb.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @dwc3_suspend_common(ptr noundef %1, [1 x i32] [i32 1026])
  %call6 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %sw.bb.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #12
  %call2 = tail call fastcc i32 @dwc3_resume_common(ptr noundef %1, [1 x i32] [i32 1040])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_dr_role = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_dr_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond = icmp eq i32 %3, 2
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dwc3_gadget_process_pending_events(ptr noundef %1) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_runtime_idle(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %current_dr_role = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_dr_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond = icmp eq i32 %3, 2
  br i1 %cond, label %sw.bb.i, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb.i:                                          ; preds = %entry
  %connected.i = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 79
  %4 = ptrtoint ptr %connected.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 6)
  %bf.load.i = load i48, ptr %connected.i, align 4
  %tobool.not.i = icmp sgt i48 %bf.load.i, -1
  br i1 %tobool.not.i, label %sw.bb.i.sw.epilog_crit_edge, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %5 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i7 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 8) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -16, %sw.bb.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc3_suspend_common(ptr noundef %dwc, [1 x i32] %msg.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg.coerce.fca.0.extract = extractvalue [1 x i32] %msg.coerce, 0
  %current_dr_role = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 33
  %0 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_dr_role, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb8
    i32 3, label %sw.bb24
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dev = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 12
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %sw.bb.do.body1_crit_edge

sw.bb.do.body1_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1

pm_runtime_suspended.exit:                        ; preds = %sw.bb
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 15
  %7 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.sw.epilog_crit_edge, label %pm_runtime_suspended.exit.do.body1_crit_edge

pm_runtime_suspended.exit.do.body1_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1

pm_runtime_suspended.exit.sw.epilog_crit_edge:    ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body1:                                         ; preds = %pm_runtime_suspended.exit.do.body1_crit_edge, %sw.bb.do.body1_crit_edge
  %lock = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call6 = tail call i32 @dwc3_gadget_suspend(ptr noundef %dwc) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  %irq_gadget = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 43
  %8 = ptrtoint ptr %irq_gadget to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_gadget, align 4
  tail call void @synchronize_irq(i32 noundef %9) #12
  tail call fastcc void @dwc3_core_exit(ptr noundef %dwc)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %and = and i32 %msg.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9.not = icmp eq i32 %and, 0
  br i1 %cmp9.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dwc3_core_exit(ptr noundef %dwc)
  br label %sw.epilog

if.end12:                                         ; preds = %sw.bb8
  %dis_u2_susphy_quirk = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %10 = ptrtoint ptr %dis_u2_susphy_quirk to i32
  call void @__asan_loadN_noabort(i32 %10, i32 6)
  %bf.load = load i48, ptr %dis_u2_susphy_quirk, align 4
  %11 = and i48 %bf.load, 786432
  %12 = icmp eq i48 %11, 0
  br i1 %12, label %if.end12.if.end21_crit_edge, label %if.then18

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %14, i32 256
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !266
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i = getelementptr i8, ptr %14, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 49664, i32 noundef %16) #12
  %or = or i32 %16, 320
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %add.ptr1.i2 = getelementptr i8, ptr %18, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i2, i32 %19) #12, !srcloc !269
  %add.ptr2.i = getelementptr i8, ptr %18, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 49664, i32 noundef %or) #12
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end12.if.end21_crit_edge
  %usb2_generic_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 25
  %20 = ptrtoint ptr %usb2_generic_phy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb2_generic_phy, align 4
  %call22 = tail call i32 @phy_pm_runtime_put_sync(ptr noundef %21) #12
  %usb3_generic_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 26
  %22 = ptrtoint ptr %usb3_generic_phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb3_generic_phy, align 4
  %call23 = tail call i32 @phy_pm_runtime_put_sync(ptr noundef %23) #12
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %and26 = and i32 %msg.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27.not = icmp eq i32 %and26, 0
  br i1 %cmp27.not, label %if.end30, label %sw.bb24.sw.epilog_crit_edge

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end30:                                         ; preds = %sw.bb24
  %current_otg_role = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 45
  %24 = ptrtoint ptr %current_otg_role to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %current_otg_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp31 = icmp eq i32 %25, 2
  br i1 %cmp31, label %do.body35, label %if.end30.if.end51_crit_edge

if.end30.if.end51_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.body35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %lock41 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock41) #12
  %call48 = tail call i32 @dwc3_gadget_suspend(ptr noundef %dwc) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock41, i32 noundef %call43) #12
  %irq_gadget50 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 43
  %26 = ptrtoint ptr %irq_gadget50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq_gadget50, align 4
  tail call void @synchronize_irq(i32 noundef %27) #12
  br label %if.end51

if.end51:                                         ; preds = %do.body35, %if.end30.if.end51_crit_edge
  tail call void @dwc3_otg_exit(ptr noundef %dwc) #12
  tail call fastcc void @dwc3_core_exit(ptr noundef %dwc)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end51, %sw.bb24.sw.epilog_crit_edge, %if.end21, %if.then11, %do.body1, %pm_runtime_suspended.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_pm_runtime_put_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_resume_common(ptr noundef %dwc, [1 x i32] %msg.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg.coerce.fca.0.extract = extractvalue [1 x i32] %msg.coerce, 0
  %current_dr_role = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 33
  %0 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_dr_role, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb8
    i32 3, label %sw.bb33
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @dwc3_core_init_for_resume(ptr noundef %dwc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %regs.i = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !266
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i.i = getelementptr i8, ptr %4, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i, i32 noundef 49424, i32 noundef %6) #12
  %and.i = and i32 %6, -12289
  %or.i = or i32 %and.i, 8192
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %add.ptr1.i8.i = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i, i32 %9) #12, !srcloc !269
  %add.ptr2.i.i = getelementptr i8, ptr %8, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i, i32 noundef 49424, i32 noundef %or.i) #12
  %10 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %current_dr_role, align 4
  %lock = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call6 = tail call i32 @dwc3_gadget_resume(ptr noundef %dwc) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %and = and i32 %msg.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9.not = icmp eq i32 %and, 0
  br i1 %cmp9.not, label %if.then11, label %if.end16

if.then11:                                        ; preds = %sw.bb8
  %call12 = tail call fastcc i32 @dwc3_core_init_for_resume(ptr noundef %dwc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %regs.i104 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %11 = ptrtoint ptr %regs.i104 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i104, align 4
  %add.ptr1.i.i105 = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i105) #12, !srcloc !266
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i.i106 = getelementptr i8, ptr %12, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i106, i32 noundef 49424, i32 noundef %14) #12
  %and.i107 = and i32 %14, -12289
  %or.i108 = or i32 %and.i107, 4096
  %15 = ptrtoint ptr %regs.i104 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i104, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i108) #12
  %add.ptr1.i8.i109 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i109, i32 %17) #12, !srcloc !269
  %add.ptr2.i.i110 = getelementptr i8, ptr %16, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i110, i32 noundef 49424, i32 noundef %or.i108) #12
  %18 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %current_dr_role, align 4
  br label %cleanup

if.end16:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %regs = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %20, i32 256
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !266
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i = getelementptr i8, ptr %20, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i, i32 noundef 49664, i32 noundef %22) #12
  %dis_u2_susphy_quirk = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 79
  %23 = ptrtoint ptr %dis_u2_susphy_quirk to i32
  call void @__asan_loadN_noabort(i32 %23, i32 6)
  %bf.load = load i48, ptr %dis_u2_susphy_quirk, align 4
  %24 = and i48 %bf.load, 524288
  %tobool18.not = icmp eq i48 %24, 0
  %and20 = and i32 %22, -65
  %spec.select = select i1 %tobool18.not, i32 %22, i32 %and20
  %25 = and i48 %bf.load, 262144
  %tobool26.not = icmp eq i48 %25, 0
  %and28 = and i32 %spec.select, -257
  %reg.1 = select i1 %tobool26.not, i32 %spec.select, i32 %and28
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %28 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #12
  %add.ptr1.i113 = getelementptr i8, ptr %27, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i113, i32 %28) #12, !srcloc !269
  %add.ptr2.i = getelementptr i8, ptr %27, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i, i32 noundef 49664, i32 noundef %reg.1) #12
  %usb2_generic_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 25
  %29 = ptrtoint ptr %usb2_generic_phy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb2_generic_phy, align 4
  %call31 = tail call i32 @phy_pm_runtime_get_sync(ptr noundef %30) #12
  %usb3_generic_phy = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 26
  %31 = ptrtoint ptr %usb3_generic_phy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb3_generic_phy, align 4
  %call32 = tail call i32 @phy_pm_runtime_get_sync(ptr noundef %32) #12
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  %and35 = and i32 %msg.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36.not = icmp eq i32 %and35, 0
  br i1 %cmp36.not, label %if.end39, label %sw.bb33.cleanup_crit_edge

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %sw.bb33
  %call40 = tail call fastcc i32 @dwc3_core_init_for_resume(ptr noundef %dwc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %33 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %current_dr_role, align 4
  %regs.i114 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 30
  %35 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i114, align 4
  %add.ptr1.i.i115 = getelementptr i8, ptr %36, i32 16
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i115) #12, !srcloc !266
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %add.ptr3.i.i116 = getelementptr i8, ptr %36, i32 -49408
  tail call fastcc void @trace_dwc3_readl(ptr noundef %add.ptr3.i.i116, i32 noundef 49424, i32 noundef %38) #12
  %and.i117 = and i32 %38, -12289
  %shl.i = shl i32 %34, 12
  %or.i118 = or i32 %and.i117, %shl.i
  %39 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i114, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i118) #12
  %add.ptr1.i8.i119 = getelementptr i8, ptr %40, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i119, i32 %41) #12, !srcloc !269
  %add.ptr2.i.i120 = getelementptr i8, ptr %40, i32 -49408
  tail call fastcc void @trace_dwc3_writel(ptr noundef %add.ptr2.i.i120, i32 noundef 49424, i32 noundef %or.i118) #12
  %42 = ptrtoint ptr %current_dr_role to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %34, ptr %current_dr_role, align 4
  tail call void @dwc3_otg_init(ptr noundef %dwc) #12
  %current_otg_role = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 45
  %43 = ptrtoint ptr %current_otg_role to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %current_otg_role, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %44, label %if.end43.cleanup_crit_edge [
    i32 1, label %if.then47
    i32 2, label %do.body53
  ]

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dwc3_otg_host_init(ptr noundef %dwc) #12
  br label %cleanup

do.body53:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %lock59 = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 10
  %call61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock59) #12
  %call66 = tail call i32 @dwc3_gadget_resume(ptr noundef %dwc) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock59, i32 noundef %call61) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body53, %if.then47, %if.end43.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %sw.bb33.cleanup_crit_edge, %if.end16, %if.end15, %if.then11.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb.cleanup_crit_edge ], [ %call12, %if.then11.cleanup_crit_edge ], [ %call40, %if.end39.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %do.body53 ], [ 0, %sw.bb33.cleanup_crit_edge ], [ 0, %if.end16 ], [ 0, %if.end15 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_core_init_for_resume(ptr noundef %dwc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 22
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  %call = tail call i32 @reset_control_deassert(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_clks = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 21
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 20
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %3, ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.assert_reset_crit_edge

if.end.assert_reset_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %assert_reset

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #12
  br label %assert_reset

if.end4:                                          ; preds = %if.end.i
  %call5 = tail call fastcc i32 @dwc3_core_init(ptr noundef %dwc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %disable_clks

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

disable_clks:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_clks, align 4
  %8 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %7, ptr noundef %9) #12
  tail call void @clk_bulk_unprepare(i32 noundef %7, ptr noundef %9) #12
  br label %assert_reset

assert_reset:                                     ; preds = %disable_clks, %if.then3.i, %if.end.assert_reset_crit_edge
  %ret.0 = phi i32 [ %call5, %disable_clks ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end.assert_reset_crit_edge ]
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset, align 4
  %call12 = tail call i32 @reset_control_assert(ptr noundef %11) #12
  br label %cleanup

cleanup:                                          ; preds = %assert_reset, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %assert_reset ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_pm_runtime_get_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_otg_host_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_gadget_process_pending_events(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !17, !19, !20, !22, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !49, !51, !53, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !141, !142, !143, !145, !147, !148, !149, !150, !151, !152, !153, !155, !156, !157, !158, !160, !162, !164, !166, !168, !170, !172, !174, !175, !176, !177, !178, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !234, !236, !237, !239, !241, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254}
!llvm.named.register.sp = !{!256}
!llvm.module.flags = !{!257, !258, !259, !260, !261, !262, !263, !264}
!llvm.ident = !{!265}

!0 = !{ptr @__initcall__kmod_dwc3__332_2074_dwc3_driver_init6, !1, !"__initcall__kmod_dwc3__332_2074_dwc3_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc3/core.c", i32 2074, i32 1}
!2 = !{ptr @__exitcall_dwc3_driver_exit, !1, !"__exitcall_dwc3_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias333, !4, !"__UNIQUE_ID_alias333", i1 false, i1 false}
!4 = !{!"../drivers/usb/dwc3/core.c", i32 2076, i32 1}
!5 = !{ptr @__UNIQUE_ID_author334, !6, !"__UNIQUE_ID_author334", i1 false, i1 false}
!6 = !{!"../drivers/usb/dwc3/core.c", i32 2077, i32 1}
!7 = !{ptr @__UNIQUE_ID_file335, !8, !"__UNIQUE_ID_file335", i1 false, i1 false}
!8 = !{!"../drivers/usb/dwc3/core.c", i32 2078, i32 1}
!9 = !{ptr @__UNIQUE_ID_license336, !8, !"__UNIQUE_ID_license336", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description337, !11, !"__UNIQUE_ID_description337", i1 false, i1 false}
!11 = !{!"../drivers/usb/dwc3/core.c", i32 2079, i32 1}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc3/trace.h", i32 41, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!16 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/usb/dwc3/trace.h", i32 46, i32 1}
!22 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/dwc3/core.c", i32 2067, i32 11}
!25 = !{ptr @dwc3_driver, !26, !"dwc3_driver", i1 false, i1 false}
!26 = !{!"../drivers/usb/dwc3/core.c", i32 2063, i32 31}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/dwc3/core.c", i32 1571, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dwc3_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @dwc3_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/dwc3/core.c", i32 1631, i32 3}
!37 = !{ptr @dwc3_probe._entry.9, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @dwc3_probe._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @dwc3_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/usb/dwc3/core.c", i32 1639, i32 2}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dwc3_probe.__key.13, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/usb/dwc3/core.c", i32 1640, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/dwc3/core.c", i32 1654, i32 3}
!47 = !{ptr @dwc3_probe._entry.15, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @dwc3_probe._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/dwc3/core.c", i32 1669, i32 27}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/dwc3/core.c", i32 1331, i32 5}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/dwc3/core.c", i32 1337, i32 41}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/dwc3/core.c", i32 1341, i32 4}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @dwc3_get_properties._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @dwc3_get_properties._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/dwc3/core.c", i32 1345, i32 5}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/dwc3/core.c", i32 1346, i32 31}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/dwc3/core.c", i32 1349, i32 5}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/dwc3/core.c", i32 1350, i32 31}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/dwc3/core.c", i32 1353, i32 5}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/dwc3/core.c", i32 1355, i32 5}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/dwc3/core.c", i32 1357, i32 5}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/dwc3/core.c", i32 1359, i32 5}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/dwc3/core.c", i32 1360, i32 31}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/dwc3/core.c", i32 1362, i32 31}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/dwc3/core.c", i32 1364, i32 31}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/dwc3/core.c", i32 1366, i32 31}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/dwc3/core.c", i32 1369, i32 8}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/dwc3/core.c", i32 1371, i32 32}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/dwc3/core.c", i32 1375, i32 5}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/dwc3/core.c", i32 1377, i32 5}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/dwc3/core.c", i32 1379, i32 5}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/dwc3/core.c", i32 1381, i32 5}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/dwc3/core.c", i32 1383, i32 5}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/dwc3/core.c", i32 1385, i32 5}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/dwc3/core.c", i32 1387, i32 5}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/dwc3/core.c", i32 1389, i32 5}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/dwc3/core.c", i32 1391, i32 5}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/dwc3/core.c", i32 1393, i32 5}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/dwc3/core.c", i32 1395, i32 5}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/dwc3/core.c", i32 1397, i32 5}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/dwc3/core.c", i32 1399, i32 5}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/dwc3/core.c", i32 1401, i32 5}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/dwc3/core.c", i32 1403, i32 5}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/dwc3/core.c", i32 1405, i32 5}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/dwc3/core.c", i32 1407, i32 5}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/dwc3/core.c", i32 1409, i32 5}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/dwc3/core.c", i32 1412, i32 5}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/dwc3/core.c", i32 1413, i32 31}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/dwc3/core.c", i32 1415, i32 35}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/dwc3/core.c", i32 1417, i32 32}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/dwc3/core.c", i32 1419, i32 32}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/dwc3/core.c", i32 1423, i32 5}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/dwc3/core.c", i32 1426, i32 5}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/dwc3/core.c", i32 431, i32 3}
!140 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @dwc3_alloc_event_buffers._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @dwc3_alloc_event_buffers._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/dwc3/core.c", i32 90, i32 45}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/dwc3/core.c", i32 96, i32 3}
!147 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @dwc3_get_dr_mode._entry, !146, !"_entry", i1 false, i1 false}
!150 = !{ptr @dwc3_get_dr_mode._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/dwc3/core.c", i32 1051, i32 3}
!155 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @dwc3_core_init._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @dwc3_core_init._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/dwc3/core.c", i32 680, i32 36}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/dwc3/core.c", i32 684, i32 36}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/dwc3/core.c", i32 1179, i32 52}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/dwc3/core.c", i32 1191, i32 35}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/dwc3/core.c", i32 1200, i32 35}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/dwc3/core.c", i32 1204, i32 44}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/dwc3/core.c", i32 1214, i32 44}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/dwc3/core.c", i32 831, i32 3}
!174 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @dwc3_core_setup_global_control._entry, !173, !"_entry", i1 false, i1 false}
!177 = !{ptr @dwc3_core_setup_global_control._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!178 = distinct !{null, !179, !"__already_done", i1 false, i1 false}
!179 = !{!"../drivers/usb/dwc3/core.c", i32 835, i32 2}
!180 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/dwc3/core.c", i32 513, i32 3}
!183 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @dwc3_setup_scratch_buffers._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @dwc3_setup_scratch_buffers._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = distinct !{null, !187, !"__already_done", i1 false, i1 false}
!187 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!188 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/dwc3/core.c", i32 884, i32 41}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/dwc3/core.c", i32 890, i32 3}
!194 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @dwc3_set_incr_burst_type._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @dwc3_set_incr_burst_type._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/dwc3/core.c", i32 899, i32 3}
!199 = !{ptr @dwc3_set_incr_burst_type._entry.90, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @dwc3_set_incr_burst_type._entry_ptr.92, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/dwc3/core.c", i32 948, i32 3}
!203 = !{ptr @dwc3_set_incr_burst_type._entry.93, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @dwc3_set_incr_burst_type._entry_ptr.95, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/dwc3/core.c", i32 1460, i32 3}
!207 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @dwc3_check_params._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @dwc3_check_params._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/dwc3/core.c", i32 1482, i32 4}
!212 = !{ptr @dwc3_check_params._entry.98, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @dwc3_check_params._entry_ptr.100, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/dwc3/core.c", i32 1489, i32 4}
!216 = !{ptr @dwc3_check_params._entry.101, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @dwc3_check_params._entry_ptr.103, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/usb/dwc3/core.c", i32 1492, i32 3}
!220 = !{ptr @dwc3_check_params._entry.104, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @dwc3_check_params._entry_ptr.106, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.108, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/dwc3/core.c", i32 1527, i32 5}
!224 = !{ptr @dwc3_check_params._entry.107, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @dwc3_check_params._entry_ptr.109, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.111, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/dwc3/core.c", i32 1532, i32 5}
!228 = !{ptr @dwc3_check_params._entry.110, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @dwc3_check_params._entry_ptr.112, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.113, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/dwc3/core.c", i32 1243, i32 35}
!232 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/usb/dwc3/core.c", i32 1255, i32 35}
!234 = !{ptr @dwc3_core_init_mode.__key, !235, !"__key", i1 false, i1 false}
!235 = !{!"../drivers/usb/dwc3/core.c", i32 1258, i32 3}
!236 = !{ptr @.str.115, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.116, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/dwc3/core.c", i32 1261, i32 35}
!239 = !{ptr @.str.117, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/dwc3/core.c", i32 1264, i32 3}
!241 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @dwc3_core_init_mode._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @dwc3_core_init_mode._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.119, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/usb/dwc3/core.c", i32 191, i32 4}
!246 = !{ptr @__dwc3_set_mode._entry, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @__dwc3_set_mode._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.121, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/dwc3/core.c", i32 216, i32 4}
!250 = !{ptr @__dwc3_set_mode._entry.120, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @__dwc3_set_mode._entry_ptr.122, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @of_dwc3_match, !253, !"of_dwc3_match", i1 false, i1 false}
!253 = !{!"../drivers/usb/dwc3/core.c", i32 2040, i32 34}
!254 = !{ptr @dwc3_dev_pm_ops, !255, !"dwc3_dev_pm_ops", i1 false, i1 false}
!255 = !{!"../drivers/usb/dwc3/core.c", i32 2032, i32 32}
!256 = !{!"sp"}
!257 = !{i32 1, !"wchar_size", i32 2}
!258 = !{i32 1, !"min_enum_size", i32 4}
!259 = !{i32 8, !"branch-target-enforcement", i32 0}
!260 = !{i32 8, !"sign-return-address", i32 0}
!261 = !{i32 8, !"sign-return-address-all", i32 0}
!262 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!263 = !{i32 7, !"uwtable", i32 1}
!264 = !{i32 7, !"frame-pointer", i32 2}
!265 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!266 = !{i64 5374241}
!267 = !{i64 2156443160}
!268 = !{i64 2156443564}
!269 = !{i64 5373823}
!270 = !{i64 2148771555, i64 2148771560, i64 2148771573, i64 2148771617, i64 2148771651, i64 2148771672}
!271 = !{!"branch_weights", i32 2000, i32 1}
!272 = !{i64 2156181999}
!273 = !{i64 2156182220}
!274 = !{i64 2149347641}
!275 = !{i64 2149348677}
!276 = !{i64 2156198173}
!277 = !{i64 2156198396}
!278 = !{!"auto-init"}
!279 = !{i64 2148289159}
!280 = !{i64 773982, i64 774007, i64 774029, i64 774045, i64 774057, i64 774077, i64 774101, i64 774117, i64 774129}
!281 = !{i64 2148289347}
!282 = !{!"branch_weights", i32 1, i32 2000}
!283 = !{i8 0, i8 2}
