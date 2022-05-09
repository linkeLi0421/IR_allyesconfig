; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/vhci_rx.c_pt.bc'
source_filename = "../drivers/usb/usbip/vhci_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vhci_device = type { ptr, i32, i32, i32, %struct.usbip_device, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.eh_ops = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usbip_header = type { %struct.usbip_header_basic, %union.anon.77 }
%struct.usbip_header_basic = type { i32, i32, i32, i32, i32 }
%union.anon.77 = type { %struct.usbip_header_cmd_submit }
%struct.usbip_header_cmd_submit = type { i32, i32, i32, i32, i32, [8 x i8] }
%struct.vhci_hcd = type { ptr, [8 x i32], i8, i32, %struct.atomic_t, [8 x %struct.vhci_device] }
%struct.vhci_unlink = type { i32, %struct.list_head, i32 }

@usbip_debug_flag = external dso_local local_unnamed_addr global i32, align 4
@pickup_urb_and_free_priv.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 6, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vhci_hcd\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pickup_urb_and_free_priv\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/usbip/vhci_rx.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"find urb seqnum %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vhci_hcd: %s:%d: find urb seqnum %u\0A\00", [59 x i8] zeroinitializer }, align 32
@pickup_urb_and_free_priv.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 8, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"urb seq# %u was unlinked %ssynchronously\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@pickup_urb_and_free_priv.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"urb seq# %u may be in a error, status %d\0A\00", [54 x i8] zeroinitializer }, align 32
@vhci_rx_pdu.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 50, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vhci_rx_pdu\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enter\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vhci_hcd: %s:%d: Enter\0A\00", [40 x i8] zeroinitializer }, align 32
@vhci_rx_pdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016vhci_hcd: %s:%d: connection reset by peer\0A\00", [51 x i8] zeroinitializer }, align 32
@vhci_rx_pdu._entry_ptr = internal global ptr @vhci_rx_pdu._entry, section ".printk_index", align 4
@vhci_rx_pdu._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016vhci_hcd: %s:%d: connection timed out with pending urbs\0A\00", [37 x i8] zeroinitializer }, align 32
@vhci_rx_pdu._entry_ptr.15 = internal global ptr @vhci_rx_pdu._entry.13, section ".printk_index", align 4
@vhci_rx_pdu._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016vhci_hcd: %s:%d: xmit failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@vhci_rx_pdu._entry_ptr.18 = internal global ptr @vhci_rx_pdu._entry.16, section ".printk_index", align 4
@vhci_rx_pdu._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016vhci_hcd: %s:%d: connection closed\00", [59 x i8] zeroinitializer }, align 32
@vhci_rx_pdu._entry_ptr.21 = internal global ptr @vhci_rx_pdu._entry.19, section ".printk_index", align 4
@vhci_rx_pdu._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013vhci_hcd: %s:%d: received pdu size is %d, should be %d\0A\00", [38 x i8] zeroinitializer }, align 32
@vhci_rx_pdu._entry_ptr.24 = internal global ptr @vhci_rx_pdu._entry.22, section ".printk_index", align 4
@vhci_rx_pdu._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.9, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013vhci_hcd: %s:%d: unknown pdu %u\0A\00", [61 x i8] zeroinitializer }, align 32
@vhci_rx_pdu._entry_ptr.27 = internal global ptr @vhci_rx_pdu._entry.25, section ".printk_index", align 4
@vhci_recv_ret_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013vhci_hcd: %s:%d: cannot find a urb of seqnum %u max seqnum %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vhci_recv_ret_submit\00", [43 x i8] zeroinitializer }, align 32
@vhci_recv_ret_submit._entry_ptr = internal global ptr @vhci_recv_ret_submit._entry, section ".printk_index", align 4
@vhci_recv_ret_submit.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"now giveback urb %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vhci_hcd: %s:%d: now giveback urb %u\0A\00", [58 x i8] zeroinitializer }, align 32
@vhci_recv_ret_submit.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 0, i8 27, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Leave\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vhci_hcd: %s:%d: Leave\0A\00", [40 x i8] zeroinitializer }, align 32
@vhci_recv_ret_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016vhci_hcd: %s:%d: cannot find the pending unlink %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vhci_recv_ret_unlink\00", [43 x i8] zeroinitializer }, align 32
@vhci_recv_ret_unlink._entry_ptr = internal global ptr @vhci_recv_ret_unlink._entry, section ".printk_index", align 4
@vhci_recv_ret_unlink._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016vhci_hcd: %s:%d: the urb (seqnum %d) was already given back\0A\00", [33 x i8] zeroinitializer }, align 32
@vhci_recv_ret_unlink._entry_ptr.38 = internal global ptr @vhci_recv_ret_unlink._entry.36, section ".printk_index", align 4
@vhci_recv_ret_unlink.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.39, i8 0, i8 42, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"now giveback urb %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vhci_hcd: %s:%d: now giveback urb %d\0A\00", [58 x i8] zeroinitializer }, align 32
@vhci_recv_ret_unlink._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016vhci_hcd: %s:%d: urb->status %d\0A\00", [61 x i8] zeroinitializer }, align 32
@vhci_recv_ret_unlink._entry_ptr.43 = internal global ptr @vhci_recv_ret_unlink._entry.41, section ".printk_index", align 4
@dequeue_pending_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016vhci_hcd: %s:%d: unlink->seqnum %lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dequeue_pending_unlink\00", [41 x i8] zeroinitializer }, align 32
@dequeue_pending_unlink._entry_ptr = internal global ptr @dequeue_pending_unlink._entry, section ".printk_index", align 4
@dequeue_pending_unlink.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 31, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"found pending unlink, %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"vhci_hcd: %s:%d: found pending unlink, %lu\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967181, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 4294966784, i64 4294967192, i64 4294967285]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 48]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 26, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 32, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 40, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 203, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 211, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 216, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 218, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 224, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 229, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 249, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 69, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 101, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 109, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 150, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 165, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 168, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 172, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 121, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [31 x i8] c"../drivers/usb/usbip/vhci_rx.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 123, i32 4 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @dequeue_pending_unlink._entry, ptr @dequeue_pending_unlink._entry_ptr, ptr @vhci_recv_ret_submit._entry, ptr @vhci_recv_ret_submit._entry_ptr, ptr @vhci_recv_ret_unlink._entry, ptr @vhci_recv_ret_unlink._entry.36, ptr @vhci_recv_ret_unlink._entry.41, ptr @vhci_recv_ret_unlink._entry_ptr, ptr @vhci_recv_ret_unlink._entry_ptr.38, ptr @vhci_recv_ret_unlink._entry_ptr.43, ptr @vhci_rx_pdu._entry, ptr @vhci_rx_pdu._entry.13, ptr @vhci_rx_pdu._entry.16, ptr @vhci_rx_pdu._entry.19, ptr @vhci_rx_pdu._entry.22, ptr @vhci_rx_pdu._entry.25, ptr @vhci_rx_pdu._entry_ptr, ptr @vhci_rx_pdu._entry_ptr.15, ptr @vhci_rx_pdu._entry_ptr.18, ptr @vhci_rx_pdu._entry_ptr.21, ptr @vhci_rx_pdu._entry_ptr.24, ptr @vhci_rx_pdu._entry_ptr.27, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_rx_pdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_rx_pdu._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_rx_pdu._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_rx_pdu._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_rx_pdu._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_rx_pdu._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_recv_ret_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_recv_ret_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_recv_ret_unlink._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_recv_ret_unlink._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_pending_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pickup_urb_and_free_priv(ptr noundef readonly %vdev, i32 noundef %seqnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_rx = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in.in = phi ptr [ %priv_rx, %entry ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %priv_rx
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %priv.0 = getelementptr i8, ptr %.pn.in, i32 -4
  %1 = ptrtoint ptr %priv.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %priv.0, align 4
  %cmp9.not = icmp eq i32 %2, %seqnum
  br i1 %cmp9.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.end:                                           ; preds = %for.body
  %priv.0.le = getelementptr i8, ptr %.pn.in, i32 -4
  %urb10 = getelementptr i8, ptr %.pn.in, i32 12
  %3 = ptrtoint ptr %urb10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %urb10, align 4
  %status11 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %7 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end24_crit_edge, label %do.body13

