; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/stub_rx.c_pt.bc'
source_filename = "../drivers/usb/usbip/stub_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usbip_header = type { %struct.usbip_header_basic, %union.anon.76 }
%struct.usbip_header_basic = type { i32, i32, i32, i32, i32 }
%union.anon.76 = type { %struct.usbip_header_cmd_submit }
%struct.usbip_header_cmd_submit = type { i32, i32, i32, i32, i32, [8 x i8] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.eh_ops = type { ptr, ptr, ptr }
%struct.stub_device = type { ptr, %struct.usbip_device, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.stub_priv = type { i32, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }

@usbip_debug_flag = external dso_local local_unnamed_addr global i32, align 4
@stub_rx_pdu.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbip_host\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stub_rx_pdu\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/usbip/stub_rx.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enter\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usbip_host: %s:%d: Enter\0A\00", [38 x i8] zeroinitializer }, align 32
@stub_rx_pdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 641, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"recv a header, %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stub_rx_pdu._entry_ptr = internal global ptr @stub_rx_pdu._entry, section ".printk_index", align 4
@stub_rx_pdu._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 652, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"recv invalid request\0A\00", [42 x i8] zeroinitializer }, align 32
@stub_rx_pdu._entry_ptr.10 = internal global ptr @stub_rx_pdu._entry.8, section ".printk_index", align 4
@stub_rx_pdu._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 668, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unknown pdu\0A\00", [19 x i8] zeroinitializer }, align 32
@stub_rx_pdu._entry_ptr.13 = internal global ptr @stub_rx_pdu._entry.11, section ".printk_index", align 4
@stub_recv_cmd_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 256, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to unlink %d/%d urb of seqnum %lu, ret %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stub_recv_cmd_unlink\00", [43 x i8] zeroinitializer }, align 32
@stub_recv_cmd_unlink._entry_ptr = internal global ptr @stub_recv_cmd_unlink._entry, section ".printk_index", align 4
@stub_recv_cmd_unlink.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"seqnum %d is not pending\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"usbip_host: %s:%d: seqnum %d is not pending\0A\00", [51 x i8] zeroinitializer }, align 32
@stub_recv_cmd_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 485, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sg buffer with zero length\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stub_recv_cmd_submit\00", [43 x i8] zeroinitializer }, align 32
@stub_recv_cmd_submit._entry_ptr = internal global ptr @stub_recv_cmd_submit._entry, section ".printk_index", align 4
@stub_recv_cmd_submit.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"submit urb ok, seqnum %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"usbip_host: %s:%d: submit urb ok, seqnum %u\0A\00", [51 x i8] zeroinitializer }, align 32
@stub_recv_cmd_submit._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.2, i32 601, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"submit_urb error, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@stub_recv_cmd_submit._entry_ptr.24 = internal global ptr @stub_recv_cmd_submit._entry.22, section ".printk_index", align 4
@stub_recv_cmd_submit.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.25, i8 0, i8 -103, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Leave\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usbip_host: %s:%d: Leave\0A\00", [38 x i8] zeroinitializer }, align 32
@get_pipe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 373, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CMD_SUBMIT: isoc invalid num packets %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"get_pipe\00", [23 x i8] zeroinitializer }, align 32
@get_pipe._entry_ptr = internal global ptr @get_pipe._entry, section ".printk_index", align 4
@get_pipe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 384, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CMD_SUBMIT: invalid epnum %d\0A\00", [34 x i8] zeroinitializer }, align 32
@get_pipe._entry_ptr.31 = internal global ptr @get_pipe._entry.29, section ".printk_index", align 4
@stub_priv_cache = external dso_local local_unnamed_addr global ptr, align 4
@stub_priv_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 305, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alloc stub_priv\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stub_priv_alloc\00", [16 x i8] zeroinitializer }, align 32
@stub_priv_alloc._entry_ptr = internal global ptr @stub_priv_alloc._entry, section ".printk_index", align 4
@tweak_special_requests.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tweak_special_requests\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no need to tweak\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"usbip_host: %s:%d: no need to tweak\0A\00", [59 x i8] zeroinitializer }, align 32
@tweak_clear_halt_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 94, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"usb_clear_halt error: devnum %d endp %d ret %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tweak_clear_halt_cmd\00", [43 x i8] zeroinitializer }, align 32
@tweak_clear_halt_cmd._entry_ptr = internal global ptr @tweak_clear_halt_cmd._entry, section ".printk_index", align 4
@tweak_clear_halt_cmd._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 98, ptr @.str.41, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"usb_clear_halt done: devnum %d endp %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tweak_clear_halt_cmd._entry_ptr.42 = internal global ptr @tweak_clear_halt_cmd._entry.39, section ".printk_index", align 4
@tweak_set_interface_cmd.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 28, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tweak_set_interface_cmd\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set_interface: inf %u alt %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"usbip_host: %s:%d: set_interface: inf %u alt %u\0A\00", [47 x i8] zeroinitializer }, align 32
@tweak_set_interface_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.2, i32 121, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"usb_set_interface error: inf %u alt %u ret %d\0A\00", [49 x i8] zeroinitializer }, align 32
@tweak_set_interface_cmd._entry_ptr = internal global ptr @tweak_set_interface_cmd._entry, section ".printk_index", align 4
@tweak_set_interface_cmd._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 125, ptr @.str.41, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"usb_set_interface done: inf %u alt %u\0A\00", [57 x i8] zeroinitializer }, align 32
@tweak_set_interface_cmd._entry_ptr.49 = internal global ptr @tweak_set_interface_cmd._entry.47, section ".printk_index", align 4
@tweak_set_configuration_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 144, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't set config #%d, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tweak_set_configuration_cmd\00", [36 x i8] zeroinitializer }, align 32
@tweak_set_configuration_cmd._entry_ptr = internal global ptr @tweak_set_configuration_cmd._entry, section ".printk_index", align 4
@is_reset_device_cmd.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 14, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"is_reset_device_cmd\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reset_device_cmd, port %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"usbip_host: %s:%d: reset_device_cmd, port %u\0A\00", [50 x i8] zeroinitializer }, align 32
@tweak_reset_device_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 153, ptr @.str.41, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_queue_reset_device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tweak_reset_device_cmd\00", [41 x i8] zeroinitializer }, align 32
@tweak_reset_device_cmd._entry_ptr = internal global ptr @tweak_reset_device_cmd._entry, section ".printk_index", align 4
@tweak_reset_device_cmd._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 156, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not obtain lock to reset device\0A\00", [57 x i8] zeroinitializer }, align 32
@tweak_reset_device_cmd._entry_ptr.59 = internal global ptr @tweak_reset_device_cmd._entry.57, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 2, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 9, i64 11]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 634, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 641, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 652, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 668, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 253, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 261, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 485, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 598, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 601, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 614, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 371, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 384, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 305, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 191, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 92, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 96, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 114, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 119, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 123, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 143, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 59, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 153, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private constant [31 x i8] c"../drivers/usb/usbip/stub_rx.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 156, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @get_pipe._entry, ptr @get_pipe._entry.29, ptr @get_pipe._entry_ptr, ptr @get_pipe._entry_ptr.31, ptr @stub_priv_alloc._entry, ptr @stub_priv_alloc._entry_ptr, ptr @stub_recv_cmd_submit._entry, ptr @stub_recv_cmd_submit._entry.22, ptr @stub_recv_cmd_submit._entry_ptr, ptr @stub_recv_cmd_submit._entry_ptr.24, ptr @stub_recv_cmd_unlink._entry, ptr @stub_recv_cmd_unlink._entry_ptr, ptr @stub_rx_pdu._entry, ptr @stub_rx_pdu._entry.11, ptr @stub_rx_pdu._entry.8, ptr @stub_rx_pdu._entry_ptr, ptr @stub_rx_pdu._entry_ptr.10, ptr @stub_rx_pdu._entry_ptr.13, ptr @tweak_clear_halt_cmd._entry, ptr @tweak_clear_halt_cmd._entry.39, ptr @tweak_clear_halt_cmd._entry_ptr, ptr @tweak_clear_halt_cmd._entry_ptr.42, ptr @tweak_reset_device_cmd._entry, ptr @tweak_reset_device_cmd._entry.57, ptr @tweak_reset_device_cmd._entry_ptr, ptr @tweak_reset_device_cmd._entry_ptr.59, ptr @tweak_set_configuration_cmd._entry, ptr @tweak_set_configuration_cmd._entry_ptr, ptr @tweak_set_interface_cmd._entry, ptr @tweak_set_interface_cmd._entry.47, ptr @tweak_set_interface_cmd._entry_ptr, ptr @tweak_set_interface_cmd._entry_ptr.49, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_rx_pdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_rx_pdu._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_rx_pdu._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_recv_cmd_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_recv_cmd_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_recv_cmd_submit._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pipe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pipe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_priv_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tweak_clear_halt_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tweak_clear_halt_cmd._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tweak_set_interface_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tweak_set_interface_cmd._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tweak_set_configuration_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tweak_reset_device_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tweak_reset_device_cmd._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stub_rx_loop(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %call1 = tail call i32 @usbip_event_happened(ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  tail call fastcc void @stub_rx_pdu(ptr noundef %data)
  %call = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_event_happened(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stub_rx_pdu(ptr noundef %ud) unnamed_addr #0 align 64 {
entry:
  %pdu = alloca %struct.usbip_header, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pdu) #6
  %add.ptr = getelementptr i8, ptr %ud, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %2 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body2

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_rx_pdu.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_rx_pdu, %do.end11)) #6
          to label %if.then8 [label %do.end11], !srcloc !117

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stub_rx_pdu.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 634) #6
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body2, %entry.do.end11_crit_edge
  %3 = call ptr @memset(ptr %pdu, i32 0, i32 48)
  %tcp_socket = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 5
  %4 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tcp_socket, align 4
  %call12 = call i32 @usbip_recv(ptr noundef %5, ptr noundef nonnull %pdu, i32 noundef 48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 48
  br i1 %cmp.not, label %if.end17, label %do.end16

do.end16:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %call12) #9
  call void @usbip_event_add(ptr noundef %ud, i32 noundef 5) #6
  br label %cleanup

