; ModuleID = '/llk/IR_all_yes/drivers/mailbox/ti-msgmgr.c_pt.bc'
source_filename = "../drivers/mailbox/ti-msgmgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_msgmgr_desc = type { i8, i8, i8, i8, i8, i32, i32, i8, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.ti_msgmgr_valid_queue_desc = type { i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ti_msgmgr_inst = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.mbox_controller, ptr }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.ti_queue_inst = type { [30 x i8], i8, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ti_msgmgr_message = type { i32, ptr }

@__initcall__kmod_ti_msgmgr__190_834_ti_msgmgr_driver_init6 = internal global ptr @ti_msgmgr_driver_init, section ".initcall6.init", align 4
@ti_msgmgr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_msgmgr_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_msgmgr_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_msgmgr_driver_exit = internal global ptr @ti_msgmgr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file191 = internal constant [41 x i8] c"ti_msgmgr.file=drivers/mailbox/ti-msgmgr\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [25 x i8] c"ti_msgmgr.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [48 x i8] c"ti_msgmgr.description=TI message manager driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author194 = internal constant [32 x i8] c"ti_msgmgr.author=Nishanth Menon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias195 = internal constant [35 x i8] c"ti_msgmgr.alias=platform:ti-msgmgr\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti-msgmgr\00", [22 x i8] zeroinitializer }, align 32
@ti_msgmgr_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,k2g-message-manager\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k2g_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-secure-proxy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am654_desc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ti_msgmgr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 723, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no OF information\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti_msgmgr_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mailbox/ti-msgmgr.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_msgmgr_probe._entry_ptr = internal global ptr @ti_msgmgr_probe._entry, section ".printk_index", align 4
@ti_msgmgr_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 730, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OF data missing\0A\00", [47 x i8] zeroinitializer }, align 32
@ti_msgmgr_probe._entry_ptr.8 = internal global ptr @ti_msgmgr_probe._entry.6, section ".printk_index", align 4
@ti_msgmgr_probe.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti_msgmgr\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"proxy region=%p, queue_state=%p\0A\00", [63 x i8] zeroinitializer }, align 32
@ti_msgmgr_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 768, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid Number of queues %d. Max %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@ti_msgmgr_probe._entry_ptr.14 = internal global ptr @ti_msgmgr_probe._entry.11, section ".printk_index", align 4
@ti_msgmgr_chan_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @ti_msgmgr_send_data, ptr null, ptr @ti_msgmgr_queue_startup, ptr @ti_msgmgr_queue_shutdown, ptr @ti_msgmgr_last_tx_done, ptr @ti_msgmgr_queue_peek_data }, [40 x i8] zeroinitializer }, align 32
@ti_msgmgr_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 822, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to register mbox_controller(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@ti_msgmgr_probe._entry_ptr.17 = internal global ptr @ti_msgmgr_probe._entry.15, section ".printk_index", align 4
@ti_msgmgr_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 596, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Queue Data [idx=%d] queuid %d > %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti_msgmgr_queue_setup\00", [42 x i8] zeroinitializer }, align 32
@ti_msgmgr_queue_setup._entry_ptr = internal global ptr @ti_msgmgr_queue_setup._entry, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"thr\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %s_%03d\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s_%03d_%03d\00", [16 x i8] zeroinitializer }, align 32
@ti_msgmgr_queue_setup.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.19, ptr @.str.3, ptr @.str.25, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%d] qidx=%d pidx=%d irq=%d q_s=%p q_e = %p\0A\00", [51 x i8] zeroinitializer }, align 32
@ti_msgmgr_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no platform drv data??\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti_msgmgr_send_data\00", [44 x i8] zeroinitializer }, align 32
@ti_msgmgr_send_data._entry_ptr = internal global ptr @ti_msgmgr_send_data._entry, section ".printk_index", align 4
@ti_msgmgr_send_data._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 364, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error on channel %s\0A\00", [43 x i8] zeroinitializer }, align 32
@ti_msgmgr_send_data._entry_ptr.30 = internal global ptr @ti_msgmgr_send_data._entry.28, section ".printk_index", align 4
@ti_msgmgr_send_data._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Queue %s message length %zu > max %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ti_msgmgr_send_data._entry_ptr.33 = internal global ptr @ti_msgmgr_send_data._entry.31, section ".printk_index", align 4
@ti_msgmgr_queue_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Cannot transmit with 0 credits!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti_msgmgr_queue_startup\00", [40 x i8] zeroinitializer }, align 32
@ti_msgmgr_queue_startup._entry_ptr = internal global ptr @ti_msgmgr_queue_startup._entry, section ".printk_index", align 4
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_%03d\00", [24 x i8] zeroinitializer }, align 32
@ti_msgmgr_queue_rx_irq_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 431, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"QID %d PID %d:No IRQ[%s]: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ti_msgmgr_queue_rx_irq_req\00", [37 x i8] zeroinitializer }, align 32
@ti_msgmgr_queue_rx_irq_req._entry_ptr = internal global ptr @ti_msgmgr_queue_rx_irq_req._entry, section ".printk_index", align 4
@ti_msgmgr_queue_rx_irq_req._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to get IRQ %d on %s(res=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@ti_msgmgr_queue_rx_irq_req._entry_ptr.41 = internal global ptr @ti_msgmgr_queue_rx_irq_req._entry.39, section ".printk_index", align 4
@ti_msgmgr_queue_rx_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.42, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ti_msgmgr_queue_rx_interrupt\00", [35 x i8] zeroinitializer }, align 32
@ti_msgmgr_queue_rx_interrupt._entry_ptr = internal global ptr @ti_msgmgr_queue_rx_interrupt._entry, section ".printk_index", align 4
@ti_msgmgr_queue_rx_interrupt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot handle rx interrupt on tx channel %s\0A\00", [51 x i8] zeroinitializer }, align 32
@ti_msgmgr_queue_rx_interrupt._entry_ptr.45 = internal global ptr @ti_msgmgr_queue_rx_interrupt._entry.43, section ".printk_index", align 4
@ti_msgmgr_queue_rx_interrupt._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error on Rx channel %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ti_msgmgr_queue_rx_interrupt._entry_ptr.48 = internal global ptr @ti_msgmgr_queue_rx_interrupt._entry.46, section ".printk_index", align 4
@ti_msgmgr_queue_rx_interrupt.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.42, ptr @.str.3, ptr @.str.49, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Spurious event - 0 pending data!\0A\00", [62 x i8] zeroinitializer }, align 32
@ti_msgmgr_last_tx_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.50, ptr @.str.3, i32 324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti_msgmgr_last_tx_done\00", [41 x i8] zeroinitializer }, align 32
@ti_msgmgr_last_tx_done._entry_ptr = internal global ptr @ti_msgmgr_last_tx_done._entry, section ".printk_index", align 4
@ti_msgmgr_queue_peek_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.51, ptr @.str.3, i32 297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ti_msgmgr_queue_peek_data\00", [38 x i8] zeroinitializer }, align 32
@ti_msgmgr_queue_peek_data._entry_ptr = internal global ptr @ti_msgmgr_queue_peek_data._entry, section ".printk_index", align 4
@ti_msgmgr_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 538, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid arguments in dt[%d]. Must be %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti_msgmgr_of_xlate\00", [45 x i8] zeroinitializer }, align 32
@ti_msgmgr_of_xlate._entry_ptr = internal global ptr @ti_msgmgr_of_xlate._entry, section ".printk_index", align 4
@ti_msgmgr_of_xlate._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Queue ID %d, Proxy ID %d is wrong on %pOFn\0A\00", [52 x i8] zeroinitializer }, align 32
@ti_msgmgr_of_xlate._entry_ptr.56 = internal global ptr @ti_msgmgr_of_xlate._entry.54, section ".printk_index", align 4
@k2g_desc = internal constant { %struct.ti_msgmgr_desc, [48 x i8] } { %struct.ti_msgmgr_desc { i8 64, i8 64, i8 -128, i8 16, i8 31, i32 16773120, i32 0, i8 0, i32 0, ptr @k2g_valid_queues, ptr @.str.57, ptr @.str.58, ptr null, i32 11, i8 0 }, [48 x i8] zeroinitializer }, align 32
@am654_desc = internal constant { %struct.ti_msgmgr_desc, [48 x i8] } { %struct.ti_msgmgr_desc { i8 -66, i8 60, i8 0, i8 0, i8 14, i32 255, i32 0, i8 0, i32 0, ptr null, ptr @.str.59, ptr @.str.60, ptr @.str.61, i32 190, i8 1 }, [48 x i8] zeroinitializer }, align 32
@k2g_valid_queues = internal constant { [11 x %struct.ti_msgmgr_valid_queue_desc], [63 x i8] } { [11 x %struct.ti_msgmgr_valid_queue_desc] [%struct.ti_msgmgr_valid_queue_desc { i8 0, i8 0, i8 1 }, %struct.ti_msgmgr_valid_queue_desc { i8 1, i8 0, i8 1 }, %struct.ti_msgmgr_valid_queue_desc { i8 2, i8 0, i8 1 }, %struct.ti_msgmgr_valid_queue_desc { i8 3, i8 0, i8 1 }, %struct.ti_msgmgr_valid_queue_desc { i8 5, i8 2, i8 0 }, %struct.ti_msgmgr_valid_queue_desc { i8 56, i8 1, i8 1 }, %struct.ti_msgmgr_valid_queue_desc { i8 57, i8 2, i8 0 }, %struct.ti_msgmgr_valid_queue_desc { i8 58, i8 3, i8 1 }, %struct.ti_msgmgr_valid_queue_desc { i8 59, i8 4, i8 1 }, %struct.ti_msgmgr_valid_queue_desc { i8 60, i8 5, i8 1 }, %struct.ti_msgmgr_valid_queue_desc { i8 61, i8 6, i8 1 }], [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"queue_proxy_region\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"queue_state_debug_region\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"target_data\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rt\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"scfg\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"ti_msgmgr_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 827, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 830, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"ti_msgmgr_of_match\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 698, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 723, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 730, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 762, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 767, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [19 x i8] c"ti_msgmgr_chan_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 646, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 822, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 595, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 613, i32 9 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 614, i32 46 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 627, i32 24 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 627, i32 31 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 628, i32 46 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 639, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 358, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 364, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 369, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 473, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 417, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 428, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 440, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 215, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 221, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 228, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 236, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 324, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 297, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 537, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 563, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [9 x i8] c"k2g_desc\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 669, i32 36 }
@___asan_gen_.245 = private unnamed_addr constant [11 x i8] c"am654_desc\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 684, i32 36 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"k2g_valid_queues\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 655, i32 48 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 673, i32 22 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 674, i32 24 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 688, i32 22 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 689, i32 24 }
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.264 = private constant [31 x i8] c"../drivers/mailbox/ti-msgmgr.c\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 690, i32 22 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_alias195, ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_ti_msgmgr_driver_exit, ptr @__initcall__kmod_ti_msgmgr__190_834_ti_msgmgr_driver_init6, ptr @ti_msgmgr_driver_exit, ptr @ti_msgmgr_last_tx_done._entry, ptr @ti_msgmgr_last_tx_done._entry_ptr, ptr @ti_msgmgr_of_xlate._entry, ptr @ti_msgmgr_of_xlate._entry.54, ptr @ti_msgmgr_of_xlate._entry_ptr, ptr @ti_msgmgr_of_xlate._entry_ptr.56, ptr @ti_msgmgr_probe._entry, ptr @ti_msgmgr_probe._entry.11, ptr @ti_msgmgr_probe._entry.15, ptr @ti_msgmgr_probe._entry.6, ptr @ti_msgmgr_probe._entry_ptr, ptr @ti_msgmgr_probe._entry_ptr.14, ptr @ti_msgmgr_probe._entry_ptr.17, ptr @ti_msgmgr_probe._entry_ptr.8, ptr @ti_msgmgr_queue_peek_data._entry, ptr @ti_msgmgr_queue_peek_data._entry_ptr, ptr @ti_msgmgr_queue_rx_interrupt._entry, ptr @ti_msgmgr_queue_rx_interrupt._entry.43, ptr @ti_msgmgr_queue_rx_interrupt._entry.46, ptr @ti_msgmgr_queue_rx_interrupt._entry_ptr, ptr @ti_msgmgr_queue_rx_interrupt._entry_ptr.45, ptr @ti_msgmgr_queue_rx_interrupt._entry_ptr.48, ptr @ti_msgmgr_queue_rx_irq_req._entry, ptr @ti_msgmgr_queue_rx_irq_req._entry.39, ptr @ti_msgmgr_queue_rx_irq_req._entry_ptr, ptr @ti_msgmgr_queue_rx_irq_req._entry_ptr.41, ptr @ti_msgmgr_queue_setup._entry, ptr @ti_msgmgr_queue_setup._entry_ptr, ptr @ti_msgmgr_queue_startup._entry, ptr @ti_msgmgr_queue_startup._entry_ptr, ptr @ti_msgmgr_send_data._entry, ptr @ti_msgmgr_send_data._entry.28, ptr @ti_msgmgr_send_data._entry.31, ptr @ti_msgmgr_send_data._entry_ptr, ptr @ti_msgmgr_send_data._entry_ptr.30, ptr @ti_msgmgr_send_data._entry_ptr.33, ptr @ti_msgmgr_driver, ptr @.str, ptr @ti_msgmgr_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @ti_msgmgr_chan_ops, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @k2g_desc, ptr @am654_desc, ptr @k2g_valid_queues, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_chan_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_send_data._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_send_data._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_queue_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_queue_rx_irq_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_queue_rx_irq_req._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_queue_rx_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_queue_rx_interrupt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_queue_rx_interrupt._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_last_tx_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_queue_peek_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_msgmgr_of_xlate._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k2g_desc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_desc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k2g_valid_queues to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_msgmgr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_msgmgr_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_msgmgr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_msgmgr_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_msgmgr_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %sproxy_desc = alloca %struct.ti_msgmgr_valid_queue_desc, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup119

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_match_device(ptr noundef nonnull @ti_msgmgr_of_match, ptr noundef %dev1) #8
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %cleanup119

if.end8:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #8
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup119_crit_edge, label %if.end12

if.end8.cleanup119_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.end12:                                         ; preds = %if.end8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %call.i, align 8
  %desc14 = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %desc14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %desc14, align 4
  %data_region_name = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %data_region_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_region_name, align 4
  %call15 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %7) #8
  %call16 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call15) #8
  %queue_proxy_region = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %queue_proxy_region to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %queue_proxy_region, align 8
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call16 to i32
  br label %cleanup119

