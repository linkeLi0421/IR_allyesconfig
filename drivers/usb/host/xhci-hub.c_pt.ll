; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-hub.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-hub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.69 }
%union.anon.69 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.70, i32 }
%union.anon.70 = type { ptr }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [4 x i8], [0 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.xhci_virt_device = type { i32, ptr, ptr, ptr, [31 x %struct.xhci_virt_ep], i8, i8, ptr, ptr, i32, i16, ptr }
%struct.xhci_virt_ep = type { ptr, i32, ptr, ptr, ptr, i32, %struct.list_head, %struct.timer_list, ptr, ptr, ptr, i8, %struct.xhci_bw_info, %struct.list_head, i32, i8 }
%struct.xhci_bw_info = type { i32, i32, i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.xhci_stream_info = type { ptr, i32, ptr, i32, i32, %struct.xarray, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xhci_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.xhci_port = type { ptr, i32, i32, ptr, ptr }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.76 }>
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { [4 x i8], [4 x i8] }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.xhci_port_cap = type { ptr, i8, i8, i8, i8 }
%struct.xhci_cap_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xhci_command = type { ptr, i32, i32, ptr, ptr, %struct.list_head }

@xhci_set_link_state.__UNIQUE_ID_ddebug418 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xhci_hcd\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xhci_set_link_state\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/host/xhci-hub.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Set port %d-%d link state, portsc: 0x%x, write 0x%x\00", [44 x i8] zeroinitializer }, align 32
@xhci_hub_control.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xhci_hub_control\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Wrong hub descriptor type for USB 3.0 roothub.\0A\00", [48 x i8] zeroinitializer }, align 32
@xhci_hub_control.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 1, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Get port status %d-%d read: 0x%x, return 0x%x\00", [50 x i8] zeroinitializer }, align 32
@xhci_hub_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.2, i32 1256, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"get ext port status invalid parameter\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xhci_hub_control._entry_ptr = internal global ptr @xhci_hub_control._entry, section ".printk_index", align 4
@xhci_hub_control._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.2, i32 1305, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"USB core suspending port %d-%d not in U0/U1/U2\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xhci_hub_control._entry_ptr.13 = internal global ptr @xhci_hub_control._entry.10, section ".printk_index", align 4
@xhci_hub_control._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 1312, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slot_id is zero\0A\00", [47 x i8] zeroinitializer }, align 32
@xhci_hub_control._entry_ptr.16 = internal global ptr @xhci_hub_control._entry.14, section ".printk_index", align 4
@xhci_hub_control.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.17, i8 1, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Disable port %d-%d\0A\00", [44 x i8] zeroinitializer }, align 32
@xhci_hub_control.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.18, i8 1, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Enable port %d-%d\0A\00", [45 x i8] zeroinitializer }, align 32
@xhci_hub_control.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.19, i8 1, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"CTC flag is 0, port already supports entering compliance mode\0A\00", [33 x i8] zeroinitializer }, align 32
@xhci_hub_control._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.2, i32 1379, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Can't set compliance mode when port is connected\0A\00", [46 x i8] zeroinitializer }, align 32
@xhci_hub_control._entry_ptr.22 = internal global ptr @xhci_hub_control._entry.20, section ".printk_index", align 4
@xhci_hub_control.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.23, i8 1, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Enable compliance mode transition for port %d-%d\0A\00", [46 x i8] zeroinitializer }, align 32
@xhci_hub_control._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.2, i32 1400, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot set port %d-%d link state %d\0A\00", [59 x i8] zeroinitializer }, align 32
@xhci_hub_control._entry_ptr.26 = internal global ptr @xhci_hub_control._entry.24, section ".printk_index", align 4
@xhci_hub_control.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.27, i8 1, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"missing U0 port change event for port %d-%d\0A\00", [51 x i8] zeroinitializer }, align 32
@xhci_hub_control.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.28, i8 1, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"set port reset, actual port %d-%d status  = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@xhci_hub_control.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.29, i8 1, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"set port remote wake mask, actual port %d-%d status  = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@xhci_hub_control.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.30, i8 1, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clear USB_PORT_FEAT_SUSPEND\0A\00", [35 x i8] zeroinitializer }, align 32
@xhci_hub_control.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.31, i8 1, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PORTSC %04x\0A\00", [19 x i8] zeroinitializer }, align 32
@xhci_hub_control.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.15, i8 1, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@xhci_hub_status_data.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 1, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xhci_hub_status_data\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: stopping usb%d port polling\0A\00", [63 x i8] zeroinitializer }, align 32
@xhci_bus_suspend.__UNIQUE_ID_ddebug434 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 1, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xhci_bus_suspend\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"usb%d bus suspend to fail because a port is resuming\0A\00", [42 x i8] zeroinitializer }, align 32
@xhci_bus_suspend.__UNIQUE_ID_ddebug435 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.36, i8 1, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"port %d-%d polling in bus suspend, waiting\0A\00", [52 x i8] zeroinitializer }, align 32
@xhci_bus_suspend.__UNIQUE_ID_ddebug436 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.37, i8 1, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Bus suspend bailout, port over-current detected\0A\00", [47 x i8] zeroinitializer }, align 32
@xhci_bus_suspend.__UNIQUE_ID_ddebug437 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.38, i8 1, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Bus suspend bailout, port connect change\0A\00", [54 x i8] zeroinitializer }, align 32
@xhci_bus_suspend.__UNIQUE_ID_ddebug438 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.39, i8 1, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"port %d-%d not suspended\0A\00", [38 x i8] zeroinitializer }, align 32
@xhci_bus_resume.__UNIQUE_ID_ddebug439 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 1, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xhci_bus_resume\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reset stuck port %d-%d\0A\00", [40 x i8] zeroinitializer }, align 32
@xhci_bus_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 1936, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"port %d-%d resume PLC timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@xhci_bus_resume._entry_ptr = internal global ptr @xhci_bus_resume._entry, section ".printk_index", align 4
@ssp_cap_default_ssa = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 327732, i32 327860, i32 671797, i32 671925, i32 344118, i32 344246, i32 671799, i32 671927], [32 x i8] zeroinitializer }, align 32
@__tracepoint_xhci_get_port_status = external dso_local global %struct.tracepoint, align 4
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/host/xhci-trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_xhci_get_port_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"All USB3 ports have entered U0 already!\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Compliance Mode Recovery Timer Deleted.\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_xhci_dbg_quirks = external dso_local global %struct.tracepoint, align 4
@trace_xhci_dbg_quirks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xhci_handle_usb2_port_link_resume.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xhci_handle_usb2_port_link_resume\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"resume USB2 port %d-%d\0A\00", [40 x i8] zeroinitializer }, align 32
@xhci_handle_usb2_port_link_resume.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.15, i8 0, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xhci_handle_usb2_port_link_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 982, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Port resume timed out, port %d-%d: 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@xhci_handle_usb2_port_link_resume._entry_ptr = internal global ptr @xhci_handle_usb2_port_link_resume._entry, section ".printk_index", align 4
@xhci_stop_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 536, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Timeout while waiting for stop endpoint command\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xhci_stop_device\00", [47 x i8] zeroinitializer }, align 32
@xhci_stop_device._entry_ptr = internal global ptr @xhci_stop_device._entry, section ".printk_index", align 4
@__tracepoint_xhci_stop_device = external dso_local global %struct.tracepoint, align 4
@trace_xhci_stop_device.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xhci_set_port_power.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xhci_set_port_power\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"set port power %d-%d %s, portsc: 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@xhci_enter_test_mode.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xhci_enter_test_mode\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Disable all slots\0A\00", [45 x i8] zeroinitializer }, align 32
@xhci_enter_test_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 723, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to disable slot %d, %d. Enter test mode anyway\0A\00", [41 x i8] zeroinitializer }, align 32
@xhci_enter_test_mode._entry_ptr = internal global ptr @xhci_enter_test_mode._entry, section ".printk_index", align 4
@xhci_enter_test_mode.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.60, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Disable all port (PP = 0)\0A\00", [37 x i8] zeroinitializer }, align 32
@xhci_enter_test_mode.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.61, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stop controller\0A\00", [47 x i8] zeroinitializer }, align 32
@xhci_enter_test_mode.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.62, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enter Test Mode: %d, Port_id=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"warm(BH) reset\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"connect\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"over-current\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enable/disable\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"suspend/resume\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link state\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config error\00", [19 x i8] zeroinitializer }, align 32
@xhci_clear_port_change_bit.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xhci_clear_port_change_bit\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"clear port%d %s change, portsc: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@xhci_disable_port.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xhci_disable_port\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Ignoring request to disable SuperSpeed port.\0A\00", [50 x i8] zeroinitializer }, align 32
@xhci_disable_port.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.75, i8 0, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Broken Port Enabled/Disabled, ignoring port disable request.\0A\00", [34 x i8] zeroinitializer }, align 32
@xhci_disable_port.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.76, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"disable port %d-%d, portsc: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@xhci_exit_test_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 754, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Not in test mode, do nothing.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xhci_exit_test_mode\00", [44 x i8] zeroinitializer }, align 32
@xhci_exit_test_mode._entry_ptr = internal global ptr @xhci_exit_test_mode._entry, section ".printk_index", align 4
@__tracepoint_xhci_hub_status_data = external dso_local global %struct.tracepoint, align 4
@trace_xhci_hub_status_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.xhci_clear_port_change_bit = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 131072, i32 262144, i32 4194304, i32 1048576, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 4194304, i32 8388608, i32 2097152, i32 2097152, i32 524288], [40 x i8] zeroinitializer }, align 32
@switch.table.xhci_clear_port_change_bit.79 = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.66, ptr @.str.63, ptr @.str.63, ptr @.str.63, ptr @.str.63, ptr @.str.63, ptr @.str.69, ptr @.str.70, ptr @.str.63, ptr @.str.63, ptr @.str.64], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 8961, i64 8963, i64 32774, i64 40960, i64 40966, i64 41728]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 128, i64 192]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 480]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 64, i64 480]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 96, i64 480]
@__sancov_gen_cov_switch_values.84 = internal global [11 x i64] [i64 9, i64 16, i64 2, i64 4, i64 5, i64 8, i64 21, i64 23, i64 24, i64 27, i64 28]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 128, i64 160, i64 320]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 96]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 96, i64 256, i64 480]
@__sancov_gen_cov_switch_values.88 = internal global [14 x i64] [i64 12, i64 16, i64 1, i64 2, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 25, i64 26, i64 29]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 5]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 224, i64 320]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 96, i64 480]
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 780, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1214, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1247, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1256, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1304, i32 5 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1312, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1333, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1350, i32 5 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1374, i32 6 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1379, i32 6 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1383, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1398, i32 5 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1435, i32 6 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1481, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1488, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1543, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1544, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1672, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1705, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1733, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1741, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1749, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1752, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1887, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1935, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"ssp_cap_default_ssa\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 24, i32 12 }
@___asan_gen_.222 = private unnamed_addr constant [33 x i8] c"../drivers/usb/host/xhci-trace.h\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 545, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 108, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 900, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 902, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 952, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 981, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 536, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 667, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 713, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 722, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 727, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 735, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 743, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 599, i32 21 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 603, i32 21 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 607, i32 21 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 611, i32 21 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 615, i32 21 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 619, i32 21 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 623, i32 21 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 627, i32 21 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 637, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 572, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 578, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 586, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.336 = private constant [31 x i8] c"../drivers/usb/host/xhci-hub.c\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 754, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [40 x i8] c"switch.table.xhci_clear_port_change_bit\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [43 x i8] c"switch.table.xhci_clear_port_change_bit.79\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @xhci_bus_resume._entry, ptr @xhci_bus_resume._entry_ptr, ptr @xhci_enter_test_mode._entry, ptr @xhci_enter_test_mode._entry_ptr, ptr @xhci_exit_test_mode._entry, ptr @xhci_exit_test_mode._entry_ptr, ptr @xhci_handle_usb2_port_link_resume._entry, ptr @xhci_handle_usb2_port_link_resume._entry_ptr, ptr @xhci_hub_control._entry, ptr @xhci_hub_control._entry.10, ptr @xhci_hub_control._entry.14, ptr @xhci_hub_control._entry.20, ptr @xhci_hub_control._entry.24, ptr @xhci_hub_control._entry_ptr, ptr @xhci_hub_control._entry_ptr.13, ptr @xhci_hub_control._entry_ptr.16, ptr @xhci_hub_control._entry_ptr.22, ptr @xhci_hub_control._entry_ptr.26, ptr @xhci_stop_device._entry, ptr @xhci_stop_device._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @ssp_cap_default_ssa, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @switch.table.xhci_clear_port_change_bit, ptr @switch.table.xhci_clear_port_change_bit.79], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_hub_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_hub_control._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_hub_control._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_hub_control._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_hub_control._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_bus_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_cap_default_ssa to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_handle_usb2_port_link_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_stop_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_enter_test_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_exit_test_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xhci_clear_port_change_bit to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xhci_clear_port_change_bit.79 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xhci_port_state_to_neutral(i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %or = and i32 %state, 1308688361
  ret i32 %or
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_find_slot_id_by_port(ptr nocapture noundef readonly %hcd, ptr nocapture noundef readonly %xhci, i16 noundef zeroext %port) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %speed9 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 42, i32 %i.032
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %udev = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %speed7 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %speed7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp8 = icmp ult i32 %5, 5
  %6 = ptrtoint ptr %speed9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %7)
  %cmp10 = icmp sgt i32 %7, 63
  %cmp12 = xor i1 %cmp8, %cmp10
  br i1 %cmp12, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %fake_port = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %fake_port to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fake_port, align 4
  %10 = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %port)
  %cmp18 = icmp eq i16 %10, %port
  br i1 %cmp18, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %slot_id.0 = phi i32 [ 0, %for.inc.for.end_crit_edge ], [ %i.032, %land.lhs.true.for.end_crit_edge ]
  ret i32 %slot_id.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_ring_device(ptr noundef %xhci, i32 noundef %slot_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 42, i32 %slot_id
  br label %for.body

for.body:                                         ; preds = %for.inc10.for.body_crit_edge, %entry
  %i.029 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10.for.body_crit_edge ]
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %ep_state = getelementptr %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 %i.029, i32 5
  %2 = ptrtoint ptr %ep_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep_state, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.body
  %stream_info = getelementptr %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 %i.029, i32 3
  %4 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream_info, align 4
  %num_streams26 = getelementptr inbounds %struct.xhci_stream_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_streams26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_streams26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp327 = icmp ugt i32 %7, 1
  br i1 %cmp327, label %for.cond2.preheader.for.body4_crit_edge, label %for.cond2.preheader.for.inc10_crit_edge

for.cond2.preheader.for.inc10_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10

for.cond2.preheader.for.body4_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond2.preheader.for.body4_crit_edge
  %s.028 = phi i32 [ %inc, %for.body4.for.body4_crit_edge ], [ 1, %for.cond2.preheader.for.body4_crit_edge ]
  tail call void @xhci_ring_ep_doorbell(ptr noundef %xhci, i32 noundef %slot_id, i32 noundef %i.029, i32 noundef %s.028) #9
  %inc = add nuw i32 %s.028, 1
  %8 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream_info, align 4
  %num_streams = getelementptr inbounds %struct.xhci_stream_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %num_streams to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_streams, align 4
  %cmp3 = icmp ult i32 %inc, %11
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.inc10_crit_edge

for.body4.for.inc10_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

if.else:                                          ; preds = %for.body
  %ring = getelementptr %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 %i.029, i32 2
  %12 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.else.for.inc10_crit_edge, label %land.lhs.true

if.else.for.inc10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10

land.lhs.true:                                    ; preds = %if.else
  %dequeue = getelementptr inbounds %struct.xhci_ring, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dequeue, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %land.lhs.true.for.inc10_crit_edge, label %if.then8

land.lhs.true.for.inc10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xhci_ring_ep_doorbell(ptr noundef %xhci, i32 noundef %slot_id, i32 noundef %i.029, i32 noundef 0) #9
  br label %for.inc10

for.inc10:                                        ; preds = %if.then8, %land.lhs.true.for.inc10_crit_edge, %if.else.for.inc10_crit_edge, %for.body4.for.inc10_crit_edge, %for.cond2.preheader.for.inc10_crit_edge
  %inc11 = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc11, 31
  br i1 %exitcond.not, label %for.end12, label %for.inc10.for.body_crit_edge

for.inc10.for.body_crit_edge:                     ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end12:                                        ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_ring_ep_doorbell(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xhci_get_rhub(ptr noundef %hcd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %0 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %1, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %speed = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %3)
  %cmp = icmp sgt i32 %3, 63
  %usb3_rhub = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1
  %usb2_rhub = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 16
  %retval.0 = select i1 %cmp, ptr %usb3_rhub, ptr %usb2_rhub
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_set_link_state(ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %port, i32 noundef %link_state) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !199
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  %and = and i32 %3, 1308687881
  %or = or i32 %and, %link_state
  %or3 = or i32 %or, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #9, !srcloc !202
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_set_link_state.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_set_link_state, %if.then)) #9
          to label %do.end13 [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xhci, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %rhub = getelementptr inbounds %struct.xhci_port, ptr %port, i32 0, i32 3
  %11 = ptrtoint ptr %rhub to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rhub, align 4
  %hcd = getelementptr inbounds %struct.xhci_hub, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hcd, align 4
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %busnum, align 8
  %hcd_portnum = getelementptr inbounds %struct.xhci_port, ptr %port, i32 0, i32 2
  %17 = ptrtoint ptr %hcd_portnum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hcd_portnum, align 4
  %add = add i32 %18, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_set_link_state.__UNIQUE_ID_ddebug418, ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef %16, i32 noundef %add, i32 noundef %3, i32 noundef %or3) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_test_and_clear_bit(ptr nocapture readnone %xhci, ptr nocapture noundef readonly %port, i32 noundef %port_bit) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !199
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  %and = and i32 %3, %port_bit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = and i32 %3, 1308688361
  %or = or i32 %or.i, %port_bit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #9, !srcloc !202
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength) local_unnamed_addr #3 align 64 {
entry:
  %status.i = alloca i32, align 4
  %port_removable.i.i = alloca [4 x i8], align 4
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %0 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %1, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #9
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge

hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge:    ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_get_rhub.exit

if.else.i.i:                                      ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %xhci_get_rhub.exit

xhci_get_rhub.exit:                               ; preds = %if.else.i.i, %hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %3, %if.else.i.i ], [ %hcd, %hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge ]
  %speed.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %4 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %5)
  %cmp.i = icmp sgt i32 %5, 63
  %usb3_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1
  %usb2_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 3, i32 16
  %retval.0.i1312 = select i1 %cmp.i, ptr %usb3_rhub.i, ptr %usb2_rhub.i
  %6 = ptrtoint ptr %retval.0.i1312 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %retval.0.i1312, align 4
  %num_ports = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i1312, i32 0, i32 1
  %8 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ports, align 4
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call7, ptr %flags, align 4
  %11 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %typeReq, label %xhci_get_rhub.exit.cleanup965_crit_edge [
    i16 -24576, label %sw.bb
    i16 -24570, label %sw.bb11
    i16 -32762, label %sw.bb30
    i16 -23808, label %sw.bb43
    i16 8963, label %sw.bb118
    i16 8961, label %sw.bb805
  ]

xhci_get_rhub.exit.cleanup965_crit_edge:          ; preds = %xhci_get_rhub.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

sw.bb:                                            ; preds = %xhci_get_rhub.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %buf, align 1
  br label %cleanup965

sw.bb11:                                          ; preds = %xhci_get_rhub.exit
  %13 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %14)
  %cmp12 = icmp sgt i32 %14, 63
  br i1 %cmp12, label %land.lhs.true, label %if.else.i1316

land.lhs.true:                                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %wLength)
  %cmp15 = icmp ugt i16 %wLength, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 10752, i16 %wValue)
  %cmp18.not = icmp eq i16 %wValue, 10752
  %or.cond = and i1 %cmp18.not, %cmp15
  br i1 %or.cond, label %if.then.i, label %do.body20

do.body20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_hub_control.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_hub_control, %if.then25)) #9
          to label %cleanup965 [label %if.then25], !srcloc !203

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hcd_priv.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_hub_control.__UNIQUE_ID_ddebug421, ptr noundef %18, ptr noundef nonnull @.str.5) #9
  br label %cleanup965

if.then.i:                                        ; preds = %land.lhs.true
  %usb3_rhub.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1
  %num_ports.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_ports.i.i, align 4
  %bHubContrCurrent.i.i.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 5
  %21 = ptrtoint ptr %bHubContrCurrent.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bHubContrCurrent.i.i.i, align 1
  %conv.i.i.i = trunc i32 %20 to i8
  %bNbrPorts.i.i.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %22 = ptrtoint ptr %bNbrPorts.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i.i.i, ptr %bNbrPorts.i.i.i, align 1
  %hcc_params.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 2
  %23 = ptrtoint ptr %hcc_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hcc_params.i.i.i, align 8
  %and.i.i.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %..i.i.i = select i1 %tobool.not.i.i.i, i16 2560, i16 2304
  %wHubCharacteristics.i.i.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %25 = ptrtoint ptr %wHubCharacteristics.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %..i.i.i, ptr %wHubCharacteristics.i.i.i, align 1
  %bDescriptorType.i.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %26 = ptrtoint ptr %bDescriptorType.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 42, ptr %bDescriptorType.i.i, align 1
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 12, ptr %buf, align 1
  %bPwrOn2PwrGood.i.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 4
  %28 = ptrtoint ptr %bPwrOn2PwrGood.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 50, ptr %bPwrOn2PwrGood.i.i, align 1
  %u.i.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  %29 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %u.i.i, align 1
  %wHubDelay.i.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %wHubDelay.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 0, ptr %wHubDelay.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp1.not.i.i, label %if.then.i.xhci_usb3_hub_descriptor.exit.i_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.xhci_usb3_hub_descriptor.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_usb3_hub_descriptor.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %port_removable.03.i.i = phi i16 [ %port_removable.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %i.02.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %31 = ptrtoint ptr %usb3_rhub.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb3_rhub.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %32, i32 %i.02.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  %38 = and i32 %37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i1315 = icmp eq i32 %38, 0
  %add.i.i = add nuw i32 %i.02.i.i, 1
  %shl.i.i = shl i32 2, %i.02.i.i
  %39 = trunc i32 %shl.i.i to i16
  %conv4.i.i = select i1 %tobool.not.i.i1315, i16 0, i16 %39
  %port_removable.1.i.i = or i16 %conv4.i.i, %port_removable.03.i.i
  %exitcond.not.i.i = icmp eq i32 %add.i.i, %20
  br i1 %exitcond.not.i.i, label %for.body.i.i.xhci_usb3_hub_descriptor.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.xhci_usb3_hub_descriptor.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_usb3_hub_descriptor.exit.i

xhci_usb3_hub_descriptor.exit.i:                  ; preds = %for.body.i.i.xhci_usb3_hub_descriptor.exit.i_crit_edge, %if.then.i.xhci_usb3_hub_descriptor.exit.i_crit_edge
  %port_removable.0.lcssa.i.i = phi i16 [ 0, %if.then.i.xhci_usb3_hub_descriptor.exit.i_crit_edge ], [ %port_removable.1.i.i, %for.body.i.i.xhci_usb3_hub_descriptor.exit.i_crit_edge ]
  %40 = tail call i16 @llvm.bswap.i16(i16 %port_removable.0.lcssa.i.i) #9
  %DeviceRemovable.i.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 0, i32 3
  %41 = ptrtoint ptr %DeviceRemovable.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %DeviceRemovable.i.i, align 1
  br label %cleanup965

if.else.i1316:                                    ; preds = %sw.bb11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_removable.i.i) #9
  %usb2_rhub.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 16
  %num_ports.i5.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 17
  %42 = ptrtoint ptr %num_ports.i5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_ports.i5.i, align 4
  %bHubContrCurrent.i.i6.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 5
  %44 = ptrtoint ptr %bHubContrCurrent.i.i6.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %bHubContrCurrent.i.i6.i, align 1
  %conv.i.i7.i = trunc i32 %43 to i8
  %bNbrPorts.i.i8.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %45 = ptrtoint ptr %bNbrPorts.i.i8.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i.i7.i, ptr %bNbrPorts.i.i8.i, align 1
  %hcc_params.i.i9.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 2
  %46 = ptrtoint ptr %hcc_params.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hcc_params.i.i9.i, align 8
  %and.i.i10.i = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %and.i.i10.i, 0
  %..i.i12.i = select i1 %tobool.not.i.i11.i, i16 2560, i16 2304
  %wHubCharacteristics.i.i13.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %48 = ptrtoint ptr %wHubCharacteristics.i.i13.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %..i.i12.i, ptr %wHubCharacteristics.i.i13.i, align 1
  %bDescriptorType.i14.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %49 = ptrtoint ptr %bDescriptorType.i14.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 41, ptr %bDescriptorType.i14.i, align 1
  %div.i.i = sdiv i32 %43, 8
  %div.tr.i.i = trunc i32 %div.i.i to i8
  %50 = shl i8 %div.tr.i.i, 1
  %conv3.i.i = add i8 %50, 9
  %51 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv3.i.i, ptr %buf, align 1
  %bPwrOn2PwrGood.i15.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 4
  %52 = ptrtoint ptr %bPwrOn2PwrGood.i15.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 10, ptr %bPwrOn2PwrGood.i15.i, align 1
  %53 = ptrtoint ptr %port_removable.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %port_removable.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp2.not.i.i = icmp eq i32 %43, 0
  br i1 %cmp2.not.i.i, label %for.end.thread.i.i, label %if.else.i1316.for.body.i18.i_crit_edge

if.else.i1316.for.body.i18.i_crit_edge:           ; preds = %if.else.i1316
  br label %for.body.i18.i

for.end.thread.i.i:                               ; preds = %if.else.i1316
  call void @__sanitizer_cov_trace_pc() #11
  %u8.i.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  %54 = ptrtoint ptr %u8.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 -1, ptr %u8.i.i, align 1
  %PortPwrCtrlMask9.i.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 1
  %55 = ptrtoint ptr %PortPwrCtrlMask9.i.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 -1, ptr %PortPwrCtrlMask9.i.i, align 1
  br label %for.body22.preheader.i.i