if.end17:                                         ; preds = %do.end11
  call void @usbip_header_correct_endian(ptr noundef nonnull %pdu, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %6 = load i32, ptr @usbip_debug_flag, align 4
  %and18 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void @usbip_dump_header(ptr noundef nonnull %pdu) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %devid.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu, i32 0, i32 2
  %7 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devid.i, align 4
  %devid2.i = getelementptr i8, ptr %ud, i32 240
  %9 = ptrtoint ptr %devid2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devid2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.i = icmp eq i32 %8, %10
  br i1 %cmp.i, label %valid_request.exit, label %if.end21.do.end27_crit_edge

if.end21.do.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

valid_request.exit:                               ; preds = %if.end21
  %lock.i = getelementptr i8, ptr %ud, i32 8
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #6
  %status.i = getelementptr i8, ptr %ud, i32 4
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp3.i.not = icmp eq i32 %12, 2
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #6
  br i1 %cmp3.i.not, label %if.end28, label %valid_request.exit.do.end27_crit_edge

valid_request.exit.do.end27_crit_edge:            ; preds = %valid_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

do.end27:                                         ; preds = %valid_request.exit.do.end27_crit_edge, %if.end21.do.end27_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  call void @usbip_event_add(ptr noundef %ud, i32 noundef 5) #6
  br label %cleanup

if.end28:                                         ; preds = %valid_request.exit
  %13 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pdu, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %do.end33 [
    i32 2, label %sw.bb
    i32 1, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stub_recv_cmd_unlink(ptr noundef %add.ptr, ptr noundef nonnull %pdu)
  br label %cleanup

sw.bb30:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stub_recv_cmd_submit(ptr noundef %add.ptr, ptr noundef nonnull %pdu)
  br label %cleanup

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  call void @usbip_event_add(ptr noundef %ud, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %sw.bb30, %sw.bb, %do.end27, %do.end16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_recv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_event_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_header_correct_endian(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_dump_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stub_recv_cmd_unlink(ptr noundef %sdev, ptr nocapture noundef readonly %pdu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_lock = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock) #6
  %priv_init = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 4
  %u = getelementptr inbounds %struct.usbip_header, ptr %pdu, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %priv_init, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp7.not = icmp eq ptr %.pn, %priv_init
  br i1 %cmp7.not, label %do.body39, label %for.body

for.body:                                         ; preds = %for.cond
  %priv.0 = getelementptr i8, ptr %.pn, i32 -4
  %1 = ptrtoint ptr %priv.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %priv.0, align 4
  %3 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %u, align 1
  %cmp10.not = icmp eq i32 %2, %4
  br i1 %cmp10.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.end:                                           ; preds = %for.body
  %priv.0.le = getelementptr i8, ptr %.pn, i32 -4
  %unlinking = getelementptr i8, ptr %.pn, i32 32
  %5 = ptrtoint ptr %unlinking to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %unlinking, align 4
  %seqnum12 = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu, i32 0, i32 1
  %6 = ptrtoint ptr %seqnum12 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %seqnum12, align 1
  %8 = ptrtoint ptr %priv.0.le to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %priv.0.le, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock, i32 noundef %call2) #6
  %completed_urbs = getelementptr i8, ptr %.pn, i32 24
  %9 = ptrtoint ptr %completed_urbs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %completed_urbs, align 4
  %num_urbs = getelementptr i8, ptr %.pn, i32 20
  %11 = ptrtoint ptr %num_urbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_urbs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp164 = icmp slt i32 %10, %12
  br i1 %cmp164, label %for.body18.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body18.lr.ph:                                 ; preds = %if.end
  %urbs = getelementptr i8, ptr %.pn, i32 12
  br label %for.body18

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %for.body18.lr.ph
  %i.05 = phi i32 [ %10, %for.body18.lr.ph ], [ %inc.pre-phi, %for.inc.for.body18_crit_edge ]
  %13 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %urbs, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.05
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call19 = tail call i32 @usb_unlink_urb(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, -115
  br i1 %cmp20.not, label %for.body18.for.inc_crit_edge, label %do.end25

for.body18.for.inc_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = add nsw i32 %i.05, 1
  br label %for.inc

do.end25:                                         ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urbs, align 4
  %arrayidx27 = getelementptr ptr, ptr %18, i32 %i.05
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx27, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %dev28 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  %add = add nsw i32 %i.05, 1
  %23 = ptrtoint ptr %num_urbs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_urbs, align 4
  %25 = ptrtoint ptr %priv.0.le to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %priv.0.le, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.14, i32 noundef %add, i32 noundef %24, i32 noundef %26, i32 noundef %call19) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end25, %for.body18.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre, %for.body18.for.inc_crit_edge ], [ %add, %do.end25 ]
  %27 = ptrtoint ptr %num_urbs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_urbs, align 4
  %cmp16 = icmp slt i32 %inc.pre-phi, %28
  br i1 %cmp16, label %for.inc.for.body18_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18

do.body39:                                        ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %29 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body39.do.end57_crit_edge, label %do.body41

do.body39.do.end57_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end57

do.body41:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_recv_cmd_unlink.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_recv_cmd_unlink, %do.end57)) #6
          to label %if.then49 [label %do.end57], !srcloc !117