if.end22:                                         ; preds = %if.end12
  %status_region_name = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %status_region_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %status_region_name, align 4
  %call23 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %11) #8
  %call24 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call23) #8
  %queue_state_debug_region = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %queue_state_debug_region to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call24, ptr %queue_state_debug_region, align 4
  %cmp.i233 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call24 to i32
  br label %cleanup119

if.end30:                                         ; preds = %if.end22
  %is_sproxy = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %is_sproxy to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_sproxy, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool31.not = icmp eq i8 %15, 0
  br i1 %tobool31.not, label %if.end30.do.body42_crit_edge, label %if.then32

if.end30.do.body42_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

if.then32:                                        ; preds = %if.end30
  %ctrl_region_name = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %3, i32 0, i32 12
  %16 = ptrtoint ptr %ctrl_region_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_region_name, align 4
  %call33 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %17) #8
  %call34 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call33) #8
  %queue_ctrl_region = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %queue_ctrl_region to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call34, ptr %queue_ctrl_region, align 8
  %cmp.i234 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i234, label %if.then37, label %if.then32.do.body42_crit_edge

if.then32.do.body42_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

if.then37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call34 to i32
  br label %cleanup119

do.body42:                                        ; preds = %if.then32.do.body42_crit_edge, %if.end30.do.body42_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_msgmgr_probe.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_msgmgr_probe, %if.then47)) #8
          to label %do.end52 [label %if.then47], !srcloc !150