for.body.i18.i:                                   ; preds = %for.inc.i.i.for.body.i18.i_crit_edge, %if.else.i1316.for.body.i18.i_crit_edge
  %i.03.i.i = phi i32 [ %.pre.i.i, %for.inc.i.i.for.body.i18.i_crit_edge ], [ 0, %if.else.i1316.for.body.i18.i_crit_edge ]
  %56 = ptrtoint ptr %usb2_rhub.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %usb2_rhub.i.i, align 4
  %arrayidx.i16.i = getelementptr ptr, ptr %57, i32 %i.03.i.i
  %58 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i16.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  %63 = and i32 %62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i17.i = icmp eq i32 %63, 0
  %.pre.i.i = add nuw i32 %i.03.i.i, 1
  br i1 %tobool.not.i17.i, label %for.body.i18.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i18.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  %rem.i.i = and i32 %.pre.i.i, 7
  %shl.i19.i = shl nuw nsw i32 1, %rem.i.i
  %div91.i.i = lshr i32 %.pre.i.i, 3
  %arrayidx10.i.i = getelementptr [4 x i8], ptr %port_removable.i.i, i32 0, i32 %div91.i.i
  %64 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx10.i.i, align 1
  %66 = trunc i32 %shl.i19.i to i8
  %conv12.i.i = or i8 %65, %66
  store i8 %conv12.i.i, ptr %arrayidx10.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i18.i.for.inc.i.i_crit_edge
  %exitcond.not.i20.i = icmp eq i32 %.pre.i.i, %43
  br i1 %exitcond.not.i20.i, label %for.end.i.i, label %for.inc.i.i.for.body.i18.i_crit_edge

for.inc.i.i.for.body.i18.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i18.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %u.i21.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  %67 = ptrtoint ptr %u.i21.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 -1, ptr %u.i21.i, align 1
  %PortPwrCtrlMask.i.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 1
  %68 = ptrtoint ptr %PortPwrCtrlMask.i.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 -1, ptr %PortPwrCtrlMask.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %43)
  %69 = icmp ugt i32 %43, -16
  br i1 %69, label %for.end.i.i.xhci_usb2_hub_descriptor.exit.i_crit_edge, label %for.end.i.i.for.body22.preheader.i.i_crit_edge

for.end.i.i.for.body22.preheader.i.i_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22.preheader.i.i

for.end.i.i.xhci_usb2_hub_descriptor.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_usb2_hub_descriptor.exit.i

for.body22.preheader.i.i:                         ; preds = %for.end.i.i.for.body22.preheader.i.i_crit_edge, %for.end.thread.i.i
  %add18.i.i = add nuw i32 %43, 8
  %div19.i.i = sdiv i32 %add18.i.i, 8
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div19.i.i, i32 1) #9
  %70 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  br label %for.body22.i.i

for.body22.i.i:                                   ; preds = %for.body22.i.i.for.body22.i.i_crit_edge, %for.body22.preheader.i.i
  %i.16.i.i = phi i32 [ %inc29.i.i, %for.body22.i.i.for.body22.i.i_crit_edge ], [ 0, %for.body22.preheader.i.i ]
  %arrayidx25.i.i = getelementptr [4 x i8], ptr %70, i32 0, i32 %i.16.i.i
  %arrayidx26.i.i = getelementptr [4 x i8], ptr %port_removable.i.i, i32 0, i32 %i.16.i.i
  %71 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx26.i.i, align 1
  %73 = zext i8 %72 to i32
  %74 = call ptr @memset(ptr %arrayidx25.i.i, i32 %73, i32 1)
  %inc29.i.i = add nuw i32 %i.16.i.i, 1
  %exitcond7.not.i.i = icmp eq i32 %inc29.i.i, %umax.i.i
  br i1 %exitcond7.not.i.i, label %for.body22.i.i.xhci_usb2_hub_descriptor.exit.i_crit_edge, label %for.body22.i.i.for.body22.i.i_crit_edge

for.body22.i.i.for.body22.i.i_crit_edge:          ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22.i.i

for.body22.i.i.xhci_usb2_hub_descriptor.exit.i_crit_edge: ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_usb2_hub_descriptor.exit.i

xhci_usb2_hub_descriptor.exit.i:                  ; preds = %for.body22.i.i.xhci_usb2_hub_descriptor.exit.i_crit_edge, %for.end.i.i.xhci_usb2_hub_descriptor.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_removable.i.i) #9
  br label %cleanup965

sw.bb30:                                          ; preds = %xhci_get_rhub.exit
  %75 = and i16 %wValue, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 3840, i16 %75)
  %cmp32.not = icmp eq i16 %75, 3840
  br i1 %cmp32.not, label %if.end35, label %sw.bb30.cleanup965_crit_edge

sw.bb30.cleanup965_crit_edge:                     ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

if.end35:                                         ; preds = %sw.bb30
  %76 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %77)
  %cmp37 = icmp slt i32 %77, 64
  br i1 %cmp37, label %if.end35.cleanup965_crit_edge, label %if.end40

if.end35.cleanup965_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

if.end40:                                         ; preds = %if.end35
  %78 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 5, ptr %buf, align 1
  %bDescriptorType.i = getelementptr inbounds %struct.usb_bos_descriptor, ptr %buf, i32 0, i32 1
  %79 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 15, ptr %bDescriptorType.i, align 1
  %wTotalLength.i = getelementptr inbounds %struct.usb_bos_descriptor, ptr %buf, i32 0, i32 2
  %80 = ptrtoint ptr %wTotalLength.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 3840, ptr %wTotalLength.i, align 1
  %bNumDeviceCaps.i = getelementptr inbounds %struct.usb_bos_descriptor, ptr %buf, i32 0, i32 3
  %81 = ptrtoint ptr %bNumDeviceCaps.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %bNumDeviceCaps.i, align 1
  %num_port_caps.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 15, i32 20, i32 4
  %82 = ptrtoint ptr %num_port_caps.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_port_caps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp698.not.i = icmp eq i32 %83, 0
  br i1 %cmp698.not.i, label %if.end40.if.then16.i_crit_edge, label %for.body.lr.ph.i

if.end40.if.then16.i_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

for.body.lr.ph.i:                                 ; preds = %if.end40
  %port_caps.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 15, i32 20, i32 3, i32 5
  %84 = ptrtoint ptr %port_caps.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %port_caps.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %port_cap.0701.i = phi ptr [ null, %for.body.lr.ph.i ], [ %spec.select695.i, %for.body.i.for.body.i_crit_edge ]
  %bcdUSB.0700.i = phi i16 [ -1, %for.body.lr.ph.i ], [ %spec.select694.i, %for.body.i.for.body.i_crit_edge ]
  %i.0699.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %maj_rev.i = getelementptr %struct.xhci_port_cap, ptr %85, i32 %i.0699.i, i32 3
  %86 = ptrtoint ptr %maj_rev.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %maj_rev.i, align 2
  %min_rev.i = getelementptr %struct.xhci_port_cap, ptr %85, i32 %i.0699.i, i32 4
  %88 = ptrtoint ptr %min_rev.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %min_rev.i, align 1
  %conv.i = zext i8 %87 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %conv3.i = zext i8 %89 to i16
  %or.i = or i16 %shl.i, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0699.i)
  %cmp5.i = icmp eq i32 %i.0699.i, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %bcdUSB.0700.i, i16 %or.i)
  %cmp9.i = icmp ult i16 %bcdUSB.0700.i, %or.i
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp9.i
  %arrayidx12.i = getelementptr %struct.xhci_port_cap, ptr %85, i32 %i.0699.i
  %spec.select694.i = select i1 %or.cond.i, i16 %or.i, i16 %bcdUSB.0700.i
  %spec.select695.i = select i1 %or.cond.i, ptr %arrayidx12.i, ptr %port_cap.0701.i
  %inc.i = add nuw i32 %i.0699.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %83
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 783, i16 %spec.select694.i)
  %cmp14.i = icmp ugt i16 %spec.select694.i, 783
  br i1 %cmp14.i, label %for.end.i.if.then16.i_crit_edge, label %for.end.i.if.end59.i_crit_edge

for.end.i.if.end59.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

for.end.i.if.then16.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

if.then16.i:                                      ; preds = %for.end.i.if.then16.i_crit_edge, %if.end40.if.then16.i_crit_edge
  %port_cap.0.lcssa730.i = phi ptr [ %spec.select695.i, %for.end.i.if.then16.i_crit_edge ], [ null, %if.end40.if.then16.i_crit_edge ]
  %bcdUSB.0.lcssa726.i = phi i16 [ %spec.select694.i, %for.end.i.if.then16.i_crit_edge ], [ -1, %if.end40.if.then16.i_crit_edge ]
  %psi_count.i = getelementptr inbounds %struct.xhci_port_cap, ptr %port_cap.0.lcssa730.i, i32 0, i32 1
  %90 = ptrtoint ptr %psi_count.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %psi_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i1317 = icmp eq i8 %91, 0
  br i1 %tobool.not.i1317, label %if.else.i1318, label %for.cond18.preheader.i

for.cond18.preheader.i:                           ; preds = %if.then16.i
  %conv20.i = zext i8 %91 to i32
  %92 = ptrtoint ptr %port_cap.0.lcssa730.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %port_cap.0.lcssa730.i, align 4
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %for.cond18.preheader.i
  %i.1704.i = phi i32 [ 0, %for.cond18.preheader.i ], [ %inc31.i, %for.body23.i.for.body23.i_crit_edge ]
  %num_sym_ssa.0703.i = phi i8 [ 0, %for.cond18.preheader.i ], [ %spec.select.i, %for.body23.i.for.body23.i_crit_edge ]
  %arrayidx24.i = getelementptr i32, ptr %93, i32 %i.1704.i
  %94 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx24.i, align 4
  %and.i = and i32 %95, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp25.i = icmp eq i32 %and.i, 0
  %inc28.i = zext i1 %cmp25.i to i8
  %spec.select.i = add i8 %num_sym_ssa.0703.i, %inc28.i
  %inc31.i = add nuw nsw i32 %i.1704.i, 1
  %exitcond721.not.i = icmp eq i32 %inc31.i, %conv20.i
  br i1 %exitcond721.not.i, label %for.end32.i, label %for.body23.i.for.body23.i_crit_edge

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23.i

for.end32.i:                                      ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i8 %91, -1
  %sub.i = add i8 %add.i, %spec.select.i
  %psi_uid_count.i = getelementptr inbounds %struct.xhci_port_cap, ptr %port_cap.0.lcssa730.i, i32 0, i32 2
  %96 = ptrtoint ptr %psi_uid_count.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %psi_uid_count.i, align 1
  br label %if.end50.i

if.else.i1318:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 799, i16 %bcdUSB.0.lcssa726.i)
  %cmp41.i = icmp ugt i16 %bcdUSB.0.lcssa726.i, 799
  %..i = select i1 %cmp41.i, i8 7, i8 3
  %narrow.i = add nuw nsw i8 %..i, 1
  %98 = lshr exact i8 %narrow.i, 1
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else.i1318, %for.end32.i
  %ssic.0.in.i = phi i8 [ %97, %for.end32.i ], [ %98, %if.else.i1318 ]
  %ssac.1.i = phi i8 [ %sub.i, %for.end32.i ], [ %..i, %if.else.i1318 ]
  %ssic.0.i = add i8 %ssic.0.in.i, 15
  %99 = ptrtoint ptr %bNumDeviceCaps.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 2, ptr %bNumDeviceCaps.i, align 1
  %conv53.i = zext i8 %ssac.1.i to i16
  %add54.i = shl nuw nsw i16 %conv53.i, 2
  %add56.i = add nuw nsw i16 %add54.i, 31
  %100 = tail call i16 @llvm.bswap.i16(i16 %add56.i) #9
  %101 = ptrtoint ptr %wTotalLength.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 %100, ptr %wTotalLength.i, align 1
  %phi.cast = zext i8 %ssic.0.i to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 5
  %phi.bo1362 = and i32 %phi.bo, 480
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end50.i, %for.end.i.if.end59.i_crit_edge
  %port_cap.0.lcssa729.i = phi ptr [ %port_cap.0.lcssa730.i, %if.end50.i ], [ %spec.select695.i, %for.end.i.if.end59.i_crit_edge ]
  %bcdUSB.0.lcssa727.i = phi i16 [ %bcdUSB.0.lcssa726.i, %if.end50.i ], [ %spec.select694.i, %for.end.i.if.end59.i_crit_edge ]
  %ssic.1.i = phi i32 [ %phi.bo1362, %if.end50.i ], [ 480, %for.end.i.if.end59.i_crit_edge ]
  %ssac.2.i = phi i8 [ %ssac.1.i, %if.end50.i ], [ -1, %for.end.i.if.end59.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %wLength)
  %cmp61.i = icmp ult i16 %wLength, 15
  br i1 %cmp61.i, label %if.end59.i.xhci_create_usb3x_bos_desc.exit_crit_edge, label %if.end65.i

if.end59.i.xhci_create_usb3x_bos_desc.exit_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_create_usb3x_bos_desc.exit

if.end65.i:                                       ; preds = %if.end59.i
  %arrayidx66.i = getelementptr i8, ptr %buf, i32 5
  %102 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 10, ptr %arrayidx66.i, align 1
  %bDescriptorType68.i = getelementptr i8, ptr %buf, i32 6
  %103 = ptrtoint ptr %bDescriptorType68.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 16, ptr %bDescriptorType68.i, align 1
  %bDevCapabilityType.i = getelementptr i8, ptr %buf, i32 7
  %104 = ptrtoint ptr %bDevCapabilityType.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 3, ptr %bDevCapabilityType.i, align 1
  %bmAttributes.i = getelementptr i8, ptr %buf, i32 8
  %105 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %bmAttributes.i, align 1
  %wSpeedSupported.i = getelementptr i8, ptr %buf, i32 9
  %106 = ptrtoint ptr %wSpeedSupported.i to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 2048, ptr %wSpeedSupported.i, align 1
  %bFunctionalitySupport.i = getelementptr i8, ptr %buf, i32 11
  %107 = ptrtoint ptr %bFunctionalitySupport.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %bFunctionalitySupport.i, align 1
  %bU1devExitLat.i = getelementptr i8, ptr %buf, i32 12
  %108 = ptrtoint ptr %bU1devExitLat.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %bU1devExitLat.i, align 1
  %bU2DevExitLat.i = getelementptr i8, ptr %buf, i32 13
  %109 = ptrtoint ptr %bU2DevExitLat.i to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 0, ptr %bU2DevExitLat.i, align 1
  %cap_regs.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 2
  %110 = ptrtoint ptr %cap_regs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cap_regs.i, align 8
  %hcc_params.i = getelementptr inbounds %struct.xhci_cap_regs, ptr %111, i32 0, i32 4
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hcc_params.i) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %113 = and i32 %112, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool71.not.i = icmp eq i32 %113, 0
  br i1 %tobool71.not.i, label %if.end65.i.if.end77.i_crit_edge, label %if.then72.i

if.end65.i.if.end77.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then72.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %bmAttributes.i, align 1
  %116 = or i8 %115, 2
  store i8 %116, ptr %bmAttributes.i, align 1
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then72.i, %if.end65.i.if.end77.i_crit_edge
  %quirks.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  %117 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %quirks.i, align 8
  %and78.i = and i64 %118, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and78.i)
  %tobool79.not.i = icmp eq i64 %and78.i, 0
  br i1 %tobool79.not.i, label %if.end77.i.if.end94.i_crit_edge, label %if.then80.i

if.end77.i.if.end94.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i

if.then80.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %cap_regs.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cap_regs.i, align 8
  %hcs_params3.i = getelementptr inbounds %struct.xhci_cap_regs, ptr %120, i32 0, i32 3
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hcs_params3.i) #9, !srcloc !199
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !209
  %conv88.i = trunc i32 %122 to i8
  %123 = ptrtoint ptr %bU1devExitLat.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv88.i, ptr %bU1devExitLat.i, align 1
  %shr90.i = lshr i32 %122, 16
  %conv92.i = trunc i32 %shr90.i to i16
  %124 = tail call i16 @llvm.bswap.i16(i16 %conv92.i) #9
  %125 = ptrtoint ptr %bU2DevExitLat.i to i32
  call void @__asan_storeN_noabort(i32 %125, i32 2)
  store i16 %124, ptr %bU2DevExitLat.i, align 1
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then80.i, %if.end77.i.if.end94.i_crit_edge
  %126 = ptrtoint ptr %wTotalLength.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %wTotalLength.i, align 1
  %128 = tail call i16 @llvm.bswap.i16(i16 %127) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %128, i16 %wLength)
  %cmp98.i = icmp ugt i16 %128, %wLength
  br i1 %cmp98.i, label %if.end94.i.xhci_create_usb3x_bos_desc.exit_crit_edge, label %if.end102.i

if.end94.i.xhci_create_usb3x_bos_desc.exit_crit_edge: ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_create_usb3x_bos_desc.exit

if.end102.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 784, i16 %bcdUSB.0.lcssa727.i)
  %cmp104.i = icmp ult i16 %bcdUSB.0.lcssa727.i, 784
  br i1 %cmp104.i, label %if.end102.i.xhci_create_usb3x_bos_desc.exit_crit_edge, label %if.end109.i

if.end102.i.xhci_create_usb3x_bos_desc.exit_crit_edge: ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_create_usb3x_bos_desc.exit

if.end109.i:                                      ; preds = %if.end102.i
  %arrayidx110.i = getelementptr i8, ptr %buf, i32 15
  %conv111.i = zext i8 %ssac.2.i to i32
  %add112.i = shl i8 %ssac.2.i, 2
  %conv115.i = add i8 %add112.i, 16
  %129 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv115.i, ptr %arrayidx110.i, align 1
  %bDescriptorType117.i = getelementptr i8, ptr %buf, i32 16
  %130 = ptrtoint ptr %bDescriptorType117.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 16, ptr %bDescriptorType117.i, align 1
  %bDevCapabilityType118.i = getelementptr i8, ptr %buf, i32 17
  %131 = ptrtoint ptr %bDevCapabilityType118.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 10, ptr %bDevCapabilityType118.i, align 1
  %bReserved.i = getelementptr i8, ptr %buf, i32 18
  %132 = ptrtoint ptr %bReserved.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %bReserved.i, align 1
  %wReserved.i = getelementptr i8, ptr %buf, i32 25
  %133 = ptrtoint ptr %wReserved.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 0, ptr %wReserved.i, align 1
  %and139.i = and i32 %conv111.i, 31
  %or166.i = or i32 %and139.i, %ssic.1.i
  %134 = tail call i32 @llvm.bswap.i32(i32 %or166.i) #9
  %bmAttributes167.i = getelementptr i8, ptr %buf, i32 19
  %135 = ptrtoint ptr %bmAttributes167.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 4)
  store i32 %134, ptr %bmAttributes167.i, align 1
  %psi_count168.i = getelementptr inbounds %struct.xhci_port_cap, ptr %port_cap.0.lcssa729.i, i32 0, i32 1
  %136 = ptrtoint ptr %psi_count168.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %psi_count168.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool169.not.i = icmp eq i8 %137, 0
  br i1 %tobool169.not.i, label %for.cond171.preheader.i, label %for.body188.lr.ph.i

for.body188.lr.ph.i:                              ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 800, i16 %bcdUSB.0.lcssa727.i)
  %cmp231.i = icmp eq i16 %bcdUSB.0.lcssa727.i, 800
  %bmSublinkSpeedAttr473.i = getelementptr i8, ptr %buf, i32 27
  br label %for.body188.i

for.cond171.preheader.i:                          ; preds = %if.end109.i
  %bmSublinkSpeedAttr.i = getelementptr i8, ptr %buf, i32 27
  br label %for.body176.i

for.body176.i:                                    ; preds = %for.body176.i.for.body176.i_crit_edge, %for.cond171.preheader.i
  %i.2718.i = phi i32 [ 0, %for.cond171.preheader.i ], [ %inc180.i, %for.body176.i.for.body176.i_crit_edge ]
  %arrayidx177.i = getelementptr [8 x i32], ptr @ssp_cap_default_ssa, i32 0, i32 %i.2718.i
  %138 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx177.i, align 4
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #9
  %arrayidx178.i = getelementptr [1 x i32], ptr %bmSublinkSpeedAttr.i, i32 0, i32 %i.2718.i
  %141 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_storeN_noabort(i32 %141, i32 4)
  store i32 %140, ptr %arrayidx178.i, align 1
  %inc180.i = add nuw nsw i32 %i.2718.i, 1
  %exitcond722.i = icmp eq i32 %i.2718.i, %conv111.i
  br i1 %exitcond722.i, label %for.body176.i.do.end500.i_crit_edge, label %for.body176.i.for.body176.i_crit_edge

for.body176.i.for.body176.i_crit_edge:            ; preds = %for.body176.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body176.i

for.body176.i.do.end500.i_crit_edge:              ; preds = %for.body176.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end500.i

for.body188.i:                                    ; preds = %sw.epilog.i.for.body188.i_crit_edge, %for.body188.lr.ph.i
  %min_rate.0716.i = phi i32 [ 0, %for.body188.lr.ph.i ], [ %min_rate.1.i, %sw.epilog.i.for.body188.i_crit_edge ]
  %min_ssid.0715.i = phi i8 [ -1, %for.body188.lr.ph.i ], [ %min_ssid.1.i, %sw.epilog.i.for.body188.i_crit_edge ]
  %offset.0714.i = phi i32 [ 0, %for.body188.lr.ph.i ], [ %offset.1.i, %sw.epilog.i.for.body188.i_crit_edge ]
  %i.3711.i = phi i32 [ 0, %for.body188.lr.ph.i ], [ %inc477.i, %sw.epilog.i.for.body188.i_crit_edge ]
  %142 = ptrtoint ptr %port_cap.0.lcssa729.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %port_cap.0.lcssa729.i, align 4
  %arrayidx191.i = getelementptr i32, ptr %143, i32 %i.3711.i
  %144 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx191.i, align 4
  %146 = trunc i32 %145 to i8
  %conv194.i = and i8 %146, 15
  %conv197.i = and i32 %145, 49152
  %147 = lshr i8 %146, 4
  %conv200.i = and i8 %147, 3
  %shr201.i = lshr i32 %145, 16
  %conv203.i = trunc i32 %shr201.i to i16
  %148 = trunc i32 %145 to i16
  %conv205.i = and i16 %148, 192
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv200.i)
  %cmp208705.not.i = icmp eq i8 %conv200.i, 3
  %149 = udiv i16 %conv203.i, 1000
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv200.i)
  %cmp208.i = icmp ult i8 %conv200.i, 2
  %spec.select = select i1 %cmp208.i, i16 0, i16 %149
  %psim.0.lcssa.i = select i1 %cmp208705.not.i, i16 %conv203.i, i16 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_rate.0716.i)
  %tobool217.not.i = icmp eq i32 %min_rate.0716.i, 0
  %conv219.i = zext i16 %psim.0.lcssa.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_rate.0716.i, i32 %conv219.i)
  %cmp220.i = icmp ugt i32 %min_rate.0716.i, %conv219.i
  %or.cond679.i = select i1 %tobool217.not.i, i1 true, i1 %cmp220.i
  %min_ssid.1.i = select i1 %or.cond679.i, i8 %conv194.i, i8 %min_ssid.0715.i
  %min_rate.1.i = select i1 %or.cond679.i, i32 %conv219.i, i32 %min_rate.0716.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %psim.0.lcssa.i)
  %cmp226.i = icmp ugt i16 %psim.0.lcssa.i, 9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv205.i)
  %cmp234.i = icmp eq i16 %conv205.i, 0
  %or.cond680.i = select i1 %cmp231.i, i1 %cmp234.i, i1 false
  br i1 %or.cond680.i, label %if.then236.i, label %for.body188.i.do.end386.i_crit_edge

for.body188.i.do.end386.i_crit_edge:              ; preds = %for.body188.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end386.i

if.then236.i:                                     ; preds = %for.body188.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv194.i)
  %cmp238.i = icmp ne i8 %conv194.i, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %psim.0.lcssa.i)
  %cmp246.i = icmp ne i16 %psim.0.lcssa.i, 10
  %or.cond682.i = select i1 %cmp238.i, i1 true, i1 %cmp246.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3711.i)
  %tobool249.not.i = icmp eq i32 %i.3711.i, 0
  %or.cond683.i = select i1 %or.cond682.i, i1 true, i1 %tobool249.not.i
  br i1 %or.cond683.i, label %if.then236.i.if.end274.i_crit_edge, label %if.then250.i

if.then236.i.if.end274.i_crit_edge:               ; preds = %if.then236.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end274.i

if.then250.i:                                     ; preds = %if.then236.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub252.i = add nsw i32 %i.3711.i, -1
  %arrayidx253.i = getelementptr i32, ptr %143, i32 %sub252.i
  %150 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx253.i, align 4
  %152 = and i32 %151, -65281
  call void @__sanitizer_cov_trace_const_cmp4(i32 655413, i32 %152)
  %153 = icmp eq i32 %152, 655413
  %lse.0.i = select i1 %153, i8 3, i8 %conv200.i
  %lane_mantissa.0.i = select i1 %153, i32 5, i32 %shr201.i
  br label %if.end274.i

if.end274.i:                                      ; preds = %if.then250.i, %if.then236.i.if.end274.i_crit_edge
  %lse.1.i = phi i8 [ %lse.0.i, %if.then250.i ], [ %conv200.i, %if.then236.i.if.end274.i_crit_edge ]
  %lane_mantissa.1.i = phi i32 [ %lane_mantissa.0.i, %if.then250.i ], [ %shr201.i, %if.then236.i.if.end274.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %psim.0.lcssa.i)
  %cmp280.i = icmp ugt i16 %psim.0.lcssa.i, 10
  %spec.select692.i = select i1 %cmp280.i, i8 3, i8 %lse.1.i
  %spec.select693.i = select i1 %cmp280.i, i32 10, i32 %lane_mantissa.1.i
  br label %do.end386.i