if.then49:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %u, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stub_recv_cmd_unlink.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef 262, i32 noundef %31) #6
  br label %do.end57

do.end57:                                         ; preds = %if.then49, %do.body41, %do.body39.do.end57_crit_edge
  %seqnum59 = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu, i32 0, i32 1
  %32 = ptrtoint ptr %seqnum59 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %seqnum59, align 1
  tail call void @stub_enqueue_ret_unlink(ptr noundef %sdev, i32 noundef %33, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock, i32 noundef %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stub_recv_cmd_submit(ptr noundef %sdev, ptr noundef %pdu) unnamed_addr #0 align 64 {
entry:
  %nents = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ud1 = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nents) #6
  %2 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %nents, align 4, !annotation !118
  %ep2.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu, i32 0, i32 4
  %3 = ptrtoint ptr %ep2.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %ep2.i, align 1
  %direction.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu, i32 0, i32 3
  %5 = ptrtoint ptr %direction.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %direction.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %4)
  %7 = icmp ugt i32 %4, 15
  br i1 %7, label %entry.do.end70.i_crit_edge, label %if.end.i

entry.do.end70.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5.i = icmp eq i32 %6, 1
  %arrayidx.i = getelementptr %struct.usb_device, ptr %1, i32 0, i32 21, i32 %4
  %arrayidx8.i = getelementptr %struct.usb_device, ptr %1, i32 0, i32 22, i32 %4
  %ep.0.in.i = select i1 %cmp5.i, ptr %arrayidx.i, ptr %arrayidx8.i
  %8 = ptrtoint ptr %ep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %ep.0.i = load ptr, ptr %ep.0.in.i, align 4
  %tobool.not.i = icmp eq ptr %ep.0.i, null
  br i1 %tobool.not.i, label %if.end.i.do.end70.i_crit_edge, label %if.end11.i

if.end.i.do.end70.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70.i

if.end11.i:                                       ; preds = %if.end.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bmAttributes.i.i, align 1
  %trunc.i = trunc i8 %10 to i2
  %11 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.60)
  switch i2 %trunc.i, label %if.end11.unreachabledefault.i [
    i2 0, label %if.then13.i
    i2 -2, label %if.then24.i
    i2 -1, label %if.then36.i
    i2 1, label %if.then48.i
  ]

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp14.i = icmp eq i32 %6, 0
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %13, 8
  %shl1.i.i = shl nuw nsw i32 %4, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  br i1 %cmp14.i, label %if.then15.i, label %if.else17.i

if.then15.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %or.i.i, -2147483648
  br label %if.end

if.else17.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  %or20.i = or i32 %or.i.i, -2147483520
  br label %if.end

if.then24.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp25.i = icmp eq i32 %6, 0
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 8
  %shl.i120.i = shl i32 %15, 8
  %shl1.i121.i = shl nuw nsw i32 %4, 15
  %or.i122.i = or i32 %shl.i120.i, %shl1.i121.i
  br i1 %cmp25.i, label %if.then26.i, label %if.else29.i

if.then26.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  %or28.i = or i32 %or.i122.i, -1073741824
  br label %if.end

if.else29.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  %or32.i = or i32 %or.i122.i, -1073741696
  br label %if.end

if.then36.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp37.i = icmp eq i32 %6, 0
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 8
  %shl.i129.i = shl i32 %17, 8
  %shl1.i130.i = shl nuw nsw i32 %4, 15
  %or.i131.i = or i32 %shl.i129.i, %shl1.i130.i
  br i1 %cmp37.i, label %if.then38.i, label %if.else41.i

if.then38.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  %or40.i = or i32 %or.i131.i, 1073741824
  br label %if.end

if.else41.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  %or44.i = or i32 %or.i131.i, 1073741952
  br label %if.end

if.then48.i:                                      ; preds = %if.end11.i
  %number_of_packets.i = getelementptr inbounds %struct.usbip_header, ptr %pdu, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %number_of_packets.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %19)
  %20 = icmp ugt i32 %19, 1024
  br i1 %20, label %do.end.i, label %if.end58.i

do.end.i:                                         ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27, i32 noundef %19) #9
  br label %cleanup

if.end58.i:                                       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp59.i = icmp eq i32 %6, 0
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 8
  %shl.i138.i = shl i32 %22, 8
  %shl1.i139.i = shl nuw nsw i32 %4, 15
  %or.i140.i = or i32 %shl.i138.i, %shl1.i139.i
  %or66.i = or i32 %or.i140.i, 128
  %spec.select = select i1 %cmp59.i, i32 %or.i140.i, i32 %or66.i
  br label %if.end

if.end11.unreachabledefault.i:                    ; preds = %if.end11.i
  unreachable

do.end70.i:                                       ; preds = %if.end.i.do.end70.i_crit_edge, %entry.do.end70.i_crit_edge
  %dev72.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72.i, ptr noundef nonnull @.str.30, i32 noundef %4) #9
  br label %cleanup

if.end:                                           ; preds = %if.end58.i, %if.else41.i, %if.then38.i, %if.else29.i, %if.then26.i, %if.else17.i, %if.then15.i
  %retval.0.i310.ph = phi i32 [ %or44.i, %if.else41.i ], [ %or40.i, %if.then38.i ], [ %or32.i, %if.else29.i ], [ %or28.i, %if.then26.i ], [ %or20.i, %if.else17.i ], [ %or.i, %if.then15.i ], [ %spec.select, %if.end58.i ]
  %u353 = getelementptr inbounds %struct.usbip_header, ptr %pdu, i32 0, i32 1
  %23 = ptrtoint ptr %u353 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %u353, align 1
  %and354 = and i32 %24, 262144
  %priv_lock.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stub_priv_cache to i32))
  %25 = load ptr, ptr @stub_priv_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %25, i32 noundef 2848) #6
  %tobool.not.i311 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i311, label %stub_priv_alloc.exit.thread, label %if.end.i313

stub_priv_alloc.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdev, align 8
  %dev.i312 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i312, ptr noundef nonnull @.str.32) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call3.i) #6
  tail call void @usbip_event_add(ptr noundef %ud1, i32 noundef 9) #6
  br label %cleanup

if.end.i313:                                      ; preds = %if.end
  %seqnum.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu, i32 0, i32 1
  %28 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %seqnum.i, align 1
  %30 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %call.i.i, align 8
  %sdev12.i = getelementptr inbounds %struct.stub_priv, ptr %call.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %sdev12.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %sdev, ptr %sdev12.i, align 4
  %list.i = getelementptr inbounds %struct.stub_priv, ptr %call.i.i, i32 0, i32 1
  %priv_init.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %33, ptr noundef %priv_init.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i313.if.end5_crit_edge

if.end.i313.if.end5_crit_edge:                    ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.i.i.i:                                     ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list.i, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %priv_init.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.stub_priv, ptr %call.i.i, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 8
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list.i, ptr %33, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end.i.i.i, %if.end.i313.if.end5_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call3.i) #6
  %transfer_buffer_length = getelementptr inbounds %struct.usbip_header, ptr %pdu, i32 0, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %transfer_buffer_length, align 1
  %conv = sext i32 %39 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and354)
  %tobool7.not = icmp eq i32 %and354, 0
  %tobool7.not.not = xor i1 %tobool7.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool8.not = icmp eq i32 %39, 0
  %or.cond = select i1 %tobool7.not.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %err_malloc