if.then47:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %queue_proxy_region to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue_proxy_region, align 8
  %22 = ptrtoint ptr %queue_state_debug_region to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %queue_state_debug_region, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_msgmgr_probe.__UNIQUE_ID_ddebug189, ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef %21, ptr noundef %23) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %do.body42
  %num_valid_queues = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %3, i32 0, i32 13
  %24 = ptrtoint ptr %num_valid_queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_valid_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool53.not = icmp eq i32 %25, 0
  br i1 %tobool53.not, label %do.end52.do.end59_crit_edge, label %lor.lhs.false

do.end52.do.end59_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

lor.lhs.false:                                    ; preds = %do.end52
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %3, align 4
  %conv = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv)
  %cmp = icmp sgt i32 %25, %conv
  br i1 %cmp, label %lor.lhs.false.do.end59_crit_edge, label %if.end62

lor.lhs.false.do.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

do.end59:                                         ; preds = %lor.lhs.false.do.end59_crit_edge, %do.end52.do.end59_crit_edge
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %3, align 4
  %conv61 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %25, i32 noundef %conv61) #11
  br label %cleanup119

if.end62:                                         ; preds = %lor.lhs.false
  %conv63 = trunc i32 %25 to i8
  %num_valid_queues64 = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %num_valid_queues64 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv63, ptr %num_valid_queues64, align 4
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 64) #8
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %if.end62.cleanup119_crit_edge, label %devm_kcalloc.exit, !prof !151

if.end62.cleanup119_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

devm_kcalloc.exit:                                ; preds = %if.end62
  %33 = extractvalue { i32, i1 } %31, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %33, i32 noundef 3520) #8
  %tobool66.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool66.not, label %devm_kcalloc.exit.cleanup119_crit_edge, label %if.end68

devm_kcalloc.exit.cleanup119_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.end68:                                         ; preds = %devm_kcalloc.exit
  %qinsts = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %qinsts to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i.i, ptr %qinsts, align 8
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 208) #8
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %if.end68.cleanup119_crit_edge, label %devm_kcalloc.exit238, !prof !151

if.end68.cleanup119_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

devm_kcalloc.exit238:                             ; preds = %if.end68
  %37 = extractvalue { i32, i1 } %35, 0
  %call5.i.i235 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %37, i32 noundef 3520) #8
  %tobool70.not = icmp eq ptr %call5.i.i235, null
  br i1 %tobool70.not, label %devm_kcalloc.exit238.cleanup119_crit_edge, label %if.end72

devm_kcalloc.exit238.cleanup119_crit_edge:        ; preds = %devm_kcalloc.exit238
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.end72:                                         ; preds = %devm_kcalloc.exit238
  %chans73 = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 8
  %38 = ptrtoint ptr %chans73 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call5.i.i235, ptr %chans73, align 8
  %39 = ptrtoint ptr %is_sproxy to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %is_sproxy, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool75.not = icmp eq i8 %40, 0
  br i1 %tobool75.not, label %for.body88.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %sproxy_desc) #8
  %41 = getelementptr inbounds %struct.ti_msgmgr_valid_queue_desc, ptr %sproxy_desc, i32 0, i32 1
  %42 = getelementptr inbounds %struct.ti_msgmgr_valid_queue_desc, ptr %sproxy_desc, i32 0, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %42, align 1, !annotation !152
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0248 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %chans.0247 = phi ptr [ %incdec.ptr84, %for.inc.for.body_crit_edge ], [ %call5.i.i235, %for.body.preheader ]
  %qinst.0246 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call5.i.i, %for.body.preheader ]
  %44 = ptrtoint ptr %sproxy_desc to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %sproxy_desc, align 1
  %conv79 = trunc i32 %i.0248 to i8
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv79, ptr %41, align 1
  %call80 = call fastcc i32 @ti_msgmgr_queue_setup(i32 noundef %i.0248, ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef %3, ptr noundef nonnull %sproxy_desc, ptr noundef %qinst.0246, ptr noundef %chans.0247)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %for.inc, label %cleanup.thread

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %sproxy_desc) #8
  br label %cleanup119

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0248, 1
  %incdec.ptr = getelementptr %struct.ti_queue_inst, ptr %qinst.0246, i32 1
  %incdec.ptr84 = getelementptr %struct.mbox_chan, ptr %chans.0247, i32 1
  %exitcond.not = icmp eq i32 %inc, %25
  br i1 %exitcond.not, label %cleanup, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %sproxy_desc) #8
  br label %if.end99

for.body88.preheader:                             ; preds = %if.end72
  %valid_queues = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %3, i32 0, i32 9
  %46 = ptrtoint ptr %valid_queues to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %valid_queues, align 4
  br label %for.body88

for.body88:                                       ; preds = %for.inc93.for.body88_crit_edge, %for.body88.preheader
  %queue_desc.0253 = phi ptr [ %incdec.ptr97, %for.inc93.for.body88_crit_edge ], [ %47, %for.body88.preheader ]
  %i.1252 = phi i32 [ %inc94, %for.inc93.for.body88_crit_edge ], [ 0, %for.body88.preheader ]
  %chans.1251 = phi ptr [ %incdec.ptr96, %for.inc93.for.body88_crit_edge ], [ %call5.i.i235, %for.body88.preheader ]
  %qinst.1250 = phi ptr [ %incdec.ptr95, %for.inc93.for.body88_crit_edge ], [ %call5.i.i, %for.body88.preheader ]
  %call89 = tail call fastcc i32 @ti_msgmgr_queue_setup(i32 noundef %i.1252, ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef %3, ptr noundef %queue_desc.0253, ptr noundef %qinst.1250, ptr noundef %chans.1251)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %for.inc93, label %for.body88.cleanup119_crit_edge

for.body88.cleanup119_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

for.inc93:                                        ; preds = %for.body88
  %inc94 = add nuw nsw i32 %i.1252, 1
  %incdec.ptr95 = getelementptr %struct.ti_queue_inst, ptr %qinst.1250, i32 1
  %incdec.ptr96 = getelementptr %struct.mbox_chan, ptr %chans.1251, i32 1
  %incdec.ptr97 = getelementptr %struct.ti_msgmgr_valid_queue_desc, ptr %queue_desc.0253, i32 1
  %exitcond256.not = icmp eq i32 %inc94, %25
  br i1 %exitcond256.not, label %for.inc93.if.end99_crit_edge, label %for.inc93.for.body88_crit_edge

for.inc93.for.body88_crit_edge:                   ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body88

for.inc93.if.end99_crit_edge:                     ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.end99:                                         ; preds = %for.inc93.if.end99_crit_edge, %cleanup
  %mbox100 = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 7
  %48 = ptrtoint ptr %mbox100 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev1, ptr %mbox100, align 8
  %ops = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @ti_msgmgr_chan_ops, ptr %ops, align 4
  %50 = ptrtoint ptr %chans73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chans73, align 8
  %chans103 = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 7, i32 2
  %52 = ptrtoint ptr %chans103 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %chans103, align 8
  %53 = ptrtoint ptr %num_valid_queues64 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_valid_queues64, align 4
  %conv105 = zext i8 %54 to i32
  %num_chans = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 7, i32 3
  %55 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv105, ptr %num_chans, align 4
  %txdone_irq = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 7, i32 4
  %56 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %txdone_irq, align 8
  %tx_polled = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %3, i32 0, i32 7
  %57 = ptrtoint ptr %tx_polled to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tx_polled, align 4, !range !149
  %txdone_poll = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 7, i32 5
  %59 = ptrtoint ptr %txdone_poll to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %txdone_poll, align 1
  %60 = load i8, ptr %tx_polled, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool109.not = icmp eq i8 %60, 0
  br i1 %tobool109.not, label %if.end99.if.end111_crit_edge, label %if.then110