if.end.do.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end24

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pickup_urb_and_free_priv.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pickup_urb_and_free_priv, %do.end24)) #4
          to label %if.then20 [label %do.end24], !srcloc !92

if.then20:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pickup_urb_and_free_priv.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 26, i32 noundef %seqnum) #4
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.body13, %if.end.do.end24_crit_edge
  %8 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.body46 [
    i32 -2, label %do.end24.do.body26_crit_edge
    i32 -104, label %do.end24.do.body26_crit_edge106
    i32 -115, label %do.end24.sw.epilog_crit_edge
  ]

do.end24.sw.epilog_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end24.do.body26_crit_edge106:                  ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body26

do.end24.do.body26_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body26

do.body26:                                        ; preds = %do.end24.do.body26_crit_edge, %do.end24.do.body26_crit_edge106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pickup_urb_and_free_priv.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pickup_urb_and_free_priv, %sw.epilog)) #4
          to label %if.then40 [label %sw.epilog], !srcloc !92

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev41 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %6)
  %cmp42 = icmp eq i32 %6, -2
  %cond = select i1 %cmp42, ptr @.str.6, ptr @.str.7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pickup_urb_and_free_priv.__UNIQUE_ID_ddebug242, ptr noundef %dev41, ptr noundef nonnull @.str.5, i32 noundef %seqnum, ptr noundef nonnull %cond) #4
  br label %sw.epilog

