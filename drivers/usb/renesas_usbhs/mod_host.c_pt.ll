; ModuleID = '/llk/IR_all_yes/drivers/usb/renesas_usbhs/mod_host.c_pt.bc'
source_filename = "../drivers/usb/renesas_usbhs/mod_host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usbhs_pkt_handle = type { ptr, ptr, ptr }
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.usbhsh_hpriv = type { %struct.usbhs_mod, ptr, [10 x %struct.usbhsh_device], i32, %struct.completion }
%struct.usbhs_mod = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.usbhsh_device = type { ptr, %struct.list_head }
%struct.renesas_usbhs_driver_pipe_config = type { i8, i16, i8, i8 }
%struct.usbhs_pipe = type { i32, ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usbhsh_request = type { ptr, %struct.usbhs_pkt }
%struct.usbhs_pkt = type { %struct.list_head, ptr, ptr, ptr, %struct.work_struct, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.usbhsh_ep = type { ptr, ptr, ptr, %struct.list_head, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.76 }>
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { [4 x i8], [4 x i8] }

@usbhsh_driver = internal constant { %struct.hc_driver, [40 x i8] } { %struct.hc_driver { ptr @usbhsh_hcd_name, ptr null, i32 240, ptr null, i32 34, ptr null, ptr @usbhsh_host_start, ptr null, ptr null, ptr @usbhsh_host_stop, ptr null, ptr null, ptr @usbhsh_urb_enqueue, ptr @usbhsh_urb_dequeue, ptr null, ptr null, ptr @usbhsh_endpoint_disable, ptr null, ptr @usbhsh_hub_status_data, ptr @usbhsh_hub_control, ptr @usbhsh_bus_nop, ptr @usbhsh_bus_nop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@usbhsh_hcd_name = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"renesas_usbhs host\00", [45 x i8] zeroinitializer }, align 32
@usbhs_mod_host_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1529, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to create hcd\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usbhs_mod_host_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/renesas_usbhs/mod_host.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbhs_mod_host_probe._entry_ptr = internal global ptr @usbhs_mod_host_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@usbhs_mod_host_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1561, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"host probed\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@usbhs_mod_host_probe._entry_ptr.9 = internal global ptr @usbhs_mod_host_probe._entry.6, section ".printk_index", align 4
@usbhsh_urb_enqueue.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"renesas_usbhs\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbhsh_urb_enqueue\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s (%s)\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@usbhsh_urb_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.2, i32 964, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"host is not running\0A\00", [43 x i8] zeroinitializer }, align 32
@usbhsh_urb_enqueue._entry_ptr = internal global ptr @usbhsh_urb_enqueue._entry, section ".printk_index", align 4
@usbhsh_urb_enqueue._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 970, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"urb link failed\0A\00", [47 x i8] zeroinitializer }, align 32
@usbhsh_urb_enqueue._entry_ptr.18 = internal global ptr @usbhsh_urb_enqueue._entry.16, section ".printk_index", align 4
@usbhsh_urb_enqueue._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.2, i32 982, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device attach failed\0A\00", [42 x i8] zeroinitializer }, align 32
@usbhsh_urb_enqueue._entry_ptr.21 = internal global ptr @usbhsh_urb_enqueue._entry.19, section ".printk_index", align 4
@usbhsh_urb_enqueue._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.11, ptr @.str.2, i32 994, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"endpoint attach failed\0A\00", [40 x i8] zeroinitializer }, align 32
@usbhsh_urb_enqueue._entry_ptr.24 = internal global ptr @usbhsh_urb_enqueue._entry.22, section ".printk_index", align 4
@usbhsh_urb_enqueue._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.11, ptr @.str.2, i32 1005, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pipe attach failed\0A\00", [44 x i8] zeroinitializer }, align 32
@usbhsh_urb_enqueue._entry_ptr.27 = internal global ptr @usbhsh_urb_enqueue._entry.25, section ".printk_index", align 4
@usbhsh_urb_enqueue.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.28, i8 1, i8 0, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s error\0A\00", [22 x i8] zeroinitializer }, align 32
@usbhsh_device_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 504, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s fail: urb isn't pointing device0\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usbhsh_device_attach\00", [43 x i8] zeroinitializer }, align 32
@usbhsh_device_attach._entry_ptr = internal global ptr @usbhsh_device_attach._entry, section ".printk_index", align 4
@usbhsh_device_attach._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 535, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no free usbhsh_device\0A\00", [41 x i8] zeroinitializer }, align 32
@usbhsh_device_attach._entry_ptr.33 = internal global ptr @usbhsh_device_attach._entry.31, section ".printk_index", align 4
@usbhsh_device_attach._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 540, ptr @.str.36, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"udev have old endpoint\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usbhsh_device_attach._entry_ptr.37 = internal global ptr @usbhsh_device_attach._entry.34, section ".printk_index", align 4
@usbhsh_device_attach._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.30, ptr @.str.2, i32 545, ptr @.str.36, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"udev0 have old endpoint\0A\00", [39 x i8] zeroinitializer }, align 32
@usbhsh_device_attach._entry_ptr.40 = internal global ptr @usbhsh_device_attach._entry.38, section ".printk_index", align 4
@usbhsh_device_attach.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.30, ptr @.str.2, ptr @.str.41, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s connected to Hub [%d:%d](%p)\0A\00", [63 x i8] zeroinitializer }, align 32
@usbhsh_device_attach.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.30, ptr @.str.2, ptr @.str.42, i8 0, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s [%d](%p)\0A\00", [19 x i8] zeroinitializer }, align 32
@usbhsh_endpoint_attach.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usbhsh_endpoint_attach\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s [%d-%d]\0A\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usbhsh_pipe_attach.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbhsh_pipe_attach\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s [%d-%d(%s:%s)]\0A\00", [45 x i8] zeroinitializer }, align 32
@usbhsh_dcp_queue_push.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbhsh_dcp_queue_push\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@usbhsh_dcp_queue_push._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 892, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"data stage failed\0A\00", [45 x i8] zeroinitializer }, align 32
@usbhsh_dcp_queue_push._entry_ptr = internal global ptr @usbhsh_dcp_queue_push._entry, section ".printk_index", align 4
@usbhsh_dcp_queue_push._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.47, ptr @.str.2, i32 902, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"status stage failed\0A\00", [43 x i8] zeroinitializer }, align 32
@usbhsh_dcp_queue_push._entry_ptr.52 = internal global ptr @usbhsh_dcp_queue_push._entry.50, section ".printk_index", align 4
@usbhsh_setup_stage_packet_push.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"usbhsh_setup_stage_packet_push\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"create new address - %d\0A\00", [39 x i8] zeroinitializer }, align 32
@usbhsh_setup_stage_packet_push.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s done\0A\00", [23 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@usbhs_dcp_data_stage_in_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@usbhs_dcp_data_stage_out_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@usbhs_dcp_status_stage_in_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@usbhs_dcp_status_stage_out_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@usbhsh_queue_done.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.57, ptr @.str.2, ptr @.str.48, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usbhsh_queue_done\00", [46 x i8] zeroinitializer }, align 32
@usbhsh_queue_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.57, ptr @.str.2, i32 641, ptr @.str.36, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pkt doesn't have urb\0A\00", [42 x i8] zeroinitializer }, align 32
@usbhsh_queue_done._entry_ptr = internal global ptr @usbhsh_queue_done._entry, section ".printk_index", align 4
@usbhsh_pipe_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 333, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"no uep\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbhsh_pipe_detach\00", [45 x i8] zeroinitializer }, align 32
@usbhsh_pipe_detach._entry_ptr = internal global ptr @usbhsh_pipe_detach._entry, section ".printk_index", align 4
@usbhsh_pipe_detach._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 343, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uep doesn't have pipe\0A\00", [41 x i8] zeroinitializer }, align 32
@usbhsh_pipe_detach._entry_ptr.63 = internal global ptr @usbhsh_pipe_detach._entry.61, section ".printk_index", align 4
@usbhsh_pipe_detach.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.60, ptr @.str.2, ptr @.str.64, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s [%d-%d(%s)]\0A\00", [16 x i8] zeroinitializer }, align 32
@usbhsh_queue_push._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 672, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pipe iso is not supported now\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usbhsh_queue_push\00", [46 x i8] zeroinitializer }, align 32
@usbhsh_queue_push._entry_ptr = internal global ptr @usbhsh_queue_push._entry, section ".printk_index", align 4
@usbhsh_queue_push._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 679, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ureq alloc fail\0A\00", [47 x i8] zeroinitializer }, align 32
@usbhsh_queue_push._entry_ptr.69 = internal global ptr @usbhsh_queue_push._entry.67, section ".printk_index", align 4
@usbhs_fifo_dma_pop_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@usbhs_fifo_dma_push_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@usbhsh_queue_push.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.66, ptr @.str.2, ptr @.str.48, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usbhsh_endpoint_detach.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.70, ptr @.str.2, ptr @.str.44, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usbhsh_endpoint_detach\00", [41 x i8] zeroinitializer }, align 32
@usbhsh_device_detach.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.71, ptr @.str.2, ptr @.str.42, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usbhsh_device_detach\00", [43 x i8] zeroinitializer }, align 32
@usbhsh_device_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.71, ptr @.str.2, i32 598, ptr @.str.36, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"udev still have endpoint\0A\00", [38 x i8] zeroinitializer }, align 32
@usbhsh_device_detach._entry_ptr = internal global ptr @usbhsh_device_detach._entry, section ".printk_index", align 4
@usbhsh_hub_control.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbhsh_hub_control\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"typeReq = %x, ret = %d, port_stat = %x\0A\00", [56 x i8] zeroinitializer }, align 32
@__usbhsh_hub_hub_feature.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__usbhsh_hub_hub_feature\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s :: C_HUB_xx\0A\00", [16 x i8] zeroinitializer }, align 32
@__usbhsh_hub_port_feature.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 1, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__usbhsh_hub_port_feature\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s :: USB_PORT_FEAT_POWER\0A\00", [37 x i8] zeroinitializer }, align 32
@__usbhsh_hub_port_feature.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.77, ptr @.str.2, ptr @.str.79, i8 1, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s :: USB_PORT_FEAT_xxx\0A\00", [39 x i8] zeroinitializer }, align 32
@__usbhsh_hub_port_feature.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.77, ptr @.str.2, ptr @.str.80, i8 1, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s :: USB_PORT_FEAT_RESET (speed = %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@__usbhsh_hub_get_status.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 1, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__usbhsh_hub_get_status\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s :: GetHubStatus\0A\00", [44 x i8] zeroinitializer }, align 32
@__usbhsh_hub_get_status.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.81, ptr @.str.2, ptr @.str.83, i8 1, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s :: GetPortStatus\0A\00", [43 x i8] zeroinitializer }, align 32
@__usbhsh_hub_get_status.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.81, ptr @.str.2, ptr @.str.84, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s :: GetHubDescriptor\0A\00", [40 x i8] zeroinitializer }, align 32
@usbhsh_start.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 1, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbhsh_start\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"start host\0A\00", [20 x i8] zeroinitializer }, align 32
@usbhsh_irq_attch.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 1, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usbhsh_irq_attch\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device attached\0A\00", [47 x i8] zeroinitializer }, align 32
@usbhsh_irq_dtch.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 1, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usbhsh_irq_dtch\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device detached\0A\00", [47 x i8] zeroinitializer }, align 32
@usbhsh_irq_setup_ack.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 1, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usbhsh_irq_setup_ack\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"setup packet OK\0A\00", [47 x i8] zeroinitializer }, align 32
@usbhsh_irq_setup_err.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 1, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usbhsh_irq_setup_err\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setup packet Err\0A\00", [46 x i8] zeroinitializer }, align 32
@usbhsh_stop.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 1, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usbhsh_stop\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"quit host\0A\00", [21 x i8] zeroinitializer }, align 32
@switch.table.__usbhsh_hub_port_feature = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 512, i32 0, i32 1024], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 16, i64 8193, i64 8195, i64 8961, i64 8963, i64 40960, i64 40966, i64 41728]
@__sancov_gen_cov_switch_values.97 = internal global [11 x i64] [i64 9, i64 16, i64 1, i64 2, i64 4, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 40966, i64 41728]
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"usbhsh_driver\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1279, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"usbhsh_hcd_name\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 96, i32 19 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1529, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1550, i32 21 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1561, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 960, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 964, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 970, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 982, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 994, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1005, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1026, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 504, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 535, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 540, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 545, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 571, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 579, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 398, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 304, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 875, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 892, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 902, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 780, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 791, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 87, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 638, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 641, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 333, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 343, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 352, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 672, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 679, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 416, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 594, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 598, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1267, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1101, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1126, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1136, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1174, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1204, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1213, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1227, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1487, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1316, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1344, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1376, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1389, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.388 = private constant [40 x i8] c"../drivers/usb/renesas_usbhs/mod_host.c\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1513, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [39 x i8] c"switch.table.__usbhsh_hub_port_feature\00", align 1
@llvm.compiler.used = appending global [117 x ptr] [ptr @usbhs_mod_host_probe._entry, ptr @usbhs_mod_host_probe._entry.6, ptr @usbhs_mod_host_probe._entry_ptr, ptr @usbhs_mod_host_probe._entry_ptr.9, ptr @usbhsh_dcp_queue_push._entry, ptr @usbhsh_dcp_queue_push._entry.50, ptr @usbhsh_dcp_queue_push._entry_ptr, ptr @usbhsh_dcp_queue_push._entry_ptr.52, ptr @usbhsh_device_attach._entry, ptr @usbhsh_device_attach._entry.31, ptr @usbhsh_device_attach._entry.34, ptr @usbhsh_device_attach._entry.38, ptr @usbhsh_device_attach._entry_ptr, ptr @usbhsh_device_attach._entry_ptr.33, ptr @usbhsh_device_attach._entry_ptr.37, ptr @usbhsh_device_attach._entry_ptr.40, ptr @usbhsh_device_detach._entry, ptr @usbhsh_device_detach._entry_ptr, ptr @usbhsh_pipe_detach._entry, ptr @usbhsh_pipe_detach._entry.61, ptr @usbhsh_pipe_detach._entry_ptr, ptr @usbhsh_pipe_detach._entry_ptr.63, ptr @usbhsh_queue_done._entry, ptr @usbhsh_queue_done._entry_ptr, ptr @usbhsh_queue_push._entry, ptr @usbhsh_queue_push._entry.67, ptr @usbhsh_queue_push._entry_ptr, ptr @usbhsh_queue_push._entry_ptr.69, ptr @usbhsh_urb_enqueue._entry, ptr @usbhsh_urb_enqueue._entry.16, ptr @usbhsh_urb_enqueue._entry.19, ptr @usbhsh_urb_enqueue._entry.22, ptr @usbhsh_urb_enqueue._entry.25, ptr @usbhsh_urb_enqueue._entry_ptr, ptr @usbhsh_urb_enqueue._entry_ptr.18, ptr @usbhsh_urb_enqueue._entry_ptr.21, ptr @usbhsh_urb_enqueue._entry_ptr.24, ptr @usbhsh_urb_enqueue._entry_ptr.27, ptr @usbhsh_driver, ptr @usbhsh_hcd_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @init_completion.__key, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @switch.table.__usbhsh_hub_port_feature], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_driver to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_hcd_name to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_mod_host_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_mod_host_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_urb_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_urb_enqueue._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_urb_enqueue._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_urb_enqueue._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_urb_enqueue._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_device_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_device_attach._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_device_attach._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_device_attach._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_dcp_queue_push._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_dcp_queue_push._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_queue_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_pipe_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_pipe_detach._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_queue_push._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_queue_push._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsh_device_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__usbhsh_hub_port_feature to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbhs_mod_host_probe(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call ptr @usb_create_hcd(ptr noundef nonnull @usbhsh_driver, ptr noundef %dev1, ptr noundef nonnull @usbhsh_hcd_name) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %has_tt = getelementptr inbounds %struct.usb_hcd, ptr %call, i32 0, i32 14
  %2 = ptrtoint ptr %has_tt to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %has_tt, align 4
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %has_tt, align 4
  %hcd_priv = getelementptr inbounds %struct.usb_hcd, ptr %call, i32 0, i32 30
  tail call void @usbhs_mod_register(ptr noundef %priv, ptr noundef %hcd_priv, i32 noundef 0) #9
  %3 = ptrtoint ptr %hcd_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.5, ptr %hcd_priv, align 4
  %start = getelementptr inbounds %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @usbhsh_start, ptr %start, align 4
  %stop = getelementptr inbounds %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @usbhsh_stop, ptr %stop, align 4
  %port_stat = getelementptr inbounds %struct.usb_hcd, ptr %call, i32 1, i32 4
  %6 = ptrtoint ptr %port_stat to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %port_stat, align 4
  %udev5 = getelementptr inbounds %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %tobool7.not = icmp eq ptr %udev5, null
  br i1 %tobool7.not, label %if.end.do.end10_crit_edge, label %for.body

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

for.body:                                         ; preds = %if.end
  %7 = ptrtoint ptr %udev5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %udev5, align 4
  %ep_list_head = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %8 = ptrtoint ptr %ep_list_head to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %ep_list_head, ptr %ep_list_head, align 4
  %prev.i = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 4, i32 6
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ep_list_head, ptr %prev.i, align 4
  %add.ptr.1 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %tobool7.not.1 = icmp eq ptr %add.ptr.1, null
  br i1 %tobool7.not.1, label %for.body.do.end10_crit_edge, label %for.body.1

for.body.do.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

for.body.1:                                       ; preds = %for.body
  %10 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %add.ptr.1, align 4
  %ep_list_head.1 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %ep_list_head.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %ep_list_head.1, ptr %ep_list_head.1, align 4
  %prev.i.1 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ep_list_head.1, ptr %prev.i.1, align 4
  %add.ptr.2 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 3, i32 1
  %tobool7.not.2 = icmp eq ptr %add.ptr.2, null
  br i1 %tobool7.not.2, label %for.body.1.do.end10_crit_edge, label %for.body.2

for.body.1.do.end10_crit_edge:                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

for.body.2:                                       ; preds = %for.body.1
  %13 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %add.ptr.2, align 4
  %ep_list_head.2 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 4
  %14 = ptrtoint ptr %ep_list_head.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %ep_list_head.2, ptr %ep_list_head.2, align 4
  %prev.i.2 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 5
  %15 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ep_list_head.2, ptr %prev.i.2, align 4
  %add.ptr.3 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 1
  %tobool7.not.3 = icmp eq ptr %add.ptr.3, null
  br i1 %tobool7.not.3, label %for.body.2.do.end10_crit_edge, label %for.body.3

for.body.2.do.end10_crit_edge:                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

for.body.3:                                       ; preds = %for.body.2
  %16 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %add.ptr.3, align 4
  %ep_list_head.3 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %17 = ptrtoint ptr %ep_list_head.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %ep_list_head.3, ptr %ep_list_head.3, align 4
  %prev.i.3 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 2
  %18 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ep_list_head.3, ptr %prev.i.3, align 4
  %add.ptr.4 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 3
  %tobool7.not.4 = icmp eq ptr %add.ptr.4, null
  br i1 %tobool7.not.4, label %for.body.3.do.end10_crit_edge, label %for.body.4

for.body.3.do.end10_crit_edge:                    ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

for.body.4:                                       ; preds = %for.body.3
  %19 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %add.ptr.4, align 4
  %ep_list_head.4 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 6
  %20 = ptrtoint ptr %ep_list_head.4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %ep_list_head.4, ptr %ep_list_head.4, align 4
  %prev.i.4 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 7
  %21 = ptrtoint ptr %prev.i.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ep_list_head.4, ptr %prev.i.4, align 4
  %add.ptr.5 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 10
  %tobool7.not.5 = icmp eq ptr %add.ptr.5, null
  br i1 %tobool7.not.5, label %for.body.4.do.end10_crit_edge, label %for.body.5

for.body.4.do.end10_crit_edge:                    ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

for.body.5:                                       ; preds = %for.body.4
  %22 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %add.ptr.5, align 4
  %ep_list_head.5 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 10, i32 0, i32 1
  %23 = ptrtoint ptr %ep_list_head.5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %ep_list_head.5, ptr %ep_list_head.5, align 4
  %prev.i.5 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 10, i32 0, i32 2
  %24 = ptrtoint ptr %prev.i.5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ep_list_head.5, ptr %prev.i.5, align 4
  %add.ptr.6 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 10, i32 0, i32 3
  %tobool7.not.6 = icmp eq ptr %add.ptr.6, null
  br i1 %tobool7.not.6, label %for.body.5.do.end10_crit_edge, label %for.body.6

for.body.5.do.end10_crit_edge:                    ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

for.body.6:                                       ; preds = %for.body.5
  %25 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %add.ptr.6, align 4
  %ep_list_head.6 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 11
  %26 = ptrtoint ptr %ep_list_head.6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %ep_list_head.6, ptr %ep_list_head.6, align 4
  %prev.i.6 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 12
  %27 = ptrtoint ptr %prev.i.6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ep_list_head.6, ptr %prev.i.6, align 4
  %add.ptr.7 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 13
  %tobool7.not.7 = icmp eq ptr %add.ptr.7, null
  br i1 %tobool7.not.7, label %for.body.6.do.end10_crit_edge, label %for.body.7

for.body.6.do.end10_crit_edge:                    ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

for.body.7:                                       ; preds = %for.body.6
  %28 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %add.ptr.7, align 4
  %ep_list_head.7 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 14
  %29 = ptrtoint ptr %ep_list_head.7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %ep_list_head.7, ptr %ep_list_head.7, align 4
  %prev.i.7 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 15
  %30 = ptrtoint ptr %prev.i.7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ep_list_head.7, ptr %prev.i.7, align 4
  %add.ptr.8 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 16
  %tobool7.not.8 = icmp eq ptr %add.ptr.8, null
  br i1 %tobool7.not.8, label %for.body.7.do.end10_crit_edge, label %for.body.8

for.body.7.do.end10_crit_edge:                    ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

for.body.8:                                       ; preds = %for.body.7
  %31 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %add.ptr.8, align 4
  %ep_list_head.8 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 17
  %32 = ptrtoint ptr %ep_list_head.8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %ep_list_head.8, ptr %ep_list_head.8, align 4
  %prev.i.8 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 0, i32 18
  %33 = ptrtoint ptr %prev.i.8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ep_list_head.8, ptr %prev.i.8, align 4
  %add.ptr.9 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 1
  %tobool7.not.9 = icmp eq ptr %add.ptr.9, null
  br i1 %tobool7.not.9, label %for.body.8.do.end10_crit_edge, label %for.body.9

for.body.8.do.end10_crit_edge:                    ; preds = %for.body.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

for.body.9:                                       ; preds = %for.body.8
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %add.ptr.9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %add.ptr.9, align 4
  %ep_list_head.9 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 2
  %35 = ptrtoint ptr %ep_list_head.9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %ep_list_head.9, ptr %ep_list_head.9, align 4
  %prev.i.9 = getelementptr %struct.usb_hcd, ptr %call, i32 1, i32 3
  %36 = ptrtoint ptr %prev.i.9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ep_list_head.9, ptr %prev.i.9, align 4
  br label %do.end10

do.end10:                                         ; preds = %for.body.9, %for.body.8.do.end10_crit_edge, %for.body.7.do.end10_crit_edge, %for.body.6.do.end10_crit_edge, %for.body.5.do.end10_crit_edge, %for.body.4.do.end10_crit_edge, %for.body.3.do.end10_crit_edge, %for.body.2.do.end10_crit_edge, %for.body.1.do.end10_crit_edge, %for.body.do.end10_crit_edge, %if.end.do.end10_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.7) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %do.end
  %retval.0 = phi i32 [ 0, %do.end10 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_mod_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsh_start(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 0) #9
  %add.ptr3 = getelementptr i8, ptr %call, i32 -600
  %call4 = tail call ptr @usbhs_mod_get_current(ptr noundef %priv) #9
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call6 = tail call i32 @usb_add_hcd(ptr noundef %add.ptr3, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr3, align 8
  %call7 = tail call i32 @device_wakeup_enable(ptr noundef %3) #9
  tail call void @usbhs_fifo_init(ptr noundef %priv) #9
  tail call void @usbhs_pipe_init(ptr noundef %priv, ptr noundef nonnull @usbhsh_dma_map_ctrl) #9
  %call.i = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 0) #9
  %dparam.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %dparam.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dparam.i, align 4
  %pipe_size3.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %pipe_size3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe_size3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp32.i = icmp sgt i32 %7, 0
  br i1 %cmp32.i, label %for.body.lr.ph.i, label %if.end.usbhsh_pipe_init_for_host.exit_crit_edge

if.end.usbhsh_pipe_init_for_host.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_pipe_init_for_host.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %dcp.i = getelementptr inbounds %struct.usbhsh_hpriv, ptr %call.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %old_type.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.renesas_usbhs_driver_pipe_config, ptr %5, i32 %i.034.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 2
  %conv.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp12.i = icmp eq i8 %9, 0
  br i1 %cmp12.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call14.i = tail call ptr @usbhs_dcp_malloc(ptr noundef %priv) #9
  %10 = ptrtoint ptr %dcp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call14.i, ptr %dcp.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %old_type.033.i, i32 %conv.i)
  %cmp4.i = icmp eq i32 %old_type.033.i, %conv.i
  %conv5.i = zext i1 %cmp4.i to i32
  %call18.i = tail call ptr @usbhs_pipe_malloc(ptr noundef %priv, i32 noundef %conv.i, i32 noundef %conv5.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %pipe.0.i = phi ptr [ %call14.i, %if.then.i ], [ %call18.i, %if.else.i ]
  %mod_private.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe.0.i, i32 0, i32 7
  %11 = ptrtoint ptr %mod_private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mod_private.i, align 4
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %if.end.i.usbhsh_pipe_init_for_host.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.usbhsh_pipe_init_for_host.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_pipe_init_for_host.exit

usbhsh_pipe_init_for_host.exit:                   ; preds = %if.end.i.usbhsh_pipe_init_for_host.exit_crit_edge, %if.end.usbhsh_pipe_init_for_host.exit_crit_edge
  tail call void @usbhs_sys_host_ctrl(ptr noundef %priv, i32 noundef 1) #9
  %irq_attch = getelementptr inbounds %struct.usbhs_mod, ptr %call4, i32 0, i32 9
  %12 = ptrtoint ptr %irq_attch to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @usbhsh_irq_attch, ptr %irq_attch, align 4
  %irq_dtch = getelementptr inbounds %struct.usbhs_mod, ptr %call4, i32 0, i32 10
  %13 = ptrtoint ptr %irq_dtch to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @usbhsh_irq_dtch, ptr %irq_dtch, align 4
  %irq_sack = getelementptr inbounds %struct.usbhs_mod, ptr %call4, i32 0, i32 12
  %14 = ptrtoint ptr %irq_sack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @usbhsh_irq_setup_ack, ptr %irq_sack, align 4
  %irq_sign = getelementptr inbounds %struct.usbhs_mod, ptr %call4, i32 0, i32 11
  %15 = ptrtoint ptr %irq_sign to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @usbhsh_irq_setup_err, ptr %irq_sign, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %priv, ptr noundef %call4) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_start.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_start, %if.then12)) #9
          to label %cleanup [label %if.then12], !srcloc !204