if.end10:                                         ; preds = %if.end5
  br i1 %tobool8.not, label %if.end10.if.end31_crit_edge, label %if.then12

if.end10.if.end31_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then12:                                        ; preds = %if.end10
  br i1 %tobool7.not, label %if.end8.i.i, label %if.then14

if.then14:                                        ; preds = %if.then12
  %call15 = call ptr @sgl_alloc(i64 noundef %conv, i32 noundef 3264, ptr noundef nonnull %nents) #6
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then14.err_malloc_crit_edge, label %if.end18

if.then14.err_malloc_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_malloc

if.end18:                                         ; preds = %if.then14
  %bus = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 12
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 8
  %sg_tablesize = getelementptr inbounds %struct.usb_bus, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sg_tablesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool19.not = icmp eq i32 %43, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end31_crit_edge

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nents, align 4
  %completed_urbs = getelementptr inbounds %struct.stub_priv, ptr %call.i.i, i32 0, i32 6
  %46 = ptrtoint ptr %completed_urbs to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %completed_urbs, align 4
  %47 = ptrtoint ptr %u353 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %u353, align 1
  %and23 = and i32 %48, -262145
  store i32 %and23, ptr %u353, align 1
  br label %if.end31

if.end8.i.i:                                      ; preds = %if.then12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #10
  %tobool27.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool27.not, label %if.end8.i.i.err_malloc_crit_edge, label %if.end8.i.i.if.end31_crit_edge

if.end8.i.i.if.end31_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end8.i.i.err_malloc_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_malloc

if.end31:                                         ; preds = %if.end8.i.i.if.end31_crit_edge, %if.then20, %if.end18.if.end31_crit_edge, %if.end10.if.end31_crit_edge
  %buffer.0 = phi ptr [ null, %if.end18.if.end31_crit_edge ], [ null, %if.then20 ], [ %call9.i.i, %if.end8.i.i.if.end31_crit_edge ], [ null, %if.end10.if.end31_crit_edge ]
  %num_urbs.0 = phi i32 [ 1, %if.end18.if.end31_crit_edge ], [ %45, %if.then20 ], [ 1, %if.end8.i.i.if.end31_crit_edge ], [ 1, %if.end10.if.end31_crit_edge ]
  %tobool38.not = phi i1 [ false, %if.end18.if.end31_crit_edge ], [ true, %if.then20 ], [ false, %if.end8.i.i.if.end31_crit_edge ], [ false, %if.end10.if.end31_crit_edge ]
  %sgl.0 = phi ptr [ %call15, %if.end18.if.end31_crit_edge ], [ %call15, %if.then20 ], [ null, %if.end8.i.i.if.end31_crit_edge ], [ null, %if.end10.if.end31_crit_edge ]
  %num_urbs32 = getelementptr inbounds %struct.stub_priv, ptr %call.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %num_urbs32 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %num_urbs.0, ptr %num_urbs32, align 8
  %50 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_urbs.0, i32 4) #6
  %51 = extractvalue { i32, i1 } %50, 1
  br i1 %51, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !119

kmalloc_array.exit.thread:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %urbs361 = getelementptr inbounds %struct.stub_priv, ptr %call.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %urbs361 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %urbs361, align 8
  br label %err_urbs

if.end7.i:                                        ; preds = %if.end31
  %53 = extractvalue { i32, i1 } %50, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %53, i32 noundef 3264) #10
  %urbs = getelementptr inbounds %struct.stub_priv, ptr %call.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %urbs to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call8.i, ptr %urbs, align 8
  %tobool35.not = icmp eq ptr %call8.i, null
  br i1 %tobool35.not, label %if.end7.i.err_urbs_crit_edge, label %if.end37

if.end7.i.err_urbs_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_urbs

if.end37:                                         ; preds = %if.end7.i
  br i1 %tobool38.not, label %for.cond.preheader, label %if.then39

for.cond.preheader:                               ; preds = %if.end37
  %55 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp83376 = icmp sgt i32 %56, 0
  br i1 %cmp83376, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %retval.0.i310.ph)
  %cmp41 = icmp ult i32 %retval.0.i310.ph, 1073741824
  br i1 %cmp41, label %if.then43, label %if.then39.if.end45_crit_edge

if.then39.if.end45_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %number_of_packets = getelementptr inbounds %struct.usbip_header, ptr %pdu, i32 0, i32 1, i32 0, i32 3
  %57 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %number_of_packets, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then39.if.end45_crit_edge
  %np.0 = phi i32 [ %58, %if.then43 ], [ 0, %if.then39.if.end45_crit_edge ]
  %call46 = call ptr @usb_alloc_urb(i32 noundef %np.0, i32 noundef 3264) #6
  %59 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %urbs, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call46, ptr %60, align 4
  %62 = load ptr, ptr %urbs, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %tobool50.not = icmp eq ptr %64, null
  br i1 %tobool50.not, label %if.end45.err_urb_crit_edge, label %if.end52

if.end45.err_urb_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_urb

if.end52:                                         ; preds = %if.end45
  br i1 %tobool8.not, label %if.end52.if.end69_crit_edge, label %if.then54

if.end52.if.end69_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then54:                                        ; preds = %if.end52
  br i1 %tobool7.not, label %if.then54.if.end69.sink.split_crit_edge, label %if.then56

if.then54.if.end69.sink.split_crit_edge:          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69.sink.split

if.then56:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  %sg59 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 16
  %65 = ptrtoint ptr %sg59 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %sgl.0, ptr %sg59, align 4
  %66 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nents, align 4
  %68 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %urbs, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %num_sgs = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 18
  %72 = ptrtoint ptr %num_sgs to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %67, ptr %num_sgs, align 4
  %73 = load ptr, ptr %urbs, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  br label %if.end69.sink.split

if.end69.sink.split:                              ; preds = %if.then56, %if.then54.if.end69.sink.split_crit_edge
  %.sink387 = phi ptr [ %75, %if.then56 ], [ %64, %if.then54.if.end69.sink.split_crit_edge ]
  %.sink = phi ptr [ null, %if.then56 ], [ %buffer.0, %if.then54.if.end69.sink.split_crit_edge ]
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %.sink387, i32 0, i32 14
  %76 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %.sink, ptr %transfer_buffer, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %if.end52.if.end69_crit_edge
  %setup = getelementptr inbounds %struct.usbip_header, ptr %pdu, i32 0, i32 1, i32 0, i32 5
  %call71 = call ptr @kmemdup(ptr noundef %setup, i32 noundef 8, i32 noundef 3264) #6
  %77 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %urbs, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %setup_packet = getelementptr inbounds %struct.urb, ptr %80, i32 0, i32 21
  %81 = ptrtoint ptr %setup_packet to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call71, ptr %setup_packet, align 4
  %82 = load ptr, ptr %urbs, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %setup_packet76 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 21
  %85 = ptrtoint ptr %setup_packet76 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %setup_packet76, align 4
  %tobool77.not = icmp eq ptr %86, null
  br i1 %tobool77.not, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  call void @usbip_event_add(ptr noundef %ud1, i32 noundef 9) #6
  br label %cleanup

if.end79:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  call void @usbip_pack_pdu(ptr noundef %pdu, ptr noundef %84, i32 noundef 1, i32 noundef 0) #6
  br label %if.end104