if.end99.if.end111_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then110:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %tx_poll_timeout_ms = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %3, i32 0, i32 8
  %61 = ptrtoint ptr %tx_poll_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_poll_timeout_ms, align 4
  %txpoll_period = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 7, i32 6
  %63 = ptrtoint ptr %txpoll_period to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %txpoll_period, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.end99.if.end111_crit_edge
  %of_xlate = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %call.i, i32 0, i32 7, i32 7
  %64 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @ti_msgmgr_of_xlate, ptr %of_xlate, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %65 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call112 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev1, ptr noundef %mbox100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end111.cleanup119_crit_edge, label %do.end117

if.end111.cleanup119_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

do.end117:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call112) #11
  br label %cleanup119

cleanup119:                                       ; preds = %do.end117, %if.end111.cleanup119_crit_edge, %for.body88.cleanup119_crit_edge, %cleanup.thread, %devm_kcalloc.exit238.cleanup119_crit_edge, %if.end68.cleanup119_crit_edge, %devm_kcalloc.exit.cleanup119_crit_edge, %if.end62.cleanup119_crit_edge, %do.end59, %if.then37, %if.then27, %if.then19, %if.end8.cleanup119_crit_edge, %do.end7, %do.end
  %retval.1 = phi i32 [ %9, %if.then19 ], [ %13, %if.then27 ], [ %19, %if.then37 ], [ -34, %do.end59 ], [ -22, %do.end7 ], [ -22, %do.end ], [ -12, %if.end8.cleanup119_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup119_crit_edge ], [ -12, %devm_kcalloc.exit238.cleanup119_crit_edge ], [ %call112, %do.end117 ], [ 0, %if.end111.cleanup119_crit_edge ], [ %call80, %cleanup.thread ], [ -12, %if.end62.cleanup119_crit_edge ], [ -12, %if.end68.cleanup119_crit_edge ], [ %call89, %for.body88.cleanup119_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_msgmgr_queue_setup(i32 noundef %idx, ptr noundef %dev, ptr nocapture noundef readonly %inst, ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %qd, ptr noundef %qinst, ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %proxy_id = getelementptr inbounds %struct.ti_msgmgr_valid_queue_desc, ptr %qd, i32 0, i32 1
  %0 = ptrtoint ptr %proxy_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %proxy_id, align 1
  %proxy_id1 = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 2
  %2 = ptrtoint ptr %proxy_id1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %proxy_id1, align 1
  %3 = ptrtoint ptr %qd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %qd, align 1
  %queue_id2 = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 1
  %5 = ptrtoint ptr %queue_id2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %queue_id2, align 2
  %conv = zext i8 %4 to i32
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %d, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %7)
  %cmp = icmp ugt i8 %4, %7
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv4 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %idx, i32 noundef %conv, i32 noundef %conv4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_sproxy = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %d, i32 0, i32 14
  %8 = ptrtoint ptr %is_sproxy to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_sproxy, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %queue_proxy_region37 = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %inst, i32 0, i32 2
  %10 = ptrtoint ptr %queue_proxy_region37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue_proxy_region37, align 8
  %conv39 = zext i8 %1 to i32
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  %mul = shl nuw nsw i32 %conv39, 12
  %data_first_reg = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %d, i32 0, i32 3
  %12 = ptrtoint ptr %data_first_reg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data_first_reg, align 1
  %conv13 = zext i8 %13 to i32
  %mul14 = shl nuw nsw i32 %conv13, 2
  %add = or i32 %mul14, %mul
  %add15 = add nuw nsw i32 %add, 4
  %add.ptr = getelementptr i8, ptr %11, i32 %add15
  %queue_buff_start = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 5
  %14 = ptrtoint ptr %queue_buff_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %queue_buff_start, align 4
  %15 = ptrtoint ptr %queue_proxy_region37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue_proxy_region37, align 8
  %data_last_reg = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %d, i32 0, i32 4
  %17 = ptrtoint ptr %data_last_reg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data_last_reg, align 4
  %conv20 = zext i8 %18 to i32
  %mul21 = shl nuw nsw i32 %conv20, 2
  %add22 = or i32 %mul21, %mul
  %add23 = add nuw nsw i32 %add22, 4
  %add.ptr24 = getelementptr i8, ptr %16, i32 %add23
  %queue_buff_end = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 6
  %19 = ptrtoint ptr %queue_buff_end to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr24, ptr %queue_buff_end, align 4
  %queue_state_debug_region = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %inst, i32 0, i32 3
  %20 = ptrtoint ptr %queue_state_debug_region to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue_state_debug_region, align 4
  %add.ptr28 = getelementptr i8, ptr %21, i32 %mul
  %queue_state = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 7
  %22 = ptrtoint ptr %queue_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr28, ptr %queue_state, align 4
  %queue_ctrl_region = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %inst, i32 0, i32 4
  %23 = ptrtoint ptr %queue_ctrl_region to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue_ctrl_region, align 8
  %add32 = add nuw nsw i32 %mul, 4096
  %add.ptr33 = getelementptr i8, ptr %24, i32 %add32
  %queue_ctrl = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 8
  %25 = ptrtoint ptr %queue_ctrl to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr33, ptr %queue_ctrl, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.dev_name.exit_crit_edge

if.then10.dev_name.exit_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then10.dev_name.exit_crit_edge
  %retval.0.i1 = phi ptr [ %29, %if.end.i ], [ %27, %if.then10.dev_name.exit_crit_edge ]
  %call36 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %qinst, i32 noundef 30, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i1, ptr noundef nonnull @.str.20, i32 noundef %conv39)
  br label %if.end84

if.else:                                          ; preds = %if.end
  %mul40 = shl nuw nsw i32 %conv39, 16
  %mul43 = shl nuw nsw i32 %conv, 7
  %add44 = or i32 %mul43, %mul40
  %data_first_reg45 = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %d, i32 0, i32 3
  %30 = ptrtoint ptr %data_first_reg45 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data_first_reg45, align 1
  %conv46 = zext i8 %31 to i32
  %mul47 = shl nuw nsw i32 %conv46, 2
  %add48 = add nuw nsw i32 %mul47, %add44
  %add.ptr49 = getelementptr i8, ptr %11, i32 %add48
  %queue_buff_start50 = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 5
  %32 = ptrtoint ptr %queue_buff_start50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr49, ptr %queue_buff_start50, align 4
  %33 = ptrtoint ptr %queue_proxy_region37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %queue_proxy_region37, align 8
  %data_last_reg59 = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %d, i32 0, i32 4
  %35 = ptrtoint ptr %data_last_reg59 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %data_last_reg59, align 4
  %conv60 = zext i8 %36 to i32
  %mul61 = shl nuw nsw i32 %conv60, 2
  %add62 = add nuw nsw i32 %mul61, %add44
  %add.ptr63 = getelementptr i8, ptr %34, i32 %add62
  %queue_buff_end64 = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 6
  %37 = ptrtoint ptr %queue_buff_end64 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr63, ptr %queue_buff_end64, align 4
  %queue_state_debug_region65 = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %inst, i32 0, i32 3
  %38 = ptrtoint ptr %queue_state_debug_region65 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue_state_debug_region65, align 4
  %mul68 = shl nuw nsw i32 %conv, 2
  %add.ptr69 = getelementptr i8, ptr %39, i32 %mul68
  %queue_state70 = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 7
  %40 = ptrtoint ptr %queue_state70 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr69, ptr %queue_state70, align 4
  %is_tx = getelementptr inbounds %struct.ti_msgmgr_valid_queue_desc, ptr %qd, i32 0, i32 2
  %41 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_tx, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool71.not = icmp eq i8 %42, 0
  %is_tx72 = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 4
  %43 = ptrtoint ptr %is_tx72 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %is_tx72, align 4
  %cond = select i1 %tobool71.not, ptr @.str.23, ptr @.str.22
  %init_name.i2 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %44 = ptrtoint ptr %init_name.i2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i2, align 8
  %tobool.not.i3 = icmp eq ptr %45, null
  br i1 %tobool.not.i3, label %if.end.i4, label %if.else.dev_name.exit6_crit_edge