do.body46:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pickup_urb_and_free_priv.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pickup_urb_and_free_priv, %sw.epilog)) #4
          to label %if.then60 [label %sw.epilog], !srcloc !92

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  %dev61 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 8
  %11 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev61, align 4
  %dev62 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pickup_urb_and_free_priv.__UNIQUE_ID_ddebug243, ptr noundef %dev62, ptr noundef nonnull @.str.8, i32 noundef %seqnum, i32 noundef %6) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then60, %do.body46, %if.then40, %do.body26, %do.end24.sw.epilog_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #4
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.list_del.exit_crit_edge

sw.epilog.list_del.exit_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %sw.epilog.list_del.exit_crit_edge
  %19 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %priv.0.le) #4
  %hcpriv = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 2
  %21 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %hcpriv, align 4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %urb.0 = phi ptr [ %4, %list_del.exit ], [ null, %for.cond.for.end_crit_edge ]
  ret ptr %urb.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vhci_rx_loop(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call4 = tail call zeroext i1 @kthread_should_stop() #4
  br i1 %call4, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %kcov_handle.i = getelementptr inbounds %struct.usbip_device, ptr %data, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call1 = tail call i32 @usbip_event_happened(ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end:                                           ; preds = %while.body
  %0 = ptrtoint ptr %kcov_handle.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %kcov_handle.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %tobool2.not.i.i.i = icmp ult i64 %1, 4294967296
  %retval.0.i.i.i = select i1 %tobool2.not.i.i.i, i64 %1, i64 0
  tail call void @kcov_remote_start(i64 noundef %retval.0.i.i.i) #4
  tail call fastcc void @vhci_rx_pdu(ptr noundef %data)
  tail call void @kcov_remote_stop() #4
  %call = tail call zeroext i1 @kthread_should_stop() #4
  br i1 %call, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_event_happened(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhci_rx_pdu(ptr noundef %ud) unnamed_addr #0 align 64 {
entry:
  %pdu = alloca %struct.usbip_header, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pdu) #4
  %add.ptr = getelementptr i8, ptr %ud, i32 -16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %0 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_rx_pdu.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_rx_pdu, %do.end10)) #4
          to label %if.then7 [label %do.end10], !srcloc !92

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_rx_pdu.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef 203) #4
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  %1 = call ptr @memset(ptr %pdu, i32 0, i32 48)
  %tcp_socket = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 5
  %2 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcp_socket, align 4
  %call11 = call i32 @usbip_recv(ptr noundef %3, ptr noundef nonnull %pdu, i32 noundef 48) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.end42

if.then12:                                        ; preds = %do.end10
  %4 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call11, label %do.end36 [
    i32 -104, label %do.end17
    i32 -11, label %if.then21
    i32 -512, label %if.then12.if.end41_crit_edge
  ]

if.then12.if.end41_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

do.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, i32 noundef 211) #7
  br label %if.end41

if.then21:                                        ; preds = %if.then12
  %priv_lock.i = getelementptr i8, ptr %ud, i32 240
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #4
  %priv_rx.i = getelementptr i8, ptr %ud, i32 292
  %5 = ptrtoint ptr %priv_rx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %priv_rx.i, align 4
  %cmp.i.i.not = icmp eq ptr %6, %priv_rx.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call2.i) #4
  br i1 %cmp.i.i.not, label %if.then21.cleanup_crit_edge, label %do.end28

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end28:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 216) #7
  br label %if.end41

do.end36:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9, i32 noundef 218, i32 noundef %call11) #7
  br label %if.end41

if.end41:                                         ; preds = %do.end36, %do.end28, %do.end17, %if.then12.if.end41_crit_edge
  call void @usbip_event_add(ptr noundef %ud, i32 noundef 5) #4
  br label %cleanup

