; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-mem.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+xhci_get_ep_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_xhci_get_ep_ctx\09\09\09\09"
module asm "\09.long\09__crc_xhci_get_ep_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_get_ep_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_get_ep_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_get_ep_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.69 }
%union.anon.69 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xhci_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xhci_segment = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [4 x i8], [0 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%union.xhci_trb = type { %struct.xhci_link_trb }
%struct.xhci_link_trb = type { i64, i32, i32 }
%struct.xhci_virt_device = type { i32, ptr, ptr, ptr, [31 x %struct.xhci_virt_ep], i8, i8, ptr, ptr, i32, i16, ptr }
%struct.xhci_virt_ep = type { ptr, i32, ptr, ptr, ptr, i32, %struct.list_head, %struct.timer_list, ptr, ptr, ptr, i8, %struct.xhci_bw_info, %struct.list_head, i32, i8 }
%struct.xhci_bw_info = type { i32, i32, i32, i32, i32, i32 }
%struct.xhci_container_ctx = type { i32, i32, ptr, i32 }
%struct.xhci_stream_info = type { ptr, i32, ptr, i32, i32, %struct.xarray, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.xhci_stream_ctx = type { i64, [2 x i32] }
%struct.xhci_command = type { ptr, i32, i32, ptr, ptr, %struct.list_head }
%struct.xhci_ep_ctx = type { i32, i32, i64, i32, [3 x i32] }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.xhci_root_port_bw_info = type { %struct.list_head, i32, %struct.xhci_interval_bw_table }
%struct.xhci_interval_bw_table = type { i32, [16 x %struct.xhci_interval_bw], i32, i32, i32 }
%struct.xhci_interval_bw = type { i32, %struct.list_head, [3 x i32] }
%struct.xhci_tt_bw_info = type { %struct.list_head, i32, i32, %struct.xhci_interval_bw_table, i32 }
%struct.xhci_slot_ctx = type { i32, i32, i32, i32, [4 x i32] }
%struct.xhci_input_control_ctx = type { i32, i32, [6 x i32] }
%struct.xhci_erst_entry = type { i64, i32, i32 }
%struct.xhci_device_context_array = type { [256 x i64], i32 }
%struct.xhci_scratchpad = type { ptr, i32, ptr }
%struct.xhci_port_cap = type { ptr, i8, i8, i8, i8 }
%struct.xhci_op_regs = type { i32, i32, i32, i32, i32, i32, i64, [4 x i32], i64, i32, [241 x i32], i32, i32, i32, i32, [1016 x i32] }
%struct.xhci_cap_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xhci_run_regs = type { i32, [7 x i32], [128 x %struct.xhci_intr_reg] }
%struct.xhci_intr_reg = type { i32, i32, i32, i32, i64, i64 }
%struct.anon.78 = type { i32, ptr }
%struct.anon.79 = type { ptr, ptr, ptr, i32, ptr }
%struct.xhci_port = type { ptr, i32, i32, ptr, ptr }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ring expansion succeed, now has %d segments\00", [52 x i8] zeroinitializer }, align 32
@__kstrtab_xhci_get_ep_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_get_ep_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_get_ep_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_get_ep_ctx to i32), ptr @__kstrtab_xhci_get_ep_ctx, ptr @__kstrtabns_xhci_get_ep_ctx }, section "___ksymtab_gpl+xhci_get_ep_ctx", align 4
@xhci_alloc_stream_info.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xhci_hcd\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xhci_alloc_stream_info\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/host/xhci-mem.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Allocating %u streams and %u stream context array entries.\0A\00", [36 x i8] zeroinitializer }, align 32
@xhci_alloc_stream_info.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Command ring has no reserved TRBs available\0A\00", [51 x i8] zeroinitializer }, align 32
@xhci_alloc_stream_info.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Setting stream %d ring ptr to 0x%08llx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Setting number of stream ctx array entries to %u\00", [47 x i8] zeroinitializer }, align 32
@xhci_free_virt_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 904, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Slot %u endpoint %u not removed from BW list!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xhci_free_virt_device\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xhci_free_virt_device._entry_ptr = internal global ptr @xhci_free_virt_device._entry, section ".printk_index", align 4
@xhci_alloc_virt_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 972, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bad Slot ID %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xhci_alloc_virt_device\00", [41 x i8] zeroinitializer }, align 32
@xhci_alloc_virt_device._entry_ptr = internal global ptr @xhci_alloc_virt_device._entry, section ".printk_index", align 4
@xhci_alloc_virt_device.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 -9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Slot %d output ctx = 0x%llx (dma)\0A\00", [61 x i8] zeroinitializer }, align 32
@xhci_alloc_virt_device.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.15, i8 0, i8 -7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Slot %d input ctx = 0x%llx (dma)\0A\00", [62 x i8] zeroinitializer }, align 32
@xhci_alloc_virt_device.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.16, i8 0, i8 -2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Set slot id %d dcbaa entry %p to 0x%llx\0A\00", [55 x i8] zeroinitializer }, align 32
@xhci_setup_addressable_virt_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1101, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Slot ID %d is not assigned to this device\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"xhci_setup_addressable_virt_dev\00", [32 x i8] zeroinitializer }, align 32
@xhci_setup_addressable_virt_dev._entry_ptr = internal global ptr @xhci_setup_addressable_virt_dev._entry, section ".printk_index", align 4
@xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 1, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"FIXME xHCI doesn't support wireless speeds\0A\00", [52 x i8] zeroinitializer }, align 32
@xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.20, i8 1, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Set root hub portnum to %d\0A\00", [36 x i8] zeroinitializer }, align 32
@xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.21, i8 1, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set fake root hub portnum to %d\0A\00", [63 x i8] zeroinitializer }, align 32
@xhci_setup_addressable_virt_dev._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 1179, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WARN: Didn't find a matching TT\0A\00", [63 x i8] zeroinitializer }, align 32
@xhci_setup_addressable_virt_dev._entry_ptr.24 = internal global ptr @xhci_setup_addressable_virt_dev._entry.22, section ".printk_index", align 4
@xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.25, i8 1, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"udev->tt = %p\0A\00", [17 x i8] zeroinitializer }, align 32
@xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.26, i8 1, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"udev->ttport = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Freed event ring\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Freed command ring\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Freed segment pool\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Freed device context pool\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Freed small stream array pool\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Freed medium stream array pool\00", [33 x i8] zeroinitializer }, align 32
@xhci_mem_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&xhci->cmd_timer)->work)\00", [51 x i8] zeroinitializer }, align 32
@xhci_mem_init.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&xhci->cmd_timer)->timer\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Supported page size register = 0x%x\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Supported page size of %iK\00", [37 x i8] zeroinitializer }, align 32
@xhci_mem_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 2407, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WARN: no supported page size\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xhci_mem_init\00", [18 x i8] zeroinitializer }, align 32
@xhci_mem_init._entry_ptr = internal global ptr @xhci_mem_init._entry, section ".printk_index", align 4
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HCD page size set to %iK\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"// xHC can handle at most %d device slots.\00", [53 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"// Setting Max device slots reg = 0x%x.\00", [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"// Device context base array address = 0x%llx (DMA), %p (virt)\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xHCI ring segments\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xHCI input/output contexts\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"xHCI 256 byte stream ctx arrays\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xHCI 1KB stream ctx arrays\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Allocated command ring at %p\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"First segment DMA is 0x%llx\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"// Setting command ring address to 0x%016llx\00", [51 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"// Doorbell array is located at offset 0x%x from cap regs base addr\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"// Allocating event ring\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"// Write ERST size = %i to ir_set 0 (some bits preserved)\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"// Set ERST entries to point to event ring.\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"// Set ERST base address for ir_set 0 = 0x%llx\00", [49 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Wrote ERST address to ir_set 0.\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_xhci_ring_free = external dso_local global %struct.tracepoint, align 4
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/host/xhci-trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_xhci_ring_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@xhci_remove_stream_mapping.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_xhci_ring_alloc = external dso_local global %struct.tracepoint, align 4
@trace_xhci_ring_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xhci_update_stream_segment_mapping.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_xhci_ring_expansion = external dso_local global %struct.tracepoint, align 4
@trace_xhci_ring_expansion.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xhci_dbg_ring_expansion = external dso_local global %struct.tracepoint, align 4
@trace_xhci_dbg_ring_expansion.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__tracepoint_xhci_dbg_context_change = external dso_local global %struct.tracepoint, align 4
@trace_xhci_dbg_context_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xhci_free_tt_info.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xhci_free_tt_info\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bad real port.\0A\00", [16 x i8] zeroinitializer }, align 32
@__tracepoint_xhci_free_virt_device = external dso_local global %struct.tracepoint, align 4
@trace_xhci_free_virt_device.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xhci_init_endpoint_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&ep->stop_cmd_timer)\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_xhci_alloc_virt_device = external dso_local global %struct.tracepoint, align 4
@trace_xhci_alloc_virt_device.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xhci_setup_addressable_virt_device = external dso_local global %struct.tracepoint, align 4
@trace_xhci_setup_addressable_virt_device.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xhci_microframes_to_exponent.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 1, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xhci_microframes_to_exponent\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"ep %#x - rounding interval to %d microframes, ep desc says %d microframes\0A\00", [53 x i8] zeroinitializer }, align 32
@xhci_parse_exponent_interval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 1226, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ep %#x - rounding interval to %d %sframes\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xhci_parse_exponent_interval\00", [35 x i8] zeroinitializer }, align 32
@xhci_parse_exponent_interval._entry_ptr = internal global ptr @xhci_parse_exponent_interval._entry, section ".printk_index", align 4
@.str.71 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"micro\00", [26 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_xhci_dbg_init = external dso_local global %struct.tracepoint, align 4
@trace_xhci_dbg_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xhci_free_virt_devices_depth_first.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 0, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"xhci_free_virt_devices_depth_first\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Bad vdev->real_port.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Simple\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Complex\00", [24 x i8] zeroinitializer }, align 32
@xhci_check_trb_in_td_math.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 2, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xhci_check_trb_in_td_math\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TRB math tests passed.\0A\00", [40 x i8] zeroinitializer }, align 32
@xhci_test_trb_in_td._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 1953, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"WARN: %s TRB math test %d failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xhci_test_trb_in_td\00", [44 x i8] zeroinitializer }, align 32
@xhci_test_trb_in_td._entry_ptr = internal global ptr @xhci_test_trb_in_td._entry, section ".printk_index", align 4
@xhci_test_trb_in_td._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.3, i32 1957, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Tested TRB math w/ seg %p and input DMA 0x%llx\0A\00", [48 x i8] zeroinitializer }, align 32
@xhci_test_trb_in_td._entry_ptr.84 = internal global ptr @xhci_test_trb_in_td._entry.82, section ".printk_index", align 4
@xhci_test_trb_in_td._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.3, i32 1961, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"starting TRB %p (0x%llx DMA), ending TRB %p (0x%llx DMA)\0A\00", [38 x i8] zeroinitializer }, align 32
@xhci_test_trb_in_td._entry_ptr.87 = internal global ptr @xhci_test_trb_in_td._entry.85, section ".printk_index", align 4
@xhci_test_trb_in_td._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str.3, i32 1963, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Expected seg %p, got seg %p\0A\00", [35 x i8] zeroinitializer }, align 32
@xhci_test_trb_in_td._entry_ptr.90 = internal global ptr @xhci_test_trb_in_td._entry.88, section ".printk_index", align 4
@xhci_set_hc_event_deq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 2102, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"WARN something wrong with SW event ring dequeue ptr.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xhci_set_hc_event_deq\00", [42 x i8] zeroinitializer }, align 32
@xhci_set_hc_event_deq._entry_ptr = internal global ptr @xhci_set_hc_event_deq._entry, section ".printk_index", align 4
@.str.93 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"// Write event ring dequeue pointer, preserving EHB bit\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Allocating %d scratchpad buffers\00", [63 x i8] zeroinitializer }, align 32
@xhci_setup_port_arrays._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 2313, ptr @.str.97, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"No Extended Capability registers, unable to set up roothub\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xhci_setup_port_arrays\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@xhci_setup_port_arrays._entry_ptr = internal global ptr @xhci_setup_port_arrays._entry, section ".printk_index", align 4
@xhci_setup_port_arrays._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.96, ptr @.str.3, i32 2346, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No ports on the roothubs?\0A\00", [37 x i8] zeroinitializer }, align 32
@xhci_setup_port_arrays._entry_ptr.100 = internal global ptr @xhci_setup_port_arrays._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Found %u USB 2.0 ports and %u USB 3.0 ports.\00", [51 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Limiting USB 3.0 roothub ports to %u.\00", [58 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Limiting USB 2.0 roothub ports to %u.\00", [58 x i8] zeroinitializer }, align 32
@xhci_add_in_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 2147, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Ignoring unknown port speed, Ext Cap %p, revision = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xhci_add_in_port\00", [47 x i8] zeroinitializer }, align 32
@xhci_add_in_port._entry_ptr = internal global ptr @xhci_add_in_port._entry, section ".printk_index", align 4
@.str.106 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Ext Cap %p, port offset = %u, count = %u, revision = 0x%x\00", [38 x i8] zeroinitializer }, align 32
@xhci_add_in_port.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.3, ptr @.str.107, i8 2, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PSIV:%d PSIE:%d PLT:%d PFD:%d LP:%d PSIM:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"xHCI 1.0: support USB2 hardware lpm\00", [60 x i8] zeroinitializer }, align 32
@xhci_add_in_port._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.3, i32 2221, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Duplicate port entry, Ext Cap %p, port %u\0A\00", [53 x i8] zeroinitializer }, align 32
@xhci_add_in_port._entry_ptr.111 = internal global ptr @xhci_add_in_port._entry.109, section ".printk_index", align 4
@xhci_add_in_port._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.105, ptr @.str.3, i32 2224, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Port was marked as USB %u, duplicated as USB %u\0A\00", [47 x i8] zeroinitializer }, align 32
@xhci_add_in_port._entry_ptr.114 = internal global ptr @xhci_add_in_port._entry.112, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 2]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.124 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 5, i64 7]
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 463, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 616, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 620, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 677, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 728, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 902, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 972, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 987, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 995, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1016, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1100, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1132, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1149, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1150, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1179, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1189, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1190, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1847, i32 44 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1855, i32 44 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1873, i32 44 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1877, i32 44 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1882, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1887, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2392, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2397, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2405, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2407, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2412, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2420, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2424, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2437, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2448, i32 39 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2452, i32 38 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2461, i32 19 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2464, i32 19 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2478, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2479, i32 44 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2488, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2504, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2514, i32 44 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2531, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2536, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2539, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2549, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant [33 x i8] c"../drivers/usb/host/xhci-trace.h\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 502, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 108, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 36, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 378, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 807, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 789, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1253, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1222, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 87, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 941, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2072, i32 5 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2085, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2089, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1952, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1954, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1958, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1962, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2101, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2111, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1652, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2313, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2346, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2350, i32 10 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2358, i32 5 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2364, i32 5 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2145, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2161, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2195, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2211, i32 11 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2220, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.486 = private constant [31 x i8] c"../drivers/usb/host/xhci-mem.c\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2222, i32 4 }
@llvm.compiler.used = appending global [138 x ptr] [ptr @__ksymtab_xhci_get_ep_ctx, ptr @xhci_add_in_port._entry, ptr @xhci_add_in_port._entry.109, ptr @xhci_add_in_port._entry.112, ptr @xhci_add_in_port._entry_ptr, ptr @xhci_add_in_port._entry_ptr.111, ptr @xhci_add_in_port._entry_ptr.114, ptr @xhci_alloc_virt_device._entry, ptr @xhci_alloc_virt_device._entry_ptr, ptr @xhci_free_virt_device._entry, ptr @xhci_free_virt_device._entry_ptr, ptr @xhci_mem_init._entry, ptr @xhci_mem_init._entry_ptr, ptr @xhci_parse_exponent_interval._entry, ptr @xhci_parse_exponent_interval._entry_ptr, ptr @xhci_set_hc_event_deq._entry, ptr @xhci_set_hc_event_deq._entry_ptr, ptr @xhci_setup_addressable_virt_dev._entry, ptr @xhci_setup_addressable_virt_dev._entry.22, ptr @xhci_setup_addressable_virt_dev._entry_ptr, ptr @xhci_setup_addressable_virt_dev._entry_ptr.24, ptr @xhci_setup_port_arrays._entry, ptr @xhci_setup_port_arrays._entry.98, ptr @xhci_setup_port_arrays._entry_ptr, ptr @xhci_setup_port_arrays._entry_ptr.100, ptr @xhci_test_trb_in_td._entry, ptr @xhci_test_trb_in_td._entry.82, ptr @xhci_test_trb_in_td._entry.85, ptr @xhci_test_trb_in_td._entry.88, ptr @xhci_test_trb_in_td._entry_ptr, ptr @xhci_test_trb_in_td._entry_ptr.84, ptr @xhci_test_trb_in_td._entry_ptr.87, ptr @xhci_test_trb_in_td._entry_ptr.90, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @xhci_mem_init.__key, ptr @.str.33, ptr @xhci_mem_init.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @xa_init_flags.__key, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @xhci_init_endpoint_timer.__key, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @init_completion.__key, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_free_virt_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_alloc_virt_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_setup_addressable_virt_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_setup_addressable_virt_dev._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mem_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mem_init.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mem_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_init_endpoint_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_parse_exponent_interval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_test_trb_in_td._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_test_trb_in_td._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_test_trb_in_td._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_test_trb_in_td._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_set_hc_event_deq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_setup_port_arrays._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_setup_port_arrays._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_add_in_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_add_in_port._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_add_in_port._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_ring_free(ptr nocapture noundef readonly %xhci, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  tail call fastcc void @trace_xhci_ring_free(ptr noundef nonnull %ring)
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 14
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then3, label %if.then2.if.end4_crit_edge

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.then2
  %trb_address_map.i = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 16
  %4 = ptrtoint ptr %trb_address_map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trb_address_map.i, align 4
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %land.rhs.i, label %if.then3.do.body38.i_crit_edge

if.then3.do.body38.i_crit_edge:                   ; preds = %if.then3
  br label %do.body38.i

land.rhs.i:                                       ; preds = %if.then3
  %.b51.i = load i1, ptr @xhci_remove_stream_mapping.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.if.end4_crit_edge, label %if.then.i, !prof !271

land.rhs.i.if.end4_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @xhci_remove_stream_mapping.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 263, i32 noundef 9, ptr noundef null) #13
  br label %if.end4

do.body38.i:                                      ; preds = %xhci_remove_segment_mapping.exit.i.do.body38.i_crit_edge, %if.then3.do.body38.i_crit_edge
  %seg.0.i = phi ptr [ %11, %xhci_remove_segment_mapping.exit.i.do.body38.i_crit_edge ], [ %1, %if.then3.do.body38.i_crit_edge ]
  %6 = ptrtoint ptr %trb_address_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trb_address_map.i, align 4
  %dma.i.i = getelementptr inbounds %struct.xhci_segment, ptr %seg.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma.i.i, align 4
  %shr.i.i = lshr i32 %9, 12
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %7, i32 noundef %shr.i.i) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body38.i.xhci_remove_segment_mapping.exit.i_crit_edge, label %if.then.i.i

do.body38.i.xhci_remove_segment_mapping.exit.i_crit_edge: ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_remove_segment_mapping.exit.i

if.then.i.i:                                      ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i.i = tail call ptr @radix_tree_delete(ptr noundef %7, i32 noundef %shr.i.i) #13
  br label %xhci_remove_segment_mapping.exit.i

xhci_remove_segment_mapping.exit.i:               ; preds = %if.then.i.i, %do.body38.i.xhci_remove_segment_mapping.exit.i_crit_edge
  %next.i = getelementptr inbounds %struct.xhci_segment, ptr %seg.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next.i, align 4
  %12 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring, align 4
  %cmp42.not.i = icmp eq ptr %11, %13
  br i1 %cmp42.not.i, label %xhci_remove_segment_mapping.exit.i.if.end4_crit_edge, label %xhci_remove_segment_mapping.exit.i.do.body38.i_crit_edge

xhci_remove_segment_mapping.exit.i.do.body38.i_crit_edge: ; preds = %xhci_remove_segment_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body38.i

xhci_remove_segment_mapping.exit.i.if.end4_crit_edge: ; preds = %xhci_remove_segment_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end4:                                          ; preds = %xhci_remove_segment_mapping.exit.i.if.end4_crit_edge, %if.then.i, %land.rhs.i.if.end4_crit_edge, %if.then2.if.end4_crit_edge
  %14 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring, align 4
  %next.i13 = getelementptr inbounds %struct.xhci_segment, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %next.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next.i13, align 4
  %cmp.not14.i = icmp eq ptr %17, %15
  br i1 %cmp.not14.i, label %if.end4.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end4.while.end.i_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end4
  %segment_pool.i.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 45
  br label %while.body.i

while.body.i:                                     ; preds = %xhci_segment_free.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %seg.015.i = phi ptr [ %17, %while.body.lr.ph.i ], [ %19, %xhci_segment_free.exit.i.while.body.i_crit_edge ]
  %next2.i = getelementptr inbounds %struct.xhci_segment, ptr %seg.015.i, i32 0, i32 1
  %18 = ptrtoint ptr %next2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next2.i, align 4
  %20 = ptrtoint ptr %seg.015.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %seg.015.i, align 4
  %tobool.not.i.i14 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i14, label %while.body.i.xhci_segment_free.exit.i_crit_edge, label %if.then.i.i16

while.body.i.xhci_segment_free.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_segment_free.exit.i

if.then.i.i16:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %segment_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %segment_pool.i.i, align 8
  %dma.i.i15 = getelementptr inbounds %struct.xhci_segment, ptr %seg.015.i, i32 0, i32 2
  %24 = ptrtoint ptr %dma.i.i15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma.i.i15, align 4
  tail call void @dma_pool_free(ptr noundef %23, ptr noundef nonnull %21, i32 noundef %25) #13
  %26 = ptrtoint ptr %seg.015.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %seg.015.i, align 4
  br label %xhci_segment_free.exit.i

xhci_segment_free.exit.i:                         ; preds = %if.then.i.i16, %while.body.i.xhci_segment_free.exit.i_crit_edge
  %bounce_buf.i.i = getelementptr inbounds %struct.xhci_segment, ptr %seg.015.i, i32 0, i32 4
  %27 = ptrtoint ptr %bounce_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bounce_buf.i.i, align 4
  tail call void @kfree(ptr noundef %28) #13
  tail call void @kfree(ptr noundef %seg.015.i) #13
  %cmp.not.i = icmp eq ptr %19, %15
  br i1 %cmp.not.i, label %xhci_segment_free.exit.i.while.end.i_crit_edge, label %xhci_segment_free.exit.i.while.body.i_crit_edge

xhci_segment_free.exit.i.while.body.i_crit_edge:  ; preds = %xhci_segment_free.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

xhci_segment_free.exit.i.while.end.i_crit_edge:   ; preds = %xhci_segment_free.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %xhci_segment_free.exit.i.while.end.i_crit_edge, %if.end4.while.end.i_crit_edge
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %15, align 4
  %tobool.not.i8.i = icmp eq ptr %30, null
  br i1 %tobool.not.i8.i, label %while.end.i.xhci_free_segments_for_ring.exit_crit_edge, label %if.then.i11.i

while.end.i.xhci_free_segments_for_ring.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_free_segments_for_ring.exit

if.then.i11.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %segment_pool.i9.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 45
  %31 = ptrtoint ptr %segment_pool.i9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %segment_pool.i9.i, align 8
  %dma.i10.i = getelementptr inbounds %struct.xhci_segment, ptr %15, i32 0, i32 2
  %33 = ptrtoint ptr %dma.i10.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma.i10.i, align 4
  tail call void @dma_pool_free(ptr noundef %32, ptr noundef nonnull %30, i32 noundef %34) #13
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %15, align 4
  br label %xhci_free_segments_for_ring.exit

xhci_free_segments_for_ring.exit:                 ; preds = %if.then.i11.i, %while.end.i.xhci_free_segments_for_ring.exit_crit_edge
  %bounce_buf.i12.i = getelementptr inbounds %struct.xhci_segment, ptr %15, i32 0, i32 4
  %36 = ptrtoint ptr %bounce_buf.i12.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bounce_buf.i12.i, align 4
  tail call void @kfree(ptr noundef %37) #13
  tail call void @kfree(ptr noundef %15) #13
  br label %if.end6

if.end6:                                          ; preds = %xhci_free_segments_for_ring.exit, %if.end.if.end6_crit_edge
  tail call void @kfree(ptr noundef nonnull %ring) #13
  br label %return

return:                                           ; preds = %if.end6, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_ring_free(ptr noundef %ring) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_free, i32 0, i32 1), ptr blockaddress(@trace_xhci_ring_free, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !272

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !271

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !273
  %call42 = tail call i32 @__traceiter_xhci_ring_free(ptr noundef null, ptr noundef %ring) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !274
  %13 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !271

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !275
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_free, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_free, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xhci_ring_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xhci_ring_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 505, ptr noundef nonnull @.str.58) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !276
  %31 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xhci_initialize_ring_info(ptr nocapture noundef %ring, i32 noundef %cycle_state) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %enqueue = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %enqueue to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %enqueue, align 4
  %enq_seg = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 3
  %5 = ptrtoint ptr %enq_seg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %enq_seg, align 4
  %dequeue = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 4
  %6 = ptrtoint ptr %dequeue to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %dequeue, align 4
  %deq_seg = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 5
  %7 = ptrtoint ptr %deq_seg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %deq_seg, align 4
  %cycle_state4 = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %cycle_state4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cycle_state, ptr %cycle_state4, align 4
  %num_segs = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 10
  %9 = ptrtoint ptr %num_segs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_segs, align 4
  %mul = mul i32 %10, 255
  %sub = add i32 %mul, -1
  %num_trbs_free = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 11
  %11 = ptrtoint ptr %num_trbs_free to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %num_trbs_free, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xhci_ring_alloc(ptr nocapture noundef readonly %xhci, i32 noundef %num_segs, i32 noundef %cycle_state, i32 noundef %type, i32 noundef %max_packet, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %flags, 256
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i1.i.i, label %entry.kzalloc_node.exit_crit_edge, label %if.end.i2.i.i, !prof !271

entry.kzalloc_node.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end.i2.i.i:                                    ; preds = %entry
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i2.i.i.kzalloc_node.exit_crit_edge

if.end.i2.i.i.kzalloc_node.exit_crit_edge:        ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end5.i.i.i:                                    ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc_node.exit

kzalloc_node.exit:                                ; preds = %if.end5.i.i.i, %if.end.i2.i.i.kzalloc_node.exit_crit_edge, %entry.kzalloc_node.exit_crit_edge
  %retval.0.i3.i.i = phi i32 [ 0, %entry.kzalloc_node.exit_crit_edge ], [ 3, %if.end.i2.i.i.kzalloc_node.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i3.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 72) #16
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %kzalloc_node.exit.cleanup_crit_edge, label %if.end

kzalloc_node.exit.cleanup_crit_edge:              ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %kzalloc_node.exit
  %num_segs3 = getelementptr inbounds %struct.xhci_ring, ptr %call.i.i.i, i32 0, i32 10
  %2 = ptrtoint ptr %num_segs3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %num_segs, ptr %num_segs3, align 4
  %bounce_buf_len = getelementptr inbounds %struct.xhci_ring, ptr %call.i.i.i, i32 0, i32 13
  %3 = ptrtoint ptr %bounce_buf_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %max_packet, ptr %bounce_buf_len, align 8
  %td_list = getelementptr inbounds %struct.xhci_ring, ptr %call.i.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %td_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %td_list, ptr %td_list, align 8
  %prev.i = getelementptr inbounds %struct.xhci_ring, ptr %call.i.i.i, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %td_list, ptr %prev.i, align 4
  %type4 = getelementptr inbounds %struct.xhci_ring, ptr %call.i.i.i, i32 0, i32 14
  %6 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %type, ptr %type4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_segs)
  %cmp = icmp eq i32 %num_segs, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %last_seg = getelementptr inbounds %struct.xhci_ring, ptr %call.i.i.i, i32 0, i32 1
  %call7 = tail call fastcc i32 @xhci_alloc_segments_for_ring(ptr noundef %xhci, ptr noundef nonnull %call.i.i.i, ptr noundef %last_seg, i32 noundef %num_segs, i32 noundef %cycle_state, i32 noundef %type, i32 noundef %max_packet, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %fail

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cmp11.not = icmp eq i32 %type, 6
  br i1 %cmp11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %last_seg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %last_seg, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %control = getelementptr %union.xhci_trb, ptr %10, i32 255, i32 0, i32 2
  %11 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %control, align 4
  %or = or i32 %12, 33554432
  store i32 %or, ptr %control, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %13 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i.i.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %enqueue.i = getelementptr inbounds %struct.xhci_ring, ptr %call.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %enqueue.i, align 8
  %enq_seg.i = getelementptr inbounds %struct.xhci_ring, ptr %call.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %enq_seg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %14, ptr %enq_seg.i, align 4
  %dequeue.i = getelementptr inbounds %struct.xhci_ring, ptr %call.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %dequeue.i, align 8
  %deq_seg.i = getelementptr inbounds %struct.xhci_ring, ptr %call.i.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %deq_seg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %deq_seg.i, align 4
  %cycle_state4.i = getelementptr inbounds %struct.xhci_ring, ptr %call.i.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %cycle_state4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cycle_state, ptr %cycle_state4.i, align 8
  %22 = ptrtoint ptr %num_segs3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_segs3, align 4
  %mul.i = mul i32 %23, 255
  %sub.i = add i32 %mul.i, -1
  %num_trbs_free.i = getelementptr inbounds %struct.xhci_ring, ptr %call.i.i.i, i32 0, i32 11
  %24 = ptrtoint ptr %num_trbs_free.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %num_trbs_free.i, align 8
  tail call fastcc void @trace_xhci_ring_alloc(ptr noundef nonnull %call.i.i.i)
  br label %cleanup

fail:                                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end14, %if.end.cleanup_crit_edge, %kzalloc_node.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ %call.i.i.i, %if.end14 ], [ null, %kzalloc_node.exit.cleanup_crit_edge ], [ %call.i.i.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xhci_alloc_segments_for_ring(ptr nocapture noundef readonly %xhci, ptr nocapture noundef %first, ptr nocapture noundef writeonly %last, i32 noundef %num_segs, i32 noundef %cycle_state, i32 noundef %type, i32 noundef %max_packet, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %0 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %quirks.i, align 8
  %conv.i61 = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv.i61)
  %tobool.not = icmp eq i64 %conv.i61, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %land.rhs, label %lor.rhs.lor.end_crit_edge

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i64 %1, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1 = icmp ne i64 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %lor.rhs.lor.end_crit_edge, %entry.lor.end_crit_edge
  %2 = phi i1 [ true, %entry.lor.end_crit_edge ], [ false, %lor.rhs.lor.end_crit_edge ], [ %tobool1, %land.rhs ]
  %call3 = tail call fastcc ptr @xhci_segment_alloc(ptr noundef %xhci, i32 noundef %cycle_state, i32 noundef %max_packet, i32 noundef %flags)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %lor.end.cleanup18_crit_edge, label %if.end

lor.end.cleanup18_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

if.end:                                           ; preds = %lor.end
  %dec = add i32 %num_segs, -1
  %3 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %first, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cmp.not.i = icmp eq i32 %type, 6
  %segment_pool.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 45
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %if.end
  %num_segs.addr.0 = phi i32 [ %dec, %if.end ], [ %num_segs.addr.1, %cleanup.while.cond_crit_edge ]
  %prev.0 = phi ptr [ %call3, %if.end ], [ %prev.2, %cleanup.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_segs.addr.0)
  %cmp5.not = icmp eq i32 %num_segs.addr.0, 0
  br i1 %cmp5.not, label %while.end16, label %while.body

while.body:                                       ; preds = %while.cond
  %call6 = tail call fastcc ptr @xhci_segment_alloc(ptr noundef %xhci, i32 noundef %cycle_state, i32 noundef %max_packet, i32 noundef %flags)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end13

if.then8:                                         ; preds = %while.body
  %4 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %first, align 4
  %tobool10.not64 = icmp eq ptr %5, null
  br i1 %tobool10.not64, label %if.then8.cleanup18_crit_edge, label %if.then8.while.body11_crit_edge

if.then8.while.body11_crit_edge:                  ; preds = %if.then8
  br label %while.body11

if.then8.cleanup18_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

while.body11:                                     ; preds = %xhci_segment_free.exit.while.body11_crit_edge, %if.then8.while.body11_crit_edge
  %prev.165 = phi ptr [ %7, %xhci_segment_free.exit.while.body11_crit_edge ], [ %5, %if.then8.while.body11_crit_edge ]
  %next12 = getelementptr inbounds %struct.xhci_segment, ptr %prev.165, i32 0, i32 1
  %6 = ptrtoint ptr %next12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next12, align 4
  %8 = ptrtoint ptr %prev.165 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.165, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %while.body11.xhci_segment_free.exit_crit_edge, label %if.then.i

while.body11.xhci_segment_free.exit_crit_edge:    ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_segment_free.exit

if.then.i:                                        ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %segment_pool.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %segment_pool.i, align 8
  %dma.i = getelementptr inbounds %struct.xhci_segment, ptr %prev.165, i32 0, i32 2
  %12 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma.i, align 4
  tail call void @dma_pool_free(ptr noundef %11, ptr noundef nonnull %9, i32 noundef %13) #13
  %14 = ptrtoint ptr %prev.165 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %prev.165, align 4
  br label %xhci_segment_free.exit

xhci_segment_free.exit:                           ; preds = %if.then.i, %while.body11.xhci_segment_free.exit_crit_edge
  %bounce_buf.i = getelementptr inbounds %struct.xhci_segment, ptr %prev.165, i32 0, i32 4
  %15 = ptrtoint ptr %bounce_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bounce_buf.i, align 4
  tail call void @kfree(ptr noundef %16) #13
  tail call void @kfree(ptr noundef nonnull %prev.165) #13
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %xhci_segment_free.exit.cleanup_crit_edge, label %xhci_segment_free.exit.while.body11_crit_edge

xhci_segment_free.exit.while.body11_crit_edge:    ; preds = %xhci_segment_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body11

xhci_segment_free.exit.cleanup_crit_edge:         ; preds = %xhci_segment_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %while.body
  %tobool.not.i44 = icmp eq ptr %prev.0, null
  br i1 %tobool.not.i44, label %if.end13.xhci_link_segments.exit_crit_edge, label %if.end.i

if.end13.xhci_link_segments.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_link_segments.exit

if.end.i:                                         ; preds = %if.end13
  %next2.i = getelementptr inbounds %struct.xhci_segment, ptr %prev.0, i32 0, i32 1
  %17 = ptrtoint ptr %next2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call6, ptr %next2.i, align 4
  br i1 %cmp.not.i, label %if.end.i.xhci_link_segments.exit_crit_edge, label %if.then3.i

if.end.i.xhci_link_segments.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_link_segments.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %dma.i45 = getelementptr inbounds %struct.xhci_segment, ptr %call6, i32 0, i32 2
  %18 = ptrtoint ptr %dma.i45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma.i45, align 4
  %conv.i46 = zext i32 %19 to i64
  %20 = tail call i64 @llvm.bswap.i64(i64 %conv.i46) #13
  %21 = ptrtoint ptr %prev.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.0, align 4
  %arrayidx.i = getelementptr %union.xhci_trb, ptr %22, i32 255
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %20, ptr %arrayidx.i, align 8
  %24 = load ptr, ptr %prev.0, align 4
  %control.i = getelementptr %union.xhci_trb, ptr %24, i32 255, i32 0, i32 2
  %25 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %control.i, align 4
  %27 = and i32 %26, -16515073
  %28 = or i32 %27, 1572864
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  %or8.i = or i32 %29, 16
  %spec.select.i = select i1 %2, i32 %or8.i, i32 %29
  %30 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #13
  %31 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %control.i, align 4
  br label %xhci_link_segments.exit

xhci_link_segments.exit:                          ; preds = %if.then3.i, %if.end.i.xhci_link_segments.exit_crit_edge, %if.end13.xhci_link_segments.exit_crit_edge
  %dec15 = add i32 %num_segs.addr.0, -1
  br label %cleanup

cleanup:                                          ; preds = %xhci_link_segments.exit, %xhci_segment_free.exit.cleanup_crit_edge
  %num_segs.addr.1 = phi i32 [ %dec15, %xhci_link_segments.exit ], [ %num_segs.addr.0, %xhci_segment_free.exit.cleanup_crit_edge ]
  %prev.2 = phi ptr [ %call6, %xhci_link_segments.exit ], [ null, %xhci_segment_free.exit.cleanup_crit_edge ]
  br i1 %tobool7.not, label %cleanup.cleanup18_crit_edge, label %cleanup.while.cond_crit_edge

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

cleanup.cleanup18_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

while.end16:                                      ; preds = %while.cond
  %32 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %first, align 4
  %tobool.not.i47 = icmp eq ptr %prev.0, null
  %tobool1.not.i48 = icmp eq ptr %33, null
  %or.cond.i49 = or i1 %tobool.not.i47, %tobool1.not.i48
  br i1 %or.cond.i49, label %while.end16.xhci_link_segments.exit60_crit_edge, label %if.end.i52

while.end16.xhci_link_segments.exit60_crit_edge:  ; preds = %while.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_link_segments.exit60

if.end.i52:                                       ; preds = %while.end16
  %next2.i50 = getelementptr inbounds %struct.xhci_segment, ptr %prev.0, i32 0, i32 1
  %34 = ptrtoint ptr %next2.i50 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %next2.i50, align 4
  br i1 %cmp.not.i, label %if.end.i52.xhci_link_segments.exit60_crit_edge, label %if.then3.i59

if.end.i52.xhci_link_segments.exit60_crit_edge:   ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_link_segments.exit60

if.then3.i59:                                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #15
  %dma.i53 = getelementptr inbounds %struct.xhci_segment, ptr %33, i32 0, i32 2
  %35 = ptrtoint ptr %dma.i53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma.i53, align 4
  %conv.i54 = zext i32 %36 to i64
  %37 = tail call i64 @llvm.bswap.i64(i64 %conv.i54) #13
  %38 = ptrtoint ptr %prev.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.0, align 4
  %arrayidx.i55 = getelementptr %union.xhci_trb, ptr %39, i32 255
  %40 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %37, ptr %arrayidx.i55, align 8
  %41 = load ptr, ptr %prev.0, align 4
  %control.i56 = getelementptr %union.xhci_trb, ptr %41, i32 255, i32 0, i32 2
  %42 = ptrtoint ptr %control.i56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %control.i56, align 4
  %44 = and i32 %43, -16515073
  %45 = or i32 %44, 1572864
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #13
  %or8.i57 = or i32 %46, 16
  %spec.select.i58 = select i1 %2, i32 %or8.i57, i32 %46
  %47 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i58) #13
  %48 = ptrtoint ptr %control.i56 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %control.i56, align 4
  br label %xhci_link_segments.exit60

xhci_link_segments.exit60:                        ; preds = %if.then3.i59, %if.end.i52.xhci_link_segments.exit60_crit_edge, %while.end16.xhci_link_segments.exit60_crit_edge
  %49 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %prev.0, ptr %last, align 4
  br label %cleanup18

cleanup18:                                        ; preds = %xhci_link_segments.exit60, %cleanup.cleanup18_crit_edge, %if.then8.cleanup18_crit_edge, %lor.end.cleanup18_crit_edge
  %retval.2 = phi i32 [ 0, %xhci_link_segments.exit60 ], [ -12, %lor.end.cleanup18_crit_edge ], [ -12, %cleanup.cleanup18_crit_edge ], [ -12, %if.then8.cleanup18_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_ring_alloc(ptr noundef %ring) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_alloc, i32 0, i32 1), ptr blockaddress(@trace_xhci_ring_alloc, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !272

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !271

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !277
  %call42 = tail call i32 @__traceiter_xhci_ring_alloc(ptr noundef null, ptr noundef %ring) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !278
  %13 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !271

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !275
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_alloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xhci_ring_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xhci_ring_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 500, ptr noundef nonnull @.str.58) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !276
  %31 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_free_endpoint_ring(ptr nocapture noundef readonly %xhci, ptr nocapture noundef %virt_dev, i32 noundef %ep_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ring = getelementptr %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 4, i32 %ep_index, i32 2
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  tail call void @xhci_ring_free(ptr noundef %xhci, ptr noundef %1)
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ring, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_ring_expansion(ptr noundef %xhci, ptr noundef %ring, i32 noundef %num_trbs, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %first = alloca ptr, align 4
  %last = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first) #13
  %0 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %first, align 4, !annotation !279
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last) #13
  %1 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %last, align 4, !annotation !279
  %sub = add i32 %num_trbs, 254
  %div = udiv i32 %sub, 255
  %num_segs1 = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 10
  %2 = ptrtoint ptr %num_segs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_segs1, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 %div)
  %cycle_state = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 7
  %5 = ptrtoint ptr %cycle_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cycle_state, align 4
  %type = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 14
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %bounce_buf_len = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 13
  %9 = ptrtoint ptr %bounce_buf_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bounce_buf_len, align 4
  %call = call fastcc i32 @xhci_alloc_segments_for_ring(ptr noundef %xhci, ptr noundef nonnull %first, ptr noundef nonnull %last, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp4 = icmp eq i32 %12, 4
  br i1 %cmp4, label %if.end7, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end7:                                          ; preds = %if.end
  %trb_address_map = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 16
  %13 = ptrtoint ptr %trb_address_map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trb_address_map, align 4
  %15 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %first, align 4
  %17 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %last, align 4
  %call6 = tail call fastcc i32 @xhci_update_stream_segment_mapping(ptr noundef %14, ptr noundef %ring, ptr noundef %16, ptr noundef %18, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool8.not = icmp eq i32 %call6, 0
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %do.body.preheader

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.body.preheader:                                ; preds = %if.end7
  %19 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %19)
  %first.promoted = load ptr, ptr %first, align 4
  %segment_pool.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 45
  br label %do.body

do.body:                                          ; preds = %xhci_segment_free.exit.do.body_crit_edge, %do.body.preheader
  %20 = phi ptr [ %first.promoted, %do.body.preheader ], [ %22, %xhci_segment_free.exit.do.body_crit_edge ]
  %next10 = getelementptr inbounds %struct.xhci_segment, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %next10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %next10, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %do.body.xhci_segment_free.exit_crit_edge, label %if.then.i

do.body.xhci_segment_free.exit_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_segment_free.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %segment_pool.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %segment_pool.i, align 8
  %dma.i = getelementptr inbounds %struct.xhci_segment, ptr %20, i32 0, i32 2
  %27 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma.i, align 4
  tail call void @dma_pool_free(ptr noundef %26, ptr noundef nonnull %24, i32 noundef %28) #13
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %20, align 4
  br label %xhci_segment_free.exit

xhci_segment_free.exit:                           ; preds = %if.then.i, %do.body.xhci_segment_free.exit_crit_edge
  %bounce_buf.i = getelementptr inbounds %struct.xhci_segment, ptr %20, i32 0, i32 4
  %30 = ptrtoint ptr %bounce_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bounce_buf.i, align 4
  tail call void @kfree(ptr noundef %31) #13
  tail call void @kfree(ptr noundef %20) #13
  %32 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %last, align 4
  %cmp11 = icmp eq ptr %20, %33
  br i1 %cmp11, label %xhci_segment_free.exit.cleanup_crit_edge, label %xhci_segment_free.exit.do.body_crit_edge

xhci_segment_free.exit.do.body_crit_edge:         ; preds = %xhci_segment_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

xhci_segment_free.exit.cleanup_crit_edge:         ; preds = %xhci_segment_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end7.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %34 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %first, align 4
  %36 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %last, align 4
  %tobool.not.i38 = icmp eq ptr %ring, null
  %tobool1.not.i = icmp eq ptr %35, null
  %or.cond.i = or i1 %tobool.not.i38, %tobool1.not.i
  %tobool3.not.i = icmp eq ptr %37, null
  %or.cond47.i = or i1 %or.cond.i, %tobool3.not.i
  br i1 %or.cond47.i, label %if.end14.xhci_link_rings.exit_crit_edge, label %if.end.i

if.end14.xhci_link_rings.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_link_rings.exit

if.end.i:                                         ; preds = %if.end14
  %quirks.i.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %38 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %quirks.i.i, align 8
  %conv.i63.i = and i64 %39, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv.i63.i)
  %tobool4.not.i = icmp eq i64 %conv.i63.i, 0
  %40 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.i = icmp eq i32 %41, 1
  %or.cond = select i1 %tobool4.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond, label %lor.end.i.thread, label %lor.end.i

lor.end.i:                                        ; preds = %if.end.i
  %42 = xor i1 %tobool4.not.i, true
  %enq_seg.i = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 3
  %43 = ptrtoint ptr %enq_seg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %enq_seg.i, align 4
  %next7.i = getelementptr inbounds %struct.xhci_segment, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %next7.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %next7.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %lor.end.i.xhci_link_segments.exit.i_crit_edge, label %if.end.i.i

lor.end.i.xhci_link_segments.exit.i_crit_edge:    ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_link_segments.exit.i

lor.end.i.thread:                                 ; preds = %if.end.i
  %and.i = and i64 %39, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool5.i = icmp ne i64 %and.i, 0
  %enq_seg.i41 = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 3
  %47 = ptrtoint ptr %enq_seg.i41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %enq_seg.i41, align 4
  %next7.i42 = getelementptr inbounds %struct.xhci_segment, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %next7.i42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %next7.i42, align 4
  %tobool.not.i.i43 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i43, label %xhci_link_segments.exit.i.thread, label %if.end.i.i.thread

if.end.i.i.thread:                                ; preds = %lor.end.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %next7.i42 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %35, ptr %next7.i42, align 4
  br label %if.then3.i.i

if.end.i.i:                                       ; preds = %lor.end.i
  %52 = ptrtoint ptr %next7.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %35, ptr %next7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %41)
  %cmp.not.i.i = icmp eq i32 %41, 6
  br i1 %cmp.not.i.i, label %if.end.i.i.xhci_link_segments.exitthread-pre-split.i_crit_edge, label %if.end.i.i.if.then3.i.i_crit_edge

if.end.i.i.if.then3.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i.i

if.end.i.i.xhci_link_segments.exitthread-pre-split.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_link_segments.exitthread-pre-split.i

if.then3.i.i:                                     ; preds = %if.end.i.i.if.then3.i.i_crit_edge, %if.end.i.i.thread
  %53 = phi i1 [ %tobool5.i, %if.end.i.i.thread ], [ %42, %if.end.i.i.if.then3.i.i_crit_edge ]
  %enq_seg.i4450 = phi ptr [ %enq_seg.i41, %if.end.i.i.thread ], [ %enq_seg.i, %if.end.i.i.if.then3.i.i_crit_edge ]
  %54 = phi ptr [ %48, %if.end.i.i.thread ], [ %44, %if.end.i.i.if.then3.i.i_crit_edge ]
  %55 = phi ptr [ %50, %if.end.i.i.thread ], [ %46, %if.end.i.i.if.then3.i.i_crit_edge ]
  %dma.i.i = getelementptr inbounds %struct.xhci_segment, ptr %35, i32 0, i32 2
  %56 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma.i.i, align 4
  %conv.i48.i = zext i32 %57 to i64
  %58 = tail call i64 @llvm.bswap.i64(i64 %conv.i48.i) #13
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %54, align 4
  %arrayidx.i.i = getelementptr %union.xhci_trb, ptr %60, i32 255
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %58, ptr %arrayidx.i.i, align 8
  %62 = load ptr, ptr %54, align 4
  %control.i.i = getelementptr %union.xhci_trb, ptr %62, i32 255, i32 0, i32 2
  %63 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %control.i.i, align 4
  %65 = and i32 %64, -16515073
  %66 = or i32 %65, 1572864
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #13
  %or8.i.i = or i32 %67, 16
  %spec.select.i.i = select i1 %53, i32 %or8.i.i, i32 %67
  %68 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #13
  %69 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %control.i.i, align 4
  br label %xhci_link_segments.exitthread-pre-split.i

xhci_link_segments.exitthread-pre-split.i:        ; preds = %if.then3.i.i, %if.end.i.i.xhci_link_segments.exitthread-pre-split.i_crit_edge
  %enq_seg.i4451 = phi ptr [ %enq_seg.i4450, %if.then3.i.i ], [ %enq_seg.i, %if.end.i.i.xhci_link_segments.exitthread-pre-split.i_crit_edge ]
  %70 = phi ptr [ %55, %if.then3.i.i ], [ %46, %if.end.i.i.xhci_link_segments.exitthread-pre-split.i_crit_edge ]
  %71 = phi i1 [ %53, %if.then3.i.i ], [ %42, %if.end.i.i.xhci_link_segments.exitthread-pre-split.i_crit_edge ]
  %72 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pr.i = load i32, ptr %type, align 4
  br label %xhci_link_segments.exit.i

xhci_link_segments.exit.i:                        ; preds = %xhci_link_segments.exitthread-pre-split.i, %lor.end.i.xhci_link_segments.exit.i_crit_edge
  %73 = phi ptr [ %70, %xhci_link_segments.exitthread-pre-split.i ], [ %46, %lor.end.i.xhci_link_segments.exit.i_crit_edge ]
  %enq_seg.i45 = phi ptr [ %enq_seg.i4451, %xhci_link_segments.exitthread-pre-split.i ], [ %enq_seg.i, %lor.end.i.xhci_link_segments.exit.i_crit_edge ]
  %74 = phi i1 [ %71, %xhci_link_segments.exitthread-pre-split.i ], [ %42, %lor.end.i.xhci_link_segments.exit.i_crit_edge ]
  %75 = phi i32 [ %.pr.i, %xhci_link_segments.exitthread-pre-split.i ], [ %41, %lor.end.i.xhci_link_segments.exit.i_crit_edge ]
  %tobool1.not.i50.i = icmp eq ptr %73, null
  br i1 %tobool1.not.i50.i, label %xhci_link_segments.exit.i.xhci_link_segments.exit62.i_crit_edge, label %if.end.i54.i

xhci_link_segments.exit.i.xhci_link_segments.exit62.i_crit_edge: ; preds = %xhci_link_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_link_segments.exit62.i

xhci_link_segments.exit.i.thread:                 ; preds = %lor.end.i.thread
  %tobool1.not.i50.i53 = icmp eq ptr %50, null
  br i1 %tobool1.not.i50.i53, label %xhci_link_segments.exit.i.thread.xhci_link_segments.exit62.i_crit_edge, label %if.end.i54.i.thread

xhci_link_segments.exit.i.thread.xhci_link_segments.exit62.i_crit_edge: ; preds = %xhci_link_segments.exit.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_link_segments.exit62.i

if.end.i54.i.thread:                              ; preds = %xhci_link_segments.exit.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  %next2.i52.i57 = getelementptr inbounds %struct.xhci_segment, ptr %37, i32 0, i32 1
  %76 = ptrtoint ptr %next2.i52.i57 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %50, ptr %next2.i52.i57, align 4
  br label %if.then3.i61.i

if.end.i54.i:                                     ; preds = %xhci_link_segments.exit.i
  %next2.i52.i = getelementptr inbounds %struct.xhci_segment, ptr %37, i32 0, i32 1
  %77 = ptrtoint ptr %next2.i52.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %73, ptr %next2.i52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %75)
  %cmp.not.i53.i = icmp eq i32 %75, 6
  br i1 %cmp.not.i53.i, label %if.end.i54.i.xhci_link_segments.exit62.i_crit_edge, label %if.end.i54.i.if.then3.i61.i_crit_edge

if.end.i54.i.if.then3.i61.i_crit_edge:            ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i61.i

if.end.i54.i.xhci_link_segments.exit62.i_crit_edge: ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_link_segments.exit62.i

if.then3.i61.i:                                   ; preds = %if.end.i54.i.if.then3.i61.i_crit_edge, %if.end.i54.i.thread
  %78 = phi ptr [ %50, %if.end.i54.i.thread ], [ %73, %if.end.i54.i.if.then3.i61.i_crit_edge ]
  %enq_seg.i455459 = phi ptr [ %enq_seg.i41, %if.end.i54.i.thread ], [ %enq_seg.i45, %if.end.i54.i.if.then3.i61.i_crit_edge ]
  %79 = phi i1 [ %tobool5.i, %if.end.i54.i.thread ], [ %74, %if.end.i54.i.if.then3.i61.i_crit_edge ]
  %dma.i55.i = getelementptr inbounds %struct.xhci_segment, ptr %78, i32 0, i32 2
  %80 = ptrtoint ptr %dma.i55.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma.i55.i, align 4
  %conv.i56.i = zext i32 %81 to i64
  %82 = tail call i64 @llvm.bswap.i64(i64 %conv.i56.i) #13
  %83 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %37, align 4
  %arrayidx.i57.i = getelementptr %union.xhci_trb, ptr %84, i32 255
  %85 = ptrtoint ptr %arrayidx.i57.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %82, ptr %arrayidx.i57.i, align 8
  %86 = load ptr, ptr %37, align 4
  %control.i58.i = getelementptr %union.xhci_trb, ptr %86, i32 255, i32 0, i32 2
  %87 = ptrtoint ptr %control.i58.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %control.i58.i, align 4
  %89 = and i32 %88, -16515073
  %90 = or i32 %89, 1572864
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #13
  %or8.i59.i = or i32 %91, 16
  %spec.select.i60.i = select i1 %79, i32 %or8.i59.i, i32 %91
  %92 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i60.i) #13
  %93 = ptrtoint ptr %control.i58.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %control.i58.i, align 4
  br label %xhci_link_segments.exit62.i

xhci_link_segments.exit62.i:                      ; preds = %if.then3.i61.i, %if.end.i54.i.xhci_link_segments.exit62.i_crit_edge, %xhci_link_segments.exit.i.thread.xhci_link_segments.exit62.i_crit_edge, %xhci_link_segments.exit.i.xhci_link_segments.exit62.i_crit_edge
  %enq_seg.i4555 = phi ptr [ %enq_seg.i41, %xhci_link_segments.exit.i.thread.xhci_link_segments.exit62.i_crit_edge ], [ %enq_seg.i455459, %if.then3.i61.i ], [ %enq_seg.i45, %if.end.i54.i.xhci_link_segments.exit62.i_crit_edge ], [ %enq_seg.i45, %xhci_link_segments.exit.i.xhci_link_segments.exit62.i_crit_edge ]
  %94 = ptrtoint ptr %num_segs1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_segs1, align 4
  %add.i = add i32 %95, %4
  store i32 %add.i, ptr %num_segs1, align 4
  %mul.i = mul i32 %4, 255
  %num_trbs_free.i = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 11
  %96 = ptrtoint ptr %num_trbs_free.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_trbs_free.i, align 4
  %add14.i = add i32 %97, %mul.i
  store i32 %add14.i, ptr %num_trbs_free.i, align 4
  %98 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %99)
  %cmp16.not.i = icmp eq i32 %99, 6
  br i1 %cmp16.not.i, label %xhci_link_segments.exit62.i.xhci_link_rings.exit_crit_edge, label %land.lhs.true.i

xhci_link_segments.exit62.i.xhci_link_rings.exit_crit_edge: ; preds = %xhci_link_segments.exit62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_link_rings.exit

land.lhs.true.i:                                  ; preds = %xhci_link_segments.exit62.i
  %100 = ptrtoint ptr %enq_seg.i4555 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %enq_seg.i4555, align 4
  %last_seg.i = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 1
  %102 = ptrtoint ptr %last_seg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %last_seg.i, align 4
  %cmp18.i = icmp eq ptr %101, %103
  br i1 %cmp18.i, label %if.then19.i, label %land.lhs.true.i.xhci_link_rings.exit_crit_edge

land.lhs.true.i.xhci_link_rings.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_link_rings.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %101, align 4
  %control.i = getelementptr %union.xhci_trb, ptr %105, i32 255, i32 0, i32 2
  %106 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %control.i, align 4
  %and21.i = and i32 %107, -33554433
  store i32 %and21.i, ptr %control.i, align 4
  %108 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %37, align 4
  %control24.i = getelementptr %union.xhci_trb, ptr %109, i32 255, i32 0, i32 2
  %110 = ptrtoint ptr %control24.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %control24.i, align 4
  %or.i = or i32 %111, 33554432
  store i32 %or.i, ptr %control24.i, align 4
  %112 = ptrtoint ptr %last_seg.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %37, ptr %last_seg.i, align 4
  br label %xhci_link_rings.exit

xhci_link_rings.exit:                             ; preds = %if.then19.i, %land.lhs.true.i.xhci_link_rings.exit_crit_edge, %xhci_link_segments.exit62.i.xhci_link_rings.exit_crit_edge, %if.end14.xhci_link_rings.exit_crit_edge
  tail call fastcc void @trace_xhci_ring_expansion(ptr noundef %ring)
  %113 = ptrtoint ptr %num_segs1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %num_segs1, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_ring_expansion, ptr noundef nonnull @.str, i32 noundef %114) #13
  br label %cleanup

cleanup:                                          ; preds = %xhci_link_rings.exit, %xhci_segment_free.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xhci_link_rings.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call6, %xhci_segment_free.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xhci_update_stream_segment_mapping(ptr noundef %trb_address_map, ptr noundef %ring, ptr noundef readonly %first_seg, ptr noundef readnone %last_seg, i32 noundef %mem_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %trb_address_map, null
  br i1 %cmp, label %land.rhs, label %entry.do.body38_crit_edge

entry.do.body38_crit_edge:                        ; preds = %entry
  br label %do.body38

land.rhs:                                         ; preds = %entry
  %.b76 = load i1, ptr @xhci_update_stream_segment_mapping.__already_done, align 1
  br i1 %.b76, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !271

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @xhci_update_stream_segment_mapping.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

do.body38:                                        ; preds = %if.end44.do.body38_crit_edge, %entry.do.body38_crit_edge
  %seg.0 = phi ptr [ %14, %if.end44.do.body38_crit_edge ], [ %first_seg, %entry.do.body38_crit_edge ]
  %dma.i = getelementptr inbounds %struct.xhci_segment, ptr %seg.0, i32 0, i32 2
  %0 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma.i, align 4
  %shr.i = lshr i32 %1, 12
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef nonnull %trb_address_map, i32 noundef %shr.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body38.if.end41_crit_edge

do.body38.if.end41_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.end.i:                                         ; preds = %do.body38
  %call1.i = tail call i32 @radix_tree_maybe_preload(i32 noundef %mem_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %xhci_insert_segment_mapping.exit, label %if.end.i.do.body48.preheader_crit_edge

if.end.i.do.body48.preheader_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body48.preheader

xhci_insert_segment_mapping.exit:                 ; preds = %if.end.i
  %call5.i = tail call i32 @radix_tree_insert(ptr noundef nonnull %trb_address_map, i32 noundef %shr.i, ptr noundef %ring) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %7, ptrtoint (ptr @radix_tree_preloads to i32)
  %8 = inttoptr i32 %add.i.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %8) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !280
  %9 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool39.not = icmp eq i32 %call5.i, 0
  br i1 %tobool39.not, label %xhci_insert_segment_mapping.exit.if.end41_crit_edge, label %xhci_insert_segment_mapping.exit.do.body48.preheader_crit_edge

xhci_insert_segment_mapping.exit.do.body48.preheader_crit_edge: ; preds = %xhci_insert_segment_mapping.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body48.preheader

xhci_insert_segment_mapping.exit.if.end41_crit_edge: ; preds = %xhci_insert_segment_mapping.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

do.body48.preheader:                              ; preds = %xhci_insert_segment_mapping.exit.do.body48.preheader_crit_edge, %if.end.i.do.body48.preheader_crit_edge
  %retval.0.i92 = phi i32 [ %call5.i, %xhci_insert_segment_mapping.exit.do.body48.preheader_crit_edge ], [ %call1.i, %if.end.i.do.body48.preheader_crit_edge ]
  br label %do.body48

if.end41:                                         ; preds = %xhci_insert_segment_mapping.exit.if.end41_crit_edge, %do.body38.if.end41_crit_edge
  %cmp42 = icmp eq ptr %seg.0, %last_seg
  br i1 %cmp42, label %if.end41.cleanup_crit_edge, label %if.end44

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end44:                                         ; preds = %if.end41
  %next = getelementptr inbounds %struct.xhci_segment, ptr %seg.0, i32 0, i32 1
  %13 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next, align 4
  %cmp46.not = icmp eq ptr %14, %first_seg
  br i1 %cmp46.not, label %if.end44.cleanup_crit_edge, label %if.end44.do.body38_crit_edge

if.end44.do.body38_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body38

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body48:                                        ; preds = %if.end51.do.body48_crit_edge, %do.body48.preheader
  %seg.1 = phi ptr [ %18, %if.end51.do.body48_crit_edge ], [ %first_seg, %do.body48.preheader ]
  %dma.i78 = getelementptr inbounds %struct.xhci_segment, ptr %seg.1, i32 0, i32 2
  %15 = ptrtoint ptr %dma.i78 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma.i78, align 4
  %shr.i79 = lshr i32 %16, 12
  %call.i80 = tail call ptr @radix_tree_lookup(ptr noundef nonnull %trb_address_map, i32 noundef %shr.i79) #13
  %tobool.not.i81 = icmp eq ptr %call.i80, null
  br i1 %tobool.not.i81, label %do.body48.xhci_remove_segment_mapping.exit_crit_edge, label %if.then.i

do.body48.xhci_remove_segment_mapping.exit_crit_edge: ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_remove_segment_mapping.exit

if.then.i:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i82 = tail call ptr @radix_tree_delete(ptr noundef nonnull %trb_address_map, i32 noundef %shr.i79) #13
  br label %xhci_remove_segment_mapping.exit

xhci_remove_segment_mapping.exit:                 ; preds = %if.then.i, %do.body48.xhci_remove_segment_mapping.exit_crit_edge
  %cmp49 = icmp eq ptr %seg.1, %seg.0
  br i1 %cmp49, label %xhci_remove_segment_mapping.exit.cleanup_crit_edge, label %if.end51

xhci_remove_segment_mapping.exit.cleanup_crit_edge: ; preds = %xhci_remove_segment_mapping.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end51:                                         ; preds = %xhci_remove_segment_mapping.exit
  %next52 = getelementptr inbounds %struct.xhci_segment, ptr %seg.1, i32 0, i32 1
  %17 = ptrtoint ptr %next52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next52, align 4
  %cmp54.not = icmp eq ptr %18, %first_seg
  br i1 %cmp54.not, label %if.end51.cleanup_crit_edge, label %if.end51.do.body48_crit_edge

if.end51.do.body48_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body48

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end51.cleanup_crit_edge, %xhci_remove_segment_mapping.exit.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %land.rhs.cleanup_crit_edge ], [ %retval.0.i92, %xhci_remove_segment_mapping.exit.cleanup_crit_edge ], [ %retval.0.i92, %if.end51.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_ring_expansion(ptr noundef %ring) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_expansion, i32 0, i32 1), ptr blockaddress(@trace_xhci_ring_expansion, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !272

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !271

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !281
  %call42 = tail call i32 @__traceiter_xhci_ring_expansion(ptr noundef null, ptr noundef %ring) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !282
  %13 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !271

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !275
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_expansion, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_expansion, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xhci_ring_expansion.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xhci_ring_expansion.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 510, ptr noundef nonnull @.str.58) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !276
  %31 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
declare dso_local void @xhci_dbg_trace(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_ring_expansion(ptr noundef %vaf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_ring_expansion, i32 0, i32 1), ptr blockaddress(@trace_xhci_dbg_ring_expansion, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !272

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !271

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !283
  %call42 = tail call i32 @__traceiter_xhci_dbg_ring_expansion(ptr noundef null, ptr noundef %vaf) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !284
  %13 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !271

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !275
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_ring_expansion, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_ring_expansion, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xhci_dbg_ring_expansion.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xhci_dbg_ring_expansion.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 71, ptr noundef nonnull @.str.58) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !276
  %31 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
define dso_local ptr @xhci_alloc_container_ctx(ptr nocapture noundef readonly %xhci, i32 noundef %type, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type.off = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off)
  %switch = icmp ult i32 %type.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %or.i = or i32 %flags, 256
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i1.i.i, label %if.end.kzalloc_node.exit_crit_edge, label %if.end.i2.i.i, !prof !271

if.end.kzalloc_node.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end.i2.i.i:                                    ; preds = %if.end
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i2.i.i.kzalloc_node.exit_crit_edge

if.end.i2.i.i.kzalloc_node.exit_crit_edge:        ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end5.i.i.i:                                    ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc_node.exit

kzalloc_node.exit:                                ; preds = %if.end5.i.i.i, %if.end.i2.i.i.kzalloc_node.exit_crit_edge, %if.end.kzalloc_node.exit_crit_edge
  %retval.0.i3.i.i = phi i32 [ 0, %if.end.kzalloc_node.exit_crit_edge ], [ 3, %if.end.i2.i.i.kzalloc_node.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i3.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 16) #16
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %kzalloc_node.exit.cleanup_crit_edge, label %if.end5

kzalloc_node.exit.cleanup_crit_edge:              ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %kzalloc_node.exit
  %2 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %call.i.i.i, align 8
  %hcc_params = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %3 = ptrtoint ptr %hcc_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hcc_params, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool7.not, i32 1024, i32 2048
  %size = getelementptr inbounds %struct.xhci_container_ctx, ptr %call.i.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp8 = icmp eq i32 %type, 2
  %add = select i1 %tobool7.not, i32 1056, i32 2112
  %spec.select = select i1 %cmp8, i32 %add, i32 %cond
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %size, align 4
  %device_pool = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %6 = ptrtoint ptr %device_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_pool, align 4
  %dma = getelementptr inbounds %struct.xhci_container_ctx, ptr %call.i.i.i, i32 0, i32 3
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %7, i32 noundef %or.i, ptr noundef %dma) #13
  %bytes = getelementptr inbounds %struct.xhci_container_ctx, ptr %call.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %bytes, align 8
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.then19, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then19:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end5.cleanup_crit_edge, %kzalloc_node.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then19 ], [ null, %entry.cleanup_crit_edge ], [ null, %kzalloc_node.exit.cleanup_crit_edge ], [ %call.i.i.i, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_free_container_ctx(ptr nocapture noundef readonly %xhci, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %device_pool = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %0 = ptrtoint ptr %device_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_pool, align 4
  %bytes = getelementptr inbounds %struct.xhci_container_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bytes, align 4
  %dma = getelementptr inbounds %struct.xhci_container_ctx, ptr %ctx, i32 0, i32 3
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  tail call void @dma_pool_free(ptr noundef %1, ptr noundef %3, i32 noundef %5) #13
  tail call void @kfree(ptr noundef nonnull %ctx) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xhci_get_input_control_ctx(ptr nocapture noundef readonly %ctx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bytes = getelementptr inbounds %struct.xhci_container_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bytes, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %3, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xhci_get_slot_ctx(ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %ctx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %bytes = getelementptr inbounds %struct.xhci_container_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bytes, align 4
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hcc_params = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %4 = ptrtoint ptr %hcc_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hcc_params, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 32, i32 64
  %add.ptr = getelementptr i8, ptr %3, i32 %cond
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ %3, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xhci_get_ep_ctx(ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %ctx, i32 noundef %ep_index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %spec.select.v = select i1 %cmp, i32 2, i32 1
  %spec.select = add i32 %spec.select.v, %ep_index
  %bytes = getelementptr inbounds %struct.xhci_container_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bytes, align 4
  %hcc_params = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %4 = ptrtoint ptr %hcc_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hcc_params, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 32, i32 64
  %mul = mul i32 %cond, %spec.select
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xhci_dma_to_transfer_ring(ptr nocapture noundef readonly %ep, i64 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_state = getelementptr inbounds %struct.xhci_virt_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %ep_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ep_state, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %stream_info = getelementptr inbounds %struct.xhci_virt_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream_info, align 4
  %trb_address_map = getelementptr inbounds %struct.xhci_stream_info, ptr %3, i32 0, i32 5
  %shr = lshr i64 %address, 12
  %conv = trunc i64 %shr to i32
  %call = tail call ptr @radix_tree_lookup(ptr noundef %trb_address_map, i32 noundef %conv) #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ring = getelementptr inbounds %struct.xhci_virt_ep, ptr %ep, i32 0, i32 2
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %5, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xhci_alloc_stream_info(ptr nocapture noundef %xhci, i32 noundef %num_stream_ctxs, i32 noundef %num_streams, i32 noundef %max_packet, i32 noundef %mem_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_alloc_stream_info.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_alloc_stream_info, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xhci, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_alloc_stream_info.__UNIQUE_ID_ddebug348, ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %num_streams, i32 noundef %num_stream_ctxs) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmd_ring_reserved_trbs = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 32
  %4 = ptrtoint ptr %cmd_ring_reserved_trbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_ring_reserved_trbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %5)
  %cmp = icmp eq i32 %5, 253
  br i1 %cmp, label %do.body7, label %if.end26

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_alloc_stream_info.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_alloc_stream_info, %if.then19)) #13
          to label %cleanup [label %if.then19], !srcloc !272

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xhci, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_alloc_stream_info.__UNIQUE_ID_ddebug349, ptr noundef %9, ptr noundef nonnull @.str.5) #13
  br label %cleanup

if.end26:                                         ; preds = %do.end
  %inc = add i32 %5, 1
  %10 = ptrtoint ptr %cmd_ring_reserved_trbs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc, ptr %cmd_ring_reserved_trbs, align 4
  %or.i = or i32 %mem_flags, 256
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i1.i.i, label %if.end26.kzalloc_node.exit_crit_edge, label %if.end.i2.i.i, !prof !271

if.end26.kzalloc_node.exit_crit_edge:             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end.i2.i.i:                                    ; preds = %if.end26
  %and2.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i2.i.i.kzalloc_node.exit_crit_edge

if.end.i2.i.i.kzalloc_node.exit_crit_edge:        ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end5.i.i.i:                                    ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc_node.exit

kzalloc_node.exit:                                ; preds = %if.end5.i.i.i, %if.end.i2.i.i.kzalloc_node.exit_crit_edge, %if.end26.kzalloc_node.exit_crit_edge
  %retval.0.i3.i.i = phi i32 [ 0, %if.end26.kzalloc_node.exit_crit_edge ], [ 3, %if.end.i2.i.i.kzalloc_node.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i3.i.i, i32 7
  %11 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef %or.i, i32 noundef 76) #16
  %tobool30.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool30.not, label %kzalloc_node.exit.cleanup_trbs_crit_edge, label %if.end32

kzalloc_node.exit.cleanup_trbs_crit_edge:         ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_trbs

if.end32:                                         ; preds = %kzalloc_node.exit
  %num_streams33 = getelementptr inbounds %struct.xhci_stream_info, ptr %call.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %num_streams33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %num_streams, ptr %num_streams33, align 4
  %num_stream_ctxs34 = getelementptr inbounds %struct.xhci_stream_info, ptr %call.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %num_stream_ctxs34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %num_stream_ctxs, ptr %num_stream_ctxs34, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_streams, i32 4) #13
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %kcalloc_node.exit.thread, label %if.end7.i.i, !prof !285

kcalloc_node.exit.thread:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %call.i.i.i, align 8
  br label %cleanup_info

if.end7.i.i:                                      ; preds = %if.end32
  %18 = extractvalue { i32, i1 } %15, 0
  %call.i.i.i190 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef %or.i) #17
  %19 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i.i190, ptr %call.i.i.i, align 8
  %tobool38.not = icmp eq ptr %call.i.i.i190, null
  br i1 %tobool38.not, label %if.end7.i.i.cleanup_info_crit_edge, label %if.end40

if.end7.i.i.cleanup_info_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_info

if.end40:                                         ; preds = %if.end7.i.i
  %ctx_array_dma = getelementptr inbounds %struct.xhci_stream_info, ptr %call.i.i.i, i32 0, i32 4
  %mul.i = shl i32 %num_stream_ctxs, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %mul.i)
  %cmp.i = icmp ugt i32 %mul.i, 1024
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xhci, align 8
  %sysdev.i = getelementptr inbounds %struct.usb_bus, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sysdev.i, align 4
  %and.i.i = lshr i32 %mem_flags, 5
  %24 = and i32 %and.i.i, 256
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %23, i32 noundef %mul.i, ptr noundef %ctx_array_dma, i32 noundef %mem_flags, i32 noundef %24) #13
  br label %xhci_alloc_stream_ctx.exit

if.else.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %mul.i)
  %cmp2.i = icmp ult i32 %mul.i, 257
  br i1 %cmp2.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %small_streams_pool.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 46
  %25 = ptrtoint ptr %small_streams_pool.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %small_streams_pool.i, align 4
  %call4.i = tail call ptr @dma_pool_alloc(ptr noundef %26, i32 noundef %mem_flags, ptr noundef %ctx_array_dma) #13
  br label %xhci_alloc_stream_ctx.exit

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %medium_streams_pool.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 47
  %27 = ptrtoint ptr %medium_streams_pool.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %medium_streams_pool.i, align 8
  %call6.i = tail call ptr @dma_pool_alloc(ptr noundef %28, i32 noundef %mem_flags, ptr noundef %ctx_array_dma) #13
  br label %xhci_alloc_stream_ctx.exit

xhci_alloc_stream_ctx.exit:                       ; preds = %if.else5.i, %if.then3.i, %if.then.i
  %retval.0.i191 = phi ptr [ %call.i.i, %if.then.i ], [ %call4.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  %stream_ctx_array = getelementptr inbounds %struct.xhci_stream_info, ptr %call.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %stream_ctx_array to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i191, ptr %stream_ctx_array, align 8
  %tobool43.not = icmp eq ptr %retval.0.i191, null
  br i1 %tobool43.not, label %xhci_alloc_stream_ctx.exit.cleanup_ctx_crit_edge, label %if.end45

xhci_alloc_stream_ctx.exit.cleanup_ctx_crit_edge: ; preds = %xhci_alloc_stream_ctx.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_ctx

if.end45:                                         ; preds = %xhci_alloc_stream_ctx.exit
  %30 = call ptr @memset(ptr %retval.0.i191, i32 0, i32 %mul.i)
  %call47 = tail call ptr @xhci_alloc_command_with_ctx(ptr noundef %xhci, i1 noundef zeroext true, i32 noundef %mem_flags)
  %free_streams_command = getelementptr inbounds %struct.xhci_stream_info, ptr %call.i.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %free_streams_command to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call47, ptr %free_streams_command, align 8
  %tobool49.not = icmp eq ptr %call47, null
  br i1 %tobool49.not, label %if.end45.cleanup_ctx_crit_edge, label %if.end51

if.end45.cleanup_ctx_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_ctx

if.end51:                                         ; preds = %if.end45
  %trb_address_map = getelementptr inbounds %struct.xhci_stream_info, ptr %call.i.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %trb_address_map, ptr noundef nonnull @.str.63, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
  %xa_flags.i = getelementptr inbounds %struct.xhci_stream_info, ptr %call.i.i.i, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2592, ptr %xa_flags.i, align 8
  %xa_head.i = getelementptr inbounds %struct.xhci_stream_info, ptr %call.i.i.i, i32 0, i32 5, i32 2
  %33 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %xa_head.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_streams)
  %cmp52204 = icmp ugt i32 %num_streams, 1
  br i1 %cmp52204, label %if.end51.for.body_crit_edge, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end51.for.body_crit_edge
  %cur_stream.0205 = phi i32 [ %inc90, %for.inc.for.body_crit_edge ], [ 1, %if.end51.for.body_crit_edge ]
  %call53 = tail call ptr @xhci_ring_alloc(ptr noundef %xhci, i32 noundef 2, i32 noundef 1, i32 noundef 4, i32 noundef %max_packet, i32 noundef %mem_flags)
  %34 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i.i.i, align 8
  %arrayidx = getelementptr ptr, ptr %35, i32 %cur_stream.0205
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call53, ptr %arrayidx, align 4
  %37 = load ptr, ptr %call.i.i.i, align 8
  %arrayidx56 = getelementptr ptr, ptr %37, i32 %cur_stream.0205
  %38 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx56, align 4
  %tobool57.not = icmp eq ptr %39, null
  br i1 %tobool57.not, label %for.body.for.body94.preheader_crit_edge, label %if.end59

for.body.for.body94.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body94.preheader

if.end59:                                         ; preds = %for.body
  %stream_id = getelementptr inbounds %struct.xhci_ring, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %stream_id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cur_stream.0205, ptr %stream_id, align 4
  %trb_address_map61 = getelementptr inbounds %struct.xhci_ring, ptr %39, i32 0, i32 16
  %41 = ptrtoint ptr %trb_address_map61 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %trb_address_map, ptr %trb_address_map61, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %dma = getelementptr inbounds %struct.xhci_segment, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma, align 4
  %cycle_state = getelementptr inbounds %struct.xhci_ring, ptr %39, i32 0, i32 7
  %46 = ptrtoint ptr %cycle_state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cycle_state, align 4
  %or = or i32 %45, %47
  %or62 = or i32 %or, 2
  %conv = zext i32 %or62 to i64
  %48 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %49 = ptrtoint ptr %stream_ctx_array to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stream_ctx_array, align 8
  %arrayidx64 = getelementptr %struct.xhci_stream_ctx, ptr %50, i32 %cur_stream.0205
  %51 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %48, ptr %arrayidx64, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_alloc_stream_info.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_alloc_stream_info, %if.then77)) #13
          to label %do.end83 [label %if.then77], !srcloc !272

if.then77:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xhci, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_alloc_stream_info.__UNIQUE_ID_ddebug350, ptr noundef %55, ptr noundef nonnull @.str.6, i32 noundef %cur_stream.0205, i64 noundef %conv) #13
  br label %do.end83

do.end83:                                         ; preds = %if.then77, %if.end59
  %56 = ptrtoint ptr %trb_address_map61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %trb_address_map61, align 4
  %58 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %39, align 4
  %last_seg.i = getelementptr inbounds %struct.xhci_ring, ptr %39, i32 0, i32 1
  %60 = ptrtoint ptr %last_seg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %last_seg.i, align 4
  %call.i = tail call fastcc i32 @xhci_update_stream_segment_mapping(ptr noundef %57, ptr noundef nonnull %39, ptr noundef %59, ptr noundef %61, i32 noundef %mem_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool85.not = icmp eq i32 %call.i, 0
  br i1 %tobool85.not, label %for.inc, label %if.then86

if.then86:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xhci_ring_free(ptr noundef %xhci, ptr noundef nonnull %39)
  %62 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i.i.i, align 8
  %arrayidx88 = getelementptr ptr, ptr %63, i32 %cur_stream.0205
  %64 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %arrayidx88, align 4
  br label %for.body94.preheader

for.body94.preheader:                             ; preds = %if.then86, %for.body.for.body94.preheader_crit_edge
  br label %for.body94

for.inc:                                          ; preds = %do.end83
  %inc90 = add nuw i32 %cur_stream.0205, 1
  %exitcond.not = icmp eq i32 %inc90, %num_streams
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body94:                                       ; preds = %for.inc102.for.body94_crit_edge, %for.body94.preheader
  %cur_stream.1207 = phi i32 [ %inc103, %for.inc102.for.body94_crit_edge ], [ 1, %for.body94.preheader ]
  %65 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i.i.i, align 8
  %arrayidx96 = getelementptr ptr, ptr %66, i32 %cur_stream.1207
  %67 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx96, align 4
  %tobool97.not = icmp eq ptr %68, null
  br i1 %tobool97.not, label %for.body94.for.inc102_crit_edge, label %if.then98

for.body94.for.inc102_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc102

if.then98:                                        ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xhci_ring_free(ptr noundef %xhci, ptr noundef nonnull %68)
  %69 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i.i.i, align 8
  %arrayidx100 = getelementptr ptr, ptr %70, i32 %cur_stream.1207
  %71 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %arrayidx100, align 4
  br label %for.inc102

for.inc102:                                       ; preds = %if.then98, %for.body94.for.inc102_crit_edge
  %inc103 = add nuw i32 %cur_stream.1207, 1
  %exitcond213.not = icmp eq i32 %inc103, %num_streams
  br i1 %exitcond213.not, label %for.end104, label %for.inc102.for.body94_crit_edge

for.inc102.for.body94_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body94

for.end104:                                       ; preds = %for.inc102
  %72 = ptrtoint ptr %free_streams_command to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %free_streams_command, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %tobool.not.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i, label %for.end104.xhci_free_command.exit_crit_edge, label %if.end.i.i192

for.end104.xhci_free_command.exit_crit_edge:      ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_free_command.exit

if.end.i.i192:                                    ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #15
  %device_pool.i.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %76 = ptrtoint ptr %device_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device_pool.i.i, align 4
  %bytes.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %75, i32 0, i32 2
  %78 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bytes.i.i, align 4
  %dma.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %75, i32 0, i32 3
  %80 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %77, ptr noundef %79, i32 noundef %81) #13
  tail call void @kfree(ptr noundef nonnull %75) #13
  br label %xhci_free_command.exit

xhci_free_command.exit:                           ; preds = %if.end.i.i192, %for.end104.xhci_free_command.exit_crit_edge
  %completion.i = getelementptr inbounds %struct.xhci_command, ptr %73, i32 0, i32 3
  %82 = ptrtoint ptr %completion.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %completion.i, align 4
  tail call void @kfree(ptr noundef %83) #13
  tail call void @kfree(ptr noundef %73) #13
  br label %cleanup_ctx

cleanup_ctx:                                      ; preds = %xhci_free_command.exit, %if.end45.cleanup_ctx_crit_edge, %xhci_alloc_stream_ctx.exit.cleanup_ctx_crit_edge
  %84 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i.i.i, align 8
  tail call void @kfree(ptr noundef %85) #13
  br label %cleanup_info

cleanup_info:                                     ; preds = %cleanup_ctx, %if.end7.i.i.cleanup_info_crit_edge, %kcalloc_node.exit.thread
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #13
  br label %cleanup_trbs

cleanup_trbs:                                     ; preds = %cleanup_info, %kzalloc_node.exit.cleanup_trbs_crit_edge
  %86 = ptrtoint ptr %cmd_ring_reserved_trbs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cmd_ring_reserved_trbs, align 4
  %dec = add i32 %87, -1
  store i32 %dec, ptr %cmd_ring_reserved_trbs, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup_trbs, %for.inc.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.then19, %do.body7
  %retval.0 = phi ptr [ null, %cleanup_trbs ], [ null, %if.then19 ], [ null, %do.body7 ], [ %call.i.i.i, %if.end51.cleanup_crit_edge ], [ %call.i.i.i, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xhci_alloc_command_with_ctx(ptr nocapture noundef readonly %xhci, i1 noundef zeroext %allocate_completion, i32 noundef %mem_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xhci_alloc_command(ptr noundef %xhci, i1 noundef zeroext %allocate_completion, i32 noundef %mem_flags)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %or.i.i = or i32 %mem_flags, 256
  %and.i.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i1.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i1.i.i.i, label %if.end.kzalloc_node.exit.i_crit_edge, label %if.end.i2.i.i.i, !prof !271

if.end.kzalloc_node.exit.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit.i

if.end.i2.i.i.i:                                  ; preds = %if.end
  %and2.i.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i2.i.i.i.kzalloc_node.exit.i_crit_edge

if.end.i2.i.i.i.kzalloc_node.exit.i_crit_edge:    ; preds = %if.end.i2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc_node.exit.i

kzalloc_node.exit.i:                              ; preds = %if.end5.i.i.i.i, %if.end.i2.i.i.i.kzalloc_node.exit.i_crit_edge, %if.end.kzalloc_node.exit.i_crit_edge
  %retval.0.i3.i.i.i = phi i32 [ 0, %if.end.kzalloc_node.exit.i_crit_edge ], [ 3, %if.end.i2.i.i.i.kzalloc_node.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %arrayidx3.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i3.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx3.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i.i, i32 noundef 16) #16
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc_node.exit.i.if.then5_crit_edge, label %if.end5.i

kzalloc_node.exit.i.if.then5_crit_edge:           ; preds = %kzalloc_node.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

if.end5.i:                                        ; preds = %kzalloc_node.exit.i
  %2 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %call.i.i.i.i, align 8
  %hcc_params.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %3 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hcc_params.i, align 8
  %and.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  %size.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %call.i.i.i.i, i32 0, i32 1
  %add.i = select i1 %tobool7.not.i, i32 1056, i32 2112
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add.i, ptr %size.i, align 4
  %device_pool.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %6 = ptrtoint ptr %device_pool.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_pool.i, align 4
  %dma.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %call.i.i.i.i, i32 0, i32 3
  %call.i.i = tail call ptr @dma_pool_alloc(ptr noundef %7, i32 noundef %or.i.i, ptr noundef %dma.i) #13
  %bytes.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %call.i.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %bytes.i, align 8
  %tobool18.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool18.not.i, label %if.then19.i, label %xhci_alloc_container_ctx.exit

if.then19.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call.i.i.i.i) #13
  br label %if.then5

xhci_alloc_container_ctx.exit:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i.i.i, ptr %call, align 4
  br label %cleanup

if.then5:                                         ; preds = %if.then19.i, %kzalloc_node.exit.i.if.then5_crit_edge
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %call, align 4
  %completion = getelementptr inbounds %struct.xhci_command, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %completion, align 4
  tail call void @kfree(ptr noundef %12) #13
  tail call void @kfree(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %xhci_alloc_container_ctx.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then5 ], [ null, %entry.cleanup_crit_edge ], [ %call, %xhci_alloc_container_ctx.exit ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_free_command(ptr nocapture noundef readonly %xhci, ptr noundef %command) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %command, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.xhci_free_container_ctx.exit_crit_edge, label %if.end.i

entry.xhci_free_container_ctx.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_free_container_ctx.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %device_pool.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %2 = ptrtoint ptr %device_pool.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_pool.i, align 4
  %bytes.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bytes.i, align 4
  %dma.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma.i, align 4
  tail call void @dma_pool_free(ptr noundef %3, ptr noundef %5, i32 noundef %7) #13
  tail call void @kfree(ptr noundef nonnull %1) #13
  br label %xhci_free_container_ctx.exit

xhci_free_container_ctx.exit:                     ; preds = %if.end.i, %entry.xhci_free_container_ctx.exit_crit_edge
  %completion = getelementptr inbounds %struct.xhci_command, ptr %command, i32 0, i32 3
  %8 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %completion, align 4
  tail call void @kfree(ptr noundef %9) #13
  tail call void @kfree(ptr noundef %command) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_setup_streams_ep_input_ctx(ptr noundef %xhci, ptr nocapture noundef %ep_ctx, ptr nocapture noundef readonly %stream_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_stream_ctxs = getelementptr inbounds %struct.xhci_stream_info, ptr %stream_info, i32 0, i32 3
  %0 = ptrtoint ptr %num_stream_ctxs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_stream_ctxs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #13, !range !286
  %sub.i = sub nuw nsw i32 32, %2
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %add = add nsw i32 %cond.i, -1
  %shl = shl nuw i32 1, %add
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_context_change, ptr noundef nonnull @.str.7, i32 noundef %shl) #13
  %3 = ptrtoint ptr %ep_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ep_ctx, align 8
  %and = and i32 %4, -16515073
  %sub = shl nuw nsw i32 %cond.i, 18
  %and2 = add nuw nsw i32 %sub, 7864320
  %or = and i32 %and2, 8126464
  %5 = or i32 %and, %or
  %or4 = or i32 %5, 8388608
  store i32 %or4, ptr %ep_ctx, align 8
  %ctx_array_dma = getelementptr inbounds %struct.xhci_stream_info, ptr %stream_info, i32 0, i32 4
  %6 = ptrtoint ptr %ctx_array_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctx_array_dma, align 4
  %conv = zext i32 %7 to i64
  %8 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %deq = getelementptr inbounds %struct.xhci_ep_ctx, ptr %ep_ctx, i32 0, i32 2
  %9 = ptrtoint ptr %deq to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %deq, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_context_change(ptr noundef %vaf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_context_change, i32 0, i32 1), ptr blockaddress(@trace_xhci_dbg_context_change, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !272

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !271

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !287
  %call42 = tail call i32 @__traceiter_xhci_dbg_context_change(ptr noundef null, ptr noundef %vaf) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !288
  %13 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !271

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !275
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_context_change, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_context_change, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xhci_dbg_context_change.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xhci_dbg_context_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 46, ptr noundef nonnull @.str.58) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !276
  %31 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_setup_no_streams_ep_input_ctx(ptr nocapture noundef %ep_ctx, ptr nocapture noundef readonly %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ep_ctx, align 8
  %and = and i32 %1, -16515073
  store i32 %and, ptr %ep_ctx, align 8
  %ring = getelementptr inbounds %struct.xhci_virt_ep, ptr %ep, i32 0, i32 2
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 4
  %deq_seg = getelementptr inbounds %struct.xhci_ring, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %deq_seg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %deq_seg, align 4
  %dequeue = getelementptr inbounds %struct.xhci_ring, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dequeue, align 4
  %call = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %5, ptr noundef %7) #13
  %8 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring, align 4
  %cycle_state = getelementptr inbounds %struct.xhci_ring, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %cycle_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cycle_state, align 4
  %or = or i32 %11, %call
  %conv = zext i32 %or to i64
  %12 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %deq = getelementptr inbounds %struct.xhci_ep_ctx, ptr %ep_ctx, i32 0, i32 2
  %13 = ptrtoint ptr %deq to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %deq, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_trb_virt_to_dma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_free_stream_info(ptr nocapture noundef %xhci, ptr noundef %stream_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %stream_info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_streams = getelementptr inbounds %struct.xhci_stream_info, ptr %stream_info, i32 0, i32 1
  %0 = ptrtoint ptr %num_streams to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_streams, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp30 = icmp ugt i32 %1, 1
  br i1 %cmp30, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %cur_stream.031 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %2 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream_info, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %cur_stream.031
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xhci_ring_free(ptr noundef %xhci, ptr noundef nonnull %5)
  %6 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream_info, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 %cur_stream.031
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %cur_stream.031, 1
  %9 = ptrtoint ptr %num_streams to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_streams, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %free_streams_command = getelementptr inbounds %struct.xhci_stream_info, ptr %stream_info, i32 0, i32 6
  %11 = ptrtoint ptr %free_streams_command to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %free_streams_command, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %for.end.xhci_free_command.exit_crit_edge, label %if.end.i.i

for.end.xhci_free_command.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_free_command.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %device_pool.i.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %15 = ptrtoint ptr %device_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_pool.i.i, align 4
  %bytes.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bytes.i.i, align 4
  %dma.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %16, ptr noundef %18, i32 noundef %20) #13
  tail call void @kfree(ptr noundef nonnull %14) #13
  br label %xhci_free_command.exit

xhci_free_command.exit:                           ; preds = %if.end.i.i, %for.end.xhci_free_command.exit_crit_edge
  %completion.i = getelementptr inbounds %struct.xhci_command, ptr %12, i32 0, i32 3
  %21 = ptrtoint ptr %completion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %completion.i, align 4
  tail call void @kfree(ptr noundef %22) #13
  tail call void @kfree(ptr noundef %12) #13
  %cmd_ring_reserved_trbs = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 32
  %23 = ptrtoint ptr %cmd_ring_reserved_trbs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmd_ring_reserved_trbs, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %cmd_ring_reserved_trbs, align 4
  %stream_ctx_array = getelementptr inbounds %struct.xhci_stream_info, ptr %stream_info, i32 0, i32 2
  %25 = ptrtoint ptr %stream_ctx_array to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stream_ctx_array, align 4
  %tobool6.not = icmp eq ptr %26, null
  br i1 %tobool6.not, label %xhci_free_command.exit.if.end9_crit_edge, label %if.then7

xhci_free_command.exit.if.end9_crit_edge:         ; preds = %xhci_free_command.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %xhci_free_command.exit
  %num_stream_ctxs = getelementptr inbounds %struct.xhci_stream_info, ptr %stream_info, i32 0, i32 3
  %27 = ptrtoint ptr %num_stream_ctxs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_stream_ctxs, align 4
  %ctx_array_dma = getelementptr inbounds %struct.xhci_stream_info, ptr %stream_info, i32 0, i32 4
  %29 = ptrtoint ptr %ctx_array_dma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ctx_array_dma, align 4
  %mul.i = shl i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %mul.i)
  %cmp.i = icmp ugt i32 %mul.i, 1024
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xhci, align 8
  %sysdev.i = getelementptr inbounds %struct.usb_bus, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sysdev.i, align 4
  tail call void @dma_free_attrs(ptr noundef %34, i32 noundef %mul.i, ptr noundef nonnull %26, i32 noundef %30, i32 noundef 0) #13
  br label %if.end9

if.else.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %mul.i)
  %cmp1.i = icmp ult i32 %mul.i, 257
  br i1 %cmp1.i, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %small_streams_pool.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 46
  %35 = ptrtoint ptr %small_streams_pool.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %small_streams_pool.i, align 4
  tail call void @dma_pool_free(ptr noundef %36, ptr noundef nonnull %26, i32 noundef %30) #13
  br label %if.end9

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %medium_streams_pool.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 47
  %37 = ptrtoint ptr %medium_streams_pool.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %medium_streams_pool.i, align 8
  tail call void @dma_pool_free(ptr noundef %38, ptr noundef nonnull %26, i32 noundef %30) #13
  br label %if.end9

if.end9:                                          ; preds = %if.else3.i, %if.then2.i, %if.then.i, %xhci_free_command.exit.if.end9_crit_edge
  %39 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stream_info, align 4
  tail call void @kfree(ptr noundef %40) #13
  tail call void @kfree(ptr noundef nonnull %stream_info) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_alloc_tt_info(ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %virt_dev, ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %tt, i32 noundef %mem_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %multi = getelementptr inbounds %struct.usb_tt, ptr %tt, i32 0, i32 1
  %0 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.body.lr.ph_crit_edge, label %if.end

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph

if.end:                                           ; preds = %entry
  %maxchild = getelementptr inbounds %struct.usb_device, ptr %hdev, i32 0, i32 35
  %2 = ptrtoint ptr %maxchild to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxchild, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp47.not = icmp eq i32 %3, 0
  br i1 %cmp47.not, label %if.end.cleanup23_crit_edge, label %if.end.for.body.lr.ph_crit_edge

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph

if.end.cleanup23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup23

for.body.lr.ph:                                   ; preds = %if.end.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge
  %num_ports.052 = phi i32 [ %3, %if.end.for.body.lr.ph_crit_edge ], [ 1, %entry.for.body.lr.ph_crit_edge ]
  %or.i = or i32 %mem_flags, 256
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %and.i.i.i, 0
  %and2.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %and6.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  %rh_bw = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 43
  %real_port = getelementptr inbounds %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 6
  %udev = getelementptr inbounds %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 1
  %spec.select = select i1 %tobool3.not.i.i.i, i32 %..i.i.i, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %.pre, %if.end11.for.body_crit_edge ]
  br i1 %cmp.i1.i.i, label %for.body.kzalloc_node.exit_crit_edge, label %if.end.i2.i.i, !prof !271

for.body.kzalloc_node.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end.i2.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

kzalloc_node.exit:                                ; preds = %if.end.i2.i.i, %for.body.kzalloc_node.exit_crit_edge
  %retval.0.i3.i.i = phi i32 [ 0, %for.body.kzalloc_node.exit_crit_edge ], [ %spec.select, %if.end.i2.i.i ]
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i3.i.i, i32 9
  %4 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef %or.i, i32 noundef 420) #16
  %tobool3.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not, label %free_tts, label %if.end5

if.end5:                                          ; preds = %kzalloc_node.exit
  %6 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call.i.i.i, ptr %call.i.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i.i, ptr %prev.i, align 4
  %8 = ptrtoint ptr %rh_bw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rh_bw, align 8
  %10 = ptrtoint ptr %real_port to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %real_port, align 1
  %conv = zext i8 %11 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.xhci_root_port_bw_info, ptr %9, i32 %sub
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i, ptr noundef %arrayidx, ptr noundef %13) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add.exit_crit_edge

if.end5.list_add.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i.i, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %call.i.i.i, align 8
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %prev.i, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call.i.i.i, ptr %arrayidx, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end5.list_add.exit_crit_edge
  %18 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev, align 4
  %slot_id = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 43
  %20 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slot_id, align 8
  %slot_id7 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %slot_id7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %slot_id7, align 8
  %23 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool9.not = icmp eq i32 %24, 0
  %.pre = add nuw i32 %i.048, 1
  br i1 %tobool9.not, label %list_add.exit.if.end11_crit_edge, label %if.then10

list_add.exit.if.end11_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ttport = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %ttport to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.pre, ptr %ttport, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %list_add.exit.if.end11_crit_edge
  %endpoints = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %endpoints to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %endpoints, ptr %endpoints, align 8
  %prev.i44 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %endpoints, ptr %prev.i44, align 4
  %endpoints.1 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 1, i32 1
  %28 = ptrtoint ptr %endpoints.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %endpoints.1, ptr %endpoints.1, align 8
  %prev.i44.1 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 1, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i44.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %endpoints.1, ptr %prev.i44.1, align 4
  %endpoints.2 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 2, i32 1
  %30 = ptrtoint ptr %endpoints.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %endpoints.2, ptr %endpoints.2, align 8
  %prev.i44.2 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 2, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i44.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %endpoints.2, ptr %prev.i44.2, align 4
  %endpoints.3 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 3, i32 1
  %32 = ptrtoint ptr %endpoints.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %endpoints.3, ptr %endpoints.3, align 8
  %prev.i44.3 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 3, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i44.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %endpoints.3, ptr %prev.i44.3, align 4
  %endpoints.4 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 4, i32 1
  %34 = ptrtoint ptr %endpoints.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %endpoints.4, ptr %endpoints.4, align 8
  %prev.i44.4 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 4, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i44.4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %endpoints.4, ptr %prev.i44.4, align 4
  %endpoints.5 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 5, i32 1
  %36 = ptrtoint ptr %endpoints.5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %endpoints.5, ptr %endpoints.5, align 8
  %prev.i44.5 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 5, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i44.5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %endpoints.5, ptr %prev.i44.5, align 4
  %endpoints.6 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 6, i32 1
  %38 = ptrtoint ptr %endpoints.6 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %endpoints.6, ptr %endpoints.6, align 8
  %prev.i44.6 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 6, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i44.6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %endpoints.6, ptr %prev.i44.6, align 4
  %endpoints.7 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 7, i32 1
  %40 = ptrtoint ptr %endpoints.7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %endpoints.7, ptr %endpoints.7, align 8
  %prev.i44.7 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 7, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i44.7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %endpoints.7, ptr %prev.i44.7, align 4
  %endpoints.8 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 8, i32 1
  %42 = ptrtoint ptr %endpoints.8 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %endpoints.8, ptr %endpoints.8, align 8
  %prev.i44.8 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 8, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i44.8 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %endpoints.8, ptr %prev.i44.8, align 4
  %endpoints.9 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 9, i32 1
  %44 = ptrtoint ptr %endpoints.9 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %endpoints.9, ptr %endpoints.9, align 8
  %prev.i44.9 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 9, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i44.9 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %endpoints.9, ptr %prev.i44.9, align 4
  %endpoints.10 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 10, i32 1
  %46 = ptrtoint ptr %endpoints.10 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %endpoints.10, ptr %endpoints.10, align 8
  %prev.i44.10 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 10, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i44.10 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %endpoints.10, ptr %prev.i44.10, align 4
  %endpoints.11 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 11, i32 1
  %48 = ptrtoint ptr %endpoints.11 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %endpoints.11, ptr %endpoints.11, align 8
  %prev.i44.11 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 11, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i44.11 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %endpoints.11, ptr %prev.i44.11, align 4
  %endpoints.12 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 12, i32 1
  %50 = ptrtoint ptr %endpoints.12 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %endpoints.12, ptr %endpoints.12, align 8
  %prev.i44.12 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 12, i32 1, i32 1
  %51 = ptrtoint ptr %prev.i44.12 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %endpoints.12, ptr %prev.i44.12, align 4
  %endpoints.13 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 13, i32 1
  %52 = ptrtoint ptr %endpoints.13 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %endpoints.13, ptr %endpoints.13, align 8
  %prev.i44.13 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 13, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i44.13 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %endpoints.13, ptr %prev.i44.13, align 4
  %endpoints.14 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 14, i32 1
  %54 = ptrtoint ptr %endpoints.14 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %endpoints.14, ptr %endpoints.14, align 8
  %prev.i44.14 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 14, i32 1, i32 1
  %55 = ptrtoint ptr %prev.i44.14 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %endpoints.14, ptr %prev.i44.14, align 4
  %endpoints.15 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 15, i32 1
  %56 = ptrtoint ptr %endpoints.15 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %endpoints.15, ptr %endpoints.15, align 8
  %prev.i44.15 = getelementptr %struct.xhci_tt_bw_info, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 15, i32 1, i32 1
  %57 = ptrtoint ptr %prev.i44.15 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %endpoints.15, ptr %prev.i44.15, align 4
  %exitcond.not = icmp eq i32 %.pre, %num_ports.052
  br i1 %exitcond.not, label %if.end11.cleanup23_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end11.cleanup23_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup23

free_tts:                                         ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %udev, align 4
  %slot_id22 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 43
  %60 = ptrtoint ptr %slot_id22 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %slot_id22, align 8
  tail call fastcc void @xhci_free_tt_info(ptr noundef %xhci, ptr noundef %virt_dev, i32 noundef %61)
  br label %cleanup23

cleanup23:                                        ; preds = %free_tts, %if.end11.cleanup23_crit_edge, %if.end.cleanup23_crit_edge
  %retval.0 = phi i32 [ -12, %free_tts ], [ 0, %if.end.cleanup23_crit_edge ], [ 0, %if.end11.cleanup23_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_free_tt_info(ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %virt_dev, i32 noundef %slot_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %real_port = getelementptr inbounds %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 6
  %0 = ptrtoint ptr %real_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %real_port, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %hcs_params1 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 7
  %2 = ptrtoint ptr %hcs_params1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hcs_params1, align 4
  %shr = lshr i32 %3, 24
  %and = and i32 %shr, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp4 = icmp ult i32 %and, %conv
  br i1 %cmp4, label %lor.lhs.false.do.body_crit_edge, label %if.end10

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_free_tt_info.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_free_tt_info, %if.then8)) #13
          to label %cleanup [label %if.then8], !srcloc !272

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xhci, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_free_tt_info.__UNIQUE_ID_ddebug351, ptr noundef %7, ptr noundef nonnull @.str.65) #13
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %rh_bw = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 43
  %8 = ptrtoint ptr %rh_bw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rh_bw, align 8
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.xhci_root_port_bw_info, ptr %9, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %cmp20.not54 = icmp eq ptr %11, %arrayidx
  br i1 %cmp20.not54, label %if.end10.cleanup_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.backedge, %if.end10.for.body_crit_edge
  %tt_info.056 = phi ptr [ %next.058, %for.body.backedge ], [ %11, %if.end10.for.body_crit_edge ]
  %slot_found.0.off055 = phi i1 [ %cmp25, %for.body.backedge ], [ false, %if.end10.for.body_crit_edge ]
  %12 = ptrtoint ptr %tt_info.056 to i32
  call void @__asan_load4_noabort(i32 %12)
  %next.058 = load ptr, ptr %tt_info.056, align 4
  %slot_id24 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %tt_info.056, i32 0, i32 1
  %13 = ptrtoint ptr %slot_id24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slot_id24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %slot_id)
  %cmp25 = icmp eq i32 %14, %slot_id
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tt_info.056) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then27.list_del.exit_crit_edge

if.then27.list_del.exit_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tt_info.056, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %tt_info.056 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tt_info.056, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then27.list_del.exit_crit_edge
  %21 = ptrtoint ptr %tt_info.056 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %tt_info.056, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tt_info.056, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tt_info.056) #13
  %cmp20.not.old = icmp eq ptr %next.058, %arrayidx
  br i1 %cmp20.not.old, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body.backedge_crit_edge

list_del.exit.for.body.backedge_crit_edge:        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.backedge

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.backedge:                                ; preds = %if.else.for.body.backedge_crit_edge, %list_del.exit.for.body.backedge_crit_edge
  br label %for.body

if.else:                                          ; preds = %for.body
  %cmp20.not = icmp eq ptr %next.058, %arrayidx
  %or.cond = select i1 %slot_found.0.off055, i1 true, i1 %cmp20.not
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.else.for.body.backedge_crit_edge

if.else.for.body.backedge_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.backedge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %list_del.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then8, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_free_virt_device(ptr noundef %xhci, i32 noundef %slot_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot_id)
  %cmp = icmp eq i32 %slot_id, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 42, i32 %slot_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dcbaa = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 28
  %2 = ptrtoint ptr %dcbaa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcbaa, align 8
  %arrayidx3 = getelementptr [256 x i64], ptr %3, i32 0, i32 %slot_id
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %arrayidx3, align 8
  tail call fastcc void @trace_xhci_free_virt_device(ptr noundef nonnull %1)
  %tt_info = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %tt_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tt_info, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %active_eps = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %active_eps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active_eps, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %old_active_eps.0 = phi i32 [ %8, %if.then8 ], [ 0, %if.end.if.end10_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10
  %i.0109 = phi i32 [ 0, %if.end10 ], [ %inc, %for.inc.for.body_crit_edge ]
  %ring = getelementptr %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 %i.0109, i32 2
  %9 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %for.body.if.end18_crit_edge, label %if.then14

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xhci_ring_free(ptr noundef %xhci, ptr noundef nonnull %10)
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %for.body.if.end18_crit_edge
  %stream_info = getelementptr %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 %i.0109, i32 3
  %11 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stream_info, align 4
  %tobool21.not = icmp eq ptr %12, null
  br i1 %tobool21.not, label %if.end18.if.end26_crit_edge, label %if.then22

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xhci_free_stream_info(ptr noundef %xhci, ptr noundef nonnull %12)
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end18.if.end26_crit_edge
  %bw_endpoint_list = getelementptr %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 %i.0109, i32 13
  %13 = ptrtoint ptr %bw_endpoint_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %bw_endpoint_list, align 4
  %cmp.i.not = icmp eq ptr %14, %bw_endpoint_list
  br i1 %cmp.i.not, label %if.end26.for.inc_crit_edge, label %do.end

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xhci, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.8, i32 noundef %slot_id, i32 noundef %i.0109) #18
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end26.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call fastcc void @xhci_free_tt_info(ptr noundef %xhci, ptr noundef nonnull %1, i32 noundef %slot_id)
  tail call void @xhci_update_tt_active_eps(ptr noundef %xhci, ptr noundef nonnull %1, i32 noundef %old_active_eps.0) #13
  %in_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %in_ctx, align 4
  %tobool33.not = icmp eq ptr %20, null
  br i1 %tobool33.not, label %for.end.if.end36_crit_edge, label %xhci_free_container_ctx.exit

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

xhci_free_container_ctx.exit:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %device_pool.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %21 = ptrtoint ptr %device_pool.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_pool.i, align 4
  %bytes.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bytes.i, align 4
  %dma.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %20, i32 0, i32 3
  %25 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma.i, align 4
  tail call void @dma_pool_free(ptr noundef %22, ptr noundef %24, i32 noundef %26) #13
  tail call void @kfree(ptr noundef nonnull %20) #13
  br label %if.end36

if.end36:                                         ; preds = %xhci_free_container_ctx.exit, %for.end.if.end36_crit_edge
  %out_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %out_ctx, align 4
  %tobool37.not = icmp eq ptr %28, null
  br i1 %tobool37.not, label %if.end36.if.end40_crit_edge, label %xhci_free_container_ctx.exit108

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

xhci_free_container_ctx.exit108:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %device_pool.i104 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %29 = ptrtoint ptr %device_pool.i104 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_pool.i104, align 4
  %bytes.i105 = getelementptr inbounds %struct.xhci_container_ctx, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %bytes.i105 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bytes.i105, align 4
  %dma.i106 = getelementptr inbounds %struct.xhci_container_ctx, ptr %28, i32 0, i32 3
  %33 = ptrtoint ptr %dma.i106 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma.i106, align 4
  tail call void @dma_pool_free(ptr noundef %30, ptr noundef %32, i32 noundef %34) #13
  tail call void @kfree(ptr noundef nonnull %28) #13
  br label %if.end40

if.end40:                                         ; preds = %xhci_free_container_ctx.exit108, %if.end36.if.end40_crit_edge
  %udev = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %udev, align 4
  %tobool41.not = icmp eq ptr %36, null
  br i1 %tobool41.not, label %if.end40.if.end48_crit_edge, label %land.lhs.true

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end40
  %slot_id43 = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 43
  %37 = ptrtoint ptr %slot_id43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %slot_id43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool44.not = icmp eq i32 %38, 0
  br i1 %tobool44.not, label %land.lhs.true.if.end48_crit_edge, label %if.then45

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %slot_id43 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %slot_id43, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %land.lhs.true.if.end48_crit_edge, %if.end40.if.end48_crit_edge
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %41) #13
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_free_virt_device(ptr noundef %vdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_free_virt_device, i32 0, i32 1), ptr blockaddress(@trace_xhci_free_virt_device, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !272

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !271

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !289
  %call42 = tail call i32 @__traceiter_xhci_free_virt_device(ptr noundef null, ptr noundef %vdev) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !290
  %13 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !271

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !275
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_free_virt_device, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_free_virt_device, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xhci_free_virt_device.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xhci_free_virt_device.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 202, ptr noundef nonnull @.str.58) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !276
  %31 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_update_tt_active_eps(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_alloc_virt_device(ptr noundef %xhci, i32 noundef %slot_id, ptr noundef %udev, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot_id)
  %cmp = icmp eq i32 %slot_id, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 42, i32 %slot_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xhci, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %slot_id) #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !271

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 13
  %6 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef %or.i, i32 noundef 4256) #16
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end4

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %kzalloc.exit
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %slot_id, ptr %call7.i.i, align 8
  br i1 %cmp.i.i.i, label %if.end4.kzalloc_node.exit.i_crit_edge, label %if.end.i2.i.i.i, !prof !271

if.end4.kzalloc_node.exit.i_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit.i

if.end.i2.i.i.i:                                  ; preds = %if.end4
  %and2.i.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i2.i.i.i.kzalloc_node.exit.i_crit_edge

if.end.i2.i.i.i.kzalloc_node.exit.i_crit_edge:    ; preds = %if.end.i2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc_node.exit.i

kzalloc_node.exit.i:                              ; preds = %if.end5.i.i.i.i, %if.end.i2.i.i.i.kzalloc_node.exit.i_crit_edge, %if.end4.kzalloc_node.exit.i_crit_edge
  %retval.0.i3.i.i.i = phi i32 [ 0, %if.end4.kzalloc_node.exit.i_crit_edge ], [ 3, %if.end.i2.i.i.i.kzalloc_node.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %arrayidx3.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i3.i.i.i, i32 7
  %9 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3.i.i.i, align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef %or.i, i32 noundef 16) #16
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc_node.exit.i.xhci_alloc_container_ctx.exit.thread_crit_edge, label %if.end5.i

kzalloc_node.exit.i.xhci_alloc_container_ctx.exit.thread_crit_edge: ; preds = %kzalloc_node.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_alloc_container_ctx.exit.thread

if.end5.i:                                        ; preds = %kzalloc_node.exit.i
  %11 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call.i.i.i.i, align 8
  %hcc_params.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %12 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hcc_params.i, align 8
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool7.not.i, i32 1024, i32 2048
  %size.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %call.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i, ptr %size.i, align 4
  %device_pool.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %15 = ptrtoint ptr %device_pool.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_pool.i, align 4
  %dma.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %call.i.i.i.i, i32 0, i32 3
  %call.i.i = tail call ptr @dma_pool_alloc(ptr noundef %16, i32 noundef %or.i, ptr noundef %dma.i) #13
  %bytes.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %call.i.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %bytes.i, align 8
  %tobool18.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool18.not.i, label %if.then19.i, label %do.body11

if.then19.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call.i.i.i.i) #13
  br label %xhci_alloc_container_ctx.exit.thread

xhci_alloc_container_ctx.exit.thread:             ; preds = %if.then19.i, %kzalloc_node.exit.i.xhci_alloc_container_ctx.exit.thread_crit_edge
  %out_ctx222 = getelementptr inbounds %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %out_ctx222 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %out_ctx222, align 8
  br label %fail

do.body11:                                        ; preds = %if.end5.i
  %out_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %out_ctx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i.i.i, ptr %out_ctx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_alloc_virt_device.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_alloc_virt_device, %if.then16)) #13
          to label %do.end23 [label %if.then16], !srcloc !272

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xhci, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %24 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out_ctx, align 8
  %dma = getelementptr inbounds %struct.xhci_container_ctx, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma, align 4
  %conv = zext i32 %27 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_alloc_virt_device.__UNIQUE_ID_ddebug353, ptr noundef %23, ptr noundef nonnull @.str.14, i32 noundef %slot_id, i64 noundef %conv) #13
  br label %do.end23

do.end23:                                         ; preds = %if.then16, %do.body11
  br i1 %cmp.i.i.i, label %do.end23.kzalloc_node.exit.i194_crit_edge, label %if.end.i2.i.i.i185, !prof !271

do.end23.kzalloc_node.exit.i194_crit_edge:        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit.i194

if.end.i2.i.i.i185:                               ; preds = %do.end23
  %and2.i.i.i.i183 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i183)
  %tobool3.not.i.i.i.i184 = icmp eq i32 %and2.i.i.i.i183, 0
  br i1 %tobool3.not.i.i.i.i184, label %if.end5.i.i.i.i189, label %if.end.i2.i.i.i185.kzalloc_node.exit.i194_crit_edge

if.end.i2.i.i.i185.kzalloc_node.exit.i194_crit_edge: ; preds = %if.end.i2.i.i.i185
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit.i194

if.end5.i.i.i.i189:                               ; preds = %if.end.i2.i.i.i185
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i.i186 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i186)
  %tobool7.not.i.i.i.i187 = icmp eq i32 %and6.i.i.i.i186, 0
  %..i.i.i.i188 = select i1 %tobool7.not.i.i.i.i187, i32 1, i32 2
  br label %kzalloc_node.exit.i194

kzalloc_node.exit.i194:                           ; preds = %if.end5.i.i.i.i189, %if.end.i2.i.i.i185.kzalloc_node.exit.i194_crit_edge, %do.end23.kzalloc_node.exit.i194_crit_edge
  %retval.0.i3.i.i.i190 = phi i32 [ 0, %do.end23.kzalloc_node.exit.i194_crit_edge ], [ 3, %if.end.i2.i.i.i185.kzalloc_node.exit.i194_crit_edge ], [ %..i.i.i.i188, %if.end5.i.i.i.i189 ]
  %arrayidx3.i.i.i191 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i3.i.i.i190, i32 7
  %28 = ptrtoint ptr %arrayidx3.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx3.i.i.i191, align 4
  %call.i.i.i.i192 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef %or.i, i32 noundef 16) #16
  %tobool.not.i193 = icmp eq ptr %call.i.i.i.i192, null
  br i1 %tobool.not.i193, label %kzalloc_node.exit.i194.xhci_alloc_container_ctx.exit209.thread_crit_edge, label %if.end5.i206

kzalloc_node.exit.i194.xhci_alloc_container_ctx.exit209.thread_crit_edge: ; preds = %kzalloc_node.exit.i194
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_alloc_container_ctx.exit209.thread

if.end5.i206:                                     ; preds = %kzalloc_node.exit.i194
  %30 = ptrtoint ptr %call.i.i.i.i192 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %call.i.i.i.i192, align 8
  %31 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hcc_params.i, align 8
  %and.i196 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i196)
  %tobool7.not.i197 = icmp eq i32 %and.i196, 0
  %size.i199 = getelementptr inbounds %struct.xhci_container_ctx, ptr %call.i.i.i.i192, i32 0, i32 1
  %add.i200 = select i1 %tobool7.not.i197, i32 1056, i32 2112
  %33 = ptrtoint ptr %size.i199 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i200, ptr %size.i199, align 4
  %34 = ptrtoint ptr %device_pool.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_pool.i, align 4
  %dma.i202 = getelementptr inbounds %struct.xhci_container_ctx, ptr %call.i.i.i.i192, i32 0, i32 3
  %call.i.i203 = tail call ptr @dma_pool_alloc(ptr noundef %35, i32 noundef %or.i, ptr noundef %dma.i202) #13
  %bytes.i204 = getelementptr inbounds %struct.xhci_container_ctx, ptr %call.i.i.i.i192, i32 0, i32 2
  %36 = ptrtoint ptr %bytes.i204 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i203, ptr %bytes.i204, align 8
  %tobool18.not.i205 = icmp eq ptr %call.i.i203, null
  br i1 %tobool18.not.i205, label %if.then19.i207, label %do.body29

if.then19.i207:                                   ; preds = %if.end5.i206
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call.i.i.i.i192) #13
  br label %xhci_alloc_container_ctx.exit209.thread

xhci_alloc_container_ctx.exit209.thread:          ; preds = %if.then19.i207, %kzalloc_node.exit.i194.xhci_alloc_container_ctx.exit209.thread_crit_edge
  %in_ctx228 = getelementptr inbounds %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %in_ctx228 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %in_ctx228, align 4
  br label %fail

do.body29:                                        ; preds = %if.end5.i206
  %in_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %in_ctx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i.i.i192, ptr %in_ctx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_alloc_virt_device.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_alloc_virt_device, %if.then41)) #13
          to label %for.body [label %if.then41], !srcloc !272

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xhci, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %43 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %in_ctx, align 4
  %dma46 = getelementptr inbounds %struct.xhci_container_ctx, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %dma46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma46, align 4
  %conv47 = zext i32 %46 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_alloc_virt_device.__UNIQUE_ID_ddebug354, ptr noundef %42, ptr noundef nonnull @.str.15, i32 noundef %slot_id, i64 noundef %conv47) #13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then41, %do.body29
  %i.0232 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body29 ], [ 0, %if.then41 ]
  %arrayidx53 = getelementptr %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 4, i32 %i.0232
  %ep_index = getelementptr %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 4, i32 %i.0232, i32 1
  %47 = ptrtoint ptr %ep_index to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %i.0232, ptr %ep_index, align 4
  %48 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %arrayidx53, align 8
  %stop_cmd_timer.i = getelementptr %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 4, i32 %i.0232, i32 7
  tail call void @init_timer_key(ptr noundef %stop_cmd_timer.i, ptr noundef nonnull @xhci_stop_endpoint_command_watchdog, i32 noundef 0, ptr noundef nonnull @.str.66, ptr noundef nonnull @xhci_init_endpoint_timer.__key) #13
  %xhci1.i = getelementptr %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 4, i32 %i.0232, i32 8
  %49 = ptrtoint ptr %xhci1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %xhci, ptr %xhci1.i, align 8
  %cancelled_td_list = getelementptr %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 4, i32 %i.0232, i32 6
  %50 = ptrtoint ptr %cancelled_td_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %cancelled_td_list, ptr %cancelled_td_list, align 8
  %prev.i = getelementptr %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 4, i32 %i.0232, i32 6, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %cancelled_td_list, ptr %prev.i, align 4
  %bw_endpoint_list = getelementptr %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 4, i32 %i.0232, i32 13
  %52 = ptrtoint ptr %bw_endpoint_list to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %bw_endpoint_list, ptr %bw_endpoint_list, align 8
  %prev.i210 = getelementptr %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 4, i32 %i.0232, i32 13, i32 1
  %53 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %bw_endpoint_list, ptr %prev.i210, align 4
  %inc = add nuw nsw i32 %i.0232, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %call62 = tail call ptr @xhci_ring_alloc(ptr noundef %xhci, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %flags)
  %ring = getelementptr inbounds %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %54 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call62, ptr %ring, align 8
  %tobool68.not = icmp eq ptr %call62, null
  br i1 %tobool68.not, label %for.end.fail_crit_edge, label %if.end70

for.end.fail_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end70:                                         ; preds = %for.end
  %udev71 = getelementptr inbounds %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %udev71 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %udev, ptr %udev71, align 4
  %56 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %out_ctx, align 8
  %dma73 = getelementptr inbounds %struct.xhci_container_ctx, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %dma73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma73, align 4
  %conv74 = zext i32 %59 to i64
  %60 = tail call i64 @llvm.bswap.i64(i64 %conv74)
  %dcbaa = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 28
  %61 = ptrtoint ptr %dcbaa to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dcbaa, align 8
  %arrayidx75 = getelementptr [256 x i64], ptr %62, i32 0, i32 %slot_id
  %63 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %60, ptr %arrayidx75, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_alloc_virt_device.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_alloc_virt_device, %if.then88)) #13
          to label %do.end100 [label %if.then88], !srcloc !272

if.then88:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %xhci, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %68 = ptrtoint ptr %dcbaa to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dcbaa, align 8
  %arrayidx94 = getelementptr [256 x i64], ptr %69, i32 0, i32 %slot_id
  %70 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx94, align 8
  %72 = tail call i64 @llvm.bswap.i64(i64 %71)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_alloc_virt_device.__UNIQUE_ID_ddebug355, ptr noundef %67, ptr noundef nonnull @.str.16, i32 noundef %slot_id, ptr noundef %arrayidx94, i64 noundef %72) #13
  br label %do.end100

do.end100:                                        ; preds = %if.then88, %if.end70
  tail call fastcc void @trace_xhci_alloc_virt_device(ptr noundef nonnull %call7.i.i)
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  br label %cleanup

fail:                                             ; preds = %for.end.fail_crit_edge, %xhci_alloc_container_ctx.exit209.thread, %xhci_alloc_container_ctx.exit.thread
  %out_ctx225 = phi ptr [ %out_ctx222, %xhci_alloc_container_ctx.exit.thread ], [ %out_ctx, %for.end.fail_crit_edge ], [ %out_ctx, %xhci_alloc_container_ctx.exit209.thread ]
  %in_ctx103 = getelementptr inbounds %struct.xhci_virt_device, ptr %call7.i.i, i32 0, i32 3
  %74 = ptrtoint ptr %in_ctx103 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %in_ctx103, align 4
  %tobool104.not = icmp eq ptr %75, null
  br i1 %tobool104.not, label %fail.if.end107_crit_edge, label %xhci_free_container_ctx.exit

fail.if.end107_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

xhci_free_container_ctx.exit:                     ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #15
  %device_pool.i212 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %76 = ptrtoint ptr %device_pool.i212 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device_pool.i212, align 4
  %bytes.i213 = getelementptr inbounds %struct.xhci_container_ctx, ptr %75, i32 0, i32 2
  %78 = ptrtoint ptr %bytes.i213 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bytes.i213, align 4
  %dma.i214 = getelementptr inbounds %struct.xhci_container_ctx, ptr %75, i32 0, i32 3
  %80 = ptrtoint ptr %dma.i214 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma.i214, align 4
  tail call void @dma_pool_free(ptr noundef %77, ptr noundef %79, i32 noundef %81) #13
  tail call void @kfree(ptr noundef nonnull %75) #13
  br label %if.end107

if.end107:                                        ; preds = %xhci_free_container_ctx.exit, %fail.if.end107_crit_edge
  %82 = ptrtoint ptr %out_ctx225 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %out_ctx225, align 4
  %tobool109.not = icmp eq ptr %83, null
  br i1 %tobool109.not, label %if.end107.if.end112_crit_edge, label %xhci_free_container_ctx.exit220

if.end107.if.end112_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

xhci_free_container_ctx.exit220:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  %device_pool.i216 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %84 = ptrtoint ptr %device_pool.i216 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device_pool.i216, align 4
  %bytes.i217 = getelementptr inbounds %struct.xhci_container_ctx, ptr %83, i32 0, i32 2
  %86 = ptrtoint ptr %bytes.i217 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bytes.i217, align 4
  %dma.i218 = getelementptr inbounds %struct.xhci_container_ctx, ptr %83, i32 0, i32 3
  %88 = ptrtoint ptr %dma.i218 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma.i218, align 4
  tail call void @dma_pool_free(ptr noundef %85, ptr noundef %87, i32 noundef %89) #13
  tail call void @kfree(ptr noundef nonnull %83) #13
  br label %if.end112

if.end112:                                        ; preds = %xhci_free_container_ctx.exit220, %if.end107.if.end112_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %do.end100, %kzalloc.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %do.end100 ], [ 0, %if.end112 ], [ 0, %kzalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_alloc_virt_device(ptr noundef %vdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_alloc_virt_device, i32 0, i32 1), ptr blockaddress(@trace_xhci_alloc_virt_device, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !272

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !271

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !291
  %call42 = tail call i32 @__traceiter_xhci_alloc_virt_device(ptr noundef null, ptr noundef %vdev) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !292
  %13 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !271

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !275
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_alloc_virt_device, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_alloc_virt_device, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xhci_alloc_virt_device.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xhci_alloc_virt_device.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 239, ptr noundef nonnull @.str.58) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !276
  %31 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
define dso_local void @xhci_copy_ep0_dequeue_into_input_ctx(ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %udev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_id = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 43
  %0 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_id, align 8
  %arrayidx = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 42, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %in_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_ctx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  %spec.select.v.i = select i1 %cmp.i, i32 2, i32 1
  %bytes.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bytes.i, align 4
  %hcc_params.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %10 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hcc_params.i, align 8
  %and.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 32, i32 64
  %mul.i = mul nuw nsw i32 %cond.i, %spec.select.v.i
  %add.ptr.i = getelementptr i8, ptr %9, i32 %mul.i
  %ring = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 4, i32 0, i32 2
  %12 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring, align 4
  %enq_seg = getelementptr inbounds %struct.xhci_ring, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %enq_seg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enq_seg, align 4
  %enqueue = getelementptr inbounds %struct.xhci_ring, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enqueue, align 4
  %call2 = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %15, ptr noundef %17) #13
  %cycle_state = getelementptr inbounds %struct.xhci_ring, ptr %13, i32 0, i32 7
  %18 = ptrtoint ptr %cycle_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cycle_state, align 4
  %or = or i32 %19, %call2
  %conv = zext i32 %or to i64
  %20 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %deq = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i, i32 0, i32 2
  %21 = ptrtoint ptr %deq to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %deq, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_setup_addressable_virt_dev(ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %udev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_id = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 43
  %0 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_id, align 8
  %arrayidx = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 42, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %tobool.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xhci, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.17, i32 noundef %1) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in_ctx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  %spec.select.v.i = select i1 %cmp.i, i32 2, i32 1
  %bytes.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bytes.i, align 4
  %hcc_params.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %14 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hcc_params.i, align 8
  %and.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 32, i32 64
  %mul.i = mul nuw nsw i32 %cond.i, %spec.select.v.i
  %add.ptr.i = getelementptr i8, ptr %13, i32 %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i304 = icmp eq i32 %11, 1
  %spec.select.idx = select i1 %cmp.i304, i32 0, i32 %cond.i
  %spec.select = getelementptr i8, ptr %13, i32 %spec.select.idx
  %route = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 2
  %16 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %route, align 4
  %or = or i32 %17, 134217728
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %spec.select, align 4
  %or6 = or i32 %18, %20
  store i32 %or6, ptr %spec.select, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 4
  %21 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.end.cleanup_crit_edge [
    i32 6, label %if.end.sw.epilog_crit_edge
    i32 5, label %sw.bb9
    i32 3, label %sw.bb12
    i32 2, label %sw.bb15
    i32 1, label %sw.bb18
    i32 4, label %do.body22
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_setup_addressable_virt_dev, %if.then27)) #13
          to label %cleanup [label %if.then27], !srcloc !272

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xhci, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug356, ptr noundef %27, ptr noundef nonnull @.str.19) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 8192, %sw.bb18 ], [ 4096, %sw.bb15 ], [ 12288, %sw.bb12 ], [ 16384, %sw.bb9 ], [ 20480, %if.end.sw.epilog_crit_edge ]
  %max_packets.0 = phi i32 [ 524326, %sw.bb18 ], [ 4194342, %sw.bb15 ], [ 4194342, %sw.bb12 ], [ 33554470, %sw.bb9 ], [ 33554470, %if.end.sw.epilog_crit_edge ]
  %or20 = or i32 %or6, %.sink
  %28 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or20, ptr %spec.select, align 4
  %29 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp.i312 = icmp ugt i32 %30, 4
  %shared_hcd.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 1
  %hcd.0.in.i = select i1 %cmp.i312, ptr %shared_hcd.i, ptr %xhci
  %31 = ptrtoint ptr %hcd.0.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %hcd.0.i = load ptr, ptr %hcd.0.in.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %sw.epilog
  %top_dev.0.i = phi ptr [ %udev, %sw.epilog ], [ %33, %land.rhs.i.for.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.usb_device, ptr %top_dev.0.i, i32 0, i32 11
  %32 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i, align 4
  %tobool.not.i313 = icmp eq ptr %33, null
  br i1 %tobool.not.i313, label %for.cond.i.xhci_find_real_port_number.exit_crit_edge, label %land.rhs.i

for.cond.i.xhci_find_real_port_number.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_find_real_port_number.exit

land.rhs.i:                                       ; preds = %for.cond.i
  %parent2.i = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent2.i, align 4
  %tobool3.not.i = icmp eq ptr %35, null
  br i1 %tobool3.not.i, label %land.rhs.i.xhci_find_real_port_number.exit_crit_edge, label %land.rhs.i.for.cond.i_crit_edge

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

land.rhs.i.xhci_find_real_port_number.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_find_real_port_number.exit

xhci_find_real_port_number.exit:                  ; preds = %land.rhs.i.xhci_find_real_port_number.exit_crit_edge, %for.cond.i.xhci_find_real_port_number.exit_crit_edge
  %portnum.i = getelementptr inbounds %struct.usb_device, ptr %top_dev.0.i, i32 0, i32 25
  %36 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %portnum.i, align 2
  %conv.i = zext i8 %37 to i32
  %call.i = tail call i32 @xhci_find_raw_port_number(ptr noundef %hcd.0.i, i32 noundef %conv.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %xhci_find_real_port_number.exit.cleanup_crit_edge, label %if.end37

xhci_find_real_port_number.exit.cleanup_crit_edge: ; preds = %xhci_find_real_port_number.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37:                                         ; preds = %xhci_find_real_port_number.exit
  %38 = shl i32 %call.i, 8
  %39 = and i32 %38, 65280
  %dev_info2 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %spec.select, i32 0, i32 1
  %40 = ptrtoint ptr %dev_info2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dev_info2, align 4
  %or38 = or i32 %41, %39
  store i32 %or38, ptr %dev_info2, align 4
  br label %for.cond

for.cond:                                         ; preds = %land.rhs.for.cond_crit_edge, %if.end37
  %top_dev.0 = phi ptr [ %udev, %if.end37 ], [ %43, %land.rhs.for.cond_crit_edge ]
  %parent = getelementptr inbounds %struct.usb_device, ptr %top_dev.0, i32 0, i32 11
  %42 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent, align 4
  %tobool39.not = icmp eq ptr %43, null
  br i1 %tobool39.not, label %for.cond.for.end_crit_edge, label %land.rhs

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.rhs:                                         ; preds = %for.cond
  %parent41 = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %parent41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent41, align 4
  %tobool42.not = icmp eq ptr %45, null
  br i1 %tobool42.not, label %land.rhs.for.end_crit_edge, label %land.rhs.for.cond_crit_edge

land.rhs.for.cond_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %for.cond.for.end_crit_edge
  %portnum = getelementptr inbounds %struct.usb_device, ptr %top_dev.0, i32 0, i32 25
  %46 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %portnum, align 2
  %fake_port = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 5
  %48 = ptrtoint ptr %fake_port to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %fake_port, align 4
  %conv = trunc i32 %call.i to i8
  %real_port = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 6
  %49 = ptrtoint ptr %real_port to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv, ptr %real_port, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_setup_addressable_virt_dev, %if.then56)) #13
          to label %do.body63 [label %if.then56], !srcloc !272

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xhci, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug357, ptr noundef %53, ptr noundef nonnull @.str.20, i32 noundef %call.i) #13
  br label %do.body63

do.body63:                                        ; preds = %if.then56, %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_setup_addressable_virt_dev, %if.then75)) #13
          to label %do.end83 [label %if.then75], !srcloc !272

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xhci, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %58 = ptrtoint ptr %fake_port to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %fake_port, align 4
  %conv80 = zext i8 %59 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug358, ptr noundef %57, ptr noundef nonnull @.str.21, i32 noundef %conv80) #13
  br label %do.end83

do.end83:                                         ; preds = %if.then75, %do.body63
  %tt = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 8
  %60 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tt, align 4
  %tobool84.not = icmp eq ptr %61, null
  br i1 %tobool84.not, label %do.end83.if.then89_crit_edge, label %lor.lhs.false85

do.end83.if.then89_crit_edge:                     ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then89

lor.lhs.false85:                                  ; preds = %do.end83
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %parent87 = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %parent87 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %parent87, align 4
  %tobool88.not = icmp eq ptr %65, null
  br i1 %tobool88.not, label %lor.lhs.false85.if.then89_crit_edge, label %if.else

lor.lhs.false85.if.then89_crit_edge:              ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then89

if.then89:                                        ; preds = %lor.lhs.false85.if.then89_crit_edge, %do.end83.if.then89_crit_edge
  %rh_bw = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 43
  %66 = ptrtoint ptr %rh_bw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rh_bw, align 8
  %sub = add i32 %call.i, -1
  %bw_table = getelementptr %struct.xhci_root_port_bw_info, ptr %67, i32 %sub, i32 2
  %bw_table91 = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 7
  %68 = ptrtoint ptr %bw_table91 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %bw_table, ptr %bw_table91, align 4
  br label %if.end144

if.else:                                          ; preds = %lor.lhs.false85
  %rh_bw93 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 43
  %69 = ptrtoint ptr %rh_bw93 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rh_bw93, align 8
  %sub94 = add i32 %call.i, -1
  %arrayidx95 = getelementptr %struct.xhci_root_port_bw_info, ptr %70, i32 %sub94
  %71 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %71)
  %tt_bw.0320 = load ptr, ptr %arrayidx95, align 4
  %cmp99.not321 = icmp eq ptr %tt_bw.0320, %arrayidx95
  br i1 %cmp99.not321, label %if.else.for.end133_crit_edge, label %for.body103.lr.ph

if.else.for.end133_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end133

for.body103.lr.ph:                                ; preds = %if.else
  %slot_id107 = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 43
  %72 = ptrtoint ptr %slot_id107 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %slot_id107, align 8
  %udev112 = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 1
  %multi117 = getelementptr inbounds %struct.usb_tt, ptr %61, i32 0, i32 1
  br label %for.body103

for.body103:                                      ; preds = %for.inc127.for.body103_crit_edge, %for.body103.lr.ph
  %tt_bw.0322 = phi ptr [ %tt_bw.0320, %for.body103.lr.ph ], [ %tt_bw.0, %for.inc127.for.body103_crit_edge ]
  %slot_id104 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %tt_bw.0322, i32 0, i32 1
  %74 = ptrtoint ptr %slot_id104 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %slot_id104, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %73)
  %cmp108.not = icmp eq i32 %75, %73
  br i1 %cmp108.not, label %if.end111, label %for.body103.for.inc127_crit_edge

for.body103.for.inc127_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc127

if.end111:                                        ; preds = %for.body103
  %76 = ptrtoint ptr %udev112 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %udev112, align 4
  %tt113 = getelementptr inbounds %struct.usb_device, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %tt113 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tt113, align 4
  %multi = getelementptr inbounds %struct.usb_tt, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool114.not = icmp eq i32 %81, 0
  br i1 %tobool114.not, label %if.end111.if.then123_crit_edge, label %lor.lhs.false115

if.end111.if.then123_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then123

lor.lhs.false115:                                 ; preds = %if.end111
  %82 = ptrtoint ptr %multi117 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %multi117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool118.not = icmp eq i32 %83, 0
  br i1 %tobool118.not, label %lor.lhs.false115.for.inc127_crit_edge, label %land.lhs.true

lor.lhs.false115.for.inc127_crit_edge:            ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc127

land.lhs.true:                                    ; preds = %lor.lhs.false115
  %ttport = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %tt_bw.0322, i32 0, i32 2
  %84 = ptrtoint ptr %ttport to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ttport, align 4
  %ttport120 = getelementptr inbounds %struct.usb_device, ptr %77, i32 0, i32 9
  %86 = ptrtoint ptr %ttport120 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ttport120, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp121 = icmp eq i32 %85, %87
  br i1 %cmp121, label %land.lhs.true.if.then123_crit_edge, label %land.lhs.true.for.inc127_crit_edge

land.lhs.true.for.inc127_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc127

land.lhs.true.if.then123_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then123

if.then123:                                       ; preds = %land.lhs.true.if.then123_crit_edge, %if.end111.if.then123_crit_edge
  %bw_table124 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %tt_bw.0322, i32 0, i32 3
  %bw_table125 = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 7
  %88 = ptrtoint ptr %bw_table125 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %bw_table124, ptr %bw_table125, align 4
  %tt_info = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 8
  %89 = ptrtoint ptr %tt_info to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %tt_bw.0322, ptr %tt_info, align 4
  br label %for.end133

for.inc127:                                       ; preds = %land.lhs.true.for.inc127_crit_edge, %lor.lhs.false115.for.inc127_crit_edge, %for.body103.for.inc127_crit_edge
  %90 = ptrtoint ptr %tt_bw.0322 to i32
  call void @__asan_load4_noabort(i32 %90)
  %tt_bw.0 = load ptr, ptr %tt_bw.0322, align 4
  %cmp99.not = icmp eq ptr %tt_bw.0, %arrayidx95
  br i1 %cmp99.not, label %for.inc127.for.end133_crit_edge, label %for.inc127.for.body103_crit_edge

for.inc127.for.body103_crit_edge:                 ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body103

for.inc127.for.end133_crit_edge:                  ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end133

for.end133:                                       ; preds = %for.inc127.for.end133_crit_edge, %if.then123, %if.else.for.end133_crit_edge
  %tt_info134 = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 8
  %91 = ptrtoint ptr %tt_info134 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tt_info134, align 4
  %tobool135.not = icmp eq ptr %92, null
  br i1 %tobool135.not, label %do.end139, label %for.end133.if.end144_crit_edge

for.end133.if.end144_crit_edge:                   ; preds = %for.end133
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144

do.end139:                                        ; preds = %for.end133
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %xhci, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %96, ptr noundef nonnull @.str.23) #18
  br label %if.end144

if.end144:                                        ; preds = %do.end139, %for.end133.if.end144_crit_edge, %if.then89
  %97 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tt, align 4
  %tobool146.not = icmp eq ptr %98, null
  br i1 %tobool146.not, label %if.end144.do.body168_crit_edge, label %land.lhs.true147

if.end144.do.body168_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body168

land.lhs.true147:                                 ; preds = %if.end144
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %parent150 = getelementptr inbounds %struct.usb_device, ptr %100, i32 0, i32 11
  %101 = ptrtoint ptr %parent150 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %parent150, align 4
  %tobool151.not = icmp eq ptr %102, null
  br i1 %tobool151.not, label %land.lhs.true147.do.body168_crit_edge, label %if.then152

land.lhs.true147.do.body168_crit_edge:            ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body168

if.then152:                                       ; preds = %land.lhs.true147
  %slot_id155 = getelementptr inbounds %struct.usb_device, ptr %100, i32 0, i32 43
  %103 = ptrtoint ptr %slot_id155 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %slot_id155, align 8
  %ttport156 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 9
  %105 = ptrtoint ptr %ttport156 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ttport156, align 8
  %shl157 = shl i32 %106, 8
  %or158 = or i32 %shl157, %104
  %107 = tail call i32 @llvm.bswap.i32(i32 %or158)
  %tt_info159 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %spec.select, i32 0, i32 2
  %108 = ptrtoint ptr %tt_info159 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %tt_info159, align 4
  %109 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tt, align 4
  %multi161 = getelementptr inbounds %struct.usb_tt, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %multi161 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %multi161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool162.not = icmp eq i32 %112, 0
  br i1 %tobool162.not, label %if.then152.do.body168_crit_edge, label %if.then163

if.then152.do.body168_crit_edge:                  ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body168

if.then163:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %spec.select, align 4
  %or165 = or i32 %114, 2
  store i32 %or165, ptr %spec.select, align 4
  br label %do.body168

do.body168:                                       ; preds = %if.then163, %if.then152.do.body168_crit_edge, %land.lhs.true147.do.body168_crit_edge, %if.end144.do.body168_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_setup_addressable_virt_dev, %if.then180)) #13
          to label %do.body188 [label %if.then180], !srcloc !272

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #15
  %115 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %xhci, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 8
  %119 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug359, ptr noundef %118, ptr noundef nonnull @.str.25, ptr noundef %120) #13
  br label %do.body188

do.body188:                                       ; preds = %if.then180, %do.body168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_setup_addressable_virt_dev, %if.then200)) #13
          to label %do.end207 [label %if.then200], !srcloc !272

if.then200:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #15
  %121 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %xhci, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %ttport204 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 9
  %125 = ptrtoint ptr %ttport204 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ttport204, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug360, ptr noundef %124, ptr noundef nonnull @.str.26, i32 noundef %126) #13
  br label %do.end207

do.end207:                                        ; preds = %if.then200, %do.body188
  %ep_info2 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i, i32 0, i32 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %max_packets.0)
  %128 = ptrtoint ptr %ep_info2 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %ep_info2, align 4
  %ring = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 4, i32 0, i32 2
  %129 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ring, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %dma = getelementptr inbounds %struct.xhci_segment, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dma, align 4
  %cycle_state = getelementptr inbounds %struct.xhci_ring, ptr %130, i32 0, i32 7
  %135 = ptrtoint ptr %cycle_state to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cycle_state, align 4
  %or215 = or i32 %136, %134
  %conv216 = zext i32 %or215 to i64
  %137 = tail call i64 @llvm.bswap.i64(i64 %conv216)
  %deq = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i, i32 0, i32 2
  %138 = ptrtoint ptr %deq to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %deq, align 8
  tail call fastcc void @trace_xhci_setup_addressable_virt_device(ptr noundef nonnull %3)
  br label %cleanup

cleanup:                                          ; preds = %do.end207, %xhci_find_real_port_number.exit.cleanup_crit_edge, %if.then27, %do.body22, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end207 ], [ -22, %if.then27 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %xhci_find_real_port_number.exit.cleanup_crit_edge ], [ -22, %do.body22 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_setup_addressable_virt_device(ptr noundef %vdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_setup_addressable_virt_device, i32 0, i32 1), ptr blockaddress(@trace_xhci_setup_addressable_virt_device, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !272

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !271

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !293
  %call42 = tail call i32 @__traceiter_xhci_setup_addressable_virt_device(ptr noundef null, ptr noundef %vdev) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !294
  %13 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !271

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !275
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_setup_addressable_virt_device, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_setup_addressable_virt_device, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xhci_setup_addressable_virt_device.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xhci_setup_addressable_virt_device.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 249, ptr noundef nonnull @.str.58) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !276
  %31 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
define dso_local i32 @xhci_endpoint_init(ptr nocapture noundef readonly %xhci, ptr nocapture noundef %virt_dev, ptr noundef %udev, ptr noundef %ep, i32 noundef %mem_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xhci_get_endpoint_index(ptr noundef %ep) #13
  %in_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 3
  %0 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  %spec.select.v.i = select i1 %cmp.i, i32 2, i32 1
  %spec.select.i = add i32 %spec.select.v.i, %call
  %bytes.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bytes.i, align 4
  %hcc_params.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %6 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hcc_params.i, align 8
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 32, i32 64
  %mul.i = mul i32 %cond.i, %spec.select.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress.i.i, align 1
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 3
  %10 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmAttributes.i.i, align 1
  %12 = and i8 %11, 3
  %and.i.i = zext i8 %12 to i32
  %13 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %and.i.i, label %entry.unreachabledefault.i [
    i32 0, label %entry.if.end_crit_edge
    i32 2, label %sw.bb3.i
    i32 1, label %sw.bb4.i
    i32 3, label %sw.bb7.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool.not.i185 = icmp sgt i8 %9, -1
  %cond.i186 = select i1 %tobool.not.i185, i32 16, i32 48
  br label %if.end

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool5.not.i = icmp sgt i8 %9, -1
  %cond6.i = select i1 %tobool5.not.i, i32 8, i32 40
  br label %if.end

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool8.not.i = icmp sgt i8 %9, -1
  %cond9.i = select i1 %tobool8.not.i, i32 24, i32 56
  br label %if.end

entry.unreachabledefault.i:                       ; preds = %entry
  unreachable

if.end:                                           ; preds = %sw.bb7.i, %sw.bb4.i, %sw.bb3.i, %entry.if.end_crit_edge
  %retval.0.i = phi i32 [ %cond9.i, %sw.bb7.i ], [ %cond6.i, %sw.bb4.i ], [ %cond.i186, %sw.bb3.i ], [ 32, %entry.if.end_crit_edge ]
  %trunc.i = trunc i8 %11 to i2
  %14 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.116)
  switch i2 %trunc.i, label %if.end.i [
    i2 0, label %if.end.xhci_get_max_esit_payload.exit_crit_edge
    i2 -2, label %if.end.xhci_get_max_esit_payload.exit_crit_edge235
  ]

if.end.xhci_get_max_esit_payload.exit_crit_edge235: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_get_max_esit_payload.exit

if.end.xhci_get_max_esit_payload.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_get_max_esit_payload.exit

if.end.i:                                         ; preds = %if.end
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 4
  %15 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp.i189 = icmp ugt i32 %16, 5
  br i1 %cmp.i189, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %bmAttributes.i190 = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %bmAttributes.i190 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bmAttributes.i190, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool4.not.i = icmp sgt i8 %18, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then9.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.then9.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %dwBytesPerInterval.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %dwBytesPerInterval.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %dwBytesPerInterval.i, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #13
  br label %xhci_get_max_esit_payload.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp7.i = icmp eq i32 %16, 5
  br i1 %cmp7.i, label %if.else.i.if.then9.i_crit_edge, label %if.end13.i

if.else.i.if.then9.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.else.i.if.then9.i_crit_edge, %land.lhs.true.i.if.then9.i_crit_edge
  %wBytesPerInterval.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %wBytesPerInterval.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %wBytesPerInterval.i, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #13
  %conv11.i = zext i16 %24 to i32
  br label %xhci_get_max_esit_payload.exit

if.end13.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 4
  %25 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %27 = and i16 %26, -249
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #13
  %29 = lshr i16 %26, 3
  %30 = and i16 %29, 3
  %narrow.i.i = add nuw nsw i16 %30, 1
  %narrow.i = mul nuw nsw i16 %narrow.i.i, %28
  %mul.i191 = zext i16 %narrow.i to i32
  br label %xhci_get_max_esit_payload.exit

xhci_get_max_esit_payload.exit:                   ; preds = %if.end13.i, %if.then9.i, %if.then5.i, %if.end.xhci_get_max_esit_payload.exit_crit_edge, %if.end.xhci_get_max_esit_payload.exit_crit_edge235
  %retval.0.i192 = phi i32 [ %21, %if.then5.i ], [ %conv11.i, %if.then9.i ], [ %mul.i191, %if.end13.i ], [ 0, %if.end.xhci_get_max_esit_payload.exit_crit_edge ], [ 0, %if.end.xhci_get_max_esit_payload.exit_crit_edge235 ]
  %call6 = tail call fastcc i32 @xhci_get_endpoint_interval(ptr noundef %udev, ptr noundef %ep)
  %31 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bmAttributes.i.i, align 1
  %33 = and i8 %32, 3
  %trunc = trunc i8 %32 to i2
  %34 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.117)
  switch i2 %trunc, label %xhci_get_max_esit_payload.exit.if.end19_crit_edge [
    i2 -1, label %xhci_get_max_esit_payload.exit.if.then13_crit_edge
    i2 1, label %xhci_get_max_esit_payload.exit.if.then13_crit_edge236
  ]

xhci_get_max_esit_payload.exit.if.then13_crit_edge236: ; preds = %xhci_get_max_esit_payload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

xhci_get_max_esit_payload.exit.if.then13_crit_edge: ; preds = %xhci_get_max_esit_payload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

xhci_get_max_esit_payload.exit.if.end19_crit_edge: ; preds = %xhci_get_max_esit_payload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then13:                                        ; preds = %xhci_get_max_esit_payload.exit.if.then13_crit_edge, %xhci_get_max_esit_payload.exit.if.then13_crit_edge236
  %quirks = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %35 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %quirks, align 8
  %and = and i64 %36, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool14.not = icmp eq i64 %and, 0
  br i1 %tobool14.not, label %if.then13.if.end19_crit_edge, label %land.lhs.true

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %speed = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 4
  %37 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp = icmp ugt i32 %38, 2
  %39 = tail call i32 @llvm.umin.i32(i32 %call6, i32 6)
  %spec.select = select i1 %cmp, i32 %39, i32 %call6
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.then13.if.end19_crit_edge, %xhci_get_max_esit_payload.exit.if.end19_crit_edge
  %interval.0 = phi i32 [ %call6, %if.then13.if.end19_crit_edge ], [ %spec.select, %land.lhs.true ], [ %call6, %xhci_get_max_esit_payload.exit.if.end19_crit_edge ]
  %speed.i198 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 4
  %40 = ptrtoint ptr %speed.i198 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %speed.i198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %41)
  %cmp.i199 = icmp ult i32 %41, 5
  br i1 %cmp.i199, label %if.end.i208, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp.i.not.i = icmp eq i8 %33, 1
  br i1 %cmp.i.not.i, label %if.end.i202, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.end.i202:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %bmAttributes.i201 = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %bmAttributes.i201 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bmAttributes.i201, align 1
  %conv.i = zext i8 %43 to i32
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i202, %lor.lhs.false.i.if.then.i_crit_edge
  %retval.0.i203.ph = phi i32 [ 0, %lor.lhs.false.i.if.then.i_crit_edge ], [ %conv.i, %if.end.i202 ]
  %wMaxPacketSize.i224 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 4
  %44 = ptrtoint ptr %wMaxPacketSize.i224 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %wMaxPacketSize.i224, align 1
  %46 = and i16 %45, -249
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #13
  %bMaxBurst.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %bMaxBurst.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bMaxBurst.i, align 1
  %conv.i207 = zext i8 %49 to i32
  br label %xhci_get_endpoint_max_burst.exit

if.end.i208:                                      ; preds = %if.end19
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 4
  %50 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %wMaxPacketSize.i, align 1
  %52 = and i16 %51, -249
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp2.i = icmp eq i32 %41, 3
  br i1 %cmp2.i, label %land.lhs.true.i211, label %if.end.i208.xhci_get_endpoint_max_burst.exit_crit_edge

if.end.i208.xhci_get_endpoint_max_burst.exit_crit_edge: ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_get_endpoint_max_burst.exit

land.lhs.true.i211:                               ; preds = %if.end.i208
  %54 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.118)
  switch i2 %trunc, label %land.lhs.true.i211.xhci_get_endpoint_max_burst.exit_crit_edge [
    i2 1, label %land.lhs.true.i211.if.then7.i_crit_edge
    i2 -1, label %land.lhs.true.i211.if.then7.i_crit_edge237
  ]

land.lhs.true.i211.if.then7.i_crit_edge237:       ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i

land.lhs.true.i211.if.then7.i_crit_edge:          ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i

land.lhs.true.i211.xhci_get_endpoint_max_burst.exit_crit_edge: ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_get_endpoint_max_burst.exit

if.then7.i:                                       ; preds = %land.lhs.true.i211.if.then7.i_crit_edge, %land.lhs.true.i211.if.then7.i_crit_edge237
  %55 = lshr i16 %51, 3
  %56 = and i16 %55, 3
  %sub.i = zext i16 %56 to i32
  br label %xhci_get_endpoint_max_burst.exit

xhci_get_endpoint_max_burst.exit:                 ; preds = %if.then7.i, %land.lhs.true.i211.xhci_get_endpoint_max_burst.exit_crit_edge, %if.end.i208.xhci_get_endpoint_max_burst.exit_crit_edge, %if.then.i
  %and.i204229.in = phi i16 [ %47, %if.then.i ], [ %53, %if.then7.i ], [ %53, %if.end.i208.xhci_get_endpoint_max_burst.exit_crit_edge ], [ %53, %land.lhs.true.i211.xhci_get_endpoint_max_burst.exit_crit_edge ]
  %retval.0.i203227 = phi i32 [ %retval.0.i203.ph, %if.then.i ], [ 0, %if.then7.i ], [ 0, %if.end.i208.xhci_get_endpoint_max_burst.exit_crit_edge ], [ 0, %land.lhs.true.i211.xhci_get_endpoint_max_burst.exit_crit_edge ]
  %retval.0.i213 = phi i32 [ %conv.i207, %if.then.i ], [ %sub.i, %if.then7.i ], [ 0, %if.end.i208.xhci_get_endpoint_max_burst.exit_crit_edge ], [ 0, %land.lhs.true.i211.xhci_get_endpoint_max_burst.exit_crit_edge ]
  %and.i204229 = zext i16 %and.i204229.in to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp.i215.not = icmp eq i8 %33, 1
  %spec.select181 = select i1 %cmp.i215.not, i32 0, i32 6
  %trunc234 = trunc i8 %32 to i2
  %57 = zext i2 %trunc234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.119)
  switch i2 %trunc234, label %xhci_get_endpoint_max_burst.exit.if.end74_crit_edge [
    i2 -2, label %if.then32
    i2 0, label %land.lhs.true69
  ]

xhci_get_endpoint_max_burst.exit.if.end74_crit_edge: ; preds = %xhci_get_endpoint_max_burst.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then32:                                        ; preds = %xhci_get_endpoint_max_burst.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp34 = icmp eq i32 %41, 3
  %spec.select182 = select i1 %cmp34, i32 512, i32 %and.i204229
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp38 = icmp eq i32 %41, 2
  br i1 %cmp38, label %cond.end49, label %if.then32.if.end74_crit_edge

if.then32.if.end74_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

cond.end49:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  %58 = tail call i32 @llvm.ctlz.i32(i32 %spec.select182, i1 true) #13, !range !286
  %sub.i.i.op.i = xor i32 %58, 31
  %cond50 = shl nuw i32 1, %sub.i.i.op.i
  %59 = tail call i32 @llvm.umax.i32(i32 %cond50, i32 8)
  %60 = tail call i32 @llvm.umin.i32(i32 %59, i32 64)
  br label %if.end74

land.lhs.true69:                                  ; preds = %xhci_get_endpoint_max_burst.exit
  call void @__sanitizer_cov_trace_pc() #15
  %hci_version = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 14
  %61 = ptrtoint ptr %hci_version to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %hci_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %62)
  %cmp71 = icmp ugt i16 %62, 255
  %spec.select183 = select i1 %cmp71, i32 8, i32 %retval.0.i192
  br label %if.end74

if.end74:                                         ; preds = %land.lhs.true69, %cond.end49, %if.then32.if.end74_crit_edge, %xhci_get_endpoint_max_burst.exit.if.end74_crit_edge
  %max_packet.1233 = phi i32 [ %and.i204229, %land.lhs.true69 ], [ %spec.select182, %if.then32.if.end74_crit_edge ], [ %60, %cond.end49 ], [ %and.i204229, %xhci_get_endpoint_max_burst.exit.if.end74_crit_edge ]
  %avg_trb_len.0 = phi i32 [ %spec.select183, %land.lhs.true69 ], [ %retval.0.i192, %if.then32.if.end74_crit_edge ], [ %retval.0.i192, %cond.end49 ], [ %retval.0.i192, %xhci_get_endpoint_max_burst.exit.if.end74_crit_edge ]
  %hci_version75 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 14
  %63 = ptrtoint ptr %hci_version75 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %hci_version75, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %64)
  %cmp77 = icmp ugt i16 %64, 256
  br i1 %cmp77, label %land.lhs.true79, label %if.end74.if.end83_crit_edge

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

land.lhs.true79:                                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %hcc_params2 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 11
  %65 = ptrtoint ptr %hcc_params2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hcc_params2, align 4
  %and80 = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %spec.select184 = select i1 %tobool81.not, i32 %retval.0.i203227, i32 0
  br label %if.end83

if.end83:                                         ; preds = %land.lhs.true79, %if.end74.if.end83_crit_edge
  %mult.0 = phi i32 [ %retval.0.i203227, %if.end74.if.end83_crit_edge ], [ %spec.select184, %land.lhs.true79 ]
  %call84 = tail call ptr @xhci_ring_alloc(ptr noundef %xhci, i32 noundef 2, i32 noundef 1, i32 noundef %and.i.i, i32 noundef %max_packet.1233, i32 noundef %mem_flags)
  %new_ring = getelementptr %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 4, i32 %call, i32 4
  %67 = ptrtoint ptr %new_ring to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call84, ptr %new_ring, align 4
  %tobool88.not = icmp eq ptr %call84, null
  br i1 %tobool88.not, label %if.end83.cleanup_crit_edge, label %if.end90

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end90:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %skip = getelementptr %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 4, i32 %call, i32 11
  %68 = ptrtoint ptr %skip to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %skip, align 4
  %69 = shl i32 %retval.0.i192, 8
  %shl97 = and i32 %69, -16777216
  %and98 = shl i32 %interval.0, 16
  %shl99 = and i32 %and98, 16711680
  %or = or i32 %shl99, %shl97
  %and100 = shl nuw nsw i32 %mult.0, 8
  %shl101 = and i32 %and100, 768
  %or102 = or i32 %or, %shl101
  %70 = tail call i32 @llvm.bswap.i32(i32 %or102)
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %add.ptr.i, align 8
  %shl105 = shl nuw i32 %max_packet.1233, 16
  %or106 = or i32 %shl105, %retval.0.i
  %and107 = shl nuw nsw i32 %retval.0.i213, 8
  %shl108 = and i32 %and107, 65280
  %or109 = or i32 %or106, %shl108
  %or112 = or i32 %or109, %spec.select181
  %72 = tail call i32 @llvm.bswap.i32(i32 %or112)
  %ep_info2 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i, i32 0, i32 1
  %73 = ptrtoint ptr %ep_info2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %ep_info2, align 4
  %74 = ptrtoint ptr %call84 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call84, align 4
  %dma = getelementptr inbounds %struct.xhci_segment, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma, align 4
  %cycle_state = getelementptr inbounds %struct.xhci_ring, ptr %call84, i32 0, i32 7
  %78 = ptrtoint ptr %cycle_state to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cycle_state, align 4
  %or113 = or i32 %79, %77
  %conv114 = zext i32 %or113 to i64
  %80 = tail call i64 @llvm.bswap.i64(i64 %conv114)
  %deq = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i, i32 0, i32 2
  %81 = ptrtoint ptr %deq to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %deq, align 8
  %shl116 = shl i32 %retval.0.i192, 16
  %and117 = and i32 %avg_trb_len.0, 65535
  %or118 = or i32 %and117, %shl116
  %82 = tail call i32 @llvm.bswap.i32(i32 %or118)
  %tx_info = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i, i32 0, i32 3
  %83 = ptrtoint ptr %tx_info to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %tx_info, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.end83.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end90 ], [ -12, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_get_endpoint_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xhci_get_endpoint_interval(ptr noundef %udev, ptr nocapture noundef readonly %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 4
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %1, label %do.body [
    i32 3, label %sw.bb
    i32 6, label %entry.sw.bb5_crit_edge
    i32 5, label %entry.sw.bb5_crit_edge101
    i32 2, label %sw.bb16
    i32 1, label %entry.sw.bb23_crit_edge
  ]

entry.sw.bb23_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb23

entry.sw.bb5_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

sw.bb:                                            ; preds = %entry
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 3
  %3 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bmAttributes.i, align 1
  %trunc100 = trunc i8 %4 to i2
  %5 = zext i2 %trunc100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.121)
  switch i2 %trunc100, label %sw.bb.sw.bb5_crit_edge [
    i2 0, label %sw.bb.if.then_crit_edge
    i2 -2, label %sw.bb.if.then_crit_edge102
  ]

sw.bb.if.then_crit_edge102:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

sw.bb.sw.bb5_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.then:                                          ; preds = %sw.bb.if.then_crit_edge, %sw.bb.if.then_crit_edge102
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 5
  %6 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterval.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i54 = icmp eq i8 %7, 0
  br i1 %cmp.i54, label %if.then.sw.epilog_crit_edge, label %if.end.i

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then
  %conv.i = zext i8 %7 to i32
  %8 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #13, !range !286
  %sub.i.op.i.i = xor i32 %8, 31
  %9 = tail call i32 @llvm.umin.i32(i32 %sub.i.op.i.i, i32 15) #13
  %shl.i.i = shl nuw nsw i32 1, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %conv.i)
  %cmp7.not.i.i = icmp eq i32 %shl.i.i, %conv.i
  br i1 %cmp7.not.i.i, label %if.end.i.sw.epilog_crit_edge, label %do.body.i.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_microframes_to_exponent.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_get_endpoint_interval, %if.then12.i.i)) #13
          to label %sw.epilog [label %if.then12.i.i], !srcloc !272

if.then12.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 2
  %10 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress.i.i, align 2
  %conv.i.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_microframes_to_exponent.__UNIQUE_ID_ddebug369, ptr noundef %dev.i.i, ptr noundef nonnull @.str.68, i32 noundef %conv.i.i, i32 noundef %shl.i.i, i32 noundef %conv.i) #13
  br label %sw.epilog

sw.bb5:                                           ; preds = %sw.bb.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge101
  %bmAttributes.i55 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 3
  %12 = ptrtoint ptr %bmAttributes.i55 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bmAttributes.i55, align 1
  %trunc99 = trunc i8 %13 to i2
  %14 = zext i2 %trunc99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.122)
  switch i2 %trunc99, label %sw.bb5.sw.epilog_crit_edge [
    i2 -1, label %sw.bb5.if.then13_crit_edge
    i2 1, label %sw.bb5.if.then13_crit_edge103
  ]

sw.bb5.if.then13_crit_edge103:                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

sw.bb5.if.then13_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb5.if.then13_crit_edge, %sw.bb5.if.then13_crit_edge103
  %bInterval.i61 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 5
  %15 = ptrtoint ptr %bInterval.i61 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bInterval.i61, align 2
  %17 = tail call i8 @llvm.umax.i8(i8 %16, i8 1) #13
  %18 = tail call i8 @llvm.umin.i8(i8 %17, i8 16) #13
  %19 = zext i8 %18 to i32
  %sub.i = add nsw i32 %19, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %16)
  %cmp21.not.i = icmp eq i8 %18, %16
  br i1 %cmp21.not.i, label %if.then13.xhci_parse_exponent_interval.exit_crit_edge, label %do.end.i

if.then13.xhci_parse_exponent_interval.exit_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_parse_exponent_interval.exit

do.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 2
  %20 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bEndpointAddress.i, align 2
  %conv24.i = zext i8 %21 to i32
  %shl.i = shl nuw nsw i32 1, %sub.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.69, i32 noundef %conv24.i, i32 noundef %shl.i, ptr noundef nonnull @.str.72) #18
  br label %xhci_parse_exponent_interval.exit

xhci_parse_exponent_interval.exit:                ; preds = %do.end.i, %if.then13.xhci_parse_exponent_interval.exit_crit_edge
  %22 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp29.i = icmp eq i32 %23, 2
  %add.i = add nuw nsw i32 %19, 2
  %spec.select.i = select i1 %cmp29.i, i32 %add.i, i32 %sub.i
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %bmAttributes.i63 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 3
  %24 = ptrtoint ptr %bmAttributes.i63 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bmAttributes.i63, align 1
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp.i64.not = icmp eq i8 %26, 1
  br i1 %cmp.i64.not, label %if.then20, label %sw.bb16.sw.bb23_crit_edge

sw.bb16.sw.bb23_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb23

if.then20:                                        ; preds = %sw.bb16
  %bInterval.i66 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 5
  %27 = ptrtoint ptr %bInterval.i66 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bInterval.i66, align 2
  %29 = tail call i8 @llvm.umax.i8(i8 %28, i8 1) #13
  %30 = tail call i8 @llvm.umin.i8(i8 %29, i8 16) #13
  %31 = zext i8 %30 to i32
  %sub.i67 = add nsw i32 %31, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %28)
  %cmp21.not.i68 = icmp eq i8 %30, %28
  br i1 %cmp21.not.i68, label %if.then20.xhci_parse_exponent_interval.exit82_crit_edge, label %do.end.i76

if.then20.xhci_parse_exponent_interval.exit82_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_parse_exponent_interval.exit82

do.end.i76:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i69 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %bEndpointAddress.i70 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 2
  %32 = ptrtoint ptr %bEndpointAddress.i70 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bEndpointAddress.i70, align 2
  %conv24.i71 = zext i8 %33 to i32
  %shl.i72 = shl nuw nsw i32 1, %sub.i67
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i69, ptr noundef nonnull @.str.69, i32 noundef %conv24.i71, i32 noundef %shl.i72, ptr noundef nonnull @.str.71) #18
  br label %xhci_parse_exponent_interval.exit82

xhci_parse_exponent_interval.exit82:              ; preds = %do.end.i76, %if.then20.xhci_parse_exponent_interval.exit82_crit_edge
  %34 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp29.i78 = icmp eq i32 %35, 2
  %add.i79 = add nuw nsw i32 %31, 2
  %spec.select.i80 = select i1 %cmp29.i78, i32 %add.i79, i32 %sub.i67
  br label %sw.epilog

sw.bb23:                                          ; preds = %sw.bb16.sw.bb23_crit_edge, %entry.sw.bb23_crit_edge
  %bmAttributes.i83 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 3
  %36 = ptrtoint ptr %bmAttributes.i83 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bmAttributes.i83, align 1
  %trunc = trunc i8 %37 to i2
  %38 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.123)
  switch i2 %trunc, label %sw.bb23.sw.epilog_crit_edge [
    i2 -1, label %sw.bb23.if.then31_crit_edge
    i2 1, label %sw.bb23.if.then31_crit_edge104
  ]

sw.bb23.if.then31_crit_edge104:                   ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

sw.bb23.if.then31_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then31:                                        ; preds = %sw.bb23.if.then31_crit_edge, %sw.bb23.if.then31_crit_edge104
  %bInterval.i89 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 5
  %39 = ptrtoint ptr %bInterval.i89 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bInterval.i89, align 2
  %conv.i90 = zext i8 %40 to i32
  %mul.i = shl nuw nsw i32 %conv.i90, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i.i = icmp eq i8 %40, 0
  %41 = tail call i32 @llvm.ctlz.i32(i32 %mul.i, i1 true) #13, !range !286
  %sub.i.op.i.i91 = xor i32 %41, 31
  %42 = tail call i32 @llvm.umax.i32(i32 %sub.i.op.i.i91, i32 3) #13
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 10) #13
  %44 = select i1 %tobool.not.i.i.i, i32 10, i32 %43
  %shl.i.i92 = shl nuw nsw i32 1, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i92, i32 %mul.i)
  %cmp7.not.i.i93 = icmp eq i32 %shl.i.i92, %mul.i
  br i1 %cmp7.not.i.i93, label %if.then31.sw.epilog_crit_edge, label %do.body.i.i94

if.then31.sw.epilog_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body.i.i94:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_microframes_to_exponent.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_get_endpoint_interval, %if.then12.i.i98)) #13
          to label %sw.epilog [label %if.then12.i.i98], !srcloc !272

if.then12.i.i98:                                  ; preds = %do.body.i.i94
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i95 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %bEndpointAddress.i.i96 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 2
  %45 = ptrtoint ptr %bEndpointAddress.i.i96 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bEndpointAddress.i.i96, align 2
  %conv.i.i97 = zext i8 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_microframes_to_exponent.__UNIQUE_ID_ddebug369, ptr noundef %dev.i.i95, ptr noundef nonnull @.str.68, i32 noundef %conv.i.i97, i32 noundef %shl.i.i92, i32 noundef %mul.i) #13
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/xhci-mem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1331, 0\0A.popsection", ""() #13, !srcloc !295
  unreachable

sw.epilog:                                        ; preds = %if.then12.i.i98, %do.body.i.i94, %if.then31.sw.epilog_crit_edge, %sw.bb23.sw.epilog_crit_edge, %xhci_parse_exponent_interval.exit82, %xhci_parse_exponent_interval.exit, %sw.bb5.sw.epilog_crit_edge, %if.then12.i.i, %do.body.i.i, %if.end.i.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge
  %interval.0 = phi i32 [ %spec.select.i80, %xhci_parse_exponent_interval.exit82 ], [ %spec.select.i, %xhci_parse_exponent_interval.exit ], [ 0, %if.then.sw.epilog_crit_edge ], [ %9, %if.end.i.sw.epilog_crit_edge ], [ %9, %do.body.i.i ], [ %9, %if.then12.i.i ], [ %44, %if.then31.sw.epilog_crit_edge ], [ %44, %do.body.i.i94 ], [ %44, %if.then12.i.i98 ], [ 0, %sw.bb5.sw.epilog_crit_edge ], [ 0, %sw.bb23.sw.epilog_crit_edge ]
  ret i32 %interval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_endpoint_zero(ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %virt_dev, ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xhci_get_endpoint_index(ptr noundef %ep) #13
  %in_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 3
  %0 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  %spec.select.v.i = select i1 %cmp.i, i32 2, i32 1
  %spec.select.i = add i32 %spec.select.v.i, %call
  %bytes.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bytes.i, align 4
  %hcc_params.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %6 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hcc_params.i, align 8
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 32, i32 64
  %mul.i = mul i32 %cond.i, %spec.select.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %8 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 20)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xhci_clear_endpoint_bw_info(ptr nocapture noundef writeonly %bw_info) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %bw_info, i32 0, i32 24)
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_update_bw_info(ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %in_ctx, ptr nocapture noundef readonly %ctrl_ctx, ptr nocapture noundef writeonly %virt_dev) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add_flags = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %ctrl_ctx, i32 0, i32 1
  %bytes.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %in_ctx, i32 0, i32 2
  %hcc_params.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.061 = phi i32 [ 1, %entry ], [ %add, %for.inc.for.body_crit_edge ]
  %bw_info1 = getelementptr %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 4, i32 %i.061, i32 12
  %0 = ptrtoint ptr %add_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add_flags, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add = add nuw nsw i32 %i.061, 1
  %shl = shl nuw i32 2, %i.061
  %and = and i32 %2, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then11

land.lhs.true:                                    ; preds = %for.body
  %3 = ptrtoint ptr %ctrl_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctrl_ctx, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and4 = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %6 = call ptr @memset(ptr %bw_info1, i32 0, i32 24)
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %7 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i = icmp eq i32 %8, 2
  %spec.select.v.i = select i1 %cmp.i, i32 2, i32 1
  %spec.select.i = add nuw nsw i32 %spec.select.v.i, %i.061
  %9 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bytes.i, align 4
  %11 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hcc_params.i, align 8
  %and.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 32, i32 64
  %mul.i = mul i32 %cond.i, %spec.select.i
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul.i
  %ep_info2 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %ep_info2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ep_info2, align 4
  %15 = lshr i32 %14, 27
  %and12 = and i32 %15, 7
  %16 = zext i32 %and12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %and12, label %if.then11.for.inc_crit_edge [
    i32 1, label %if.then11.if.end21_crit_edge
    i32 3, label %if.then11.if.end21_crit_edge62
    i32 5, label %if.then11.if.end21_crit_edge63
    i32 7, label %if.then11.if.end21_crit_edge64
  ]

if.then11.if.end21_crit_edge64:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then11.if.end21_crit_edge63:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then11.if.end21_crit_edge62:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end21:                                         ; preds = %if.then11.if.end21_crit_edge, %if.then11.if.end21_crit_edge62, %if.then11.if.end21_crit_edge63, %if.then11.if.end21_crit_edge64
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 8
  %19 = lshr i32 %18, 8
  %and23 = and i32 %19, 255
  %20 = ptrtoint ptr %bw_info1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and23, ptr %bw_info1, align 4
  %21 = load i32, ptr %add.ptr.i, align 8
  %22 = lshr i32 %21, 16
  %and26 = and i32 %22, 3
  %add27 = add nuw nsw i32 %and26, 1
  %mult = getelementptr %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 4, i32 %i.061, i32 12, i32 1
  %23 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add27, ptr %mult, align 4
  %24 = ptrtoint ptr %ep_info2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ep_info2, align 4
  %26 = lshr i32 %25, 16
  %and30 = and i32 %26, 255
  %add31 = add nuw nsw i32 %and30, 1
  %num_packets = getelementptr %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 4, i32 %i.061, i32 12, i32 2
  %27 = ptrtoint ptr %num_packets to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add31, ptr %num_packets, align 4
  %28 = load i32, ptr %ep_info2, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %shr33 = lshr i32 %29, 16
  %max_packet_size = getelementptr %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 4, i32 %i.061, i32 12, i32 3
  %30 = ptrtoint ptr %max_packet_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr33, ptr %max_packet_size, align 4
  %type = getelementptr %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 4, i32 %i.061, i32 12, i32 5
  %31 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and12, ptr %type, align 4
  %tx_info = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i, i32 0, i32 3
  %32 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_info, align 8
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %shr35 = lshr i32 %34, 16
  %max_esit_payload = getelementptr %struct.xhci_virt_device, ptr %virt_dev, i32 0, i32 4, i32 %i.061, i32 12, i32 4
  %35 = ptrtoint ptr %max_esit_payload to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr35, ptr %max_esit_payload, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.then11.for.inc_crit_edge, %if.then, %land.lhs.true.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %add, 31
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xhci_endpoint_copy(ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %in_ctx, ptr nocapture noundef readonly %out_ctx, i32 noundef %ep_index) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  %spec.select.v.i = select i1 %cmp.i, i32 2, i32 1
  %spec.select.i = add i32 %spec.select.v.i, %ep_index
  %bytes.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %out_ctx, i32 0, i32 2
  %2 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bytes.i, align 4
  %hcc_params.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %4 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hcc_params.i, align 8
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 32, i32 64
  %mul.i = mul i32 %cond.i, %spec.select.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 %mul.i
  %6 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i26 = icmp eq i32 %7, 2
  %spec.select.v.i27 = select i1 %cmp.i26, i32 2, i32 1
  %spec.select.i28 = add i32 %spec.select.v.i27, %ep_index
  %bytes.i29 = getelementptr inbounds %struct.xhci_container_ctx, ptr %in_ctx, i32 0, i32 2
  %8 = ptrtoint ptr %bytes.i29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bytes.i29, align 4
  %mul.i34 = mul i32 %spec.select.i28, %cond.i
  %add.ptr.i35 = getelementptr i8, ptr %9, i32 %mul.i34
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 8
  %12 = ptrtoint ptr %add.ptr.i35 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %add.ptr.i35, align 8
  %ep_info23 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %ep_info23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ep_info23, align 4
  %ep_info24 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i35, i32 0, i32 1
  %15 = ptrtoint ptr %ep_info24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ep_info24, align 4
  %deq = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i, i32 0, i32 2
  %16 = ptrtoint ptr %deq to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %deq, align 8
  %deq5 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i35, i32 0, i32 2
  %18 = ptrtoint ptr %deq5 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %deq5, align 8
  %tx_info = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i, i32 0, i32 3
  %19 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_info, align 8
  %tx_info6 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i35, i32 0, i32 3
  %21 = ptrtoint ptr %tx_info6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tx_info6, align 8
  %quirks = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %22 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %quirks, align 8
  %and = and i64 %23, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %reserved = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i, i32 0, i32 4
  %24 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reserved, align 4
  %reserved7 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %add.ptr.i35, i32 0, i32 4
  %26 = ptrtoint ptr %reserved7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %reserved7, align 4
  %arrayidx10 = getelementptr %struct.xhci_ep_ctx, ptr %add.ptr.i, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.xhci_ep_ctx, ptr %add.ptr.i35, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xhci_slot_copy(ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %in_ctx, ptr nocapture noundef readonly %out_ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  %bytes.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %in_ctx, i32 0, i32 2
  %2 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bytes.i, align 4
  br i1 %cmp.i, label %entry.xhci_get_slot_ctx.exit_crit_edge, label %if.end.i

entry.xhci_get_slot_ctx.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_get_slot_ctx.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hcc_params.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %4 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hcc_params.i, align 8
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 32, i32 64
  %add.ptr.i = getelementptr i8, ptr %3, i32 %cond.i
  br label %xhci_get_slot_ctx.exit

xhci_get_slot_ctx.exit:                           ; preds = %if.end.i, %entry.xhci_get_slot_ctx.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.end.i ], [ %3, %entry.xhci_get_slot_ctx.exit_crit_edge ]
  %6 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i14 = icmp eq i32 %7, 1
  %bytes.i15 = getelementptr inbounds %struct.xhci_container_ctx, ptr %out_ctx, i32 0, i32 2
  %8 = ptrtoint ptr %bytes.i15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bytes.i15, align 4
  br i1 %cmp.i14, label %xhci_get_slot_ctx.exit.xhci_get_slot_ctx.exit23_crit_edge, label %if.end.i21

xhci_get_slot_ctx.exit.xhci_get_slot_ctx.exit23_crit_edge: ; preds = %xhci_get_slot_ctx.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_get_slot_ctx.exit23

if.end.i21:                                       ; preds = %xhci_get_slot_ctx.exit
  call void @__sanitizer_cov_trace_pc() #15
  %hcc_params.i16 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %10 = ptrtoint ptr %hcc_params.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hcc_params.i16, align 8
  %and.i17 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  %cond.i19 = select i1 %tobool.not.i18, i32 32, i32 64
  %add.ptr.i20 = getelementptr i8, ptr %9, i32 %cond.i19
  br label %xhci_get_slot_ctx.exit23

xhci_get_slot_ctx.exit23:                         ; preds = %if.end.i21, %xhci_get_slot_ctx.exit.xhci_get_slot_ctx.exit23_crit_edge
  %retval.0.i22 = phi ptr [ %add.ptr.i20, %if.end.i21 ], [ %9, %xhci_get_slot_ctx.exit.xhci_get_slot_ctx.exit23_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %retval.0.i22, align 4
  %14 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %retval.0.i, align 4
  %dev_info23 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %retval.0.i22, i32 0, i32 1
  %15 = ptrtoint ptr %dev_info23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dev_info23, align 4
  %dev_info24 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %retval.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %dev_info24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dev_info24, align 4
  %tt_info = getelementptr inbounds %struct.xhci_slot_ctx, ptr %retval.0.i22, i32 0, i32 2
  %18 = ptrtoint ptr %tt_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tt_info, align 4
  %tt_info5 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %retval.0.i, i32 0, i32 2
  %20 = ptrtoint ptr %tt_info5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tt_info5, align 4
  %dev_state = getelementptr inbounds %struct.xhci_slot_ctx, ptr %retval.0.i22, i32 0, i32 3
  %21 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dev_state, align 4
  %dev_state6 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %retval.0.i, i32 0, i32 3
  %23 = ptrtoint ptr %dev_state6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dev_state6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xhci_alloc_command(ptr nocapture noundef readonly %xhci, i1 noundef zeroext %allocate_completion, i32 noundef %mem_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %mem_flags, 256
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i1.i.i, label %entry.kzalloc_node.exit_crit_edge, label %if.end.i2.i.i, !prof !271

entry.kzalloc_node.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end.i2.i.i:                                    ; preds = %entry
  %and2.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i2.i.i.kzalloc_node.exit_crit_edge

if.end.i2.i.i.kzalloc_node.exit_crit_edge:        ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end5.i.i.i:                                    ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc_node.exit

kzalloc_node.exit:                                ; preds = %if.end5.i.i.i, %if.end.i2.i.i.kzalloc_node.exit_crit_edge, %entry.kzalloc_node.exit_crit_edge
  %retval.0.i3.i.i = phi i32 [ 0, %entry.kzalloc_node.exit_crit_edge ], [ 3, %if.end.i2.i.i.kzalloc_node.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i3.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 28) #16
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %kzalloc_node.exit.cleanup_crit_edge, label %if.end

kzalloc_node.exit.cleanup_crit_edge:              ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %kzalloc_node.exit
  br i1 %allocate_completion, label %if.then4, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then4:                                         ; preds = %if.end
  br i1 %cmp.i1.i.i, label %if.then4.kzalloc_node.exit36_crit_edge, label %if.end.i2.i.i28, !prof !271

if.then4.kzalloc_node.exit36_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit36

if.end.i2.i.i28:                                  ; preds = %if.then4
  %and2.i.i.i26 = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i26)
  %tobool3.not.i.i.i27 = icmp eq i32 %and2.i.i.i26, 0
  br i1 %tobool3.not.i.i.i27, label %if.end5.i.i.i32, label %if.end.i2.i.i28.kzalloc_node.exit36_crit_edge

if.end.i2.i.i28.kzalloc_node.exit36_crit_edge:    ; preds = %if.end.i2.i.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit36

if.end5.i.i.i32:                                  ; preds = %if.end.i2.i.i28
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i29 = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i29)
  %tobool7.not.i.i.i30 = icmp eq i32 %and6.i.i.i29, 0
  %..i.i.i31 = select i1 %tobool7.not.i.i.i30, i32 1, i32 2
  br label %kzalloc_node.exit36

kzalloc_node.exit36:                              ; preds = %if.end5.i.i.i32, %if.end.i2.i.i28.kzalloc_node.exit36_crit_edge, %if.then4.kzalloc_node.exit36_crit_edge
  %retval.0.i3.i.i33 = phi i32 [ 0, %if.then4.kzalloc_node.exit36_crit_edge ], [ 3, %if.end.i2.i.i28.kzalloc_node.exit36_crit_edge ], [ %..i.i.i31, %if.end5.i.i.i32 ]
  %arrayidx3.i.i34 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i3.i.i33, i32 7
  %2 = ptrtoint ptr %arrayidx3.i.i34 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3.i.i34, align 4
  %call.i.i.i35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %or.i, i32 noundef 56) #16
  %completion = getelementptr inbounds %struct.xhci_command, ptr %call.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i.i35, ptr %completion, align 4
  %tobool8.not = icmp eq ptr %call.i.i.i35, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %kzalloc_node.exit36
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #13
  br label %cleanup

if.end10:                                         ; preds = %kzalloc_node.exit36
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call.i.i.i35, align 8
  %wait.i = getelementptr inbounds %struct.completion, ptr %call.i.i.i35, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @init_completion.__key) #13
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end.if.end12_crit_edge
  %status = getelementptr inbounds %struct.xhci_command, ptr %call.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %status, align 4
  %cmd_list = getelementptr inbounds %struct.xhci_command, ptr %call.i.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %cmd_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %cmd_list, ptr %cmd_list, align 4
  %prev.i = getelementptr inbounds %struct.xhci_command, ptr %call.i.i.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cmd_list, ptr %prev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9, %kzalloc_node.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i.i, %if.end12 ], [ null, %if.then9 ], [ null, %kzalloc_node.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_urb_free_priv(ptr noundef %urb_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %urb_priv) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_alloc_erst(ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %evt_ring, ptr noundef %erst, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_segs = getelementptr inbounds %struct.xhci_ring, ptr %evt_ring, i32 0, i32 10
  %0 = ptrtoint ptr %num_segs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_segs, align 4
  %mul = shl i32 %1, 4
  %2 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xhci, align 8
  %sysdev = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysdev, align 4
  %erst_dma_addr = getelementptr inbounds %struct.xhci_erst, ptr %erst, i32 0, i32 2
  %and.i = lshr i32 %flags, 5
  %6 = and i32 %and.i, 256
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef %mul, ptr noundef %erst_dma_addr, i32 noundef %flags, i32 noundef %6) #13
  %7 = ptrtoint ptr %erst to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %erst, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %num_segs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_segs, align 4
  %num_entries = getelementptr inbounds %struct.xhci_erst, ptr %erst, i32 0, i32 1
  %10 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %num_entries, align 4
  %11 = load i32, ptr %num_segs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp22.not = icmp eq i32 %11, 0
  br i1 %cmp22.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %seg.0.in24 = phi ptr [ %next, %for.body.for.body_crit_edge ], [ %evt_ring, %if.end.for.body_crit_edge ]
  %val.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %12 = ptrtoint ptr %seg.0.in24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %seg.0 = load ptr, ptr %seg.0.in24, align 4
  %13 = ptrtoint ptr %erst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %erst, align 4
  %arrayidx = getelementptr %struct.xhci_erst_entry, ptr %14, i32 %val.023
  %dma = getelementptr inbounds %struct.xhci_segment, ptr %seg.0, i32 0, i32 2
  %15 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma, align 4
  %conv = zext i32 %16 to i64
  %17 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %arrayidx, align 8
  %seg_size = getelementptr %struct.xhci_erst_entry, ptr %14, i32 %val.023, i32 1
  %19 = ptrtoint ptr %seg_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65536, ptr %seg_size, align 8
  %rsvd = getelementptr %struct.xhci_erst_entry, ptr %14, i32 %val.023, i32 2
  %20 = ptrtoint ptr %rsvd to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rsvd, align 4
  %next = getelementptr inbounds %struct.xhci_segment, ptr %seg.0, i32 0, i32 1
  %inc = add nuw i32 %val.023, 1
  %21 = ptrtoint ptr %num_segs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_segs, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_free_erst(ptr nocapture noundef readonly %xhci, ptr nocapture noundef %erst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %erst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erst, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xhci, align 8
  %num_entries = getelementptr inbounds %struct.xhci_erst, ptr %erst, i32 0, i32 1
  %4 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_entries, align 4
  %mul = shl i32 %5, 4
  %sysdev = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysdev, align 4
  %erst_dma_addr = getelementptr inbounds %struct.xhci_erst, ptr %erst, i32 0, i32 2
  %8 = ptrtoint ptr %erst_dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erst_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %mul, ptr noundef nonnull %1, i32 noundef %9, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %erst to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %erst, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_mem_cleanup(ptr noundef %xhci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xhci, align 8
  %sysdev = getelementptr inbounds %struct.usb_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysdev, align 4
  %cmd_timer = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 33
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cmd_timer) #13
  %erst = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 37
  %4 = ptrtoint ptr %erst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %erst, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.xhci_free_erst.exit_crit_edge, label %if.then.i

entry.xhci_free_erst.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_free_erst.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xhci, align 8
  %num_entries.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 37, i32 1
  %8 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_entries.i, align 4
  %mul.i = shl i32 %9, 4
  %sysdev.i = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysdev.i, align 4
  %erst_dma_addr.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 37, i32 2
  %12 = ptrtoint ptr %erst_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %erst_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %mul.i, ptr noundef nonnull %5, i32 noundef %13, i32 noundef 0) #13
  br label %xhci_free_erst.exit

xhci_free_erst.exit:                              ; preds = %if.then.i, %entry.xhci_free_erst.exit_crit_edge
  %14 = ptrtoint ptr %erst to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %erst, align 4
  %event_ring = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 36
  %15 = ptrtoint ptr %event_ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %event_ring, align 8
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %xhci_free_erst.exit.if.end_crit_edge, label %if.then

xhci_free_erst.exit.if.end_crit_edge:             ; preds = %xhci_free_erst.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %xhci_free_erst.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xhci_ring_free(ptr noundef %xhci, ptr noundef nonnull %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %xhci_free_erst.exit.if.end_crit_edge
  %17 = ptrtoint ptr %event_ring to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %event_ring, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.27) #13
  %lpm_command = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 41
  %18 = ptrtoint ptr %lpm_command to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lpm_command, align 4
  %tobool4.not = icmp eq ptr %19, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.end
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then5.xhci_free_command.exit_crit_edge, label %if.end.i.i

if.then5.xhci_free_command.exit_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_free_command.exit

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %device_pool.i.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %22 = ptrtoint ptr %device_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_pool.i.i, align 4
  %bytes.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bytes.i.i, align 4
  %dma.i.i = getelementptr inbounds %struct.xhci_container_ctx, ptr %21, i32 0, i32 3
  %26 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %23, ptr noundef %25, i32 noundef %27) #13
  tail call void @kfree(ptr noundef nonnull %21) #13
  br label %xhci_free_command.exit

xhci_free_command.exit:                           ; preds = %if.end.i.i, %if.then5.xhci_free_command.exit_crit_edge
  %completion.i = getelementptr inbounds %struct.xhci_command, ptr %19, i32 0, i32 3
  %28 = ptrtoint ptr %completion.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %completion.i, align 4
  tail call void @kfree(ptr noundef %29) #13
  tail call void @kfree(ptr noundef nonnull %19) #13
  br label %if.end7

if.end7:                                          ; preds = %xhci_free_command.exit, %if.end.if.end7_crit_edge
  %30 = ptrtoint ptr %lpm_command to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %lpm_command, align 4
  %cmd_ring = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 29
  %31 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmd_ring, align 4
  %tobool9.not = icmp eq ptr %32, null
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xhci_ring_free(ptr noundef %xhci, ptr noundef nonnull %32)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %33 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %cmd_ring, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.28) #13
  tail call void @xhci_cleanup_command_queue(ptr noundef %xhci) #13
  %hcs_params1 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 7
  %34 = ptrtoint ptr %hcs_params1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hcs_params1, align 4
  %shr = lshr i32 %35, 24
  %and = and i32 %shr, 127
  %rh_bw = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp204.not = icmp eq i32 %and, 0
  br i1 %cmp204.not, label %if.end12.for.end24_crit_edge, label %if.end12.land.rhs_crit_edge

if.end12.land.rhs_crit_edge:                      ; preds = %if.end12
  br label %land.rhs

if.end12.for.end24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24

land.rhs:                                         ; preds = %for.end.land.rhs_crit_edge, %if.end12.land.rhs_crit_edge
  %i.0205 = phi i32 [ %inc23, %for.end.land.rhs_crit_edge ], [ 0, %if.end12.land.rhs_crit_edge ]
  %36 = ptrtoint ptr %rh_bw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rh_bw, align 8
  %tobool14.not = icmp eq ptr %37, null
  br i1 %tobool14.not, label %land.rhs.for.end24_crit_edge, label %land.rhs.for.body18_crit_edge

land.rhs.for.body18_crit_edge:                    ; preds = %land.rhs
  br label %for.body18

land.rhs.for.end24_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24

for.body18:                                       ; preds = %while.end.for.body18_crit_edge, %land.rhs.for.body18_crit_edge
  %j.0203 = phi i32 [ %inc, %while.end.for.body18_crit_edge ], [ 0, %land.rhs.for.body18_crit_edge ]
  %endpoints = getelementptr %struct.xhci_root_port_bw_info, ptr %37, i32 %i.0205, i32 2, i32 1, i32 %j.0203, i32 1
  %38 = ptrtoint ptr %endpoints to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %endpoints, align 4
  %cmp.i.not202 = icmp eq ptr %39, %endpoints
  br i1 %cmp.i.not202, label %for.body18.while.end_crit_edge, label %for.body18.while.body_crit_edge

for.body18.while.body_crit_edge:                  ; preds = %for.body18
  br label %while.body

for.body18.while.end_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %for.body18.while.body_crit_edge
  %40 = phi ptr [ %50, %list_del_init.exit.while.body_crit_edge ], [ %39, %for.body18.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %40) #13
  br i1 %call.i.i, label %if.end.i.i193, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i193:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i193, %while.body.list_del_init.exit_crit_edge
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %40, ptr %40, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %40, ptr %prev.i3.i, align 4
  %49 = ptrtoint ptr %endpoints to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %endpoints, align 4
  %cmp.i.not = icmp eq ptr %50, %endpoints
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %for.body18.while.end_crit_edge
  %inc = add nuw nsw i32 %j.0203, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %while.end.for.body18_crit_edge

while.end.for.body18_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body18

for.end:                                          ; preds = %while.end
  %inc23 = add nuw nsw i32 %i.0205, 1
  %exitcond217.not = icmp eq i32 %inc23, %and
  br i1 %exitcond217.not, label %for.end.for.end24_crit_edge, label %for.end.land.rhs_crit_edge

for.end.land.rhs_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

for.end.for.end24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24

for.end24:                                        ; preds = %for.end.for.end24_crit_edge, %land.rhs.for.end24_crit_edge, %if.end12.for.end24_crit_edge
  %51 = ptrtoint ptr %hcs_params1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hcs_params1, align 4
  %and27 = and i32 %52, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp29206.not = icmp eq i32 %and27, 0
  br i1 %cmp29206.not, label %for.end24.for.end32_crit_edge, label %for.end24.for.body30_crit_edge

for.end24.for.body30_crit_edge:                   ; preds = %for.end24
  br label %for.body30

for.end24.for.end32_crit_edge:                    ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end32

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.end24.for.body30_crit_edge
  %i.1207 = phi i32 [ %dec, %for.body30.for.body30_crit_edge ], [ %and27, %for.end24.for.body30_crit_edge ]
  tail call fastcc void @xhci_free_virt_devices_depth_first(ptr noundef %xhci, i32 noundef %i.1207)
  %dec = add nsw i32 %i.1207, -1
  %cmp29 = icmp ugt i32 %i.1207, 1
  br i1 %cmp29, label %for.body30.for.body30_crit_edge, label %for.body30.for.end32_crit_edge

for.body30.for.end32_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end32

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body30

for.end32:                                        ; preds = %for.body30.for.end32_crit_edge, %for.end24.for.end32_crit_edge
  %segment_pool = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 45
  %53 = ptrtoint ptr %segment_pool to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %segment_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %54) #13
  %55 = ptrtoint ptr %segment_pool to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %segment_pool, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.29) #13
  %device_pool = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %56 = ptrtoint ptr %device_pool to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %57) #13
  %58 = ptrtoint ptr %device_pool to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %device_pool, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.30) #13
  %small_streams_pool = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 46
  %59 = ptrtoint ptr %small_streams_pool to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %small_streams_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %60) #13
  %61 = ptrtoint ptr %small_streams_pool to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %small_streams_pool, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.31) #13
  %medium_streams_pool = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 47
  %62 = ptrtoint ptr %medium_streams_pool to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %medium_streams_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %63) #13
  %64 = ptrtoint ptr %medium_streams_pool to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %medium_streams_pool, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.32) #13
  %dcbaa = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 28
  %65 = ptrtoint ptr %dcbaa to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dcbaa, align 8
  %tobool37.not = icmp eq ptr %66, null
  br i1 %tobool37.not, label %for.end32.if.end41_crit_edge, label %if.then38

for.end32.if.end41_crit_edge:                     ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then38:                                        ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #15
  %dma = getelementptr inbounds %struct.xhci_device_context_array, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma, align 8
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 2056, ptr noundef nonnull %66, i32 noundef %68, i32 noundef 0) #13
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %for.end32.if.end41_crit_edge
  %69 = ptrtoint ptr %dcbaa to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %dcbaa, align 8
  %70 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %xhci, align 8
  %sysdev.i194 = getelementptr inbounds %struct.usb_bus, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %sysdev.i194 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sysdev.i194, align 4
  %scratchpad.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 38
  %74 = ptrtoint ptr %scratchpad.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %scratchpad.i, align 4
  %tobool.not.i195 = icmp eq ptr %75, null
  br i1 %tobool.not.i195, label %if.end41.scratchpad_free.exit_crit_edge, label %if.end.i

if.end41.scratchpad_free.exit_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %scratchpad_free.exit

if.end.i:                                         ; preds = %if.end41
  %hcs_params2.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 8
  %76 = ptrtoint ptr %hcs_params2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hcs_params2.i, align 8
  %shr.i = lshr i32 %77, 16
  %and.i = and i32 %shr.i, 992
  %shr2.i = lshr i32 %77, 27
  %or.i = or i32 %and.i, %shr2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp32.not.i = icmp eq i32 %or.i, 0
  br i1 %cmp32.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %page_size.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %78 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %page_size.i, align 8
  %80 = ptrtoint ptr %scratchpad.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %scratchpad.i, align 4
  %sp_buffers.i = getelementptr inbounds %struct.xhci_scratchpad, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %sp_buffers.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sp_buffers.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %83, i32 %i.033.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i, align 4
  %86 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %81, align 4
  %arrayidx6.i = getelementptr i64, ptr %87, i32 %i.033.i
  %88 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx6.i, align 8
  %conv.i196 = trunc i64 %89 to i32
  tail call void @dma_free_attrs(ptr noundef %73, i32 noundef %79, ptr noundef %85, i32 noundef %conv.i196, i32 noundef 0) #13
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %or.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %90 = ptrtoint ptr %scratchpad.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %scratchpad.i, align 4
  %sp_buffers8.i = getelementptr inbounds %struct.xhci_scratchpad, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %sp_buffers8.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sp_buffers8.i, align 4
  tail call void @kfree(ptr noundef %93) #13
  %mul.i197 = shl nuw nsw i32 %or.i, 3
  %94 = ptrtoint ptr %scratchpad.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %scratchpad.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %sp_dma.i = getelementptr inbounds %struct.xhci_scratchpad, ptr %95, i32 0, i32 1
  %98 = ptrtoint ptr %sp_dma.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sp_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %73, i32 noundef %mul.i197, ptr noundef %97, i32 noundef %99, i32 noundef 0) #13
  %100 = ptrtoint ptr %scratchpad.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %scratchpad.i, align 4
  tail call void @kfree(ptr noundef %101) #13
  %102 = ptrtoint ptr %scratchpad.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %scratchpad.i, align 4
  br label %scratchpad_free.exit

scratchpad_free.exit:                             ; preds = %for.end.i, %if.end41.scratchpad_free.exit_crit_edge
  %103 = ptrtoint ptr %rh_bw to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rh_bw, align 8
  %tobool44.not = icmp ne ptr %104, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp48212 = icmp ne i32 %and, 0
  %or.cond = select i1 %tobool44.not, i1 %cmp48212, i1 false
  br i1 %or.cond, label %scratchpad_free.exit.for.body49_crit_edge, label %scratchpad_free.exit.no_bw_crit_edge

scratchpad_free.exit.no_bw_crit_edge:             ; preds = %scratchpad_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_bw

scratchpad_free.exit.for.body49_crit_edge:        ; preds = %scratchpad_free.exit
  br label %for.body49

for.body49:                                       ; preds = %for.end72.for.body49_crit_edge, %scratchpad_free.exit.for.body49_crit_edge
  %i.2213 = phi i32 [ %inc74, %for.end72.for.body49_crit_edge ], [ 0, %scratchpad_free.exit.for.body49_crit_edge ]
  %105 = ptrtoint ptr %rh_bw to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rh_bw, align 8
  %arrayidx51 = getelementptr %struct.xhci_root_port_bw_info, ptr %106, i32 %i.2213
  %107 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx51, align 4
  %cmp62.not209 = icmp eq ptr %108, %arrayidx51
  br i1 %cmp62.not209, label %for.body49.for.end72_crit_edge, label %for.body49.for.body64_crit_edge

for.body49.for.body64_crit_edge:                  ; preds = %for.body49
  br label %for.body64

for.body49.for.end72_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end72

for.body64:                                       ; preds = %list_del.exit.for.body64_crit_edge, %for.body49.for.body64_crit_edge
  %tt.0210 = phi ptr [ %n.0, %list_del.exit.for.body64_crit_edge ], [ %108, %for.body49.for.body64_crit_edge ]
  %109 = ptrtoint ptr %tt.0210 to i32
  call void @__asan_load4_noabort(i32 %109)
  %n.0 = load ptr, ptr %tt.0210, align 4
  %call.i.i198 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tt.0210) #13
  br i1 %call.i.i198, label %if.end.i.i201, label %for.body64.list_del.exit_crit_edge

for.body64.list_del.exit_crit_edge:               ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i201:                                    ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i199 = getelementptr inbounds %struct.list_head, ptr %tt.0210, i32 0, i32 1
  %110 = ptrtoint ptr %prev.i.i199 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i.i199, align 4
  %112 = ptrtoint ptr %tt.0210 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tt.0210, align 4
  %prev1.i.i.i200 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %prev1.i.i.i200 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %111, ptr %prev1.i.i.i200, align 4
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %113, ptr %111, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i201, %for.body64.list_del.exit_crit_edge
  %116 = ptrtoint ptr %tt.0210 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr inttoptr (i32 256 to ptr), ptr %tt.0210, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tt.0210, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tt.0210) #13
  %118 = ptrtoint ptr %rh_bw to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rh_bw, align 8
  %arrayidx60 = getelementptr %struct.xhci_root_port_bw_info, ptr %119, i32 %i.2213
  %cmp62.not = icmp eq ptr %n.0, %arrayidx60
  br i1 %cmp62.not, label %list_del.exit.for.end72_crit_edge, label %list_del.exit.for.body64_crit_edge

list_del.exit.for.body64_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body64

list_del.exit.for.end72_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end72

for.end72:                                        ; preds = %list_del.exit.for.end72_crit_edge, %for.body49.for.end72_crit_edge
  %inc74 = add nuw nsw i32 %i.2213, 1
  %exitcond218.not = icmp eq i32 %inc74, %and
  br i1 %exitcond218.not, label %for.end72.no_bw_crit_edge, label %for.end72.for.body49_crit_edge

for.end72.for.body49_crit_edge:                   ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body49

for.end72.no_bw_crit_edge:                        ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_bw

no_bw:                                            ; preds = %for.end72.no_bw_crit_edge, %scratchpad_free.exit.no_bw_crit_edge
  %cmd_ring_reserved_trbs = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 32
  %120 = ptrtoint ptr %cmd_ring_reserved_trbs to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %cmd_ring_reserved_trbs, align 4
  %usb2_rhub = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 55
  %num_ports76 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 55, i32 1
  %121 = ptrtoint ptr %num_ports76 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %num_ports76, align 4
  %usb3_rhub = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 56
  %num_ports77 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 56, i32 1
  %122 = ptrtoint ptr %num_ports77 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %num_ports77, align 4
  %num_active_eps = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 52
  %123 = ptrtoint ptr %num_active_eps to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %num_active_eps, align 8
  %124 = ptrtoint ptr %usb2_rhub to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %usb2_rhub, align 4
  tail call void @kfree(ptr noundef %125) #13
  %126 = ptrtoint ptr %usb3_rhub to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %usb3_rhub, align 4
  tail call void @kfree(ptr noundef %127) #13
  %hw_ports = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 54
  %128 = ptrtoint ptr %hw_ports to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw_ports, align 8
  tail call void @kfree(ptr noundef %129) #13
  %130 = ptrtoint ptr %rh_bw to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rh_bw, align 8
  tail call void @kfree(ptr noundef %131) #13
  %ext_caps = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 58
  %132 = ptrtoint ptr %ext_caps to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ext_caps, align 8
  tail call void @kfree(ptr noundef %133) #13
  %num_port_caps = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 61
  %134 = ptrtoint ptr %num_port_caps to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %num_port_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp83215.not = icmp eq i32 %135, 0
  br i1 %cmp83215.not, label %no_bw.for.end88_crit_edge, label %for.body84.lr.ph

no_bw.for.end88_crit_edge:                        ; preds = %no_bw
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end88

for.body84.lr.ph:                                 ; preds = %no_bw
  %port_caps = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 60
  br label %for.body84

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %for.body84.lr.ph
  %i.3216 = phi i32 [ 0, %for.body84.lr.ph ], [ %inc87, %for.body84.for.body84_crit_edge ]
  %136 = ptrtoint ptr %port_caps to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %port_caps, align 8
  %arrayidx85 = getelementptr %struct.xhci_port_cap, ptr %137, i32 %i.3216
  %138 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx85, align 4
  tail call void @kfree(ptr noundef %139) #13
  %inc87 = add nuw i32 %i.3216, 1
  %140 = ptrtoint ptr %num_port_caps to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %num_port_caps, align 4
  %cmp83 = icmp ult i32 %inc87, %141
  br i1 %cmp83, label %for.body84.for.body84_crit_edge, label %for.body84.for.end88_crit_edge

for.body84.for.end88_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end88

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body84

for.end88:                                        ; preds = %for.body84.for.end88_crit_edge, %no_bw.for.end88_crit_edge
  %port_caps89 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 60
  %142 = ptrtoint ptr %port_caps89 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %port_caps89, align 8
  tail call void @kfree(ptr noundef %143) #13
  %144 = ptrtoint ptr %num_port_caps to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %num_port_caps, align 4
  %145 = ptrtoint ptr %usb2_rhub to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %usb2_rhub, align 4
  %146 = ptrtoint ptr %usb3_rhub to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %usb3_rhub, align 4
  %147 = ptrtoint ptr %hw_ports to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %hw_ports, align 8
  %148 = ptrtoint ptr %rh_bw to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %rh_bw, align 8
  %149 = ptrtoint ptr %ext_caps to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %ext_caps, align 8
  %150 = ptrtoint ptr %port_caps89 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %port_caps89, align 8
  %page_size = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 22
  %151 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %page_size, align 8
  %page_shift = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 23
  %152 = ptrtoint ptr %page_shift to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %page_shift, align 4
  %bus_state = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 55, i32 3
  %153 = ptrtoint ptr %bus_state to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %bus_state, align 4
  %bus_state101 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 56, i32 3
  %154 = ptrtoint ptr %bus_state101 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %bus_state101, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_init(ptr noundef %vaf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_init, i32 0, i32 1), ptr blockaddress(@trace_xhci_dbg_init, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !272

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !271

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !296
  %call42 = tail call i32 @__traceiter_xhci_dbg_init(ptr noundef null, ptr noundef %vaf) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !297
  %13 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !271

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !275
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_init, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_init, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xhci_dbg_init.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xhci_dbg_init.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 66, ptr noundef nonnull @.str.58) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !276
  %31 = tail call i32 @llvm.read_register.i32(metadata !261) #13
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
declare dso_local void @xhci_cleanup_command_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_free_virt_devices_depth_first(ptr noundef %xhci, i32 noundef %slot_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 42, i32 %slot_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %real_port = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %real_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %real_port, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %hcs_params1 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 7
  %4 = ptrtoint ptr %hcs_params1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hcs_params1, align 4
  %shr = lshr i32 %5, 24
  %and = and i32 %shr, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp4 = icmp ult i32 %and, %conv
  br i1 %cmp4, label %lor.lhs.false.do.body_crit_edge, label %if.end13

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_free_virt_devices_depth_first.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_free_virt_devices_depth_first, %if.then10)) #13
          to label %out [label %if.then10], !srcloc !272

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xhci, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_free_virt_devices_depth_first.__UNIQUE_ID_ddebug352, ptr noundef %9, ptr noundef nonnull @.str.75) #13
  br label %out

if.end13:                                         ; preds = %lor.lhs.false
  %rh_bw = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 43
  %10 = ptrtoint ptr %rh_bw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rh_bw, align 8
  %sub = add nsw i32 %conv, -1
  %arrayidx16 = getelementptr %struct.xhci_root_port_bw_info, ptr %11, i32 %sub
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx16, align 4
  %cmp24.not90 = icmp eq ptr %13, %arrayidx16
  br i1 %cmp24.not90, label %if.end13.out_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body:                                         ; preds = %for.inc48.for.body_crit_edge, %if.end13.for.body_crit_edge
  %tt_info.091 = phi ptr [ %next.092, %for.inc48.for.body_crit_edge ], [ %13, %if.end13.for.body_crit_edge ]
  %14 = ptrtoint ptr %tt_info.091 to i32
  call void @__asan_load4_noabort(i32 %14)
  %next.092 = load ptr, ptr %tt_info.091, align 4
  %slot_id28 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %tt_info.091, i32 0, i32 1
  %15 = ptrtoint ptr %slot_id28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slot_id28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %slot_id)
  %cmp29 = icmp eq i32 %16, %slot_id
  br i1 %cmp29, label %for.cond32.preheader, label %for.body.for.inc48_crit_edge

for.body.for.inc48_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48

for.cond32.preheader:                             ; preds = %for.body
  %17 = ptrtoint ptr %hcs_params1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hcs_params1, align 4
  %and3585 = and i32 %18, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3585)
  %cmp3686.not = icmp eq i32 %and3585, 0
  br i1 %cmp3686.not, label %for.cond32.preheader.for.inc48_crit_edge, label %for.cond32.preheader.for.body38_crit_edge

for.cond32.preheader.for.body38_crit_edge:        ; preds = %for.cond32.preheader
  br label %for.body38

for.cond32.preheader.for.inc48_crit_edge:         ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48

for.body38:                                       ; preds = %for.inc.for.body38_crit_edge, %for.cond32.preheader.for.body38_crit_edge
  %i.087 = phi i32 [ %inc, %for.inc.for.body38_crit_edge ], [ 1, %for.cond32.preheader.for.body38_crit_edge ]
  %arrayidx40 = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 42, i32 %i.087
  %19 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %20, null
  br i1 %tobool41.not, label %for.body38.for.inc_crit_edge, label %land.lhs.true

for.body38.for.inc_crit_edge:                     ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body38
  %tt_info42 = getelementptr inbounds %struct.xhci_virt_device, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %tt_info42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tt_info42, align 4
  %cmp43 = icmp eq ptr %22, %tt_info.091
  br i1 %cmp43, label %if.then45, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @xhci_free_virt_devices_depth_first(ptr noundef %xhci, i32 noundef %i.087)
  br label %for.inc

for.inc:                                          ; preds = %if.then45, %land.lhs.true.for.inc_crit_edge, %for.body38.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.087, 1
  %23 = ptrtoint ptr %hcs_params1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hcs_params1, align 4
  %and35 = and i32 %24, 255
  %cmp36 = icmp ult i32 %inc, %and35
  br i1 %cmp36, label %for.inc.for.body38_crit_edge, label %for.inc.for.inc48_crit_edge

for.inc.for.inc48_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48

for.inc.for.body38_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body38

for.inc48:                                        ; preds = %for.inc.for.inc48_crit_edge, %for.cond32.preheader.for.inc48_crit_edge, %for.body.for.inc48_crit_edge
  %cmp24.not = icmp eq ptr %next.092, %arrayidx16
  br i1 %cmp24.not, label %for.inc48.out_crit_edge, label %for.inc48.for.body_crit_edge

for.inc48.for.body_crit_edge:                     ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc48.out_crit_edge:                          ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %for.inc48.out_crit_edge, %if.end13.out_crit_edge, %if.then10, %do.body
  tail call void @xhci_debugfs_remove_slot(ptr noundef %xhci, i32 noundef %slot_id) #13
  tail call void @xhci_free_virt_device(ptr noundef %xhci, i32 noundef %slot_id)
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_mem_init(ptr noundef %xhci, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #13
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma, align 4, !annotation !279
  %1 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xhci, align 8
  %sysdev = getelementptr inbounds %struct.usb_bus, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sysdev, align 4
  %cmd_list = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 31
  %5 = ptrtoint ptr %cmd_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %cmd_list, ptr %cmd_list, align 4
  %prev.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 31, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cmd_list, ptr %prev.i, align 4
  %cmd_timer = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 33
  tail call void @__init_work(ptr noundef %cmd_timer, i32 noundef 0) #13
  %7 = ptrtoint ptr %cmd_timer to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %cmd_timer, align 8
  %lockdep_map = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 33, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.33, ptr noundef nonnull @xhci_mem_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry8 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 33, i32 0, i32 1
  %8 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i359 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 33, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i359 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry8, ptr %prev.i359, align 4
  %func = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 33, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xhci_handle_command_timeout, ptr %func, align 4
  %timer = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 33, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.35, ptr noundef nonnull @xhci_mem_init.__key.34) #13
  %cmd_ring_stop_completion = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 34
  %11 = ptrtoint ptr %cmd_ring_stop_completion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cmd_ring_stop_completion, align 4
  %wait.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 34, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @init_completion.__key) #13
  %op_regs = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 3
  %12 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %op_regs, align 4
  %page_size17 = getelementptr inbounds %struct.xhci_op_regs, ptr %13, i32 0, i32 2
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %page_size17) #13, !srcloc !298
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !299
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.36, i32 noundef %15) #13
  %and372 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and372)
  %cmp20.not373 = icmp eq i32 %and372, 0
  br i1 %cmp20.not373, label %entry.if.end_crit_edge, label %entry.if.then22_crit_edge

entry.if.then22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %page_size.0375 = phi i32 [ %shr, %if.end.if.end_crit_edge ], [ %15, %entry.if.end_crit_edge ]
  %i.0374 = phi i32 [ %inc, %if.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %shr = lshr i32 %page_size.0375, 1
  %inc = add nuw nsw i32 %i.0374, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.0374)
  %cmp = icmp ult i32 %i.0374, 15
  %16 = and i32 %page_size.0375, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp20.not = icmp eq i32 %16, 0
  %or.cond = select i1 %cmp, i1 %cmp20.not, i1 false
  br i1 %or.cond, label %if.end.if.end_crit_edge, label %for.end

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.end:                                          ; preds = %if.end
  br i1 %cmp, label %for.end.if.then22_crit_edge, label %do.end25

for.end.if.then22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

if.then22:                                        ; preds = %for.end.if.then22_crit_edge, %entry.if.then22_crit_edge
  %i.0.lcssa382 = phi i32 [ %inc, %for.end.if.then22_crit_edge ], [ 0, %entry.if.then22_crit_edge ]
  %shl = shl nuw nsw i32 4096, %i.0.lcssa382
  %div383384 = lshr exact i32 %shl, 10
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.37, i32 noundef %div383384) #13
  br label %if.end28

do.end25:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xhci, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.38) #18
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.then22
  %page_shift = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 23
  %21 = ptrtoint ptr %page_shift to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 12, ptr %page_shift, align 4
  %page_size31 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 22
  %22 = ptrtoint ptr %page_size31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4096, ptr %page_size31, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.40, i32 noundef 4) #13
  %cap_regs = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 2
  %23 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cap_regs, align 8
  %hcs_params1 = getelementptr inbounds %struct.xhci_cap_regs, ptr %24, i32 0, i32 1
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hcs_params1) #13, !srcloc !298
  %26 = lshr i32 %25, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !300
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.41, i32 noundef %26) #13
  %27 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %op_regs, align 4
  %config_reg = getelementptr inbounds %struct.xhci_op_regs, ptr %28, i32 0, i32 9
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %config_reg) #13, !srcloc !298
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !301
  %30 = and i32 %29, 16777215
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %or = or i32 %31, %26
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.42, i32 noundef %or) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !302
  tail call void @arm_heavy_mb() #13
  %32 = tail call i32 @llvm.bswap.i32(i32 %or)
  %33 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %op_regs, align 4
  %config_reg52 = getelementptr inbounds %struct.xhci_op_regs, ptr %34, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %config_reg52, i32 %32) #13, !srcloc !303
  %and.i = lshr i32 %flags, 5
  %35 = and i32 %and.i, 256
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 2056, ptr noundef nonnull %dma, i32 noundef %flags, i32 noundef %35) #13
  %dcbaa = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 28
  %36 = ptrtoint ptr %dcbaa to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %dcbaa, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end28.fail_crit_edge, label %if.end56

if.end28.fail_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end56:                                         ; preds = %if.end28
  %37 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma, align 4
  %dma58 = getelementptr inbounds %struct.xhci_device_context_array, ptr %call.i, i32 0, i32 1
  %39 = ptrtoint ptr %dma58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %dma58, align 8
  %40 = ptrtoint ptr %dcbaa to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dcbaa, align 8
  %dma60 = getelementptr inbounds %struct.xhci_device_context_array, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %dma60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma60, align 8
  %conv = zext i32 %43 to i64
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.43, i64 noundef %conv, ptr noundef %41) #13
  %44 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma, align 4
  %46 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %op_regs, align 4
  %dcbaa_ptr = getelementptr inbounds %struct.xhci_op_regs, ptr %47, i32 0, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !304
  call void @arm_heavy_mb() #13
  %48 = call i32 @llvm.bswap.i32(i32 %45) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dcbaa_ptr, i32 %48) #13, !srcloc !303
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !305
  call void @arm_heavy_mb() #13
  %add.ptr.i.i = getelementptr i8, ptr %dcbaa_ptr, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #13, !srcloc !303
  %49 = ptrtoint ptr %page_size31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %page_size31, align 8
  %call65 = call ptr @dma_pool_create(ptr noundef nonnull @.str.44, ptr noundef %4, i32 noundef 4096, i32 noundef 4096, i32 noundef %50) #13
  %segment_pool = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 45
  %51 = ptrtoint ptr %segment_pool to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call65, ptr %segment_pool, align 8
  %52 = ptrtoint ptr %page_size31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %page_size31, align 8
  %call67 = call ptr @dma_pool_create(ptr noundef nonnull @.str.45, ptr noundef %4, i32 noundef 2112, i32 noundef 64, i32 noundef %53) #13
  %device_pool = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 44
  %54 = ptrtoint ptr %device_pool to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call67, ptr %device_pool, align 4
  %55 = ptrtoint ptr %segment_pool to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %segment_pool, align 8
  %tobool69.not = icmp eq ptr %56, null
  %tobool71.not = icmp eq ptr %call67, null
  %or.cond357 = select i1 %tobool69.not, i1 true, i1 %tobool71.not
  br i1 %or.cond357, label %if.end56.fail_crit_edge, label %if.end73

if.end56.fail_crit_edge:                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end73:                                         ; preds = %if.end56
  %call74 = call ptr @dma_pool_create(ptr noundef nonnull @.str.46, ptr noundef %4, i32 noundef 256, i32 noundef 16, i32 noundef 0) #13
  %small_streams_pool = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 46
  %57 = ptrtoint ptr %small_streams_pool to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call74, ptr %small_streams_pool, align 4
  %call75 = call ptr @dma_pool_create(ptr noundef nonnull @.str.47, ptr noundef %4, i32 noundef 1024, i32 noundef 16, i32 noundef 0) #13
  %medium_streams_pool = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 47
  %58 = ptrtoint ptr %medium_streams_pool to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call75, ptr %medium_streams_pool, align 8
  %59 = ptrtoint ptr %small_streams_pool to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %small_streams_pool, align 4
  %tobool77.not = icmp eq ptr %60, null
  %tobool80.not = icmp eq ptr %call75, null
  %or.cond358 = select i1 %tobool77.not, i1 true, i1 %tobool80.not
  br i1 %or.cond358, label %if.end73.fail_crit_edge, label %if.end82

if.end73.fail_crit_edge:                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end82:                                         ; preds = %if.end73
  %call83 = call ptr @xhci_ring_alloc(ptr noundef %xhci, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 0, i32 noundef %flags)
  %cmd_ring = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 29
  %61 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call83, ptr %cmd_ring, align 4
  %tobool85.not = icmp eq ptr %call83, null
  br i1 %tobool85.not, label %if.end82.fail_crit_edge, label %if.end87

if.end82.fail_crit_edge:                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end87:                                         ; preds = %if.end82
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.48, ptr noundef nonnull %call83) #13
  %62 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cmd_ring, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %dma90 = getelementptr inbounds %struct.xhci_segment, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %dma90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma90, align 4
  %conv91 = zext i32 %67 to i64
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.49, i64 noundef %conv91) #13
  %68 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %op_regs, align 4
  %cmd_ring93 = getelementptr inbounds %struct.xhci_op_regs, ptr %69, i32 0, i32 6
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmd_ring93) #13, !srcloc !298
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %add.ptr.i.i360 = getelementptr i32, ptr %cmd_ring93, i32 1
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i360) #13, !srcloc !298
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !307
  %72 = lshr i32 %70, 24
  %73 = and i32 %72, 63
  %74 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cmd_ring, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %dma98 = getelementptr inbounds %struct.xhci_segment, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %dma98 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma98, align 4
  %80 = and i32 %79, -64
  %or101369 = or i32 %80, %73
  %cycle_state = getelementptr inbounds %struct.xhci_ring, ptr %75, i32 0, i32 7
  %81 = ptrtoint ptr %cycle_state to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cycle_state, align 4
  %or104370 = or i32 %or101369, %82
  %or104 = zext i32 %or104370 to i64
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.50, i64 noundef %or104) #13
  %83 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %op_regs, align 4
  %cmd_ring106 = getelementptr inbounds %struct.xhci_op_regs, ptr %84, i32 0, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !304
  call void @arm_heavy_mb() #13
  %85 = call i32 @llvm.bswap.i32(i32 %or104370) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmd_ring106, i32 %85) #13, !srcloc !303
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !305
  call void @arm_heavy_mb() #13
  %add.ptr.i.i363 = getelementptr i8, ptr %cmd_ring106, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i363, i32 0) #13, !srcloc !303
  %call107 = call ptr @xhci_alloc_command_with_ctx(ptr noundef %xhci, i1 noundef zeroext true, i32 noundef %flags)
  %lpm_command = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 41
  %86 = ptrtoint ptr %lpm_command to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call107, ptr %lpm_command, align 4
  %tobool109.not = icmp eq ptr %call107, null
  br i1 %tobool109.not, label %if.end87.fail_crit_edge, label %if.end111

if.end87.fail_crit_edge:                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end111:                                        ; preds = %if.end87
  %cmd_ring_reserved_trbs = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 32
  %87 = ptrtoint ptr %cmd_ring_reserved_trbs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cmd_ring_reserved_trbs, align 4
  %inc112 = add i32 %88, 1
  store i32 %inc112, ptr %cmd_ring_reserved_trbs, align 4
  %89 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cap_regs, align 8
  %db_off = getelementptr inbounds %struct.xhci_cap_regs, ptr %90, i32 0, i32 5
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %db_off) #13, !srcloc !298
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !308
  %92 = and i32 %91, -50331649
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.51, i32 noundef %93) #13
  %94 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cap_regs, align 8
  %add.ptr = getelementptr i8, ptr %95, i32 %93
  %dba = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 5
  %96 = ptrtoint ptr %dba to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr, ptr %dba, align 4
  %run_regs = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 4
  %97 = ptrtoint ptr %run_regs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %run_regs, align 8
  %ir_set = getelementptr inbounds %struct.xhci_run_regs, ptr %98, i32 0, i32 2
  %ir_set121 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 6
  %99 = ptrtoint ptr %ir_set121 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %ir_set, ptr %ir_set121, align 8
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.52) #13
  %call122 = call ptr @xhci_ring_alloc(ptr noundef %xhci, i32 noundef 1, i32 noundef 1, i32 noundef 6, i32 noundef 0, i32 noundef %flags)
  %event_ring = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 36
  %100 = ptrtoint ptr %event_ring to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call122, ptr %event_ring, align 8
  %tobool124.not = icmp eq ptr %call122, null
  br i1 %tobool124.not, label %if.end111.fail_crit_edge, label %if.end126

if.end111.fail_crit_edge:                         ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end126:                                        ; preds = %if.end111
  %call127 = call fastcc i32 @xhci_check_trb_in_td_math(ptr noundef %xhci)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %if.end126.fail_crit_edge, label %if.end131

if.end126.fail_crit_edge:                         ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end131:                                        ; preds = %if.end126
  %101 = ptrtoint ptr %event_ring to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %event_ring, align 8
  %erst = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 37
  %num_segs.i = getelementptr inbounds %struct.xhci_ring, ptr %102, i32 0, i32 10
  %103 = ptrtoint ptr %num_segs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_segs.i, align 4
  %mul.i = shl i32 %104, 4
  %105 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %xhci, align 8
  %sysdev.i = getelementptr inbounds %struct.usb_bus, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sysdev.i, align 4
  %erst_dma_addr.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 37, i32 2
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %108, i32 noundef %mul.i, ptr noundef %erst_dma_addr.i, i32 noundef %flags, i32 noundef %35) #13
  %109 = ptrtoint ptr %erst to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i.i, ptr %erst, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end131.fail_crit_edge, label %if.end.i

if.end131.fail_crit_edge:                         ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end.i:                                         ; preds = %if.end131
  %110 = ptrtoint ptr %num_segs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_segs.i, align 4
  %num_entries.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 37, i32 1
  %112 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %num_entries.i, align 4
  %113 = load i32, ptr %num_segs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp22.not.i = icmp eq i32 %113, 0
  br i1 %cmp22.not.i, label %if.end.i.if.end136_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end136_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end136

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %seg.0.in24.i = phi ptr [ %next.i, %for.body.i.for.body.i_crit_edge ], [ %102, %if.end.i.for.body.i_crit_edge ]
  %val.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %114 = ptrtoint ptr %seg.0.in24.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %seg.0.i = load ptr, ptr %seg.0.in24.i, align 4
  %115 = ptrtoint ptr %erst to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %erst, align 4
  %arrayidx.i = getelementptr %struct.xhci_erst_entry, ptr %116, i32 %val.023.i
  %dma.i = getelementptr inbounds %struct.xhci_segment, ptr %seg.0.i, i32 0, i32 2
  %117 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma.i, align 4
  %conv.i = zext i32 %118 to i64
  %119 = call i64 @llvm.bswap.i64(i64 %conv.i) #13
  %120 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %arrayidx.i, align 8
  %seg_size.i = getelementptr %struct.xhci_erst_entry, ptr %116, i32 %val.023.i, i32 1
  %121 = ptrtoint ptr %seg_size.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 65536, ptr %seg_size.i, align 8
  %rsvd.i = getelementptr %struct.xhci_erst_entry, ptr %116, i32 %val.023.i, i32 2
  %122 = ptrtoint ptr %rsvd.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %rsvd.i, align 4
  %next.i = getelementptr inbounds %struct.xhci_segment, ptr %seg.0.i, i32 0, i32 1
  %inc.i = add nuw i32 %val.023.i, 1
  %123 = ptrtoint ptr %num_segs.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_segs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %124
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end136_crit_edge

for.body.i.if.end136_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end136

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end136:                                        ; preds = %for.body.i.if.end136_crit_edge, %if.end.i.if.end136_crit_edge
  %125 = ptrtoint ptr %ir_set121 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ir_set121, align 8
  %erst_size = getelementptr inbounds %struct.xhci_intr_reg, ptr %126, i32 0, i32 2
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %erst_size) #13, !srcloc !298
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !309
  %128 = and i32 %127, 65535
  %129 = or i32 %128, 16777216
  %130 = call i32 @llvm.bswap.i32(i32 %129)
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.53, i32 noundef %130) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !310
  call void @arm_heavy_mb() #13
  %131 = ptrtoint ptr %ir_set121 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ir_set121, align 8
  %erst_size149 = getelementptr inbounds %struct.xhci_intr_reg, ptr %132, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %erst_size149, i32 %129) #13, !srcloc !303
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.54) #13
  %133 = ptrtoint ptr %erst_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %erst_dma_addr.i, align 4
  %conv151 = zext i32 %134 to i64
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.55, i64 noundef %conv151) #13
  %135 = ptrtoint ptr %ir_set121 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ir_set121, align 8
  %erst_base = getelementptr inbounds %struct.xhci_intr_reg, ptr %136, i32 0, i32 4
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %erst_base) #13, !srcloc !298
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %add.ptr.i.i364 = getelementptr i32, ptr %erst_base, i32 1
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i364) #13, !srcloc !298
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !307
  %139 = lshr i32 %137, 24
  %140 = and i32 %139, 15
  %141 = ptrtoint ptr %erst_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %erst_dma_addr.i, align 4
  %143 = and i32 %142, -16
  %or159371 = or i32 %143, %140
  %or159 = zext i32 %or159371 to i64
  %144 = ptrtoint ptr %ir_set121 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ir_set121, align 8
  %erst_base161 = getelementptr inbounds %struct.xhci_intr_reg, ptr %145, i32 0, i32 4
  call fastcc void @xhci_write_64(i64 noundef %or159, ptr noundef %erst_base161)
  call fastcc void @xhci_set_hc_event_deq(ptr noundef %xhci)
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.56) #13
  %isoc_bei_interval = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 20
  %146 = ptrtoint ptr %isoc_bei_interval to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 32, ptr %isoc_bei_interval, align 8
  %uglygep = getelementptr i8, ptr %xhci, i32 448
  %147 = call ptr @memset(ptr %uglygep, i32 0, i32 1024)
  br label %for.body173

for.body173:                                      ; preds = %for.body173.for.body173_crit_edge, %if.end136
  %i.2378 = phi i32 [ %inc185, %for.body173.for.body173_crit_edge ], [ 0, %if.end136 ]
  %arrayidx174 = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 55, i32 3, i32 5, i32 %i.2378
  %148 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %arrayidx174, align 4
  %arrayidx177 = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 56, i32 3, i32 5, i32 %i.2378
  %149 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %arrayidx177, align 4
  %arrayidx180 = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 55, i32 3, i32 8, i32 %i.2378
  %150 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %arrayidx180, align 4
  %wait.i365 = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 55, i32 3, i32 8, i32 %i.2378, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i365, ptr noundef nonnull @.str.73, ptr noundef nonnull @init_completion.__key) #13
  %arrayidx183 = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 56, i32 3, i32 9, i32 %i.2378
  %151 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %arrayidx183, align 4
  %wait.i366 = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 56, i32 3, i32 9, i32 %i.2378, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i366, ptr noundef nonnull @.str.73, ptr noundef nonnull @init_completion.__key) #13
  %inc185 = add nuw nsw i32 %i.2378, 1
  %exitcond.not = icmp eq i32 %inc185, 31
  br i1 %exitcond.not, label %for.end186, label %for.body173.for.body173_crit_edge

for.body173.for.body173_crit_edge:                ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body173

for.end186:                                       ; preds = %for.body173
  %call187 = call fastcc i32 @scratchpad_alloc(ptr noundef %xhci, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end190, label %for.end186.fail_crit_edge

for.end186.fail_crit_edge:                        ; preds = %for.end186
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end190:                                        ; preds = %for.end186
  %call191 = call fastcc i32 @xhci_setup_port_arrays(ptr noundef %xhci, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end194, label %if.end190.fail_crit_edge

if.end190.fail_crit_edge:                         ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end194:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #15
  %152 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %op_regs, align 4
  %dev_notification = getelementptr inbounds %struct.xhci_op_regs, ptr %153, i32 0, i32 5
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dev_notification) #13, !srcloc !298
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !311
  %155 = and i32 %154, 65535
  %156 = or i32 %155, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  call void @arm_heavy_mb() #13
  %157 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %op_regs, align 4
  %dev_notification207 = getelementptr inbounds %struct.xhci_op_regs, ptr %158, i32 0, i32 5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dev_notification207, i32 %156) #13, !srcloc !303
  br label %cleanup

fail:                                             ; preds = %if.end190.fail_crit_edge, %for.end186.fail_crit_edge, %if.end131.fail_crit_edge, %if.end126.fail_crit_edge, %if.end111.fail_crit_edge, %if.end87.fail_crit_edge, %if.end82.fail_crit_edge, %if.end73.fail_crit_edge, %if.end56.fail_crit_edge, %if.end28.fail_crit_edge
  %call208 = call i32 @xhci_halt(ptr noundef %xhci) #13
  %call209 = call i32 @xhci_reset(ptr noundef %xhci) #13
  call void @xhci_mem_cleanup(ptr noundef %xhci)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end194
  %retval.0 = phi i32 [ -12, %fail ], [ 0, %if.end194 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_handle_command_timeout(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_write_64(i64 noundef %val, ptr noundef %regs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !304
  tail call void @arm_heavy_mb() #13
  %conv.i = trunc i64 %val to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %regs, i32 %0) #13, !srcloc !303
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !305
  tail call void @arm_heavy_mb() #13
  %shr.i = lshr i64 %val, 32
  %conv3.i = trunc i64 %shr.i to i32
  %1 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #13
  %add.ptr.i = getelementptr i8, ptr %regs, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #13, !srcloc !303
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xhci_check_trb_in_td_math(ptr noundef %xhci) unnamed_addr #0 align 64 {
entry:
  %simple_test_vector = alloca [8 x %struct.anon.78], align 4
  %complex_test_vector = alloca [8 x %struct.anon.79], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %simple_test_vector) #13
  %0 = getelementptr inbounds i8, ptr %simple_test_vector, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 56)
  %2 = ptrtoint ptr %simple_test_vector to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %simple_test_vector, align 4
  %result_seg = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 0, i32 1
  %3 = ptrtoint ptr %result_seg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %result_seg, align 4
  %arrayinit.element = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 1
  %event_ring = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 36
  %4 = ptrtoint ptr %event_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_ring, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dma = getelementptr inbounds %struct.xhci_segment, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 4
  %sub = add i32 %9, -16
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %arrayinit.element, align 4
  %result_seg2 = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 1, i32 1
  %11 = ptrtoint ptr %result_seg2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %result_seg2, align 4
  %arrayinit.element3 = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 2
  %12 = load ptr, ptr %5, align 4
  %dma7 = getelementptr inbounds %struct.xhci_segment, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dma7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma7, align 4
  %sub8 = add i32 %14, -1
  %15 = ptrtoint ptr %arrayinit.element3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub8, ptr %arrayinit.element3, align 4
  %result_seg9 = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 2, i32 1
  %16 = ptrtoint ptr %result_seg9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %result_seg9, align 4
  %arrayinit.element10 = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 3
  %17 = load ptr, ptr %5, align 4
  %dma14 = getelementptr inbounds %struct.xhci_segment, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dma14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma14, align 4
  %20 = ptrtoint ptr %arrayinit.element10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayinit.element10, align 4
  %result_seg15 = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 3, i32 1
  %21 = ptrtoint ptr %result_seg15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %result_seg15, align 4
  %arrayinit.element18 = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 4
  %22 = load ptr, ptr %5, align 4
  %dma22 = getelementptr inbounds %struct.xhci_segment, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dma22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma22, align 4
  %add = add i32 %24, 4080
  %25 = ptrtoint ptr %arrayinit.element18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %arrayinit.element18, align 4
  %result_seg23 = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 4, i32 1
  %26 = load ptr, ptr %5, align 4
  %27 = ptrtoint ptr %result_seg23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %result_seg23, align 4
  %arrayinit.element26 = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 5
  %dma30 = getelementptr inbounds %struct.xhci_segment, ptr %26, i32 0, i32 2
  %28 = ptrtoint ptr %dma30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma30, align 4
  %add32 = add i32 %29, 4081
  %30 = ptrtoint ptr %arrayinit.element26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add32, ptr %arrayinit.element26, align 4
  %result_seg33 = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 5, i32 1
  %31 = ptrtoint ptr %result_seg33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %result_seg33, align 4
  %arrayinit.element34 = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 6
  %32 = load ptr, ptr %5, align 4
  %dma38 = getelementptr inbounds %struct.xhci_segment, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dma38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma38, align 4
  %add39 = add i32 %34, 4096
  %35 = ptrtoint ptr %arrayinit.element34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add39, ptr %arrayinit.element34, align 4
  %result_seg40 = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 6, i32 1
  %36 = ptrtoint ptr %result_seg40 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %result_seg40, align 4
  %arrayinit.element41 = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 7
  %37 = ptrtoint ptr %arrayinit.element41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %arrayinit.element41, align 4
  %result_seg43 = getelementptr inbounds %struct.anon.78, ptr %simple_test_vector, i32 7, i32 1
  %38 = ptrtoint ptr %result_seg43 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %result_seg43, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %complex_test_vector) #13
  %39 = call ptr @memset(ptr %complex_test_vector, i32 255, i32 160)
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %5, align 4
  %42 = ptrtoint ptr %complex_test_vector to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %complex_test_vector, align 4
  %start_trb = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 0, i32 1
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %41, align 4
  %45 = ptrtoint ptr %start_trb to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %start_trb, align 4
  %end_trb = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 0, i32 2
  %46 = load ptr, ptr %5, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %arrayidx = getelementptr %union.xhci_trb, ptr %48, i32 255
  %49 = ptrtoint ptr %end_trb to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arrayidx, ptr %end_trb, align 4
  %input_dma52 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 0, i32 3
  %cmd_ring = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 29
  %50 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cmd_ring, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %dma54 = getelementptr inbounds %struct.xhci_segment, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dma54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma54, align 4
  %56 = ptrtoint ptr %input_dma52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %input_dma52, align 4
  %result_seg55 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 0, i32 4
  %57 = ptrtoint ptr %result_seg55 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %result_seg55, align 4
  %arrayinit.element56 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 1
  %58 = load ptr, ptr %5, align 4
  %59 = ptrtoint ptr %arrayinit.element56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %arrayinit.element56, align 4
  %start_trb60 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 1, i32 1
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %58, align 4
  %62 = ptrtoint ptr %start_trb60 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %start_trb60, align 4
  %end_trb64 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 1, i32 2
  %63 = load ptr, ptr %51, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %arrayidx68 = getelementptr %union.xhci_trb, ptr %65, i32 255
  %66 = ptrtoint ptr %end_trb64 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx68, ptr %end_trb64, align 4
  %input_dma69 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 1, i32 3
  %dma72 = getelementptr inbounds %struct.xhci_segment, ptr %63, i32 0, i32 2
  %67 = ptrtoint ptr %dma72 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma72, align 4
  %69 = ptrtoint ptr %input_dma69 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %input_dma69, align 4
  %result_seg73 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 1, i32 4
  %70 = ptrtoint ptr %result_seg73 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %result_seg73, align 4
  %arrayinit.element74 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 2
  %71 = load ptr, ptr %5, align 4
  %72 = ptrtoint ptr %arrayinit.element74 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %arrayinit.element74, align 4
  %start_trb78 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 2, i32 1
  %73 = load ptr, ptr %51, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %76 = ptrtoint ptr %start_trb78 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %start_trb78, align 4
  %end_trb82 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 2, i32 2
  %arrayidx86 = getelementptr %union.xhci_trb, ptr %75, i32 255
  %77 = ptrtoint ptr %end_trb82 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx86, ptr %end_trb82, align 4
  %input_dma87 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 2, i32 3
  %78 = load ptr, ptr %51, align 4
  %dma90 = getelementptr inbounds %struct.xhci_segment, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %dma90 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma90, align 4
  %81 = ptrtoint ptr %input_dma87 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %input_dma87, align 4
  %result_seg91 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 2, i32 4
  %82 = ptrtoint ptr %result_seg91 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %result_seg91, align 4
  %arrayinit.element92 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 3
  %83 = load ptr, ptr %5, align 4
  %84 = ptrtoint ptr %arrayinit.element92 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %arrayinit.element92, align 4
  %start_trb96 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 3, i32 1
  %85 = load ptr, ptr %5, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %88 = ptrtoint ptr %start_trb96 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %start_trb96, align 4
  %end_trb101 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 3, i32 2
  %89 = load ptr, ptr %5, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %arrayidx105 = getelementptr %union.xhci_trb, ptr %91, i32 3
  %92 = ptrtoint ptr %end_trb101 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %arrayidx105, ptr %end_trb101, align 4
  %input_dma106 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 3, i32 3
  %93 = load ptr, ptr %5, align 4
  %dma109 = getelementptr inbounds %struct.xhci_segment, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %dma109 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma109, align 4
  %add110 = add i32 %95, 64
  %96 = ptrtoint ptr %input_dma106 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add110, ptr %input_dma106, align 4
  %result_seg111 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 3, i32 4
  %97 = ptrtoint ptr %result_seg111 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %result_seg111, align 4
  %arrayinit.element112 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 4
  %98 = load ptr, ptr %5, align 4
  %99 = ptrtoint ptr %arrayinit.element112 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %arrayinit.element112, align 4
  %start_trb116 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 4, i32 1
  %100 = load ptr, ptr %5, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %arrayidx120 = getelementptr %union.xhci_trb, ptr %102, i32 3
  %103 = ptrtoint ptr %start_trb116 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %arrayidx120, ptr %start_trb116, align 4
  %end_trb121 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 4, i32 2
  %104 = load ptr, ptr %5, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %arrayidx125 = getelementptr %union.xhci_trb, ptr %106, i32 6
  %107 = ptrtoint ptr %end_trb121 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx125, ptr %end_trb121, align 4
  %input_dma126 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 4, i32 3
  %108 = load ptr, ptr %5, align 4
  %dma129 = getelementptr inbounds %struct.xhci_segment, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %dma129 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dma129, align 4
  %add130 = add i32 %110, 32
  %111 = ptrtoint ptr %input_dma126 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %add130, ptr %input_dma126, align 4
  %result_seg131 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 4, i32 4
  %112 = ptrtoint ptr %result_seg131 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %result_seg131, align 4
  %arrayinit.element132 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 5
  %113 = load ptr, ptr %5, align 4
  %114 = ptrtoint ptr %arrayinit.element132 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %arrayinit.element132, align 4
  %start_trb136 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 5, i32 1
  %115 = load ptr, ptr %5, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %arrayidx140 = getelementptr %union.xhci_trb, ptr %117, i32 253
  %118 = ptrtoint ptr %start_trb136 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %arrayidx140, ptr %start_trb136, align 4
  %end_trb141 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 5, i32 2
  %119 = load ptr, ptr %5, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %arrayidx145 = getelementptr %union.xhci_trb, ptr %121, i32 1
  %122 = ptrtoint ptr %end_trb141 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %arrayidx145, ptr %end_trb141, align 4
  %input_dma146 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 5, i32 3
  %123 = load ptr, ptr %5, align 4
  %dma149 = getelementptr inbounds %struct.xhci_segment, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %dma149 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dma149, align 4
  %add150 = add i32 %125, 32
  %126 = ptrtoint ptr %input_dma146 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add150, ptr %input_dma146, align 4
  %result_seg151 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 5, i32 4
  %127 = ptrtoint ptr %result_seg151 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %result_seg151, align 4
  %arrayinit.element152 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 6
  %128 = load ptr, ptr %5, align 4
  %129 = ptrtoint ptr %arrayinit.element152 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %arrayinit.element152, align 4
  %start_trb156 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 6, i32 1
  %130 = load ptr, ptr %5, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %arrayidx160 = getelementptr %union.xhci_trb, ptr %132, i32 253
  %133 = ptrtoint ptr %start_trb156 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %arrayidx160, ptr %start_trb156, align 4
  %end_trb161 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 6, i32 2
  %134 = load ptr, ptr %5, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %arrayidx165 = getelementptr %union.xhci_trb, ptr %136, i32 1
  %137 = ptrtoint ptr %end_trb161 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %arrayidx165, ptr %end_trb161, align 4
  %input_dma166 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 6, i32 3
  %138 = load ptr, ptr %5, align 4
  %dma169 = getelementptr inbounds %struct.xhci_segment, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %dma169 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dma169, align 4
  %add170 = add i32 %140, 4032
  %141 = ptrtoint ptr %input_dma166 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add170, ptr %input_dma166, align 4
  %result_seg171 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 6, i32 4
  %142 = ptrtoint ptr %result_seg171 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %result_seg171, align 4
  %arrayinit.element172 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 7
  %143 = load ptr, ptr %5, align 4
  %144 = ptrtoint ptr %arrayinit.element172 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %143, ptr %arrayinit.element172, align 4
  %start_trb176 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 7, i32 1
  %145 = load ptr, ptr %5, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %arrayidx180 = getelementptr %union.xhci_trb, ptr %147, i32 253
  %148 = ptrtoint ptr %start_trb176 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %arrayidx180, ptr %start_trb176, align 4
  %end_trb181 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 7, i32 2
  %149 = load ptr, ptr %5, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %arrayidx185 = getelementptr %union.xhci_trb, ptr %151, i32 1
  %152 = ptrtoint ptr %end_trb181 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %arrayidx185, ptr %end_trb181, align 4
  %input_dma186 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 7, i32 3
  %153 = load ptr, ptr %51, align 4
  %dma189 = getelementptr inbounds %struct.xhci_segment, ptr %153, i32 0, i32 2
  %154 = ptrtoint ptr %dma189 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %dma189, align 4
  %add190 = add i32 %155, 32
  %156 = ptrtoint ptr %input_dma186 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %add190, ptr %input_dma186, align 4
  %result_seg191 = getelementptr inbounds %struct.anon.79, ptr %complex_test_vector, i32 7, i32 4
  %157 = ptrtoint ptr %result_seg191 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %result_seg191, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0299, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond.for.body208_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.for.body208_crit_edge:                   ; preds = %for.cond
  br label %for.body208

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.0299 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %158 = ptrtoint ptr %event_ring to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %event_ring, align 8
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %arrayidx200 = getelementptr %union.xhci_trb, ptr %163, i32 255
  %arrayidx201 = getelementptr [8 x %struct.anon.78], ptr %simple_test_vector, i32 0, i32 %i.0299
  %164 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx201, align 4
  %result_seg204 = getelementptr [8 x %struct.anon.78], ptr %simple_test_vector, i32 0, i32 %i.0299, i32 1
  %166 = ptrtoint ptr %result_seg204 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %result_seg204, align 4
  %call = tail call fastcc i32 @xhci_test_trb_in_td(ptr noundef %xhci, ptr noundef %161, ptr noundef %163, ptr noundef %arrayidx200, i32 noundef %165, ptr noundef %167, ptr noundef nonnull @.str.76, i32 noundef %i.0299)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp205 = icmp slt i32 %call, 0
  br i1 %cmp205, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond206:                                      ; preds = %for.body208
  %inc224 = add nuw nsw i32 %i.1300, 1
  %exitcond303.not = icmp eq i32 %inc224, 8
  br i1 %exitcond303.not, label %do.body, label %for.cond206.for.body208_crit_edge

for.cond206.for.body208_crit_edge:                ; preds = %for.cond206
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body208

for.body208:                                      ; preds = %for.cond206.for.body208_crit_edge, %for.cond.for.body208_crit_edge
  %i.1300 = phi i32 [ %inc224, %for.cond206.for.body208_crit_edge ], [ 0, %for.cond.for.body208_crit_edge ]
  %arrayidx209 = getelementptr [8 x %struct.anon.79], ptr %complex_test_vector, i32 0, i32 %i.1300
  %168 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx209, align 4
  %start_trb212 = getelementptr [8 x %struct.anon.79], ptr %complex_test_vector, i32 0, i32 %i.1300, i32 1
  %170 = ptrtoint ptr %start_trb212 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %start_trb212, align 4
  %end_trb214 = getelementptr [8 x %struct.anon.79], ptr %complex_test_vector, i32 0, i32 %i.1300, i32 2
  %172 = ptrtoint ptr %end_trb214 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %end_trb214, align 4
  %input_dma216 = getelementptr [8 x %struct.anon.79], ptr %complex_test_vector, i32 0, i32 %i.1300, i32 3
  %174 = ptrtoint ptr %input_dma216 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %input_dma216, align 4
  %result_seg218 = getelementptr [8 x %struct.anon.79], ptr %complex_test_vector, i32 0, i32 %i.1300, i32 4
  %176 = ptrtoint ptr %result_seg218 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %result_seg218, align 4
  %call219 = tail call fastcc i32 @xhci_test_trb_in_td(ptr noundef %xhci, ptr noundef %169, ptr noundef %171, ptr noundef %173, i32 noundef %175, ptr noundef %177, ptr noundef nonnull @.str.77, i32 noundef %i.1300)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %cmp220 = icmp slt i32 %call219, 0
  br i1 %cmp220, label %for.body208.cleanup_crit_edge, label %for.cond206

for.body208.cleanup_crit_edge:                    ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %for.cond206
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_check_trb_in_td_math.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_check_trb_in_td_math, %if.then229)) #13
          to label %cleanup [label %if.then229], !srcloc !272

if.then229:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %178 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %xhci, align 8
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_check_trb_in_td_math.__UNIQUE_ID_ddebug374, ptr noundef %181, ptr noundef nonnull @.str.79) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then229, %do.body, %for.body208.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then229 ], [ 0, %do.body ], [ -1, %for.body208.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %complex_test_vector) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %simple_test_vector) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_set_hc_event_deq(ptr noundef %xhci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %event_ring = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 36
  %0 = ptrtoint ptr %event_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_ring, align 8
  %deq_seg = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %deq_seg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %deq_seg, align 4
  %dequeue = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dequeue, align 4
  %call = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %3, ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xhci, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.91) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ir_set = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 6
  %10 = ptrtoint ptr %ir_set to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ir_set, align 8
  %erst_dequeue = getelementptr inbounds %struct.xhci_intr_reg, ptr %11, i32 0, i32 5
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %erst_dequeue) #13, !srcloc !298
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  %add.ptr.i.i = getelementptr i32, ptr %erst_dequeue, i32 1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !298
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !307
  %14 = lshr i32 %12, 24
  %15 = and i32 %14, 7
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.93) #13
  %16 = and i32 %call, -16
  %or19 = or i32 %15, %16
  %17 = ptrtoint ptr %ir_set to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ir_set, align 8
  %erst_dequeue7 = getelementptr inbounds %struct.xhci_intr_reg, ptr %18, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !304
  tail call void @arm_heavy_mb() #13
  %19 = tail call i32 @llvm.bswap.i32(i32 %or19) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %erst_dequeue7, i32 %19) #13, !srcloc !303
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !305
  tail call void @arm_heavy_mb() #13
  %add.ptr.i.i18 = getelementptr i8, ptr %erst_dequeue7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 0) #13, !srcloc !303
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scratchpad_alloc(ptr noundef %xhci, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xhci, align 8
  %sysdev = getelementptr inbounds %struct.usb_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysdev, align 4
  %hcs_params2 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 8
  %4 = ptrtoint ptr %hcs_params2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hcs_params2, align 8
  %shr = lshr i32 %5, 16
  %and = and i32 %shr, 992
  %shr2 = lshr i32 %5, 27
  %or = or i32 %and, %shr2
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.94, i32 noundef %or) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %entry.cleanup64_crit_edge, label %if.end

entry.cleanup64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup64

if.end:                                           ; preds = %entry
  %or.i = or i32 %flags, 256
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i1.i.i, label %if.end.kzalloc_node.exit_crit_edge, label %if.end.i2.i.i, !prof !271

if.end.kzalloc_node.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end.i2.i.i:                                    ; preds = %if.end
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i2.i.i.kzalloc_node.exit_crit_edge

if.end.i2.i.i.kzalloc_node.exit_crit_edge:        ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end5.i.i.i:                                    ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc_node.exit

kzalloc_node.exit:                                ; preds = %if.end5.i.i.i, %if.end.i2.i.i.kzalloc_node.exit_crit_edge, %if.end.kzalloc_node.exit_crit_edge
  %retval.0.i3.i.i = phi i32 [ 0, %if.end.kzalloc_node.exit_crit_edge ], [ 3, %if.end.i2.i.i.kzalloc_node.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i3.i.i, i32 7
  %6 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef %or.i, i32 noundef 12) #16
  %scratchpad = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 38
  %8 = ptrtoint ptr %scratchpad to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %scratchpad, align 4
  %tobool7.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool7.not, label %kzalloc_node.exit.cleanup64_crit_edge, label %if.end9

kzalloc_node.exit.cleanup64_crit_edge:            ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup64

if.end9:                                          ; preds = %kzalloc_node.exit
  %mul = shl nuw nsw i32 %or, 3
  %sp_dma = getelementptr inbounds %struct.xhci_scratchpad, ptr %call.i.i.i, i32 0, i32 1
  %and.i = lshr i32 %flags, 5
  %9 = and i32 %and.i, 256
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %sp_dma, i32 noundef %flags, i32 noundef %9) #13
  %10 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scratchpad, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %11, align 4
  %13 = load ptr, ptr %scratchpad, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %if.end9.fail_sp2_crit_edge, label %if.end7.i.i

if.end9.fail_sp2_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_sp2

if.end7.i.i:                                      ; preds = %if.end9
  %16 = shl nuw nsw i32 %or, 2
  %call.i.i.i115 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef %or.i) #17
  %17 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %scratchpad, align 4
  %sp_buffers = getelementptr inbounds %struct.xhci_scratchpad, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %sp_buffers to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i.i115, ptr %sp_buffers, align 4
  %20 = load ptr, ptr %scratchpad, align 4
  %sp_buffers22 = getelementptr inbounds %struct.xhci_scratchpad, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %sp_buffers22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sp_buffers22, align 4
  %tobool23.not = icmp eq ptr %22, null
  br i1 %tobool23.not, label %if.end7.i.i.fail_sp3_crit_edge, label %for.body.preheader

if.end7.i.i.fail_sp3_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_sp3

for.body.preheader:                               ; preds = %if.end7.i.i
  %sp_dma27 = getelementptr inbounds %struct.xhci_scratchpad, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %sp_dma27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sp_dma27, align 4
  %conv = zext i32 %24 to i64
  %25 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %dcbaa = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 28
  %26 = ptrtoint ptr %dcbaa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dcbaa, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %25, ptr %27, align 8
  %page_size = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0122 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #13
  %29 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %dma, align 4, !annotation !279
  %30 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %page_size, align 8
  %call.i117 = call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %31, ptr noundef nonnull %dma, i32 noundef %flags, i32 noundef %9) #13
  %tobool30.not = icmp eq ptr %call.i117, null
  br i1 %tobool30.not, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0122)
  %cmp42124.not = icmp eq i32 %i.0122, 0
  br i1 %cmp42124.not, label %cleanup.for.end54_crit_edge, label %cleanup.for.body44_crit_edge

cleanup.for.body44_crit_edge:                     ; preds = %cleanup
  br label %for.body44

cleanup.for.end54_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end54

for.inc:                                          ; preds = %for.body
  %32 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma, align 4
  %conv33 = zext i32 %33 to i64
  %34 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %scratchpad, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %arrayidx36 = getelementptr i64, ptr %37, i32 %i.0122
  %38 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv33, ptr %arrayidx36, align 8
  %39 = load ptr, ptr %scratchpad, align 4
  %sp_buffers38 = getelementptr inbounds %struct.xhci_scratchpad, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %sp_buffers38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sp_buffers38, align 4
  %arrayidx39 = getelementptr ptr, ptr %41, i32 %i.0122
  %42 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i117, ptr %arrayidx39, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #13
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %or
  br i1 %exitcond.not, label %for.inc.cleanup64_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup64_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup64

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %cleanup.for.body44_crit_edge
  %i.1125.in = phi i32 [ %i.1125, %for.body44.for.body44_crit_edge ], [ %i.0122, %cleanup.for.body44_crit_edge ]
  %i.1125 = add nsw i32 %i.1125.in, -1
  %43 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %page_size, align 8
  %45 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scratchpad, align 4
  %sp_buffers47 = getelementptr inbounds %struct.xhci_scratchpad, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %sp_buffers47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sp_buffers47, align 4
  %arrayidx48 = getelementptr ptr, ptr %48, i32 %i.1125
  %49 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx48, align 4
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %46, align 4
  %arrayidx51 = getelementptr i64, ptr %52, i32 %i.1125
  %53 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx51, align 8
  %conv52 = trunc i64 %54 to i32
  call void @dma_free_attrs(ptr noundef %3, i32 noundef %44, ptr noundef %50, i32 noundef %conv52, i32 noundef 0) #13
  %cmp42 = icmp sgt i32 %i.1125.in, 1
  br i1 %cmp42, label %for.body44.for.body44_crit_edge, label %for.body44.for.end54_crit_edge

for.body44.for.end54_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end54

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body44

for.end54:                                        ; preds = %for.body44.for.end54_crit_edge, %cleanup.for.end54_crit_edge
  %55 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %scratchpad, align 4
  %sp_buffers56 = getelementptr inbounds %struct.xhci_scratchpad, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %sp_buffers56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sp_buffers56, align 4
  call void @kfree(ptr noundef %58) #13
  br label %fail_sp3

fail_sp3:                                         ; preds = %for.end54, %if.end7.i.i.fail_sp3_crit_edge
  %59 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %scratchpad, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %sp_dma61 = getelementptr inbounds %struct.xhci_scratchpad, ptr %60, i32 0, i32 1
  %63 = ptrtoint ptr %sp_dma61 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sp_dma61, align 4
  call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %62, i32 noundef %64, i32 noundef 0) #13
  br label %fail_sp2

fail_sp2:                                         ; preds = %fail_sp3, %if.end9.fail_sp2_crit_edge
  %65 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %scratchpad, align 4
  call void @kfree(ptr noundef %66) #13
  %67 = ptrtoint ptr %scratchpad to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %scratchpad, align 4
  br label %cleanup64

cleanup64:                                        ; preds = %fail_sp2, %for.inc.cleanup64_crit_edge, %kzalloc_node.exit.cleanup64_crit_edge, %entry.cleanup64_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup64_crit_edge ], [ -12, %kzalloc_node.exit.cleanup64_crit_edge ], [ -12, %fail_sp2 ], [ 0, %for.inc.cleanup64_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xhci_setup_port_arrays(ptr noundef %xhci, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hcs_params1 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 7
  %0 = ptrtoint ptr %hcs_params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hcs_params1, align 4
  %shr = lshr i32 %1, 24
  %and = and i32 %shr, 127
  %or.i = or i32 %flags, 256
  %2 = mul nuw nsw i32 %and, 20
  %call.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef %or.i) #17
  %hw_ports = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 54
  %3 = ptrtoint ptr %hw_ports to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i.i, ptr %hw_ports, align 8
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp445.not = icmp eq i32 %and, 0
  br i1 %cmp445.not, label %for.cond.preheader.if.end7.i.i213_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end7.i.i213_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i.i213

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %op_regs = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0446 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_regs, align 4
  %port_status_base = getelementptr inbounds %struct.xhci_op_regs, ptr %5, i32 0, i32 11
  %mul = shl i32 %i.0446, 2
  %add.ptr = getelementptr i32, ptr %port_status_base, i32 %mul
  %6 = ptrtoint ptr %hw_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_ports, align 8
  %arrayidx = getelementptr %struct.xhci_port, ptr %7, i32 %i.0446
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %arrayidx, align 4
  %9 = load ptr, ptr %hw_ports, align 8
  %hw_portnum = getelementptr %struct.xhci_port, ptr %9, i32 %i.0446, i32 1
  %10 = ptrtoint ptr %hw_portnum to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.0446, ptr %hw_portnum, align 4
  %inc = add nuw nsw i32 %i.0446, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %for.body.if.end7.i.i213_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.end7.i.i213_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i.i213

if.end7.i.i213:                                   ; preds = %for.body.if.end7.i.i213_crit_edge, %for.cond.preheader.if.end7.i.i213_crit_edge
  %cmp445.not466 = phi i1 [ true, %for.cond.preheader.if.end7.i.i213_crit_edge ], [ %cmp445.not, %for.body.if.end7.i.i213_crit_edge ]
  %11 = mul nuw nsw i32 %and, 412
  %call.i.i.i212 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef %or.i) #17
  %rh_bw = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 43
  %12 = ptrtoint ptr %rh_bw to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i.i212, ptr %rh_bw, align 8
  %tobool10.not = icmp eq ptr %call.i.i.i212, null
  br i1 %tobool10.not, label %if.end7.i.i213.cleanup_crit_edge, label %for.cond13.preheader

if.end7.i.i213.cleanup_crit_edge:                 ; preds = %if.end7.i.i213
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond13.preheader:                             ; preds = %if.end7.i.i213
  br i1 %cmp445.not466, label %for.cond13.preheader.for.end30_crit_edge, label %for.cond13.preheader.for.body15_crit_edge

for.cond13.preheader.for.body15_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body15

for.cond13.preheader.for.end30_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end30

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.cond13.preheader.for.body15_crit_edge
  %i.1449 = phi i32 [ %inc29, %for.body15.for.body15_crit_edge ], [ 0, %for.cond13.preheader.for.body15_crit_edge ]
  %13 = ptrtoint ptr %rh_bw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rh_bw, align 8
  %arrayidx17 = getelementptr %struct.xhci_root_port_bw_info, ptr %14, i32 %i.1449
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %arrayidx17, ptr %arrayidx17, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx17, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx17, ptr %prev.i, align 4
  %17 = load ptr, ptr %rh_bw, align 8
  %endpoints = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %endpoints to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %endpoints, ptr %endpoints, align 4
  %prev.i216 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i216 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %endpoints, ptr %prev.i216, align 4
  %endpoints.1 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 1, i32 1
  %20 = ptrtoint ptr %endpoints.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %endpoints.1, ptr %endpoints.1, align 4
  %prev.i216.1 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 1, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i216.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %endpoints.1, ptr %prev.i216.1, align 4
  %endpoints.2 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 2, i32 1
  %22 = ptrtoint ptr %endpoints.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %endpoints.2, ptr %endpoints.2, align 4
  %prev.i216.2 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 2, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i216.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %endpoints.2, ptr %prev.i216.2, align 4
  %endpoints.3 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 3, i32 1
  %24 = ptrtoint ptr %endpoints.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %endpoints.3, ptr %endpoints.3, align 4
  %prev.i216.3 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 3, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i216.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %endpoints.3, ptr %prev.i216.3, align 4
  %endpoints.4 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 4, i32 1
  %26 = ptrtoint ptr %endpoints.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %endpoints.4, ptr %endpoints.4, align 4
  %prev.i216.4 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 4, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i216.4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %endpoints.4, ptr %prev.i216.4, align 4
  %endpoints.5 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 5, i32 1
  %28 = ptrtoint ptr %endpoints.5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %endpoints.5, ptr %endpoints.5, align 4
  %prev.i216.5 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 5, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i216.5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %endpoints.5, ptr %prev.i216.5, align 4
  %endpoints.6 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 6, i32 1
  %30 = ptrtoint ptr %endpoints.6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %endpoints.6, ptr %endpoints.6, align 4
  %prev.i216.6 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 6, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i216.6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %endpoints.6, ptr %prev.i216.6, align 4
  %endpoints.7 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 7, i32 1
  %32 = ptrtoint ptr %endpoints.7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %endpoints.7, ptr %endpoints.7, align 4
  %prev.i216.7 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 7, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i216.7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %endpoints.7, ptr %prev.i216.7, align 4
  %endpoints.8 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 8, i32 1
  %34 = ptrtoint ptr %endpoints.8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %endpoints.8, ptr %endpoints.8, align 4
  %prev.i216.8 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 8, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i216.8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %endpoints.8, ptr %prev.i216.8, align 4
  %endpoints.9 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 9, i32 1
  %36 = ptrtoint ptr %endpoints.9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %endpoints.9, ptr %endpoints.9, align 4
  %prev.i216.9 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 9, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i216.9 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %endpoints.9, ptr %prev.i216.9, align 4
  %endpoints.10 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 10, i32 1
  %38 = ptrtoint ptr %endpoints.10 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %endpoints.10, ptr %endpoints.10, align 4
  %prev.i216.10 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 10, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i216.10 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %endpoints.10, ptr %prev.i216.10, align 4
  %endpoints.11 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 11, i32 1
  %40 = ptrtoint ptr %endpoints.11 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %endpoints.11, ptr %endpoints.11, align 4
  %prev.i216.11 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 11, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i216.11 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %endpoints.11, ptr %prev.i216.11, align 4
  %endpoints.12 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 12, i32 1
  %42 = ptrtoint ptr %endpoints.12 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %endpoints.12, ptr %endpoints.12, align 4
  %prev.i216.12 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 12, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i216.12 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %endpoints.12, ptr %prev.i216.12, align 4
  %endpoints.13 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 13, i32 1
  %44 = ptrtoint ptr %endpoints.13 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %endpoints.13, ptr %endpoints.13, align 4
  %prev.i216.13 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 13, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i216.13 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %endpoints.13, ptr %prev.i216.13, align 4
  %endpoints.14 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 14, i32 1
  %46 = ptrtoint ptr %endpoints.14 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %endpoints.14, ptr %endpoints.14, align 4
  %prev.i216.14 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 14, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i216.14 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %endpoints.14, ptr %prev.i216.14, align 4
  %endpoints.15 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 15, i32 1
  %48 = ptrtoint ptr %endpoints.15 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %endpoints.15, ptr %endpoints.15, align 4
  %prev.i216.15 = getelementptr %struct.xhci_root_port_bw_info, ptr %17, i32 %i.1449, i32 2, i32 1, i32 15, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i216.15 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %endpoints.15, ptr %prev.i216.15, align 4
  %inc29 = add nuw nsw i32 %i.1449, 1
  %exitcond458.not = icmp eq i32 %inc29, %and
  br i1 %exitcond458.not, label %for.body15.for.end30_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body15

for.body15.for.end30_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end30

for.end30:                                        ; preds = %for.body15.for.end30_crit_edge, %for.cond13.preheader.for.end30_crit_edge
  %cap_regs = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 2
  %50 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cap_regs, align 8
  %add.ptr.i = getelementptr i8, ptr %51, i32 16
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !298
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !313
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp2.i = icmp eq i32 %52, -1
  br i1 %cmp2.i, label %for.end30.do.end_crit_edge, label %if.end.i

for.end30.do.end_crit_edge:                       ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.i:                                         ; preds = %for.end30
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #13
  %54 = lshr i32 %53, 14
  %shl.i = and i32 %54, 262140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %tobool4.not.i = icmp eq i32 %shl.i, 0
  br i1 %tobool4.not.i, label %if.end.i.do.end_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  br label %do.body.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.body.i:                                        ; preds = %if.end24.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %offset.1.i = phi i32 [ %add.i, %if.end24.i.do.body.i_crit_edge ], [ %shl.i, %if.end.i.do.body.i_crit_edge ]
  %add.ptr10.i = getelementptr i8, ptr %51, i32 %offset.1.i
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #13, !srcloc !298
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !314
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp14.i = icmp eq i32 %55, -1
  br i1 %cmp14.i, label %do.body.i.do.end_crit_edge, label %if.end16.i

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end16.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.1.i)
  %cmp17.not.i = icmp ne i32 %offset.1.i, 0
  %and21.i = and i32 %56, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and21.i)
  %cmp22.i = icmp eq i32 %and21.i, 2
  %or.cond.i = select i1 %cmp17.not.i, i1 %cmp22.i, i1 false
  br i1 %or.cond.i, label %if.end16.i.while.body_crit_edge, label %if.end24.i

if.end16.i.while.body_crit_edge:                  ; preds = %if.end16.i
  br label %while.body

if.end24.i:                                       ; preds = %if.end16.i
  %shr25.i = lshr i32 %56, 8
  %and26.i = and i32 %shr25.i, 255
  %shl27.i = shl nuw nsw i32 %and26.i, 2
  %add.i = add i32 %shl27.i, %offset.1.i
  %tobool28.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool28.not.i, label %if.end24.i.do.end_crit_edge, label %if.end24.i.do.body.i_crit_edge

if.end24.i.do.body.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.end24.i.do.end_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %if.end24.i.do.end_crit_edge, %do.body.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %for.end30.do.end_crit_edge
  %57 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %xhci, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.95) #18
  br label %cleanup

while.body:                                       ; preds = %xhci_find_next_ext_cap.exit239.while.body_crit_edge, %if.end16.i.while.body_crit_edge
  %cap_count.0452 = phi i32 [ %inc38, %xhci_find_next_ext_cap.exit239.while.body_crit_edge ], [ 0, %if.end16.i.while.body_crit_edge ]
  %offset.0451 = phi i32 [ %offset.1.i223, %xhci_find_next_ext_cap.exit239.while.body_crit_edge ], [ %offset.1.i, %if.end16.i.while.body_crit_edge ]
  %inc38 = add i32 %cap_count.0452, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %offset.0451)
  %cond443 = icmp eq i32 %offset.0451, 16
  br i1 %cond443, label %if.then.i, label %while.body.do.body.i226.preheader_crit_edge

while.body.do.body.i226.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i226.preheader

if.then.i:                                        ; preds = %while.body
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !298
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !313
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %cmp2.i218 = icmp eq i32 %61, -1
  br i1 %cmp2.i218, label %if.then.i.while.end_crit_edge, label %if.end.i221

if.then.i.while.end_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end.i221:                                      ; preds = %if.then.i
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #13
  %63 = lshr i32 %62, 14
  %shl.i219 = and i32 %63, 262140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i219)
  %tobool4.not.i220 = icmp eq i32 %shl.i219, 0
  br i1 %tobool4.not.i220, label %if.end.i221.while.end_crit_edge, label %if.end.i221.do.body.i226.preheader_crit_edge

if.end.i221.do.body.i226.preheader_crit_edge:     ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i226.preheader

if.end.i221.while.end_crit_edge:                  ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.body.i226.preheader:                           ; preds = %if.end.i221.do.body.i226.preheader_crit_edge, %while.body.do.body.i226.preheader_crit_edge
  %offset.1.i223.ph = phi i32 [ %offset.0451, %while.body.do.body.i226.preheader_crit_edge ], [ %shl.i219, %if.end.i221.do.body.i226.preheader_crit_edge ]
  br label %do.body.i226

do.body.i226:                                     ; preds = %if.end24.i237.do.body.i226_crit_edge, %do.body.i226.preheader
  %offset.1.i223 = phi i32 [ %add.i235, %if.end24.i237.do.body.i226_crit_edge ], [ %offset.1.i223.ph, %do.body.i226.preheader ]
  %add.ptr10.i224 = getelementptr i8, ptr %51, i32 %offset.1.i223
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i224) #13, !srcloc !298
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !314
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp14.i225 = icmp eq i32 %64, -1
  br i1 %cmp14.i225, label %do.body.i226.while.end_crit_edge, label %if.end16.i231

do.body.i226.while.end_crit_edge:                 ; preds = %do.body.i226
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end16.i231:                                    ; preds = %do.body.i226
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1.i223, i32 %offset.0451)
  %cmp17.not.i227 = icmp ne i32 %offset.1.i223, %offset.0451
  %and21.i228 = and i32 %65, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and21.i228)
  %cmp22.i229 = icmp eq i32 %and21.i228, 2
  %or.cond.i230 = select i1 %cmp17.not.i227, i1 %cmp22.i229, i1 false
  br i1 %or.cond.i230, label %xhci_find_next_ext_cap.exit239, label %if.end24.i237

if.end24.i237:                                    ; preds = %if.end16.i231
  %shr25.i232 = lshr i32 %65, 8
  %and26.i233 = and i32 %shr25.i232, 255
  %shl27.i234 = shl nuw nsw i32 %and26.i233, 2
  %add.i235 = add i32 %shl27.i234, %offset.1.i223
  %tobool28.not.i236 = icmp eq i32 %and26.i233, 0
  br i1 %tobool28.not.i236, label %if.end24.i237.while.end_crit_edge, label %if.end24.i237.do.body.i226_crit_edge

if.end24.i237.do.body.i226_crit_edge:             ; preds = %if.end24.i237
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i226

if.end24.i237.while.end_crit_edge:                ; preds = %if.end24.i237
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

xhci_find_next_ext_cap.exit239:                   ; preds = %if.end16.i231
  %tobool37.not = icmp eq i32 %offset.1.i223, 0
  br i1 %tobool37.not, label %xhci_find_next_ext_cap.exit239.while.end_crit_edge, label %xhci_find_next_ext_cap.exit239.while.body_crit_edge

xhci_find_next_ext_cap.exit239.while.body_crit_edge: ; preds = %xhci_find_next_ext_cap.exit239
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

xhci_find_next_ext_cap.exit239.while.end_crit_edge: ; preds = %xhci_find_next_ext_cap.exit239
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %xhci_find_next_ext_cap.exit239.while.end_crit_edge, %if.end24.i237.while.end_crit_edge, %do.body.i226.while.end_crit_edge, %if.end.i221.while.end_crit_edge, %if.then.i.while.end_crit_edge
  %66 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc38, i32 4) #13
  %67 = extractvalue { i32, i1 } %66, 1
  br i1 %67, label %kcalloc_node.exit280.thread, label %if.end7.i.i278, !prof !285

kcalloc_node.exit280.thread:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %ext_caps434 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 58
  %68 = ptrtoint ptr %ext_caps434 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %ext_caps434, align 8
  br label %cleanup

if.end7.i.i278:                                   ; preds = %while.end
  %69 = extractvalue { i32, i1 } %66, 0
  %call.i.i.i277 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %69, i32 noundef %or.i) #17
  %ext_caps = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 58
  %70 = ptrtoint ptr %ext_caps to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i.i.i277, ptr %ext_caps, align 8
  %tobool43.not = icmp eq ptr %call.i.i.i277, null
  br i1 %tobool43.not, label %if.end7.i.i278.cleanup_crit_edge, label %if.end45

if.end7.i.i278.cleanup_crit_edge:                 ; preds = %if.end7.i.i278
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end45:                                         ; preds = %if.end7.i.i278
  %71 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc38, i32 8) #13
  %72 = extractvalue { i32, i1 } %71, 1
  br i1 %72, label %kcalloc_node.exit321.thread, label %if.end7.i.i319, !prof !285

kcalloc_node.exit321.thread:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %port_caps441 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 60
  %73 = ptrtoint ptr %port_caps441 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %port_caps441, align 8
  br label %cleanup

if.end7.i.i319:                                   ; preds = %if.end45
  %74 = extractvalue { i32, i1 } %71, 0
  %call.i.i.i318 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %74, i32 noundef %or.i) #17
  %port_caps = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 60
  %75 = ptrtoint ptr %port_caps to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i.i.i318, ptr %port_caps, align 8
  %tobool49.not = icmp eq ptr %call.i.i.i318, null
  br i1 %tobool49.not, label %if.end7.i.i319.cleanup_crit_edge, label %while.body54.lr.ph

if.end7.i.i319.cleanup_crit_edge:                 ; preds = %if.end7.i.i319
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body54.lr.ph:                               ; preds = %if.end7.i.i319
  %num_ports56 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 55, i32 1
  %num_ports57 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 56, i32 1
  br label %while.body54

while.body54:                                     ; preds = %xhci_find_next_ext_cap.exit346.while.body54_crit_edge, %while.body54.lr.ph
  %offset.1454 = phi i32 [ %offset.1.i, %while.body54.lr.ph ], [ %offset.1.i330, %xhci_find_next_ext_cap.exit346.while.body54_crit_edge ]
  %add.ptr55 = getelementptr i8, ptr %51, i32 %offset.1454
  tail call fastcc void @xhci_add_in_port(ptr noundef %xhci, i32 noundef %and, ptr noundef %add.ptr55, i32 noundef %inc38)
  %76 = ptrtoint ptr %num_ports56 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_ports56, align 4
  %78 = ptrtoint ptr %num_ports57 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_ports57, align 4
  %add = add i32 %79, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %and)
  %cmp58 = icmp eq i32 %add, %and
  br i1 %cmp58, label %while.body54.while.end62_crit_edge, label %if.end60

while.body54.while.end62_crit_edge:               ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end62

if.end60:                                         ; preds = %while.body54
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %offset.1454)
  %cond = icmp eq i32 %offset.1454, 16
  br i1 %cond, label %if.then.i324, label %if.end60.do.body.i333.preheader_crit_edge

if.end60.do.body.i333.preheader_crit_edge:        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i333.preheader

if.then.i324:                                     ; preds = %if.end60
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !298
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !313
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp2.i323 = icmp eq i32 %80, -1
  br i1 %cmp2.i323, label %if.then.i324.while.end62_crit_edge, label %if.end.i327

if.then.i324.while.end62_crit_edge:               ; preds = %if.then.i324
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end62

if.end.i327:                                      ; preds = %if.then.i324
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #13
  %82 = lshr i32 %81, 14
  %shl.i325 = and i32 %82, 262140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i325)
  %tobool4.not.i326 = icmp eq i32 %shl.i325, 0
  br i1 %tobool4.not.i326, label %if.end.i327.while.end62_crit_edge, label %if.end.i327.do.body.i333.preheader_crit_edge

if.end.i327.do.body.i333.preheader_crit_edge:     ; preds = %if.end.i327
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i333.preheader

if.end.i327.while.end62_crit_edge:                ; preds = %if.end.i327
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end62

do.body.i333.preheader:                           ; preds = %if.end.i327.do.body.i333.preheader_crit_edge, %if.end60.do.body.i333.preheader_crit_edge
  %offset.1.i330.ph = phi i32 [ %offset.1454, %if.end60.do.body.i333.preheader_crit_edge ], [ %shl.i325, %if.end.i327.do.body.i333.preheader_crit_edge ]
  br label %do.body.i333

do.body.i333:                                     ; preds = %if.end24.i344.do.body.i333_crit_edge, %do.body.i333.preheader
  %offset.1.i330 = phi i32 [ %add.i342, %if.end24.i344.do.body.i333_crit_edge ], [ %offset.1.i330.ph, %do.body.i333.preheader ]
  %add.ptr10.i331 = getelementptr i8, ptr %51, i32 %offset.1.i330
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i331) #13, !srcloc !298
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !314
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp14.i332 = icmp eq i32 %83, -1
  br i1 %cmp14.i332, label %do.body.i333.while.end62_crit_edge, label %if.end16.i338

do.body.i333.while.end62_crit_edge:               ; preds = %do.body.i333
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end62

if.end16.i338:                                    ; preds = %do.body.i333
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1.i330, i32 %offset.1454)
  %cmp17.not.i334 = icmp ne i32 %offset.1.i330, %offset.1454
  %and21.i335 = and i32 %84, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and21.i335)
  %cmp22.i336 = icmp eq i32 %and21.i335, 2
  %or.cond.i337 = select i1 %cmp17.not.i334, i1 %cmp22.i336, i1 false
  br i1 %or.cond.i337, label %xhci_find_next_ext_cap.exit346, label %if.end24.i344

if.end24.i344:                                    ; preds = %if.end16.i338
  %shr25.i339 = lshr i32 %84, 8
  %and26.i340 = and i32 %shr25.i339, 255
  %shl27.i341 = shl nuw nsw i32 %and26.i340, 2
  %add.i342 = add i32 %shl27.i341, %offset.1.i330
  %tobool28.not.i343 = icmp eq i32 %and26.i340, 0
  br i1 %tobool28.not.i343, label %if.end24.i344.while.end62_crit_edge, label %if.end24.i344.do.body.i333_crit_edge

if.end24.i344.do.body.i333_crit_edge:             ; preds = %if.end24.i344
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i333

if.end24.i344.while.end62_crit_edge:              ; preds = %if.end24.i344
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end62

xhci_find_next_ext_cap.exit346:                   ; preds = %if.end16.i338
  %tobool53.not = icmp eq i32 %offset.1.i330, 0
  br i1 %tobool53.not, label %xhci_find_next_ext_cap.exit346.while.end62_crit_edge, label %xhci_find_next_ext_cap.exit346.while.body54_crit_edge

xhci_find_next_ext_cap.exit346.while.body54_crit_edge: ; preds = %xhci_find_next_ext_cap.exit346
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body54

xhci_find_next_ext_cap.exit346.while.end62_crit_edge: ; preds = %xhci_find_next_ext_cap.exit346
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end62

while.end62:                                      ; preds = %xhci_find_next_ext_cap.exit346.while.end62_crit_edge, %if.end24.i344.while.end62_crit_edge, %do.body.i333.while.end62_crit_edge, %if.end.i327.while.end62_crit_edge, %if.then.i324.while.end62_crit_edge, %while.body54.while.end62_crit_edge
  %usb2_rhub63 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 55
  %num_ports64 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 55, i32 1
  %85 = ptrtoint ptr %num_ports64 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_ports64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp65 = icmp eq i32 %86, 0
  br i1 %cmp65, label %land.lhs.true, label %while.end62.if.end76_crit_edge

while.end62.if.end76_crit_edge:                   ; preds = %while.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

land.lhs.true:                                    ; preds = %while.end62
  %num_ports67 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 56, i32 1
  %87 = ptrtoint ptr %num_ports67 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_ports67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp68 = icmp eq i32 %88, 0
  br i1 %cmp68, label %do.end72, label %land.lhs.true.if.end76_crit_edge

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

do.end72:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %89 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %xhci, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.99) #18
  br label %cleanup

if.end76:                                         ; preds = %land.lhs.true.if.end76_crit_edge, %while.end62.if.end76_crit_edge
  %usb3_rhub79 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 56
  %num_ports80 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 56, i32 1
  %93 = ptrtoint ptr %num_ports80 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_ports80, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.101, i32 noundef %86, i32 noundef %94) #13
  %95 = ptrtoint ptr %num_ports80 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_ports80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %96)
  %cmp83 = icmp ugt i32 %96, 15
  br i1 %cmp83, label %if.then84, label %if.end76.if.end87_crit_edge

if.end76.if.end87_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then84:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.102, i32 noundef 15) #13
  %97 = ptrtoint ptr %num_ports80 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 15, ptr %num_ports80, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end76.if.end87_crit_edge
  %98 = ptrtoint ptr %num_ports64 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_ports64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %99)
  %cmp90 = icmp ugt i32 %99, 31
  br i1 %cmp90, label %if.end94.thread, label %if.end94

if.end94.thread:                                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.103, i32 noundef 31) #13
  %100 = ptrtoint ptr %num_ports64 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 31, ptr %num_ports64, align 4
  br label %if.end.i347

if.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i = icmp eq i32 %99, 0
  br i1 %tobool.not.i, label %if.end94.xhci_create_rhub_port_array.exit_crit_edge, label %if.end94.if.end.i347_crit_edge

if.end94.if.end.i347_crit_edge:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i347

if.end94.xhci_create_rhub_port_array.exit_crit_edge: ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_create_rhub_port_array.exit

if.end.i347:                                      ; preds = %if.end94.if.end.i347_crit_edge, %if.end94.thread
  %101 = phi i32 [ 31, %if.end94.thread ], [ %99, %if.end94.if.end.i347_crit_edge ]
  %102 = shl nuw nsw i32 %101, 2
  %call.i.i.i.i352 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %102, i32 noundef %or.i) #17
  %103 = ptrtoint ptr %usb2_rhub63 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i.i.i.i352, ptr %usb2_rhub63, align 4
  %tobool5.not.i = icmp eq ptr %call.i.i.i.i352, null
  br i1 %tobool5.not.i, label %if.end.i347.xhci_create_rhub_port_array.exit_crit_edge, label %for.cond.preheader.i

if.end.i347.xhci_create_rhub_port_array.exit_crit_edge: ; preds = %if.end.i347
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_create_rhub_port_array.exit

for.cond.preheader.i:                             ; preds = %if.end.i347
  %104 = ptrtoint ptr %hcs_params1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hcs_params1, align 4
  %106 = and i32 %105, 2130706432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp52.not.i = icmp eq i32 %106, 0
  br i1 %cmp52.not.i, label %for.cond.preheader.i.xhci_create_rhub_port_array.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.xhci_create_rhub_port_array.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_create_rhub_port_array.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.054.i = phi i32 [ %inc26.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %port_index.053.i = phi i32 [ %port_index.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %107 = ptrtoint ptr %hw_ports to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw_ports, align 8
  %rhub8.i = getelementptr %struct.xhci_port, ptr %108, i32 %i.054.i, i32 3
  %109 = ptrtoint ptr %rhub8.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rhub8.i, align 4
  %cmp9.not.i = icmp eq ptr %110, %usb2_rhub63
  br i1 %cmp9.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %hcd_portnum.i = getelementptr %struct.xhci_port, ptr %108, i32 %i.054.i, i32 2
  %111 = ptrtoint ptr %hcd_portnum.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %hcd_portnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %112)
  %cmp12.i = icmp eq i32 %112, 255
  br i1 %cmp12.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end14.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %113 = ptrtoint ptr %hcd_portnum.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %port_index.053.i, ptr %hcd_portnum.i, align 4
  %114 = ptrtoint ptr %hw_ports to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw_ports, align 8
  %arrayidx19.i = getelementptr %struct.xhci_port, ptr %115, i32 %i.054.i
  %116 = ptrtoint ptr %usb2_rhub63 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %usb2_rhub63, align 4
  %arrayidx21.i = getelementptr ptr, ptr %117, i32 %port_index.053.i
  %118 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %arrayidx19.i, ptr %arrayidx21.i, align 4
  %inc.i = add i32 %port_index.053.i, 1
  %119 = ptrtoint ptr %num_ports64 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_ports64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %120)
  %cmp23.i = icmp eq i32 %inc.i, %120
  br i1 %cmp23.i, label %if.end14.i.xhci_create_rhub_port_array.exit_crit_edge, label %if.end14.i.for.inc.i_crit_edge

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end14.i.xhci_create_rhub_port_array.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_create_rhub_port_array.exit

for.inc.i:                                        ; preds = %if.end14.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %port_index.1.i = phi i32 [ %port_index.053.i, %for.body.i.for.inc.i_crit_edge ], [ %port_index.053.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %inc.i, %if.end14.i.for.inc.i_crit_edge ]
  %inc26.i = add nuw nsw i32 %i.054.i, 1
  %121 = ptrtoint ptr %hcs_params1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %hcs_params1, align 4
  %shr.i = lshr i32 %122, 24
  %and.i = and i32 %shr.i, 127
  %cmp.i = icmp ult i32 %inc26.i, %and.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.xhci_create_rhub_port_array.exit_crit_edge

for.inc.i.xhci_create_rhub_port_array.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xhci_create_rhub_port_array.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

xhci_create_rhub_port_array.exit:                 ; preds = %for.inc.i.xhci_create_rhub_port_array.exit_crit_edge, %if.end14.i.xhci_create_rhub_port_array.exit_crit_edge, %for.cond.preheader.i.xhci_create_rhub_port_array.exit_crit_edge, %if.end.i347.xhci_create_rhub_port_array.exit_crit_edge, %if.end94.xhci_create_rhub_port_array.exit_crit_edge
  %123 = ptrtoint ptr %num_ports80 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_ports80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i354 = icmp eq i32 %124, 0
  br i1 %tobool.not.i354, label %xhci_create_rhub_port_array.exit.cleanup_crit_edge, label %if.end.i356

xhci_create_rhub_port_array.exit.cleanup_crit_edge: ; preds = %xhci_create_rhub_port_array.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i356:                                      ; preds = %xhci_create_rhub_port_array.exit
  %125 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %124, i32 4) #13
  %126 = extractvalue { i32, i1 } %125, 1
  br i1 %126, label %kcalloc_node.exit.thread.i357, label %if.end7.i.i.i396, !prof !285

kcalloc_node.exit.thread.i357:                    ; preds = %if.end.i356
  call void @__sanitizer_cov_trace_pc() #15
  %127 = ptrtoint ptr %usb3_rhub79 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %usb3_rhub79, align 4
  br label %cleanup

if.end7.i.i.i396:                                 ; preds = %if.end.i356
  %128 = extractvalue { i32, i1 } %125, 0
  %call.i.i.i.i395 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %128, i32 noundef %or.i) #17
  %129 = ptrtoint ptr %usb3_rhub79 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i.i.i.i395, ptr %usb3_rhub79, align 4
  %tobool5.not.i398 = icmp eq ptr %call.i.i.i.i395, null
  br i1 %tobool5.not.i398, label %if.end7.i.i.i396.cleanup_crit_edge, label %for.cond.preheader.i402

if.end7.i.i.i396.cleanup_crit_edge:               ; preds = %if.end7.i.i.i396
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.i402:                          ; preds = %if.end7.i.i.i396
  %130 = ptrtoint ptr %hcs_params1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %hcs_params1, align 4
  %132 = and i32 %131, 2130706432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp52.not.i401 = icmp eq i32 %132, 0
  br i1 %cmp52.not.i401, label %for.cond.preheader.i402.cleanup_crit_edge, label %for.cond.preheader.i402.for.body.i409_crit_edge

for.cond.preheader.i402.for.body.i409_crit_edge:  ; preds = %for.cond.preheader.i402
  br label %for.body.i409

for.cond.preheader.i402.cleanup_crit_edge:        ; preds = %for.cond.preheader.i402
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i409:                                    ; preds = %for.inc.i423.for.body.i409_crit_edge, %for.cond.preheader.i402.for.body.i409_crit_edge
  %i.054.i405 = phi i32 [ %inc26.i419, %for.inc.i423.for.body.i409_crit_edge ], [ 0, %for.cond.preheader.i402.for.body.i409_crit_edge ]
  %port_index.053.i406 = phi i32 [ %port_index.1.i418, %for.inc.i423.for.body.i409_crit_edge ], [ 0, %for.cond.preheader.i402.for.body.i409_crit_edge ]
  %133 = ptrtoint ptr %hw_ports to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hw_ports, align 8
  %rhub8.i407 = getelementptr %struct.xhci_port, ptr %134, i32 %i.054.i405, i32 3
  %135 = ptrtoint ptr %rhub8.i407 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rhub8.i407, align 4
  %cmp9.not.i408 = icmp eq ptr %136, %usb3_rhub79
  br i1 %cmp9.not.i408, label %lor.lhs.false.i412, label %for.body.i409.for.inc.i423_crit_edge

for.body.i409.for.inc.i423_crit_edge:             ; preds = %for.body.i409
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i423

lor.lhs.false.i412:                               ; preds = %for.body.i409
  %hcd_portnum.i410 = getelementptr %struct.xhci_port, ptr %134, i32 %i.054.i405, i32 2
  %137 = ptrtoint ptr %hcd_portnum.i410 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %hcd_portnum.i410, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %138)
  %cmp12.i411 = icmp eq i32 %138, 255
  br i1 %cmp12.i411, label %lor.lhs.false.i412.for.inc.i423_crit_edge, label %if.end14.i417

lor.lhs.false.i412.for.inc.i423_crit_edge:        ; preds = %lor.lhs.false.i412
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i423

if.end14.i417:                                    ; preds = %lor.lhs.false.i412
  %139 = ptrtoint ptr %hcd_portnum.i410 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %port_index.053.i406, ptr %hcd_portnum.i410, align 4
  %140 = ptrtoint ptr %hw_ports to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw_ports, align 8
  %arrayidx19.i413 = getelementptr %struct.xhci_port, ptr %141, i32 %i.054.i405
  %142 = ptrtoint ptr %usb3_rhub79 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %usb3_rhub79, align 4
  %arrayidx21.i414 = getelementptr ptr, ptr %143, i32 %port_index.053.i406
  %144 = ptrtoint ptr %arrayidx21.i414 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %arrayidx19.i413, ptr %arrayidx21.i414, align 4
  %inc.i415 = add i32 %port_index.053.i406, 1
  %145 = ptrtoint ptr %num_ports80 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num_ports80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i415, i32 %146)
  %cmp23.i416 = icmp eq i32 %inc.i415, %146
  br i1 %cmp23.i416, label %if.end14.i417.cleanup_crit_edge, label %if.end14.i417.for.inc.i423_crit_edge

if.end14.i417.for.inc.i423_crit_edge:             ; preds = %if.end14.i417
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i423

if.end14.i417.cleanup_crit_edge:                  ; preds = %if.end14.i417
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.i423:                                     ; preds = %if.end14.i417.for.inc.i423_crit_edge, %lor.lhs.false.i412.for.inc.i423_crit_edge, %for.body.i409.for.inc.i423_crit_edge
  %port_index.1.i418 = phi i32 [ %port_index.053.i406, %for.body.i409.for.inc.i423_crit_edge ], [ %port_index.053.i406, %lor.lhs.false.i412.for.inc.i423_crit_edge ], [ %inc.i415, %if.end14.i417.for.inc.i423_crit_edge ]
  %inc26.i419 = add nuw nsw i32 %i.054.i405, 1
  %147 = ptrtoint ptr %hcs_params1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %hcs_params1, align 4
  %shr.i420 = lshr i32 %148, 24
  %and.i421 = and i32 %shr.i420, 127
  %cmp.i422 = icmp ult i32 %inc26.i419, %and.i421
  br i1 %cmp.i422, label %for.inc.i423.for.body.i409_crit_edge, label %for.inc.i423.cleanup_crit_edge

for.inc.i423.cleanup_crit_edge:                   ; preds = %for.inc.i423
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.i423.for.body.i409_crit_edge:             ; preds = %for.inc.i423
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i409

cleanup:                                          ; preds = %for.inc.i423.cleanup_crit_edge, %if.end14.i417.cleanup_crit_edge, %for.cond.preheader.i402.cleanup_crit_edge, %if.end7.i.i.i396.cleanup_crit_edge, %kcalloc_node.exit.thread.i357, %xhci_create_rhub_port_array.exit.cleanup_crit_edge, %do.end72, %if.end7.i.i319.cleanup_crit_edge, %kcalloc_node.exit321.thread, %if.end7.i.i278.cleanup_crit_edge, %kcalloc_node.exit280.thread, %do.end, %if.end7.i.i213.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end72 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i213.cleanup_crit_edge ], [ -12, %if.end7.i.i278.cleanup_crit_edge ], [ -12, %if.end7.i.i319.cleanup_crit_edge ], [ -12, %kcalloc_node.exit280.thread ], [ -12, %kcalloc_node.exit321.thread ], [ 0, %xhci_create_rhub_port_array.exit.cleanup_crit_edge ], [ 0, %kcalloc_node.exit.thread.i357 ], [ 0, %if.end7.i.i.i396.cleanup_crit_edge ], [ 0, %for.cond.preheader.i402.cleanup_crit_edge ], [ 0, %if.end14.i417.cleanup_crit_edge ], [ 0, %for.inc.i423.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_halt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_ring_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xhci_segment_alloc(ptr nocapture noundef readonly %xhci, i32 noundef %cycle_state, i32 noundef %max_packet, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #13
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma, align 4, !annotation !279
  %or.i = or i32 %flags, 256
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i1.i.i, label %entry.kzalloc_node.exit_crit_edge, label %if.end.i2.i.i, !prof !271

entry.kzalloc_node.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end.i2.i.i:                                    ; preds = %entry
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i2.i.i.kzalloc_node.exit_crit_edge

if.end.i2.i.i.kzalloc_node.exit_crit_edge:        ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end5.i.i.i:                                    ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc_node.exit

kzalloc_node.exit:                                ; preds = %if.end5.i.i.i, %if.end.i2.i.i.kzalloc_node.exit_crit_edge, %entry.kzalloc_node.exit_crit_edge
  %retval.0.i3.i.i = phi i32 [ 0, %entry.kzalloc_node.exit_crit_edge ], [ 3, %if.end.i2.i.i.kzalloc_node.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i3.i.i, i32 7
  %1 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef %or.i, i32 noundef 28) #16
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %kzalloc_node.exit.cleanup_crit_edge, label %if.end

kzalloc_node.exit.cleanup_crit_edge:              ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %kzalloc_node.exit
  %segment_pool = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 45
  %3 = ptrtoint ptr %segment_pool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %segment_pool, align 8
  %call.i = call ptr @dma_pool_alloc(ptr noundef %4, i32 noundef %or.i, ptr noundef nonnull %dma) #13
  %5 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %call.i.i.i, align 8
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call.i.i.i) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_packet)
  %tobool8.not = icmp eq i32 %max_packet, 0
  br i1 %tobool8.not, label %if.end7.if.end18_crit_edge, label %if.end5.i.i

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end5.i.i:                                      ; preds = %if.end7
  %call.i4.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %max_packet, i32 noundef %or.i) #17
  %bounce_buf = getelementptr inbounds %struct.xhci_segment, ptr %call.i.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i4.i.i, ptr %bounce_buf, align 8
  %tobool13.not = icmp eq ptr %call.i4.i.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end5.i.i.if.end18_crit_edge

if.end5.i.i.if.end18_crit_edge:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then14:                                        ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %segment_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %segment_pool, align 8
  %9 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i.i.i, align 8
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma, align 4
  call void @dma_pool_free(ptr noundef %8, ptr noundef %10, i32 noundef %12) #13
  call void @kfree(ptr noundef nonnull %call.i.i.i) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end5.i.i.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cycle_state)
  %cmp = icmp eq i32 %cycle_state, 0
  br i1 %cmp, label %if.end18.for.body_crit_edge, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end18.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %13 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i.i.i, align 8
  %control = getelementptr %union.xhci_trb, ptr %14, i32 %i.061, i32 0, i32 2
  %15 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %control, align 4
  %or = or i32 %16, 16777216
  store i32 %or, ptr %control, align 4
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body.if.end22_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end22:                                         ; preds = %for.body.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma, align 4
  %dma23 = getelementptr inbounds %struct.xhci_segment, ptr %call.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %dma23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dma23, align 8
  %next = getelementptr inbounds %struct.xhci_segment, ptr %call.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %next, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then14, %if.then6, %kzalloc_node.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i.i, %if.end22 ], [ null, %if.then14 ], [ null, %if.then6 ], [ null, %kzalloc_node.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_ring_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_maybe_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !271

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #13
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_ring_expansion(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_ring_expansion(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_context_change(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_free_virt_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_stop_endpoint_command_watchdog(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_alloc_virt_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_find_raw_port_number(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_setup_addressable_virt_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_debugfs_remove_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xhci_test_trb_in_td(ptr noundef %xhci, ptr noundef %input_seg, ptr noundef %start_trb, ptr noundef %end_trb, i32 noundef %input_dma, ptr noundef %result_seg, ptr noundef %test_name, i32 noundef %test_number) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %input_seg, ptr noundef %start_trb) #13
  %call1 = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %input_seg, ptr noundef %end_trb) #13
  %call3 = tail call ptr @trb_in_td(ptr noundef %xhci, ptr noundef %input_seg, ptr noundef %start_trb, ptr noundef %end_trb, i32 noundef %input_dma, i1 noundef zeroext false) #13
  %cmp.not = icmp eq ptr %call3, %result_seg
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv2 = zext i32 %call1 to i64
  %conv = zext i32 %call to i64
  %0 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xhci, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.80, ptr noundef %test_name, i32 noundef %test_number) #18
  %4 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xhci, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %conv12 = zext i32 %input_dma to i64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.83, ptr noundef %input_seg, i64 noundef %conv12) #18
  %8 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xhci, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.86, ptr noundef %start_trb, i64 noundef %conv, ptr noundef %end_trb, i64 noundef %conv2) #18
  %12 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xhci, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.89, ptr noundef %result_seg, ptr noundef %call3) #18
  %call25 = tail call ptr @trb_in_td(ptr noundef %xhci, ptr noundef %input_seg, ptr noundef %start_trb, ptr noundef %end_trb, i32 noundef %input_dma, i1 noundef zeroext true) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trb_in_td(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_add_in_port(ptr noundef %xhci, i32 noundef %num_ports, ptr noundef %addr, i32 noundef %max_caps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #13, !srcloc !298
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !315
  %shr = lshr i32 %1, 24
  %conv = trunc i32 %shr to i8
  %shr3 = lshr i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %cmp = icmp eq i32 %shr, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %usb3_rhub = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 56
  %conv8 = and i32 %shr3, 255
  %2 = add nsw i32 %conv8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %2)
  %3 = icmp ult i32 %2, 15
  %shl = shl nuw nsw i32 %shr3, 4
  %spec.select = select i1 %3, i32 %shl, i32 %shr3
  br label %if.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %1)
  %cmp18 = icmp ult i32 %1, 50331648
  br i1 %cmp18, label %if.then20, label %do.end

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %usb2_rhub = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 55
  br label %if.end26

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xhci, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.104, ptr noundef %addr, i32 noundef %shr) #18
  br label %cleanup211

if.end26:                                         ; preds = %if.then20, %if.then
  %rhub.0 = phi ptr [ %usb2_rhub, %if.then20 ], [ %usb3_rhub, %if.then ]
  %minor_revision.0.in = phi i32 [ %shr3, %if.then20 ], [ %spec.select, %if.then ]
  %minor_revision.0 = trunc i32 %minor_revision.0.in to i8
  %maj_rev = getelementptr inbounds %struct.xhci_hub, ptr %rhub.0, i32 0, i32 4
  %8 = ptrtoint ptr %maj_rev to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %maj_rev, align 4
  %min_rev = getelementptr inbounds %struct.xhci_hub, ptr %rhub.0, i32 0, i32 5
  %9 = ptrtoint ptr %min_rev to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %min_rev, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %minor_revision.0)
  %cmp32 = icmp ult i8 %10, %minor_revision.0
  br i1 %cmp32, label %if.then34, label %if.end26.if.end36_crit_edge

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %min_rev to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %minor_revision.0, ptr %min_rev, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end26.if.end36_crit_edge
  %add.ptr = getelementptr i32, ptr %addr, i32 2
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !298
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !316
  %and42 = and i32 %13, 255
  %shr43 = lshr i32 %13, 8
  %and44 = and i32 %shr43, 255
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.106, ptr noundef %addr, i32 noundef %and42, i32 noundef %and44, i32 noundef %shr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %cmp46 = icmp eq i32 %and42, 0
  br i1 %cmp46, label %if.end36.cleanup211_crit_edge, label %lor.lhs.false

if.end36.cleanup211_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

lor.lhs.false:                                    ; preds = %if.end36
  %add = add nsw i32 %and42, -1
  %sub = add nuw nsw i32 %add, %and44
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %num_ports)
  %cmp48 = icmp ugt i32 %sub, %num_ports
  br i1 %cmp48, label %lor.lhs.false.cleanup211_crit_edge, label %if.end51

lor.lhs.false.cleanup211_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

if.end51:                                         ; preds = %lor.lhs.false
  %port_caps = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 60
  %14 = ptrtoint ptr %port_caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_caps, align 8
  %num_port_caps = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 61
  %16 = ptrtoint ptr %num_port_caps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_port_caps, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %num_port_caps, align 4
  %arrayidx = getelementptr %struct.xhci_port_cap, ptr %15, i32 %17
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %max_caps)
  %cmp53 = icmp ugt i32 %inc, %max_caps
  br i1 %cmp53, label %if.end51.cleanup211_crit_edge, label %if.end56

if.end51.cleanup211_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

if.end56:                                         ; preds = %if.end51
  %maj_rev57 = getelementptr %struct.xhci_port_cap, ptr %15, i32 %17, i32 3
  %18 = ptrtoint ptr %maj_rev57 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %maj_rev57, align 2
  %min_rev58 = getelementptr %struct.xhci_port_cap, ptr %15, i32 %17, i32 4
  %19 = ptrtoint ptr %min_rev58 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %minor_revision.0, ptr %min_rev58, align 1
  %shr59 = lshr i32 %13, 28
  %conv61 = trunc i32 %shr59 to i8
  %psi_count = getelementptr %struct.xhci_port_cap, ptr %15, i32 %17, i32 1
  %20 = ptrtoint ptr %psi_count to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv61, ptr %psi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv61)
  %tobool.not = icmp eq i8 %conv61, 0
  br i1 %tobool.not, label %if.end56.if.end142_crit_edge, label %if.end7.i.i

if.end56.if.end142_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142

if.end7.i.i:                                      ; preds = %if.end56
  %21 = shl nuw nsw i32 %shr59, 2
  %call.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #17
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i.i, ptr %arrayidx, align 4
  %tobool69.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool69.not, label %if.end72.thread, label %if.end72

if.end72.thread:                                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %psi_count to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %psi_count, align 4
  %psi_uid_count334 = getelementptr %struct.xhci_port_cap, ptr %15, i32 %17, i32 2
  %24 = ptrtoint ptr %psi_uid_count334 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %psi_uid_count334, align 1
  %inc73335 = add i8 %25, 1
  store i8 %inc73335, ptr %psi_uid_count334, align 1
  br label %if.end142

if.end72:                                         ; preds = %if.end7.i.i
  %26 = ptrtoint ptr %psi_count to i32
  call void @__asan_load1_noabort(i32 %26)
  %.pr = load i8, ptr %psi_count, align 4
  %psi_uid_count = getelementptr %struct.xhci_port_cap, ptr %15, i32 %17, i32 2
  %27 = ptrtoint ptr %psi_uid_count to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %psi_uid_count, align 1
  %inc73 = add i8 %28, 1
  store i8 %inc73, ptr %psi_uid_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp76326.not = icmp eq i8 %.pr, 0
  br i1 %cmp76326.not, label %if.end72.if.end142_crit_edge, label %do.body104.peel

if.end72.if.end142_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142

do.body104.peel:                                  ; preds = %if.end72
  %add.ptr80 = getelementptr i32, ptr %addr, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #13, !srcloc !298
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !317
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %32, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_add_in_port.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_add_in_port, %if.then110.peel)) #13
          to label %for.inc.peel [label %if.then110.peel], !srcloc !272

if.then110.peel:                                  ; preds = %do.body104.peel
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xhci, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %and117.peel = and i32 %41, 15
  %shr120.peel = lshr i32 %41, 4
  %and121.peel = and i32 %shr120.peel, 3
  %shr124.peel = lshr i32 %41, 6
  %and125.peel = and i32 %shr124.peel, 3
  %shr128.peel = lshr i32 %41, 8
  %and129.peel = and i32 %shr128.peel, 1
  %shr132.peel = lshr i32 %41, 14
  %and133.peel = and i32 %shr132.peel, 3
  %shr136.peel = lshr i32 %41, 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_add_in_port.__UNIQUE_ID_ddebug375, ptr noundef %37, ptr noundef nonnull @.str.107, i32 noundef %and117.peel, i32 noundef %and121.peel, i32 noundef %and125.peel, i32 noundef %and129.peel, i32 noundef %and133.peel, i32 noundef %shr136.peel) #13
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then110.peel, %do.body104.peel
  %42 = ptrtoint ptr %psi_count to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %psi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp76.peel = icmp ugt i8 %43, 1
  br i1 %cmp76.peel, label %for.inc.peel.land.lhs.true88_crit_edge, label %for.inc.peel.if.end142_crit_edge

for.inc.peel.if.end142_crit_edge:                 ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142

for.inc.peel.land.lhs.true88_crit_edge:           ; preds = %for.inc.peel
  br label %land.lhs.true88

land.lhs.true88:                                  ; preds = %for.inc.land.lhs.true88_crit_edge, %for.inc.peel.land.lhs.true88_crit_edge
  %i.0327 = phi i32 [ %inc141, %for.inc.land.lhs.true88_crit_edge ], [ 1, %for.inc.peel.land.lhs.true88_crit_edge ]
  %add.ptr81 = getelementptr i32, ptr %add.ptr80, i32 %i.0327
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #13, !srcloc !298
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !317
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %arrayidx86 = getelementptr i32, ptr %47, i32 %i.0327
  %48 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %arrayidx86, align 4
  %49 = load ptr, ptr %arrayidx, align 4
  %arrayidx90 = getelementptr i32, ptr %49, i32 %i.0327
  %50 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx90, align 4
  %sub94 = add nsw i32 %i.0327, -1
  %arrayidx95 = getelementptr i32, ptr %49, i32 %sub94
  %52 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx95, align 4
  %54 = xor i32 %53, %51
  %55 = and i32 %54, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp98.not = icmp eq i32 %55, 0
  br i1 %cmp98.not, label %land.lhs.true88.do.body104_crit_edge, label %if.then100

land.lhs.true88.do.body104_crit_edge:             ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body104

if.then100:                                       ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %psi_uid_count to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %psi_uid_count, align 1
  %inc102 = add i8 %57, 1
  store i8 %inc102, ptr %psi_uid_count, align 1
  br label %do.body104

do.body104:                                       ; preds = %if.then100, %land.lhs.true88.do.body104_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_add_in_port.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_add_in_port, %if.then110)) #13
          to label %for.inc [label %if.then110], !srcloc !272

if.then110:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xhci, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx, align 4
  %arrayidx115 = getelementptr i32, ptr %63, i32 %i.0327
  %64 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx115, align 4
  %and117 = and i32 %65, 15
  %shr120 = lshr i32 %65, 4
  %and121 = and i32 %shr120, 3
  %shr124 = lshr i32 %65, 6
  %and125 = and i32 %shr124, 3
  %shr128 = lshr i32 %65, 8
  %and129 = and i32 %shr128, 1
  %shr132 = lshr i32 %65, 14
  %and133 = and i32 %shr132, 3
  %shr136 = lshr i32 %65, 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_add_in_port.__UNIQUE_ID_ddebug375, ptr noundef %61, ptr noundef nonnull @.str.107, i32 noundef %and117, i32 noundef %and121, i32 noundef %and125, i32 noundef %and129, i32 noundef %and133, i32 noundef %shr136) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then110, %do.body104
  %inc141 = add nuw nsw i32 %i.0327, 1
  %66 = ptrtoint ptr %psi_count to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %psi_count, align 4
  %conv75 = zext i8 %67 to i32
  %cmp76 = icmp ult i32 %inc141, %conv75
  br i1 %cmp76, label %for.inc.land.lhs.true88_crit_edge, label %for.inc.if.end142_crit_edge, !llvm.loop !318

for.inc.if.end142_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142

for.inc.land.lhs.true88_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true88

if.end142:                                        ; preds = %for.inc.if.end142_crit_edge, %for.inc.peel.if.end142_crit_edge, %if.end72.if.end142_crit_edge, %if.end72.thread, %if.end56.if.end142_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %1)
  %cmp144 = icmp ult i32 %1, 50331648
  br i1 %cmp144, label %land.lhs.true146, label %if.end142.if.end153_crit_edge

if.end142.if.end153_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end153

land.lhs.true146:                                 ; preds = %if.end142
  %num_ext_caps = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 59
  %68 = ptrtoint ptr %num_ext_caps to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_ext_caps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %max_caps)
  %cmp147 = icmp ult i32 %69, %max_caps
  br i1 %cmp147, label %if.then149, label %land.lhs.true146.if.end153_crit_edge

land.lhs.true146.if.end153_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end153

if.then149:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #15
  %ext_caps = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 58
  %70 = ptrtoint ptr %ext_caps to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ext_caps, align 8
  %inc151 = add nuw i32 %69, 1
  %72 = ptrtoint ptr %num_ext_caps to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %inc151, ptr %num_ext_caps, align 4
  %arrayidx152 = getelementptr i32, ptr %71, i32 %69
  %73 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %13, ptr %arrayidx152, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then149, %land.lhs.true146.if.end153_crit_edge, %if.end142.if.end153_crit_edge
  %hci_version = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 14
  %74 = ptrtoint ptr %hci_version to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %hci_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %75)
  %cmp155 = icmp ult i16 %75, 256
  %or.cond320 = select i1 %cmp155, i1 true, i1 %cmp
  %and162 = and i32 %13, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  %or.cond321 = select i1 %or.cond320, i1 true, i1 %tobool163.not
  br i1 %or.cond321, label %if.end153.if.end165_crit_edge, label %if.then164

if.end153.if.end165_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end165

if.then164:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.108) #13
  %hw_lpm_support = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 57
  %76 = ptrtoint ptr %hw_lpm_support to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load = load i8, ptr %hw_lpm_support, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %hw_lpm_support, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %if.end153.if.end165_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %cmp168330.not = icmp eq i32 %and44, 0
  br i1 %cmp168330.not, label %if.end165.cleanup211_crit_edge, label %for.body170.lr.ph

if.end165.cleanup211_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

for.body170.lr.ph:                                ; preds = %if.end165
  %hw_ports = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 54
  %num_ports206 = getelementptr inbounds %struct.xhci_hub, ptr %rhub.0, i32 0, i32 1
  br label %for.body170

for.body170:                                      ; preds = %cleanup.for.body170_crit_edge, %for.body170.lr.ph
  %i.1331 = phi i32 [ %add, %for.body170.lr.ph ], [ %inc209, %cleanup.for.body170_crit_edge ]
  %77 = ptrtoint ptr %hw_ports to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw_ports, align 8
  %rhub172 = getelementptr %struct.xhci_port, ptr %78, i32 %i.1331, i32 3
  %79 = ptrtoint ptr %rhub172 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rhub172, align 4
  %tobool173.not = icmp eq ptr %80, null
  br i1 %tobool173.not, label %if.end203, label %do.end177

do.end177:                                        ; preds = %for.body170
  %81 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %xhci, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str.110, ptr noundef %addr, i32 noundef %i.1331) #18
  %85 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %xhci, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 8
  %89 = ptrtoint ptr %rhub172 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rhub172, align 4
  %maj_rev188 = getelementptr inbounds %struct.xhci_hub, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %maj_rev188 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %maj_rev188, align 4
  %conv189 = zext i8 %92 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.113, i32 noundef %conv189, i32 noundef %shr) #18
  %93 = ptrtoint ptr %rhub172 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rhub172, align 4
  %cmp192.not = icmp eq ptr %94, %rhub.0
  br i1 %cmp192.not, label %do.end177.cleanup_crit_edge, label %land.lhs.true194

do.end177.cleanup_crit_edge:                      ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true194:                                 ; preds = %do.end177
  %hcd_portnum = getelementptr %struct.xhci_port, ptr %78, i32 %i.1331, i32 2
  %95 = ptrtoint ptr %hcd_portnum to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %hcd_portnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %96)
  %cmp195.not = icmp eq i32 %96, 255
  br i1 %cmp195.not, label %land.lhs.true194.cleanup_crit_edge, label %if.then197

land.lhs.true194.cleanup_crit_edge:               ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then197:                                       ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #15
  %num_ports199 = getelementptr inbounds %struct.xhci_hub, ptr %94, i32 0, i32 1
  %97 = ptrtoint ptr %num_ports199 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_ports199, align 4
  %dec200 = add i32 %98, -1
  store i32 %dec200, ptr %num_ports199, align 4
  %99 = ptrtoint ptr %hcd_portnum to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 255, ptr %hcd_portnum, align 4
  br label %cleanup

if.end203:                                        ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %rhub172 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %rhub.0, ptr %rhub172, align 4
  %port_cap205 = getelementptr %struct.xhci_port, ptr %78, i32 %i.1331, i32 4
  %101 = ptrtoint ptr %port_cap205 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %arrayidx, ptr %port_cap205, align 4
  %102 = ptrtoint ptr %num_ports206 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_ports206, align 4
  %inc207 = add i32 %103, 1
  store i32 %inc207, ptr %num_ports206, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end203, %if.then197, %land.lhs.true194.cleanup_crit_edge, %do.end177.cleanup_crit_edge
  %inc209 = add i32 %i.1331, 1
  %exitcond.not = icmp eq i32 %inc209, %sub
  br i1 %exitcond.not, label %cleanup.cleanup211_crit_edge, label %cleanup.for.body170_crit_edge

cleanup.for.body170_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body170

cleanup.cleanup211_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

cleanup211:                                       ; preds = %cleanup.cleanup211_crit_edge, %if.end165.cleanup211_crit_edge, %if.end51.cleanup211_crit_edge, %lor.lhs.false.cleanup211_crit_edge, %if.end36.cleanup211_crit_edge, %do.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !57, !59, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !86, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !127, !128, !130, !131, !133, !135, !136, !138, !140, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !174, !176, !177, !178, !179, !180, !181, !183, !184, !186, !187, !189, !190, !191, !193, !195, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !221, !223, !225, !227, !228, !229, !230, !231, !233, !234, !235, !237, !239, !241, !243, !244, !245, !246, !248, !250, !251, !253, !255, !256, !257, !259, !260}
!llvm.named.register.sp = !{!261}
!llvm.module.flags = !{!262, !263, !264, !265, !266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-mem.c", i32 463, i32 4}
!2 = !{ptr @__ksymtab_xhci_get_ep_ctx, !3, !"__ksymtab_xhci_get_ep_ctx", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/xhci-mem.c", i32 535, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/xhci-mem.c", i32 616, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @xhci_alloc_stream_info.__UNIQUE_ID_ddebug348, !5, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/xhci-mem.c", i32 620, i32 3}
!12 = !{ptr @xhci_alloc_stream_info.__UNIQUE_ID_ddebug349, !11, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/xhci-mem.c", i32 677, i32 3}
!15 = !{ptr @xhci_alloc_stream_info.__UNIQUE_ID_ddebug350, !14, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/host/xhci-mem.c", i32 728, i32 4}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/host/xhci-mem.c", i32 902, i32 4}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @xhci_free_virt_device._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @xhci_free_virt_device._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/xhci-mem.c", i32 972, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @xhci_alloc_virt_device._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @xhci_alloc_virt_device._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/xhci-mem.c", i32 987, i32 2}
!32 = !{ptr @xhci_alloc_virt_device.__UNIQUE_ID_ddebug353, !31, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/host/xhci-mem.c", i32 995, i32 2}
!35 = !{ptr @xhci_alloc_virt_device.__UNIQUE_ID_ddebug354, !34, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/xhci-mem.c", i32 1016, i32 2}
!38 = !{ptr @xhci_alloc_virt_device.__UNIQUE_ID_ddebug355, !37, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/host/xhci-mem.c", i32 1100, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @xhci_setup_addressable_virt_dev._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @xhci_setup_addressable_virt_dev._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/host/xhci-mem.c", i32 1132, i32 3}
!46 = !{ptr @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug356, !45, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/host/xhci-mem.c", i32 1149, i32 2}
!49 = !{ptr @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug357, !48, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/xhci-mem.c", i32 1150, i32 2}
!52 = !{ptr @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug358, !51, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/host/xhci-mem.c", i32 1179, i32 4}
!55 = !{ptr @xhci_setup_addressable_virt_dev._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @xhci_setup_addressable_virt_dev._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/host/xhci-mem.c", i32 1189, i32 2}
!59 = !{ptr @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug359, !58, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/host/xhci-mem.c", i32 1190, i32 2}
!62 = !{ptr @xhci_setup_addressable_virt_dev.__UNIQUE_ID_ddebug360, !61, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/host/xhci-mem.c", i32 1847, i32 44}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/host/xhci-mem.c", i32 1855, i32 44}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/host/xhci-mem.c", i32 1873, i32 44}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/host/xhci-mem.c", i32 1877, i32 44}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/host/xhci-mem.c", i32 1882, i32 4}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/host/xhci-mem.c", i32 1887, i32 4}
!75 = !{ptr @xhci_mem_init.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/usb/host/xhci-mem.c", i32 2392, i32 2}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @xhci_mem_init.__key.34, !76, !"__key", i1 false, i1 false}
!79 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/host/xhci-mem.c", i32 2397, i32 4}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/host/xhci-mem.c", i32 2405, i32 4}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/host/xhci-mem.c", i32 2407, i32 3}
!86 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @xhci_mem_init._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @xhci_mem_init._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/host/xhci-mem.c", i32 2412, i32 4}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/host/xhci-mem.c", i32 2420, i32 4}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/host/xhci-mem.c", i32 2424, i32 4}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/host/xhci-mem.c", i32 2437, i32 4}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/host/xhci-mem.c", i32 2448, i32 39}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/host/xhci-mem.c", i32 2452, i32 38}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/host/xhci-mem.c", i32 2461, i32 19}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/host/xhci-mem.c", i32 2464, i32 19}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/host/xhci-mem.c", i32 2478, i32 4}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/host/xhci-mem.c", i32 2479, i32 44}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/host/xhci-mem.c", i32 2488, i32 4}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/host/xhci-mem.c", i32 2504, i32 4}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/host/xhci-mem.c", i32 2514, i32 44}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/host/xhci-mem.c", i32 2531, i32 4}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/host/xhci-mem.c", i32 2536, i32 4}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/host/xhci-mem.c", i32 2539, i32 4}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/host/xhci-mem.c", i32 2549, i32 4}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../drivers/usb/host/xhci-trace.h", i32 502, i32 1}
!125 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!127 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!130 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../drivers/usb/host/xhci-mem.c", i32 263, i32 6}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../drivers/usb/host/xhci-trace.h", i32 497, i32 1}
!135 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../drivers/usb/host/xhci-mem.c", i32 230, i32 6}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!140 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../drivers/usb/host/xhci-trace.h", i32 507, i32 1}
!144 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../drivers/usb/host/xhci-trace.h", i32 68, i32 1}
!147 = distinct !{null, !146, !"__warned", i1 false, i1 false}
!148 = !{ptr @xa_init_flags.__key, !149, !"__key", i1 false, i1 false}
!149 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!150 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!151 = distinct !{null, !152, !"__already_done", i1 false, i1 false}
!152 = !{!"../drivers/usb/host/xhci-trace.h", i32 43, i32 1}
!153 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/host/xhci-mem.c", i32 807, i32 3}
!156 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @xhci_free_tt_info.__UNIQUE_ID_ddebug351, !155, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!158 = distinct !{null, !159, !"__already_done", i1 false, i1 false}
!159 = !{!"../drivers/usb/host/xhci-trace.h", i32 199, i32 1}
!160 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!161 = !{ptr @xhci_init_endpoint_timer.__key, !162, !"__key", i1 false, i1 false}
!162 = !{!"../drivers/usb/host/xhci-mem.c", i32 789, i32 2}
!163 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!164 = distinct !{null, !165, !"__already_done", i1 false, i1 false}
!165 = !{!"../drivers/usb/host/xhci-trace.h", i32 236, i32 1}
!166 = distinct !{null, !165, !"__warned", i1 false, i1 false}
!167 = distinct !{null, !168, !"__already_done", i1 false, i1 false}
!168 = !{!"../drivers/usb/host/xhci-trace.h", i32 246, i32 1}
!169 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/host/xhci-mem.c", i32 1253, i32 3}
!172 = !{ptr @.str.68, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @xhci_microframes_to_exponent.__UNIQUE_ID_ddebug369, !171, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/host/xhci-mem.c", i32 1222, i32 3}
!176 = !{ptr @.str.70, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @xhci_parse_exponent_interval._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @xhci_parse_exponent_interval._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @init_completion.__key, !182, !"__key", i1 false, i1 false}
!182 = !{!"../include/linux/completion.h", i32 87, i32 2}
!183 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!184 = distinct !{null, !185, !"__already_done", i1 false, i1 false}
!185 = !{!"../drivers/usb/host/xhci-trace.h", i32 63, i32 1}
!186 = distinct !{null, !185, !"__warned", i1 false, i1 false}
!187 = !{ptr @.str.74, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/host/xhci-mem.c", i32 941, i32 3}
!189 = !{ptr @.str.75, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @xhci_free_virt_devices_depth_first.__UNIQUE_ID_ddebug352, !188, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!191 = !{ptr @.str.76, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/host/xhci-mem.c", i32 2072, i32 5}
!193 = !{ptr @.str.77, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/host/xhci-mem.c", i32 2085, i32 5}
!195 = !{ptr @.str.78, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/host/xhci-mem.c", i32 2089, i32 2}
!197 = !{ptr @.str.79, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @xhci_check_trb_in_td_math.__UNIQUE_ID_ddebug374, !196, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!199 = !{ptr @.str.80, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/host/xhci-mem.c", i32 1952, i32 3}
!201 = !{ptr @.str.81, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @xhci_test_trb_in_td._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @xhci_test_trb_in_td._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.83, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/host/xhci-mem.c", i32 1954, i32 3}
!206 = !{ptr @xhci_test_trb_in_td._entry.82, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @xhci_test_trb_in_td._entry_ptr.84, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.86, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/host/xhci-mem.c", i32 1958, i32 3}
!210 = !{ptr @xhci_test_trb_in_td._entry.85, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @xhci_test_trb_in_td._entry_ptr.87, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.89, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/usb/host/xhci-mem.c", i32 1962, i32 3}
!214 = !{ptr @xhci_test_trb_in_td._entry.88, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @xhci_test_trb_in_td._entry_ptr.90, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.91, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/host/xhci-mem.c", i32 2101, i32 3}
!218 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @xhci_set_hc_event_deq._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @xhci_set_hc_event_deq._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.93, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/host/xhci-mem.c", i32 2111, i32 4}
!223 = !{ptr @.str.94, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/host/xhci-mem.c", i32 1652, i32 4}
!225 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/host/xhci-mem.c", i32 2313, i32 3}
!227 = !{ptr @.str.96, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.97, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @xhci_setup_port_arrays._entry, !226, !"_entry", i1 false, i1 false}
!230 = !{ptr @xhci_setup_port_arrays._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.99, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/host/xhci-mem.c", i32 2346, i32 3}
!233 = !{ptr @xhci_setup_port_arrays._entry.98, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @xhci_setup_port_arrays._entry_ptr.100, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.101, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/host/xhci-mem.c", i32 2350, i32 10}
!237 = !{ptr @.str.102, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/host/xhci-mem.c", i32 2358, i32 5}
!239 = !{ptr @.str.103, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/host/xhci-mem.c", i32 2364, i32 5}
!241 = !{ptr @.str.104, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/usb/host/xhci-mem.c", i32 2145, i32 3}
!243 = !{ptr @.str.105, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @xhci_add_in_port._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @xhci_add_in_port._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.106, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/usb/host/xhci-mem.c", i32 2161, i32 4}
!248 = !{ptr @.str.107, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/host/xhci-mem.c", i32 2195, i32 4}
!250 = !{ptr @xhci_add_in_port.__UNIQUE_ID_ddebug375, !249, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!251 = !{ptr @.str.108, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/usb/host/xhci-mem.c", i32 2211, i32 11}
!253 = !{ptr @.str.110, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/usb/host/xhci-mem.c", i32 2220, i32 4}
!255 = !{ptr @xhci_add_in_port._entry.109, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @xhci_add_in_port._entry_ptr.111, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.113, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/usb/host/xhci-mem.c", i32 2222, i32 4}
!259 = !{ptr @xhci_add_in_port._entry.112, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @xhci_add_in_port._entry_ptr.114, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{!"sp"}
!262 = !{i32 1, !"wchar_size", i32 2}
!263 = !{i32 1, !"min_enum_size", i32 4}
!264 = !{i32 8, !"branch-target-enforcement", i32 0}
!265 = !{i32 8, !"sign-return-address", i32 0}
!266 = !{i32 8, !"sign-return-address-all", i32 0}
!267 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!268 = !{i32 7, !"uwtable", i32 1}
!269 = !{i32 7, !"frame-pointer", i32 2}
!270 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!271 = !{!"branch_weights", i32 2000, i32 1}
!272 = !{i64 2149009165, i64 2149009170, i64 2149009183, i64 2149009227, i64 2149009261, i64 2149009282}
!273 = !{i64 2155882616}
!274 = !{i64 2155882815}
!275 = !{i64 2149487710}
!276 = !{i64 2149488746}
!277 = !{i64 2155866599}
!278 = !{i64 2155866800}
!279 = !{!"auto-init"}
!280 = !{i64 2152652353}
!281 = !{i64 2155898769}
!282 = !{i64 2155898978}
!283 = !{i64 2155270895}
!284 = !{i64 2155271110}
!285 = !{!"branch_weights", i32 1, i32 2000}
!286 = !{i32 0, i32 33}
!287 = !{i64 2155185635}
!288 = !{i64 2155185850}
!289 = !{i64 2155436595}
!290 = !{i64 2155436808}
!291 = !{i64 2155453352}
!292 = !{i64 2155453567}
!293 = !{i64 2155491031}
!294 = !{i64 2155491270}
!295 = !{i64 2156233569, i64 2156234062, i64 2156233606, i64 2156233662, i64 2156233696, i64 2156233720, i64 2156233761, i64 2156233782, i64 2156233810, i64 2156233844}
!296 = !{i64 2155254680}
!297 = !{i64 2155254875}
!298 = !{i64 4436081}
!299 = !{i64 2156296664}
!300 = !{i64 2156299270}
!301 = !{i64 2156299802}
!302 = !{i64 2156300030}
!303 = !{i64 4435663}
!304 = !{i64 2154802447}
!305 = !{i64 2154802820}
!306 = !{i64 2154801639}
!307 = !{i64 2154802077}
!308 = !{i64 2156300799}
!309 = !{i64 2156301322}
!310 = !{i64 2156301560}
!311 = !{i64 2156302322}
!312 = !{i64 2156302593}
!313 = !{i64 2154810935}
!314 = !{i64 2154811428}
!315 = !{i64 2156278805}
!316 = !{i64 2156281553}
!317 = !{i64 2156282269}
!318 = distinct !{!318, !319}
!319 = !{!"llvm.loop.peeled.count", i32 1}