for.body:                                         ; preds = %sg_virt.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0378 = phi i32 [ %inc, %sg_virt.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %sg.0377 = phi ptr [ %call102, %sg_virt.exit.for.body_crit_edge ], [ %sgl.0, %for.cond.preheader.for.body_crit_edge ]
  %call85 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #6
  %87 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %urbs, align 8
  %arrayidx87 = getelementptr ptr, ptr %88, i32 %i.0378
  %89 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call85, ptr %arrayidx87, align 4
  %90 = load ptr, ptr %urbs, align 8
  %arrayidx89 = getelementptr ptr, ptr %90, i32 %i.0378
  %91 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx89, align 4
  %tobool90.not = icmp eq ptr %92, null
  br i1 %tobool90.not, label %for.body.err_urb_crit_edge, label %if.end92

for.body.err_urb_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_urb

if.end92:                                         ; preds = %for.body
  call void @usbip_pack_pdu(ptr noundef %pdu, ptr noundef nonnull %92, i32 noundef 1, i32 noundef 0) #6
  %93 = ptrtoint ptr %sg.0377 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sg.0377, align 4
  %and.i.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !120

do.body2.i.i:                                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !121
  unreachable

sg_virt.exit:                                     ; preds = %if.end92
  %and.i.i = and i32 %94, -4
  %95 = inttoptr i32 %and.i.i to ptr
  %call1.i = call ptr @page_address(ptr noundef %95) #6
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0377, i32 0, i32 1
  %96 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %97
  %98 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %urbs, align 8
  %arrayidx97 = getelementptr ptr, ptr %99, i32 %i.0378
  %100 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx97, align 4
  %transfer_buffer98 = getelementptr inbounds %struct.urb, ptr %101, i32 0, i32 14
  %102 = ptrtoint ptr %transfer_buffer98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr.i, ptr %transfer_buffer98, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0377, i32 0, i32 2
  %103 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %length, align 4
  %105 = load ptr, ptr %urbs, align 8
  %arrayidx100 = getelementptr ptr, ptr %105, i32 %i.0378
  %106 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx100, align 4
  %transfer_buffer_length101 = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 19
  %108 = ptrtoint ptr %transfer_buffer_length101 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %104, ptr %transfer_buffer_length101, align 4
  %inc = add nuw nsw i32 %i.0378, 1
  %call102 = call ptr @sg_next(ptr noundef %sg.0377) #6
  %109 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nents, align 4
  %cmp83 = icmp slt i32 %inc, %110
  br i1 %cmp83, label %sg_virt.exit.for.body_crit_edge, label %sg_virt.exit.for.end_crit_edge

sg_virt.exit.for.end_crit_edge:                   ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

sg_virt.exit.for.body_crit_edge:                  ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %sg_virt.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sgl103 = getelementptr inbounds %struct.stub_priv, ptr %call.i.i, i32 0, i32 4
  %111 = ptrtoint ptr %sgl103 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %sgl.0, ptr %sgl103, align 4
  br label %if.end104

if.end104:                                        ; preds = %for.end, %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_urbs.0)
  %cmp106379 = icmp sgt i32 %num_urbs.0, 0
  br i1 %cmp106379, label %if.end104.for.body108_crit_edge, label %if.end104.for.end125_crit_edge

if.end104.for.end125_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end125

if.end104.for.body108_crit_edge:                  ; preds = %if.end104
  br label %for.body108

for.body108:                                      ; preds = %masking_bogus_flags.exit.for.body108_crit_edge, %if.end104.for.body108_crit_edge
  %i.1380 = phi i32 [ %inc124, %masking_bogus_flags.exit.for.body108_crit_edge ], [ 0, %if.end104.for.body108_crit_edge ]
  %112 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %urbs, align 8
  %arrayidx110 = getelementptr ptr, ptr %113, i32 %i.1380
  %114 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx110, align 4
  %context = getelementptr inbounds %struct.urb, ptr %115, i32 0, i32 27
  %116 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call.i.i, ptr %context, align 4
  %117 = load ptr, ptr %urbs, align 8
  %arrayidx112 = getelementptr ptr, ptr %117, i32 %i.1380
  %118 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx112, align 4
  %dev113 = getelementptr inbounds %struct.urb, ptr %119, i32 0, i32 8
  %120 = ptrtoint ptr %dev113 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %1, ptr %dev113, align 4
  %121 = load ptr, ptr %urbs, align 8
  %arrayidx115 = getelementptr ptr, ptr %121, i32 %i.1380
  %122 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx115, align 4
  %pipe116 = getelementptr inbounds %struct.urb, ptr %123, i32 0, i32 10
  %124 = ptrtoint ptr %pipe116 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %retval.0.i310.ph, ptr %pipe116, align 4
  %125 = load ptr, ptr %urbs, align 8
  %arrayidx118 = getelementptr ptr, ptr %125, i32 %i.1380
  %126 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx118, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %127, i32 0, i32 28
  %128 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @stub_complete, ptr %complete, align 4
  %129 = load ptr, ptr %urbs, align 8
  %arrayidx120 = getelementptr ptr, ptr %129, i32 %i.1380
  %130 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx120, align 4
  call fastcc void @tweak_special_requests(ptr noundef %131)
  %132 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %urbs, align 8
  %arrayidx122 = getelementptr ptr, ptr %133, i32 %i.1380
  %134 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx122, align 4
  %tobool.not.i344 = icmp eq ptr %135, null
  br i1 %tobool.not.i344, label %for.body108.masking_bogus_flags.exit_crit_edge, label %lor.lhs.false.i

for.body108.masking_bogus_flags.exit_crit_edge:   ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #8
  br label %masking_bogus_flags.exit

lor.lhs.false.i:                                  ; preds = %for.body108
  %hcpriv.i = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hcpriv.i, align 4
  %tobool1.not.i = icmp eq ptr %137, null
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.masking_bogus_flags.exit_crit_edge

lor.lhs.false.i.masking_bogus_flags.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %masking_bogus_flags.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %complete.i = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 28
  %138 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %complete.i, align 4
  %tobool3.not.i = icmp eq ptr %139, null
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.masking_bogus_flags.exit_crit_edge, label %if.end.i345

lor.lhs.false2.i.masking_bogus_flags.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %masking_bogus_flags.exit

if.end.i345:                                      ; preds = %lor.lhs.false2.i
  %dev4.i = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 8
  %140 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev4.i, align 4
  %tobool5.not.i = icmp eq ptr %141, null
  br i1 %tobool5.not.i, label %if.end.i345.masking_bogus_flags.exit_crit_edge, label %lor.lhs.false6.i

if.end.i345.masking_bogus_flags.exit_crit_edge:   ; preds = %if.end.i345
  call void @__sanitizer_cov_trace_pc() #8
  br label %masking_bogus_flags.exit

lor.lhs.false6.i:                                 ; preds = %if.end.i345
  %state.i = getelementptr inbounds %struct.usb_device, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %143)
  %cmp.i = icmp ult i32 %143, 4
  br i1 %cmp.i, label %lor.lhs.false6.i.masking_bogus_flags.exit_crit_edge, label %if.end8.i

lor.lhs.false6.i.masking_bogus_flags.exit_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %masking_bogus_flags.exit

if.end8.i:                                        ; preds = %lor.lhs.false6.i
  %pipe.i = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 10
  %144 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pipe.i, align 4
  %and.i = and i32 %145, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %ep_in.i = getelementptr inbounds %struct.usb_device, ptr %141, i32 0, i32 21
  %ep_out.i = getelementptr inbounds %struct.usb_device, ptr %141, i32 0, i32 22
  %cond.i = select i1 %tobool9.not.i, ptr %ep_out.i, ptr %ep_in.i
  %shr.i = lshr i32 %145, 15
  %and12.i = and i32 %shr.i, 15
  %arrayidx.i346 = getelementptr ptr, ptr %cond.i, i32 %and12.i
  %146 = ptrtoint ptr %arrayidx.i346 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i346, align 4
  %tobool13.not.i = icmp eq ptr %147, null
  br i1 %tobool13.not.i, label %if.end8.i.masking_bogus_flags.exit_crit_edge, label %if.end15.i