if.then12:                                        ; preds = %usbhsh_pipe_init_for_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_start.__UNIQUE_ID_ddebug265, ptr noundef %dev5, ptr noundef nonnull @.str.86) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %usbhsh_pipe_init_for_host.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.then12 ], [ %call6, %usbhsh_pipe_init_for_host.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsh_stop(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 0) #9
  %add.ptr3 = getelementptr i8, ptr %call, i32 -600
  %call4 = tail call ptr @usbhs_mod_get_current(ptr noundef %priv) #9
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq_attch = getelementptr inbounds %struct.usbhs_mod, ptr %call4, i32 0, i32 9
  %2 = call ptr @memset(ptr %irq_attch, i32 0, i32 16)
  tail call void @usbhs_irq_callback_update(ptr noundef %priv, ptr noundef %call4) #9
  tail call void @usb_remove_hcd(ptr noundef %add.ptr3) #9
  tail call void @usbhs_sys_host_ctrl(ptr noundef %priv, i32 noundef 0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_stop.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_stop, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_stop.__UNIQUE_ID_ddebug266, ptr noundef %dev5, ptr noundef nonnull @.str.96) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbhs_mod_host_remove(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 0) #9
  %add.ptr3 = getelementptr i8, ptr %call, i32 -600
  tail call void @usb_put_hcd(ptr noundef %add.ptr3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_mod_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbhsh_host_start(ptr nocapture noundef readnone %hcd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usbhsh_host_stop(ptr nocapture noundef %hcd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsh_urb_enqueue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %priv1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %ep3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %4 = ptrtoint ptr %ep3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep3, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_urb_enqueue.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_urb_enqueue, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool6.not, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_urb_enqueue.__UNIQUE_ID_ddebug251, ptr noundef %dev2, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq_attch.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 1
  %8 = ptrtoint ptr %irq_attch.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_attch.i, align 4
  %cmp.i.not = icmp eq ptr %9, null
  br i1 %cmp.i.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15) #12
  br label %do.body58

if.end13:                                         ; preds = %do.end
  %call14 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.17) #12
  br label %do.body58

if.end20:                                         ; preds = %if.end13
  %dev.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end20.if.then23_crit_edge, label %if.end.i

if.end20.if.then23_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.end.i:                                         ; preds = %if.end20
  %14 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pipe, align 4
  %16 = and i32 %15, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i117 = icmp eq i32 %16, 0
  %udev3.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %tobool22.not = icmp eq ptr %udev3.i, null
  %or.cond = select i1 %cmp.i117, i1 %tobool22.not, i1 false
  br i1 %or.cond, label %if.end.i.if.then23_crit_edge, label %if.end.i.if.end31_crit_edge

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end.i.if.then23_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then23:                                        ; preds = %if.end.i.if.then23_crit_edge, %if.end20.if.then23_crit_edge
  %call24 = tail call fastcc ptr @usbhsh_device_attach(ptr noundef %hcd_priv, ptr noundef %urb)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then26, label %if.then23.if.end31_crit_edge

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.20) #12
  br label %do.body58

if.end31:                                         ; preds = %if.then23.if.end31_crit_edge, %if.end.i.if.end31_crit_edge
  %new_udev.0 = phi ptr [ %call24, %if.then23.if.end31_crit_edge ], [ null, %if.end.i.if.end31_crit_edge ]
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hcpriv, align 4
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %if.then33, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then33:                                        ; preds = %if.end31
  %call34 = tail call fastcc i32 @usbhsh_endpoint_attach(ptr noundef %hcd_priv, ptr noundef %urb, i32 noundef %mem_flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %do.end38, label %if.then33.if.end40_crit_edge

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

do.end38:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.23) #12
  br label %usbhsh_urb_enqueue_error_free_device

if.end40:                                         ; preds = %if.then33.if.end40_crit_edge, %if.end31.if.end40_crit_edge
  %call41 = tail call fastcc i32 @usbhsh_pipe_attach(ptr noundef %hcd_priv, ptr noundef %urb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end46, label %if.end47

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.26) #12
  tail call fastcc void @usbhsh_endpoint_detach(ptr noundef %hcd_priv, ptr noundef %5)
  br label %usbhsh_urb_enqueue_error_free_device

if.end47:                                         ; preds = %if.end40
  %19 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pipe, align 4
  %shr.mask = and i32 %20, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask)
  %cmp50 = icmp eq i32 %shr.mask, -2147483648
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = tail call fastcc i32 @usbhsh_dcp_queue_push(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags)
  br label %cleanup

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = tail call fastcc i32 @usbhsh_queue_push(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags)
  br label %cleanup

