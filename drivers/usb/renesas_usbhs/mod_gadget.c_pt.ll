; ModuleID = '/llk/IR_all_yes/drivers/usb/renesas_usbhs/mod_gadget.c_pt.bc'
source_filename = "../drivers/usb/renesas_usbhs/mod_gadget.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usbhs_pkt_handle = type { ptr, ptr, ptr }
%struct.usbhsg_recip_handle = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usbhs_priv = type { ptr, i32, ptr, %struct.renesas_usbhs_driver_param, %struct.delayed_work, ptr, ptr, %struct.spinlock, %struct.usbhs_mod_info, %struct.usbhs_pipe_info, %struct.usbhs_fifo_info, ptr, ptr, [2 x ptr] }
%struct.renesas_usbhs_driver_param = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.usbhs_mod_info = type { [2 x ptr], ptr, ptr, ptr }
%struct.usbhs_pipe_info = type { ptr, i32, ptr }
%struct.usbhs_fifo_info = type { %struct.usbhs_fifo, [4 x %struct.usbhs_fifo] }
%struct.usbhs_fifo = type { ptr, i32, i32, i32, ptr, ptr, ptr, %struct.sh_dmae_slave, %struct.sh_dmae_slave }
%struct.sh_dmae_slave = type { %struct.shdma_slave }
%struct.shdma_slave = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usbhsg_gpriv = type { %struct.usb_gadget, %struct.usbhs_mod, ptr, i32, ptr, ptr, i8, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usbhs_mod = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.usbhsg_uep = type { %struct.usb_ep, ptr, %struct.spinlock, [8 x i8], ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.renesas_usbhs_driver_pipe_config = type { i8, i16, i8, i8 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usbhs_pipe = type { i32, ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.usbhs_pkt = type { %struct.list_head, ptr, ptr, ptr, %struct.work_struct, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usbhsg_request = type { %struct.usb_request, %struct.usbhs_pkt }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>

@usbhs_mod_gadget_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1099, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%stransceiver found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usbhs_mod_gadget_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/usb/renesas_usbhs/mod_gadget.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbhs_mod_gadget_probe._entry_ptr = internal global ptr @usbhs_mod_gadget_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"no \00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gadget\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"renesas_usbhs_udc\00", [46 x i8] zeroinitializer }, align 32
@usbhsg_gadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @usbhsg_get_frame, ptr null, ptr @usbhsg_set_selfpowered, ptr @usbhsg_vbus_session, ptr null, ptr @usbhsg_pullup, ptr null, ptr null, ptr @usbhsg_gadget_start, ptr @usbhsg_gadget_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep%d\00", [27 x i8] zeroinitializer }, align 32
@usbhsg_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @usbhsg_ep_enable, ptr @usbhsg_ep_disable, ptr null, ptr @usbhsg_ep_alloc_request, ptr @usbhsg_ep_free_request, ptr @usbhsg_ep_queue, ptr @usbhsg_ep_dequeue, ptr @usbhsg_ep_set_halt, ptr @usbhsg_ep_set_wedge, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@usbhs_mod_gadget_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&uep->lock\00", [21 x i8] zeroinitializer }, align 32
@usbhs_mod_gadget_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gadget probed\0A\00", [17 x i8] zeroinitializer }, align 32
@usbhs_mod_gadget_probe._entry_ptr.13 = internal global ptr @usbhs_mod_gadget_probe._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usbhsg_try_start.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"renesas_usbhs\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usbhsg_try_start\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"start gadget\0A\00", [18 x i8] zeroinitializer }, align 32
@usbhsg_irq_dev_state.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usbhsg_irq_dev_state\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"state = %x : speed : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@usbhsg_irq_ctrl_stage.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbhsg_irq_ctrl_stage\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stage = %d\0A\00", [20 x i8] zeroinitializer }, align 32
@usbhs_fifo_pio_push_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@usbhs_fifo_pio_pop_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@usbhs_ctrl_stage_end_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@req_clear_feature = internal global { %struct.usbhsg_recip_handle, [16 x i8] } { %struct.usbhsg_recip_handle { ptr @.str.21, ptr @usbhsg_recip_handler_std_control_done, ptr @usbhsg_recip_handler_std_control_done, ptr @usbhsg_recip_handler_std_clear_endpoint }, [16 x i8] zeroinitializer }, align 32
@req_set_feature = internal global { %struct.usbhsg_recip_handle, [16 x i8] } { %struct.usbhsg_recip_handle { ptr @.str.22, ptr @usbhsg_recip_handler_std_set_device, ptr @usbhsg_recip_handler_std_control_done, ptr @usbhsg_recip_handler_std_set_endpoint }, [16 x i8] zeroinitializer }, align 32
@req_get_status = internal global { %struct.usbhsg_recip_handle, [16 x i8] } { %struct.usbhsg_recip_handle { ptr @.str.23, ptr @usbhsg_recip_handler_std_get_device, ptr @usbhsg_recip_handler_std_get_interface, ptr @usbhsg_recip_handler_std_get_endpoint }, [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clear feature\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set feature\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"get status\00", [21 x i8] zeroinitializer }, align 32
@__usbhsg_recip_send_status._entry = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 323, ptr @.str.26, ptr @.str.4 }, align 1
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"recip request allocation fail\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__usbhsg_recip_send_status\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@__usbhsg_recip_send_status._entry_ptr = internal global ptr @__usbhsg_recip_send_status._entry, section ".printk_index", align 4
@usbhsg_queue_push.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usbhsg_queue_push\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pipe %d : queue push (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@__usbhsg_queue_pop.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__usbhsg_queue_pop\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pipe %d : queue pop\0A\00", [43 x i8] zeroinitializer }, align 32
@usbhsg_recip_run_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 419, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wrong recip request\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usbhsg_recip_run_handle\00", [40 x i8] zeroinitializer }, align 32
@usbhsg_recip_run_handle._entry_ptr = internal global ptr @usbhsg_recip_run_handle._entry, section ".printk_index", align 4
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DEVICE\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INTERFACE\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ENDPOINT\00", [23 x i8] zeroinitializer }, align 32
@usbhsg_recip_run_handle._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 437, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unsupported RECIP(%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usbhsg_recip_run_handle._entry_ptr.39 = internal global ptr @usbhsg_recip_run_handle._entry.36, section ".printk_index", align 4
@usbhsg_recip_run_handle.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.32, ptr @.str.2, ptr @.str.40, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s (pipe %d :%s)\0A\00", [46 x i8] zeroinitializer }, align 32
@usbhsg_try_stop.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usbhsg_try_stop\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stop gadget\0A\00", [19 x i8] zeroinitializer }, align 32
@usbhsg_gadget_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 966, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: can't bind to transceiver\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usbhsg_gadget_start\00", [44 x i8] zeroinitializer }, align 32
@usbhsg_gadget_start._entry_ptr = internal global ptr @usbhsg_gadget_start._entry, section ".printk_index", align 4
@usbhs_fifo_dma_push_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@usbhs_fifo_dma_pop_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@__usbhsg_ep_set_halt_wedge.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__usbhsg_ep_set_halt_wedge\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set halt %d (pipe %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1098, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1115, i32 21 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1126, i32 24 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"usbhsg_gadget_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1050, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1140, i32 40 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"usbhsg_ep_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 778, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1145, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1173, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 840, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 464, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 488, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"req_clear_feature\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 250, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant [16 x i8] c"req_set_feature\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 291, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"req_get_status\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 391, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 251, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 292, i32 11 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 392, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 323, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 179, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 128, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 419, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 425, i32 9 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 429, i32 9 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 433, i32 9 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 437, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 443, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 916, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 965, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [42 x i8] c"../drivers/usb/renesas_usbhs/mod_gadget.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 733, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__usbhsg_recip_send_status._entry, ptr @__usbhsg_recip_send_status._entry_ptr, ptr @usbhs_mod_gadget_probe._entry, ptr @usbhs_mod_gadget_probe._entry.11, ptr @usbhs_mod_gadget_probe._entry_ptr, ptr @usbhs_mod_gadget_probe._entry_ptr.13, ptr @usbhsg_gadget_start._entry, ptr @usbhsg_gadget_start._entry_ptr, ptr @usbhsg_recip_run_handle._entry, ptr @usbhsg_recip_run_handle._entry.36, ptr @usbhsg_recip_run_handle._entry_ptr, ptr @usbhsg_recip_run_handle._entry_ptr.39, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @usbhsg_gadget_ops, ptr @.str.9, ptr @usbhsg_ep_ops, ptr @usbhs_mod_gadget_probe.__key, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @req_clear_feature, ptr @req_set_feature, ptr @req_get_status, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_mod_gadget_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsg_gadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsg_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_mod_gadget_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_mod_gadget_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @req_clear_feature to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @req_set_feature to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @req_get_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsg_recip_run_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsg_recip_run_handle._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsg_gadget_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbhs_mod_gadget_probe(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %dparam = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %dparam to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dparam, align 4
  %pipe_size4 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %pipe_size4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe_size4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1128) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 104) #9
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end.usbhs_mod_gadget_probe_err_gpriv_crit_edge, label %if.end7.i.i, !prof !107

if.end.usbhs_mod_gadget_probe_err_gpriv_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhs_mod_gadget_probe_err_gpriv

if.end7.i.i:                                      ; preds = %if.end
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #13
  %tobool6.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not, label %if.end7.i.i.usbhs_mod_gadget_probe_err_gpriv_crit_edge, label %if.end8

if.end7.i.i.usbhs_mod_gadget_probe_err_gpriv_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhs_mod_gadget_probe_err_gpriv

if.end8:                                          ; preds = %if.end7.i.i
  %call9 = tail call ptr @usb_get_phy(i32 noundef 0) #9
  %transceiver = getelementptr inbounds %struct.usbhsg_gpriv, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %transceiver to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %transceiver, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %cond = select i1 %cmp.i, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull %cond) #14
  %mod = getelementptr inbounds %struct.usbhsg_gpriv, ptr %call7.i.i, i32 0, i32 1
  tail call void @usbhs_mod_register(ptr noundef %priv, ptr noundef %mod, i32 noundef 1) #9
  %11 = ptrtoint ptr %mod to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.7, ptr %mod, align 8
  %start = getelementptr inbounds %struct.usbhsg_gpriv, ptr %call7.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @usbhsg_start, ptr %start, align 4
  %stop = getelementptr inbounds %struct.usbhsg_gpriv, ptr %call7.i.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @usbhsg_stop, ptr %stop, align 8
  %uep15 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %uep15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i, ptr %uep15, align 8
  %uep_size = getelementptr inbounds %struct.usbhsg_gpriv, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %uep_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %5, ptr %uep_size, align 4
  %status = getelementptr inbounds %struct.usbhsg_gpriv, ptr %call7.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %status, align 4
  %parent = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev1, ptr %parent, align 8
  %name21 = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %name21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.8, ptr %name21, align 4
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @usbhsg_gadget_ops, ptr %ops, align 8
  %max_speed = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %max_speed, align 4
  %has_usb_dmac = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 13
  %21 = ptrtoint ptr %has_usb_dmac to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %has_usb_dmac, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %quirk_avoids_skb_reserve = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 17
  %22 = ptrtoint ptr %quirk_avoids_skb_reserve to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load26 = load i32, ptr %quirk_avoids_skb_reserve, align 4
  %bf.shl = shl nuw nsw i32 %bf.cast, 19
  %bf.clear = and i32 %bf.load26, -524289
  %bf.set = or i32 %bf.shl, %bf.clear
  store i32 %bf.set, ptr %quirk_avoids_skb_reserve, align 4
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %ep_list, ptr %ep_list, align 8
  %prev.i = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ep_list, ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp193.not = icmp eq i32 %5, 0
  br i1 %cmp193.not, label %if.end8.for.end_crit_edge, label %land.rhs.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end8
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %if.end95.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0194 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end95.land.rhs_crit_edge ]
  %25 = ptrtoint ptr %uep15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %uep15, align 8
  %add.ptr = getelementptr %struct.usbhsg_uep, ptr %26, i32 %i.0194
  %tobool30.not = icmp eq ptr %add.ptr, null
  br i1 %tobool30.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %gpriv31 = getelementptr %struct.usbhsg_uep, ptr %26, i32 %i.0194, i32 4
  %27 = ptrtoint ptr %gpriv31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %gpriv31, align 4
  %pipe = getelementptr %struct.usbhsg_uep, ptr %26, i32 %i.0194, i32 1
  %28 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %pipe, align 4
  %ep_name = getelementptr %struct.usbhsg_uep, ptr %26, i32 %i.0194, i32 3
  %call32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ep_name, i32 noundef 8, ptr noundef nonnull @.str.9, i32 noundef %i.0194)
  %name35 = getelementptr inbounds %struct.usb_ep, ptr %add.ptr, i32 0, i32 1
  %29 = ptrtoint ptr %name35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ep_name, ptr %name35, align 4
  %ops37 = getelementptr inbounds %struct.usb_ep, ptr %add.ptr, i32 0, i32 2
  %30 = ptrtoint ptr %ops37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @usbhsg_ep_ops, ptr %ops37, align 4
  %ep_list39 = getelementptr inbounds %struct.usb_ep, ptr %add.ptr, i32 0, i32 3
  %31 = ptrtoint ptr %ep_list39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %ep_list39, ptr %ep_list39, align 4
  %prev.i184 = getelementptr inbounds %struct.list_head, ptr %ep_list39, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i184 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ep_list39, ptr %prev.i184, align 4
  %lock = getelementptr %struct.usbhsg_uep, ptr %26, i32 %i.0194, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @usbhs_mod_gadget_probe.__key, i16 noundef signext 3) #9
  %33 = ptrtoint ptr %gpriv31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gpriv31, align 4
  %uep45 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %uep45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %uep45, align 8
  %cmp46 = icmp eq ptr %add.ptr, %36
  br i1 %cmp46, label %if.then47, label %if.else

if.then47:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr, ptr %ep0, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %add.ptr, i32 noundef 64) #9
  %caps = getelementptr inbounds %struct.usb_ep, ptr %add.ptr, i32 0, i32 4
  %38 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load52 = load i8, ptr %caps, align 4
  %bf.set54 = or i8 %bf.load52, -128
  store i8 %bf.set54, ptr %caps, align 4
  br label %if.end95

if.else:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.renesas_usbhs_driver_pipe_config, ptr %3, i32 %i.0194
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp55 = icmp eq i8 %40, 1
  br i1 %cmp55, label %if.then57, label %if.else.if.end63_crit_edge

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %caps59 = getelementptr inbounds %struct.usb_ep, ptr %add.ptr, i32 0, i32 4
  %41 = ptrtoint ptr %caps59 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load60 = load i8, ptr %caps59, align 4
  %bf.set62 = or i8 %bf.load60, 64
  store i8 %bf.set62, ptr %caps59, align 4
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %42)
  %.pr = load i8, ptr %arrayidx, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %if.else.if.end63_crit_edge
  %43 = phi i8 [ %.pr, %if.then57 ], [ %40, %if.else.if.end63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp67 = icmp eq i8 %43, 2
  br i1 %cmp67, label %if.then69, label %if.end63.if.end75_crit_edge

if.end63.if.end75_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %caps71 = getelementptr inbounds %struct.usb_ep, ptr %add.ptr, i32 0, i32 4
  %44 = ptrtoint ptr %caps71 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load72 = load i8, ptr %caps71, align 4
  %bf.set74 = or i8 %bf.load72, 32
  store i8 %bf.set74, ptr %caps71, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %if.end63.if.end75_crit_edge
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %46)
  %cmp79 = icmp eq i8 %46, 3
  br i1 %cmp79, label %if.then81, label %if.end75.if.end87_crit_edge