if.else.dev_name.exit6_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit6

if.end.i4:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  br label %dev_name.exit6

dev_name.exit6:                                   ; preds = %if.end.i4, %if.else.dev_name.exit6_crit_edge
  %retval.0.i5 = phi ptr [ %47, %if.end.i4 ], [ %45, %if.else.dev_name.exit6_crit_edge ]
  %call83 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %qinst, i32 noundef 30, ptr noundef nonnull @.str.24, ptr noundef %retval.0.i5, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %conv39)
  br label %if.end84

if.end84:                                         ; preds = %dev_name.exit6, %dev_name.exit
  %chan85 = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 9
  %48 = ptrtoint ptr %chan85 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %chan, ptr %chan85, align 4
  %irq = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 3
  %49 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -22, ptr %irq, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %50 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %qinst, ptr %con_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_msgmgr_queue_setup.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_msgmgr_queue_setup, %if.then92)) #8
          to label %cleanup [label %if.then92], !srcloc !150

if.then92:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %queue_id2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %queue_id2, align 2
  %conv94 = zext i8 %52 to i32
  %53 = ptrtoint ptr %proxy_id1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %proxy_id1, align 1
  %conv96 = zext i8 %54 to i32
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 4
  %queue_buff_start98 = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 5
  %57 = ptrtoint ptr %queue_buff_start98 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %queue_buff_start98, align 4
  %queue_buff_end99 = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst, i32 0, i32 6
  %59 = ptrtoint ptr %queue_buff_end99 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %queue_buff_end99, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_msgmgr_queue_setup.__UNIQUE_ID_ddebug188, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %idx, i32 noundef %conv94, i32 noundef %conv96, i32 noundef %56, ptr noundef %58, ptr noundef %60) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %if.end84, %do.end
  %retval.0 = phi i32 [ -34, %do.end ], [ 0, %if.then92 ], [ 0, %if.end84 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ti_msgmgr_of_xlate(ptr noundef readonly %mbox, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mbox, i32 -32
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !151

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 527, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %entry
  %desc = getelementptr i8, ptr %mbox, i32 -28
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %is_sproxy = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %is_sproxy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_sproxy, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool25.not = icmp eq i8 %3, 0
  %. = select i1 %tobool25.not, i32 2, i32 1
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %.)
  %cmp.not = icmp eq i32 %5, %.
  br i1 %cmp.not, label %if.end34, label %do.end31

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.52, i32 noundef %5, i32 noundef %.) #11
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %args38 = getelementptr inbounds %struct.of_phandle_args, ptr %p, i32 0, i32 2
  %8 = ptrtoint ptr %args38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args38, align 4
  br i1 %tobool25.not, label %if.end50, label %if.then45

if.then45:                                        ; preds = %if.end34
  %num_valid_queues = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %num_valid_queues to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_valid_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp46.not = icmp slt i32 %9, %11
  br i1 %cmp46.not, label %if.end48, label %if.then45.do.end66_crit_edge

if.then45.do.end66_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

if.end48:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %qinsts = getelementptr i8, ptr %mbox, i32 -8
  %12 = ptrtoint ptr %qinsts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qinsts, align 8
  %chan = getelementptr %struct.ti_queue_inst, ptr %13, i32 %9, i32 9
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.end34
  %arrayidx41 = getelementptr %struct.of_phandle_args, ptr %p, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %req_pid.0102 = load i32, ptr %arrayidx41, align 4
  %num_valid_queues52 = getelementptr i8, ptr %mbox, i32 -12
  %17 = ptrtoint ptr %num_valid_queues52 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_valid_queues52, align 4
  %conv = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp53108.not = icmp eq i8 %18, 0
  br i1 %cmp53108.not, label %if.end50.do.end66_crit_edge, label %for.body.preheader

if.end50.do.end66_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

for.body.preheader:                               ; preds = %if.end50
  %qinsts51 = getelementptr i8, ptr %mbox, i32 -8
  %19 = ptrtoint ptr %qinsts51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qinsts51, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0111 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %qinst.0109 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %20, %for.body.preheader ]
  %queue_id = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst.0109, i32 0, i32 1
  %21 = ptrtoint ptr %queue_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %queue_id, align 2
  %conv55 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv55)
  %cmp56 = icmp eq i32 %9, %conv55
  br i1 %cmp56, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %proxy_id = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst.0109, i32 0, i32 2
  %23 = ptrtoint ptr %proxy_id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %proxy_id, align 1
  %conv58 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %req_pid.0102, i32 %conv58)
  %cmp59 = icmp eq i32 %req_pid.0102, %conv58
  br i1 %cmp59, label %if.then61, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then61:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %chan62 = getelementptr inbounds %struct.ti_queue_inst, ptr %qinst.0109, i32 0, i32 9
  %25 = ptrtoint ptr %chan62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan62, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0111, 1
  %incdec.ptr = getelementptr %struct.ti_queue_inst, ptr %qinst.0109, i32 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.do.end66_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end66_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

do.end66:                                         ; preds = %for.inc.do.end66_crit_edge, %if.end50.do.end66_crit_edge, %if.then45.do.end66_crit_edge
  %req_pid.0106 = phi i32 [ %9, %if.then45.do.end66_crit_edge ], [ %req_pid.0102, %if.end50.do.end66_crit_edge ], [ %req_pid.0102, %for.inc.do.end66_crit_edge ]
  %req_qid.0103 = phi i32 [ 0, %if.then45.do.end66_crit_edge ], [ %9, %if.end50.do.end66_crit_edge ], [ %9, %for.inc.do.end66_crit_edge ]
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  %29 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.55, i32 noundef %req_qid.0103, i32 noundef %req_pid.0106, ptr noundef %30) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %if.then61, %if.end48, %do.end31, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end31 ], [ inttoptr (i32 -2 to ptr), %do.end66 ], [ %15, %if.end48 ], [ %26, %if.then61 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_msgmgr_send_data(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %6 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end27, !prof !151

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 357, i32 noundef 9, ptr noundef null) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end27:                                         ; preds = %entry
  %desc28 = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %desc28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc28, align 4
  %is_sproxy.i = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %is_sproxy.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_sproxy.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end27.if.end34_crit_edge, label %ti_msgmgr_queue_is_error.exit

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

ti_msgmgr_queue_is_error.exit:                    ; preds = %if.end27
  %queue_state.i = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %queue_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue_state.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !153
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %status_err_mask.i = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %9, i32 0, i32 6
  %16 = ptrtoint ptr %status_err_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status_err_mask.i, align 4
  %and.i = and i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.i.not, label %ti_msgmgr_queue_is_error.exit.if.end34_crit_edge, label %do.end33

ti_msgmgr_queue_is_error.exit.if.end34_crit_edge: ; preds = %ti_msgmgr_queue_is_error.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end33:                                         ; preds = %ti_msgmgr_queue_is_error.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29, ptr noundef %7) #11
  br label %cleanup

if.end34:                                         ; preds = %ti_msgmgr_queue_is_error.exit.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %max_message_size = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %9, i32 0, i32 1
  %18 = ptrtoint ptr %max_message_size to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %max_message_size, align 1
  %conv = zext i8 %19 to i32
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv)
  %cmp = icmp ugt i32 %21, %conv
  br i1 %cmp, label %do.end39, label %if.end45