if.end8.i.masking_bogus_flags.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %masking_bogus_flags.exit

if.end15.i:                                       ; preds = %if.end8.i
  %bmAttributes.i.i347 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %bmAttributes.i.i347 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %bmAttributes.i.i347, align 1
  %150 = and i8 %149, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %cmp16.i = icmp eq i8 %150, 0
  br i1 %cmp16.i, label %if.then17.i, label %if.end26.i

if.then17.i:                                      ; preds = %if.end15.i
  %setup_packet.i = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 21
  %151 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %setup_packet.i, align 4
  %tobool18.not.i = icmp eq ptr %152, null
  br i1 %tobool18.not.i, label %if.then17.i.masking_bogus_flags.exit_crit_edge, label %if.end20.i

if.then17.i.masking_bogus_flags.exit_crit_edge:   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %masking_bogus_flags.exit

if.end20.i:                                       ; preds = %if.then17.i
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %152, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %154)
  %tobool22.not.i = icmp sgt i8 %154, -1
  br i1 %tobool22.not.i, label %if.end20.i.sw.epilog.i_crit_edge, label %lor.rhs.i

if.end20.i.sw.epilog.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

lor.rhs.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %152, i32 0, i32 4
  %155 = ptrtoint ptr %wLength.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %156 = load i16, ptr %wLength.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool23.not.i = icmp eq i16 %156, 0
  %phi.cast.i = zext i1 %tobool23.not.i to i32
  br label %sw.default.i

if.end26.i:                                       ; preds = %if.end15.i
  %and.i.i348 = zext i8 %150 to i32
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %147, i32 0, i32 2
  %157 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %bEndpointAddress.i.i, align 1
  %159 = xor i8 %158, -1
  %160 = lshr i8 %159, 7
  %.not.i.i = zext i8 %160 to i32
  %161 = zext i32 %and.i.i348 to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %and.i.i348, label %if.end26.i.sw.default.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %if.end26.i.sw.epilog.i_crit_edge
  ]

if.end26.i.sw.epilog.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end26.i.sw.default.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool27.not.i = icmp slt i8 %158, 0
  %spec.select.i = select i1 %tobool27.not.i, i32 900, i32 964
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb.i, %if.end26.i.sw.default.i_crit_edge, %lor.rhs.i
  %is_out.169.i = phi i32 [ %.not.i.i, %if.end26.i.sw.default.i_crit_edge ], [ %.not.i.i, %sw.bb.i ], [ %phi.cast.i, %lor.rhs.i ]
  %allowed.0.i = phi i32 [ 900, %if.end26.i.sw.default.i_crit_edge ], [ %spec.select.i, %sw.bb.i ], [ 900, %lor.rhs.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_out.169.i)
  %tobool30.not.i = icmp eq i32 %is_out.169.i, 0
  %or32.i349 = zext i1 %tobool30.not.i to i32
  %spec.select74.i = or i32 %allowed.0.i, %or32.i349
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.end26.i.sw.epilog.i_crit_edge, %if.end20.i.sw.epilog.i_crit_edge
  %allowed.1.i = phi i32 [ 902, %if.end26.i.sw.epilog.i_crit_edge ], [ 900, %if.end20.i.sw.epilog.i_crit_edge ], [ %spec.select74.i, %sw.default.i ]
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 13
  %162 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %transfer_flags.i, align 4
  %and36.i = and i32 %163, %allowed.1.i
  store i32 %and36.i, ptr %transfer_flags.i, align 4
  br label %masking_bogus_flags.exit

masking_bogus_flags.exit:                         ; preds = %sw.epilog.i, %if.then17.i.masking_bogus_flags.exit_crit_edge, %if.end8.i.masking_bogus_flags.exit_crit_edge, %lor.lhs.false6.i.masking_bogus_flags.exit_crit_edge, %if.end.i345.masking_bogus_flags.exit_crit_edge, %lor.lhs.false2.i.masking_bogus_flags.exit_crit_edge, %lor.lhs.false.i.masking_bogus_flags.exit_crit_edge, %for.body108.masking_bogus_flags.exit_crit_edge
  %inc124 = add nuw nsw i32 %i.1380, 1
  %exitcond.not = icmp eq i32 %inc124, %num_urbs.0
  br i1 %exitcond.not, label %masking_bogus_flags.exit.for.end125_crit_edge, label %masking_bogus_flags.exit.for.body108_crit_edge

masking_bogus_flags.exit.for.body108_crit_edge:   ; preds = %masking_bogus_flags.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body108

masking_bogus_flags.exit.for.end125_crit_edge:    ; preds = %masking_bogus_flags.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end125

for.end125:                                       ; preds = %masking_bogus_flags.exit.for.end125_crit_edge, %if.end104.for.end125_crit_edge
  %164 = ptrtoint ptr %num_urbs32 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %num_urbs32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp6.i = icmp sgt i32 %165, 0
  br i1 %cmp6.i, label %for.end125.for.body.i_crit_edge, label %for.end125.cleanup_crit_edge

for.end125.cleanup_crit_edge:                     ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end125.for.body.i_crit_edge:                  ; preds = %for.end125
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %166 = ptrtoint ptr %num_urbs32 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %num_urbs32, align 8
  %cmp.i350 = icmp slt i32 %inc.i, %167
  br i1 %cmp.i350, label %for.cond.i.for.body.i_crit_edge, label %if.end130

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.end125.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.end125.for.body.i_crit_edge ]
  %168 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %urbs, align 8
  %arrayidx.i351 = getelementptr ptr, ptr %169, i32 %i.07.i
  %170 = ptrtoint ptr %arrayidx.i351 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx.i351, align 4
  %call.i = call i32 @usbip_recv_xbuff(ptr noundef %ud1, ptr noundef %171) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end130:                                        ; preds = %for.cond.i
  %172 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %urbs, align 8
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  %call133 = call i32 @usbip_recv_iso(ptr noundef %ud1, ptr noundef %175) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.end130.cleanup_crit_edge, label %for.cond138.preheader

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond138.preheader:                            ; preds = %if.end130
  %176 = ptrtoint ptr %num_urbs32 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %num_urbs32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp140381 = icmp sgt i32 %177, 0
  br i1 %cmp140381, label %for.cond138.preheader.for.body142_crit_edge, label %for.cond138.preheader.do.body177_crit_edge

for.cond138.preheader.do.body177_crit_edge:       ; preds = %for.cond138.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body177

for.cond138.preheader.for.body142_crit_edge:      ; preds = %for.cond138.preheader
  br label %for.body142

for.body142:                                      ; preds = %for.inc174.for.body142_crit_edge, %for.cond138.preheader.for.body142_crit_edge
  %i.2382 = phi i32 [ %inc175, %for.inc174.for.body142_crit_edge ], [ 0, %for.cond138.preheader.for.body142_crit_edge ]
  %178 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %urbs, align 8
  %arrayidx144 = getelementptr ptr, ptr %179, i32 %i.2382
  %180 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx144, align 4
  %call145 = call i32 @usb_submit_urb(ptr noundef %181, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp eq i32 %call145, 0
  br i1 %cmp146, label %do.body149, label %do.end169

do.body149:                                       ; preds = %for.body142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %182 = load i32, ptr @usbip_debug_flag, align 4
  %and150 = and i32 %182, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %do.body149.for.inc174_crit_edge, label %do.body153

do.body149.for.inc174_crit_edge:                  ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc174

do.body153:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_recv_cmd_submit.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_recv_cmd_submit, %for.inc174)) #6
          to label %if.then159 [label %for.inc174], !srcloc !117