if.end75.if.end87_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %caps83 = getelementptr inbounds %struct.usb_ep, ptr %add.ptr, i32 0, i32 4
  %47 = ptrtoint ptr %caps83 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load84 = load i8, ptr %caps83, align 4
  %bf.set86 = or i8 %bf.load84, 16
  store i8 %bf.set86, ptr %caps83, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then81, %if.end75.if.end87_crit_edge
  %bufsize = getelementptr %struct.renesas_usbhs_driver_pipe_config, ptr %3, i32 %i.0194, i32 1
  %48 = ptrtoint ptr %bufsize to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %bufsize, align 2
  %conv90 = zext i16 %49 to i32
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %add.ptr, i32 noundef %conv90) #9
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list39, ptr noundef %51, ptr noundef %ep_list) #9
  br i1 %call.i.i, label %if.end.i.i186, label %if.end87.if.end95_crit_edge

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.end.i.i186:                                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %ep_list39, ptr %prev.i, align 4
  %53 = ptrtoint ptr %ep_list39 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ep_list, ptr %ep_list39, align 4
  %54 = ptrtoint ptr %prev.i184 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev.i184, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %ep_list39, ptr %51, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end.i.i186, %if.end87.if.end95_crit_edge, %if.then47
  %caps97 = getelementptr inbounds %struct.usb_ep, ptr %add.ptr, i32 0, i32 4
  %56 = ptrtoint ptr %caps97 to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load98 = load i8, ptr %caps97, align 4
  %bf.set105 = or i8 %bf.load98, 12
  store i8 %bf.set105, ptr %caps97, align 4
  %inc = add nuw nsw i32 %i.0194, 1
  %57 = ptrtoint ptr %uep_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %uep_size, align 4
  %cmp = icmp slt i32 %inc, %58
  br i1 %cmp, label %if.end95.land.rhs_crit_edge, label %if.end95.for.end_crit_edge