do.end386.i:                                      ; preds = %if.end274.i, %for.body188.i.do.end386.i_crit_edge
  %lse.2.i = phi i8 [ %conv200.i, %for.body188.i.do.end386.i_crit_edge ], [ %spec.select692.i, %if.end274.i ]
  %lane_mantissa.2.i = phi i32 [ %shr201.i, %for.body188.i.do.end386.i_crit_edge ], [ %spec.select693.i, %if.end274.i ]
  %and310.i = and i32 %145, 15
  %conv334.i = select i1 %cmp226.i, i32 16384, i32 %conv197.i
  %or337.i = or i32 %conv334.i, %and310.i
  %conv361.i = zext i8 %lse.2.i to i32
  %shl362.i = shl nuw nsw i32 %conv361.i, 4
  %and363.i = and i32 %shl362.i, 48
  %or364.i = or i32 %or337.i, %and363.i
  %conv388.i = shl i32 %lane_mantissa.2.i, 16
  %and390.i = and i32 %conv388.i, 16711680
  %or391.i = or i32 %or364.i, %and390.i
  %trunc.i = trunc i16 %conv205.i to i8
  %154 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %trunc.i, label %do.end386.i.sw.epilog.i_crit_edge [
    i8 0, label %do.end407.i
    i8 -128, label %do.end386.i.sw.epilog.sink.split.i_crit_edge
    i8 -64, label %do.end470.i
  ]

do.end386.i.sw.epilog.sink.split.i_crit_edge:     ; preds = %do.end386.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

do.end386.i.sw.epilog.i_crit_edge:                ; preds = %do.end386.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end407.i:                                      ; preds = %do.end386.i
  call void @__sanitizer_cov_trace_pc() #11
  %155 = tail call i32 @llvm.bswap.i32(i32 %or391.i) #9
  %inc411.i = add i32 %offset.0714.i, 1
  %arrayidx412.i = getelementptr [1 x i32], ptr %bmSublinkSpeedAttr473.i, i32 0, i32 %offset.0714.i
  %156 = ptrtoint ptr %arrayidx412.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store i32 %155, ptr %arrayidx412.i, align 1
  br label %sw.epilog.sink.split.i

do.end470.i:                                      ; preds = %do.end386.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %do.end470.i, %do.end407.i, %do.end386.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 192, %do.end470.i ], [ 128, %do.end407.i ], [ 64, %do.end386.i.sw.epilog.sink.split.i_crit_edge ]
  %.sink733.i = phi i32 [ 1, %do.end470.i ], [ 2, %do.end407.i ], [ 1, %do.end386.i.sw.epilog.sink.split.i_crit_edge ]
  %offset.0714.sink.i = phi i32 [ %offset.0714.i, %do.end470.i ], [ %inc411.i, %do.end407.i ], [ %offset.0714.i, %do.end386.i.sw.epilog.sink.split.i_crit_edge ]
  %or472.i = or i32 %.sink.i, %or391.i
  %157 = tail call i32 @llvm.bswap.i32(i32 %or472.i) #9
  %inc474.i = add i32 %.sink733.i, %offset.0714.i
  %arrayidx475.i = getelementptr [1 x i32], ptr %bmSublinkSpeedAttr473.i, i32 0, i32 %offset.0714.sink.i
  %158 = ptrtoint ptr %arrayidx475.i to i32
  call void @__asan_storeN_noabort(i32 %158, i32 4)
  store i32 %157, ptr %arrayidx475.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %do.end386.i.sw.epilog.i_crit_edge
  %offset.1.i = phi i32 [ %offset.0714.i, %do.end386.i.sw.epilog.i_crit_edge ], [ %inc474.i, %sw.epilog.sink.split.i ]
  %inc477.i = add nuw nsw i32 %i.3711.i, 1
  %159 = ptrtoint ptr %psi_count168.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %psi_count168.i, align 4
  %conv185.i = zext i8 %160 to i32
  %cmp186.i = icmp ult i32 %inc477.i, %conv185.i
  br i1 %cmp186.i, label %sw.epilog.i.for.body188.i_crit_edge, label %do.body485.i.loopexit1361

sw.epilog.i.for.body188.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body188.i

do.body485.i.loopexit1361:                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo1363 = and i8 %min_ssid.1.i, 15
  br label %do.end500.i

do.end500.i:                                      ; preds = %do.body485.i.loopexit1361, %for.body176.i.do.end500.i_crit_edge
  %min_ssid.2.i = phi i8 [ %phi.bo1363, %do.body485.i.loopexit1361 ], [ 4, %for.body176.i.do.end500.i_crit_edge ]
  %and504.i = zext i8 %min_ssid.2.i to i16
  %or538.i = or i16 %and504.i, 4352
  %161 = tail call i16 @llvm.bswap.i16(i16 %or538.i) #9
  %wFunctionalitySupport.i = getelementptr i8, ptr %buf, i32 23
  %162 = ptrtoint ptr %wFunctionalitySupport.i to i32
  call void @__asan_storeN_noabort(i32 %162, i32 2)
  store i16 %161, ptr %wFunctionalitySupport.i, align 1
  %163 = ptrtoint ptr %wTotalLength.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 2)
  %164 = load i16, ptr %wTotalLength.i, align 1
  %165 = tail call i16 @llvm.bswap.i16(i16 %164) #9
  br label %xhci_create_usb3x_bos_desc.exit

xhci_create_usb3x_bos_desc.exit:                  ; preds = %do.end500.i, %if.end102.i.xhci_create_usb3x_bos_desc.exit_crit_edge, %if.end94.i.xhci_create_usb3x_bos_desc.exit_crit_edge, %if.end59.i.xhci_create_usb3x_bos_desc.exit_crit_edge
  %retval.0.in.i = phi i16 [ %165, %do.end500.i ], [ %wLength, %if.end59.i.xhci_create_usb3x_bos_desc.exit_crit_edge ], [ %wLength, %if.end94.i.xhci_create_usb3x_bos_desc.exit_crit_edge ], [ %128, %if.end102.i.xhci_create_usb3x_bos_desc.exit_crit_edge ]
  %retval.0.i1319 = zext i16 %retval.0.in.i to i32
  br label %cleanup965

sw.bb43:                                          ; preds = %xhci_get_rhub.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %tobool44.not = icmp eq i16 %wIndex, 0
  %conv46 = zext i16 %wIndex to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv46)
  %cmp47 = icmp slt i32 %9, %conv46
  %or.cond1270 = select i1 %tobool44.not, i1 true, i1 %cmp47
  br i1 %or.cond1270, label %sw.bb43.cleanup965_crit_edge, label %if.end50

sw.bb43.cleanup965_crit_edge:                     ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

if.end50:                                         ; preds = %sw.bb43
  %dec = add i16 %wIndex, -1
  %idxprom = zext i16 %dec to i32
  %arrayidx = getelementptr ptr, ptr %7, i32 %idxprom
  %166 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #9, !srcloc !199
  %171 = tail call i32 @llvm.bswap.i32(i32 %170)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %170)
  %cmp54 = icmp eq i32 %170, -1
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xhci_hc_died(ptr noundef %hcd_priv.i) #9
  br label %cleanup965

if.end57:                                         ; preds = %if.end50
  tail call fastcc void @trace_xhci_get_port_status(i32 noundef %idxprom, i32 noundef %171)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %172 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %status.i, align 4
  %call.i.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i1320 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i1320, label %if.else.i.i.i, label %if.end57.xhci_get_rhub.exit.i_crit_edge

if.end57.xhci_get_rhub.exit.i_crit_edge:          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_get_rhub.exit.i

if.else.i.i.i:                                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %173 = ptrtoint ptr %primary_hcd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %primary_hcd1.i.i.i, align 8
  br label %xhci_get_rhub.exit.i

xhci_get_rhub.exit.i:                             ; preds = %if.else.i.i.i, %if.end57.xhci_get_rhub.exit.i_crit_edge
  %primary_hcd.0.i.i.i = phi ptr [ %174, %if.else.i.i.i ], [ %hcd, %if.end57.xhci_get_rhub.exit.i_crit_edge ]
  %175 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %176)
  %cmp.i.i = icmp sgt i32 %176, 63
  %usb3_rhub.i.i1321 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1
  %usb2_rhub.i.i1322 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i.i, i32 3, i32 16
  %retval.0.i.i = select i1 %cmp.i.i, ptr %usb3_rhub.i.i1321, ptr %usb2_rhub.i.i1322
  %177 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %retval.0.i.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %178, i32 %idxprom
  %179 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx.i, align 4
  %and.i1323 = and i32 %171, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1323)
  %tobool.not.i1324 = icmp eq i32 %and.i1323, 0
  br i1 %tobool.not.i1324, label %xhci_get_rhub.exit.i.if.end.i_crit_edge, label %if.then.i1326

xhci_get_rhub.exit.i.if.end.i_crit_edge:          ; preds = %xhci_get_rhub.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i1326:                                    ; preds = %xhci_get_rhub.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %181 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %status.i, align 4
  %or.i1325 = or i32 %182, 65536
  store i32 %or.i1325, ptr %status.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i1326, %xhci_get_rhub.exit.i.if.end.i_crit_edge
  %and1.i = and i32 %171, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %183 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %status.i, align 4
  %or4.i = or i32 %184, 131072
  store i32 %or4.i, ptr %status.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %and6.i = and i32 %171, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end10.i_crit_edge, label %if.then8.i

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %185 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %status.i, align 4
  %or9.i = or i32 %186, 524288
  store i32 %or9.i, ptr %status.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end10.i_crit_edge
  %and11.i = and i32 %171, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end15.i_crit_edge, label %if.then13.i

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %187 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %status.i, align 4
  %or14.i = or i32 %188, 1048576
  store i32 %or14.i, ptr %status.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end15.i_crit_edge
  %and16.i = and i32 %171, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end22.i_crit_edge, label %if.then18.i

if.end15.i.if.end22.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %189 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %status.i, align 4
  %and.i91.i = and i32 %171, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %and.i91.i)
  %switch.selectcmp.i.i = icmp eq i32 %and.i91.i, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i91.i)
  %switch.selectcmp6.i.i = icmp eq i32 %and.i91.i, 2048
  %switch.select.i.op.i = select i1 %switch.selectcmp.i.i, i32 1025, i32 1
  %or19.i = select i1 %switch.selectcmp6.i.i, i32 513, i32 %switch.select.i.op.i
  %or21.i = or i32 %190, %or19.i
  %191 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %or21.i, ptr %status.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end22.i_crit_edge
  %and23.i = and i32 %171, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end27.i_crit_edge, label %if.then25.i

if.end22.i.if.end27.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %192 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %status.i, align 4
  %or26.i = or i32 %193, 2
  store i32 %or26.i, ptr %status.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end27.i_crit_edge
  %and28.i = and i32 %171, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.if.end32.i_crit_edge, label %if.then30.i

if.end27.i.if.end32.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %194 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %status.i, align 4
  %or31.i = or i32 %195, 8
  store i32 %or31.i, ptr %status.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %if.end27.i.if.end32.i_crit_edge
  %and33.i = and i32 %171, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end37.i_crit_edge, label %if.then35.i

if.end32.i.if.end37.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %196 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %status.i, align 4
  %or36.i = or i32 %197, 16
  store i32 %or36.i, ptr %status.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end37.i_crit_edge
  %rhub.i.i = getelementptr inbounds %struct.xhci_port, ptr %180, i32 0, i32 3
  %198 = ptrtoint ptr %rhub.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %rhub.i.i, align 4
  br i1 %cmp.i.i, label %if.then38.i, label %if.else.i1331

if.then38.i:                                      ; preds = %if.end37.i
  %hcd3.i.i = getelementptr inbounds %struct.xhci_hub, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %hcd3.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hcd3.i.i, align 4
  %call.i.i92.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %201) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i92.i)
  %tobool.not.i.i93.i = icmp eq i32 %call.i.i92.i, 0
  br i1 %tobool.not.i.i93.i, label %if.else.i.i95.i, label %if.then38.i.hcd_to_xhci.exit.i.i_crit_edge

if.then38.i.hcd_to_xhci.exit.i.i_crit_edge:       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hcd_to_xhci.exit.i.i

if.else.i.i95.i:                                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i.i94.i = getelementptr inbounds %struct.usb_hcd, ptr %201, i32 0, i32 25
  %202 = ptrtoint ptr %primary_hcd1.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %primary_hcd1.i.i94.i, align 8
  br label %hcd_to_xhci.exit.i.i

hcd_to_xhci.exit.i.i:                             ; preds = %if.else.i.i95.i, %if.then38.i.hcd_to_xhci.exit.i.i_crit_edge
  %primary_hcd.0.i.i96.i = phi ptr [ %203, %if.else.i.i95.i ], [ %201, %if.then38.i.hcd_to_xhci.exit.i.i_crit_edge ]
  %hcd_priv.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i96.i, i32 0, i32 30
  %204 = ptrtoint ptr %rhub.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rhub.i.i, align 4
  %hcd5.i.i = getelementptr inbounds %struct.xhci_hub, ptr %205, i32 0, i32 2
  %206 = ptrtoint ptr %hcd5.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %hcd5.i.i, align 4
  %and.i97.i = and i32 %171, 480
  %hcd_portnum.i.i = getelementptr inbounds %struct.xhci_port, ptr %180, i32 0, i32 2
  %208 = ptrtoint ptr %hcd_portnum.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %hcd_portnum.i.i, align 4
  %and6.i.i = and i32 %171, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool.not.i.i1327 = icmp eq i32 %and6.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %and.i97.i)
  %cmp.not.i.i = icmp eq i32 %and.i97.i, 480
  %or.cond.i.i = or i1 %tobool.not.i.i1327, %cmp.not.i.i
  br i1 %or.cond.i.i, label %hcd_to_xhci.exit.i.i.if.end.i.i_crit_edge, label %if.then.i.i1328

hcd_to_xhci.exit.i.i.if.end.i.i_crit_edge:        ; preds = %hcd_to_xhci.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i1328:                                  ; preds = %hcd_to_xhci.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %210 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %status.i, align 4
  %or.i.i = or i32 %211, 4194304
  store i32 %or.i.i, ptr %status.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i1328, %hcd_to_xhci.exit.i.i.if.end.i.i_crit_edge
  %and7.i.i = and i32 %171, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then9.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %212 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %status.i, align 4
  %or10.i.i = or i32 %213, 2097152
  store i32 %or10.i.i, ptr %status.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then9.i.i, %if.end.i.i.if.end11.i.i_crit_edge
  %and12.i.i = and i32 %171, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end11.i.i.if.end16.i.i_crit_edge, label %if.then14.i.i

if.end11.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %214 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %status.i, align 4
  %or15.i.i = or i32 %215, 8388608
  store i32 %or15.i.i, ptr %status.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then14.i.i, %if.end11.i.i.if.end16.i.i_crit_edge
  %and17.i.i = and i32 %171, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end16.i.i.if.end25.i.i_crit_edge, label %if.then19.i.i

if.end16.i.i.if.end25.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i

if.then19.i.i:                                    ; preds = %if.end16.i.i
  %216 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %status.i, align 4
  %or20.i.i = or i32 %217, 512
  store i32 %or20.i.i, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97.i)
  %cmp21.i.i = icmp eq i32 %and.i97.i, 0
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.then19.i.i.if.end25.i.i_crit_edge

if.then19.i.i.if.end25.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i

if.then22.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i1329 = shl nuw i32 1, %209
  %neg.i.i = xor i32 %shl.i.i1329, -1
  %suspended_ports.i.i = getelementptr inbounds %struct.xhci_hub, ptr %199, i32 0, i32 3, i32 3
  %218 = ptrtoint ptr %suspended_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %suspended_ports.i.i, align 4
  %and23.i.i = and i32 %219, %neg.i.i
  store i32 %and23.i.i, ptr %suspended_ports.i.i, align 4
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then22.i.i, %if.then19.i.i.if.end25.i.i_crit_edge, %if.end16.i.i.if.end25.i.i_crit_edge
  %port_remote_wakeup.i.i = getelementptr inbounds %struct.xhci_hub, ptr %199, i32 0, i32 3, i32 4
  %220 = ptrtoint ptr %port_remote_wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %port_remote_wakeup.i.i, align 4
  %shl26.i.i = shl nuw i32 1, %209
  %and27.i.i = and i32 %221, %shl26.i.i
  %and27.fr.i.i = freeze i32 %and27.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.fr.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.fr.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end25.i.i.if.end38.i.i_crit_edge, label %switch.early.test.i.i

if.end25.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i

switch.early.test.i.i:                            ; preds = %if.end25.i.i
  %222 = zext i32 %and.i97.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %222, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %and.i97.i, label %if.then33.i.i [
    i32 480, label %switch.early.test.i.i.if.end38.i.i_crit_edge
    i32 256, label %switch.early.test.i.i.if.end38.i.i_crit_edge1364
  ]

switch.early.test.i.i.if.end38.i.i_crit_edge1364: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i

switch.early.test.i.i.if.end38.i.i_crit_edge:     ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i

if.then33.i.i:                                    ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %neg35.i.i = xor i32 %shl26.i.i, -1
  %and37.i.i = and i32 %221, %neg35.i.i
  %223 = ptrtoint ptr %port_remote_wakeup.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %and37.i.i, ptr %port_remote_wakeup.i.i, align 4
  tail call void @usb_hcd_end_port_resume(ptr noundef %207, i32 noundef %209) #9
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then33.i.i, %switch.early.test.i.i.if.end38.i.i_crit_edge, %switch.early.test.i.i.if.end38.i.i_crit_edge1364, %if.end25.i.i.if.end38.i.i_crit_edge
  %and1.i.i.i = and i32 %171, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i64.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i64.i.i, label %if.else.i65.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %and.i97.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i97.i, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and.i97.i)
  %cmp2.not.i.i.i = icmp eq i32 %and.i97.i, 192
  %phi.bo.i.i.i = select i1 %cmp2.not.i.i.i, i32 193, i32 321
  %pls.0.i.i.i = select i1 %cmp.not.i.i.i, i32 321, i32 %phi.bo.i.i.i
  br label %xhci_hub_report_usb3_link_state.exit.i.i

if.else.i65.i.i:                                  ; preds = %if.end38.i.i
  br i1 %cmp.not.i.i, label %if.else.i65.i.i.xhci_hub_report_usb3_link_state.exit.i.i_crit_edge, label %if.end7.i.i.i

if.else.i65.i.i.xhci_hub_report_usb3_link_state.exit.i.i_crit_edge: ; preds = %if.else.i65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_hub_report_usb3_link_state.exit.i.i

if.end7.i.i.i:                                    ; preds = %if.else.i65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %quirks.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i96.i, i32 3, i32 11
  %224 = ptrtoint ptr %quirks.i.i.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %quirks.i.i.i, align 8
  %and8.i.i.i = and i64 %225, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp ne i64 %and8.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %and.i97.i)
  %cmp11.i.i.i = icmp eq i32 %and.i97.i, 320
  %or.cond.i.i.i = and i1 %cmp11.i.i.i, %tobool9.not.i.i.i
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i32 321, i32 %and.i97.i
  br label %xhci_hub_report_usb3_link_state.exit.i.i

xhci_hub_report_usb3_link_state.exit.i.i:         ; preds = %if.end7.i.i.i, %if.else.i65.i.i.xhci_hub_report_usb3_link_state.exit.i.i_crit_edge, %if.then.i.i.i
  %pls.1.sink.i.i.i = phi i32 [ 96, %if.else.i65.i.i.xhci_hub_report_usb3_link_state.exit.i.i_crit_edge ], [ %pls.0.i.i.i, %if.then.i.i.i ], [ %spec.select.i.i.i, %if.end7.i.i.i ]
  %226 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %status.i, align 4
  %or16.i.i.i = or i32 %227, %pls.1.sink.i.i.i
  store i32 %or16.i.i.i, ptr %status.i, align 4
  %num_ports.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i96.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %228 = ptrtoint ptr %num_ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %num_ports.i.i.i, align 4
  %notmask.i.i.i = shl nsw i32 -1, %229
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %quirks.i66.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i96.i, i32 3, i32 11
  %230 = ptrtoint ptr %quirks.i66.i.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %quirks.i66.i.i, align 8
  %and1.i67.i.i = and i64 %231, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i67.i.i)
  %tobool.not.i68.i.i = icmp eq i64 %and1.i67.i.i, 0
  br i1 %tobool.not.i68.i.i, label %xhci_hub_report_usb3_link_state.exit.i.i.if.end39.i_crit_edge, label %if.end.i.i.i

xhci_hub_report_usb3_link_state.exit.i.i.if.end39.i_crit_edge: ; preds = %xhci_hub_report_usb3_link_state.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.end.i.i.i:                                     ; preds = %xhci_hub_report_usb3_link_state.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97.i)
  %cmp.i.i.i = icmp ne i32 %and.i97.i, 0
  %port_status_u0.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i96.i, i32 15, i32 21, i32 2
  %232 = ptrtoint ptr %port_status_u0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %port_status_u0.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %233, i32 %sub.i.i.i)
  %cmp2.not.i70.i.i = icmp eq i32 %233, %sub.i.i.i
  %brmerge.i.i.i = or i1 %cmp.i.i.i, %cmp2.not.i70.i.i
  br i1 %brmerge.i.i.i, label %if.end.i.i.i.if.end39.i_crit_edge, label %if.then4.i.i.i

if.end.i.i.i.if.end39.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %conv.i.i.i1330 = and i32 %209, 65535
  %shl5.i.i.i = shl nuw i32 1, %conv.i.i.i1330
  %or.i.i.i = or i32 %233, %shl5.i.i.i
  %234 = ptrtoint ptr %port_status_u0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %or.i.i.i, ptr %port_status_u0.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i.i, i32 %sub.i.i.i)
  %cmp8.i.i.i = icmp eq i32 %or.i.i.i, %sub.i.i.i
  br i1 %cmp8.i.i.i, label %if.then10.i.i.i, label %if.then4.i.i.i.if.end39.i_crit_edge

if.then4.i.i.i.if.end39.i_crit_edge:              ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then10.i.i.i:                                  ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %comp_mode_recovery_timer.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i96.i, i32 15, i32 21
  %call.i71.i.i = tail call i32 @del_timer_sync(ptr noundef %comp_mode_recovery_timer.i.i.i) #9
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %hcd_priv.i.i.i, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.46) #9
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %hcd_priv.i.i.i, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.47) #9
  br label %if.end39.i

if.else.i1331:                                    ; preds = %if.end37.i
  %hcd_portnum.i99.i = getelementptr inbounds %struct.xhci_port, ptr %180, i32 0, i32 2
  %235 = ptrtoint ptr %hcd_portnum.i99.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %hcd_portnum.i99.i, align 4
  %and2.i.i = and i32 %171, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i100.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i100.i, label %if.else.i1331.if.end39.i_crit_edge, label %if.then.i103.i

if.else.i1331.if.end39.i_crit_edge:               ; preds = %if.else.i1331
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then.i103.i:                                   ; preds = %if.else.i1331
  %and.i101.i = and i32 %171, 480
  %237 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and.i101.i)
  %cmp.i102.i = icmp eq i32 %and.i101.i, 96
  %spec.select.v.i.i = select i1 %cmp.i102.i, i32 260, i32 256
  %spec.select.i.i = or i32 %238, %spec.select.v.i.i
  %239 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %spec.select.i.i, ptr %status.i, align 4
  %240 = zext i32 %and.i101.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %240, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %and.i101.i, label %if.then.i103.i.if.end39.i_crit_edge [
    i32 64, label %if.then6.i.i
    i32 0, label %if.then10.i.i
    i32 480, label %if.then22.i108.i
  ]

if.then.i103.i.if.end39.i_crit_edge:              ; preds = %if.then.i103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then6.i.i:                                     ; preds = %if.then.i103.i
  call void @__sanitizer_cov_trace_pc() #11
  %or7.i.i = or i32 %spec.select.i.i, 32
  %241 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %or7.i.i, ptr %status.i, align 4
  br label %if.end39.i

if.then10.i.i:                                    ; preds = %if.then.i103.i
  %arrayidx.i104.i = getelementptr %struct.xhci_hub, ptr %199, i32 0, i32 3, i32 5, i32 %236
  %242 = ptrtoint ptr %arrayidx.i104.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %arrayidx.i104.i, align 4
  %resuming_ports.i.i = getelementptr inbounds %struct.xhci_hub, ptr %199, i32 0, i32 3, i32 6
  tail call void @_clear_bit(i32 noundef %236, ptr noundef %resuming_ports.i.i) #9
  %suspended_ports.i105.i = getelementptr inbounds %struct.xhci_hub, ptr %199, i32 0, i32 3, i32 3
  %243 = ptrtoint ptr %suspended_ports.i105.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %suspended_ports.i105.i, align 4
  %shl.i106.i = shl nuw i32 1, %236
  %and11.i.i = and i32 %244, %shl.i106.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then10.i.i.if.end39.i_crit_edge, label %if.then13.i.i

if.then10.i.i.if.end39.i_crit_edge:               ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then13.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i107.i = xor i32 %shl.i106.i, -1
  %and16.i.i = and i32 %244, %neg.i107.i
  %245 = ptrtoint ptr %suspended_ports.i105.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %and16.i.i, ptr %suspended_ports.i105.i, align 4
  %port_c_suspend.i.i = getelementptr inbounds %struct.xhci_hub, ptr %199, i32 0, i32 3, i32 2
  %246 = ptrtoint ptr %port_c_suspend.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %port_c_suspend.i.i, align 4
  %or18.i.i = or i32 %247, %shl.i106.i
  store i32 %or18.i.i, ptr %port_c_suspend.i.i, align 4
  br label %if.end39.i

if.then22.i108.i:                                 ; preds = %if.then.i103.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i1332 = call fastcc i32 @xhci_handle_usb2_port_link_resume(ptr noundef %180, ptr noundef nonnull %status.i, i32 noundef %171, ptr noundef nonnull %flags) #9
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then22.i108.i, %if.then13.i.i, %if.then10.i.i.if.end39.i_crit_edge, %if.then6.i.i, %if.then.i103.i.if.end39.i_crit_edge, %if.else.i1331.if.end39.i_crit_edge, %if.then10.i.i.i, %if.then4.i.i.i.if.end39.i_crit_edge, %if.end.i.i.i.if.end39.i_crit_edge, %xhci_hub_report_usb3_link_state.exit.i.i.if.end39.i_crit_edge
  %arrayidx41.i = getelementptr %struct.xhci_hub, ptr %retval.0.i1312, i32 0, i32 3, i32 5, i32 %idxprom
  %248 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool42.not.i = icmp eq i32 %249, 0
  br i1 %tobool42.not.i, label %lor.lhs.false.i, label %if.end39.i.land.lhs.true.i_crit_edge