do.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef %7, i32 noundef %21, i32 noundef %conv) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end34
  %queue_buff_start = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 5
  %22 = ptrtoint ptr %queue_buff_start to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %queue_buff_start, align 4
  %buf = getelementptr inbounds %struct.ti_msgmgr_message, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %tobool47.not103 = icmp ult i32 %21, 4
  br i1 %tobool47.not103, label %if.end45.for.end_crit_edge, label %do.body48.preheader

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body48.preheader:                              ; preds = %if.end45
  %div101 = lshr i32 %21, 2
  br label %do.body48

do.body48:                                        ; preds = %do.body48.do.body48_crit_edge, %do.body48.preheader
  %word_data.0106 = phi ptr [ %incdec.ptr, %do.body48.do.body48_crit_edge ], [ %25, %do.body48.preheader ]
  %data_reg.0105 = phi ptr [ %add.ptr, %do.body48.do.body48_crit_edge ], [ %23, %do.body48.preheader ]
  %num_words.0104 = phi i32 [ %dec, %do.body48.do.body48_crit_edge ], [ %div101, %do.body48.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %word_data.0106 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %word_data.0106, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %data_reg.0105, i32 %28) #8, !srcloc !156
  %dec = add nsw i32 %num_words.0104, -1
  %add.ptr = getelementptr i8, ptr %data_reg.0105, i32 4
  %incdec.ptr = getelementptr i32, ptr %word_data.0106, i32 1
  %tobool47.not = icmp eq i32 %dec, 0
  br i1 %tobool47.not, label %do.body48.for.end_crit_edge, label %do.body48.do.body48_crit_edge

do.body48.do.body48_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

do.body48.for.end_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body48.for.end_crit_edge, %if.end45.for.end_crit_edge
  %data_reg.0.lcssa = phi ptr [ %23, %if.end45.for.end_crit_edge ], [ %add.ptr, %do.body48.for.end_crit_edge ]
  %word_data.0.lcssa = phi ptr [ %25, %if.end45.for.end_crit_edge ], [ %incdec.ptr, %do.body48.for.end_crit_edge ]
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data, align 4
  %rem = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool52.not = icmp eq i32 %rem, 0
  br i1 %tobool52.not, label %for.end.if.end58_crit_edge, label %if.then53

for.end.if.end58_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then53:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %word_data.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %word_data.0.lcssa, align 4
  %.neg = mul nsw i32 %rem, -8
  %mul = add nsw i32 %.neg, 32
  %shr = lshr i32 -1, %mul
  %and = and i32 %32, %shr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %data_reg.0.lcssa, i32 %33) #8, !srcloc !156
  %incdec.ptr57 = getelementptr i8, ptr %data_reg.0.lcssa, i32 1
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %for.end.if.end58_crit_edge
  %data_reg.1 = phi ptr [ %incdec.ptr57, %if.then53 ], [ %data_reg.0.lcssa, %for.end.if.end58_crit_edge ]
  %queue_buff_end = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 6
  %34 = ptrtoint ptr %queue_buff_end to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queue_buff_end, align 4
  %cmp59.not = icmp ugt ptr %data_reg.1, %35
  br i1 %cmp59.not, label %if.end58.cleanup_crit_edge, label %do.body62

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %queue_buff_end to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue_buff_end, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #8, !srcloc !156
  br label %cleanup

cleanup:                                          ; preds = %do.body62, %if.end58.cleanup_crit_edge, %do.end39, %do.end33, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end33 ], [ -22, %do.end39 ], [ 0, %do.body62 ], [ 0, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_msgmgr_queue_startup(ptr noundef %chan) #2 align 64 {
entry:
  %of_rx_irq_name.i = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %6 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_priv, align 4
  %desc = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %is_sproxy = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %is_sproxy to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_sproxy, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %entry
  %queue_ctrl = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %queue_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue_ctrl, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  %is_tx = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 4
  %15 = trunc i32 %14 to i8
  %16 = xor i8 %15, -1
  %17 = lshr i8 %16, 7
  %18 = ptrtoint ptr %is_tx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %is_tx, align 4
  %status_cnt_mask1.i = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %9, i32 0, i32 5
  %19 = ptrtoint ptr %status_cnt_mask1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status_cnt_mask1.i, align 4
  %queue_state.i = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 7
  %21 = ptrtoint ptr %queue_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queue_state.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !153
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %and.i = and i32 %24, %20
  %25 = tail call i32 @llvm.cttz.i32(i32 %20, i1 false) #8, !range !161
  %shr.i = lshr i32 %and.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool7.not = icmp eq i32 %shr.i, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then
  %26 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_tx, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool9.not = icmp eq i8 %27, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end11_crit_edge, label %do.end

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34, ptr noundef %7) #11
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %is_tx12 = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 4
  %28 = ptrtoint ptr %is_tx12 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_tx12, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool13.not = icmp eq i8 %29, 0
  br i1 %tobool13.not, label %if.end8.i.i, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end11
  %max_message_size = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %9, i32 0, i32 1
  %30 = ptrtoint ptr %max_message_size to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %max_message_size, align 1
  %conv = zext i8 %31 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3520) #12
  %rx_buff = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 10
  %32 = ptrtoint ptr %rx_buff to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call9.i.i, ptr %rx_buff, align 4
  %tobool17.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool17.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end19

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end8.i.i
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %of_rx_irq_name.i) #8
  %33 = call ptr @memset(ptr %of_rx_irq_name.i, i32 255, i32 7)
  %34 = ptrtoint ptr %is_sproxy to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_sproxy, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  %proxy_id.i = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 2
  %queue_id.i = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 1
  %cond.in.in.i = select i1 %tobool.not.i, ptr %queue_id.i, ptr %proxy_id.i
  %36 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %cond.in.i = load i8, ptr %cond.in.in.i, align 1
  %cond.i = zext i8 %cond.in.i to i32
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %of_rx_irq_name.i, i32 noundef 7, ptr noundef nonnull @.str.36, i32 noundef %cond.i) #8
  %irq.i = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 3
  %37 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i = icmp slt i32 %38, 0
  br i1 %cmp.i, label %if.then.i, label %if.end19.if.end21.i_crit_edge

if.end19.if.end21.i_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then.i:                                        ; preds = %if.end19
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %39 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node.i, align 8
  %call3.i = tail call ptr @of_node_get(ptr noundef %40) #8
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then.i.ti_msgmgr_queue_rx_irq_req.exit.thread_crit_edge, label %if.end.i

if.then.i.ti_msgmgr_queue_rx_irq_req.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ti_msgmgr_queue_rx_irq_req.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %call7.i = call i32 @of_irq_get_byname(ptr noundef nonnull %call3.i, ptr noundef nonnull %of_rx_irq_name.i) #8
  %41 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call7.i, ptr %irq.i, align 4
  call void @of_node_put(ptr noundef nonnull %call3.i) #8
  %42 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp10.i = icmp slt i32 %43, 0
  br i1 %cmp10.i, label %ti_msgmgr_queue_rx_irq_req.exit, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end.i.if.end21.i_crit_edge, %if.end19.if.end21.i_crit_edge
  %44 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq.i, align 4
  %call.i.i = call i32 @request_threaded_irq(i32 noundef %45, ptr noundef nonnull @ti_msgmgr_queue_rx_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %7, ptr noundef %chan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool25.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool25.not.i, label %ti_msgmgr_queue_rx_irq_req.exit.thread55, label %do.end29.i

ti_msgmgr_queue_rx_irq_req.exit.thread55:         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %of_rx_irq_name.i) #8
  br label %cleanup

do.end29.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.40, i32 noundef %47, ptr noundef %7, i32 noundef %call.i.i) #11
  br label %ti_msgmgr_queue_rx_irq_req.exit.thread

ti_msgmgr_queue_rx_irq_req.exit.thread:           ; preds = %do.end29.i, %if.then.i.ti_msgmgr_queue_rx_irq_req.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %do.end29.i ], [ -61, %if.then.i.ti_msgmgr_queue_rx_irq_req.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %of_rx_irq_name.i) #8
  br label %if.then22