if.end42:                                         ; preds = %do.end10
  %7 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call11, label %do.end55 [
    i32 0, label %do.end47
    i32 48, label %if.end58
  ]

do.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.9, i32 noundef 224) #7
  call void @usbip_event_add(ptr noundef %ud, i32 noundef 5) #4
  br label %cleanup

do.end55:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef %call11, i32 noundef 48) #7
  call void @usbip_event_add(ptr noundef %ud, i32 noundef 5) #4
  br label %cleanup

if.end58:                                         ; preds = %if.end42
  call void @usbip_header_correct_endian(ptr noundef nonnull %pdu, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %8 = load i32, ptr @usbip_debug_flag, align 4
  %and59 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end62_crit_edge, label %if.then61

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  call void @usbip_dump_header(ptr noundef nonnull %pdu) #4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end58.if.end62_crit_edge
  %9 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pdu, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %10, label %do.end66 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb63
  ]

sw.bb:                                            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @vhci_recv_ret_submit(ptr noundef %add.ptr, ptr noundef nonnull %pdu)
  br label %cleanup

sw.bb63:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @vhci_recv_ret_unlink(ptr noundef %add.ptr, ptr noundef nonnull %pdu)
  br label %cleanup

do.end66:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.9, i32 noundef 249, i32 noundef %10) #7
  call void @usbip_dump_header(ptr noundef nonnull %pdu) #4
  call void @usbip_event_add(ptr noundef %ud, i32 noundef 5) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %sw.bb63, %sw.bb, %do.end55, %do.end47, %if.end41, %if.then21.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcov_remote_start(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_recv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_event_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_header_correct_endian(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_dump_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhci_recv_ret_submit(ptr noundef %vdev, ptr noundef %pdu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rhport.i = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %rhport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rhport.i, align 4
  %idx.neg.i = sub i32 0, %1
  %add.ptr.i = getelementptr %struct.vhci_device, ptr %vdev, i32 %idx.neg.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -48
  %2 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr1.i, align 8
  %ud2 = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 4
  %priv_lock = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock) #4
  %seqnum = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu, i32 0, i32 1
  %4 = ptrtoint ptr %seqnum to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %seqnum, align 1
  %call8 = tail call ptr @pickup_urb_and_free_priv(ptr noundef %vdev, i32 noundef %5)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock, i32 noundef %call5) #4
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %do.end12, label %if.end

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %seqnum to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %seqnum, align 1
  %seqnum16 = getelementptr inbounds %struct.vhci_hcd, ptr %add.ptr1.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %seqnum16, i32 noundef 4) #4
  %8 = ptrtoint ptr %seqnum16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %seqnum16, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 71, i32 noundef %7, i32 noundef %9) #7
  tail call void @usbip_event_add(ptr noundef %ud2, i32 noundef 5) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usbip_pack_pdu(ptr noundef %pdu, ptr noundef nonnull %call8, i32 noundef 3, i32 noundef 0) #4
  %call19 = tail call i32 @usbip_recv_xbuff(ptr noundef %ud2, ptr noundef nonnull %call8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %status = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -71, ptr %status, align 4
  br label %error

if.end23:                                         ; preds = %if.end
  %call24 = tail call i32 @usbip_recv_iso(ptr noundef %ud2, ptr noundef nonnull %call8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %status28 = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 12
  %11 = ptrtoint ptr %status28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -71, ptr %status28, align 4
  br label %error

if.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usbip_pad_iso(ptr noundef %ud2, ptr noundef nonnull %call8) #4
  br label %error

error:                                            ; preds = %if.end29, %if.then27, %if.then22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %12 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %error.if.end32_crit_edge, label %if.then31

error.if.end32_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then31:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usbip_dump_urb(ptr noundef nonnull %call8) #4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %error.if.end32_crit_edge
  %num_sgs = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 18
  %13 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool33.not = icmp eq i32 %14, 0
  br i1 %tobool33.not, label %if.end32.do.body37_crit_edge, label %if.then34

if.end32.do.body37_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 13
  %15 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %transfer_flags, align 4
  %and35 = and i32 %16, -262145
  store i32 %and35, ptr %transfer_flags, align 4
  br label %do.body37

do.body37:                                        ; preds = %if.then34, %if.end32.do.body37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %17 = load i32, ptr @usbip_debug_flag, align 4
  %and38 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.do.body58_crit_edge, label %do.body41

do.body37.do.body58_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body58

do.body41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_recv_ret_submit.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_recv_ret_submit, %do.body58)) #4
          to label %if.then48 [label %do.body58], !srcloc !92