if.end39.i.land.lhs.true.i_crit_edge:             ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.end39.i
  %resuming_ports.i = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i1312, i32 0, i32 3, i32 6
  %div3.i.i = lshr i32 %idxprom, 5
  %arrayidx.i.i1333 = getelementptr i32, ptr %resuming_ports.i, i32 %div3.i.i
  %250 = ptrtoint ptr %arrayidx.i.i1333 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load volatile i32, ptr %arrayidx.i.i1333, align 4
  %and.i.i = and i32 %idxprom, 31
  %252 = shl nuw i32 1, %and.i.i
  %253 = and i32 %251, %252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool44.not.i = icmp eq i32 %253, 0
  br i1 %tobool44.not.i, label %lor.lhs.false.i.if.end59.i1335_crit_edge, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

lor.lhs.false.i.if.end59.i1335_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i1335

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.end39.i.land.lhs.true.i_crit_edge
  %and45.i = and i32 %171, 480
  %254 = zext i32 %and45.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %254, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and45.i, label %if.then52.i [
    i32 96, label %land.lhs.true.i.if.end59.i1335_crit_edge
    i32 480, label %land.lhs.true.i.if.end59.i1335_crit_edge1365
  ]

land.lhs.true.i.if.end59.i1335_crit_edge1365:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i1335

land.lhs.true.i.if.end59.i1335_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i1335

if.then52.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %255 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 0, ptr %arrayidx41.i, align 4
  %resuming_ports57.i = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i1312, i32 0, i32 3, i32 6
  tail call void @_clear_bit(i32 noundef %idxprom, ptr noundef %resuming_ports57.i) #9
  tail call void @usb_hcd_end_port_resume(ptr noundef %hcd, i32 noundef %idxprom) #9
  br label %if.end59.i1335

if.end59.i1335:                                   ; preds = %if.then52.i, %land.lhs.true.i.if.end59.i1335_crit_edge, %land.lhs.true.i.if.end59.i1335_crit_edge1365, %lor.lhs.false.i.if.end59.i1335_crit_edge
  %port_c_suspend.i = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i1312, i32 0, i32 3, i32 2
  %256 = ptrtoint ptr %port_c_suspend.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %port_c_suspend.i, align 4
  %shl.i1334 = shl nuw i32 1, %idxprom
  %and61.i = and i32 %257, %shl.i1334
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  %258 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %.pr = load i32, ptr %status.i, align 4
  %or64.i = or i32 %.pr, 262144
  %259 = select i1 %tobool62.not.i, i32 %.pr, i32 %or64.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %259)
  %cmp60 = icmp eq i32 %259, -1
  br i1 %cmp60, label %if.end59.i1335.cleanup965_crit_edge, label %do.body64

if.end59.i1335.cleanup965_crit_edge:              ; preds = %if.end59.i1335
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

do.body64:                                        ; preds = %if.end59.i1335
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_hub_control.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_hub_control, %if.then76)) #9
          to label %do.body85 [label %if.then76], !srcloc !203

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %260 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %hcd_priv.i, align 8
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %261, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %264 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %busnum, align 8
  %add = add nuw nsw i32 %idxprom, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_hub_control.__UNIQUE_ID_ddebug422, ptr noundef %263, ptr noundef nonnull @.str.6, i32 noundef %265, i32 noundef %add, i32 noundef %171, i32 noundef %259) #9
  br label %do.body85

do.body85:                                        ; preds = %if.then76, %do.body64
  %266 = tail call i32 @llvm.bswap.i32(i32 %259)
  %267 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %267, i32 4)
  store i32 %266, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %cmp89 = icmp eq i16 %wValue, 2
  br i1 %cmp89, label %if.then91, label %do.body85.cleanup965_crit_edge

do.body85.cleanup965_crit_edge:                   ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

if.then91:                                        ; preds = %do.body85
  %268 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %269)
  %cmp93 = icmp sgt i32 %269, 79
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %wLength)
  %cmp97.not = icmp eq i16 %wLength, 8
  %or.cond1271 = and i1 %cmp97.not, %cmp93
  br i1 %or.cond1271, label %if.end106, label %do.end102

do.end102:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %270 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %hcd_priv.i, align 8
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %271, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %273, ptr noundef nonnull @.str.7) #12
  br label %cleanup965

if.end106:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %274 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %arrayidx, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %275, align 4
  %add.ptr = getelementptr i32, ptr %277, i32 2
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !199
  %279 = tail call i32 @llvm.bswap.i32(i32 %278)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %shr.i = lshr i32 %171, 10
  %and.i1337 = and i32 %shr.i, 15
  %or1.i = mul nuw nsw i32 %and.i1337, 17
  %280 = lshr i32 %279, 8
  %shl4.i = and i32 %280, 3840
  %or5.i = or i32 %shl4.i, %or1.i
  %shl8.i = and i32 %280, 61440
  %or9.i1338 = or i32 %or5.i, %shl8.i
  %arrayidx116 = getelementptr i8, ptr %buf, i32 4
  %281 = tail call i32 @llvm.bswap.i32(i32 %or9.i1338) #9
  %282 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_storeN_noabort(i32 %282, i32 4)
  store i32 %281, ptr %arrayidx116, align 1
  br label %cleanup965

sw.bb118:                                         ; preds = %xhci_get_rhub.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %wValue)
  %cmp120 = icmp eq i16 %wValue, 5
  %283 = lshr i16 %wIndex, 3
  %284 = and i16 %283, 8160
  %narrow = select i1 %cmp120, i16 %284, i16 0
  %link_state.0 = zext i16 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %wValue)
  %cmp128 = icmp eq i16 %wValue, 27
  %285 = and i16 %wIndex, -256
  %wake_mask.0 = select i1 %cmp128, i16 %285, i16 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %wValue)
  %cmp136 = icmp eq i16 %wValue, 21
  %286 = lshr i16 %wIndex, 8
  %test_mode.0 = select i1 %cmp136, i16 %286, i16 0
  %287 = and i16 %wIndex, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %287)
  %tobool151.not = icmp eq i16 %287, 0
  %conv153 = zext i16 %287 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv153)
  %cmp154 = icmp slt i32 %9, %conv153
  %or.cond1272 = select i1 %tobool151.not, i1 true, i1 %cmp154
  br i1 %or.cond1272, label %sw.bb118.cleanup965_crit_edge, label %if.end157

sw.bb118.cleanup965_crit_edge:                    ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

if.end157:                                        ; preds = %sw.bb118
  %dec158 = add nsw i16 %287, -1
  %idxprom161 = zext i16 %dec158 to i32
  %arrayidx162 = getelementptr ptr, ptr %7, i32 %idxprom161
  %288 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %arrayidx162, align 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %289, align 4
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %291) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %292)
  %cmp167 = icmp eq i32 %292, -1
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xhci_hc_died(ptr noundef %hcd_priv.i) #9
  br label %cleanup965

if.end170:                                        ; preds = %if.end157
  %293 = and i32 %292, -369164210
  %294 = tail call i32 @llvm.bswap.i32(i32 %293)
  %295 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %295, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %wValue, label %if.end170.cleanup965_crit_edge [
    i16 2, label %sw.bb173
    i16 5, label %sw.bb289
    i16 8, label %sw.bb638
    i16 4, label %sw.bb639
    i16 27, label %sw.bb678
    i16 28, label %sw.bb712
    i16 23, label %sw.bb728
    i16 24, label %sw.bb754
    i16 21, label %sw.bb781
  ]

if.end170.cleanup965_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

sw.bb173:                                         ; preds = %if.end170
  %296 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx162, align 4
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %297, align 4
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %299) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  %301 = and i32 %300, -536805376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %cmp183.not = icmp eq i32 %301, 0
  br i1 %cmp183.not, label %sw.bb173.if.end203_crit_edge, label %if.then185

sw.bb173.if.end203_crit_edge:                     ; preds = %sw.bb173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

if.then185:                                       ; preds = %sw.bb173
  call void @__sanitizer_cov_trace_pc() #11
  %302 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx162, align 4
  tail call void @xhci_set_link_state(ptr noundef %hcd_priv.i, ptr noundef %303, i32 noundef 0)
  %304 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %305) #9
  tail call void @msleep(i32 noundef 10) #9
  %call198 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %306 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %call198, ptr %flags, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.then185, %sw.bb173.if.end203_crit_edge
  %307 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %arrayidx162, align 4
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %308, align 4
  %311 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %310) #9, !srcloc !199
  %312 = tail call i32 @llvm.bswap.i32(i32 %311)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  %313 = and i32 %312, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %313)
  %314 = icmp ne i32 %313, 2
  %and219 = and i32 %312, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %and219)
  %cmp220 = icmp ugt i32 %and219, 95
  %or.cond1274 = or i1 %314, %cmp220
  br i1 %or.cond1274, label %do.end225, label %if.end233

do.end225:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  %315 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %hcd_priv.i, align 8
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %316, align 8
  %busnum230 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %319 = ptrtoint ptr %busnum230 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %busnum230, align 8
  %add232 = add nuw nsw i32 %idxprom161, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %318, ptr noundef nonnull @.str.11, i32 noundef %320, i32 noundef %add232) #12
  br label %cleanup965

if.end233:                                        ; preds = %if.end203
  %call237 = tail call i32 @xhci_find_slot_id_by_port(ptr noundef %hcd, ptr noundef %hcd_priv.i, i16 noundef zeroext %287)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %do.end242, label %if.end246

do.end242:                                        ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #11
  %321 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %hcd_priv.i, align 8
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %322, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %324, ptr noundef nonnull @.str.15) #12
  br label %cleanup965

if.end246:                                        ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #11
  %325 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %326) #9
  tail call fastcc void @xhci_stop_device(ptr noundef %hcd_priv.i, i32 noundef %call237)
  %call258 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %327 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %call258, ptr %flags, align 4
  %328 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %arrayidx162, align 4
  tail call void @xhci_set_link_state(ptr noundef %hcd_priv.i, ptr noundef %329, i32 noundef 96)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call258) #9
  tail call void @msleep(i32 noundef 10) #9
  %call275 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %330 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %call275, ptr %flags, align 4
  %331 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %arrayidx162, align 4
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %332, align 4
  %335 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %334) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %shl = shl nuw i32 1, %idxprom161
  %suspended_ports = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i1312, i32 0, i32 3, i32 3
  %336 = ptrtoint ptr %suspended_ports to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %suspended_ports, align 4
  %or = or i32 %337, %shl
  store i32 %or, ptr %suspended_ports, align 4
  br label %sw.epilog

sw.bb289:                                         ; preds = %if.end170
  %338 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %arrayidx162, align 4
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %339, align 4
  %342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %341) #9, !srcloc !199
  %343 = tail call i32 @llvm.bswap.i32(i32 %342)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  %344 = zext i32 %link_state.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %344, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %link_state.0, label %if.end453 [
    i32 128, label %do.body302
    i32 160, label %do.body347
    i32 320, label %if.then385
  ]

do.body302:                                       ; preds = %sw.bb289
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_hub_control.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_hub_control, %if.then314)) #9
          to label %do.end324 [label %if.then314], !srcloc !203

if.then314:                                       ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #11
  %345 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %hcd_priv.i, align 8
  %347 = ptrtoint ptr %346 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %346, align 8
  %busnum319 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %349 = ptrtoint ptr %busnum319 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %busnum319, align 8
  %add321 = add nuw nsw i32 %idxprom161, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_hub_control.__UNIQUE_ID_ddebug423, ptr noundef %348, ptr noundef nonnull @.str.17, i32 noundef %350, i32 noundef %add321) #9
  br label %do.end324

do.end324:                                        ; preds = %if.then314, %do.body302
  %or.i1340 = and i32 %343, 1308688361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void @arm_heavy_mb() #9
  %or330 = or i32 %or.i1340, 16646146
  %351 = tail call i32 @llvm.bswap.i32(i32 %or330)
  %352 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %arrayidx162, align 4
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %353, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %355, i32 %351) #9, !srcloc !202
  %356 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %arrayidx162, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %357, align 4
  %360 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %359) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  br label %sw.epilog

do.body347:                                       ; preds = %sw.bb289
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_hub_control.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_hub_control, %if.then359)) #9
          to label %do.end369 [label %if.then359], !srcloc !203

if.then359:                                       ; preds = %do.body347
  call void @__sanitizer_cov_trace_pc() #11
  %361 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %hcd_priv.i, align 8
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %362, align 8
  %busnum364 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %365 = ptrtoint ptr %busnum364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %busnum364, align 8
  %add366 = add nuw nsw i32 %idxprom161, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_hub_control.__UNIQUE_ID_ddebug424, ptr noundef %364, ptr noundef nonnull @.str.18, i32 noundef %366, i32 noundef %add366) #9
  br label %do.end369

do.end369:                                        ; preds = %if.then359, %do.body347
  %367 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %arrayidx162, align 4
  tail call void @xhci_set_link_state(ptr noundef %hcd_priv.i, ptr noundef %368, i32 noundef 160)
  %369 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %arrayidx162, align 4
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %370, align 4
  %373 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %372) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  br label %sw.epilog

if.then385:                                       ; preds = %sw.bb289
  %hcc_params2 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 3
  %374 = ptrtoint ptr %hcc_params2 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %hcc_params2, align 4
  %and386 = and i32 %375, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and386)
  %tobool387.not = icmp eq i32 %and386, 0
  br i1 %tobool387.not, label %do.body389, label %if.end408

do.body389:                                       ; preds = %if.then385
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_hub_control.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_hub_control, %if.then401)) #9
          to label %sw.epilog [label %if.then401], !srcloc !203

if.then401:                                       ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #11
  %376 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %hcd_priv.i, align 8
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %377, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_hub_control.__UNIQUE_ID_ddebug425, ptr noundef %379, ptr noundef nonnull @.str.19) #9
  br label %sw.epilog

if.end408:                                        ; preds = %if.then385
  %and409 = and i32 %343, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and409)
  %tobool410.not = icmp eq i32 %and409, 0
  br i1 %tobool410.not, label %do.body419, label %do.end414

do.end414:                                        ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #11
  %380 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %hcd_priv.i, align 8
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %381, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %383, ptr noundef nonnull @.str.21) #12
  br label %cleanup965

do.body419:                                       ; preds = %if.end408
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_hub_control.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_hub_control, %if.then431)) #9
          to label %do.end441 [label %if.then431], !srcloc !203

if.then431:                                       ; preds = %do.body419
  call void @__sanitizer_cov_trace_pc() #11
  %384 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %hcd_priv.i, align 8
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %385, align 8
  %busnum436 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %388 = ptrtoint ptr %busnum436 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %busnum436, align 8
  %add438 = add nuw nsw i32 %idxprom161, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_hub_control.__UNIQUE_ID_ddebug426, ptr noundef %387, ptr noundef nonnull @.str.23, i32 noundef %389, i32 noundef %add438) #9
  br label %do.end441

do.end441:                                        ; preds = %if.then431, %do.body419
  %390 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %arrayidx162, align 4
  tail call void @xhci_set_link_state(ptr noundef %hcd_priv.i, ptr noundef %391, i32 noundef 320)
  %392 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %arrayidx162, align 4
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %393, align 4
  %396 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %395) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  br label %sw.epilog

if.end453:                                        ; preds = %sw.bb289
  %and454 = and i32 %343, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and454)
  %tobool455.not = icmp eq i32 %and454, 0
  br i1 %tobool455.not, label %if.end453.sw.epilog_crit_edge, label %if.end457

if.end453.sw.epilog_crit_edge:                    ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end457:                                        ; preds = %if.end453
  call void @__sanitizer_cov_trace_const_cmp2(i16 96, i16 %narrow)
  %cmp459 = icmp ugt i16 %narrow, 96
  br i1 %cmp459, label %do.end464, label %if.end473

do.end464:                                        ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #11
  %397 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %hcd_priv.i, align 8
  %399 = ptrtoint ptr %398 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %398, align 8
  %busnum469 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %401 = ptrtoint ptr %busnum469 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %busnum469, align 8
  %add471 = add nuw nsw i32 %idxprom161, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %400, ptr noundef nonnull @.str.25, i32 noundef %402, i32 noundef %add471, i32 noundef %link_state.0) #12
  br label %cleanup965

if.end473:                                        ; preds = %if.end457
  %403 = zext i32 %link_state.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %403, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %link_state.0, label %if.end473.sw.epilog_crit_edge [
    i32 0, label %if.then477
    i32 96, label %if.then569
  ]

if.end473.sw.epilog_crit_edge:                    ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then477:                                       ; preds = %if.end473
  %and478 = and i32 %343, 480
  %404 = zext i32 %and478 to i64
  call void @__sanitizer_cov_trace_switch(i64 %404, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %and478, label %if.then477.if.end494_crit_edge [
    i32 0, label %if.then477.sw.epilog_crit_edge
    i32 96, label %if.then477.if.then491_crit_edge
    i32 480, label %if.then477.if.then491_crit_edge1366
    i32 256, label %if.then477.if.then491_crit_edge1367
  ]

if.then477.if.then491_crit_edge1367:              ; preds = %if.then477
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then491

if.then477.if.then491_crit_edge1366:              ; preds = %if.then477
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then491

if.then477.if.then491_crit_edge:                  ; preds = %if.then477
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then491

if.then477.sw.epilog_crit_edge:                   ; preds = %if.then477
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then477.if.end494_crit_edge:                   ; preds = %if.then477
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end494

if.then491:                                       ; preds = %if.then477.if.then491_crit_edge, %if.then477.if.then491_crit_edge1366, %if.then477.if.then491_crit_edge1367
  %arrayidx493 = getelementptr %struct.xhci_hub, ptr %retval.0.i1312, i32 0, i32 3, i32 9, i32 %idxprom161
  %405 = ptrtoint ptr %arrayidx493 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 0, ptr %arrayidx493, align 4
  br label %if.end494

if.end494:                                        ; preds = %if.then491, %if.then477.if.end494_crit_edge
  %wait_u0.0.off0 = phi i1 [ true, %if.then491 ], [ false, %if.then477.if.end494_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %and478)
  %cmp495 = icmp ult i32 %and478, 97
  br i1 %cmp495, label %if.then497, label %if.end494.if.end500_crit_edge

if.end494.if.end500_crit_edge:                    ; preds = %if.end494
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end500

if.then497:                                       ; preds = %if.end494
  call void @__sanitizer_cov_trace_pc() #11
  %406 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %arrayidx162, align 4
  tail call void @xhci_set_link_state(ptr noundef %hcd_priv.i, ptr noundef %407, i32 noundef 0)
  br label %if.end500

if.end500:                                        ; preds = %if.then497, %if.end494.if.end500_crit_edge
  br i1 %wait_u0.0.off0, label %if.end507, label %if.then502

if.then502:                                       ; preds = %if.end500
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and478)
  %cmp503 = icmp ugt i32 %and478, 96
  br i1 %cmp503, label %if.then502.cleanup965_crit_edge, label %if.then502.sw.epilog_crit_edge

if.then502.sw.epilog_crit_edge:                   ; preds = %if.then502
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then502.cleanup965_crit_edge:                  ; preds = %if.then502
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

if.end507:                                        ; preds = %if.end500
  %408 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %409) #9
  %arrayidx511 = getelementptr %struct.xhci_hub, ptr %retval.0.i1312, i32 0, i32 3, i32 9, i32 %idxprom161
  %call513 = tail call i32 @wait_for_completion_timeout(ptr noundef %arrayidx511, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call513)
  %tobool514.not = icmp eq i32 %call513, 0
  br i1 %tobool514.not, label %do.body516, label %if.end507.do.body541_crit_edge

if.end507.do.body541_crit_edge:                   ; preds = %if.end507
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body541

do.body516:                                       ; preds = %if.end507
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_hub_control.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_hub_control, %if.then528)) #9
          to label %do.body541 [label %if.then528], !srcloc !203

if.then528:                                       ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #11
  %410 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %hcd_priv.i, align 8
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %411, align 8
  %busnum533 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %414 = ptrtoint ptr %busnum533 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %busnum533, align 8
  %add535 = add nuw nsw i32 %idxprom161, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_hub_control.__UNIQUE_ID_ddebug427, ptr noundef %413, ptr noundef nonnull @.str.27, i32 noundef %415, i32 noundef %add535) #9
  br label %do.body541

do.body541:                                       ; preds = %if.then528, %do.body516, %if.end507.do.body541_crit_edge
  %call549 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %416 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %call549, ptr %flags, align 4
  %417 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %arrayidx162, align 4
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %418, align 4
  %421 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %420) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  br label %sw.epilog

if.then569:                                       ; preds = %if.end473
  %call573 = tail call i32 @xhci_find_slot_id_by_port(ptr noundef %hcd, ptr noundef %hcd_priv.i, i16 noundef zeroext %287)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call573)
  %tobool574.not = icmp eq i32 %call573, 0
  br i1 %tobool574.not, label %if.then569.if.end592_crit_edge, label %if.then575

if.then569.if.end592_crit_edge:                   ; preds = %if.then569
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end592

if.then575:                                       ; preds = %if.then569
  call void @__sanitizer_cov_trace_pc() #11
  %422 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %423) #9
  tail call fastcc void @xhci_stop_device(ptr noundef %hcd_priv.i, i32 noundef %call573)
  %call587 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %424 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %call587, ptr %flags, align 4
  br label %if.end592

if.end592:                                        ; preds = %if.then575, %if.then569.if.end592_crit_edge
  %425 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %arrayidx162, align 4
  tail call void @xhci_set_link_state(ptr noundef %hcd_priv.i, ptr noundef %426, i32 noundef 96)
  %427 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %428) #9
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end592
  %retries.0 = phi i32 [ 16, %if.end592 ], [ %dec596, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %tobool597.not = icmp eq i32 %retries.0, 0
  br i1 %tobool597.not, label %while.cond.do.body612_crit_edge, label %while.body

while.cond.do.body612_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body612

while.body:                                       ; preds = %while.cond
  %dec596 = add nsw i32 %retries.0, -1
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 8000, i32 noundef 2) #9
  %429 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %arrayidx162, align 4
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %430, align 4
  %433 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %432) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  %434 = and i32 %433, -536805376
  %cmp607 = icmp eq i32 %434, 1610612736
  br i1 %cmp607, label %while.body.do.body612_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.body.do.body612_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body612

do.body612:                                       ; preds = %while.body.do.body612_crit_edge, %while.cond.do.body612_crit_edge
  %call620 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %435 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 %call620, ptr %flags, align 4
  %436 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %arrayidx162, align 4
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %437, align 4
  %440 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %439) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  %shl634 = shl nuw i32 1, %idxprom161
  %suspended_ports635 = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i1312, i32 0, i32 3, i32 3
  %441 = ptrtoint ptr %suspended_ports635 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %suspended_ports635, align 4
  %or636 = or i32 %442, %shl634
  store i32 %or636, ptr %suspended_ports635, align 4
  br label %sw.epilog

sw.bb638:                                         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @xhci_set_port_power(ptr noundef %hcd_priv.i, ptr noundef %hcd, i16 noundef zeroext %dec158, i1 noundef zeroext true, ptr noundef nonnull %flags)
  br label %sw.epilog

sw.bb639:                                         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  %or640 = or i32 %294, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void @arm_heavy_mb() #9
  %443 = tail call i32 @llvm.bswap.i32(i32 %or640)
  %444 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %arrayidx162, align 4
  %446 = ptrtoint ptr %445 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %445, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %447, i32 %443) #9, !srcloc !202
  %448 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %arrayidx162, align 4
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %449, align 4
  %452 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %451) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_hub_control.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_hub_control, %if.then667)) #9
          to label %sw.epilog [label %if.then667], !srcloc !203

if.then667:                                       ; preds = %sw.bb639
  call void @__sanitizer_cov_trace_pc() #11
  %453 = tail call i32 @llvm.bswap.i32(i32 %452)
  %454 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %hcd_priv.i, align 8
  %456 = ptrtoint ptr %455 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %455, align 8
  %busnum672 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %458 = ptrtoint ptr %busnum672 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %busnum672, align 8
  %add674 = add nuw nsw i32 %idxprom161, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_hub_control.__UNIQUE_ID_ddebug428, ptr noundef %457, ptr noundef nonnull @.str.28, i32 noundef %459, i32 noundef %add674, i32 noundef %453) #9
  br label %sw.epilog

sw.bb678:                                         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  %460 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %arrayidx162, align 4
  tail call fastcc void @xhci_set_remote_wake_mask(ptr noundef %461, i16 noundef zeroext %wake_mask.0)
  %462 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %arrayidx162, align 4
  %464 = ptrtoint ptr %463 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %463, align 4
  %466 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %465) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_hub_control.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_hub_control, %if.then701)) #9
          to label %sw.epilog [label %if.then701], !srcloc !203

if.then701:                                       ; preds = %sw.bb678
  call void @__sanitizer_cov_trace_pc() #11
  %467 = tail call i32 @llvm.bswap.i32(i32 %466)
  %468 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %hcd_priv.i, align 8
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %469, align 8
  %busnum706 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %472 = ptrtoint ptr %busnum706 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %busnum706, align 8
  %add708 = add nuw nsw i32 %idxprom161, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_hub_control.__UNIQUE_ID_ddebug429, ptr noundef %471, ptr noundef nonnull @.str.29, i32 noundef %473, i32 noundef %add708, i32 noundef %467) #9
  br label %sw.epilog

sw.bb712:                                         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  %or713 = or i32 %294, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %474 = tail call i32 @llvm.bswap.i32(i32 %or713)
  %475 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %arrayidx162, align 4
  %477 = ptrtoint ptr %476 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %476, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %478, i32 %474) #9, !srcloc !202
  %479 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %arrayidx162, align 4
  %481 = ptrtoint ptr %480 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %480, align 4
  %483 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %482) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  br label %sw.epilog

sw.bb728:                                         ; preds = %if.end170
  %484 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %485)
  %cmp730 = icmp slt i32 %485, 64
  br i1 %cmp730, label %sw.bb728.cleanup965_crit_edge, label %if.end733

sw.bb728.cleanup965_crit_edge:                    ; preds = %sw.bb728
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

if.end733:                                        ; preds = %sw.bb728
  call void @__sanitizer_cov_trace_pc() #11
  %486 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %arrayidx162, align 4
  %488 = ptrtoint ptr %487 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %487, align 4
  %add.ptr739 = getelementptr i32, ptr %489, i32 1
  %490 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr739) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !229
  %491 = and i32 %490, 16777215
  %492 = tail call i32 @llvm.bswap.i32(i32 %491)
  %conv744 = zext i16 %286 to i32
  %or746 = or i32 %492, %conv744
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @arm_heavy_mb() #9
  %493 = tail call i32 @llvm.bswap.i32(i32 %or746)
  %494 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %arrayidx162, align 4
  %496 = ptrtoint ptr %495 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %495, align 4
  %add.ptr753 = getelementptr i32, ptr %497, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr753, i32 %493) #9, !srcloc !202
  br label %sw.epilog