ti_msgmgr_queue_rx_irq_req.exit:                  ; preds = %if.end.i
  %48 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %queue_id.i, align 2
  %conv14.i = zext i8 %49 to i32
  %50 = ptrtoint ptr %proxy_id.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %proxy_id.i, align 1
  %conv16.i = zext i8 %51 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37, i32 noundef %conv14.i, i32 noundef %conv16.i, ptr noundef nonnull %of_rx_irq_name.i, i32 noundef %43) #11
  %52 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %of_rx_irq_name.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool21.not = icmp eq i32 %53, 0
  br i1 %tobool21.not, label %ti_msgmgr_queue_rx_irq_req.exit.cleanup_crit_edge, label %ti_msgmgr_queue_rx_irq_req.exit.if.then22_crit_edge

ti_msgmgr_queue_rx_irq_req.exit.if.then22_crit_edge: ; preds = %ti_msgmgr_queue_rx_irq_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

ti_msgmgr_queue_rx_irq_req.exit.cleanup_crit_edge: ; preds = %ti_msgmgr_queue_rx_irq_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %ti_msgmgr_queue_rx_irq_req.exit.if.then22_crit_edge, %ti_msgmgr_queue_rx_irq_req.exit.thread
  %retval.0.i54 = phi i32 [ %retval.0.i.ph, %ti_msgmgr_queue_rx_irq_req.exit.thread ], [ %53, %ti_msgmgr_queue_rx_irq_req.exit.if.then22_crit_edge ]
  %54 = ptrtoint ptr %rx_buff to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_buff, align 4
  call void @kfree(ptr noundef %55) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %ti_msgmgr_queue_rx_irq_req.exit.cleanup_crit_edge, %ti_msgmgr_queue_rx_irq_req.exit.thread55, %if.end8.i.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i54, %if.then22 ], [ -22, %do.end ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ 0, %ti_msgmgr_queue_rx_irq_req.exit.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %ti_msgmgr_queue_rx_irq_req.exit.thread55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_msgmgr_queue_shutdown(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %is_tx = getelementptr inbounds %struct.ti_queue_inst, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_tx, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.ti_queue_inst, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %chan) #8
  %rx_buff = getelementptr inbounds %struct.ti_queue_inst, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %rx_buff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buff, align 4
  tail call void @kfree(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ti_msgmgr_last_tx_done(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %desc2 = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc2, align 4
  %is_tx = getelementptr inbounds %struct.ti_queue_inst, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_tx, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_sproxy.i = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %9, i32 0, i32 14
  %12 = ptrtoint ptr %is_sproxy.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_sproxy.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %ti_msgmgr_queue_is_error.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

ti_msgmgr_queue_is_error.exit:                    ; preds = %if.end
  %queue_state.i = getelementptr inbounds %struct.ti_queue_inst, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %queue_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue_state.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !153
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %status_err_mask.i = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %9, i32 0, i32 6
  %18 = ptrtoint ptr %status_err_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status_err_mask.i, align 4
  %and.i = and i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.i.not, label %ti_msgmgr_queue_is_error.exit.if.end5_crit_edge, label %do.end

ti_msgmgr_queue_is_error.exit.if.end5_crit_edge:  ; preds = %ti_msgmgr_queue_is_error.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %ti_msgmgr_queue_is_error.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef %1) #11
  br label %cleanup

if.end5:                                          ; preds = %ti_msgmgr_queue_is_error.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %status_cnt_mask1.i = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %9, i32 0, i32 5
  %20 = ptrtoint ptr %status_cnt_mask1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status_cnt_mask1.i, align 4
  %queue_state.i27 = getelementptr inbounds %struct.ti_queue_inst, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %queue_state.i27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %queue_state.i27, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !153
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %and.i28 = and i32 %25, %21
  %26 = tail call i32 @llvm.cttz.i32(i32 %21, i1 false) #8, !range !161
  %shr.i = lshr i32 %and.i28, %26
  %27 = ptrtoint ptr %is_sproxy.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_sproxy.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.not = icmp eq i8 %28, 0
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool9 = icmp ne i32 %shr.i, 0
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool12.not = icmp eq i32 %shr.i, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ %tobool9, %if.then8 ], [ %tobool12.not, %if.end11 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ti_msgmgr_queue_peek_data(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %desc2 = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc2, align 4
  %is_tx = getelementptr inbounds %struct.ti_queue_inst, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_tx, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_sproxy.i = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %9, i32 0, i32 14
  %12 = ptrtoint ptr %is_sproxy.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_sproxy.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %ti_msgmgr_queue_is_error.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

ti_msgmgr_queue_is_error.exit:                    ; preds = %if.end
  %queue_state.i = getelementptr inbounds %struct.ti_queue_inst, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %queue_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue_state.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !153
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %status_err_mask.i = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %9, i32 0, i32 6
  %18 = ptrtoint ptr %status_err_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status_err_mask.i, align 4
  %and.i = and i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.i.not, label %ti_msgmgr_queue_is_error.exit.if.end5_crit_edge, label %do.end

ti_msgmgr_queue_is_error.exit.if.end5_crit_edge:  ; preds = %ti_msgmgr_queue_is_error.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %ti_msgmgr_queue_is_error.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef %1) #11
  br label %cleanup

if.end5:                                          ; preds = %ti_msgmgr_queue_is_error.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %status_cnt_mask1.i = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %9, i32 0, i32 5
  %20 = ptrtoint ptr %status_cnt_mask1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status_cnt_mask1.i, align 4
  %queue_state.i19 = getelementptr inbounds %struct.ti_queue_inst, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %queue_state.i19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %queue_state.i19, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !153
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %and.i20 = and i32 %25, %21
  %26 = tail call i32 @llvm.cttz.i32(i32 %21, i1 false) #8, !range !161
  %shr.i = lshr i32 %and.i20, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool7 = icmp ne i32 %shr.i, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ %tobool7, %if.end5 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_msgmgr_queue_rx_interrupt(i32 noundef %irq, ptr noundef %p) #2 align 64 {
entry:
  %message = alloca %struct.ti_msgmgr_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %p, i32 0, i32 9
  %6 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_priv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %message) #8
  %8 = getelementptr inbounds %struct.ti_msgmgr_message, ptr %message, i32 0, i32 1
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end27, !prof !151

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 214, i32 noundef 9, ptr noundef null) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end27:                                         ; preds = %entry
  %is_tx = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 4
  %9 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_tx, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool28.not = icmp eq i8 %10, 0
  br i1 %tobool28.not, label %if.end33, label %do.end32

do.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.44, ptr noundef %7) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %desc34 = getelementptr inbounds %struct.ti_msgmgr_inst, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %desc34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc34, align 4
  %is_sproxy.i = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %is_sproxy.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_sproxy.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end33.if.end42_crit_edge, label %ti_msgmgr_queue_is_error.exit

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

ti_msgmgr_queue_is_error.exit:                    ; preds = %if.end33
  %queue_state.i = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 7
  %15 = ptrtoint ptr %queue_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue_state.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !153
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %status_err_mask.i = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %12, i32 0, i32 6
  %19 = ptrtoint ptr %status_err_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status_err_mask.i, align 4
  %and.i = and i32 %20, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.i.not, label %ti_msgmgr_queue_is_error.exit.if.end42_crit_edge, label %do.end39

ti_msgmgr_queue_is_error.exit.if.end42_crit_edge: ; preds = %ti_msgmgr_queue_is_error.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.end39:                                         ; preds = %ti_msgmgr_queue_is_error.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.47, ptr noundef %7) #11
  br label %cleanup

if.end42:                                         ; preds = %ti_msgmgr_queue_is_error.exit.if.end42_crit_edge, %if.end33.if.end42_crit_edge
  %status_cnt_mask1.i = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %12, i32 0, i32 5
  %21 = ptrtoint ptr %status_cnt_mask1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status_cnt_mask1.i, align 4
  %queue_state.i99 = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 7
  %23 = ptrtoint ptr %queue_state.i99 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue_state.i99, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !153
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %and.i100 = and i32 %26, %22
  %27 = tail call i32 @llvm.cttz.i32(i32 %22, i1 false) #8, !range !161
  %shr.i = lshr i32 %and.i100, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool44.not = icmp eq i32 %shr.i, 0
  br i1 %tobool44.not, label %do.body46, label %if.end60