usbhsh_urb_enqueue_error_free_device:             ; preds = %do.end46, %do.end38
  %ret.1 = phi i32 [ %call41, %do.end46 ], [ %call34, %do.end38 ]
  %tobool55.not = icmp eq ptr %new_udev.0, null
  br i1 %tobool55.not, label %usbhsh_urb_enqueue_error_free_device.do.body58_crit_edge, label %if.then56

usbhsh_urb_enqueue_error_free_device.do.body58_crit_edge: ; preds = %usbhsh_urb_enqueue_error_free_device
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body58

if.then56:                                        ; preds = %usbhsh_urb_enqueue_error_free_device
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @usbhsh_device_detach(ptr noundef %hcd_priv, ptr noundef nonnull %new_udev.0)
  br label %do.body58

do.body58:                                        ; preds = %if.then56, %usbhsh_urb_enqueue_error_free_device.do.body58_crit_edge, %if.then26, %do.end19, %if.then9
  %ret.2 = phi i32 [ %call14, %do.end19 ], [ %ret.1, %if.then56 ], [ %ret.1, %usbhsh_urb_enqueue_error_free_device.do.body58_crit_edge ], [ -5, %if.then26 ], [ -5, %if.then9 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_urb_enqueue.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_urb_enqueue, %if.then70)) #9
          to label %cleanup [label %if.then70], !srcloc !204

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_urb_enqueue.__UNIQUE_ID_ddebug252, ptr noundef %dev2, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %do.body58, %if.else, %if.then51
  %retval.0 = phi i32 [ %call52, %if.then51 ], [ %call53, %if.else ], [ %ret.2, %if.then70 ], [ %ret.2, %do.body58 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsh_urb_dequeue(ptr nocapture noundef readonly %hcd, ptr nocapture noundef readonly %urb, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %pkt2 = getelementptr inbounds %struct.usbhsh_request, ptr %1, i32 0, i32 1
  %pipe = getelementptr inbounds %struct.usbhsh_request, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe, align 4
  %call = tail call ptr @usbhs_pkt_pop(ptr noundef %5, ptr noundef %pkt2) #9
  tail call void @usbhsh_queue_done(ptr noundef %3, ptr noundef %pkt2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbhsh_endpoint_disable(ptr noundef %hcd, ptr nocapture noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %udev1 = getelementptr inbounds %struct.usbhsh_ep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev1, align 4
  %hcd_priv = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  tail call fastcc void @usbhsh_endpoint_detach(ptr noundef %hcd_priv, ptr noundef %ep)
  %ep_list_head.i = getelementptr inbounds %struct.usbhsh_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ep_list_head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ep_list_head.i, align 4
  %cmp.i.i.not = icmp eq ptr %5, %ep_list_head.i
  br i1 %cmp.i.i.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @usbhsh_device_detach(ptr noundef %hcd_priv, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbhsh_hub_status_data(ptr nocapture noundef readonly %hcd, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_stat = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4
  %0 = ptrtoint ptr %port_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %1)
  %tobool.not = icmp ult i32 %1, 65536
  %. = select i1 %tobool.not, i8 0, i8 2
  %2 = xor i1 %tobool.not, true
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %., ptr %buf, align 1
  %lnot.ext = zext i1 %2 to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsh_hub_control(ptr nocapture noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr nocapture noundef writeonly %buf, i16 noundef zeroext %wLength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %priv1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %conv = zext i16 %typeReq to i32
  %4 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %typeReq, label %entry.do.body_crit_edge [
    i16 8193, label %entry.sw.bb_crit_edge
    i16 8195, label %entry.sw.bb_crit_edge30
    i16 8963, label %entry.sw.bb3_crit_edge
    i16 8961, label %entry.sw.bb3_crit_edge31
    i16 -24576, label %entry.sw.bb5_crit_edge
    i16 -23808, label %entry.sw.bb5_crit_edge32
    i16 -24570, label %entry.sw.bb5_crit_edge33
  ]

entry.sw.bb5_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

entry.sw.bb5_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

entry.sw.bb3_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge30
  %5 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv1, align 4
  %pdev.i = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %switch.i = icmp ult i16 %wValue, 2
  br i1 %switch.i, label %do.body.i, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__usbhsh_hub_hub_feature.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_hub_control, %if.then.i)) #9
          to label %do.body [label %if.then.i], !srcloc !204

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__usbhsh_hub_hub_feature.__UNIQUE_ID_ddebug253, ptr noundef %dev2.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75) #9
  br label %do.body

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge31
  %call4 = tail call fastcc i32 @__usbhsh_hub_port_feature(ptr noundef %hcd_priv, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, i16 noundef zeroext %wLength)
  br label %do.body

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge32, %entry.sw.bb5_crit_edge33
  %call6 = tail call fastcc i32 @__usbhsh_hub_get_status(ptr noundef %hcd_priv, i16 noundef zeroext %typeReq, i16 noundef zeroext %wIndex, ptr noundef %buf)
  br label %do.body

do.body:                                          ; preds = %sw.bb5, %sw.bb3, %if.then.i, %do.body.i, %sw.bb.do.body_crit_edge, %entry.do.body_crit_edge
  %ret.0 = phi i32 [ -32, %entry.do.body_crit_edge ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ 0, %if.then.i ], [ -32, %sw.bb.do.body_crit_edge ], [ 0, %do.body.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_hub_control.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_hub_control, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %port_stat = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4
  %9 = ptrtoint ptr %port_stat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_stat, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_hub_control.__UNIQUE_ID_ddebug260, ptr noundef %dev2, ptr noundef nonnull @.str.74, i32 noundef %conv, i32 noundef %ret.0, i32 noundef %10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbhsh_bus_nop(ptr nocapture noundef readnone %hcd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @usbhsh_device_attach(ptr noundef %hpriv, ptr nocapture noundef readonly %urb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udev1 = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2
  %add.ptr2 = getelementptr i8, ptr %hpriv, i32 -600
  %0 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr2, align 8
  %dev3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %priv4 = getelementptr inbounds %struct.usbhs_mod, ptr %hpriv, i32 0, i32 13
  %4 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv4, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe, align 4
  %8 = and i32 %7, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %do.body6, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #12
  br label %cleanup

do.body6:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 7
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %add.ptr18 = getelementptr %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2, i32 1
  %tobool.not = icmp eq ptr %add.ptr18, null
  br i1 %tobool.not, label %do.body6.do.end33.critedge_crit_edge, label %for.body

do.body6.do.end33.critedge_crit_edge:             ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.critedge

for.body:                                         ; preds = %do.body6
  %9 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr18, align 4
  %tobool20.not = icmp eq ptr %10, null
  br i1 %tobool20.not, label %for.body.if.then24_crit_edge, label %for.inc

for.body.if.then24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

for.inc:                                          ; preds = %for.body
  %add.ptr18.1 = getelementptr %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2, i32 2
  %tobool.not.1 = icmp eq ptr %add.ptr18.1, null
  br i1 %tobool.not.1, label %for.inc.do.end33.critedge_crit_edge, label %for.body.1

for.inc.do.end33.critedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.critedge

for.body.1:                                       ; preds = %for.inc
  %11 = ptrtoint ptr %add.ptr18.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr18.1, align 4
  %tobool20.not.1 = icmp eq ptr %12, null
  br i1 %tobool20.not.1, label %for.body.1.if.then24_crit_edge, label %for.inc.1

for.body.1.if.then24_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

for.inc.1:                                        ; preds = %for.body.1
  %add.ptr18.2 = getelementptr %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2, i32 3
  %tobool.not.2 = icmp eq ptr %add.ptr18.2, null
  br i1 %tobool.not.2, label %for.inc.1.do.end33.critedge_crit_edge, label %for.body.2

for.inc.1.do.end33.critedge_crit_edge:            ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.critedge

for.body.2:                                       ; preds = %for.inc.1
  %13 = ptrtoint ptr %add.ptr18.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr18.2, align 4
  %tobool20.not.2 = icmp eq ptr %14, null
  br i1 %tobool20.not.2, label %for.body.2.if.then24_crit_edge, label %for.inc.2

for.body.2.if.then24_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

for.inc.2:                                        ; preds = %for.body.2
  %add.ptr18.3 = getelementptr %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2, i32 4
  %tobool.not.3 = icmp eq ptr %add.ptr18.3, null
  br i1 %tobool.not.3, label %for.inc.2.do.end33.critedge_crit_edge, label %for.body.3

for.inc.2.do.end33.critedge_crit_edge:            ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.critedge

for.body.3:                                       ; preds = %for.inc.2
  %15 = ptrtoint ptr %add.ptr18.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr18.3, align 4
  %tobool20.not.3 = icmp eq ptr %16, null
  br i1 %tobool20.not.3, label %for.body.3.if.then24_crit_edge, label %for.inc.3

for.body.3.if.then24_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

for.inc.3:                                        ; preds = %for.body.3
  %add.ptr18.4 = getelementptr %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2, i32 5
  %tobool.not.4 = icmp eq ptr %add.ptr18.4, null
  br i1 %tobool.not.4, label %for.inc.3.do.end33.critedge_crit_edge, label %for.body.4

for.inc.3.do.end33.critedge_crit_edge:            ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.critedge

for.body.4:                                       ; preds = %for.inc.3
  %17 = ptrtoint ptr %add.ptr18.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr18.4, align 4
  %tobool20.not.4 = icmp eq ptr %18, null
  br i1 %tobool20.not.4, label %for.body.4.if.then24_crit_edge, label %for.inc.4

for.body.4.if.then24_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

for.inc.4:                                        ; preds = %for.body.4
  %add.ptr18.5 = getelementptr %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2, i32 6
  %tobool.not.5 = icmp eq ptr %add.ptr18.5, null
  br i1 %tobool.not.5, label %for.inc.4.do.end33.critedge_crit_edge, label %for.body.5

for.inc.4.do.end33.critedge_crit_edge:            ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.critedge

for.body.5:                                       ; preds = %for.inc.4
  %19 = ptrtoint ptr %add.ptr18.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr18.5, align 4
  %tobool20.not.5 = icmp eq ptr %20, null
  br i1 %tobool20.not.5, label %for.body.5.if.then24_crit_edge, label %for.inc.5

for.body.5.if.then24_crit_edge:                   ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

for.inc.5:                                        ; preds = %for.body.5
  %add.ptr18.6 = getelementptr %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2, i32 7
  %tobool.not.6 = icmp eq ptr %add.ptr18.6, null
  br i1 %tobool.not.6, label %for.inc.5.do.end33.critedge_crit_edge, label %for.body.6

for.inc.5.do.end33.critedge_crit_edge:            ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.critedge

for.body.6:                                       ; preds = %for.inc.5
  %21 = ptrtoint ptr %add.ptr18.6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr18.6, align 4
  %tobool20.not.6 = icmp eq ptr %22, null
  br i1 %tobool20.not.6, label %for.body.6.if.then24_crit_edge, label %for.inc.6

for.body.6.if.then24_crit_edge:                   ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

for.inc.6:                                        ; preds = %for.body.6
  %add.ptr18.7 = getelementptr %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2, i32 8
  %tobool.not.7 = icmp eq ptr %add.ptr18.7, null
  br i1 %tobool.not.7, label %for.inc.6.do.end33.critedge_crit_edge, label %for.body.7

for.inc.6.do.end33.critedge_crit_edge:            ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.critedge

for.body.7:                                       ; preds = %for.inc.6
  %23 = ptrtoint ptr %add.ptr18.7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr18.7, align 4
  %tobool20.not.7 = icmp eq ptr %24, null
  br i1 %tobool20.not.7, label %for.body.7.if.then24_crit_edge, label %for.inc.7

for.body.7.if.then24_crit_edge:                   ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

for.inc.7:                                        ; preds = %for.body.7
  %add.ptr18.8 = getelementptr %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2, i32 9
  %tobool.not.8 = icmp eq ptr %add.ptr18.8, null
  br i1 %tobool.not.8, label %for.inc.7.do.end33.critedge_crit_edge, label %for.body.8

for.inc.7.do.end33.critedge_crit_edge:            ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.critedge

for.body.8:                                       ; preds = %for.inc.7
  %25 = ptrtoint ptr %add.ptr18.8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr18.8, align 4
  %tobool20.not.8 = icmp eq ptr %26, null
  br i1 %tobool20.not.8, label %for.body.8.if.then24_crit_edge, label %for.body.8.do.end33.critedge_crit_edge

for.body.8.do.end33.critedge_crit_edge:           ; preds = %for.body.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.critedge

for.body.8.if.then24_crit_edge:                   ; preds = %for.body.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then24:                                        ; preds = %for.body.8.if.then24_crit_edge, %for.body.7.if.then24_crit_edge, %for.body.6.if.then24_crit_edge, %for.body.5.if.then24_crit_edge, %for.body.4.if.then24_crit_edge, %for.body.3.if.then24_crit_edge, %for.body.2.if.then24_crit_edge, %for.body.1.if.then24_crit_edge, %for.body.if.then24_crit_edge
  %i.0182.lcssa184 = phi i32 [ 1, %for.body.if.then24_crit_edge ], [ 2, %for.body.1.if.then24_crit_edge ], [ 3, %for.body.2.if.then24_crit_edge ], [ 4, %for.body.3.if.then24_crit_edge ], [ 5, %for.body.4.if.then24_crit_edge ], [ 6, %for.body.5.if.then24_crit_edge ], [ 7, %for.body.6.if.then24_crit_edge ], [ 8, %for.body.7.if.then24_crit_edge ], [ 9, %for.body.8.if.then24_crit_edge ]
  %add.ptr18.lcssa183 = phi ptr [ %add.ptr18, %for.body.if.then24_crit_edge ], [ %add.ptr18.1, %for.body.1.if.then24_crit_edge ], [ %add.ptr18.2, %for.body.2.if.then24_crit_edge ], [ %add.ptr18.3, %for.body.3.if.then24_crit_edge ], [ %add.ptr18.4, %for.body.4.if.then24_crit_edge ], [ %add.ptr18.5, %for.body.5.if.then24_crit_edge ], [ %add.ptr18.6, %for.body.6.if.then24_crit_edge ], [ %add.ptr18.7, %for.body.7.if.then24_crit_edge ], [ %add.ptr18.8, %for.body.8.if.then24_crit_edge ]
  %driver_data.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15, i32 8
  %27 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr18.lcssa183, ptr %driver_data.i, align 4
  %28 = ptrtoint ptr %add.ptr18.lcssa183 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %3, ptr %add.ptr18.lcssa183, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  %ep_list_head.i = getelementptr %struct.usbhsh_device, ptr %udev1, i32 %i.0182.lcssa184, i32 1
  %29 = ptrtoint ptr %ep_list_head.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %ep_list_head.i, align 4
  %cmp.i.i.not = icmp eq ptr %30, %ep_list_head.i
  br i1 %cmp.i.i.not, label %if.then24.if.end41_crit_edge, label %do.end40

if.then24.if.end41_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.end33.critedge:                                ; preds = %for.body.8.do.end33.critedge_crit_edge, %for.inc.7.do.end33.critedge_crit_edge, %for.inc.6.do.end33.critedge_crit_edge, %for.inc.5.do.end33.critedge_crit_edge, %for.inc.4.do.end33.critedge_crit_edge, %for.inc.3.do.end33.critedge_crit_edge, %for.inc.2.do.end33.critedge_crit_edge, %for.inc.1.do.end33.critedge_crit_edge, %for.inc.do.end33.critedge_crit_edge, %do.body6.do.end33.critedge_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32) #12
  br label %cleanup

do.end40:                                         ; preds = %if.then24
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.35) #12
  %31 = ptrtoint ptr %ep_list_head.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ep_list_head.i, align 4
  %cmp.not18.i = icmp eq ptr %32, %ep_list_head.i
  br i1 %cmp.not18.i, label %do.end40.if.end41_crit_edge, label %do.end40.for.body.i_crit_edge

do.end40.for.body.i_crit_edge:                    ; preds = %do.end40
  br label %for.body.i

do.end40.if.end41_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end40.for.body.i_crit_edge
  %.pn.in19.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %32, %do.end40.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i = load ptr, ptr %.pn.in19.i, align 4
  %ep.i = getelementptr i8, ptr %.pn.in19.i, i32 -4
  %34 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ep.i, align 4
  tail call fastcc void @usbhsh_endpoint_detach(ptr noundef %hpriv, ptr noundef %35) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %ep_list_head.i
  br i1 %cmp.not.i, label %for.body.i.if.end41_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end41_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end41:                                         ; preds = %for.body.i.if.end41_crit_edge, %do.end40.if.end41_crit_edge, %if.then24.if.end41_crit_edge
  %ep_list_head.i164 = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %ep_list_head.i164 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %ep_list_head.i164, align 4
  %cmp.i.i165.not = icmp eq ptr %37, %ep_list_head.i164
  br i1 %cmp.i.i165.not, label %if.end41.if.end48_crit_edge, label %do.end47

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.end47:                                         ; preds = %if.end41
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.39) #12
  %38 = ptrtoint ptr %ep_list_head.i164 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ep_list_head.i164, align 4
  %cmp.not18.i168 = icmp eq ptr %39, %ep_list_head.i164
  br i1 %cmp.not18.i168, label %do.end47.if.end48_crit_edge, label %do.end47.for.body.i173_crit_edge

do.end47.for.body.i173_crit_edge:                 ; preds = %do.end47
  br label %for.body.i173

do.end47.if.end48_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

for.body.i173:                                    ; preds = %for.body.i173.for.body.i173_crit_edge, %do.end47.for.body.i173_crit_edge
  %.pn.in19.i169 = phi ptr [ %.pn.i170, %for.body.i173.for.body.i173_crit_edge ], [ %39, %do.end47.for.body.i173_crit_edge ]
  %40 = ptrtoint ptr %.pn.in19.i169 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i170 = load ptr, ptr %.pn.in19.i169, align 4
  %ep.i171 = getelementptr i8, ptr %.pn.in19.i169, i32 -4
  %41 = ptrtoint ptr %ep.i171 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ep.i171, align 4
  tail call fastcc void @usbhsh_endpoint_detach(ptr noundef %hpriv, ptr noundef %42) #9
  %cmp.not.i172 = icmp eq ptr %.pn.i170, %ep_list_head.i164
  br i1 %cmp.not.i172, label %for.body.i173.if.end48_crit_edge, label %for.body.i173.for.body.i173_crit_edge

for.body.i173.for.body.i173_crit_edge:            ; preds = %for.body.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i173

for.body.i173.if.end48_crit_edge:                 ; preds = %for.body.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end48:                                         ; preds = %for.body.i173.if.end48_crit_edge, %do.end47.if.end48_crit_edge, %if.end41.if.end48_crit_edge
  %43 = ptrtoint ptr %ep_list_head.i164 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %ep_list_head.i164, ptr %ep_list_head.i164, align 4
  %prev.i = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %ep_list_head.i164, ptr %prev.i, align 4
  %45 = ptrtoint ptr %ep_list_head.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %ep_list_head.i, ptr %ep_list_head.i, align 4
  %prev.i175 = getelementptr %struct.usbhsh_device, ptr %udev1, i32 %i.0182.lcssa184, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i175 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ep_list_head.i, ptr %prev.i175, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 4
  %47 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %speed, align 4
  %conv50 = trunc i32 %48 to i16
  %call51 = tail call i32 @usbhs_set_device_config(ptr noundef %5, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext %conv50) #9
  %49 = ptrtoint ptr %add.ptr18.lcssa183 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr18.lcssa183, align 4
  %root_hub.i = getelementptr i8, ptr %hpriv, i32 -464
  %51 = ptrtoint ptr %root_hub.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %root_hub.i, align 8
  %parent.i = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 11
  %53 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent.i, align 4
  %cmp.i.not = icmp eq ptr %52, %54
  br i1 %cmp.i.not, label %if.end48.if.end76_crit_edge, label %if.then54

if.end48.if.end76_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i176 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 15, i32 8
  %55 = ptrtoint ptr %driver_data.i176 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i176, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %udev1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %conv61 = trunc i32 %sub.ptr.div to i16
  %portnum = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 25
  %57 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %portnum, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_device_attach.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_device_attach, %if.then70)) #9
          to label %if.end76 [label %if.then70], !srcloc !204

if.then70:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %conv71 = and i32 %sub.ptr.div, 65535
  %conv72 = zext i8 %58 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_device_attach.__UNIQUE_ID_ddebug243, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.30, i32 noundef %conv71, i32 noundef %conv72, ptr noundef %56) #9
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %if.then54, %if.end48.if.end76_crit_edge
  %upphub.0 = phi i16 [ 0, %if.end48.if.end76_crit_edge ], [ %conv61, %if.then70 ], [ %conv61, %if.then54 ]
  %hubport.0.shrunk = phi i8 [ 0, %if.end48.if.end76_crit_edge ], [ %58, %if.then70 ], [ %58, %if.then54 ]
  %hubport.0 = zext i8 %hubport.0.shrunk to i16
  %59 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %speed, align 4
  %conv84 = trunc i32 %60 to i16
  %call85 = tail call i32 @usbhs_set_device_config(ptr noundef %5, i32 noundef %i.0182.lcssa184, i16 noundef zeroext %upphub.0, i16 noundef zeroext %hubport.0, i16 noundef zeroext %conv84) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_device_attach.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_device_attach, %if.then98)) #9
          to label %cleanup [label %if.then98], !srcloc !204