sw.bb754:                                         ; preds = %if.end170
  %498 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %499)
  %cmp756 = icmp slt i32 %499, 64
  br i1 %cmp756, label %sw.bb754.cleanup965_crit_edge, label %if.end759

sw.bb754.cleanup965_crit_edge:                    ; preds = %sw.bb754
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

if.end759:                                        ; preds = %sw.bb754
  call void @__sanitizer_cov_trace_pc() #11
  %500 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %arrayidx162, align 4
  %502 = ptrtoint ptr %501 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %501, align 4
  %add.ptr765 = getelementptr i32, ptr %503, i32 1
  %504 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr765) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !231
  %505 = and i32 %504, -16711681
  %506 = tail call i32 @llvm.bswap.i32(i32 %505)
  %shl772 = zext i16 %285 to i32
  %or773 = or i32 %506, %shl772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  %507 = tail call i32 @llvm.bswap.i32(i32 %or773)
  %508 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %arrayidx162, align 4
  %510 = ptrtoint ptr %509 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %509, align 4
  %add.ptr780 = getelementptr i32, ptr %511, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr780, i32 %507) #9, !srcloc !202
  br label %sw.epilog

sw.bb781:                                         ; preds = %if.end170
  %512 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %513)
  %cmp783.not = icmp ne i32 %513, 32
  %514 = add nsw i16 %test_mode.0, -6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -5, i16 %514)
  %515 = icmp ult i16 %514, -5
  %516 = or i1 %515, %cmp783.not
  br i1 %516, label %sw.bb781.cleanup965_crit_edge, label %if.end795

sw.bb781.cleanup965_crit_edge:                    ; preds = %sw.bb781
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

if.end795:                                        ; preds = %sw.bb781
  call void @__sanitizer_cov_trace_pc() #11
  %call796 = call fastcc i32 @xhci_enter_test_mode(ptr noundef %hcd_priv.i, i16 noundef zeroext %test_mode.0, i16 noundef zeroext %dec158, ptr noundef nonnull %flags)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end795, %if.end759, %if.end733, %sw.bb712, %if.then701, %sw.bb678, %if.then667, %sw.bb639, %sw.bb638, %do.body612, %do.body541, %if.then502.sw.epilog_crit_edge, %if.then477.sw.epilog_crit_edge, %if.end473.sw.epilog_crit_edge, %if.end453.sw.epilog_crit_edge, %do.end441, %if.then401, %do.body389, %do.end369, %do.end324, %if.end246
  %retval1.1 = phi i32 [ %call796, %if.end795 ], [ 0, %if.end759 ], [ 0, %if.end733 ], [ 0, %sw.bb712 ], [ 0, %if.then701 ], [ 0, %if.then667 ], [ 0, %sw.bb638 ], [ 0, %do.end324 ], [ 0, %do.end369 ], [ 0, %do.end441 ], [ 0, %if.then401 ], [ 0, %do.body612 ], [ 0, %if.end246 ], [ -19, %if.end453.sw.epilog_crit_edge ], [ 0, %if.end473.sw.epilog_crit_edge ], [ 0, %do.body389 ], [ 0, %sw.bb639 ], [ 0, %sw.bb678 ], [ 0, %do.body541 ], [ %and478, %if.then477.sw.epilog_crit_edge ], [ 0, %if.then502.sw.epilog_crit_edge ]
  %517 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %arrayidx162, align 4
  %519 = ptrtoint ptr %518 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %518, align 4
  %521 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %520) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !233
  br label %cleanup965

sw.bb805:                                         ; preds = %xhci_get_rhub.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %tobool806.not = icmp eq i16 %wIndex, 0
  %conv808 = zext i16 %wIndex to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv808)
  %cmp809 = icmp slt i32 %9, %conv808
  %or.cond1277 = select i1 %tobool806.not, i1 true, i1 %cmp809
  br i1 %or.cond1277, label %sw.bb805.cleanup965_crit_edge, label %if.end812

sw.bb805.cleanup965_crit_edge:                    ; preds = %sw.bb805
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

if.end812:                                        ; preds = %sw.bb805
  %dec813 = add i16 %wIndex, -1
  %idxprom816 = zext i16 %dec813 to i32
  %arrayidx817 = getelementptr ptr, ptr %7, i32 %idxprom816
  %522 = ptrtoint ptr %arrayidx817 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %arrayidx817, align 4
  %524 = ptrtoint ptr %523 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %523, align 4
  %526 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %525) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %526)
  %cmp822 = icmp eq i32 %526, -1
  br i1 %cmp822, label %if.then824, label %if.end825

if.then824:                                       ; preds = %if.end812
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xhci_hc_died(ptr noundef %hcd_priv.i) #9
  br label %cleanup965

if.end825:                                        ; preds = %if.end812
  %527 = and i32 %526, -369164210
  %528 = tail call i32 @llvm.bswap.i32(i32 %527)
  %529 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %529, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %wValue, label %if.end825.cleanup965_crit_edge [
    i16 2, label %sw.bb828
    i16 18, label %sw.bb944
    i16 20, label %if.end825.sw.bb949_crit_edge
    i16 29, label %if.end825.sw.bb949_crit_edge1368
    i16 16, label %if.end825.sw.bb949_crit_edge1369
    i16 19, label %if.end825.sw.bb949_crit_edge1370
    i16 17, label %if.end825.sw.bb949_crit_edge1371
    i16 25, label %if.end825.sw.bb949_crit_edge1372
    i16 26, label %if.end825.sw.bb949_crit_edge1373
    i16 1, label %sw.bb953
    i16 8, label %sw.bb957
    i16 21, label %sw.bb958
  ]

if.end825.sw.bb949_crit_edge1373:                 ; preds = %if.end825
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb949

if.end825.sw.bb949_crit_edge1372:                 ; preds = %if.end825
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb949

if.end825.sw.bb949_crit_edge1371:                 ; preds = %if.end825
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb949

if.end825.sw.bb949_crit_edge1370:                 ; preds = %if.end825
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb949

if.end825.sw.bb949_crit_edge1369:                 ; preds = %if.end825
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb949

if.end825.sw.bb949_crit_edge1368:                 ; preds = %if.end825
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb949

if.end825.sw.bb949_crit_edge:                     ; preds = %if.end825
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb949

if.end825.cleanup965_crit_edge:                   ; preds = %if.end825
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

sw.bb828:                                         ; preds = %if.end825
  %530 = ptrtoint ptr %arrayidx817 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %arrayidx817, align 4
  %532 = ptrtoint ptr %531 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %531, align 4
  %534 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %533) #9, !srcloc !199
  %535 = tail call i32 @llvm.bswap.i32(i32 %534)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_hub_control.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_hub_control, %if.then849)) #9
          to label %do.body856 [label %if.then849], !srcloc !203

if.then849:                                       ; preds = %sw.bb828
  call void @__sanitizer_cov_trace_pc() #11
  %536 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %hcd_priv.i, align 8
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %537, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_hub_control.__UNIQUE_ID_ddebug430, ptr noundef %539, ptr noundef nonnull @.str.30) #9
  br label %do.body856

do.body856:                                       ; preds = %if.then849, %sw.bb828
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_hub_control.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_hub_control, %if.then868)) #9
          to label %do.end874 [label %if.then868], !srcloc !203

if.then868:                                       ; preds = %do.body856
  call void @__sanitizer_cov_trace_pc() #11
  %540 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %hcd_priv.i, align 8
  %542 = ptrtoint ptr %541 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %541, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_hub_control.__UNIQUE_ID_ddebug431, ptr noundef %543, ptr noundef nonnull @.str.31, i32 noundef %535) #9
  br label %do.end874

do.end874:                                        ; preds = %if.then868, %do.body856
  %and875 = and i32 %535, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and875)
  %tobool876.not = icmp eq i32 %and875, 0
  br i1 %tobool876.not, label %if.end878, label %do.end874.cleanup965_crit_edge

do.end874.cleanup965_crit_edge:                   ; preds = %do.end874
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

if.end878:                                        ; preds = %do.end874
  %and879 = and i32 %535, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and879)
  %cmp880 = icmp eq i32 %and879, 96
  br i1 %cmp880, label %if.then882, label %if.end878.if.end914_crit_edge

if.end878.if.end914_crit_edge:                    ; preds = %if.end878
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end914

if.then882:                                       ; preds = %if.end878
  %and883 = and i32 %535, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and883)
  %cmp884 = icmp eq i32 %and883, 0
  br i1 %cmp884, label %if.then882.cleanup965_crit_edge, label %if.end887

if.then882.cleanup965_crit_edge:                  ; preds = %if.then882
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup965

if.end887:                                        ; preds = %if.then882
  call void @__sanitizer_cov_trace_pc() #11
  %resuming_ports = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i1312, i32 0, i32 3, i32 6
  tail call void @_set_bit(i32 noundef %idxprom816, ptr noundef %resuming_ports) #9
  tail call void @usb_hcd_start_port_resume(ptr noundef %hcd, i32 noundef %idxprom816) #9
  %544 = ptrtoint ptr %arrayidx817 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %arrayidx817, align 4
  tail call void @xhci_set_link_state(ptr noundef %hcd_priv.i, ptr noundef %545, i32 noundef 480)
  %546 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %547) #9
  tail call void @msleep(i32 noundef 40) #9
  %call903 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %548 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 %call903, ptr %flags, align 4
  %549 = ptrtoint ptr %arrayidx817 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %arrayidx817, align 4
  tail call void @xhci_set_link_state(ptr noundef %hcd_priv.i, ptr noundef %550, i32 noundef 0)
  tail call void @_clear_bit(i32 noundef %idxprom816, ptr noundef %resuming_ports) #9
  tail call void @usb_hcd_end_port_resume(ptr noundef %hcd, i32 noundef %idxprom816) #9
  br label %if.end914

if.end914:                                        ; preds = %if.end887, %if.end878.if.end914_crit_edge
  %shl916 = shl nuw i32 1, %idxprom816
  %port_c_suspend = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i1312, i32 0, i32 3, i32 2
  %551 = ptrtoint ptr %port_c_suspend to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %port_c_suspend, align 4
  %or917 = or i32 %552, %shl916
  store i32 %or917, ptr %port_c_suspend, align 4
  %call921 = tail call i32 @xhci_find_slot_id_by_port(ptr noundef %hcd, ptr noundef %hcd_priv.i, i16 noundef zeroext %wIndex)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call921)
  %tobool922.not = icmp eq i32 %call921, 0
  br i1 %tobool922.not, label %do.body924, label %if.end943

do.body924:                                       ; preds = %if.end914
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_hub_control.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_hub_control, %if.then936)) #9
          to label %cleanup965 [label %if.then936], !srcloc !203

if.then936:                                       ; preds = %do.body924
  call void @__sanitizer_cov_trace_pc() #11
  %553 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %hcd_priv.i, align 8
  %555 = ptrtoint ptr %554 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %554, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_hub_control.__UNIQUE_ID_ddebug432, ptr noundef %556, ptr noundef nonnull @.str.15) #9
  br label %cleanup965

if.end943:                                        ; preds = %if.end914
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xhci_ring_device(ptr noundef %hcd_priv.i, i32 noundef %call921)
  br label %cleanup965

sw.bb944:                                         ; preds = %if.end825
  call void @__sanitizer_cov_trace_pc() #11
  %shl946 = shl nuw i32 1, %idxprom816
  %neg = xor i32 %shl946, -1
  %port_c_suspend947 = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i1312, i32 0, i32 3, i32 2
  %557 = ptrtoint ptr %port_c_suspend947 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %port_c_suspend947, align 4
  %and948 = and i32 %558, %neg
  store i32 %and948, ptr %port_c_suspend947, align 4
  br label %sw.bb949

sw.bb949:                                         ; preds = %sw.bb944, %if.end825.sw.bb949_crit_edge, %if.end825.sw.bb949_crit_edge1368, %if.end825.sw.bb949_crit_edge1369, %if.end825.sw.bb949_crit_edge1370, %if.end825.sw.bb949_crit_edge1371, %if.end825.sw.bb949_crit_edge1372, %if.end825.sw.bb949_crit_edge1373
  %559 = ptrtoint ptr %arrayidx817 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %arrayidx817, align 4
  %561 = ptrtoint ptr %560 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %560, align 4
  tail call fastcc void @xhci_clear_port_change_bit(ptr noundef %hcd_priv.i, i16 noundef zeroext %wValue, i16 noundef zeroext %dec813, ptr noundef %562, i32 noundef %528)
  br label %cleanup965

sw.bb953:                                         ; preds = %if.end825
  call void @__sanitizer_cov_trace_pc() #11
  %563 = ptrtoint ptr %arrayidx817 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %arrayidx817, align 4
  %565 = ptrtoint ptr %564 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %564, align 4
  tail call fastcc void @xhci_disable_port(ptr noundef %hcd, ptr noundef %hcd_priv.i, i16 noundef zeroext %dec813, ptr noundef %566, i32 noundef %528)
  br label %cleanup965

sw.bb957:                                         ; preds = %if.end825
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @xhci_set_port_power(ptr noundef %hcd_priv.i, ptr noundef %hcd, i16 noundef zeroext %dec813, i1 noundef zeroext false, ptr noundef nonnull %flags)
  br label %cleanup965

sw.bb958:                                         ; preds = %if.end825
  call void @__sanitizer_cov_trace_pc() #11
  %call959 = tail call fastcc i32 @xhci_exit_test_mode(ptr noundef %hcd_priv.i)
  br label %cleanup965

cleanup965:                                       ; preds = %sw.bb958, %sw.bb957, %sw.bb953, %sw.bb949, %if.end943, %if.then936, %do.body924, %if.then882.cleanup965_crit_edge, %do.end874.cleanup965_crit_edge, %if.end825.cleanup965_crit_edge, %if.then824, %sw.bb805.cleanup965_crit_edge, %sw.epilog, %sw.bb781.cleanup965_crit_edge, %sw.bb754.cleanup965_crit_edge, %sw.bb728.cleanup965_crit_edge, %if.then502.cleanup965_crit_edge, %do.end464, %do.end414, %do.end242, %do.end225, %if.end170.cleanup965_crit_edge, %if.then169, %sw.bb118.cleanup965_crit_edge, %if.end106, %do.end102, %do.body85.cleanup965_crit_edge, %if.end59.i1335.cleanup965_crit_edge, %if.then56, %sw.bb43.cleanup965_crit_edge, %xhci_create_usb3x_bos_desc.exit, %if.end35.cleanup965_crit_edge, %sw.bb30.cleanup965_crit_edge, %xhci_usb2_hub_descriptor.exit.i, %xhci_usb3_hub_descriptor.exit.i, %if.then25, %do.body20, %sw.bb, %xhci_get_rhub.exit.cleanup965_crit_edge
  %retval.0 = phi i32 [ %retval.0.i1319, %xhci_create_usb3x_bos_desc.exit ], [ -19, %if.then824 ], [ %call959, %sw.bb958 ], [ 0, %sw.bb957 ], [ 0, %sw.bb953 ], [ 0, %sw.bb949 ], [ 0, %if.end943 ], [ -19, %if.then169 ], [ %retval1.1, %sw.epilog ], [ -19, %if.then56 ], [ 0, %do.body85.cleanup965_crit_edge ], [ 0, %sw.bb ], [ -22, %do.end102 ], [ 0, %if.end106 ], [ -32, %xhci_get_rhub.exit.cleanup965_crit_edge ], [ -32, %if.end825.cleanup965_crit_edge ], [ -32, %if.then936 ], [ -32, %if.then882.cleanup965_crit_edge ], [ -32, %do.end874.cleanup965_crit_edge ], [ -32, %sw.bb805.cleanup965_crit_edge ], [ -32, %if.end170.cleanup965_crit_edge ], [ -32, %sw.bb781.cleanup965_crit_edge ], [ -32, %sw.bb754.cleanup965_crit_edge ], [ -32, %sw.bb728.cleanup965_crit_edge ], [ -32, %sw.bb118.cleanup965_crit_edge ], [ -32, %if.end59.i1335.cleanup965_crit_edge ], [ -32, %sw.bb43.cleanup965_crit_edge ], [ -32, %if.end35.cleanup965_crit_edge ], [ -32, %sw.bb30.cleanup965_crit_edge ], [ -32, %if.then25 ], [ -32, %do.end464 ], [ -32, %do.end414 ], [ -32, %do.end242 ], [ -32, %do.end225 ], [ -32, %do.body20 ], [ 0, %xhci_usb3_hub_descriptor.exit.i ], [ 0, %xhci_usb2_hub_descriptor.exit.i ], [ -32, %if.then502.cleanup965_crit_edge ], [ -32, %do.body924 ]
  %567 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %567)
  %.sink = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %.sink) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_hc_died(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_get_port_status(i32 noundef %portnum, i32 noundef %portsc) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_get_port_status, i32 0, i32 1), ptr blockaddress(@trace_xhci_get_port_status, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !203

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !236

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !237
  %call42 = tail call i32 @__traceiter_xhci_get_port_status(ptr noundef null, i32 noundef %portnum, i32 noundef %portsc) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !238
  %13 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !236

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !239
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_get_port_status, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_get_port_status, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xhci_get_port_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xhci_get_port_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 548, ptr noundef nonnull @.str.44) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !240
  %31 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_stop_device(ptr noundef %xhci, i32 noundef %slot_id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 42, i32 %slot_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup52_crit_edge, label %if.end

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

if.end:                                           ; preds = %entry
  tail call fastcc void @trace_xhci_stop_device(ptr noundef nonnull %1)
  %call = tail call ptr @xhci_alloc_command(ptr noundef %xhci, i1 noundef zeroext true, i32 noundef 3072) #9
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup52_crit_edge, label %do.body4

if.end.cleanup52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

do.body4:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 12
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %out_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body4
  %i.04 = phi i32 [ 30, %do.body4 ], [ %dec, %for.inc.for.body_crit_edge ]
  %ring = getelementptr %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 %i.04, i32 2
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 4
  %tobool12.not = icmp eq ptr %3, null
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dequeue = getelementptr inbounds %struct.xhci_ring, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dequeue, align 4
  %tobool16.not = icmp eq ptr %5, null
  br i1 %tobool16.not, label %land.lhs.true.for.inc_crit_edge, label %if.then17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true
  %6 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_ctx, align 4
  %call18 = tail call ptr @xhci_get_ep_ctx(ptr noundef %xhci, ptr noundef %7, i32 noundef %i.04) #9
  %8 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call18, align 8
  %10 = and i32 %9, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %10)
  %cmp19.not = icmp eq i32 %10, 16777216
  br i1 %cmp19.not, label %if.end22, label %if.then17.for.inc_crit_edge

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end22:                                         ; preds = %if.then17
  %call23 = tail call ptr @xhci_alloc_command(ptr noundef %xhci, i1 noundef zeroext false, i32 noundef 2048) #9
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  br label %cmd_cleanup

if.end27:                                         ; preds = %if.end22
  %call28 = tail call i32 @xhci_queue_stop_endpoint(ptr noundef %xhci, ptr noundef nonnull %call23, i32 noundef %slot_id, i32 noundef %i.04, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.for.inc_crit_edge, label %if.then30

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  tail call void @xhci_free_command(ptr noundef %xhci, ptr noundef nonnull %call23) #9
  br label %cmd_cleanup

for.inc:                                          ; preds = %if.end27.for.inc_crit_edge, %if.then17.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %i.04, -1
  %cmp9 = icmp ugt i32 %i.04, 1
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call35 = tail call i32 @xhci_queue_stop_endpoint(ptr noundef %xhci, ptr noundef nonnull %call, i32 noundef %slot_id, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  br label %cmd_cleanup

if.end39:                                         ; preds = %for.end
  tail call void @xhci_ring_cmd_db(ptr noundef %xhci) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  %completion = getelementptr inbounds %struct.xhci_command, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %completion, align 4
  tail call void @wait_for_completion(ptr noundef %12) #9
  %status = getelementptr inbounds %struct.xhci_command, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %15 = and i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %15)
  %switch = icmp eq i32 %15, 24
  br i1 %switch, label %do.end49, label %if.end39.cmd_cleanup_crit_edge

if.end39.cmd_cleanup_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cmd_cleanup

do.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xhci, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.51) #12
  br label %cmd_cleanup

cmd_cleanup:                                      ; preds = %do.end49, %if.end39.cmd_cleanup_crit_edge, %if.then37, %if.then30, %if.then25
  tail call void @xhci_free_command(ptr noundef %xhci, ptr noundef nonnull %call) #9
  br label %cleanup52

cleanup52:                                        ; preds = %cmd_cleanup, %if.end.cleanup52_crit_edge, %entry.cleanup52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_set_port_power(ptr noundef %xhci, ptr noundef %hcd, i16 noundef zeroext %index, i1 noundef zeroext %on, ptr nocapture noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.xhci_get_rhub.exit_crit_edge

entry.xhci_get_rhub.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_get_rhub.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %0 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %xhci_get_rhub.exit

xhci_get_rhub.exit:                               ; preds = %if.else.i.i, %entry.xhci_get_rhub.exit_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %1, %if.else.i.i ], [ %hcd, %entry.xhci_get_rhub.exit_crit_edge ]
  %speed.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %2 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %3)
  %cmp.i = icmp sgt i32 %3, 63
  %usb3_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1
  %usb2_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 3, i32 16
  %retval.0.i71 = select i1 %cmp.i, ptr %usb3_rhub.i, ptr %usb2_rhub.i
  %4 = ptrtoint ptr %retval.0.i71 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %retval.0.i71, align 4
  %idxprom = zext i16 %index to i32
  %arrayidx = getelementptr ptr, ptr %5, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !199
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !241
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_set_port_power.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_set_port_power, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %xhci_get_rhub.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xhci, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %16 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %busnum, align 8
  %add = add nuw nsw i32 %idxprom, 1
  %cond = select i1 %on, ptr @.str.55, ptr @.str.56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_set_port_power.__UNIQUE_ID_ddebug413, ptr noundef %15, ptr noundef nonnull @.str.54, i32 noundef %17, i32 noundef %add, ptr noundef nonnull %cond, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %xhci_get_rhub.exit
  br i1 %on, label %do.body15, label %do.body25

do.body15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = and i32 %11, 1308687849
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  tail call void @arm_heavy_mb() #9
  %or = or i32 %or.i, 512
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !202
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %7, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  br label %if.end29

do.body25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  tail call void @arm_heavy_mb() #9
  %and = and i32 %11, 1308687849
  %24 = tail call i32 @llvm.bswap.i32(i32 %and)
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #9, !srcloc !202
  br label %if.end29

if.end29:                                         ; preds = %do.body25, %do.body15
  %lock = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 12
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %28) #9
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call48, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_set_remote_wake_mask(ptr nocapture noundef readonly %port, i16 noundef zeroext %wake_mask) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !245
  %3 = and i32 %2, -369164210
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i16 %wake_mask to i32
  %and = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or = or i32 %4, 33554432
  %and3 = and i32 %4, 1275133929
  %temp.0 = select i1 %tobool.not, i32 %and3, i32 %or
  %and5 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or8 = or i32 %temp.0, 67108864
  %and10 = and i32 %temp.0, 1107361769
  %temp.1 = select i1 %tobool6.not, i32 %and10, i32 %or8
  %and18 = and i32 %temp.1, -134217729
  %and13 = shl i32 %conv, 17
  %5 = and i32 %and13, 134217728
  %temp.2 = or i32 %and18, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %temp.2)
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !202
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xhci_enter_test_mode(ptr noundef %xhci, i16 noundef zeroext %test_mode, i16 noundef zeroext %wIndex, ptr nocapture noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_enter_test_mode.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_enter_test_mode, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xhci, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_enter_test_mode.__UNIQUE_ID_ddebug414, ptr noundef %3, ptr noundef nonnull @.str.58) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 12
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %5) #9
  %hcs_params1 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 7
  %6 = ptrtoint ptr %hcs_params1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hcs_params1, align 4
  %and165 = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %cmp.not166 = icmp eq i32 %and165, 0
  br i1 %cmp.not166, label %do.end.do.body19_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.do.body19_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0167 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 42, i32 %i.0167
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %call8 = tail call i32 @xhci_disable_slot(ptr noundef %xhci, i32 noundef %i.0167) #9
  tail call void @xhci_free_virt_device(ptr noundef %xhci, i32 noundef %i.0167) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.for.inc_crit_edge, label %do.end13

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xhci, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.59, i32 noundef %i.0167, i32 noundef %call8) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end13, %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0167, 1
  %14 = ptrtoint ptr %hcs_params1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hcs_params1, align 4
  %and = and i32 %15, 255
  %cmp.not.not = icmp ult i32 %i.0167, %and
  br i1 %cmp.not.not, label %for.inc.for.body_crit_edge, label %for.inc.do.body19_crit_edge

for.inc.do.body19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body19:                                        ; preds = %for.inc.do.body19_crit_edge, %do.end.do.body19_crit_edge
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call24, ptr %flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_enter_test_mode.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_enter_test_mode, %if.then41)) #9
          to label %do.end47 [label %if.then41], !srcloc !203

if.then41:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xhci, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_enter_test_mode.__UNIQUE_ID_ddebug415, ptr noundef %20, ptr noundef nonnull @.str.60) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then41, %do.body19
  %num_ports = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 56, i32 1
  %21 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp49169.not = icmp eq i32 %22, 0
  br i1 %cmp49169.not, label %do.end47.for.cond56.preheader_crit_edge, label %for.body51.lr.ph

do.end47.for.cond56.preheader_crit_edge:          ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond56.preheader

for.body51.lr.ph:                                 ; preds = %do.end47
  %shared_hcd = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 1
  br label %for.body51

for.cond56.preheader:                             ; preds = %for.body51.for.cond56.preheader_crit_edge, %do.end47.for.cond56.preheader_crit_edge
  %num_ports57 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 55, i32 1
  %23 = ptrtoint ptr %num_ports57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_ports57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp58171.not = icmp eq i32 %24, 0
  br i1 %cmp58171.not, label %for.cond56.preheader.do.body65_crit_edge, label %for.cond56.preheader.for.body60_crit_edge