if.then48:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %seqnum to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %seqnum, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_recv_ret_submit.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef 101, i32 noundef %19) #4
  br label %do.body58

do.body58:                                        ; preds = %if.then48, %do.body41, %do.body37.do.body58_crit_edge
  %call65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %add.ptr.i133 = getelementptr i8, ptr %add.ptr1.i, i32 -600
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %add.ptr.i133, ptr noundef nonnull %call8) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call65) #4
  %status73 = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 12
  %20 = ptrtoint ptr %status73 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status73, align 4
  tail call void @usb_hcd_giveback_urb(ptr noundef %add.ptr.i133, ptr noundef nonnull %call8, i32 noundef %21) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %22 = load i32, ptr @usbip_debug_flag, align 4
  %and75 = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body58.cleanup_crit_edge, label %do.body78

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body78:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_recv_ret_submit.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_recv_ret_submit, %cleanup)) #4
          to label %if.then92 [label %cleanup], !srcloc !92

if.then92:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_recv_ret_submit.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29, i32 noundef 109) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %do.body78, %do.body58.cleanup_crit_edge, %do.end12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhci_recv_ret_unlink(ptr noundef %vdev, ptr noundef %pdu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rhport.i = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %rhport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rhport.i, align 4
  %idx.neg.i = sub i32 0, %1
  %add.ptr.i = getelementptr %struct.vhci_device, ptr %vdev, i32 %idx.neg.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -48
  %2 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr1.i, align 8
  tail call void @usbip_dump_header(ptr noundef %pdu) #4
  %call2 = tail call fastcc ptr @dequeue_pending_unlink(ptr noundef %vdev, ptr noundef %pdu)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %seqnum = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu, i32 0, i32 1
  %4 = ptrtoint ptr %seqnum to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %seqnum, align 1
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 151, i32 noundef %5) #7
  br label %cleanup

do.body5:                                         ; preds = %entry
  %priv_lock = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 5
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock) #4
  %unlink_seqnum = getelementptr inbounds %struct.vhci_unlink, ptr %call2, i32 0, i32 2
  %6 = ptrtoint ptr %unlink_seqnum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unlink_seqnum, align 4
  %call13 = tail call ptr @pickup_urb_and_free_priv(ptr noundef %vdev, i32 noundef %7)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock, i32 noundef %call8) #4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %do.end19, label %do.body24

do.end19:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %seqnum22 = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu, i32 0, i32 1
  %8 = ptrtoint ptr %seqnum22 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %seqnum22, align 1
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef 166, i32 noundef %9) #7
  br label %if.end67

do.body24:                                        ; preds = %do.body5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %10 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %do.body24.do.end42_crit_edge, label %do.body27

do.body24.do.end42_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end42

do.body27:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_recv_ret_unlink.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_recv_ret_unlink, %do.end42)) #4
          to label %if.then34 [label %do.end42], !srcloc !92

if.then34:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  %seqnum36 = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu, i32 0, i32 1
  %11 = ptrtoint ptr %seqnum36 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %seqnum36, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_recv_ret_unlink.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.35, i32 noundef 168, i32 noundef %12) #4
  br label %do.end42

do.end42:                                         ; preds = %if.then34, %do.body27, %do.body24.do.end42_crit_edge
  %u = getelementptr inbounds %struct.usbip_header, ptr %pdu, i32 0, i32 1
  %13 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %u, align 1
  %status43 = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 12
  %15 = ptrtoint ptr %status43 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %status43, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.35, i32 noundef 172, i32 noundef %14) #7
  %call58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %add.ptr.i92 = getelementptr i8, ptr %add.ptr1.i, i32 -600
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %add.ptr.i92, ptr noundef nonnull %call13) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call58) #4
  %16 = ptrtoint ptr %status43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status43, align 4
  tail call void @usb_hcd_giveback_urb(ptr noundef %add.ptr.i92, ptr noundef nonnull %call13, i32 noundef %17) #4
  br label %if.end67