if.then98:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_device_attach.__UNIQUE_ID_ddebug244, ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.30, i32 noundef %i.0182.lcssa184, ptr noundef nonnull %add.ptr18.lcssa183) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %if.end76, %do.end33.critedge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end33.critedge ], [ %add.ptr18.lcssa183, %if.then98 ], [ %add.ptr18.lcssa183, %if.end76 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbhsh_endpoint_attach(ptr noundef %hpriv, ptr nocapture noundef readonly %urb, i32 noundef %mem_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_mod, ptr %hpriv, i32 0, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dev.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.usbhsh_device_get.exit_crit_edge, label %if.end.i

entry.usbhsh_device_get.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_device_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pipe.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %6 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe.i, align 4
  %8 = and i32 %7, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  %udev3.i = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2
  %spec.select.i = select i1 %cmp.i, ptr %udev3.i, ptr %5
  br label %usbhsh_device_get.exit

usbhsh_device_get.exit:                           ; preds = %if.end.i, %entry.usbhsh_device_get.exit_crit_edge
  %retval.0.i48 = phi ptr [ null, %entry.usbhsh_device_get.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %ep2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %9 = ptrtoint ptr %ep2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep2, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %or.i = or i32 %mem_flags, 256
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %usbhsh_device_get.exit.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !205

usbhsh_device_get.exit.kzalloc.exit_crit_edge:    ; preds = %usbhsh_device_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %usbhsh_device_get.exit
  %and2.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %usbhsh_device_get.exit.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %usbhsh_device_get.exit.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %13 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef %or.i, i32 noundef 24) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %do.body6

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body6:                                         ; preds = %kzalloc.exit
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 7
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %counter = getelementptr inbounds %struct.usbhsh_ep, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %counter, align 4
  %ep_list = getelementptr inbounds %struct.usbhsh_ep, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.usbhsh_ep, ptr %call7.i.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ep_list, ptr %prev.i, align 8
  %ep_list_head = getelementptr inbounds %struct.usbhsh_device, ptr %retval.0.i48, i32 0, i32 1
  %prev.i49 = getelementptr inbounds %struct.usbhsh_device, ptr %retval.0.i48, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i49, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list, ptr noundef %19, ptr noundef %ep_list_head) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body6.list_add_tail.exit_crit_edge

do.body6.list_add_tail.exit_crit_edge:            ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ep_list, ptr %prev.i49, align 4
  %21 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ep_list_head, ptr %ep_list, align 4
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev.i, align 8
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %ep_list, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body6.list_add_tail.exit_crit_edge
  %udev12 = getelementptr inbounds %struct.usbhsh_ep, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %udev12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i48, ptr %udev12, align 4
  %ep13 = getelementptr inbounds %struct.usbhsh_ep, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %ep13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %10, ptr %ep13, align 8
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %10, i32 0, i32 5
  %26 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %hcpriv, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_endpoint_attach.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_endpoint_attach, %if.then21)) #9
          to label %cleanup [label %if.then21], !srcloc !204