if.end95.for.end_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end95.land.rhs_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end:                                          ; preds = %if.end95.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end8.for.end_crit_edge
  %call107 = tail call i32 @usb_add_gadget_udc(ptr noundef %dev1, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %do.end113, label %err_add_udc

do.end113:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.12) #14
  br label %cleanup

err_add_udc:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %uep15 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %uep15, align 8
  tail call void @kfree(ptr noundef %60) #9
  br label %usbhs_mod_gadget_probe_err_gpriv

usbhs_mod_gadget_probe_err_gpriv:                 ; preds = %err_add_udc, %if.end7.i.i.usbhs_mod_gadget_probe_err_gpriv_crit_edge, %if.end.usbhs_mod_gadget_probe_err_gpriv_crit_edge
  %ret.0 = phi i32 [ %call107, %err_add_udc ], [ -12, %if.end7.i.i.usbhs_mod_gadget_probe_err_gpriv_crit_edge ], [ -12, %if.end.usbhs_mod_gadget_probe_err_gpriv_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %usbhs_mod_gadget_probe_err_gpriv, %do.end113, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %usbhs_mod_gadget_probe_err_gpriv ], [ 0, %do.end113 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_phy(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_mod_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_start(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @usbhsg_try_start(ptr noundef %priv, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_stop(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 1) #9
  %add.ptr = getelementptr i8, ptr %call, i32 -1048
  %driver = getelementptr i8, ptr %call, i32 64
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disconnect, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %add.ptr) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @usbhsg_try_stop(ptr noundef %priv, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_mod_gadget_remove(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 1) #9
  %add.ptr = getelementptr i8, ptr %call, i32 -1048
  tail call void @usb_del_gadget_udc(ptr noundef %add.ptr) #9
  %uep = getelementptr i8, ptr %call, i32 56
  %0 = ptrtoint ptr %uep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uep, align 8
  tail call void @kfree(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_mod_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsg_try_start(ptr noundef %priv, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 1) #9
  %uep = getelementptr i8, ptr %call, i32 56
  %0 = ptrtoint ptr %uep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uep, align 8
  %call1 = tail call ptr @usbhs_mod_get_current(ptr noundef %priv) #9
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 7
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %status9 = getelementptr i8, ptr %call, i32 76
  %4 = ptrtoint ptr %status9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status9, align 4
  %or = or i32 %5, %status
  store i32 %or, ptr %status9, align 4
  %6 = and i32 %or, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %.not = icmp eq i32 %6, 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsg_try_start.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsg_try_start, %if.then25)) #9
          to label %do.end28 [label %if.then25], !srcloc !108

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsg_try_start.__UNIQUE_ID_ddebug301, ptr noundef %dev2, ptr noundef nonnull @.str.16) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %if.end
  tail call void @usbhs_fifo_init(ptr noundef %priv) #9
  tail call void @usbhs_pipe_init(ptr noundef %priv, ptr noundef nonnull @usbhsg_dma_map_ctrl) #9
  %call29 = tail call ptr @usbhs_dcp_malloc(ptr noundef %priv) #9
  %pipe = getelementptr inbounds %struct.usbhsg_uep, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call29, ptr %pipe, align 4
  %mod_private = getelementptr inbounds %struct.usbhs_pipe, ptr %call29, i32 0, i32 7
  %8 = ptrtoint ptr %mod_private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %mod_private, align 4
  %9 = load ptr, ptr %pipe, align 4
  tail call void @usbhs_pipe_config_update(ptr noundef %9, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 64) #9
  tail call void @usbhs_sys_function_ctrl(ptr noundef %priv, i32 noundef 1) #9
  %call.i.i = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 1) #9
  %driver.i.i = getelementptr i8, ptr %call.i.i, i32 64
  %10 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %do.end28.if.else.i_crit_edge, label %usbhsg_can_pullup.exit.i

do.end28.if.else.i_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

usbhsg_can_pullup.exit.i:                         ; preds = %do.end28
  %status.i.i = getelementptr i8, ptr %call.i.i, i32 76
  %12 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status.i.i, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %usbhsg_can_pullup.exit.i.if.else.i_crit_edge, label %usbhsg_can_pullup.exit.i.usbhsg_update_pullup.exit_crit_edge

usbhsg_can_pullup.exit.i.usbhsg_update_pullup.exit_crit_edge: ; preds = %usbhsg_can_pullup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsg_update_pullup.exit

usbhsg_can_pullup.exit.i.if.else.i_crit_edge:     ; preds = %usbhsg_can_pullup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %usbhsg_can_pullup.exit.i.if.else.i_crit_edge, %do.end28.if.else.i_crit_edge
  br label %usbhsg_update_pullup.exit

usbhsg_update_pullup.exit:                        ; preds = %if.else.i, %usbhsg_can_pullup.exit.i.usbhsg_update_pullup.exit_crit_edge
  %.sink.i = phi i32 [ 0, %if.else.i ], [ 1, %usbhsg_can_pullup.exit.i.usbhsg_update_pullup.exit_crit_edge ]
  tail call void @usbhs_sys_function_pullup(ptr noundef %priv, i32 noundef %.sink.i) #9
  %irq_dev_state = getelementptr inbounds %struct.usbhs_mod, ptr %call1, i32 0, i32 3
  %15 = ptrtoint ptr %irq_dev_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @usbhsg_irq_dev_state, ptr %irq_dev_state, align 4
  %irq_ctrl_stage = getelementptr inbounds %struct.usbhs_mod, ptr %call1, i32 0, i32 4
  %16 = ptrtoint ptr %irq_ctrl_stage to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @usbhsg_irq_ctrl_stage, ptr %irq_ctrl_stage, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %priv, ptr noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %usbhsg_update_pullup.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_mod_get_current(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_fifo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_dma_map_ctrl(ptr noundef %dma_dev, ptr noundef %pkt, i32 noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pkt, i32 -56
  %pipe2 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe2, align 4
  %call = tail call i32 @usbhs_pipe_is_dir_host(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %map)
  %tobool.not = icmp eq i32 %map, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %num_sgs = getelementptr i8, ptr %pkt, i32 -40
  %2 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %do.end, !prof !109

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 200, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %call25 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %dma_dev, ptr noundef %add.ptr, i32 noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dma = getelementptr i8, ptr %pkt, i32 -48
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %dma28 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 5
  %6 = ptrtoint ptr %dma28 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dma28, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_gadget_unmap_request_by_dev(ptr noundef %dma_dev, ptr noundef %add.ptr, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end27, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end.cleanup_crit_edge ], [ %call25, %if.end27 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_dcp_malloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_config_update(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_sys_function_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_irq_dev_state(ptr noundef %priv, ptr noundef %irq_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 1) #9
  %add.ptr = getelementptr i8, ptr %call, i32 -1048
  %priv1 = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %call3 = tail call i32 @usbhs_status_get_device_state(ptr noundef %irq_state) #9
  %call4 = tail call i32 @usbhs_bus_get_speed(ptr noundef %priv) #9
  %speed = getelementptr i8, ptr %call, i32 -984
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call4, ptr %speed, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsg_irq_dev_state.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsg_irq_dev_state, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !108

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsg_irq_dev_state.__UNIQUE_ID_ddebug298, ptr noundef %dev2, ptr noundef nonnull @.str.18, i32 noundef %call3, i32 noundef %6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  %and = and i32 %call3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %do.end.if.end25_crit_edge, label %if.then14

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then14:                                        ; preds = %do.end
  %driver = getelementptr i8, ptr %call, i32 64
  %9 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver, align 8
  %tobool15.not = icmp eq ptr %10, null
  br i1 %tobool15.not, label %if.then14.if.end23_crit_edge, label %land.lhs.true16

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true16:                                  ; preds = %if.then14
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %suspend, align 4
  %tobool18.not = icmp eq ptr %12, null
  br i1 %tobool18.not, label %land.lhs.true16.if.end23_crit_edge, label %if.then19

land.lhs.true16.if.end23_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then19:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %12(ptr noundef %add.ptr) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true16.if.end23_crit_edge, %if.then14.if.end23_crit_edge
  tail call void @usb_gadget_set_state(ptr noundef %add.ptr, i32 noundef 8) #9
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %do.end.if.end25_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_irq_ctrl_stage(ptr noundef %priv, ptr noundef %irq_state) #0 align 64 {
entry:
  %ctrl = alloca %struct.usb_ctrlrequest, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 1) #9
  %add.ptr = getelementptr i8, ptr %call, i32 -1048
  %uep = getelementptr i8, ptr %call, i32 56
  %0 = ptrtoint ptr %uep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uep, align 8
  %pipe1 = getelementptr inbounds %struct.usbhsg_uep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe1, align 4
  %priv2 = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctrl) #9
  %8 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %ctrl, align 8
  %call4 = tail call i32 @usbhs_status_get_ctrl_stage(ptr noundef %irq_state) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsg_irq_ctrl_stage.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsg_irq_ctrl_stage, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !108

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsg_irq_ctrl_stage.__UNIQUE_ID_ddebug299, ptr noundef %dev3, ptr noundef nonnull @.str.20, i32 noundef %call4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %do.end.cleanup_crit_edge [
    i32 1, label %do.end.sw.epilog_crit_edge
    i32 3, label %sw.bb9
    i32 5, label %sw.bb11
    i32 2, label %do.end.sw.bb13_crit_edge
    i32 4, label %do.end.sw.bb13_crit_edge53
  ]

do.end.sw.bb13_crit_edge53:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

do.end.sw.bb13_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end.sw.bb13_crit_edge, %do.end.sw.bb13_crit_edge53
  tail call void @usbhs_dcp_control_transfer_done(ptr noundef %3) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb9, %do.end.sw.epilog_crit_edge
  %usbhs_ctrl_stage_end_handler.sink = phi ptr [ @usbhs_ctrl_stage_end_handler, %sw.bb11 ], [ @usbhs_fifo_pio_pop_handler, %sw.bb9 ], [ @usbhs_fifo_pio_push_handler, %do.end.sw.epilog_crit_edge ]
  %handler12 = getelementptr inbounds %struct.usbhs_pipe, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %handler12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %usbhs_ctrl_stage_end_handler.sink, ptr %handler12, align 4
  call void @usbhs_usbreq_get_val(ptr noundef %priv, ptr noundef nonnull %ctrl) #9
  %12 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ctrl, align 8
  %14 = and i8 %13, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cond = icmp eq i8 %14, 0
  br i1 %cond, label %sw.bb14, label %sw.epilog.if.else_crit_edge

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb14:                                          ; preds = %sw.epilog
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %8, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %16, label %sw.bb14.if.else_crit_edge [
    i8 1, label %sw.bb14.if.then22_crit_edge
    i8 3, label %sw.bb17
    i8 0, label %sw.bb18
  ]

sw.bb14.if.then22_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

sw.bb14.if.else_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb17:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

sw.bb18:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then22:                                        ; preds = %sw.bb18, %sw.bb17, %sw.bb14.if.then22_crit_edge
  %recip_handler.0.ph = phi ptr [ @req_get_status, %sw.bb18 ], [ @req_set_feature, %sw.bb17 ], [ @req_clear_feature, %sw.bb14.if.then22_crit_edge ]
  %call23 = call fastcc i32 @usbhsg_recip_run_handle(ptr noundef %priv, ptr noundef nonnull %recip_handler.0.ph, ptr noundef nonnull %ctrl)
  br label %if.end25

if.else:                                          ; preds = %sw.bb14.if.else_crit_edge, %sw.epilog.if.else_crit_edge
  %driver = getelementptr i8, ptr %call, i32 64
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver, align 8
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %setup, align 4
  %call24 = call i32 %21(ptr noundef %add.ptr, ptr noundef nonnull %ctrl) #9
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22
  %ret.0 = phi i32 [ %call23, %if.then22 ], [ %call24, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %if.then27, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void @usbhs_pipe_stall(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %sw.bb13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %sw.bb13 ], [ %ret.0, %if.then27 ], [ %ret.0, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_irq_callback_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_is_dir_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_sys_function_pullup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_status_get_device_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_bus_get_speed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_status_get_ctrl_stage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_dcp_control_transfer_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_usbreq_get_val(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbhsg_recip_run_handle(ptr noundef %priv, ptr nocapture noundef readonly %handler, ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 1) #9
  %priv1 = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl, align 1
  %6 = and i8 %5, 31
  %and = zext i8 %6 to i32
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %7 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wIndex, align 1
  %9 = lshr i16 %8, 8
  %10 = and i16 %9, 15
  %and4 = zext i16 %10 to i32
  %uep5 = getelementptr i8, ptr %call, i32 56
  %11 = ptrtoint ptr %uep5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uep5, align 8
  %add.ptr6 = getelementptr %struct.usbhsg_uep, ptr %12, i32 %and4
  %pipe7 = getelementptr %struct.usbhsg_uep, ptr %12, i32 %and4, i32 1
  %13 = ptrtoint ptr %pipe7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pipe7, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.31) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %and, label %sw.epilog.thread [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.usbhsg_recip_handle, ptr %handler, i32 0, i32 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %interface = getelementptr inbounds %struct.usbhsg_recip_handle, ptr %handler, i32 0, i32 2
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %endpoint = getelementptr inbounds %struct.usbhsg_recip_handle, ptr %handler, i32 0, i32 3
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.37, i32 noundef %and) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %sw.bb
  %func.0.in = phi ptr [ %endpoint, %sw.bb9 ], [ %interface, %sw.bb8 ], [ %device, %sw.bb ]
  %msg.0 = phi ptr [ @.str.35, %sw.bb9 ], [ @.str.34, %sw.bb8 ], [ @.str.33, %sw.bb ]
  %16 = ptrtoint ptr %func.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %func.0 = load ptr, ptr %func.0.in, align 4
  %tobool13.not = icmp eq ptr %func.0, null
  br i1 %tobool13.not, label %sw.epilog.cleanup_crit_edge, label %do.body15

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body15:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsg_recip_run_handle.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsg_recip_run_handle, %if.then21)) #9
          to label %do.end24 [label %if.then21], !srcloc !108

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handler, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsg_recip_run_handle.__UNIQUE_ID_ddebug297, ptr noundef %dev2, ptr noundef nonnull @.str.40, ptr noundef %18, i32 noundef %and4, ptr noundef nonnull %msg.0) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body15
  %call25 = tail call i32 %func.0(ptr noundef %priv, ptr noundef %add.ptr6, ptr noundef %ctrl) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call25, %do.end24 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_stall(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_control_done(ptr noundef %priv, ptr nocapture noundef readnone %uep, ptr nocapture noundef readnone %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 1) #9
  %uep1 = getelementptr i8, ptr %call, i32 56
  %0 = ptrtoint ptr %uep1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uep1, align 8
  %pipe2 = getelementptr inbounds %struct.usbhsg_uep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe2, align 4
  tail call void @usbhs_dcp_control_transfer_done(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_clear_endpoint(ptr noundef %priv, ptr nocapture noundef readonly %uep, ptr nocapture noundef readnone %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpriv1 = getelementptr inbounds %struct.usbhsg_uep, ptr %uep, i32 0, i32 4
  %0 = ptrtoint ptr %gpriv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpriv1, align 4
  %pipe2 = getelementptr inbounds %struct.usbhsg_uep, ptr %uep, i32 0, i32 1
  %2 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe2, align 4
  %status = getelementptr inbounds %struct.usbhsg_gpriv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usbhs_pipe_disable(ptr noundef %3) #9
  tail call void @usbhs_pipe_data_sequence(ptr noundef %3, i32 noundef 0) #9
  tail call void @usbhs_pipe_enable(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 1) #9
  %uep1.i = getelementptr i8, ptr %call.i, i32 56
  %6 = ptrtoint ptr %uep1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uep1.i, align 8
  %pipe2.i = getelementptr inbounds %struct.usbhsg_uep, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe2.i, align 4
  tail call void @usbhs_dcp_control_transfer_done(ptr noundef %9) #9
  tail call void @usbhs_pkt_start(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_data_sequence(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pkt_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_set_device(ptr noundef %priv, ptr nocapture noundef readnone %uep, ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %wValue, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %1)
  %cond = icmp eq i16 %1, 512
  %call.i = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 1) #9
  %uep1.i = getelementptr i8, ptr %call.i, i32 56
  %2 = ptrtoint ptr %uep1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uep1.i, align 8
  %pipe2.i = getelementptr inbounds %struct.usbhsg_uep, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe2.i, align 4
  tail call void @usbhs_dcp_control_transfer_done(ptr noundef %5) #9
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #9
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %7 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wIndex, align 1
  %9 = and i16 %8, 255
  tail call void @usbhs_sys_set_test_mode(ptr noundef %priv, i16 noundef zeroext %9) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_set_endpoint(ptr noundef %priv, ptr nocapture noundef readonly %uep, ptr nocapture noundef readnone %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhsg_uep, ptr %uep, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  tail call void @usbhs_pipe_stall(ptr noundef %1) #9
  %call.i = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 1) #9
  %uep1.i = getelementptr i8, ptr %call.i, i32 56
  %2 = ptrtoint ptr %uep1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uep1.i, align 8
  %pipe2.i = getelementptr inbounds %struct.usbhsg_uep, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe2.i, align 4
  tail call void @usbhs_dcp_control_transfer_done(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_sys_set_test_mode(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_get_device(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %uep, ptr nocapture noundef readnone %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpriv1 = getelementptr inbounds %struct.usbhsg_uep, ptr %uep, i32 0, i32 4
  %0 = ptrtoint ptr %gpriv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpriv1, align 4
  %status2 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status2, align 4
  %4 = trunc i32 %3 to i16
  %5 = lshr i16 %4, 3
  %6 = and i16 %5, 1
  tail call fastcc void @__usbhsg_recip_send_status(ptr noundef %1, i16 noundef zeroext %6)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_get_interface(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %uep, ptr nocapture noundef readnone %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpriv1 = getelementptr inbounds %struct.usbhsg_uep, ptr %uep, i32 0, i32 4
  %0 = ptrtoint ptr %gpriv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpriv1, align 4
  tail call fastcc void @__usbhsg_recip_send_status(ptr noundef %1, i16 noundef zeroext 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_get_endpoint(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %uep, ptr nocapture noundef readnone %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpriv1 = getelementptr inbounds %struct.usbhsg_uep, ptr %uep, i32 0, i32 4
  %0 = ptrtoint ptr %gpriv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpriv1, align 4
  %pipe2 = getelementptr inbounds %struct.usbhsg_uep, ptr %uep, i32 0, i32 1
  %2 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe2, align 4
  %call = tail call i32 @usbhs_pipe_is_stall(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %spec.select = zext i1 %tobool.not to i16
  tail call fastcc void @__usbhsg_recip_send_status(ptr noundef %1, i16 noundef zeroext %spec.select)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__usbhsg_recip_send_status(ptr nocapture noundef readonly %gpriv, i16 noundef zeroext %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uep = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gpriv, i32 0, i32 2
  %0 = ptrtoint ptr %uep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uep, align 8
  %pipe1 = getelementptr inbounds %struct.usbhsg_uep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe1, align 4
  %priv = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gpriv, i32 0, i32 1, i32 13
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %call = tail call ptr @usb_ep_alloc_request(ptr noundef %1, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.24) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2592, i32 noundef 2) #12
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_ep_free_request(ptr noundef %1, ptr noundef nonnull %call) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i16 @llvm.bswap.i16(i16 %status)
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %call7.i, align 8
  %complete = getelementptr inbounds %struct.usb_request, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__usbhsg_recip_send_complete, ptr %complete, align 4
  %12 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %call, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %length, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %zero, align 4
  %bf.clear = and i32 %bf.load, -8193
  store i32 %bf.clear, ptr %zero, align 4
  %handler = getelementptr inbounds %struct.usbhs_pipe, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @usbhs_fifo_pio_push_handler, ptr %handler, align 4
  %gpriv1.i = getelementptr inbounds %struct.usbhsg_uep, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %gpriv1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpriv1.i, align 4
  %priv.i = getelementptr inbounds %struct.usbhsg_gpriv, ptr %17, i32 0, i32 1, i32 13
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 4
  %pdev.i = getelementptr inbounds %struct.usbhs_priv, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %22 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pipe1, align 4
  %pkt4.i = getelementptr inbounds %struct.usbhsg_request, ptr %call, i32 0, i32 1
  %actual.i = getelementptr inbounds %struct.usb_request, ptr %call, i32 0, i32 12
  %24 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %actual.i, align 4
  %status.i = getelementptr inbounds %struct.usb_request, ptr %call, i32 0, i32 11
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -115, ptr %status.i, align 4
  %26 = load ptr, ptr %call, align 4
  %27 = load i32, ptr %length, align 4
  %bf.load.i = load i32, ptr %zero, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 13
  %bf.clear.i = and i32 %bf.lshr.i, 1
  tail call void @usbhs_pkt_push(ptr noundef %23, ptr noundef %pkt4.i, ptr noundef nonnull @usbhsg_queue_done, ptr noundef %26, i32 noundef %27, i32 noundef %bf.clear.i, i32 noundef -1) #9
  tail call void @usbhs_pkt_start(ptr noundef %23) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsg_queue_push.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__usbhsg_recip_send_status, %if.then.i)) #9
          to label %cleanup [label %if.then.i], !srcloc !108

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %priv8.i = getelementptr inbounds %struct.usbhs_pipe, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %priv8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv8.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pipe_info.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsg_queue_push.__UNIQUE_ID_ddebug296, ptr noundef %dev2.i, ptr noundef nonnull @.str.28, i32 noundef %sub.ptr.div.i, i32 noundef %33) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end7, %if.then5, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__usbhsg_recip_send_complete(ptr noundef %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.usbhsg_request, ptr %req, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %1) #9
  tail call void @usb_ep_free_request(ptr noundef %ep, ptr noundef %req) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pkt_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbhsg_queue_done(ptr noundef %priv, ptr noundef %pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %mod_private = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mod_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod_private, align 4
  %actual = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 10
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  %actual2 = getelementptr i8, ptr %pkt, i32 -4
  %6 = ptrtoint ptr %actual2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %actual2, align 4
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 7
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %pkt, i32 -56
  %gpriv1.i = getelementptr inbounds %struct.usbhsg_uep, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %gpriv1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpriv1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.usbhsg_uep, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pipe2.i, align 4
  %priv.i = getelementptr inbounds %struct.usbhsg_gpriv, ptr %8, i32 0, i32 1, i32 13
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 4
  %pdev.i = getelementptr inbounds %struct.usbhs_priv, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %dev3.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then.__usbhsg_queue_pop.exit_crit_edge, label %do.body.i

if.then.__usbhsg_queue_pop.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__usbhsg_queue_pop.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__usbhsg_queue_pop.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsg_queue_done, %if.then10.i)) #9
          to label %__usbhsg_queue_pop.exit [label %if.then10.i], !srcloc !108

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %priv11.i = getelementptr inbounds %struct.usbhs_pipe, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %priv11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv11.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pipe_info.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__usbhsg_queue_pop.__UNIQUE_ID_ddebug295, ptr noundef %dev3.i, ptr noundef nonnull @.str.30, i32 noundef %sub.ptr.div.i) #9
  br label %__usbhsg_queue_pop.exit

__usbhsg_queue_pop.exit:                          ; preds = %if.then10.i, %do.body.i, %if.then.__usbhsg_queue_pop.exit_crit_edge
  %status14.i = getelementptr i8, ptr %pkt, i32 -8
  %19 = ptrtoint ptr %status14.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %status14.i, align 4
  %lock.i = getelementptr inbounds %struct.usbhs_priv, ptr %12, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %3, ptr noundef %add.ptr) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  br label %if.end

if.end:                                           ; preds = %__usbhsg_queue_pop.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_is_stall(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsg_try_stop(ptr noundef %priv, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 1) #9
  %call1 = tail call ptr @usbhs_mod_get_current(ptr noundef %priv) #9
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 7
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %neg = xor i32 %status, -1
  %status9 = getelementptr i8, ptr %call, i32 76
  %2 = ptrtoint ptr %status9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status9, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %status9, align 4
  %4 = and i32 %and, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usbhs_fifo_quit(ptr noundef %priv) #9
  %irq_dev_state = getelementptr inbounds %struct.usbhs_mod, ptr %call1, i32 0, i32 3
  %6 = ptrtoint ptr %irq_dev_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %irq_dev_state, align 4
  %irq_ctrl_stage = getelementptr inbounds %struct.usbhs_mod, ptr %call1, i32 0, i32 4
  %7 = ptrtoint ptr %irq_ctrl_stage to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %irq_ctrl_stage, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %priv, ptr noundef %call1) #9
  %speed = getelementptr i8, ptr %call, i32 -984
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %speed, align 8
  tail call void @usbhs_sys_set_test_mode(ptr noundef %priv, i16 noundef zeroext 0) #9
  tail call void @usbhs_sys_function_ctrl(ptr noundef %priv, i32 noundef 0) #9
  %uep22 = getelementptr i8, ptr %call, i32 56
  %uep_size = getelementptr i8, ptr %call, i32 60
  %9 = ptrtoint ptr %uep_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uep_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp202 = icmp sgt i32 %10, 0
  br i1 %cmp202, label %if.end.land.rhs_crit_edge, label %if.end.do.body26_crit_edge

if.end.do.body26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %i.03 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %uep22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uep22, align 8
  %add.ptr23 = getelementptr %struct.usbhsg_uep, ptr %12, i32 %i.03
  %tobool24.not = icmp eq ptr %add.ptr23, null
  br i1 %tobool24.not, label %land.rhs.do.body26_crit_edge, label %for.body

land.rhs.do.body26_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

for.body:                                         ; preds = %land.rhs
  %call25 = tail call i32 @usbhsg_ep_disable(ptr noundef nonnull %add.ptr23)
  %inc = add nuw nsw i32 %i.03, 1
  %13 = ptrtoint ptr %uep_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %uep_size, align 4
  %cmp20 = icmp slt i32 %inc, %14
  br i1 %cmp20, label %for.body.land.rhs_crit_edge, label %for.body.do.body26_crit_edge

for.body.do.body26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

do.body26:                                        ; preds = %for.body.do.body26_crit_edge, %land.rhs.do.body26_crit_edge, %if.end.do.body26_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsg_try_stop.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsg_try_stop, %if.then32)) #9
          to label %cleanup [label %if.then32], !srcloc !108

if.then32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsg_try_stop.__UNIQUE_ID_ddebug302, ptr noundef %dev2, ptr noundef nonnull @.str.42) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.body26, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_fifo_quit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_ep_disable(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.usbhsg_uep, ptr %ep, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %pipe6 = getelementptr inbounds %struct.usbhsg_uep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %pipe6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe6, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call1.i = tail call ptr @usbhs_pkt_pop(ptr noundef nonnull %1, ptr noundef null) #9
  %tobool.not2.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not2.i, label %if.end.usbhsg_pipe_disable.exit_crit_edge, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  br label %if.end.i

if.end.usbhsg_pipe_disable.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsg_pipe_disable.exit

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %call3.i = phi ptr [ %call.i, %if.end.i.if.end.i_crit_edge ], [ %call1.i, %if.end.if.end.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 -56
  tail call fastcc void @usbhsg_queue_pop(ptr noundef %ep, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %call.i = tail call ptr @usbhs_pkt_pop(ptr noundef nonnull %1, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.usbhsg_pipe_disable.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i.usbhsg_pipe_disable.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsg_pipe_disable.exit

usbhsg_pipe_disable.exit:                         ; preds = %if.end.i.usbhsg_pipe_disable.exit_crit_edge, %if.end.usbhsg_pipe_disable.exit_crit_edge
  tail call void @usbhs_pipe_disable(ptr noundef nonnull %1) #9
  tail call void @usbhs_pipe_free(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %pipe6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe6, align 4
  %mod_private = getelementptr inbounds %struct.usbhs_pipe, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %mod_private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mod_private, align 4
  store ptr null, ptr %pipe6, align 4
  br label %out

out:                                              ; preds = %usbhsg_pipe_disable.exit, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_pkt_pop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsg_queue_pop(ptr noundef %uep, ptr noundef %ureq, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpriv1 = getelementptr inbounds %struct.usbhsg_uep, ptr %uep, i32 0, i32 4
  %0 = ptrtoint ptr %gpriv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpriv1, align 4
  %priv2 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %1, i32 0, i32 1, i32 13
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %4 = ptrtoint ptr %gpriv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpriv1, align 4
  %pipe2.i = getelementptr inbounds %struct.usbhsg_uep, ptr %uep, i32 0, i32 1
  %6 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe2.i, align 4
  %priv.i = getelementptr inbounds %struct.usbhsg_gpriv, ptr %5, i32 0, i32 1, i32 13
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 4
  %pdev.i = getelementptr inbounds %struct.usbhs_priv, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %dev3.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.__usbhsg_queue_pop.exit_crit_edge, label %do.body.i

entry.__usbhsg_queue_pop.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__usbhsg_queue_pop.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__usbhsg_queue_pop.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsg_queue_pop, %if.then10.i)) #9
          to label %__usbhsg_queue_pop.exit [label %if.then10.i], !srcloc !108

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %priv11.i = getelementptr inbounds %struct.usbhs_pipe, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %priv11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv11.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe_info.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__usbhsg_queue_pop.__UNIQUE_ID_ddebug295, ptr noundef %dev3.i, ptr noundef nonnull @.str.30, i32 noundef %sub.ptr.div.i) #9
  br label %__usbhsg_queue_pop.exit

__usbhsg_queue_pop.exit:                          ; preds = %if.then10.i, %do.body.i, %entry.__usbhsg_queue_pop.exit_crit_edge
  %status14.i = getelementptr inbounds %struct.usb_request, ptr %ureq, i32 0, i32 11
  %16 = ptrtoint ptr %status14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %status, ptr %status14.i, align 4
  %lock.i = getelementptr inbounds %struct.usbhs_priv, ptr %9, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  tail call void @usb_gadget_giveback_request(ptr noundef %uep, ptr noundef %ureq) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_get_frame(ptr nocapture noundef readonly %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gadget, i32 0, i32 1, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call i32 @usbhs_frame_get_num(ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbhsg_set_selfpowered(ptr nocapture noundef %gadget, i32 noundef %is_self) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_self)
  %tobool.not = icmp eq i32 %is_self, 0
  %status1 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gadget, i32 0, i32 7
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %and = and i32 %1, -9
  %masksel = select i1 %tobool.not, i32 0, i32 8
  %and.sink = or i32 %and, %masksel
  %bf.shl = select i1 %tobool.not, i32 0, i32 262144
  store i32 %and.sink, ptr %status1, align 4
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %2 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_vbus_session(ptr nocapture noundef %gadget, i32 noundef %is_active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gadget, i32 0, i32 1, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev2 = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_active)
  %tobool = icmp ne i32 %is_active, 0
  %vbus_active = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gadget, i32 0, i32 6
  %frombool = zext i1 %tobool to i8
  %4 = ptrtoint ptr %vbus_active to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %vbus_active, align 8
  %call = tail call i32 @usbhsc_schedule_notify_hotplug(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_pullup(ptr nocapture noundef %gadget, i32 noundef %is_on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gadget, i32 0, i32 1, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  %status7 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gadget, i32 0, i32 7
  %2 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status7, align 4
  %and = and i32 %3, -17
  %masksel = select i1 %tobool.not, i32 0, i32 16
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %status7, align 4
  %call.i.i = tail call ptr @usbhs_mod_get(ptr noundef %1, i32 noundef 1) #9
  %driver.i.i = getelementptr i8, ptr %call.i.i, i32 64
  %4 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.if.else.i_crit_edge, label %usbhsg_can_pullup.exit.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

usbhsg_can_pullup.exit.i:                         ; preds = %entry
  %status.i.i = getelementptr i8, ptr %call.i.i, i32 76
  %6 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i.i, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %usbhsg_can_pullup.exit.i.if.else.i_crit_edge, label %usbhsg_can_pullup.exit.i.usbhsg_update_pullup.exit_crit_edge

usbhsg_can_pullup.exit.i.usbhsg_update_pullup.exit_crit_edge: ; preds = %usbhsg_can_pullup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsg_update_pullup.exit

usbhsg_can_pullup.exit.i.if.else.i_crit_edge:     ; preds = %usbhsg_can_pullup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %usbhsg_can_pullup.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  br label %usbhsg_update_pullup.exit

usbhsg_update_pullup.exit:                        ; preds = %if.else.i, %usbhsg_can_pullup.exit.i.usbhsg_update_pullup.exit_crit_edge
  %.sink.i = phi i32 [ 0, %if.else.i ], [ 1, %usbhsg_can_pullup.exit.i.usbhsg_update_pullup.exit_crit_edge ]
  tail call void @usbhs_sys_function_pullup(ptr noundef %1, i32 noundef %.sink.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_gadget_start(ptr noundef %gadget, ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gadget, i32 0, i32 1, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %tobool.not = icmp eq ptr %driver, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 4
  %4 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setup, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %max_speed = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 1
  %6 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp ult i32 %7, 2
  br i1 %cmp, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %transceiver = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gadget, i32 0, i32 5
  %8 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transceiver, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %otg = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg, align 4
  %tobool.not.i30 = icmp eq ptr %11, null
  br i1 %tobool.not.i30, label %if.then5.do.end_crit_edge, label %land.lhs.true.i

if.then5.do.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true.i:                                  ; preds = %if.then5
  %set_peripheral.i = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %set_peripheral.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_peripheral.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end_crit_edge, label %otg_set_peripheral.exit

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

otg_set_peripheral.exit:                          ; preds = %land.lhs.true.i
  %call.i = tail call i32 %13(ptr noundef nonnull %11, ptr noundef %gadget) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end12, label %otg_set_peripheral.exit.do.end_crit_edge

otg_set_peripheral.exit.do.end_crit_edge:         ; preds = %otg_set_peripheral.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %otg_set_peripheral.exit.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %if.then5.do.end_crit_edge
  %retval.0.i33 = phi i32 [ %call.i, %otg_set_peripheral.exit.do.end_crit_edge ], [ -524, %land.lhs.true.i.do.end_crit_edge ], [ -524, %if.then5.do.end_crit_edge ]
  %name = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 10
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.43, ptr noundef %15) #14
  br label %cleanup

if.end12:                                         ; preds = %otg_set_peripheral.exit
  call void @__sanitizer_cov_trace_pc() #11
  %irq_vbus.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %irq_vbus.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %irq_vbus.i, align 4
  %get_vbus.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 8, i32 3
  %17 = ptrtoint ptr %get_vbus.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @usbhsm_phy_get_vbus, ptr %get_vbus.i, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %1, ptr noundef null) #9
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end.if.end13_crit_edge
  %driver14 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gadget, i32 0, i32 4
  %18 = ptrtoint ptr %driver14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %driver, ptr %driver14, align 8
  tail call fastcc void @usbhsg_try_start(ptr noundef %1, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %retval.0.i33, %do.end ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_gadget_stop(ptr nocapture noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gadget, i32 0, i32 1, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  tail call fastcc void @usbhsg_try_stop(ptr noundef %1, i32 noundef 2)
  %transceiver = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gadget, i32 0, i32 5
  %2 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transceiver, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %otg = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otg, align 4
  %tobool.not.i8 = icmp eq ptr %5, null
  br i1 %tobool.not.i8, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %set_peripheral.i = getelementptr inbounds %struct.usb_otg, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %set_peripheral.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_peripheral.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %7(ptr noundef nonnull %5, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %driver = getelementptr inbounds %struct.usbhsg_gpriv, ptr %gadget, i32 0, i32 4
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_frame_get_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhsc_schedule_notify_hotplug(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsm_phy_get_vbus(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_pdev_to_priv(ptr noundef %pdev) #9
  %call1 = tail call ptr @usbhs_mod_get(ptr noundef %call, i32 noundef 1) #9
  %vbus_active = getelementptr i8, ptr %call1, i32 72
  %0 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vbus_active, align 8, !range !110
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_pdev_to_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_ep_enable(ptr noundef %ep, ptr nocapture noundef readonly %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpriv1 = getelementptr inbounds %struct.usbhsg_uep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %gpriv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpriv1, align 4
  %priv2 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %1, i32 0, i32 1, i32 13
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 7
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %pipe8 = getelementptr inbounds %struct.usbhsg_uep, ptr %ep, i32 0, i32 1
  %4 = ptrtoint ptr %pipe8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe8, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usbhs_pipe_clear(ptr noundef nonnull %5) #9
  %6 = ptrtoint ptr %pipe8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe8, align 4
  tail call void @usbhs_pipe_data_sequence(ptr noundef %7, i32 noundef 0) #9
  br label %usbhsg_ep_enable_end

if.end:                                           ; preds = %entry
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %8 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes.i, align 1
  %10 = and i8 %9, 3
  %and.i = zext i8 %10 to i32
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i, align 1
  %.lobit.i = lshr i8 %12, 7
  %13 = zext i8 %.lobit.i to i32
  %call13 = tail call ptr @usbhs_pipe_malloc(ptr noundef %3, i32 noundef %and.i, i32 noundef %13) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.usbhsg_ep_enable_end_crit_edge, label %if.then15

if.end.usbhsg_ep_enable_end_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsg_ep_enable_end

if.then15:                                        ; preds = %if.end
  %14 = ptrtoint ptr %pipe8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call13, ptr %pipe8, align 4
  %mod_private = getelementptr inbounds %struct.usbhs_pipe, ptr %call13, i32 0, i32 7
  %15 = ptrtoint ptr %mod_private to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ep, ptr %mod_private, align 4
  %16 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress.i, align 1
  %18 = and i8 %17, 15
  %conv18 = zext i8 %18 to i16
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %19 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %wMaxPacketSize.i, align 1
  %21 = and i16 %20, -249
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #9
  tail call void @usbhs_pipe_config_update(ptr noundef nonnull %call13, i16 noundef zeroext 0, i16 noundef zeroext %conv18, i16 noundef zeroext %22) #9
  %23 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool22.not = icmp sgt i8 %24, -1
  %handler24 = getelementptr inbounds %struct.usbhs_pipe, ptr %call13, i32 0, i32 6
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %handler24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @usbhs_fifo_dma_push_handler, ptr %handler24, align 4
  br label %usbhsg_ep_enable_end

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %handler24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @usbhs_fifo_dma_pop_handler, ptr %handler24, align 4
  %priv25 = getelementptr inbounds %struct.usbhs_pipe, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %priv25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv25, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pipe_info, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call13 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %conv27 = trunc i32 %sub.ptr.div to i16
  tail call void @usbhs_xxxsts_clear(ptr noundef %3, i16 noundef zeroext 70, i16 noundef zeroext %conv27) #9
  br label %usbhsg_ep_enable_end

usbhsg_ep_enable_end:                             ; preds = %if.else, %if.then23, %if.end.usbhsg_ep_enable_end_crit_edge, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ -5, %if.end.usbhsg_ep_enable_end_crit_edge ], [ 0, %if.else ], [ 0, %if.then23 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @usbhsg_ep_alloc_request(ptr nocapture noundef readnone %ep, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !109

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 8
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 152) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pkt = getelementptr inbounds %struct.usbhsg_request, ptr %call7.i.i, i32 0, i32 1
  tail call void @usbhs_pkt_init(ptr noundef %pkt) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbhsg_ep_free_request(ptr nocapture noundef readnone %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt = getelementptr inbounds %struct.usbhsg_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pkt, align 4
  %cmp.i.not = icmp eq ptr %1, %pkt
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !109

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 678, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %req) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_ep_queue(ptr nocapture noundef readonly %ep, ptr noundef %req, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpriv1 = getelementptr inbounds %struct.usbhsg_uep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %gpriv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpriv1, align 4
  %pipe5 = getelementptr inbounds %struct.usbhsg_uep, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %pipe5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe5, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %driver = getelementptr inbounds %struct.usbhsg_gpriv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %7, null
  %tobool10.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end, !prof !111

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.usbhsg_gpriv, ptr %1, i32 0, i32 1, i32 13
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 4
  %pdev.i = getelementptr inbounds %struct.usbhs_priv, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %pkt4.i = getelementptr inbounds %struct.usbhsg_request, ptr %req, i32 0, i32 1
  %actual.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %12 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %actual.i, align 4
  %status.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -115, ptr %status.i, align 4
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req, align 4
  %length.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 4
  %zero.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %18 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i = load i32, ptr %zero.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 13
  %bf.clear.i = and i32 %bf.lshr.i, 1
  tail call void @usbhs_pkt_push(ptr noundef nonnull %3, ptr noundef %pkt4.i, ptr noundef nonnull @usbhsg_queue_done, ptr noundef %15, i32 noundef %17, i32 noundef %bf.clear.i, i32 noundef -1) #9
  tail call void @usbhs_pkt_start(ptr noundef nonnull %3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsg_queue_push.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsg_ep_queue, %if.then.i)) #9
          to label %cleanup [label %if.then.i], !srcloc !108

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %priv8.i = getelementptr inbounds %struct.usbhs_pipe, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %priv8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv8.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pipe_info.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsg_queue_push.__UNIQUE_ID_ddebug296, ptr noundef %dev2.i, ptr noundef nonnull @.str.28, i32 noundef %sub.ptr.div.i, i32 noundef %24) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -108, %lor.lhs.false.cleanup_crit_edge ], [ -108, %entry.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_ep_dequeue(ptr noundef %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.usbhsg_uep, ptr %ep, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %pipe9 = getelementptr inbounds %struct.usbhsg_uep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %pipe9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe9, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pkt = getelementptr inbounds %struct.usbhsg_request, ptr %req, i32 0, i32 1
  %call10 = tail call ptr @usbhs_pkt_pop(ptr noundef nonnull %1, ptr noundef %pkt) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @usbhsg_queue_pop(ptr noundef %ep, ptr noundef %req, i32 noundef -104)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_ep_set_halt(ptr nocapture noundef readonly %ep, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__usbhsg_ep_set_halt_wedge(ptr noundef %ep, i32 noundef %value, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsg_ep_set_wedge(ptr nocapture noundef readonly %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__usbhsg_ep_set_halt_wedge(ptr noundef %ep, i32 noundef 1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_pipe_malloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_xxxsts_clear(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pkt_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__usbhsg_ep_set_halt_wedge(ptr nocapture noundef readonly %ep, i32 noundef %halt, i32 noundef %wedge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhsg_uep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %gpriv2 = getelementptr inbounds %struct.usbhsg_uep, ptr %ep, i32 0, i32 4
  %2 = ptrtoint ptr %gpriv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpriv2, align 4
  %priv3 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %3, i32 0, i32 1, i32 13
  %4 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv3, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__usbhsg_ep_set_halt_wedge.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__usbhsg_ep_set_halt_wedge, %if.then)) #9
          to label %do.body13 [label %if.then], !srcloc !108

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %priv10 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %priv10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv10, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe_info, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__usbhsg_ep_set_halt_wedge.__UNIQUE_ID_ddebug300, ptr noundef %dev6, ptr noundef nonnull @.str.46, i32 noundef %halt, i32 noundef %sub.ptr.div) #9
  br label %do.body13

do.body13:                                        ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 7
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call21 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true, label %do.body13.if.end28_crit_edge

do.body13.if.end28_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true:                                    ; preds = %do.body13
  %call23 = tail call ptr @__usbhsf_pkt_get(ptr noundef %1) #9
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %lor.lhs.false, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call25 = tail call zeroext i1 @usbhs_pipe_contains_transmittable_data(ptr noundef %1) #9
  br i1 %call25, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.end28_crit_edge

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end28:                                         ; preds = %lor.lhs.false.if.end28_crit_edge, %do.body13.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %halt)
  %tobool29.not = icmp eq i32 %halt, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end28
  tail call void @usbhs_pipe_stall(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wedge)
  %tobool34.not = icmp eq i32 %wedge, 0
  br i1 %tobool34.not, label %if.then30.if.else36_crit_edge, label %if.then35

if.then30.if.else36_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else36

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usbhs_pipe_disable(ptr noundef %1) #9
  br label %if.else36

if.then35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.usbhsg_gpriv, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %or = or i32 %13, 4
  store i32 %or, ptr %status, align 4
  br label %out

if.else36:                                        ; preds = %if.else, %if.then30.if.else36_crit_edge
  %status37 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %status37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status37, align 4
  %and = and i32 %15, -5
  store i32 %and, ptr %status37, align 4
  br label %out

out:                                              ; preds = %if.else36, %if.then35, %lor.lhs.false.out_crit_edge, %land.lhs.true.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then35 ], [ 0, %if.else36 ], [ -11, %lor.lhs.false.out_crit_edge ], [ -11, %land.lhs.true.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_is_dir_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__usbhsf_pkt_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usbhs_pipe_contains_transmittable_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !83, !84, !85, !87, !89, !90, !91, !92, !94, !96, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 1098, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usbhs_mod_gadget_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @usbhs_mod_gadget_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 1115, i32 21}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 1126, i32 24}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 1140, i32 40}
!16 = !{ptr @usbhs_mod_gadget_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 1145, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 1173, i32 2}
!21 = !{ptr @usbhs_mod_gadget_probe._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @usbhs_mod_gadget_probe._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 840, i32 2}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @usbhsg_try_start.__UNIQUE_ID_ddebug301, !24, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 464, i32 2}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @usbhsg_irq_dev_state.__UNIQUE_ID_ddebug298, !29, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 488, i32 2}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @usbhsg_irq_ctrl_stage.__UNIQUE_ID_ddebug299, !33, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 251, i32 11}
!38 = !{ptr @req_clear_feature, !39, !"req_clear_feature", i1 false, i1 false}
!39 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 250, i32 35}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 292, i32 11}
!42 = !{ptr @req_set_feature, !43, !"req_set_feature", i1 false, i1 false}
!43 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 291, i32 35}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 392, i32 11}
!46 = !{ptr @req_get_status, !47, !"req_get_status", i1 false, i1 false}
!47 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 391, i32 35}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 323, i32 3}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__usbhsg_recip_send_status._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @__usbhsg_recip_send_status._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 179, i32 2}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @usbhsg_queue_push.__UNIQUE_ID_ddebug296, !55, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 128, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @__usbhsg_queue_pop.__UNIQUE_ID_ddebug295, !59, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 419, i32 3}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @usbhsg_recip_run_handle._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @usbhsg_recip_run_handle._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 425, i32 9}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 429, i32 9}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 433, i32 9}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 437, i32 3}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @usbhsg_recip_run_handle._entry.36, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @usbhsg_recip_run_handle._entry_ptr.39, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 443, i32 3}
!80 = !{ptr @usbhsg_recip_run_handle.__UNIQUE_ID_ddebug297, !79, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 916, i32 2}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @usbhsg_try_stop.__UNIQUE_ID_ddebug302, !82, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!85 = !{ptr @usbhsg_gadget_ops, !86, !"usbhsg_gadget_ops", i1 false, i1 false}
!86 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 1050, i32 36}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 965, i32 4}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @usbhsg_gadget_start._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @usbhsg_gadget_start._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @usbhsg_ep_ops, !93, !"usbhsg_ep_ops", i1 false, i1 false}
!93 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 778, i32 32}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/renesas_usbhs/mod_gadget.c", i32 733, i32 2}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @__usbhsg_ep_set_halt_wedge.__UNIQUE_ID_ddebug300, !95, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i64 2148783792, i64 2148783797, i64 2148783810, i64 2148783854, i64 2148783888, i64 2148783909}
!109 = !{!"branch_weights", i32 2000, i32 1}
!110 = !{i8 0, i8 2}
!111 = !{!"branch_weights", i32 4001, i32 4000000}