for.cond56.preheader.for.body60_crit_edge:        ; preds = %for.cond56.preheader
  br label %for.body60

for.cond56.preheader.do.body65_crit_edge:         ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body65

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.body51.lr.ph
  %i.1170 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc54, %for.body51.for.body51_crit_edge ]
  %25 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %shared_hcd, align 4
  %conv52 = trunc i32 %i.1170 to i16
  tail call fastcc void @xhci_set_port_power(ptr noundef %xhci, ptr noundef %26, i16 noundef zeroext %conv52, i1 noundef zeroext false, ptr noundef %flags)
  %inc54 = add nuw i32 %i.1170, 1
  %27 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_ports, align 4
  %cmp49 = icmp ult i32 %inc54, %28
  br i1 %cmp49, label %for.body51.for.body51_crit_edge, label %for.body51.for.cond56.preheader_crit_edge

for.body51.for.cond56.preheader_crit_edge:        ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond56.preheader

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.cond56.preheader.for.body60_crit_edge
  %i.2172 = phi i32 [ %inc63, %for.body60.for.body60_crit_edge ], [ 0, %for.cond56.preheader.for.body60_crit_edge ]
  %29 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xhci, align 8
  %conv61 = trunc i32 %i.2172 to i16
  tail call fastcc void @xhci_set_port_power(ptr noundef %xhci, ptr noundef %30, i16 noundef zeroext %conv61, i1 noundef zeroext false, ptr noundef %flags)
  %inc63 = add nuw i32 %i.2172, 1
  %31 = ptrtoint ptr %num_ports57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_ports57, align 4
  %cmp58 = icmp ult i32 %inc63, %32
  br i1 %cmp58, label %for.body60.for.body60_crit_edge, label %for.body60.do.body65_crit_edge

for.body60.do.body65_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body65

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body60

do.body65:                                        ; preds = %for.body60.do.body65_crit_edge, %for.cond56.preheader.do.body65_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_enter_test_mode.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_enter_test_mode, %if.then77)) #9
          to label %do.end83 [label %if.then77], !srcloc !203

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xhci, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_enter_test_mode.__UNIQUE_ID_ddebug416, ptr noundef %36, ptr noundef nonnull @.str.61) #9
  br label %do.end83

do.end83:                                         ; preds = %if.then77, %do.body65
  %call84 = tail call i32 @xhci_halt(ptr noundef %xhci) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %do.end83.cleanup_crit_edge

do.end83.cleanup_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end87:                                         ; preds = %do.end83
  %37 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xhci, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  tail call void @pm_runtime_forbid(ptr noundef %40) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_enter_test_mode.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_enter_test_mode, %if.then103)) #9
          to label %do.end111 [label %if.then103], !srcloc !203

if.then103:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xhci, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %conv107 = zext i16 %test_mode to i32
  %conv108 = zext i16 %wIndex to i32
  %add = add nuw nsw i32 %conv108, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_enter_test_mode.__UNIQUE_ID_ddebug417, ptr noundef %44, ptr noundef nonnull @.str.62, i32 noundef %conv107, i32 noundef %add) #9
  br label %do.end111

do.end111:                                        ; preds = %if.then103, %if.end87
  %usb2_rhub.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 55
  %45 = ptrtoint ptr %usb2_rhub.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %usb2_rhub.i, align 4
  %idxprom.i = zext i16 %wIndex to i32
  %arrayidx.i = getelementptr ptr, ptr %46, i32 %idxprom.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %add.ptr.i = getelementptr i32, ptr %50, i32 1
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !199
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  %conv.i = zext i16 %test_mode to i32
  %shl.i = shl i32 %conv.i, 28
  %or.i = or i32 %52, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  tail call void @arm_heavy_mb() #9
  %53 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %48, align 4
  %add.ptr3.i = getelementptr i32, ptr %55, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %53) #9, !srcloc !202
  %test_mode4.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 64
  %56 = ptrtoint ptr %test_mode4.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %test_mode, ptr %test_mode4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %test_mode)
  %cmp.i = icmp eq i16 %test_mode, 5
  br i1 %cmp.i, label %if.then.i, label %do.end111.cleanup_crit_edge

do.end111.cleanup_crit_edge:                      ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = tail call i32 @xhci_start(ptr noundef %xhci) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end111.cleanup_crit_edge, %do.end83.cleanup_crit_edge
  ret i32 %call84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_start_port_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_end_port_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_clear_port_change_bit(ptr nocapture noundef readonly %xhci, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %addr, i32 noundef %port_status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i16 %wValue, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %switch.tableidx)
  %0 = icmp ult i16 %switch.tableidx, 14
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i16 9759, %switch.tableidx
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %2 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.xhci_clear_port_change_bit, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %4 = sext i16 %switch.tableidx to i32
  %switch.gep22 = getelementptr inbounds [14 x ptr], ptr @switch.table.xhci_clear_port_change_bit.79, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load23 = load ptr, ptr %switch.gep22, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @arm_heavy_mb() #9
  %or = or i32 %switch.load, %port_status
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %6) #9, !srcloc !202
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_clear_port_change_bit.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_clear_port_change_bit, %if.then)) #9
          to label %cleanup [label %if.then], !srcloc !203

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xhci, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %conv15 = zext i16 %wIndex to i32
  %add = add nuw nsw i32 %conv15, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_clear_port_change_bit.__UNIQUE_ID_ddebug412, ptr noundef %12, ptr noundef nonnull @.str.72, i32 noundef %add, ptr noundef nonnull %switch.load23, i32 noundef %8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_disable_port(ptr nocapture noundef readonly %hcd, ptr nocapture noundef readonly %xhci, i16 noundef zeroext %wIndex, ptr noundef %addr, i32 noundef %port_status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %1)
  %cmp = icmp sgt i32 %1, 63
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_disable_port.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_disable_port, %if.then3)) #9
          to label %do.end50 [label %if.then3], !srcloc !203

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xhci, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_disable_port.__UNIQUE_ID_ddebug409, ptr noundef %5, ptr noundef nonnull @.str.74) #9
  br label %do.end50

if.end5:                                          ; preds = %entry
  %quirks = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %quirks, align 8
  %and = and i64 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %do.body27, label %do.body8

do.body8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_disable_port.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_disable_port, %if.then20)) #9
          to label %do.end50 [label %if.then20], !srcloc !203

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xhci, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_disable_port.__UNIQUE_ID_ddebug410, ptr noundef %11, ptr noundef nonnull @.str.75) #9
  br label %do.end50

do.body27:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !251
  tail call void @arm_heavy_mb() #9
  %or = or i32 %port_status, 2
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %12) #9, !srcloc !202
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_disable_port.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_disable_port, %if.then44)) #9
          to label %do.end50 [label %if.then44], !srcloc !203

if.then44:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xhci, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %19 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %busnum, align 8
  %conv = zext i16 %wIndex to i32
  %add = add nuw nsw i32 %conv, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_disable_port.__UNIQUE_ID_ddebug411, ptr noundef %18, ptr noundef nonnull @.str.76, i32 noundef %20, i32 noundef %add, i32 noundef %14) #9
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %do.body27, %if.then20, %do.body8, %if.then3, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xhci_exit_test_mode(ptr noundef %xhci) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %test_mode = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 64
  %0 = ptrtoint ptr %test_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %test_mode, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %1, label %entry.if.end10_crit_edge [
    i16 0, label %do.end
    i16 5, label %land.lhs.true
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xhci, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.77) #12
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %xhc_state = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 48
  %7 = ptrtoint ptr %xhc_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xhc_state, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %land.lhs.true
  %call6 = tail call i32 @xhci_halt(ptr noundef %xhci) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %9 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xhci, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  tail call void @pm_runtime_allow(ptr noundef %12) #9
  %13 = ptrtoint ptr %test_mode to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %test_mode, align 4
  %call15 = tail call i32 @xhci_reset(ptr noundef %xhci) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call15, %if.end10 ], [ 0, %do.end ], [ %call6, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_hub_status_data(ptr noundef %hcd, ptr nocapture noundef %buf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %0 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %1, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge

hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge:    ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_get_rhub.exit

if.else.i.i:                                      ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %xhci_get_rhub.exit

xhci_get_rhub.exit:                               ; preds = %if.else.i.i, %hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %3, %if.else.i.i ], [ %hcd, %hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge ]
  %speed.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %4 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %5)
  %cmp.i = icmp sgt i32 %5, 63
  %usb3_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1
  %usb2_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 3, i32 16
  %retval.0.i94 = select i1 %cmp.i, ptr %usb3_rhub.i, ptr %usb2_rhub.i
  %6 = ptrtoint ptr %retval.0.i94 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %retval.0.i94, align 4
  %num_ports = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i94, i32 0, i32 1
  %8 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ports, align 4
  %add = add i32 %9, 8
  %div = sdiv i32 %add, 8
  %10 = call ptr @memset(ptr %buf, i32 0, i32 %div)
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %resuming_ports = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i94, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %resuming_ports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resuming_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10101 = icmp sgt i32 %9, 0
  br i1 %cmp10101, label %for.body.lr.ph, label %xhci_get_rhub.exit.for.end_crit_edge

xhci_get_rhub.exit.for.end_crit_edge:             ; preds = %xhci_get_rhub.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %xhci_get_rhub.exit
  %port_c_suspend = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i94, i32 0, i32 3, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.body.lr.ph
  %status.0106 = phi i32 [ %12, %for.body.lr.ph ], [ %status.2, %if.end35.for.body_crit_edge ]
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end35.for.body_crit_edge ]
  %reset_change.0.off0102 = phi i1 [ false, %for.body.lr.ph ], [ %spec.select, %if.end35.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.0103
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !199
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp15 = icmp eq i32 %17, -1
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xhci_hc_died(ptr noundef %hcd_priv.i) #9
  br label %for.end

if.end:                                           ; preds = %for.body
  tail call fastcc void @trace_xhci_hub_status_data(i32 noundef %i.0103, i32 noundef %18)
  %and = and i32 %18, 14548992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp17.not = icmp eq i32 %and, 0
  br i1 %cmp17.not, label %lor.lhs.false, label %if.end.if.then27_crit_edge

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end
  %19 = ptrtoint ptr %port_c_suspend to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_c_suspend, align 4
  %shl = shl nuw i32 1, %i.0103
  %and19 = and i32 %20, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not = icmp eq i32 %and19, 0
  br i1 %tobool.not, label %lor.lhs.false20, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %arrayidx21 = getelementptr %struct.xhci_hub, ptr %retval.0.i94, i32 0, i32 3, i32 5, i32 %i.0103
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool22.not = icmp eq i32 %22, 0
  br i1 %tobool22.not, label %lor.lhs.false20.if.end35_crit_edge, label %land.lhs.true

lor.lhs.false20.if.end35_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %lor.lhs.false20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %23, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp25 = icmp sgt i32 %sub, -1
  br i1 %cmp25, label %land.lhs.true.if.then27_crit_edge, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true.if.then27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

if.then27:                                        ; preds = %land.lhs.true.if.then27_crit_edge, %lor.lhs.false.if.then27_crit_edge, %if.end.if.then27_crit_edge
  %add28 = add nuw nsw i32 %i.0103, 1
  %rem92 = and i32 %add28, 7
  %shl29 = shl nuw nsw i32 1, %rem92
  %div3196 = lshr i32 %add28, 3
  %arrayidx32 = getelementptr i8, ptr %buf, i32 %div3196
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx32, align 1
  %26 = trunc i32 %shl29 to i8
  %conv34 = or i8 %25, %26
  store i8 %conv34, ptr %arrayidx32, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %land.lhs.true.if.end35_crit_edge, %lor.lhs.false20.if.end35_crit_edge
  %status.1 = phi i32 [ 1, %if.then27 ], [ %status.0106, %land.lhs.true.if.end35_crit_edge ], [ %status.0106, %lor.lhs.false20.if.end35_crit_edge ]
  %and36 = and i32 %18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp ne i32 %and36, 0
  %spec.select = select i1 %tobool37.not, i1 true, i1 %reset_change.0.off0102
  %and40 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %status.2 = select i1 %tobool41.not, i32 %status.1, i32 1
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %if.then, %xhci_get_rhub.exit.for.end_crit_edge
  %reset_change.0.off0100 = phi i1 [ %reset_change.0.off0102, %if.then ], [ false, %xhci_get_rhub.exit.for.end_crit_edge ], [ %spec.select, %if.end35.for.end_crit_edge ]
  %status.098 = phi i32 [ %status.0106, %if.then ], [ %12, %xhci_get_rhub.exit.for.end_crit_edge ], [ %status.2, %if.end35.for.end_crit_edge ]
  %retval1.0 = phi i32 [ -19, %if.then ], [ %div, %xhci_get_rhub.exit.for.end_crit_edge ], [ %div, %if.end35.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.098)
  %tobool44.not = icmp eq i32 %status.098, 0
  %tobool44.not.not = xor i1 %tobool44.not, true
  %brmerge = select i1 %tobool44.not.not, i1 true, i1 %reset_change.0.off0100
  br i1 %brmerge, label %for.end.if.end61_crit_edge, label %do.body48

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

do.body48:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_hub_status_data.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_hub_status_data, %if.then54)) #9
          to label %do.end59 [label %if.then54], !srcloc !203

if.then54:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hcd_priv.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %31 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %busnum, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_hub_status_data.__UNIQUE_ID_ddebug433, ptr noundef %30, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %32) #9
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body48
  %flags60 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags60) #9
  br label %if.end61

if.end61:                                         ; preds = %do.end59, %for.end.if.end61_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  %spec.select93 = select i1 %tobool44.not, i32 0, i32 %retval1.0
  ret i32 %spec.select93
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_hub_status_data(i32 noundef %portnum, i32 noundef %portsc) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_hub_status_data, i32 0, i32 1), ptr blockaddress(@trace_xhci_hub_status_data, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !203

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !236

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !254
  %call42 = tail call i32 @__traceiter_xhci_hub_status_data(ptr noundef null, i32 noundef %portnum, i32 noundef %portsc) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !255
  %13 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !236

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !239
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_hub_status_data, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_hub_status_data, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xhci_hub_status_data.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xhci_hub_status_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 553, ptr noundef nonnull @.str.44) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !240
  %31 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
define dso_local i32 @xhci_bus_suspend(ptr noundef %hcd) local_unnamed_addr #3 align 64 {
entry:
  %portsc_buf = alloca [31 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %0 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %1, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %portsc_buf) #9
  %2 = call ptr @memset(ptr %portsc_buf, i32 255, i32 124)
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge

hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge:    ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_get_rhub.exit

if.else.i.i:                                      ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %3 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %xhci_get_rhub.exit

xhci_get_rhub.exit:                               ; preds = %if.else.i.i, %hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %4, %if.else.i.i ], [ %hcd, %hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge ]
  %speed.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %5 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %6)
  %cmp.i = icmp sgt i32 %6, 63
  %usb3_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1
  %usb2_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 3, i32 16
  %retval.0.i351 = select i1 %cmp.i, ptr %usb3_rhub.i, ptr %usb2_rhub.i
  %7 = ptrtoint ptr %retval.0.i351 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %retval.0.i351, align 4
  %num_ports = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i351, i32 0, i32 1
  %9 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_ports, align 4
  %bus_state3 = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i351, i32 0, i32 3
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %11 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root_hub, align 8
  %do_remote_wakeup = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 40
  %13 = ptrtoint ptr %do_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %do_remote_wakeup, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  br i1 %tobool.not, label %xhci_get_rhub.exit.if.end28_crit_edge, label %if.then

xhci_get_rhub.exit.if.end28_crit_edge:            ; preds = %xhci_get_rhub.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then:                                          ; preds = %xhci_get_rhub.exit
  %resuming_ports = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i351, i32 0, i32 3, i32 6
  %14 = ptrtoint ptr %resuming_ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resuming_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.then.if.then12_crit_edge

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.then
  %port_remote_wakeup = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i351, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %port_remote_wakeup to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_remote_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end28_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.then.if.then12_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_bus_suspend.__UNIQUE_ID_ddebug434, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_bus_suspend, %if.then21)) #9
          to label %cleanup249 [label %if.then21], !srcloc !203

if.then21:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hcd_priv.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %22 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %busnum, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_bus_suspend.__UNIQUE_ID_ddebug434, ptr noundef %21, ptr noundef nonnull @.str.35, i32 noundef %23) #9
  br label %cleanup249

if.end28:                                         ; preds = %lor.lhs.false.if.end28_crit_edge, %xhci_get_rhub.exit.if.end28_crit_edge
  %24 = ptrtoint ptr %bus_state3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %bus_state3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool29.not379 = icmp eq i32 %10, 0
  br i1 %tobool29.not379, label %if.end28.while.cond200.outer.preheader_crit_edge, label %retry.preheader.lr.ph

if.end28.while.cond200.outer.preheader_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond200.outer.preheader

retry.preheader.lr.ph:                            ; preds = %if.end28
  %busnum75 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  %quirks = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  br label %retry.preheader

retry.preheader:                                  ; preds = %cleanup.retry.preheader_crit_edge, %retry.preheader.lr.ph
  %port_index.0381 = phi i32 [ %10, %retry.preheader.lr.ph ], [ %dec383, %cleanup.retry.preheader_crit_edge ]
  %flags.0380 = phi i32 [ %call6, %retry.preheader.lr.ph ], [ %flags.1.lcssa, %cleanup.retry.preheader_crit_edge ]
  %dec383 = add i32 %port_index.0381, -1
  %arrayidx = getelementptr ptr, ptr %8, i32 %dec383
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !199
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  %arrayidx34 = getelementptr [31 x i32], ptr %portsc_buf, i32 0, i32 %dec383
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx34, align 4
  %32 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %33)
  %cmp35370 = icmp sgt i32 %33, 63
  br i1 %cmp35370, label %retry.preheader.land.lhs.true_crit_edge, label %retry.preheader.if.end79_crit_edge

retry.preheader.if.end79_crit_edge:               ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

retry.preheader.land.lhs.true_crit_edge:          ; preds = %retry.preheader
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end78.land.lhs.true_crit_edge, %retry.preheader.land.lhs.true_crit_edge
  %34 = phi i32 [ %46, %do.end78.land.lhs.true_crit_edge ], [ %30, %retry.preheader.land.lhs.true_crit_edge ]
  %flags.1372 = phi i32 [ %call53, %do.end78.land.lhs.true_crit_edge ], [ %flags.0380, %retry.preheader.land.lhs.true_crit_edge ]
  %retries.0371 = phi i32 [ %dec37, %do.end78.land.lhs.true_crit_edge ], [ 10, %retry.preheader.land.lhs.true_crit_edge ]
  %dec37 = add nsw i32 %retries.0371, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0371)
  %tobool38.not = icmp ne i32 %retries.0371, 0
  %and = and i32 %34, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %and)
  %cmp40 = icmp eq i32 %and, 224
  %or.cond = select i1 %tobool38.not, i1 %cmp40, i1 false
  br i1 %or.cond, label %if.then42, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then42:                                        ; preds = %land.lhs.true
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1372) #9
  tail call void @msleep(i32 noundef 36) #9
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_bus_suspend.__UNIQUE_ID_ddebug435, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_bus_suspend, %if.then70)) #9
          to label %do.end78 [label %if.then70], !srcloc !203

if.then70:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hcd_priv.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %39 = ptrtoint ptr %busnum75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %busnum75, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_bus_suspend.__UNIQUE_ID_ddebug435, ptr noundef %38, ptr noundef nonnull @.str.36, i32 noundef %40, i32 noundef %port_index.0381) #9
  br label %do.end78

do.end78:                                         ; preds = %if.then70, %if.then42
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !199
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  %47 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %arrayidx34, align 4
  %48 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %speed.i, align 8
  %cmp35 = icmp sgt i32 %49, 63
  br i1 %cmp35, label %do.end78.land.lhs.true_crit_edge, label %do.end78.if.end79_crit_edge

do.end78.if.end79_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

do.end78.land.lhs.true_crit_edge:                 ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end79:                                         ; preds = %do.end78.if.end79_crit_edge, %land.lhs.true.if.end79_crit_edge, %retry.preheader.if.end79_crit_edge
  %.lcssa369 = phi i32 [ %30, %retry.preheader.if.end79_crit_edge ], [ %34, %land.lhs.true.if.end79_crit_edge ], [ %46, %do.end78.if.end79_crit_edge ]
  %flags.1.lcssa = phi i32 [ %flags.0380, %retry.preheader.if.end79_crit_edge ], [ %flags.1372, %land.lhs.true.if.end79_crit_edge ], [ %call53, %do.end78.if.end79_crit_edge ]
  %or.i.le = and i32 %.lcssa369, 1308688361
  %and80 = and i32 %.lcssa369, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end104, label %if.then82

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %bus_state3 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %bus_state3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1.lcssa) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_bus_suspend.__UNIQUE_ID_ddebug436, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_bus_suspend, %if.then97)) #9
          to label %cleanup249 [label %if.then97], !srcloc !203

if.then97:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hcd_priv.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_bus_suspend.__UNIQUE_ID_ddebug436, ptr noundef %54, ptr noundef nonnull @.str.37) #9
  br label %cleanup249

if.end104:                                        ; preds = %if.end79
  %55 = and i32 %.lcssa369, 482
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %if.then111, label %if.end104.if.end164_crit_edge

if.end104.if.end164_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then111:                                       ; preds = %if.end104
  %and112 = and i32 %.lcssa369, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  %brmerge = select i1 %tobool113.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %do.body140, label %if.then117

if.then117:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %bus_state3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %bus_state3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1.lcssa) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_bus_suspend.__UNIQUE_ID_ddebug437, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_bus_suspend, %if.then132)) #9
          to label %cleanup249 [label %if.then132], !srcloc !203

if.then132:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hcd_priv.i, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_bus_suspend.__UNIQUE_ID_ddebug437, ptr noundef %61, ptr noundef nonnull @.str.38) #9
  br label %cleanup249

do.body140:                                       ; preds = %if.then111
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_bus_suspend.__UNIQUE_ID_ddebug438, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_bus_suspend, %if.then152)) #9
          to label %do.end161 [label %if.then152], !srcloc !203

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hcd_priv.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %66 = ptrtoint ptr %busnum75 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %busnum75, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_bus_suspend.__UNIQUE_ID_ddebug438, ptr noundef %65, ptr noundef nonnull @.str.39, i32 noundef %67, i32 noundef %port_index.0381) #9
  br label %do.end161

do.end161:                                        ; preds = %if.then152, %do.body140
  %and162 = and i32 %.lcssa369, 1308687881
  %or = or i32 %and162, 65632
  tail call void @_set_bit(i32 noundef %dec383, ptr noundef %bus_state3) #9
  br label %if.end164

if.end164:                                        ; preds = %do.end161, %if.end104.if.end164_crit_edge
  %t2.0 = phi i32 [ %or, %do.end161 ], [ %or.i.le, %if.end104.if.end164_crit_edge ]
  br i1 %tobool.not, label %if.else189, label %if.then166

if.then166:                                       ; preds = %if.end164
  %and167 = and i32 %.lcssa369, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  %or170 = and i32 %t2.0, -234881025
  %t2.1.v = select i1 %tobool168.not, i32 167772160, i32 201326592
  %t2.1 = or i32 %or170, %t2.1.v
  %68 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %quirks, align 8
  %and175 = and i64 %69, 134217728
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and175)
  %tobool176.not = icmp eq i64 %and175, 0
  br i1 %tobool176.not, label %if.then166.if.end191_crit_edge, label %land.lhs.true177

if.then166.if.end191_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

land.lhs.true177:                                 ; preds = %if.then166
  %70 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %71)
  %cmp179 = icmp slt i32 %71, 64
  br i1 %cmp179, label %if.then181, label %land.lhs.true177.if.end191_crit_edge

land.lhs.true177.if.end191_crit_edge:             ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then181:                                       ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hcd, align 8
  %call184 = tail call zeroext i1 @usb_amd_pt_check_port(ptr noundef %73, i32 noundef %dec383) #9
  %spec.select = select i1 %call184, i32 %or170, i32 %t2.1
  br label %if.end191

if.else189:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  %and190 = and i32 %t2.0, -234881025
  br label %if.end191

if.end191:                                        ; preds = %if.else189, %if.then181, %land.lhs.true177.if.end191_crit_edge, %if.then166.if.end191_crit_edge
  %t2.2 = phi i32 [ %t2.1, %land.lhs.true177.if.end191_crit_edge ], [ %t2.1, %if.then166.if.end191_crit_edge ], [ %and190, %if.else189 ], [ %spec.select, %if.then181 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.le, i32 %t2.2)
  %cmp193.not = icmp eq i32 %or.i.le, %t2.2
  br i1 %cmp193.not, label %if.end191.cleanup_crit_edge, label %if.then195

if.end191.cleanup_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then195:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %t2.2, ptr %arrayidx34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then195, %if.end191.cleanup_crit_edge
  %tobool29.not = icmp eq i32 %dec383, 0
  br i1 %tobool29.not, label %cleanup.while.cond200.outer.preheader_crit_edge, label %cleanup.retry.preheader_crit_edge

cleanup.retry.preheader_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.preheader

cleanup.while.cond200.outer.preheader_crit_edge:  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond200.outer.preheader

while.cond200.outer.preheader:                    ; preds = %cleanup.while.cond200.outer.preheader_crit_edge, %if.end28.while.cond200.outer.preheader_crit_edge
  %flags.2.ph.ph = phi i32 [ %call6, %if.end28.while.cond200.outer.preheader_crit_edge ], [ %flags.1.lcssa, %cleanup.while.cond200.outer.preheader_crit_edge ]
  br label %while.cond200.outer

while.cond200:                                    ; preds = %while.cond200.outer, %while.body203.while.cond200_crit_edge
  %port_index.1 = phi i32 [ %dec201, %while.body203.while.cond200_crit_edge ], [ %port_index.1.ph, %while.cond200.outer ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_index.1)
  %tobool202.not = icmp eq i32 %port_index.1, 0
  br i1 %tobool202.not, label %while.end241, label %while.body203

while.body203:                                    ; preds = %while.cond200
  %dec201 = add i32 %port_index.1, -1
  %arrayidx204 = getelementptr [31 x i32], ptr %portsc_buf, i32 0, i32 %dec201
  %75 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx204, align 4
  %tobool205.not = icmp eq i32 %76, 0
  br i1 %tobool205.not, label %while.body203.while.cond200_crit_edge, label %if.end207