if.then21:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %udev22 = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.0.i48 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %udev22 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 2
  %27 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bEndpointAddress.i, align 1
  %29 = and i8 %28, 15
  %and.i = zext i8 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_endpoint_attach.__UNIQUE_ID_ddebug241, ptr noundef %dev3, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %sub.ptr.div, i32 noundef %and.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %list_add_tail.exit, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %kzalloc.exit.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbhsh_pipe_attach(ptr noundef %hpriv, ptr nocapture noundef readonly %urb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_mod, ptr %hpriv, i32 0, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %ep = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcpriv, align 4
  %dev.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.usbhsh_device_get.exit_crit_edge, label %if.end.i

entry.usbhsh_device_get.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_device_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pipe.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %10 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipe.i, align 4
  %12 = and i32 %11, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  %udev3.i = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2
  %spec.select.i = select i1 %cmp.i, ptr %udev3.i, ptr %9
  %phi.cast = ptrtoint ptr %spec.select.i to i32
  br label %usbhsh_device_get.exit

usbhsh_device_get.exit:                           ; preds = %if.end.i, %entry.usbhsh_device_get.exit_crit_edge
  %retval.0.i105 = phi i32 [ 0, %entry.usbhsh_device_get.exit_crit_edge ], [ %phi.cast, %if.end.i ]
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %pipe5 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %15 = ptrtoint ptr %pipe5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pipe5, align 4
  %and = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.lobit = lshr exact i32 %and, 7
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bmAttributes.i, align 1
  %19 = and i8 %18, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i106.not = icmp eq i8 %19, 0
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 7
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %for.cond.preheader, label %usbhsh_device_get.exit.if.then73_crit_edge

usbhsh_device_get.exit.if.then73_crit_edge:       ; preds = %usbhsh_device_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

for.cond.preheader:                               ; preds = %usbhsh_device_get.exit
  %size = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp15121 = icmp sgt i32 %23, 0
  br i1 %cmp15121, label %land.rhs.lr.ph, label %for.cond.preheader.if.end75_crit_edge

for.cond.preheader.if.end75_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0122 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %24 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pipe_info, align 4
  %add.ptr = getelementptr %struct.usbhs_pipe, ptr %25, i32 %i.0122
  %tobool19.not = icmp eq ptr %add.ptr, null
  br i1 %tobool19.not, label %land.rhs.if.end75_crit_edge, label %for.body

land.rhs.if.end75_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

for.body:                                         ; preds = %land.rhs
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  %28 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bmAttributes.i, align 1
  %30 = and i8 %29, 3
  %and.i = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %and.i)
  %cmp21 = icmp eq i32 %27, %and.i
  br i1 %cmp21, label %if.end24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end24:                                         ; preds = %for.body
  br i1 %cmp.i106.not, label %if.end24.if.end37_crit_edge, label %if.then26

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then26:                                        ; preds = %if.end24
  %call27 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef nonnull %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot.ext32 = zext i1 %tobool28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %lnot.ext32)
  %cmp33.not = icmp eq i32 %and.lobit, %lnot.ext32
  br i1 %cmp33.not, label %if.then26.if.end37_crit_edge, label %if.then26.for.inc_crit_edge

if.then26.for.inc_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then26.if.end37_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end37:                                         ; preds = %if.then26.if.end37_crit_edge, %if.end24.if.end37_crit_edge
  %mod_private = getelementptr %struct.usbhs_pipe, ptr %25, i32 %i.0122, i32 7
  %31 = ptrtoint ptr %mod_private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mod_private, align 4
  %tobool38.not = icmp eq ptr %32, null
  br i1 %tobool38.not, label %if.end40, label %if.end37.for.inc_crit_edge

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end40:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr, ptr %5, align 4
  %34 = ptrtoint ptr %mod_private to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %5, ptr %mod_private, align 4
  %udev43 = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2
  %sub.ptr.rhs.cast = ptrtoint ptr %udev43 to i32
  %sub.ptr.sub = sub i32 %retval.0.i105, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %conv44 = trunc i32 %sub.ptr.div to i16
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 2
  %35 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bEndpointAddress.i, align 1
  %37 = and i8 %36, 15
  %conv46 = zext i8 %37 to i16
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 4
  %38 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %wMaxPacketSize.i, align 1
  %40 = and i16 %39, -249
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #9
  tail call void @usbhs_pipe_config_update(ptr noundef nonnull %add.ptr, i16 noundef zeroext %conv44, i16 noundef zeroext %conv46, i16 noundef zeroext %41) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_pipe_attach.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_pipe_attach, %if.then58)) #9
          to label %if.then73 [label %if.then58], !srcloc !204

if.then58:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bEndpointAddress.i, align 1
  %44 = and i8 %43, 15
  %and.i111 = zext i8 %44 to i32
  %call66 = tail call ptr @usbhs_pipe_name(ptr noundef nonnull %add.ptr) #9
  %cond = select i1 %tobool.not, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_pipe_attach.__UNIQUE_ID_ddebug239, ptr noundef %dev4, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %sub.ptr.div, i32 noundef %and.i111, ptr noundef %call66, ptr noundef nonnull %cond) #9
  br label %if.then73

for.inc:                                          ; preds = %if.end37.for.inc_crit_edge, %if.then26.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0122, 1
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size, align 4
  %cmp15 = icmp slt i32 %inc, %46
  br i1 %cmp15, label %for.inc.land.rhs_crit_edge, label %for.inc.if.end75_crit_edge

for.inc.if.end75_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.then73:                                        ; preds = %if.then58, %if.end40, %usbhsh_device_get.exit.if.then73_crit_edge
  %counter = getelementptr inbounds %struct.usbhsh_ep, ptr %5, i32 0, i32 4
  %47 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %counter, align 4
  %inc74 = add i32 %48, 1
  store i32 %inc74, ptr %counter, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %for.inc.if.end75_crit_edge, %land.rhs.if.end75_crit_edge, %for.cond.preheader.if.end75_crit_edge
  %ret.0115 = phi i32 [ 0, %if.then73 ], [ -16, %for.cond.preheader.if.end75_crit_edge ], [ -16, %for.inc.if.end75_crit_edge ], [ -16, %land.rhs.if.end75_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  ret i32 %ret.0115
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbhsh_dcp_queue_push(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mflags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %ep = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcpriv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_dcp_queue_push.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_dcp_queue_push, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_dcp_queue_push.__UNIQUE_ID_ddebug250, ptr noundef %7, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @usbhsh_setup_stage_packet_push(ptr noundef %hcd_priv, ptr noundef %urb)
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %8 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  %.pre = or i32 %mflags, 256
  %.pre72 = and i32 %mflags, 4194321
  br i1 %tobool4.not, label %do.end.if.end12_crit_edge, label %if.then5

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre72)
  %cmp.i.i.i.i.i = icmp eq i32 %.pre72, 0
  br i1 %cmp.i.i.i.i.i, label %if.then5.kzalloc.exit.i.i_crit_edge, label %if.end.i.i.i.i.i, !prof !205

if.then5.kzalloc.exit.i.i_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then5
  %and2.i.i.i.i.i = and i32 %mflags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i, label %if.end5.i.i.i.i.i, label %if.end.i.i.i.i.i.kzalloc.exit.i.i_crit_edge

if.end.i.i.i.i.i.kzalloc.exit.i.i_crit_edge:      ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i.i.i = and i32 %mflags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i.i)
  %tobool7.not.i.i.i.i.i = icmp eq i32 %and6.i.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %tobool7.not.i.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i.i

kzalloc.exit.i.i:                                 ; preds = %if.end5.i.i.i.i.i, %if.end.i.i.i.i.i.kzalloc.exit.i.i_crit_edge, %if.then5.kzalloc.exit.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ 0, %if.then5.kzalloc.exit.i.i_crit_edge ], [ 3, %if.end.i.i.i.i.i.kzalloc.exit.i.i_crit_edge ], [ %..i.i.i.i.i, %if.end5.i.i.i.i.i ]
  %arrayidx6.i.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i.i, i32 7
  %10 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i.i.i.i, align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef %.pre, i32 noundef 100) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end10, label %usbhsh_data_stage_packet_push.exit

usbhsh_data_stage_packet_push.exit:               ; preds = %kzalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pkt.i.i = getelementptr inbounds %struct.usbhsh_request, ptr %call7.i.i.i.i, i32 0, i32 1
  tail call void @usbhs_pkt_init(ptr noundef %pkt.i.i) #9
  %12 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %urb, ptr %call7.i.i.i.i, align 8
  %hcpriv.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %13 = ptrtoint ptr %hcpriv.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i.i, ptr %hcpriv.i.i, align 4
  %pipe4.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %14 = ptrtoint ptr %pipe4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pipe4.i, align 4
  %and.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool5.not.i, ptr @usbhs_dcp_data_stage_out_handler, ptr @usbhs_dcp_data_stage_in_handler
  %16 = getelementptr inbounds %struct.usbhs_pipe, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.select.i, ptr %16, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_buffer.i, align 4
  %20 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %transfer_buffer_length, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %22 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_flags.i, align 4
  %and9.i = and i32 %23, 64
  tail call void @usbhs_pkt_push(ptr noundef %5, ptr noundef %pkt.i.i, ptr noundef nonnull @usbhsh_data_stage_packet_done, ptr noundef %19, i32 noundef %21, i32 noundef %and9.i, i32 noundef -1) #9
  br label %if.end12

do.end10:                                         ; preds = %kzalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.49) #12
  br label %cleanup

if.end12:                                         ; preds = %usbhsh_data_stage_packet_push.exit, %do.end.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre72)
  %cmp.i.i.i.i.i43 = icmp eq i32 %.pre72, 0
  br i1 %cmp.i.i.i.i.i43, label %if.end12.kzalloc.exit.i.i55_crit_edge, label %if.end.i.i.i.i.i46, !prof !205

if.end12.kzalloc.exit.i.i55_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i.i55

if.end.i.i.i.i.i46:                               ; preds = %if.end12
  %and2.i.i.i.i.i44 = and i32 %mflags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i44)
  %tobool3.not.i.i.i.i.i45 = icmp eq i32 %and2.i.i.i.i.i44, 0
  br i1 %tobool3.not.i.i.i.i.i45, label %if.end5.i.i.i.i.i50, label %if.end.i.i.i.i.i46.kzalloc.exit.i.i55_crit_edge

if.end.i.i.i.i.i46.kzalloc.exit.i.i55_crit_edge:  ; preds = %if.end.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i.i55

if.end5.i.i.i.i.i50:                              ; preds = %if.end.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i.i.i47 = and i32 %mflags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i.i47)
  %tobool7.not.i.i.i.i.i48 = icmp eq i32 %and6.i.i.i.i.i47, 0
  %..i.i.i.i.i49 = select i1 %tobool7.not.i.i.i.i.i48, i32 1, i32 2
  br label %kzalloc.exit.i.i55

kzalloc.exit.i.i55:                               ; preds = %if.end5.i.i.i.i.i50, %if.end.i.i.i.i.i46.kzalloc.exit.i.i55_crit_edge, %if.end12.kzalloc.exit.i.i55_crit_edge
  %retval.0.i.i.i.i.i51 = phi i32 [ 0, %if.end12.kzalloc.exit.i.i55_crit_edge ], [ 3, %if.end.i.i.i.i.i46.kzalloc.exit.i.i55_crit_edge ], [ %..i.i.i.i.i49, %if.end5.i.i.i.i.i50 ]
  %arrayidx6.i.i.i.i52 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i.i51, i32 7
  %24 = ptrtoint ptr %arrayidx6.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx6.i.i.i.i52, align 4
  %call7.i.i.i.i53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef %.pre, i32 noundef 100) #13
  %tobool.not.i.i54 = icmp eq ptr %call7.i.i.i.i53, null
  br i1 %tobool.not.i.i54, label %do.end18, label %if.end19