if.end67:                                         ; preds = %do.end42, %do.end19
  tail call void @kfree(ptr noundef nonnull %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_pack_pdu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_recv_xbuff(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_recv_iso(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_pad_iso(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_dump_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dequeue_pending_unlink(ptr noundef %vdev, ptr nocapture noundef readonly %pdu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_lock = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock) #4
  %unlink_rx = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 9
  %0 = ptrtoint ptr %unlink_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unlink_rx, align 4
  %seqnum21 = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %do.end17.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %1, %entry ], [ %.pn, %do.end17.for.cond_crit_edge ]
  %cmp13.not = icmp eq ptr %.pn.in, %unlink_rx
  br i1 %cmp13.not, label %for.cond.cleanup_crit_edge, label %do.end17

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end17:                                         ; preds = %for.cond
  %unlink.0 = getelementptr i8, ptr %.pn.in, i32 -4
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %3 = ptrtoint ptr %unlink.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %unlink.0, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 121, i32 noundef %4) #7
  %5 = ptrtoint ptr %unlink.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %unlink.0, align 4
  %7 = ptrtoint ptr %seqnum21 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %seqnum21, align 1
  %cmp22 = icmp eq i32 %6, %8
  br i1 %cmp22, label %do.body24, label %do.end17.for.cond_crit_edge

do.end17.for.cond_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

do.body24:                                        ; preds = %do.end17
  %unlink.0.le = getelementptr i8, ptr %.pn.in, i32 -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %9 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body24.do.end40_crit_edge, label %do.body26

do.body24.do.end40_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end40

do.body26:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dequeue_pending_unlink.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dequeue_pending_unlink, %do.end40)) #4
          to label %if.then34 [label %do.end40], !srcloc !92

if.then34:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %unlink.0.le to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unlink.0.le, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dequeue_pending_unlink.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 124, i32 noundef %11) #4
  br label %do.end40

do.end40:                                         ; preds = %if.then34, %do.body26, %do.body24.do.end40_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #4
  br i1 %call.i.i, label %if.end.i.i, label %do.end40.list_del.exit_crit_edge

do.end40.list_del.exit_crit_edge:                 ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end40.list_del.exit_crit_edge
  %18 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %unlink.0.le, %list_del.exit ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock, i32 noundef %call3) #4
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcov_remote_stop() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 26, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @pickup_urb_and_free_priv.__UNIQUE_ID_ddebug241, !1, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 32, i32 4}
!9 = !{ptr @pickup_urb_and_free_priv.__UNIQUE_ID_ddebug242, !8, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 40, i32 4}
!14 = !{ptr @pickup_urb_and_free_priv.__UNIQUE_ID_ddebug243, !13, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 203, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vhci_rx_pdu.__UNIQUE_ID_ddebug248, !16, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 211, i32 4}
!22 = !{ptr @vhci_rx_pdu._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @vhci_rx_pdu._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 216, i32 4}
!26 = !{ptr @vhci_rx_pdu._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @vhci_rx_pdu._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 218, i32 4}
!30 = !{ptr @vhci_rx_pdu._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vhci_rx_pdu._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 224, i32 3}
!34 = !{ptr @vhci_rx_pdu._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @vhci_rx_pdu._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 229, i32 3}
!38 = !{ptr @vhci_rx_pdu._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @vhci_rx_pdu._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 249, i32 3}
!42 = !{ptr @vhci_rx_pdu._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @vhci_rx_pdu._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 69, i32 3}
!46 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @vhci_recv_ret_submit._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @vhci_recv_ret_submit._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 101, i32 2}
!51 = !{ptr @vhci_recv_ret_submit.__UNIQUE_ID_ddebug244, !50, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!52 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 109, i32 2}
!55 = !{ptr @vhci_recv_ret_submit.__UNIQUE_ID_ddebug245, !54, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!56 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 150, i32 3}
!59 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @vhci_recv_ret_unlink._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @vhci_recv_ret_unlink._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 165, i32 3}
!64 = !{ptr @vhci_recv_ret_unlink._entry.36, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @vhci_recv_ret_unlink._entry_ptr.38, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 168, i32 3}
!68 = !{ptr @vhci_recv_ret_unlink.__UNIQUE_ID_ddebug247, !67, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!69 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 172, i32 3}
!72 = !{ptr @vhci_recv_ret_unlink._entry.41, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @vhci_recv_ret_unlink._entry_ptr.43, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 121, i32 3}
!76 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @dequeue_pending_unlink._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @dequeue_pending_unlink._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/usbip/vhci_rx.c", i32 123, i32 4}
!81 = !{ptr @dequeue_pending_unlink.__UNIQUE_ID_ddebug246, !80, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!82 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148255540, i64 2148255545, i64 2148255558, i64 2148255602, i64 2148255636, i64 2148255657}