if.then159:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #8
  %183 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %seqnum.i, align 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stub_recv_cmd_submit.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef 599, i32 noundef %184) #6
  br label %for.inc174

do.end169:                                        ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #8
  %dev170 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev170, ptr noundef nonnull @.str.23, i32 noundef %call145) #9
  call void @usbip_dump_header(ptr noundef %pdu) #6
  %185 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %urbs, align 8
  %arrayidx172 = getelementptr ptr, ptr %186, i32 %i.2382
  %187 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx172, align 4
  call void @usbip_dump_urb(ptr noundef %188) #6
  call void @usbip_event_add(ptr noundef %ud1, i32 noundef 5) #6
  br label %do.body177

for.inc174:                                       ; preds = %if.then159, %do.body153, %do.body149.for.inc174_crit_edge
  %inc175 = add nuw nsw i32 %i.2382, 1
  %189 = ptrtoint ptr %num_urbs32 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %num_urbs32, align 8
  %cmp140 = icmp slt i32 %inc175, %190
  br i1 %cmp140, label %for.inc174.for.body142_crit_edge, label %for.inc174.do.body177_crit_edge

for.inc174.do.body177_crit_edge:                  ; preds = %for.inc174
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body177

for.inc174.for.body142_crit_edge:                 ; preds = %for.inc174
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body142

do.body177:                                       ; preds = %for.inc174.do.body177_crit_edge, %do.end169, %for.cond138.preheader.do.body177_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %191 = load i32, ptr @usbip_debug_flag, align 4
  %and178 = and i32 %191, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %do.body177.cleanup_crit_edge, label %do.body181

do.body177.cleanup_crit_edge:                     ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body181:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_recv_cmd_submit.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_recv_cmd_submit, %cleanup)) #6
          to label %if.then195 [label %cleanup], !srcloc !117

if.then195:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stub_recv_cmd_submit.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.19, i32 noundef 614) #6
  br label %cleanup

err_urb:                                          ; preds = %for.body.err_urb_crit_edge, %if.end45.err_urb_crit_edge
  %192 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %urbs, align 8
  call void @kfree(ptr noundef %193) #6
  br label %err_urbs

err_urbs:                                         ; preds = %err_urb, %if.end7.i.err_urbs_crit_edge, %kmalloc_array.exit.thread
  call void @kfree(ptr noundef %buffer.0) #6
  call void @sgl_free(ptr noundef %sgl.0) #6
  br label %err_malloc

err_malloc:                                       ; preds = %err_urbs, %if.end8.i.i.err_malloc_crit_edge, %if.then14.err_malloc_crit_edge, %do.end
  call void @usbip_event_add(ptr noundef %ud1, i32 noundef 9) #6
  br label %cleanup

cleanup:                                          ; preds = %err_malloc, %if.then195, %do.body181, %do.body177.cleanup_crit_edge, %if.end130.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %for.end125.cleanup_crit_edge, %if.then78, %stub_priv_alloc.exit.thread, %do.end70.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nents) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stub_enqueue_ret_unlink(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sgl_alloc(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_pack_pdu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stub_complete(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tweak_special_requests(ptr noundef readonly %urb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %urb, null
  br i1 %tobool.not, label %entry.if.end38_crit_edge, label %lor.lhs.false

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

lor.lhs.false:                                    ; preds = %entry
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %0 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setup_packet, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.if.end38_crit_edge, label %if.end

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end:                                           ; preds = %lor.lhs.false
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe, align 4
  %shr.mask = and i32 %3, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask)
  %cmp.not = icmp eq i32 %shr.mask, -2147483648
  br i1 %cmp.not, label %if.end3, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end3:                                          ; preds = %if.end
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bRequest.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %5, label %if.end3.if.else16_crit_edge [
    i8 1, label %land.lhs.true.i
    i8 11, label %is_set_interface_cmd.exit
    i8 9, label %is_set_configuration_cmd.exit
  ]

if.end3.if.else16_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else16

land.lhs.true.i:                                  ; preds = %if.end3
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp3.i = icmp eq i8 %8, 2
  br i1 %cmp3.i, label %is_clear_halt_cmd.exit, label %land.lhs.true.i.if.else16_crit_edge

land.lhs.true.i.if.else16_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else16

is_clear_halt_cmd.exit:                           ; preds = %land.lhs.true.i
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %wValue.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wValue.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp6.i.not = icmp eq i16 %10, 0
  br i1 %cmp6.i.not, label %if.then5, label %is_clear_halt_cmd.exit.if.else16_crit_edge

is_clear_halt_cmd.exit.if.else16_crit_edge:       ; preds = %is_clear_halt_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else16

if.then5:                                         ; preds = %is_clear_halt_cmd.exit
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %wIndex.i, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #6
  %conv.i = zext i16 %13 to i32
  %and.i = and i32 %conv.i, 15
  %and3.i = and i32 %conv.i, 128
  %dev5.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %14 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev5.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i1.i = shl i32 %17, 8
  %shl1.i2.i = shl nuw nsw i32 %and.i, 15
  %or.i3.i = or i32 %and3.i, %shl.i1.i
  %18 = or i32 %or.i3.i, %shl1.i2.i
  %or7.i = or i32 %18, -2147483648
  %call9.i = tail call i32 @usb_clear_halt(ptr noundef %15, i32 noundef %or7.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i50 = icmp slt i32 %call9.i, 0
  %19 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev5.i, align 4
  %dev13.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  br i1 %cmp.i50, label %do.end.i, label %do.end18.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.37, i32 noundef %22, i32 noundef %and.i, i32 noundef %call9.i) #9
  br label %if.end38

do.end18.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13.i, ptr noundef nonnull @.str.40, i32 noundef %22, i32 noundef %and.i) #9
  br label %if.end38

is_set_interface_cmd.exit:                        ; preds = %if.end3
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp3.i54.not = icmp eq i8 %24, 1
  br i1 %cmp3.i54.not, label %if.then9, label %is_set_interface_cmd.exit.if.else16_crit_edge

is_set_interface_cmd.exit.if.else16_crit_edge:    ; preds = %is_set_interface_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else16

if.then9:                                         ; preds = %is_set_interface_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tweak_set_interface_cmd(ptr noundef nonnull %urb)
  br label %if.end38

is_set_configuration_cmd.exit:                    ; preds = %if.end3
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp3.i60.not = icmp eq i8 %26, 0
  br i1 %cmp3.i60.not, label %if.then14, label %is_set_configuration_cmd.exit.if.else16_crit_edge

is_set_configuration_cmd.exit.if.else16_crit_edge: ; preds = %is_set_configuration_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else16

if.then14:                                        ; preds = %is_set_configuration_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tweak_set_configuration_cmd(ptr noundef nonnull %urb)
  br label %if.end38

if.else16:                                        ; preds = %is_set_configuration_cmd.exit.if.else16_crit_edge, %is_set_interface_cmd.exit.if.else16_crit_edge, %is_clear_halt_cmd.exit.if.else16_crit_edge, %land.lhs.true.i.if.else16_crit_edge, %if.end3.if.else16_crit_edge
  %call17 = tail call fastcc i32 @is_reset_device_cmd(ptr noundef nonnull %urb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body, label %if.then19

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tweak_reset_device_cmd(ptr noundef nonnull %urb)
  br label %if.end38

do.body:                                          ; preds = %if.else16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %27 = load i32, ptr @usbip_debug_flag, align 4
  %and22 = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body.if.end38_crit_edge, label %do.body25

do.body.if.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.body25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tweak_special_requests.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tweak_special_requests, %if.end38)) #6
          to label %if.then31 [label %if.end38], !srcloc !117

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tweak_special_requests.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef 191) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then31, %do.body25, %do.body.if.end38_crit_edge, %if.then19, %if.then14, %if.then9, %do.end18.i, %do.end.i, %if.end.if.end38_crit_edge, %lor.lhs.false.if.end38_crit_edge, %entry.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_recv_iso(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_dump_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgl_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tweak_set_interface_cmd(ptr nocapture noundef readonly %urb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %0 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setup_packet, align 4
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wValue, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %wIndex, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %8 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tweak_set_interface_cmd.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tweak_set_interface_cmd, %do.end10)) #6
          to label %if.then6 [label %do.end10], !srcloc !117

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %7 to i32
  %conv7 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tweak_set_interface_cmd.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef 115, i32 noundef %conv, i32 noundef %conv7) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body1, %entry.do.end10_crit_edge
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %conv11 = zext i16 %7 to i32
  %conv12 = zext i16 %4 to i32
  %call13 = tail call i32 @usb_set_interface(ptr noundef %10, i32 noundef %conv11, i32 noundef %conv12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  br i1 %cmp, label %do.end18, label %do.end25

do.end18:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.46, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %call13) #9
  br label %if.end30