do.end18:                                         ; preds = %kzalloc.exit.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end19:                                         ; preds = %kzalloc.exit.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  %pkt.i.i56 = getelementptr inbounds %struct.usbhsh_request, ptr %call7.i.i.i.i53, i32 0, i32 1
  tail call void @usbhs_pkt_init(ptr noundef %pkt.i.i56) #9
  %26 = ptrtoint ptr %call7.i.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %urb, ptr %call7.i.i.i.i53, align 8
  %hcpriv.i.i57 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %27 = ptrtoint ptr %hcpriv.i.i57 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i.i53, ptr %hcpriv.i.i57, align 4
  %pipe4.i58 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %28 = ptrtoint ptr %pipe4.i58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pipe4.i58, align 4
  %and.i59 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool5.not.i60 = icmp eq i32 %and.i59, 0
  %spec.select.i61 = select i1 %tobool5.not.i60, ptr @usbhs_dcp_status_stage_out_handler, ptr @usbhs_dcp_status_stage_in_handler
  %30 = getelementptr inbounds %struct.usbhs_pipe, ptr %5, i32 0, i32 6
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %spec.select.i61, ptr %30, align 4
  %32 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %transfer_buffer_length, align 4
  tail call void @usbhs_pkt_push(ptr noundef %5, ptr noundef %pkt.i.i56, ptr noundef nonnull @usbhsh_queue_done, ptr noundef null, i32 noundef %33, i32 noundef 0, i32 noundef -1) #9
  tail call void @usbhs_pkt_start(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end18, %do.end10
  %retval.0 = phi i32 [ -12, %do.end10 ], [ -12, %do.end18 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbhsh_queue_push(ptr nocapture noundef readonly %hcd, ptr noundef %urb, i32 noundef %mem_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcpriv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  %pipe2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %8 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %9)
  %cmp = icmp ult i32 %9, 1073741824
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.65) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %or.i.i = or i32 %mem_flags, 256
  %and.i.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !205

if.end.kzalloc.exit.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end
  %and2.i.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %if.end.kzalloc.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %if.end.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i, i32 7
  %10 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef %or.i.i, i32 noundef 100) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end9, label %if.end10

do.end9:                                          ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.68) #12
  br label %cleanup

if.end10:                                         ; preds = %kzalloc.exit.i
  %pkt.i = getelementptr inbounds %struct.usbhsh_request, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @usbhs_pkt_init(ptr noundef %pkt.i) #9
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %urb, ptr %call7.i.i.i, align 8
  %hcpriv.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %13 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %hcpriv.i, align 4
  %14 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pipe2, align 4
  %and12 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %spec.select = select i1 %tobool13.not, ptr @usbhs_fifo_dma_push_handler, ptr @usbhs_fifo_dma_pop_handler
  %16 = getelementptr inbounds %struct.usbhs_pipe, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.select, ptr %16, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %20 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual_length, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %21
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %22 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_buffer_length, align 4
  %sub = sub i32 %23, %21
  %dev18 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %24 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev18, align 4
  %26 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pipe2, align 4
  %and20 = lshr i32 %27, 7
  %and20.lobit = and i32 %and20, 1
  %28 = xor i32 %and20.lobit, 1
  %arrayidx = getelementptr %struct.usb_device, ptr %25, i32 0, i32 10, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %shr25 = lshr i32 %27, 15
  %and26 = and i32 %shr25, 15
  %shr27 = lshr i32 %30, %and26
  %and28 = and i32 %shr27, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_queue_push.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_queue_push, %if.then38)) #9
          to label %do.end41 [label %if.then38], !srcloc !204

if.then38:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_queue_push.__UNIQUE_ID_ddebug247, ptr noundef %7, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.66) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %if.end10
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %31 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %transfer_flags, align 4
  %and42 = and i32 %32, 64
  tail call void @usbhs_pkt_push(ptr noundef %5, ptr noundef %pkt.i, ptr noundef nonnull @usbhsh_queue_done, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef %and42, i32 noundef %and28) #9
  tail call void @usbhs_pkt_start(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.end9, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -12, %do.end9 ], [ 0, %do.end41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsh_endpoint_detach(ptr noundef %hpriv, ptr nocapture noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_mod, ptr %hpriv, i32 0, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcpriv, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_endpoint_detach.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_endpoint_detach, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !204

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.usbhsh_ep, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %udev7 = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %udev7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress.i, align 1
  %10 = and i8 %9, 15
  %and.i = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_endpoint_detach.__UNIQUE_ID_ddebug242, ptr noundef %dev2, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.70, i32 noundef %sub.ptr.div, i32 noundef %and.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %do.end.do.body14_crit_edge, label %if.then11

do.end.do.body14_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @usbhsh_pipe_detach(ptr noundef %hpriv, ptr noundef nonnull %5)
  br label %do.body14

do.body14:                                        ; preds = %if.then11, %do.end.do.body14_crit_edge
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 7
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %ep_list = getelementptr inbounds %struct.usbhsh_ep, ptr %5, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ep_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body14.list_del_init.exit_crit_edge

do.body14.list_del_init.exit_crit_edge:           ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.usbhsh_ep, ptr %5, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body14.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.usbhsh_ep, ptr %5, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ep_list, ptr %prev.i3.i, align 4
  %udev22 = getelementptr inbounds %struct.usbhsh_ep, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %udev22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %udev22, align 4
  %ep23 = getelementptr inbounds %struct.usbhsh_ep, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %ep23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %ep23, align 4
  %23 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %hcpriv, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #9
  tail call void @kfree(ptr noundef nonnull %5) #9
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsh_device_detach(ptr noundef %hpriv, ptr noundef %udev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hpriv, i32 -600
  %priv1 = getelementptr inbounds %struct.usbhs_mod, ptr %hpriv, i32 0, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_device_detach.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_device_detach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev6 = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2
  %sub.ptr.lhs.cast = ptrtoint ptr %udev to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %udev6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_device_detach.__UNIQUE_ID_ddebug245, ptr noundef %3, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.71, i32 noundef %sub.ptr.div, ptr noundef %udev) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ep_list_head.i = getelementptr inbounds %struct.usbhsh_device, ptr %udev, i32 0, i32 1
  %6 = ptrtoint ptr %ep_list_head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ep_list_head.i, align 4
  %cmp.i.i.not = icmp eq ptr %7, %ep_list_head.i
  br i1 %cmp.i.i.not, label %do.end.if.end13_crit_edge, label %do.end12

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.end12:                                         ; preds = %do.end
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.72) #12
  %8 = ptrtoint ptr %ep_list_head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep_list_head.i, align 4
  %cmp.not18.i = icmp eq ptr %9, %ep_list_head.i
  br i1 %cmp.not18.i, label %do.end12.if.end13_crit_edge, label %do.end12.for.body.i_crit_edge

do.end12.for.body.i_crit_edge:                    ; preds = %do.end12
  br label %for.body.i

do.end12.if.end13_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end12.for.body.i_crit_edge
  %.pn.in19.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %9, %do.end12.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in19.i, align 4
  %ep.i = getelementptr i8, ptr %.pn.in19.i, i32 -4
  %11 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep.i, align 4
  tail call fastcc void @usbhsh_endpoint_detach(ptr noundef %hpriv, ptr noundef %12) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %ep_list_head.i
  br i1 %cmp.not.i, label %for.body.i.if.end13_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end13_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %for.body.i.if.end13_crit_edge, %do.end12.if.end13_crit_edge, %do.end.if.end13_crit_edge
  %udev14 = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2
  %13 = icmp eq ptr %udev14, %udev
  br i1 %13, label %if.end13.cleanup_crit_edge, label %do.body23

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 7
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %driver_data.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15, i32 8
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %driver_data.i, align 4
  %15 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %udev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body23, %if.end13.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_set_device_config(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_is_dir_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_config_update(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_pipe_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsh_setup_stage_packet_push(ptr noundef %hpriv, ptr nocapture noundef readonly %urb) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.usb_ctrlrequest, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_mod, ptr %hpriv, i32 0, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #9
  %2 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 2
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %setup_ack_done = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 4
  %5 = ptrtoint ptr %setup_ack_done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %setup_ack_done, align 4
  %wait.i = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @init_completion.__key) #9
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %6 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %setup_packet, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %7, align 1
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %req, align 8
  %11 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp eq i8 %11, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true.i:                                  ; preds = %entry
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bRequest.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %13)
  %cmp3.i = icmp eq i8 %13, 5
  br i1 %cmp3.i, label %if.then, label %land.lhs.true.i.if.end14_crit_edge

land.lhs.true.i.if.end14_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev3, align 4
  %driver_data.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15, i32 8
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i, align 4
  %udev6 = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %udev6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %conv = trunc i32 %sub.ptr.div to i16
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %2, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_setup_stage_packet_push.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_setup_stage_packet_push, %if.then11)) #9
          to label %if.end14 [label %if.then11], !srcloc !204

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %2, align 2
  %conv13 = zext i16 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_setup_stage_packet_push.__UNIQUE_ID_ddebug248, ptr noundef %dev2, ptr noundef nonnull @.str.54, i32 noundef %conv13) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then, %land.lhs.true.i.if.end14_crit_edge, %entry.if.end14_crit_edge
  call void @usbhs_usbreq_set_val(ptr noundef %1, ptr noundef nonnull %req) #9
  call void @wait_for_completion(ptr noundef %setup_ack_done) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_setup_stage_packet_push.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_setup_stage_packet_push, %if.then28)) #9
          to label %do.end31 [label %if.then28], !srcloc !204

if.then28:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_setup_stage_packet_push.__UNIQUE_ID_ddebug249, ptr noundef %dev2, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53) #9
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pkt_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_usbreq_set_val(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pkt_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbhsh_data_stage_packet_done(ptr noundef %priv, ptr noundef %pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pkt, i32 -4
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 0) #9
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %hcpriv.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hcpriv.i, align 4
  store ptr null, ptr %add.ptr, align 4
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pkt_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbhsh_queue_done(ptr noundef %priv, ptr noundef %pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pkt, i32 -4
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 0) #9
  %add.ptr6 = getelementptr i8, ptr %call, i32 -600
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_queue_done.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_queue_done, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_queue_done.__UNIQUE_ID_ddebug246, ptr noundef %dev8, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.57) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %do.end17, label %if.end18

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.58) #12
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %irq_attch.i = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %irq_attch.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_attch.i, align 4
  %cmp.i.not = icmp eq ptr %5, null
  %spec.select = select i1 %cmp.i.not, i32 0, i32 -108
  %actual = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 10
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %actual_length, align 4
  %pipe.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pipe.i, align 4
  %shr.mask.i = and i32 %10, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask.i)
  %cmp.i43 = icmp eq i32 %shr.mask.i, -2147483648
  br i1 %cmp.i43, label %if.end18.usbhsh_endpoint_sequence_save.exit_crit_edge, label %if.end.i

if.end18.usbhsh_endpoint_sequence_save.exit_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_endpoint_sequence_save.exit

if.end.i:                                         ; preds = %if.end18
  %ep.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep.i, align 4
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %15 = and i16 %14, -249
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #9
  %and.i.i = zext i16 %16 to i32
  %.frozen = freeze i32 %7
  %and.i.i.frozen = freeze i32 %and.i.i
  %div.i = sdiv i32 %.frozen, %and.i.i.frozen
  %17 = mul i32 %div.i, %and.i.i.frozen
  %rem.i.decomposed = sub i32 %.frozen, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp ne i32 %rem.i.decomposed, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %div.i, %inc.i
  %zero.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 11
  %18 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %zero.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i = icmp ne i32 %19, 0
  %inc5.i = zext i1 %tobool3.not.i to i32
  %t.1.i = add i32 %spec.select.i, %inc5.i
  %20 = and i32 %t.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not.i = icmp eq i32 %20, 0
  br i1 %tobool8.not.i, label %if.end.i.usbhsh_endpoint_sequence_save.exit_crit_edge, label %if.then9.i

if.end.i.usbhsh_endpoint_sequence_save.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_endpoint_sequence_save.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr11.i = lshr i32 %10, 15
  %and12.i = and i32 %shr11.i, 15
  %shl.i = shl nuw nsw i32 1, %and12.i
  %dev.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %and14.i = lshr i32 %10, 7
  %and14.lobit.i = and i32 %and14.i, 1
  %23 = xor i32 %and14.lobit.i, 1
  %arrayidx.i = getelementptr %struct.usb_device, ptr %22, i32 0, i32 10, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %xor.i = xor i32 %25, %shl.i
  store i32 %xor.i, ptr %arrayidx.i, align 4
  br label %usbhsh_endpoint_sequence_save.exit

usbhsh_endpoint_sequence_save.exit:               ; preds = %if.then9.i, %if.end.i.usbhsh_endpoint_sequence_save.exit_crit_edge, %if.end18.usbhsh_endpoint_sequence_save.exit_crit_edge
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %hcpriv.i = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %hcpriv.i, align 4
  store ptr null, ptr %add.ptr, align 4
  tail call void @kfree(ptr noundef %add.ptr) #9
  %ep = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hcpriv, align 4
  tail call fastcc void @usbhsh_pipe_detach(ptr noundef %call, ptr noundef %32)
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %add.ptr6, ptr noundef nonnull %1) #9
  tail call void @usb_hcd_giveback_urb(ptr noundef %add.ptr6, ptr noundef nonnull %1, i32 noundef %spec.select) #9
  br label %cleanup