while.body203.while.cond200_crit_edge:            ; preds = %while.body203
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond200

if.end207:                                        ; preds = %while.body203
  %div3.i = lshr i32 %dec201, 5
  %arrayidx.i = getelementptr i32, ptr %bus_state3, i32 %div3.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %dec201, 31
  %79 = shl nuw i32 1, %and.i
  %80 = and i32 %78, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool210.not = icmp eq i32 %80, 0
  br i1 %tobool210.not, label %if.end207.do.body235_crit_edge, label %if.then211

if.end207.do.body235_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body235

if.then211:                                       ; preds = %if.end207
  %conv213 = trunc i32 %port_index.1 to i16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then211
  %i.032.i = phi i32 [ 0, %if.then211 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i353 = getelementptr %struct.xhci_hcd, ptr %hcd_priv.i, i32 0, i32 42, i32 %i.032.i
  %81 = ptrtoint ptr %arrayidx.i353 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i353, align 4
  %tobool.not.i354 = icmp eq ptr %82, null
  br i1 %tobool.not.i354, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %udev.i = getelementptr inbounds %struct.xhci_virt_device, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %udev.i, align 4
  %tobool3.not.i = icmp eq ptr %84, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %speed7.i = getelementptr inbounds %struct.usb_device, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %speed7.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %speed7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %86)
  %cmp8.i = icmp ult i32 %86, 5
  %87 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %88)
  %cmp10.i = icmp sgt i32 %88, 63
  %cmp12.i = xor i1 %cmp8.i, %cmp10.i
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fake_port.i = getelementptr inbounds %struct.xhci_virt_device, ptr %82, i32 0, i32 5
  %89 = ptrtoint ptr %fake_port.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %fake_port.i, align 4
  %91 = zext i8 %90 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %91, i16 %conv213)
  %cmp18.i = icmp eq i16 %91, %conv213
  br i1 %cmp18.i, label %xhci_find_slot_id_by_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc.i.do.body235_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.body235_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body235

xhci_find_slot_id_by_port.exit:                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.032.i)
  %tobool215.not = icmp eq i32 %i.032.i, 0
  br i1 %tobool215.not, label %xhci_find_slot_id_by_port.exit.do.body235_crit_edge, label %if.then216

xhci_find_slot_id_by_port.exit.do.body235_crit_edge: ; preds = %xhci_find_slot_id_by_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body235

if.then216:                                       ; preds = %xhci_find_slot_id_by_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.2.ph) #9
  tail call fastcc void @xhci_stop_device(ptr noundef %hcd_priv.i, i32 noundef %i.032.i)
  %call228 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  br label %do.body235

do.body235:                                       ; preds = %if.then216, %xhci_find_slot_id_by_port.exit.do.body235_crit_edge, %for.inc.i.do.body235_crit_edge, %if.end207.do.body235_crit_edge
  %flags.4 = phi i32 [ %flags.2.ph, %if.end207.do.body235_crit_edge ], [ %call228, %if.then216 ], [ %flags.2.ph, %xhci_find_slot_id_by_port.exit.do.body235_crit_edge ], [ %flags.2.ph, %for.inc.i.do.body235_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  tail call void @arm_heavy_mb() #9
  %92 = tail call i32 @llvm.bswap.i32(i32 %76)
  %arrayidx239 = getelementptr ptr, ptr %8, i32 %dec201
  %93 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx239, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %92) #9, !srcloc !202
  br label %while.cond200.outer

while.cond200.outer:                              ; preds = %do.body235, %while.cond200.outer.preheader
  %flags.2.ph = phi i32 [ %flags.4, %do.body235 ], [ %flags.2.ph.ph, %while.cond200.outer.preheader ]
  %port_index.1.ph = phi i32 [ %dec201, %do.body235 ], [ %10, %while.cond200.outer.preheader ]
  br label %while.cond200

while.end241:                                     ; preds = %while.cond200
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %97 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 4, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %98 = load volatile i32, ptr @jiffies, align 128
  %add243 = add i32 %98, 1
  %next_statechange = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i351, i32 0, i32 3, i32 1
  %99 = ptrtoint ptr %next_statechange to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add243, ptr %next_statechange, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.2.ph) #9
  %100 = ptrtoint ptr %bus_state3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bus_state3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool246.not = icmp eq i32 %101, 0
  br i1 %tobool246.not, label %while.end241.cleanup249_crit_edge, label %if.then247

while.end241.cleanup249_crit_edge:                ; preds = %while.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup249

if.then247:                                       ; preds = %while.end241
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #9
  br label %cleanup249

cleanup249:                                       ; preds = %if.then247, %while.end241.cleanup249_crit_edge, %if.then132, %if.then117, %if.then97, %if.then82, %if.then21, %if.then12
  %retval.2 = phi i32 [ -16, %if.then21 ], [ -16, %if.then97 ], [ -16, %if.then132 ], [ 0, %if.then247 ], [ 0, %while.end241.cleanup249_crit_edge ], [ -16, %if.then12 ], [ -16, %if.then82 ], [ -16, %if.then117 ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %portsc_buf) #9
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_amd_pt_check_port(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_bus_resume(ptr noundef %hcd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %0 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %1, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge

hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge:    ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_get_rhub.exit

if.else.i.i:                                      ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %xhci_get_rhub.exit

xhci_get_rhub.exit:                               ; preds = %if.else.i.i, %hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %3, %if.else.i.i ], [ %hcd, %hcd_to_xhci.exit.xhci_get_rhub.exit_crit_edge ]
  %speed.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %4 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %5)
  %cmp.i = icmp sgt i32 %5, 63
  %usb3_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1
  %usb2_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 3, i32 16
  %retval.0.i252 = select i1 %cmp.i, ptr %usb3_rhub.i, ptr %usb2_rhub.i
  %6 = ptrtoint ptr %retval.0.i252 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %retval.0.i252, align 4
  %num_ports = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i252, i32 0, i32 1
  %8 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ports, align 4
  %bus_state3 = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i252, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %next_statechange = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i252, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %next_statechange to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %next_statechange, align 4
  %sub = sub i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %xhci_get_rhub.exit.do.body4_crit_edge

xhci_get_rhub.exit.do.body4_crit_edge:            ; preds = %xhci_get_rhub.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

if.then:                                          ; preds = %xhci_get_rhub.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 5) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %xhci_get_rhub.exit.do.body4_crit_edge
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %flags10 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  %13 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags10, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4.cleanup_crit_edge, label %if.end13

do.body4.cleanup_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %do.body4
  %op_regs = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %op_regs, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  %18 = and i32 %17, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %op_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !202
  %21 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %22)
  %cmp23 = icmp sgt i32 %22, 63
  %. = select i1 %cmp23, i32 65536, i32 66016
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool27.not288 = icmp eq i32 %9, 0
  br i1 %tobool27.not288, label %if.end13.while.end_crit_edge, label %while.body.lr.ph

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end13
  %quirks = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %port_index.0289 = phi i32 [ %9, %while.body.lr.ph ], [ %dec290, %while.cond.backedge.while.body_crit_edge ]
  %dec290 = add i32 %port_index.0289, -1
  %arrayidx = getelementptr ptr, ptr %7, i32 %dec290
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !199
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  %29 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %quirks, align 8
  %and33 = and i64 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33)
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %while.body.if.end55_crit_edge, label %land.lhs.true

while.body.if.end55_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

land.lhs.true:                                    ; preds = %while.body
  %31 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %32)
  %cmp36 = icmp sgt i32 %32, 63
  br i1 %cmp36, label %land.lhs.true38, label %land.lhs.true.if.end55_crit_edge

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

land.lhs.true38:                                  ; preds = %land.lhs.true
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !199
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  %and.i253 = and i32 %38, 16777217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i253)
  %tobool.not.i254 = icmp eq i32 %and.i253, 0
  br i1 %tobool.not.i254, label %if.end.i, label %land.lhs.true38.if.end55_crit_edge

land.lhs.true38.if.end55_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end.i:                                         ; preds = %land.lhs.true38
  %and2.i = and i32 %38, 480
  %39 = zext i32 %and2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %and2.i, label %if.end.i.if.end55_crit_edge [
    i32 224, label %if.end.i.do.body43_crit_edge
    i32 320, label %if.end.i.do.body43_crit_edge309
  ]

if.end.i.do.body43_crit_edge309:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

if.end.i.do.body43_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

if.end.i.if.end55_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.body43:                                        ; preds = %if.end.i.do.body43_crit_edge, %if.end.i.do.body43_crit_edge309
  %and7.i = and i32 %38, 1895956477
  %or.i = or i32 %and7.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #9, !srcloc !202
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %34, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_bus_resume.__UNIQUE_ID_ddebug439, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_bus_resume, %if.then49)) #9
          to label %do.end54 [label %if.then49], !srcloc !203

if.then49:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hcd_priv.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %50 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %busnum, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_bus_resume.__UNIQUE_ID_ddebug439, ptr noundef %49, ptr noundef nonnull @.str.41, i32 noundef %51, i32 noundef %port_index.0289) #9
  br label %do.end54

do.end54:                                         ; preds = %if.then49, %do.body43
  tail call void @_clear_bit(i32 noundef %dec290, ptr noundef %bus_state3) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end65, %do.end54
  %tobool27.not = icmp eq i32 %dec290, 0
  br i1 %tobool27.not, label %while.endthread-pre-split, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end55:                                         ; preds = %if.end.i.if.end55_crit_edge, %land.lhs.true38.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %while.body.if.end55_crit_edge
  %div3.i = lshr i32 %dec290, 5
  %arrayidx.i = getelementptr i32, ptr %bus_state3, i32 %div3.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %dec290, 31
  %54 = shl nuw i32 1, %and.i
  %55 = and i32 %53, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool58.not = icmp eq i32 %55, 0
  br i1 %tobool58.not, label %if.end55.if.end65_crit_edge, label %if.then59

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then59:                                        ; preds = %if.end55
  %and60 = and i32 %28, 480
  %56 = zext i32 %and60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %and60, label %sw.default [
    i32 96, label %sw.bb
    i32 480, label %if.then59.if.end65_crit_edge
  ]

if.then59.if.end65_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

sw.bb:                                            ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %and62 = and i32 %28, 1308687881
  %or63 = or i32 %and62, %.
  br label %if.end65

sw.default:                                       ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef %dec290, ptr noundef %bus_state3) #9
  br label %if.end65

if.end65:                                         ; preds = %sw.default, %sw.bb, %if.then59.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  %portsc.0 = phi i32 [ %28, %sw.default ], [ %28, %if.then59.if.end65_crit_edge ], [ %or63, %sw.bb ], [ %28, %if.end55.if.end65_crit_edge ]
  %and66 = and i32 %portsc.0, -251527171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %57 = tail call i32 @llvm.bswap.i32(i32 %and66)
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %57) #9, !srcloc !202
  br label %while.cond.backedge

while.endthread-pre-split:                        ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr = load i32, ptr %speed.i, align 8
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %if.end13.while.end_crit_edge
  %63 = phi i32 [ %.pr, %while.endthread-pre-split ], [ %22, %if.end13.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %63)
  %cmp73 = icmp slt i32 %63, 64
  br i1 %cmp73, label %if.then75, label %while.end.if.end104_crit_edge

while.end.if.end104_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then75:                                        ; preds = %while.end
  %64 = ptrtoint ptr %bus_state3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bus_state3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool77.not = icmp eq i32 %65, 0
  br i1 %tobool77.not, label %if.then75.if.end94_crit_edge, label %if.then78

if.then75.if.end94_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then78:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  tail call void @msleep(i32 noundef 40) #9
  %call89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  br label %if.end94

if.end94:                                         ; preds = %if.then78, %if.then75.if.end94_crit_edge
  %flags.0 = phi i32 [ %call89, %if.then78 ], [ %call7, %if.then75.if.end94_crit_edge ]
  %call96 = tail call i32 @_find_next_bit_be(ptr noundef %bus_state3, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call96)
  %cmp97291 = icmp slt i32 %call96, 32
  br i1 %cmp97291, label %if.end94.for.body_crit_edge, label %if.end94.if.end104_crit_edge

if.end94.if.end104_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.end94.for.body_crit_edge:                      ; preds = %if.end94
  br label %for.body

for.body:                                         ; preds = %xhci_set_link_state.exit.for.body_crit_edge, %if.end94.for.body_crit_edge
  %port_index.1292 = phi i32 [ %call103, %xhci_set_link_state.exit.for.body_crit_edge ], [ %call96, %if.end94.for.body_crit_edge ]
  %arrayidx99 = getelementptr ptr, ptr %7, i32 %port_index.1292
  %66 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx99, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !199
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  %and.i257 = and i32 %71, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257)
  %tobool.not.i258 = icmp eq i32 %and.i257, 0
  br i1 %tobool.not.i258, label %for.body.xhci_test_and_clear_bit.exit_crit_edge, label %if.then.i

for.body.xhci_test_and_clear_bit.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_test_and_clear_bit.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = and i32 %71, 1308688361
  %or.i259 = or i32 %or.i.i, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i259) #9
  %73 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %67, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #9, !srcloc !202
  br label %xhci_test_and_clear_bit.exit

xhci_test_and_clear_bit.exit:                     ; preds = %if.then.i, %for.body.xhci_test_and_clear_bit.exit_crit_edge
  %75 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx99, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !199
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  %and.i261 = and i32 %80, 1308687881
  %or3.i = or i32 %and.i261, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %81 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #9
  %82 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %76, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #9, !srcloc !202
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_set_link_state.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_bus_resume, %if.then.i262)) #9
          to label %xhci_set_link_state.exit [label %if.then.i262], !srcloc !203

if.then.i262:                                     ; preds = %xhci_test_and_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hcd_priv.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %rhub.i = getelementptr inbounds %struct.xhci_port, ptr %76, i32 0, i32 3
  %88 = ptrtoint ptr %rhub.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rhub.i, align 4
  %hcd.i = getelementptr inbounds %struct.xhci_hub, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %hcd.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hcd.i, align 4
  %busnum.i = getelementptr inbounds %struct.usb_bus, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %busnum.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %busnum.i, align 8
  %hcd_portnum.i = getelementptr inbounds %struct.xhci_port, ptr %76, i32 0, i32 2
  %94 = ptrtoint ptr %hcd_portnum.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %hcd_portnum.i, align 4
  %add.i = add i32 %95, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_set_link_state.__UNIQUE_ID_ddebug418, ptr noundef %87, ptr noundef nonnull @.str.3, i32 noundef %93, i32 noundef %add.i, i32 noundef %80, i32 noundef %or3.i) #9
  br label %xhci_set_link_state.exit

xhci_set_link_state.exit:                         ; preds = %if.then.i262, %xhci_test_and_clear_bit.exit
  %add102 = add nsw i32 %port_index.1292, 1
  %call103 = tail call i32 @_find_next_bit_be(ptr noundef %bus_state3, i32 noundef 32, i32 noundef %add102) #9
  %cmp97 = icmp slt i32 %call103, 32
  br i1 %cmp97, label %xhci_set_link_state.exit.for.body_crit_edge, label %xhci_set_link_state.exit.if.end104_crit_edge

xhci_set_link_state.exit.if.end104_crit_edge:     ; preds = %xhci_set_link_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

xhci_set_link_state.exit.for.body_crit_edge:      ; preds = %xhci_set_link_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end104:                                        ; preds = %xhci_set_link_state.exit.if.end104_crit_edge, %if.end94.if.end104_crit_edge, %while.end.if.end104_crit_edge
  %flags.1 = phi i32 [ %call7, %while.end.if.end104_crit_edge ], [ %flags.0, %if.end94.if.end104_crit_edge ], [ %flags.0, %xhci_set_link_state.exit.if.end104_crit_edge ]
  %call106 = tail call i32 @_find_next_bit_be(ptr noundef %bus_state3, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call106)
  %cmp108293 = icmp slt i32 %call106, 32
  br i1 %cmp108293, label %for.body110.lr.ph, label %if.end104.for.end137_crit_edge

if.end104.for.end137_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end137

for.body110.lr.ph:                                ; preds = %if.end104
  %busnum123 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 2
  br label %for.body110

for.body110:                                      ; preds = %for.inc133.for.body110_crit_edge, %for.body110.lr.ph
  %port_index.2294 = phi i32 [ %call106, %for.body110.lr.ph ], [ %call136, %for.inc133.for.body110_crit_edge ]
  %arrayidx111 = getelementptr ptr, ptr %7, i32 %port_index.2294
  %96 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx111, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %call113 = tail call i32 @xhci_handshake(ptr noundef %99, i32 noundef 4194304, i32 noundef 4194304, i32 noundef 10000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end125, label %do.end118

do.end118:                                        ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hcd_priv.i, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 8
  %104 = ptrtoint ptr %busnum123 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %busnum123, align 8
  %add124 = add nsw i32 %port_index.2294, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %103, ptr noundef nonnull @.str.42, i32 noundef %105, i32 noundef %add124) #12
  br label %for.inc133

if.end125:                                        ; preds = %for.body110
  %106 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx111, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #9, !srcloc !199
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  %and.i263 = and i32 %111, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i263)
  %tobool.not.i264 = icmp eq i32 %and.i263, 0
  br i1 %tobool.not.i264, label %if.end125.xhci_test_and_clear_bit.exit269_crit_edge, label %if.then.i267

if.end125.xhci_test_and_clear_bit.exit269_crit_edge: ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_test_and_clear_bit.exit269

if.then.i267:                                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i265 = and i32 %111, 1308688361
  %or.i266 = or i32 %or.i.i265, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %112 = tail call i32 @llvm.bswap.i32(i32 %or.i266) #9
  %113 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %107, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #9, !srcloc !202
  br label %xhci_test_and_clear_bit.exit269

xhci_test_and_clear_bit.exit269:                  ; preds = %if.then.i267, %if.end125.xhci_test_and_clear_bit.exit269_crit_edge
  %115 = trunc i32 %port_index.2294 to i16
  %conv128 = add i16 %115, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %xhci_test_and_clear_bit.exit269
  %i.032.i = phi i32 [ 0, %xhci_test_and_clear_bit.exit269 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i270 = getelementptr %struct.xhci_hcd, ptr %hcd_priv.i, i32 0, i32 42, i32 %i.032.i
  %116 = ptrtoint ptr %arrayidx.i270 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i270, align 4
  %tobool.not.i271 = icmp eq ptr %117, null
  br i1 %tobool.not.i271, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %udev.i = getelementptr inbounds %struct.xhci_virt_device, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %udev.i, align 4
  %tobool3.not.i = icmp eq ptr %119, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i272

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i272:                                      ; preds = %lor.lhs.false.i
  %speed7.i = getelementptr inbounds %struct.usb_device, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %speed7.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %speed7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %121)
  %cmp8.i = icmp ult i32 %121, 5
  %122 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %123)
  %cmp10.i = icmp sgt i32 %123, 63
  %cmp12.i = xor i1 %cmp8.i, %cmp10.i
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.end.i272.for.inc.i_crit_edge

if.end.i272.for.inc.i_crit_edge:                  ; preds = %if.end.i272
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i272
  %fake_port.i = getelementptr inbounds %struct.xhci_virt_device, ptr %117, i32 0, i32 5
  %124 = ptrtoint ptr %fake_port.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %fake_port.i, align 4
  %126 = zext i8 %125 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv128, i16 %126)
  %cmp18.i = icmp eq i16 %conv128, %126
  br i1 %cmp18.i, label %xhci_find_slot_id_by_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i272.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc.i.for.inc133_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.inc133_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc133

xhci_find_slot_id_by_port.exit:                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.032.i)
  %tobool130.not = icmp eq i32 %i.032.i, 0
  br i1 %tobool130.not, label %xhci_find_slot_id_by_port.exit.for.inc133_crit_edge, label %xhci_find_slot_id_by_port.exit.for.body.i276_crit_edge

xhci_find_slot_id_by_port.exit.for.body.i276_crit_edge: ; preds = %xhci_find_slot_id_by_port.exit
  br label %for.body.i276

xhci_find_slot_id_by_port.exit.for.inc133_crit_edge: ; preds = %xhci_find_slot_id_by_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc133

for.body.i276:                                    ; preds = %for.inc10.i.for.body.i276_crit_edge, %xhci_find_slot_id_by_port.exit.for.body.i276_crit_edge
  %i.029.i = phi i32 [ %inc11.i, %for.inc10.i.for.body.i276_crit_edge ], [ 0, %xhci_find_slot_id_by_port.exit.for.body.i276_crit_edge ]
  %127 = ptrtoint ptr %arrayidx.i270 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i270, align 4
  %ep_state.i = getelementptr %struct.xhci_virt_device, ptr %128, i32 0, i32 4, i32 %i.029.i, i32 5
  %129 = ptrtoint ptr %ep_state.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ep_state.i, align 4
  %and.i274 = and i32 %130, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i274)
  %tobool.not.i275 = icmp eq i32 %and.i274, 0
  br i1 %tobool.not.i275, label %if.else.i278, label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.body.i276
  %stream_info.i = getelementptr %struct.xhci_virt_device, ptr %128, i32 0, i32 4, i32 %i.029.i, i32 3
  %131 = ptrtoint ptr %stream_info.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %stream_info.i, align 4
  %num_streams26.i = getelementptr inbounds %struct.xhci_stream_info, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %num_streams26.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_streams26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp327.i = icmp ugt i32 %134, 1
  br i1 %cmp327.i, label %for.cond2.preheader.i.for.body4.i_crit_edge, label %for.cond2.preheader.i.for.inc10.i_crit_edge

for.cond2.preheader.i.for.inc10.i_crit_edge:      ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10.i

for.cond2.preheader.i.for.body4.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.cond2.preheader.i.for.body4.i_crit_edge
  %s.028.i = phi i32 [ %inc.i277, %for.body4.i.for.body4.i_crit_edge ], [ 1, %for.cond2.preheader.i.for.body4.i_crit_edge ]
  tail call void @xhci_ring_ep_doorbell(ptr noundef %hcd_priv.i, i32 noundef %i.032.i, i32 noundef %i.029.i, i32 noundef %s.028.i) #9
  %inc.i277 = add nuw i32 %s.028.i, 1
  %135 = ptrtoint ptr %stream_info.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %stream_info.i, align 4
  %num_streams.i = getelementptr inbounds %struct.xhci_stream_info, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %num_streams.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_streams.i, align 4
  %cmp3.i = icmp ult i32 %inc.i277, %138
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.for.inc10.i_crit_edge

for.body4.i.for.inc10.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10.i

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4.i

if.else.i278:                                     ; preds = %for.body.i276
  %ring.i = getelementptr %struct.xhci_virt_device, ptr %128, i32 0, i32 4, i32 %i.029.i, i32 2
  %139 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ring.i, align 4
  %tobool5.not.i = icmp eq ptr %140, null
  br i1 %tobool5.not.i, label %if.else.i278.for.inc10.i_crit_edge, label %land.lhs.true.i279

if.else.i278.for.inc10.i_crit_edge:               ; preds = %if.else.i278
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10.i

land.lhs.true.i279:                               ; preds = %if.else.i278
  %dequeue.i = getelementptr inbounds %struct.xhci_ring, ptr %140, i32 0, i32 4
  %141 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dequeue.i, align 4
  %tobool7.not.i = icmp eq ptr %142, null
  br i1 %tobool7.not.i, label %land.lhs.true.i279.for.inc10.i_crit_edge, label %if.then8.i

land.lhs.true.i279.for.inc10.i_crit_edge:         ; preds = %land.lhs.true.i279
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10.i

if.then8.i:                                       ; preds = %land.lhs.true.i279
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xhci_ring_ep_doorbell(ptr noundef %hcd_priv.i, i32 noundef %i.032.i, i32 noundef %i.029.i, i32 noundef 0) #9
  br label %for.inc10.i

for.inc10.i:                                      ; preds = %if.then8.i, %land.lhs.true.i279.for.inc10.i_crit_edge, %if.else.i278.for.inc10.i_crit_edge, %for.body4.i.for.inc10.i_crit_edge, %for.cond2.preheader.i.for.inc10.i_crit_edge
  %inc11.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i280 = icmp eq i32 %inc11.i, 31
  br i1 %exitcond.not.i280, label %for.inc10.i.for.inc133_crit_edge, label %for.inc10.i.for.body.i276_crit_edge

for.inc10.i.for.body.i276_crit_edge:              ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i276

for.inc10.i.for.inc133_crit_edge:                 ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc133

for.inc133:                                       ; preds = %for.inc10.i.for.inc133_crit_edge, %xhci_find_slot_id_by_port.exit.for.inc133_crit_edge, %for.inc.i.for.inc133_crit_edge, %do.end118
  %add135 = add i32 %port_index.2294, 1
  %call136 = tail call i32 @_find_next_bit_be(ptr noundef %bus_state3, i32 noundef 32, i32 noundef %add135) #9
  %cmp108 = icmp slt i32 %call136, 32
  br i1 %cmp108, label %for.inc133.for.body110_crit_edge, label %for.inc133.for.end137_crit_edge

for.inc133.for.end137_crit_edge:                  ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end137

for.inc133.for.body110_crit_edge:                 ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body110

for.end137:                                       ; preds = %for.inc133.for.end137_crit_edge, %if.end104.for.end137_crit_edge
  %143 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %op_regs, align 4
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %146 = load volatile i32, ptr @jiffies, align 128
  %add146 = add i32 %146, 1
  %147 = ptrtoint ptr %next_statechange to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %add146, ptr %next_statechange, align 4
  %148 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %op_regs, align 4
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %151 = or i32 %150, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  tail call void @arm_heavy_mb() #9
  %152 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %op_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %151) #9, !srcloc !202
  %154 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %op_regs, align 4
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  br label %cleanup