do.body46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_msgmgr_queue_rx_interrupt.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_msgmgr_queue_rx_interrupt, %if.then56)) #8
          to label %cleanup [label %if.then56], !srcloc !150

if.then56:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_msgmgr_queue_rx_interrupt.__UNIQUE_ID_ddebug187, ptr noundef %3, ptr noundef nonnull @.str.49) #8
  br label %cleanup

if.end60:                                         ; preds = %if.end42
  %max_message_size = getelementptr inbounds %struct.ti_msgmgr_desc, ptr %12, i32 0, i32 1
  %28 = ptrtoint ptr %max_message_size to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %max_message_size, align 1
  %conv = zext i8 %29 to i32
  %30 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %message, align 4
  %rx_buff = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 10
  %31 = ptrtoint ptr %rx_buff to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_buff, align 4
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %8, align 4
  %34 = load i8, ptr %max_message_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %34)
  %tobool64.not103 = icmp ult i8 %34, 4
  br i1 %tobool64.not103, label %if.end60.for.end_crit_edge, label %for.body.preheader

if.end60.for.end_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end60
  %35 = lshr i8 %34, 2
  %div = zext i8 %35 to i32
  %queue_buff_start = getelementptr inbounds %struct.ti_queue_inst, ptr %7, i32 0, i32 5
  %36 = ptrtoint ptr %queue_buff_start to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue_buff_start, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %word_data.0106 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %32, %for.body.preheader ]
  %data_reg.0105 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %37, %for.body.preheader ]
  %num_words.0104 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %div, %for.body.preheader ]
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %data_reg.0105) #8, !srcloc !153
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  %40 = ptrtoint ptr %word_data.0106 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %word_data.0106, align 4
  %dec = add nsw i32 %num_words.0104, -1
  %add.ptr = getelementptr i8, ptr %data_reg.0105, i32 4
  %incdec.ptr = getelementptr i32, ptr %word_data.0106, i32 1
  %tobool64.not = icmp eq i32 %dec, 0
  br i1 %tobool64.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end60.for.end_crit_edge
  call void @mbox_chan_received_data(ptr noundef %p, ptr noundef nonnull %message) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then56, %do.body46, %do.end39, %do.end32, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end32 ], [ 0, %do.end39 ], [ 1, %for.end ], [ 0, %if.then56 ], [ 0, %do.body46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %message) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @__initcall__kmod_ti_msgmgr__190_834_ti_msgmgr_driver_init6, !1, !"__initcall__kmod_ti_msgmgr__190_834_ti_msgmgr_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 834, i32 1}
!2 = !{ptr @__exitcall_ti_msgmgr_driver_exit, !1, !"__exitcall_ti_msgmgr_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file191, !4, !"__UNIQUE_ID_file191", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 836, i32 1}
!5 = !{ptr @__UNIQUE_ID_license192, !4, !"__UNIQUE_ID_license192", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description193, !7, !"__UNIQUE_ID_description193", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 837, i32 1}
!8 = !{ptr @__UNIQUE_ID_author194, !9, !"__UNIQUE_ID_author194", i1 false, i1 false}
!9 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 838, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias195, !11, !"__UNIQUE_ID_alias195", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 839, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 830, i32 14}
!14 = !{ptr @ti_msgmgr_driver, !15, !"ti_msgmgr_driver", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 827, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 723, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ti_msgmgr_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ti_msgmgr_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 730, i32 3}
!26 = !{ptr @ti_msgmgr_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ti_msgmgr_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 762, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ti_msgmgr_probe.__UNIQUE_ID_ddebug189, !29, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 767, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ti_msgmgr_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ti_msgmgr_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 822, i32 3}
!39 = !{ptr @ti_msgmgr_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ti_msgmgr_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 595, i32 3}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ti_msgmgr_queue_setup._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ti_msgmgr_queue_setup._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 613, i32 9}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 614, i32 46}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 627, i32 24}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 627, i32 31}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 628, i32 46}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 639, i32 2}
!58 = !{ptr @ti_msgmgr_queue_setup.__UNIQUE_ID_ddebug188, !57, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!59 = !{ptr @ti_msgmgr_chan_ops, !60, !"ti_msgmgr_chan_ops", i1 false, i1 false}
!60 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 646, i32 35}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 358, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ti_msgmgr_send_data._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ti_msgmgr_send_data._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 364, i32 3}
!68 = !{ptr @ti_msgmgr_send_data._entry.28, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ti_msgmgr_send_data._entry_ptr.30, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 369, i32 3}
!72 = !{ptr @ti_msgmgr_send_data._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ti_msgmgr_send_data._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 473, i32 4}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ti_msgmgr_queue_startup._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ti_msgmgr_queue_startup._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 417, i32 4}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 428, i32 4}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ti_msgmgr_queue_rx_irq_req._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @ti_msgmgr_queue_rx_irq_req._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 440, i32 3}
!88 = !{ptr @ti_msgmgr_queue_rx_irq_req._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ti_msgmgr_queue_rx_irq_req._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 215, i32 3}
!92 = !{ptr @ti_msgmgr_queue_rx_interrupt._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ti_msgmgr_queue_rx_interrupt._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 221, i32 3}
!96 = !{ptr @ti_msgmgr_queue_rx_interrupt._entry.43, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ti_msgmgr_queue_rx_interrupt._entry_ptr.45, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 228, i32 3}
!100 = !{ptr @ti_msgmgr_queue_rx_interrupt._entry.46, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ti_msgmgr_queue_rx_interrupt._entry_ptr.48, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 236, i32 3}
!104 = !{ptr @ti_msgmgr_queue_rx_interrupt.__UNIQUE_ID_ddebug187, !103, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 324, i32 3}
!107 = !{ptr @ti_msgmgr_last_tx_done._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ti_msgmgr_last_tx_done._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 297, i32 3}
!111 = !{ptr @ti_msgmgr_queue_peek_data._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ti_msgmgr_queue_peek_data._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 537, i32 3}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ti_msgmgr_of_xlate._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @ti_msgmgr_of_xlate._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 563, i32 2}
!120 = !{ptr @ti_msgmgr_of_xlate._entry.54, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ti_msgmgr_of_xlate._entry_ptr.56, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @ti_msgmgr_of_match, !123, !"ti_msgmgr_of_match", i1 false, i1 false}
!123 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 698, i32 34}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 673, i32 22}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 674, i32 24}
!128 = !{ptr @k2g_desc, !129, !"k2g_desc", i1 false, i1 false}
!129 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 669, i32 36}
!130 = !{ptr @k2g_valid_queues, !131, !"k2g_valid_queues", i1 false, i1 false}
!131 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 655, i32 48}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 688, i32 22}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 689, i32 24}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 690, i32 22}
!138 = !{ptr @am654_desc, !139, !"am654_desc", i1 false, i1 false}
!139 = !{!"../drivers/mailbox/ti-msgmgr.c", i32 684, i32 36}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{i8 0, i8 2}
!150 = !{i64 2148299701, i64 2148299706, i64 2148299719, i64 2148299763, i64 2148299797, i64 2148299818}
!151 = !{!"branch_weights", i32 1, i32 2000}
!152 = !{!"auto-init"}
!153 = !{i64 4881453}
!154 = !{i64 2153183963}
!155 = !{i64 2153201046}
!156 = !{i64 4881035}
!157 = !{i64 2153201445}
!158 = !{i64 2153201848}
!159 = !{i64 2153206033}
!160 = !{i64 2153183304}
!161 = !{i32 0, i32 33}
!162 = !{i64 2153192210}