cleanup:                                          ; preds = %usbhsh_endpoint_sequence_save.exit, %do.end17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsh_pipe_detach(ptr noundef %hpriv, ptr noundef %uep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_mod, ptr %hpriv, i32 0, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %tobool.not = icmp eq ptr %uep, null
  br i1 %tobool.not, label %do.end, label %do.body7, !prof !206

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.59) #12
  br label %cleanup

do.body7:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 7
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %4 = ptrtoint ptr %uep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uep, align 4
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %do.end26, label %if.else, !prof !206

do.end26:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.62) #12
  br label %if.end51

if.else:                                          ; preds = %do.body7
  %counter = getelementptr inbounds %struct.usbhsh_ep, ptr %uep, i32 0, i32 4
  %6 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %counter, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp27 = icmp eq i32 %7, 1
  br i1 %cmp27, label %if.then29, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %ep30 = getelementptr inbounds %struct.usbhsh_ep, ptr %uep, i32 0, i32 2
  %8 = ptrtoint ptr %ep30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep30, align 4
  %udev31 = getelementptr inbounds %struct.usbhsh_ep, ptr %uep, i32 0, i32 1
  %10 = ptrtoint ptr %udev31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev31, align 4
  %12 = ptrtoint ptr %uep to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %uep, align 4
  %mod_private = getelementptr inbounds %struct.usbhs_pipe, ptr %5, i32 0, i32 7
  %13 = ptrtoint ptr %mod_private to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %mod_private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_pipe_detach.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_pipe_detach, %if.then43)) #9
          to label %if.end51 [label %if.then43], !srcloc !204

if.then43:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %udev44 = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 2
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %udev44 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress.i, align 1
  %16 = and i8 %15, 15
  %and.i = zext i8 %16 to i32
  %call46 = tail call ptr @usbhs_pipe_name(ptr noundef nonnull %5) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_pipe_detach.__UNIQUE_ID_ddebug240, ptr noundef %dev2, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.60, i32 noundef %sub.ptr.div, i32 noundef %and.i, ptr noundef %call46) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %if.then29, %if.else.if.end51_crit_edge, %do.end26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_pkt_pop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__usbhsh_hub_port_feature(ptr nocapture noundef %hpriv, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, i16 noundef zeroext %wLength) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_mod, ptr %hpriv, i32 0, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 8963, i16 %typeReq)
  %cmp = icmp eq i16 %typeReq, 8963
  %conv3 = zext i1 %cmp to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wIndex)
  %cmp5 = icmp ult i16 %wIndex, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wLength)
  %cmp8.not = icmp eq i16 %wLength, 0
  %or.cond = and i1 %cmp5, %cmp8.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv10 = zext i16 %wValue to i32
  %4 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.97)
  switch i16 %wValue, label %if.end.cleanup_crit_edge [
    i16 8, label %sw.bb
    i16 1, label %if.end.do.body17_crit_edge
    i16 2, label %if.end.do.body17_crit_edge15
    i16 17, label %if.end.do.body17_crit_edge16
    i16 18, label %if.end.do.body17_crit_edge17
    i16 16, label %if.end.do.body17_crit_edge18
    i16 19, label %if.end.do.body17_crit_edge19
    i16 20, label %if.end.do.body17_crit_edge20
    i16 4, label %sw.bb33
  ]

if.end.do.body17_crit_edge20:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

if.end.do.body17_crit_edge19:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

if.end.do.body17_crit_edge18:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

if.end.do.body17_crit_edge17:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

if.end.do.body17_crit_edge16:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

if.end.do.body17_crit_edge15:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

if.end.do.body17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @usbhs_vbus_ctrl(ptr noundef %1, i32 noundef %conv3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__usbhsh_hub_port_feature.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__usbhsh_hub_port_feature, %if.then14)) #9
          to label %sw.epilog62 [label %if.then14], !srcloc !204

if.then14:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__usbhsh_hub_port_feature.__UNIQUE_ID_ddebug254, ptr noundef %dev2, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77) #9
  br label %sw.epilog62

do.body17:                                        ; preds = %if.end.do.body17_crit_edge, %if.end.do.body17_crit_edge15, %if.end.do.body17_crit_edge16, %if.end.do.body17_crit_edge17, %if.end.do.body17_crit_edge18, %if.end.do.body17_crit_edge19, %if.end.do.body17_crit_edge20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__usbhsh_hub_port_feature.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__usbhsh_hub_port_feature, %if.then29)) #9
          to label %sw.epilog62 [label %if.then29], !srcloc !204

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__usbhsh_hub_port_feature.__UNIQUE_ID_ddebug255, ptr noundef %dev2, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77) #9
  br label %sw.epilog62

sw.bb33:                                          ; preds = %if.end
  br i1 %cmp, label %if.end36, label %sw.bb33.if.else_crit_edge

sw.bb33.if.else_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end36:                                         ; preds = %sw.bb33
  %port_stat = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 3
  %5 = ptrtoint ptr %port_stat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_stat, align 4
  %and = and i32 %6, -1537
  store i32 %and, ptr %port_stat, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %size.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.i = icmp sgt i32 %8, 0
  br i1 %cmp6.i, label %if.end36.land.rhs.i_crit_edge, label %if.end36.usbhsh_queue_force_pop_all.exit_crit_edge

if.end36.usbhsh_queue_force_pop_all.exit_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_queue_force_pop_all.exit

if.end36.land.rhs.i_crit_edge:                    ; preds = %if.end36
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %usbhsh_queue_force_pop.exit.i.land.rhs.i_crit_edge, %if.end36.land.rhs.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %usbhsh_queue_force_pop.exit.i.land.rhs.i_crit_edge ], [ 0, %if.end36.land.rhs.i_crit_edge ]
  %9 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pipe_info.i, align 4
  %add.ptr.i = getelementptr %struct.usbhs_pipe, ptr %10, i32 %i.07.i
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %land.rhs.i.usbhsh_queue_force_pop_all.exit_crit_edge, label %for.body.i

land.rhs.i.usbhsh_queue_force_pop_all.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_queue_force_pop_all.exit

for.body.i:                                       ; preds = %land.rhs.i
  %call2.i.i = tail call ptr @usbhs_pkt_pop(ptr noundef nonnull %add.ptr.i, ptr noundef null) #9
  %tobool.not3.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not3.i.i, label %for.body.i.usbhsh_queue_force_pop.exit.i_crit_edge, label %for.body.i.if.end.i.i_crit_edge

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  br label %if.end.i.i

for.body.i.usbhsh_queue_force_pop.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_queue_force_pop.exit.i

if.end.i.i:                                       ; preds = %if.end.i.i.if.end.i.i_crit_edge, %for.body.i.if.end.i.i_crit_edge
  %call4.i.i = phi ptr [ %call.i.i, %if.end.i.i.if.end.i.i_crit_edge ], [ %call2.i.i, %for.body.i.if.end.i.i_crit_edge ]
  tail call void @usbhsh_queue_done(ptr noundef %1, ptr noundef nonnull %call4.i.i) #9
  %call.i.i = tail call ptr @usbhs_pkt_pop(ptr noundef nonnull %add.ptr.i, ptr noundef null) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.usbhsh_queue_force_pop.exit.i_crit_edge, label %if.end.i.i.if.end.i.i_crit_edge

if.end.i.i.if.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i.usbhsh_queue_force_pop.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_queue_force_pop.exit.i

usbhsh_queue_force_pop.exit.i:                    ; preds = %if.end.i.i.usbhsh_queue_force_pop.exit.i_crit_edge, %for.body.i.usbhsh_queue_force_pop.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %12
  br i1 %cmp.i, label %usbhsh_queue_force_pop.exit.i.land.rhs.i_crit_edge, label %usbhsh_queue_force_pop.exit.i.usbhsh_queue_force_pop_all.exit_crit_edge

usbhsh_queue_force_pop.exit.i.usbhsh_queue_force_pop_all.exit_crit_edge: ; preds = %usbhsh_queue_force_pop.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_queue_force_pop_all.exit

usbhsh_queue_force_pop.exit.i.land.rhs.i_crit_edge: ; preds = %usbhsh_queue_force_pop.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

usbhsh_queue_force_pop_all.exit:                  ; preds = %usbhsh_queue_force_pop.exit.i.usbhsh_queue_force_pop_all.exit_crit_edge, %land.rhs.i.usbhsh_queue_force_pop_all.exit_crit_edge, %if.end36.usbhsh_queue_force_pop_all.exit_crit_edge
  tail call void @usbhs_bus_send_reset(ptr noundef %1) #9
  tail call void @msleep(i32 noundef 20) #9
  tail call void @usbhs_bus_send_sof_enable(ptr noundef %1) #9
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %usbhsh_queue_force_pop_all.exit
  %i.010 = phi i32 [ 0, %usbhsh_queue_force_pop_all.exit ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %call39 = tail call i32 @usbhs_bus_get_speed(ptr noundef %1) #9
  %switch.tableidx = add i32 %call39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 3
  br i1 %13, label %switch.lookup, label %sw.epilog

sw.epilog:                                        ; preds = %for.body
  tail call void @msleep(i32 noundef 20) #9
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.__usbhsh_hub_port_feature, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %15 = ptrtoint ptr %port_stat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_stat, align 4
  %or = or i32 %switch.load, %16
  %or45 = or i32 %or, 2
  store i32 %or45, ptr %port_stat, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__usbhsh_hub_port_feature.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__usbhsh_hub_port_feature, %if.then58)) #9
          to label %cleanup [label %if.then58], !srcloc !204

if.then58:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__usbhsh_hub_port_feature.__UNIQUE_ID_ddebug256, ptr noundef %dev2, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.77, i32 noundef %switch.load) #9
  br label %cleanup

sw.epilog62:                                      ; preds = %if.then29, %do.body17, %if.then14, %sw.bb
  br i1 %cmp, label %if.then64, label %sw.epilog62.if.else_crit_edge

sw.epilog62.if.else_crit_edge:                    ; preds = %sw.epilog62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then64:                                        ; preds = %sw.epilog62
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw nsw i32 1, %conv10
  %port_stat66 = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 3
  %17 = ptrtoint ptr %port_stat66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_stat66, align 4
  %or67 = or i32 %18, %shl
  store i32 %or67, ptr %port_stat66, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.epilog62.if.else_crit_edge, %sw.bb33.if.else_crit_edge
  %shl69 = shl nuw nsw i32 1, %conv10
  %neg = xor i32 %shl69, -1
  %port_stat70 = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 3
  %19 = ptrtoint ptr %port_stat70 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_stat70, align 4
  %and71 = and i32 %20, %neg
  store i32 %and71, ptr %port_stat70, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then64, %if.then58, %switch.lookup, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %entry.cleanup_crit_edge ], [ 0, %if.then58 ], [ -32, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then64 ], [ 0, %switch.lookup ], [ -32, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__usbhsh_hub_get_status(ptr nocapture noundef readonly %hpriv, i16 noundef zeroext %typeReq, i16 noundef zeroext %wIndex, ptr nocapture noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_mod, ptr %hpriv, i32 0, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %typeReq, label %entry.cleanup_crit_edge [
    i16 -24576, label %do.body
    i16 -23808, label %sw.bb5
    i16 -24570, label %sw.bb26
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__usbhsh_hub_get_status.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__usbhsh_hub_get_status, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__usbhsh_hub_get_status.__UNIQUE_ID_ddebug257, ptr noundef %dev2, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %buf, align 1
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %wIndex)
  %cmp.not = icmp eq i16 %wIndex, 1
  br i1 %cmp.not, label %do.body10, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body10:                                        ; preds = %sw.bb5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__usbhsh_hub_get_status.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__usbhsh_hub_get_status, %if.then22)) #9
          to label %do.end25 [label %if.then22], !srcloc !204

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__usbhsh_hub_get_status.__UNIQUE_ID_ddebug258, ptr noundef %dev2, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.81) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body10
  %port_stat = getelementptr inbounds %struct.usbhsh_hpriv, ptr %hpriv, i32 0, i32 3
  %6 = ptrtoint ptr %port_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_stat, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buf, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bDescriptorType = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 41, ptr %bDescriptorType, align 1
  %bHubContrCurrent = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 5
  %11 = ptrtoint ptr %bHubContrCurrent to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %bHubContrCurrent, align 1
  %bNbrPorts = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %12 = ptrtoint ptr %bNbrPorts to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bNbrPorts, align 1
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 9, ptr %buf, align 1
  %bPwrOn2PwrGood = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 4
  %14 = ptrtoint ptr %bPwrOn2PwrGood to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bPwrOn2PwrGood, align 1
  %wHubCharacteristics = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %15 = ptrtoint ptr %wHubCharacteristics to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 4352, ptr %wHubCharacteristics, align 1
  %u = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  %16 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %u, align 1
  %arrayidx31 = getelementptr %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %arrayidx31, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__usbhsh_hub_get_status.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__usbhsh_hub_get_status, %if.then44)) #9
          to label %cleanup [label %if.then44], !srcloc !204