cleanup:                                          ; preds = %for.end137, %do.body4.cleanup_crit_edge
  %flags.1.sink = phi i32 [ %flags.1, %for.end137 ], [ %call7, %do.body4.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %for.end137 ], [ -108, %do.body4.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1.sink) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_handshake(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_get_resuming_ports(ptr noundef %hcd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.xhci_get_rhub.exit_crit_edge

entry.xhci_get_rhub.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_get_rhub.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %0 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %xhci_get_rhub.exit

xhci_get_rhub.exit:                               ; preds = %if.else.i.i, %entry.xhci_get_rhub.exit_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %1, %if.else.i.i ], [ %hcd, %entry.xhci_get_rhub.exit_crit_edge ]
  %speed.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %2 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %3)
  %cmp.i = icmp sgt i32 %3, 63
  %usb3_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1
  %usb2_rhub.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 3, i32 16
  %retval.0.i = select i1 %cmp.i, ptr %usb3_rhub.i, ptr %usb2_rhub.i
  %resuming_ports = getelementptr inbounds %struct.xhci_hub, ptr %retval.0.i, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %resuming_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resuming_ports, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_get_port_status(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_dbg_trace(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_quirks(ptr noundef %vaf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_quirks, i32 0, i32 1), ptr blockaddress(@trace_xhci_dbg_quirks, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !203

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !236

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !269
  %call42 = tail call i32 @__traceiter_xhci_dbg_quirks(ptr noundef null, ptr noundef %vaf) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !270
  %13 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !236

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !239
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_quirks, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_quirks, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xhci_dbg_quirks.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xhci_dbg_quirks.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 51, ptr noundef nonnull @.str.44) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !240
  %31 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
declare dso_local i32 @__traceiter_xhci_dbg_quirks(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xhci_handle_usb2_port_link_resume(ptr nocapture noundef readonly %port, ptr nocapture noundef %status, i32 noundef %portsc, ptr nocapture noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rhub = getelementptr inbounds %struct.xhci_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %rhub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhub, align 4
  %hcd1 = getelementptr inbounds %struct.xhci_hub, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hcd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd1, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %3, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %hcd_portnum = getelementptr inbounds %struct.xhci_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %hcd_portnum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hcd_portnum, align 4
  %8 = and i32 %portsc, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %.not = icmp eq i32 %8, 2
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %status, align 4
  br label %cleanup98

if.end:                                           ; preds = %hcd_to_xhci.exit
  %arrayidx = getelementptr %struct.xhci_hub, ptr %1, i32 0, i32 3, i32 5, i32 %7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.then7, label %if.else17

if.then7:                                         ; preds = %if.end
  %resuming_ports = getelementptr inbounds %struct.xhci_hub, ptr %1, i32 0, i32 3, i32 6
  %div3.i = lshr i32 %7, 5
  %arrayidx.i = getelementptr i32, ptr %resuming_ports, i32 %div3.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %7, 31
  %14 = shl nuw i32 1, %and.i
  %15 = and i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.else, label %if.then7.cleanup98_crit_edge

if.then7.cleanup98_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %16, 4
  tail call void @_set_bit(i32 noundef %7, ptr noundef %resuming_ports) #9
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %arrayidx, align 4
  %rh_timer = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 5
  %call15 = tail call i32 @mod_timer(ptr noundef %rh_timer, i32 noundef %add) #9
  tail call void @usb_hcd_start_port_resume(ptr noundef %3, i32 noundef %7) #9
  br label %cleanup98

if.else17:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %18, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.then20, label %if.else94

if.then20:                                        ; preds = %if.else17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_handle_usb2_port_link_resume.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_handle_usb2_port_link_resume, %if.then25)) #9
          to label %do.end [label %if.then25], !srcloc !203

if.then25:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hcd_priv.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %busnum, align 8
  %add29 = add i32 %7, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_handle_usb2_port_link_resume.__UNIQUE_ID_ddebug419, ptr noundef %22, ptr noundef nonnull @.str.49, i32 noundef %24, i32 noundef %add29) #9
  br label %do.end

do.end:                                           ; preds = %if.then25, %if.then20
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx, align 4
  %resuming_ports33 = getelementptr inbounds %struct.xhci_hub, ptr %1, i32 0, i32 3, i32 6
  tail call void @_clear_bit(i32 noundef %7, ptr noundef %resuming_ports33) #9
  %rexit_ports = getelementptr inbounds %struct.xhci_hub, ptr %1, i32 0, i32 3, i32 7
  tail call void @_set_bit(i32 noundef %7, ptr noundef %rexit_ports) #9
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !199
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  %and.i160 = and i32 %29, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i160)
  %tobool.not.i161 = icmp eq i32 %and.i160, 0
  br i1 %tobool.not.i161, label %do.end.xhci_test_and_clear_bit.exit_crit_edge, label %if.then.i

do.end.xhci_test_and_clear_bit.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xhci_test_and_clear_bit.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = and i32 %29, 1308688361
  %or.i = or i32 %or.i.i, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #9, !srcloc !202
  br label %xhci_test_and_clear_bit.exit

xhci_test_and_clear_bit.exit:                     ; preds = %if.then.i, %do.end.xhci_test_and_clear_bit.exit_crit_edge
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !199
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  %and.i162 = and i32 %36, 1308687881
  %or3.i = or i32 %and.i162, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #9
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #9, !srcloc !202
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_set_link_state.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_handle_usb2_port_link_resume, %if.then.i163)) #9
          to label %xhci_set_link_state.exit [label %if.then.i163], !srcloc !203

if.then.i163:                                     ; preds = %xhci_test_and_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hcd_priv.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %44 = ptrtoint ptr %rhub to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rhub, align 4
  %hcd.i = getelementptr inbounds %struct.xhci_hub, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %hcd.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hcd.i, align 4
  %busnum.i = getelementptr inbounds %struct.usb_bus, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %busnum.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %busnum.i, align 8
  %50 = ptrtoint ptr %hcd_portnum to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hcd_portnum, align 4
  %add.i = add i32 %51, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_set_link_state.__UNIQUE_ID_ddebug418, ptr noundef %43, ptr noundef nonnull @.str.3, i32 noundef %49, i32 noundef %add.i, i32 noundef %36, i32 noundef %or3.i) #9
  br label %xhci_set_link_state.exit

xhci_set_link_state.exit:                         ; preds = %if.then.i163, %xhci_test_and_clear_bit.exit
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 4
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %53) #9
  %arrayidx34 = getelementptr %struct.xhci_hub, ptr %1, i32 0, i32 3, i32 8, i32 %7
  %call36 = tail call i32 @wait_for_completion_timeout(ptr noundef %arrayidx34, i32 noundef 2) #9
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call43, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool48.not = icmp eq i32 %call36, 0
  br i1 %tobool48.not, label %if.else75, label %if.then49

if.then49:                                        ; preds = %xhci_set_link_state.exit
  %55 = trunc i32 %7 to i16
  %conv51 = add i16 %55, 1
  %speed9.i = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then49
  %i.032.i = phi i32 [ 0, %if.then49 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i164 = getelementptr %struct.xhci_hcd, ptr %hcd_priv.i, i32 0, i32 42, i32 %i.032.i
  %56 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i164, align 4
  %tobool.not.i165 = icmp eq ptr %57, null
  br i1 %tobool.not.i165, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %udev.i = getelementptr inbounds %struct.xhci_virt_device, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %udev.i, align 4
  %tobool3.not.i = icmp eq ptr %59, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %speed7.i = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %speed7.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %speed7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %61)
  %cmp8.i = icmp ult i32 %61, 5
  %62 = ptrtoint ptr %speed9.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %speed9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %63)
  %cmp10.i = icmp sgt i32 %63, 63
  %cmp12.i = xor i1 %cmp8.i, %cmp10.i
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fake_port.i = getelementptr inbounds %struct.xhci_virt_device, ptr %57, i32 0, i32 5
  %64 = ptrtoint ptr %fake_port.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %fake_port.i, align 4
  %66 = zext i8 %65 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv51, i16 %66)
  %cmp18.i = icmp eq i16 %conv51, %66
  br i1 %cmp18.i, label %xhci_find_slot_id_by_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc.i.do.body55_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.body55_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body55

xhci_find_slot_id_by_port.exit:                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.032.i)
  %tobool53.not = icmp eq i32 %i.032.i, 0
  br i1 %tobool53.not, label %xhci_find_slot_id_by_port.exit.do.body55_crit_edge, label %xhci_find_slot_id_by_port.exit.for.body.i169_crit_edge

xhci_find_slot_id_by_port.exit.for.body.i169_crit_edge: ; preds = %xhci_find_slot_id_by_port.exit
  br label %for.body.i169

xhci_find_slot_id_by_port.exit.do.body55_crit_edge: ; preds = %xhci_find_slot_id_by_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body55

do.body55:                                        ; preds = %xhci_find_slot_id_by_port.exit.do.body55_crit_edge, %for.inc.i.do.body55_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_handle_usb2_port_link_resume.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_handle_usb2_port_link_resume, %if.then67)) #9
          to label %do.end73 [label %if.then67], !srcloc !203

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hcd_priv.i, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_handle_usb2_port_link_resume.__UNIQUE_ID_ddebug420, ptr noundef %70, ptr noundef nonnull @.str.15) #9
  br label %do.end73

do.end73:                                         ; preds = %if.then67, %do.body55
  %71 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %status, align 4
  br label %cleanup98

for.body.i169:                                    ; preds = %for.inc10.i.for.body.i169_crit_edge, %xhci_find_slot_id_by_port.exit.for.body.i169_crit_edge
  %i.029.i = phi i32 [ %inc11.i, %for.inc10.i.for.body.i169_crit_edge ], [ 0, %xhci_find_slot_id_by_port.exit.for.body.i169_crit_edge ]
  %72 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i164, align 4
  %ep_state.i = getelementptr %struct.xhci_virt_device, ptr %73, i32 0, i32 4, i32 %i.029.i, i32 5
  %74 = ptrtoint ptr %ep_state.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ep_state.i, align 4
  %and.i167 = and i32 %75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool.not.i168 = icmp eq i32 %and.i167, 0
  br i1 %tobool.not.i168, label %if.else.i171, label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.body.i169
  %stream_info.i = getelementptr %struct.xhci_virt_device, ptr %73, i32 0, i32 4, i32 %i.029.i, i32 3
  %76 = ptrtoint ptr %stream_info.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %stream_info.i, align 4
  %num_streams26.i = getelementptr inbounds %struct.xhci_stream_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %num_streams26.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_streams26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp327.i = icmp ugt i32 %79, 1
  br i1 %cmp327.i, label %for.cond2.preheader.i.for.body4.i_crit_edge, label %for.cond2.preheader.i.for.inc10.i_crit_edge

for.cond2.preheader.i.for.inc10.i_crit_edge:      ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10.i

for.cond2.preheader.i.for.body4.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.cond2.preheader.i.for.body4.i_crit_edge
  %s.028.i = phi i32 [ %inc.i170, %for.body4.i.for.body4.i_crit_edge ], [ 1, %for.cond2.preheader.i.for.body4.i_crit_edge ]
  tail call void @xhci_ring_ep_doorbell(ptr noundef %hcd_priv.i, i32 noundef %i.032.i, i32 noundef %i.029.i, i32 noundef %s.028.i) #9
  %inc.i170 = add nuw i32 %s.028.i, 1
  %80 = ptrtoint ptr %stream_info.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %stream_info.i, align 4
  %num_streams.i = getelementptr inbounds %struct.xhci_stream_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %num_streams.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_streams.i, align 4
  %cmp3.i = icmp ult i32 %inc.i170, %83
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.for.inc10.i_crit_edge

for.body4.i.for.inc10.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10.i

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4.i

if.else.i171:                                     ; preds = %for.body.i169
  %ring.i = getelementptr %struct.xhci_virt_device, ptr %73, i32 0, i32 4, i32 %i.029.i, i32 2
  %84 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ring.i, align 4
  %tobool5.not.i = icmp eq ptr %85, null
  br i1 %tobool5.not.i, label %if.else.i171.for.inc10.i_crit_edge, label %land.lhs.true.i172

if.else.i171.for.inc10.i_crit_edge:               ; preds = %if.else.i171
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10.i

land.lhs.true.i172:                               ; preds = %if.else.i171
  %dequeue.i = getelementptr inbounds %struct.xhci_ring, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dequeue.i, align 4
  %tobool7.not.i = icmp eq ptr %87, null
  br i1 %tobool7.not.i, label %land.lhs.true.i172.for.inc10.i_crit_edge, label %if.then8.i

land.lhs.true.i172.for.inc10.i_crit_edge:         ; preds = %land.lhs.true.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10.i

if.then8.i:                                       ; preds = %land.lhs.true.i172
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xhci_ring_ep_doorbell(ptr noundef %hcd_priv.i, i32 noundef %i.032.i, i32 noundef %i.029.i, i32 noundef 0) #9
  br label %for.inc10.i

for.inc10.i:                                      ; preds = %if.then8.i, %land.lhs.true.i172.for.inc10.i_crit_edge, %if.else.i171.for.inc10.i_crit_edge, %for.body4.i.for.inc10.i_crit_edge, %for.cond2.preheader.i.for.inc10.i_crit_edge
  %inc11.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i173 = icmp eq i32 %inc11.i, 31
  br i1 %exitcond.not.i173, label %for.inc10.i.if.end89_crit_edge, label %for.inc10.i.for.body.i169_crit_edge

for.inc10.i.for.body.i169_crit_edge:              ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i169

for.inc10.i.if.end89_crit_edge:                   ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.else75:                                        ; preds = %xhci_set_link_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %port, align 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #9, !srcloc !199
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  %92 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hcd_priv.i, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  %busnum86 = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 2
  %96 = ptrtoint ptr %busnum86 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %busnum86, align 8
  %add87 = add i32 %7, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.50, i32 noundef %97, i32 noundef %add87, i32 noundef %91) #12
  %98 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %status, align 4
  %or = or i32 %99, 4
  store i32 %or, ptr %status, align 4
  tail call void @_clear_bit(i32 noundef %7, ptr noundef %rexit_ports) #9
  br label %if.end89

if.end89:                                         ; preds = %if.else75, %for.inc10.i.if.end89_crit_edge
  tail call void @usb_hcd_end_port_resume(ptr noundef %3, i32 noundef %7) #9
  %shl = shl nuw i32 1, %7
  %port_c_suspend = getelementptr inbounds %struct.xhci_hub, ptr %1, i32 0, i32 3, i32 2
  %100 = ptrtoint ptr %port_c_suspend to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port_c_suspend, align 4
  %or91 = or i32 %101, %shl
  store i32 %or91, ptr %port_c_suspend, align 4
  %neg = xor i32 %shl, -1
  %suspended_ports = getelementptr inbounds %struct.xhci_hub, ptr %1, i32 0, i32 3, i32 3
  %102 = ptrtoint ptr %suspended_ports to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %suspended_ports, align 4
  %and93 = and i32 %103, %neg
  store i32 %and93, ptr %suspended_ports, align 4
  br label %cleanup98

if.else94:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %status, align 4
  %or95 = or i32 %105, 4
  store i32 %or95, ptr %status, align 4
  br label %cleanup98

cleanup98:                                        ; preds = %if.else94, %if.end89, %do.end73, %if.else, %if.then7.cleanup98_crit_edge, %if.then
  %retval.1 = phi i32 [ -22, %if.then ], [ -19, %do.end73 ], [ 0, %if.end89 ], [ 0, %if.else94 ], [ 0, %if.else ], [ 0, %if.then7.cleanup98_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_stop_device(ptr noundef %vdev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_stop_device, i32 0, i32 1), ptr blockaddress(@trace_xhci_stop_device, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !203

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !236

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !272
  %call42 = tail call i32 @__traceiter_xhci_stop_device(ptr noundef null, ptr noundef %vdev) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !273
  %13 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !236

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !239
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_stop_device, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_stop_device, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xhci_stop_device.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xhci_stop_device.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 254, ptr noundef nonnull @.str.44) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !240
  %31 = tail call i32 @llvm.read_register.i32(metadata !189) #9
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
declare dso_local ptr @xhci_alloc_command(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_ep_ctx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_queue_stop_endpoint(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_free_command(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_ring_cmd_db(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_stop_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_disable_slot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_free_virt_device(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_halt(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_start(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_hub_status_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !100, !102, !103, !105, !107, !109, !110, !112, !113, !114, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !130, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !150, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !170, !171, !173, !174, !175, !177, !178, !180, !181, !183, !184, !185, !186, !188}
!llvm.named.register.sp = !{!189}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-hub.c", i32 780, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @xhci_set_link_state.__UNIQUE_ID_ddebug418, !1, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/xhci-hub.c", i32 1214, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @xhci_hub_control.__UNIQUE_ID_ddebug421, !7, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/xhci-hub.c", i32 1247, i32 3}
!12 = !{ptr @xhci_hub_control.__UNIQUE_ID_ddebug422, !11, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/xhci-hub.c", i32 1256, i32 5}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @xhci_hub_control._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @xhci_hub_control._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/xhci-hub.c", i32 1304, i32 5}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @xhci_hub_control._entry.10, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @xhci_hub_control._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/host/xhci-hub.c", i32 1312, i32 5}
!26 = !{ptr @xhci_hub_control._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @xhci_hub_control._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/host/xhci-hub.c", i32 1333, i32 5}
!30 = !{ptr @xhci_hub_control.__UNIQUE_ID_ddebug423, !29, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/host/xhci-hub.c", i32 1350, i32 5}
!33 = !{ptr @xhci_hub_control.__UNIQUE_ID_ddebug424, !32, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/xhci-hub.c", i32 1374, i32 6}
!36 = !{ptr @xhci_hub_control.__UNIQUE_ID_ddebug425, !35, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/host/xhci-hub.c", i32 1379, i32 6}
!39 = !{ptr @xhci_hub_control._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @xhci_hub_control._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/host/xhci-hub.c", i32 1383, i32 5}
!43 = !{ptr @xhci_hub_control.__UNIQUE_ID_ddebug426, !42, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/host/xhci-hub.c", i32 1398, i32 5}
!46 = !{ptr @xhci_hub_control._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @xhci_hub_control._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/host/xhci-hub.c", i32 1435, i32 6}
!50 = !{ptr @xhci_hub_control.__UNIQUE_ID_ddebug427, !49, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/host/xhci-hub.c", i32 1481, i32 4}
!53 = !{ptr @xhci_hub_control.__UNIQUE_ID_ddebug428, !52, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/host/xhci-hub.c", i32 1488, i32 4}
!56 = !{ptr @xhci_hub_control.__UNIQUE_ID_ddebug429, !55, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/host/xhci-hub.c", i32 1543, i32 4}
!59 = !{ptr @xhci_hub_control.__UNIQUE_ID_ddebug430, !58, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/host/xhci-hub.c", i32 1544, i32 4}
!62 = !{ptr @xhci_hub_control.__UNIQUE_ID_ddebug431, !61, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!63 = !{ptr @xhci_hub_control.__UNIQUE_ID_ddebug432, !64, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!64 = !{!"../drivers/usb/host/xhci-hub.c", i32 1568, i32 5}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/host/xhci-hub.c", i32 1672, i32 3}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @xhci_hub_status_data.__UNIQUE_ID_ddebug433, !66, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/host/xhci-hub.c", i32 1705, i32 4}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @xhci_bus_suspend.__UNIQUE_ID_ddebug434, !70, !"__UNIQUE_ID_ddebug434", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/host/xhci-hub.c", i32 1733, i32 4}
!75 = !{ptr @xhci_bus_suspend.__UNIQUE_ID_ddebug435, !74, !"__UNIQUE_ID_ddebug435", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/host/xhci-hub.c", i32 1741, i32 4}
!78 = !{ptr @xhci_bus_suspend.__UNIQUE_ID_ddebug436, !77, !"__UNIQUE_ID_ddebug436", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/host/xhci-hub.c", i32 1749, i32 5}
!81 = !{ptr @xhci_bus_suspend.__UNIQUE_ID_ddebug437, !80, !"__UNIQUE_ID_ddebug437", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/host/xhci-hub.c", i32 1752, i32 4}
!84 = !{ptr @xhci_bus_suspend.__UNIQUE_ID_ddebug438, !83, !"__UNIQUE_ID_ddebug438", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/host/xhci-hub.c", i32 1887, i32 4}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @xhci_bus_resume.__UNIQUE_ID_ddebug439, !86, !"__UNIQUE_ID_ddebug439", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/host/xhci-hub.c", i32 1935, i32 4}
!91 = !{ptr @xhci_bus_resume._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @xhci_bus_resume._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @ssp_cap_default_ssa, !94, !"ssp_cap_default_ssa", i1 false, i1 false}
!94 = !{!"../drivers/usb/host/xhci-hub.c", i32 24, i32 12}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../drivers/usb/host/xhci-trace.h", i32 545, i32 1}
!97 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!99 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!102 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/host/xhci-hub.c", i32 900, i32 5}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/host/xhci-hub.c", i32 902, i32 5}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../drivers/usb/host/xhci-trace.h", i32 48, i32 1}
!109 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/host/xhci-hub.c", i32 952, i32 3}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @xhci_handle_usb2_port_link_resume.__UNIQUE_ID_ddebug419, !111, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!114 = !{ptr @xhci_handle_usb2_port_link_resume.__UNIQUE_ID_ddebug420, !115, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!115 = !{!"../drivers/usb/host/xhci-hub.c", i32 973, i32 5}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/host/xhci-hub.c", i32 981, i32 4}
!118 = !{ptr @xhci_handle_usb2_port_link_resume._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @xhci_handle_usb2_port_link_resume._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/host/xhci-hub.c", i32 536, i32 3}
!122 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @xhci_stop_device._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @xhci_stop_device._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../drivers/usb/host/xhci-trace.h", i32 251, i32 1}
!127 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/host/xhci-hub.c", i32 667, i32 2}
!130 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @xhci_set_port_power.__UNIQUE_ID_ddebug413, !129, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!132 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/host/xhci-hub.c", i32 713, i32 2}
!136 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @xhci_enter_test_mode.__UNIQUE_ID_ddebug414, !135, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/host/xhci-hub.c", i32 722, i32 4}
!140 = !{ptr @xhci_enter_test_mode._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @xhci_enter_test_mode._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/host/xhci-hub.c", i32 727, i32 2}
!144 = !{ptr @xhci_enter_test_mode.__UNIQUE_ID_ddebug415, !143, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/host/xhci-hub.c", i32 735, i32 2}
!147 = !{ptr @xhci_enter_test_mode.__UNIQUE_ID_ddebug416, !146, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/host/xhci-hub.c", i32 743, i32 2}
!150 = !{ptr @xhci_enter_test_mode.__UNIQUE_ID_ddebug417, !149, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/host/xhci-hub.c", i32 599, i32 21}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/host/xhci-hub.c", i32 603, i32 21}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/host/xhci-hub.c", i32 607, i32 21}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/host/xhci-hub.c", i32 611, i32 21}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/host/xhci-hub.c", i32 615, i32 21}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/host/xhci-hub.c", i32 619, i32 21}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/host/xhci-hub.c", i32 623, i32 21}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/host/xhci-hub.c", i32 627, i32 21}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/host/xhci-hub.c", i32 637, i32 2}
!169 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @xhci_clear_port_change_bit.__UNIQUE_ID_ddebug412, !168, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/host/xhci-hub.c", i32 572, i32 3}
!173 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @xhci_disable_port.__UNIQUE_ID_ddebug409, !172, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/host/xhci-hub.c", i32 578, i32 3}
!177 = !{ptr @xhci_disable_port.__UNIQUE_ID_ddebug410, !176, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/host/xhci-hub.c", i32 586, i32 2}
!180 = !{ptr @xhci_disable_port.__UNIQUE_ID_ddebug411, !179, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!181 = !{ptr @.str.77, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/host/xhci-hub.c", i32 754, i32 3}
!183 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @xhci_exit_test_mode._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @xhci_exit_test_mode._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = distinct !{null, !187, !"__already_done", i1 false, i1 false}
!187 = !{!"../drivers/usb/host/xhci-trace.h", i32 550, i32 1}
!188 = distinct !{null, !187, !"__warned", i1 false, i1 false}
!189 = !{!"sp"}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{i64 4997455}
!200 = !{i64 2156029938}
!201 = !{i64 2156030167}
!202 = !{i64 4997037}
!203 = !{i64 2148256084, i64 2148256089, i64 2148256102, i64 2148256146, i64 2148256180, i64 2148256201}
!204 = !{i64 2156034791}
!205 = !{i64 2156034999}
!206 = !{i64 2155993137}
!207 = !{i64 2155992590}
!208 = !{i64 2155776452}
!209 = !{i64 2155777106}
!210 = !{i64 2156049407}
!211 = !{i64 2156055213}
!212 = !{i64 2156055903}
!213 = !{i64 2156056402}
!214 = !{i64 2156057283}
!215 = !{i64 2156062287}
!216 = !{i64 2156062783}
!217 = !{i64 2156069719}
!218 = !{i64 2156070426}
!219 = !{i64 2156073478}
!220 = !{i64 2156081733}
!221 = !{i64 2156087523}
!222 = !{i64 2156088385}
!223 = !{i64 2156089255}
!224 = !{i64 2156089485}
!225 = !{i64 2156090159}
!226 = !{i64 2156093547}
!227 = !{i64 2156096778}
!228 = !{i64 2156097452}
!229 = !{i64 2156097974}
!230 = !{i64 2156098223}
!231 = !{i64 2156098929}
!232 = !{i64 2156099192}
!233 = !{i64 2156099884}
!234 = !{i64 2156100568}
!235 = !{i64 2156101067}
!236 = !{!"branch_weights", i32 2000, i32 1}
!237 = !{i64 2155631531}
!238 = !{i64 2155635825}
!239 = !{i64 2149980788}
!240 = !{i64 2149981824}
!241 = !{i64 2156009839}
!242 = !{i64 2156012937}
!243 = !{i64 2156013599}
!244 = !{i64 2156013829}
!245 = !{i64 2156033866}
!246 = !{i64 2156034162}
!247 = !{i64 2156014873}
!248 = !{i64 2156015090}
!249 = !{i64 2156005927}
!250 = !{i64 2156006574}
!251 = !{i64 2156002187}
!252 = !{i64 2156002840}
!253 = !{i64 2156109954}
!254 = !{i64 2155652310}
!255 = !{i64 2155652543}
!256 = !{i64 2156116863}
!257 = !{i64 2156129194}
!258 = !{i64 2156132441}
!259 = !{i64 2156132684}
!260 = !{i64 2156133407}
!261 = !{i64 2156129907}
!262 = !{i64 2156130426}
!263 = !{i64 2156131061}
!264 = !{i64 2156136932}
!265 = !{i64 2156140749}
!266 = !{i64 2156141259}
!267 = !{i64 2156141502}
!268 = !{i64 2156142196}
!269 = !{i64 2154865661}
!270 = !{i64 2154865860}
!271 = !{i64 2156042117}
!272 = !{i64 2155171837}
!273 = !{i64 2155172040}