do.end25:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.48, i32 noundef %conv11, i32 noundef %conv12) #9
  br label %if.end30

if.end30:                                         ; preds = %do.end25, %do.end18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tweak_set_configuration_cmd(ptr nocapture noundef readonly %urb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %sdev1 = getelementptr inbounds %struct.stub_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev1, align 4
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %4 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setup_packet, align 4
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wValue, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %conv = zext i16 %8 to i32
  %call = tail call i32 @usb_set_configuration(ptr noundef %10, i32 noundef %conv) #6
  %11 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %call, label %do.end [
    i32 0, label %entry.if.end_crit_edge
    i32 -19, label %entry.if.end_crit_edge1
  ]

entry.if.end_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge, %entry.if.end_crit_edge1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @is_reset_device_cmd(ptr nocapture noundef readonly %urb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %0 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setup_packet, align 4
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wIndex, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bRequest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp eq i8 %6, 3
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wValue, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %10)
  %cmp3 = icmp eq i8 %10, 35
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %8)
  %cmp7 = icmp eq i16 %8, 1024
  %or.cond = select i1 %cmp3, i1 %cmp7, i1 false
  br i1 %or.cond, label %do.body, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %11 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body10

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_reset_device_cmd.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@is_reset_device_cmd, %cleanup)) #6
          to label %if.then15 [label %cleanup], !srcloc !117

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %conv16 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_reset_device_cmd.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, i32 noundef 59, i32 noundef %conv16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body10, %do.body.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then15 ], [ 1, %do.body.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %do.body10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tweak_reset_device_cmd(ptr nocapture noundef readonly %urb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %sdev1 = getelementptr inbounds %struct.stub_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev1, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.55) #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call = tail call i32 @usb_lock_device_for_reset(ptr noundef %7, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end5, label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.58) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %call9 = tail call i32 @usb_reset_device(ptr noundef %11) #6
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %mutex.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_lock_device_for_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_recv_xbuff(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/stub_rx.c", i32 634, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @stub_rx_pdu.__UNIQUE_ID_ddebug247, !1, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/usb/usbip/stub_rx.c", i32 641, i32 3}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @stub_rx_pdu._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @stub_rx_pdu._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/usbip/stub_rx.c", i32 652, i32 3}
!15 = !{ptr @stub_rx_pdu._entry.8, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @stub_rx_pdu._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/usbip/stub_rx.c", i32 668, i32 3}
!19 = !{ptr @stub_rx_pdu._entry.11, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @stub_rx_pdu._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/usbip/stub_rx.c", i32 253, i32 5}
!23 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @stub_recv_cmd_unlink._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @stub_recv_cmd_unlink._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/usbip/stub_rx.c", i32 261, i32 2}
!28 = !{ptr @stub_recv_cmd_unlink.__UNIQUE_ID_ddebug244, !27, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!29 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/usbip/stub_rx.c", i32 485, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @stub_recv_cmd_submit._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @stub_recv_cmd_submit._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/usbip/stub_rx.c", i32 598, i32 4}
!37 = !{ptr @stub_recv_cmd_submit.__UNIQUE_ID_ddebug245, !36, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!38 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/usbip/stub_rx.c", i32 601, i32 4}
!41 = !{ptr @stub_recv_cmd_submit._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @stub_recv_cmd_submit._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/usbip/stub_rx.c", i32 614, i32 2}
!45 = !{ptr @stub_recv_cmd_submit.__UNIQUE_ID_ddebug246, !44, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!46 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/usbip/stub_rx.c", i32 371, i32 4}
!49 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @get_pipe._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @get_pipe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/usbip/stub_rx.c", i32 384, i32 2}
!54 = !{ptr @get_pipe._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @get_pipe._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/usbip/stub_rx.c", i32 305, i32 3}
!58 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @stub_priv_alloc._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @stub_priv_alloc._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/usbip/stub_rx.c", i32 191, i32 3}
!63 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @tweak_special_requests.__UNIQUE_ID_ddebug243, !62, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!65 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/usbip/stub_rx.c", i32 92, i32 3}
!68 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @tweak_clear_halt_cmd._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @tweak_clear_halt_cmd._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/usbip/stub_rx.c", i32 96, i32 3}
!73 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @tweak_clear_halt_cmd._entry.39, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @tweak_clear_halt_cmd._entry_ptr.42, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/usbip/stub_rx.c", i32 114, i32 2}
!78 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @tweak_set_interface_cmd.__UNIQUE_ID_ddebug242, !77, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!80 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/usbip/stub_rx.c", i32 119, i32 3}
!83 = !{ptr @tweak_set_interface_cmd._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @tweak_set_interface_cmd._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/usbip/stub_rx.c", i32 123, i32 3}
!87 = !{ptr @tweak_set_interface_cmd._entry.47, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @tweak_set_interface_cmd._entry_ptr.49, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/usbip/stub_rx.c", i32 143, i32 3}
!91 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @tweak_set_configuration_cmd._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @tweak_set_configuration_cmd._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/usbip/stub_rx.c", i32 59, i32 3}
!96 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @is_reset_device_cmd.__UNIQUE_ID_ddebug241, !95, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!98 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/usbip/stub_rx.c", i32 153, i32 2}
!101 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @tweak_reset_device_cmd._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @tweak_reset_device_cmd._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/usbip/stub_rx.c", i32 156, i32 3}
!106 = !{ptr @tweak_reset_device_cmd._entry.57, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @tweak_reset_device_cmd._entry_ptr.59, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 2148283267, i64 2148283272, i64 2148283285, i64 2148283329, i64 2148283363, i64 2148283384}
!118 = !{!"auto-init"}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{i64 2154307210, i64 2154307702, i64 2154307247, i64 2154307303, i64 2154307337, i64 2154307361, i64 2154307402, i64 2154307423, i64 2154307451, i64 2154307485}