if.then44:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__usbhsh_hub_get_status.__UNIQUE_ID_ddebug259, ptr noundef %dev2, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.81) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %sw.bb26, %do.end25, %sw.bb5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %sw.bb5.cleanup_crit_edge ], [ 0, %if.then44 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end25 ], [ 0, %do.end ], [ 0, %sw.bb26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_vbus_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_bus_send_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_bus_send_sof_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_bus_get_speed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_mod_get_current(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_fifo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbhsh_dma_map_ctrl(ptr nocapture noundef readnone %dma_dev, ptr nocapture noundef %pkt, i32 noundef %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %map)
  %tobool.not = icmp eq i32 %map, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %pkt, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %num_sgs = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %cleanup, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

cleanup:                                          ; preds = %if.then
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %transfer_dma, align 4
  %dma = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 5
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not.not = icmp eq i32 %5, 0
  br i1 %tobool5.not.not, label %cleanup.return_crit_edge, label %cleanup.if.end9_crit_edge

cleanup.if.end9_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end9:                                          ; preds = %cleanup.if.end9_crit_edge, %entry.if.end9_crit_edge
  br label %return

return:                                           ; preds = %if.end9, %cleanup.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i32 [ -22, %cleanup.return_crit_edge ], [ 0, %if.end9 ], [ -22, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_sys_host_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsh_irq_attch(ptr noundef %priv, ptr nocapture noundef readnone %irq_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 0) #9
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_irq_attch.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_irq_attch, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_irq_attch.__UNIQUE_ID_ddebug261, ptr noundef %dev1, ptr noundef nonnull @.str.88) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port_stat = getelementptr inbounds %struct.usbhsh_hpriv, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %port_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_stat, align 4
  %or7 = or i32 %3, 65537
  store i32 %or7, ptr %port_stat, align 4
  %irq_attch = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %irq_attch to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %irq_attch, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %priv, ptr noundef %call) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsh_irq_dtch(ptr noundef %priv, ptr nocapture noundef readnone %irq_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 0) #9
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_irq_dtch.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_irq_dtch, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_irq_dtch.__UNIQUE_ID_ddebug262, ptr noundef %dev1, ptr noundef nonnull @.str.90) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port_stat = getelementptr inbounds %struct.usbhsh_hpriv, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %port_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_stat, align 4
  %and = and i32 %3, -65538
  %or = or i32 %and, 65536
  store i32 %or, ptr %port_stat, align 4
  %irq_attch = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %irq_attch to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @usbhsh_irq_attch, ptr %irq_attch, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %priv, ptr noundef %call) #9
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9
  %size.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6.i = icmp sgt i32 %6, 0
  br i1 %cmp6.i, label %do.end.land.rhs.i_crit_edge, label %do.end.usbhsh_queue_force_pop_all.exit_crit_edge

do.end.usbhsh_queue_force_pop_all.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_queue_force_pop_all.exit

do.end.land.rhs.i_crit_edge:                      ; preds = %do.end
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %usbhsh_queue_force_pop.exit.i.land.rhs.i_crit_edge, %do.end.land.rhs.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %usbhsh_queue_force_pop.exit.i.land.rhs.i_crit_edge ], [ 0, %do.end.land.rhs.i_crit_edge ]
  %7 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe_info.i, align 4
  %add.ptr.i = getelementptr %struct.usbhs_pipe, ptr %8, i32 %i.07.i
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %land.rhs.i.usbhsh_queue_force_pop_all.exit_crit_edge, label %for.body.i

land.rhs.i.usbhsh_queue_force_pop_all.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_queue_force_pop_all.exit

for.body.i:                                       ; preds = %land.rhs.i
  %call2.i.i = tail call ptr @usbhs_pkt_pop(ptr noundef nonnull %add.ptr.i, ptr noundef null) #9
  %tobool.not3.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not3.i.i, label %for.body.i.usbhsh_queue_force_pop.exit.i_crit_edge, label %for.body.i.if.end.i.i_crit_edge

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  br label %if.end.i.i

for.body.i.usbhsh_queue_force_pop.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_queue_force_pop.exit.i

if.end.i.i:                                       ; preds = %if.end.i.i.if.end.i.i_crit_edge, %for.body.i.if.end.i.i_crit_edge
  %call4.i.i = phi ptr [ %call.i.i, %if.end.i.i.if.end.i.i_crit_edge ], [ %call2.i.i, %for.body.i.if.end.i.i_crit_edge ]
  tail call void @usbhsh_queue_done(ptr noundef %priv, ptr noundef nonnull %call4.i.i) #9
  %call.i.i = tail call ptr @usbhs_pkt_pop(ptr noundef nonnull %add.ptr.i, ptr noundef null) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.usbhsh_queue_force_pop.exit.i_crit_edge, label %if.end.i.i.if.end.i.i_crit_edge

if.end.i.i.if.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i.usbhsh_queue_force_pop.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_queue_force_pop.exit.i

usbhsh_queue_force_pop.exit.i:                    ; preds = %if.end.i.i.usbhsh_queue_force_pop.exit.i_crit_edge, %for.body.i.usbhsh_queue_force_pop.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %10
  br i1 %cmp.i, label %usbhsh_queue_force_pop.exit.i.land.rhs.i_crit_edge, label %usbhsh_queue_force_pop.exit.i.usbhsh_queue_force_pop_all.exit_crit_edge

usbhsh_queue_force_pop.exit.i.usbhsh_queue_force_pop_all.exit_crit_edge: ; preds = %usbhsh_queue_force_pop.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsh_queue_force_pop_all.exit

usbhsh_queue_force_pop.exit.i.land.rhs.i_crit_edge: ; preds = %usbhsh_queue_force_pop.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

usbhsh_queue_force_pop_all.exit:                  ; preds = %usbhsh_queue_force_pop.exit.i.usbhsh_queue_force_pop_all.exit_crit_edge, %land.rhs.i.usbhsh_queue_force_pop_all.exit_crit_edge, %do.end.usbhsh_queue_force_pop_all.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsh_irq_setup_ack(ptr noundef %priv, ptr nocapture noundef readnone %irq_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 0) #9
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_irq_setup_ack.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_irq_setup_ack, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_irq_setup_ack.__UNIQUE_ID_ddebug263, ptr noundef %dev1, ptr noundef nonnull @.str.92) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %setup_ack_done = getelementptr inbounds %struct.usbhsh_hpriv, ptr %call, i32 0, i32 4
  tail call void @complete(ptr noundef %setup_ack_done) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsh_irq_setup_err(ptr noundef %priv, ptr nocapture noundef readnone %irq_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get(ptr noundef %priv, i32 noundef 0) #9
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsh_irq_setup_err.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsh_irq_setup_err, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsh_irq_setup_err.__UNIQUE_ID_ddebug264, ptr noundef %dev1, ptr noundef nonnull @.str.94) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %setup_ack_done = getelementptr inbounds %struct.usbhsh_hpriv, ptr %call, i32 0, i32 4
  tail call void @complete(ptr noundef %setup_ack_done) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_irq_callback_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_dcp_malloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_pipe_malloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #2

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !133, !134, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !158, !159, !161, !162, !163, !165, !166, !168, !169, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1529, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usbhs_mod_host_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @usbhs_mod_host_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1550, i32 21}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1561, i32 2}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @usbhs_mod_host_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @usbhs_mod_host_probe._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @usbhsh_driver, !16, !"usbhsh_driver", i1 false, i1 false}
!16 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1279, i32 31}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 960, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @usbhsh_urb_enqueue.__UNIQUE_ID_ddebug251, !18, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!22 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 964, i32 3}
!26 = !{ptr @usbhsh_urb_enqueue._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @usbhsh_urb_enqueue._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 970, i32 3}
!30 = !{ptr @usbhsh_urb_enqueue._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @usbhsh_urb_enqueue._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 982, i32 4}
!34 = !{ptr @usbhsh_urb_enqueue._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @usbhsh_urb_enqueue._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 994, i32 4}
!38 = !{ptr @usbhsh_urb_enqueue._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @usbhsh_urb_enqueue._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1005, i32 3}
!42 = !{ptr @usbhsh_urb_enqueue._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @usbhsh_urb_enqueue._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1026, i32 2}
!46 = !{ptr @usbhsh_urb_enqueue.__UNIQUE_ID_ddebug252, !45, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 504, i32 3}
!49 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @usbhsh_device_attach._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @usbhsh_device_attach._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 535, i32 3}
!54 = !{ptr @usbhsh_device_attach._entry.31, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @usbhsh_device_attach._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 540, i32 3}
!58 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @usbhsh_device_attach._entry.34, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @usbhsh_device_attach._entry_ptr.37, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 545, i32 3}
!63 = !{ptr @usbhsh_device_attach._entry.38, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @usbhsh_device_attach._entry_ptr.40, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 571, i32 3}
!67 = !{ptr @usbhsh_device_attach.__UNIQUE_ID_ddebug243, !66, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 579, i32 2}
!70 = !{ptr @usbhsh_device_attach.__UNIQUE_ID_ddebug244, !69, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 398, i32 2}
!73 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @usbhsh_endpoint_attach.__UNIQUE_ID_ddebug241, !72, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 304, i32 3}
!77 = !{ptr @.str.46, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @usbhsh_pipe_attach.__UNIQUE_ID_ddebug239, !76, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 875, i32 2}
!81 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @usbhsh_dcp_queue_push.__UNIQUE_ID_ddebug250, !80, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 892, i32 4}
!85 = !{ptr @usbhsh_dcp_queue_push._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @usbhsh_dcp_queue_push._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 902, i32 3}
!89 = !{ptr @usbhsh_dcp_queue_push._entry.50, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @usbhsh_dcp_queue_push._entry_ptr.52, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 780, i32 3}
!93 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @usbhsh_setup_stage_packet_push.__UNIQUE_ID_ddebug248, !92, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!95 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 791, i32 2}
!97 = !{ptr @usbhsh_setup_stage_packet_push.__UNIQUE_ID_ddebug249, !96, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!98 = !{ptr @init_completion.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../include/linux/completion.h", i32 87, i32 2}
!100 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 638, i32 2}
!103 = !{ptr @usbhsh_queue_done.__UNIQUE_ID_ddebug246, !102, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 641, i32 3}
!106 = !{ptr @usbhsh_queue_done._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @usbhsh_queue_done._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 333, i32 3}
!110 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @usbhsh_pipe_detach._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @usbhsh_pipe_detach._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 343, i32 3}
!115 = !{ptr @usbhsh_pipe_detach._entry.61, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @usbhsh_pipe_detach._entry_ptr.63, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 352, i32 3}
!119 = !{ptr @usbhsh_pipe_detach.__UNIQUE_ID_ddebug240, !118, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 672, i32 3}
!122 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @usbhsh_queue_push._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @usbhsh_queue_push._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.68, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 679, i32 3}
!127 = !{ptr @usbhsh_queue_push._entry.67, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @usbhsh_queue_push._entry_ptr.69, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @usbhsh_queue_push.__UNIQUE_ID_ddebug247, !130, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!130 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 695, i32 2}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 416, i32 2}
!133 = !{ptr @usbhsh_endpoint_detach.__UNIQUE_ID_ddebug242, !132, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 594, i32 2}
!136 = !{ptr @usbhsh_device_detach.__UNIQUE_ID_ddebug245, !135, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!137 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 598, i32 3}
!139 = !{ptr @usbhsh_device_detach._entry, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @usbhsh_device_detach._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1267, i32 2}
!143 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @usbhsh_hub_control.__UNIQUE_ID_ddebug260, !142, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!145 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1101, i32 3}
!147 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @__usbhsh_hub_hub_feature.__UNIQUE_ID_ddebug253, !146, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1126, i32 3}
!151 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @__usbhsh_hub_port_feature.__UNIQUE_ID_ddebug254, !150, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1136, i32 3}
!155 = !{ptr @__usbhsh_hub_port_feature.__UNIQUE_ID_ddebug255, !154, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!156 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1174, i32 3}
!158 = !{ptr @__usbhsh_hub_port_feature.__UNIQUE_ID_ddebug256, !157, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1204, i32 3}
!161 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @__usbhsh_hub_get_status.__UNIQUE_ID_ddebug257, !160, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!163 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1213, i32 3}
!165 = !{ptr @__usbhsh_hub_get_status.__UNIQUE_ID_ddebug258, !164, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!166 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1227, i32 3}
!168 = !{ptr @__usbhsh_hub_get_status.__UNIQUE_ID_ddebug259, !167, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!169 = !{ptr @usbhsh_hcd_name, !170, !"usbhsh_hcd_name", i1 false, i1 false}
!170 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 96, i32 19}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1487, i32 2}
!173 = !{ptr @.str.86, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @usbhsh_start.__UNIQUE_ID_ddebug265, !172, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1316, i32 2}
!177 = !{ptr @.str.88, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @usbhsh_irq_attch.__UNIQUE_ID_ddebug261, !176, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1344, i32 2}
!181 = !{ptr @.str.90, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @usbhsh_irq_dtch.__UNIQUE_ID_ddebug262, !180, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!183 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1376, i32 2}
!185 = !{ptr @.str.92, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @usbhsh_irq_setup_ack.__UNIQUE_ID_ddebug263, !184, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1389, i32 2}
!189 = !{ptr @.str.94, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @usbhsh_irq_setup_err.__UNIQUE_ID_ddebug264, !188, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/renesas_usbhs/mod_host.c", i32 1513, i32 2}
!193 = !{ptr @.str.96, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @usbhsh_stop.__UNIQUE_ID_ddebug266, !192, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{i64 2148187777, i64 2148187782, i64 2148187795, i64 2148187839, i64 2148187873, i64 2148187894}
!205 = !{!"branch_weights", i32 2000, i32 1}
!206 = !{!"branch_weights", i32 1, i32 2000}
