; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc2/hcd_intr.c_pt.bc'
source_filename = "../drivers/usb/dwc2/hcd_intr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
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
%struct.dwc2_host_chan = type { i8, [3 x i8], i16, ptr, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, ptr, %struct.list_head, i32, i32, %struct.list_head }
%struct.dwc2_qh = type { ptr, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [8 x %struct.dwc2_hs_transfer_time], i32, i16, ptr, i32, %struct.list_head, ptr, %struct.list_head, ptr, i32, i32, ptr, %struct.timer_list, %struct.hrtimer, ptr, i32, i8 }
%struct.dwc2_hs_transfer_time = type { i32, i16 }
%struct.dwc2_qtd = type { i32, i8, i8, i8, i8, i16, i16, i16, i16, i32, i8, i8, i16, i16, ptr, ptr, %struct.list_head }
%struct.dwc2_hcd_urb = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i16, %struct.dwc2_hcd_pipe_info, [0 x %struct.dwc2_hcd_iso_packet_desc] }
%struct.dwc2_hcd_pipe_info = type { i8, i8, i8, i8, i16, i16 }
%struct.dwc2_hcd_iso_packet_desc = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
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

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/dwc2/hcd_intr.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"chan->qh must be specified for non-control eps\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"qtd must be specified for control eps\0A\00", [57 x i8] zeroinitializer }, align 32
@dwc2_handle_hcd_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 2239, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Controller is dead\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwc2_handle_hcd_intr\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc2_handle_hcd_intr._entry_ptr = internal global ptr @dwc2_handle_hcd_intr._entry, section ".printk_index", align 4
@dwc2_handle_hcd_intr.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.4, ptr @.str, ptr @.str.8, i8 2, i8 54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc2\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"DWC OTG HCD Interrupt Detected gintsts&gintmsk=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@dwc2_handle_hcd_intr.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.4, ptr @.str, ptr @.str.9, i8 2, i8 59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DWC OTG HCD Finished Servicing Interrupts\0A\00", [53 x i8] zeroinitializer }, align 32
@dwc2_handle_hcd_intr.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.4, ptr @.str, ptr @.str.10, i8 2, i8 60, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DWC OTG HCD gintsts=0x%08x gintmsk=0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@dwc2_track_missed_sofs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 84, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Frame     Last Frame\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dwc2_track_missed_sofs\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dwc2_track_missed_sofs._entry_ptr = internal global ptr @dwc2_track_missed_sofs._entry, section ".printk_index", align 4
@dwc2_track_missed_sofs._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str, i32 85, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"-----     ----------\0A\00", [42 x i8] zeroinitializer }, align 32
@dwc2_track_missed_sofs._entry_ptr.16 = internal global ptr @dwc2_track_missed_sofs._entry.14, section ".printk_index", align 4
@dwc2_track_missed_sofs._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str, i32 89, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0x%04x    0x%04x\0A\00", [46 x i8] zeroinitializer }, align 32
@dwc2_track_missed_sofs._entry_ptr.19 = internal global ptr @dwc2_track_missed_sofs._entry.17, section ".printk_index", align 4
@dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.20, ptr @.str, ptr @.str.21, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dwc2_rx_fifo_level_intr\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"--RxFIFO Level Interrupt--\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_rx_fifo_level_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str, i32 198, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to get corresponding channel\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@dwc2_rx_fifo_level_intr._entry_ptr = internal global ptr @dwc2_rx_fifo_level_intr._entry, section ".printk_index", align 4
@dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.20, ptr @.str, ptr @.str.24, i8 0, i8 52, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"    Ch num = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.20, ptr @.str, ptr @.str.25, i8 0, i8 52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"    Count = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.20, ptr @.str, ptr @.str.26, i8 0, i8 52, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"    DPID = %d, chan.dpid = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.20, ptr @.str, ptr @.str.27, i8 0, i8 53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"    PStatus = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dwc2_rx_fifo_level_intr._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str, i32 233, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RxFIFO Level Interrupt: Unknown status %d\0A\00", [53 x i8] zeroinitializer }, align 32
@dwc2_rx_fifo_level_intr._entry_ptr.30 = internal global ptr @dwc2_rx_fifo_level_intr._entry.28, section ".printk_index", align 4
@dwc2_np_tx_fifo_empty_intr.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.31, ptr @.str, ptr @.str.32, i8 0, i8 61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dwc2_np_tx_fifo_empty_intr\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"--Non-Periodic TxFIFO Empty Interrupt--\0A\00", [55 x i8] zeroinitializer }, align 32
@dwc2_port_intr.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.33, ptr @.str, ptr @.str.34, i8 0, i8 90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dwc2_port_intr\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"--Port Interrupt--\0A\00", [44 x i8] zeroinitializer }, align 32
@dwc2_port_intr.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.33, ptr @.str, ptr @.str.35, i8 0, i8 95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"--Port Interrupt HPRT0=0x%08x Port Connect Detected--\0A\00", [41 x i8] zeroinitializer }, align 32
@dwc2_port_intr.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.33, ptr @.str, ptr @.str.36, i8 0, i8 99, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"  --Port Interrupt HPRT0=0x%08x Port Enable Changed (now %d)--\0A\00", [32 x i8] zeroinitializer }, align 32
@dwc2_port_intr.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.33, ptr @.str, ptr @.str.37, i8 0, i8 105, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"  --Port Interrupt HPRT0=0x%08x Port Overcurrent Changed--\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_hprt0_enable.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.38, ptr @.str, ptr @.str.39, i8 0, i8 68, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwc2_hprt0_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%p)\0A\00", [24 x i8] zeroinitializer }, align 32
@dwc2_hprt0_enable.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.38, ptr @.str, ptr @.str.40, i8 0, i8 77, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"FS_PHY programming HCFG to 6 MHz\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc2_hprt0_enable.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.38, ptr @.str, ptr @.str.41, i8 0, i8 80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"FS_PHY programming HCFG to 48 MHz\0A\00", [61 x i8] zeroinitializer }, align 32
@dwc2_hc_intr.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.42, ptr @.str, ptr @.str.43, i8 2, i8 39, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dwc2_hc_intr\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@dwc2_hc_intr.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.42, ptr @.str, ptr @.str.44, i8 2, i8 39, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HAINT=%08x\0A\00", [20 x i8] zeroinitializer }, align 32
@dwc2_hc_n_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str, i32 2055, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"## hc_ptr_array for channel is NULL ##\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dwc2_hc_n_intr\00", [17 x i8] zeroinitializer }, align 32
@dwc2_hc_n_intr._entry_ptr = internal global ptr @dwc2_hc_n_intr._entry, section ".printk_index", align 4
@dwc2_hc_n_intr.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.46, ptr @.str, ptr @.str.47, i8 2, i8 3, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"--Host Channel Interrupt--, Channel %d\0A\00", [56 x i8] zeroinitializer }, align 32
@dwc2_hc_n_intr.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.46, ptr @.str, ptr @.str.48, i8 2, i8 4, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"  hcint 0x%08x, hcintmsk 0x%08x, hcint&hcintmsk 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@dwc2_hc_n_intr._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.46, ptr @.str, i32 2075, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Interrupt on disabled channel\0A\00", [33 x i8] zeroinitializer }, align 32
@dwc2_hc_n_intr._entry_ptr.51 = internal global ptr @dwc2_hc_n_intr._entry.49, section ".printk_index", align 4
@dwc2_hc_n_intr.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.46, ptr @.str, ptr @.str.52, i8 2, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"## no QTD queued for channel %d ##\0A\00", [60 x i8] zeroinitializer }, align 32
@dwc2_hc_n_intr.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.46, ptr @.str, ptr @.str.48, i8 2, i8 15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@dwc2_release_channel.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.53, ptr @.str, ptr @.str.54, i8 0, i8 -78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwc2_release_channel\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  %s: channel %d, halt_status %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc2_release_channel.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.53, ptr @.str, ptr @.str.55, i8 0, i8 -74, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"  Complete URB with transaction error\0A\00", [57 x i8] zeroinitializer }, align 32
@dwc2_release_channel.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.53, ptr @.str, ptr @.str.56, i8 0, i8 -71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  Complete URB with I/O error\0A\00", [33 x i8] zeroinitializer }, align 32
@dwc2_deactivate_qh.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.57, ptr @.str, ptr @.str.58, i8 0, i8 -90, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dwc2_deactivate_qh\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  %s(%p,%p,%d)\0A\00", [16 x i8] zeroinitializer }, align 32
@dwc2_deactivate_qh.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.57, ptr @.str, ptr @.str.59, i8 0, i8 -89, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"## QTD list empty ##\0A\00", [42 x i8] zeroinitializer }, align 32
@dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.60, ptr @.str, ptr @.str.61, i8 0, i8 -6, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dwc2_hc_xfercomp_intr\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"--Host Channel %d Interrupt: Transfer Complete--\0A\00", [46 x i8] zeroinitializer }, align 32
@dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.60, ptr @.str, ptr @.str.62, i8 1, i8 3, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Control setup transaction done\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.60, ptr @.str, ptr @.str.63, i8 1, i8 5, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  Control data transfer done\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.60, ptr @.str, ptr @.str.64, i8 1, i8 7, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  Control transfer complete\0A\00", [35 x i8] zeroinitializer }, align 32
@dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.60, ptr @.str, ptr @.str.65, i8 1, i8 10, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  Bulk transfer complete\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.60, ptr @.str, ptr @.str.66, i8 1, i8 14, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  Interrupt transfer complete\0A\00", [33 x i8] zeroinitializer }, align 32
@dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.60, ptr @.str, ptr @.str.67, i8 1, i8 19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  Isochronous transfer complete\0A\00", [63 x i8] zeroinitializer }, align 32
@dwc2_xfercomp_isoc_split_in.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.68, ptr @.str, ptr @.str.69, i8 0, i8 -18, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dwc2_xfercomp_isoc_split_in\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"non-aligned buffer\0A\00", [44 x i8] zeroinitializer }, align 32
@dwc2_update_urb_state.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.70, ptr @.str, ptr @.str.71, i8 0, i8 125, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dwc2_update_urb_state\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(): trimming xfer length\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_update_urb_state.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.70, ptr @.str, ptr @.str.72, i8 0, i8 127, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"urb->actual_length=%d xfer_length=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@dwc2_update_urb_state.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.70, ptr @.str, ptr @.str.73, i8 0, i8 -126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DWC_otg: %s: %s, channel %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@dwc2_update_urb_state.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.70, ptr @.str, ptr @.str.76, i8 0, i8 -125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  chan->xfer_len %d\0A\00", [43 x i8] zeroinitializer }, align 32
@dwc2_update_urb_state.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.70, ptr @.str, ptr @.str.77, i8 0, i8 -125, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  hctsiz.xfersize %d\0A\00", [42 x i8] zeroinitializer }, align 32
@dwc2_update_urb_state.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.70, ptr @.str, ptr @.str.78, i8 0, i8 -125, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  urb->transfer_buffer_length %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc2_update_urb_state.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.70, ptr @.str, ptr @.str.79, i8 0, i8 -124, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  urb->actual_length %d\0A\00", [39 x i8] zeroinitializer }, align 32
@dwc2_update_urb_state.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.70, ptr @.str, ptr @.str.80, i8 0, i8 -124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  short_read %d, xfer_done %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dwc2_complete_non_periodic_xfer.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.81, ptr @.str, ptr @.str.43, i8 0, i8 -39, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dwc2_complete_non_periodic_xfer\00", [32 x i8] zeroinitializer }, align 32
@dwc2_complete_non_periodic_xfer.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.81, ptr @.str, ptr @.str.82, i8 0, i8 -37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"got NYET\0A\00", [22 x i8] zeroinitializer }, align 32
@dwc2_halt_channel.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.83, ptr @.str, ptr @.str.43, i8 0, i8 -54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwc2_halt_channel\00", [46 x i8] zeroinitializer }, align 32
@dwc2_halt_channel.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.83, ptr @.str, ptr @.str.84, i8 0, i8 -53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMA enabled\0A\00", [19 x i8] zeroinitializer }, align 32
@dwc2_halt_channel.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.83, ptr @.str, ptr @.str.85, i8 0, i8 -51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Halt on queue\0A\00", [17 x i8] zeroinitializer }, align 32
@dwc2_halt_channel.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.83, ptr @.str, ptr @.str.86, i8 0, i8 -50, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"control/bulk\0A\00", [18 x i8] zeroinitializer }, align 32
@dwc2_halt_channel.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.83, ptr @.str, ptr @.str.87, i8 0, i8 -47, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isoc/intr\0A\00", [21 x i8] zeroinitializer }, align 32
@dwc2_update_isoc_urb_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str, i32 633, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled halt_status (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dwc2_update_isoc_urb_state\00", [37 x i8] zeroinitializer }, align 32
@dwc2_update_isoc_urb_state._entry_ptr = internal global ptr @dwc2_update_isoc_urb_state._entry, section ".printk_index", align 4
@dwc2_hc_chhltd_intr.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.90, ptr @.str, ptr @.str.91, i8 1, i8 -9, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwc2_hc_chhltd_intr\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"--Host Channel %d Interrupt: Channel Halted--\0A\00", [49 x i8] zeroinitializer }, align 32
@dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.92, ptr @.str, ptr @.str.93, i8 1, i8 -52, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dwc2_hc_chhltd_intr_dma\00", [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"--Host Channel %d Interrupt: DMA Channel Halted--\0A\00", [45 x i8] zeroinitializer }, align 32
@dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.92, ptr @.str, ptr @.str.94, i8 1, i8 -39, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"XactErr with NYET/NAK/ACK\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.92, ptr @.str, ptr @.str.95, i8 1, i8 -38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"XactErr without NYET/NAK/ACK\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.92, ptr @.str, ptr @.str.96, i8 1, i8 -23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: Halt channel %d (assume incomplete periodic transfer)\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc2_hc_chhltd_intr_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str, i32 1963, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Channel %d - ChHltd set, but reason is unknown\0A\00", [44 x i8] zeroinitializer }, align 32
@dwc2_hc_chhltd_intr_dma._entry_ptr = internal global ptr @dwc2_hc_chhltd_intr_dma._entry, section ".printk_index", align 4
@dwc2_hc_chhltd_intr_dma._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.92, ptr @.str, i32 1967, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hcint 0x%08x, intsts 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@dwc2_hc_chhltd_intr_dma._entry_ptr.100 = internal global ptr @dwc2_hc_chhltd_intr_dma._entry.98, section ".printk_index", align 4
@dwc2_hc_chhltd_intr_dma._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.92, ptr @.str, i32 1974, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NYET/NAK/ACK/other in non-error case, 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@dwc2_hc_chhltd_intr_dma._entry_ptr.103 = internal global ptr @dwc2_hc_chhltd_intr_dma._entry.101, section ".printk_index", align 4
@dwc2_update_urb_state_abn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.104, ptr @.str, i32 1182, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dwc2_update_urb_state_abn\00", [38 x i8] zeroinitializer }, align 32
@dwc2_update_urb_state_abn._entry_ptr = internal global ptr @dwc2_update_urb_state_abn._entry, section ".printk_index", align 4
@dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.104, ptr @.str, ptr @.str.73, i8 1, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.104, ptr @.str, ptr @.str.105, i8 1, i8 42, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  chan->start_pkt_count %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.104, ptr @.str, ptr @.str.106, i8 1, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  hctsiz.pktcnt %d\0A\00", [44 x i8] zeroinitializer }, align 32
@dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.104, ptr @.str, ptr @.str.107, i8 1, i8 42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  chan->max_packet %d\0A\00", [41 x i8] zeroinitializer }, align 32
@dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.104, ptr @.str, ptr @.str.108, i8 1, i8 43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  bytes_transferred %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.104, ptr @.str, ptr @.str.79, i8 1, i8 43, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.104, ptr @.str, ptr @.str.78, i8 1, i8 44, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@dwc2_halt_status_ok.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.109, ptr @.str, ptr @.str.110, i8 1, i8 -65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwc2_halt_status_ok\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: chan->halt_status DWC2_HC_XFER_NO_HALT_STATUS,\0A\00", [44 x i8] zeroinitializer }, align 32
@dwc2_halt_status_ok.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.109, ptr @.str, ptr @.str.111, i8 1, i8 -64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"channel %d, hcchar 0x%08x, hctsiz 0x%08x,\0A\00", [53 x i8] zeroinitializer }, align 32
@dwc2_halt_status_ok.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.109, ptr @.str, ptr @.str.112, i8 1, i8 -63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"hcint 0x%08x, hcintmsk 0x%08x, hcsplt 0x%08x,\0A\00", [49 x i8] zeroinitializer }, align 32
@dwc2_halt_status_ok.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.109, ptr @.str, ptr @.str.113, i8 1, i8 -62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qtd->complete_split %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dwc2_halt_status_ok._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str, i32 1803, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: no halt status, channel %d, ignoring interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@dwc2_halt_status_ok._entry_ptr = internal global ptr @dwc2_halt_status_ok._entry, section ".printk_index", align 4
@dwc2_halt_status_ok._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.109, ptr @.str, i32 1816, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: hcchar.chdis set unexpectedly, hcchar 0x%08x, trying to halt again\0A\00", [56 x i8] zeroinitializer }, align 32
@dwc2_halt_status_ok._entry_ptr.117 = internal global ptr @dwc2_halt_status_ok._entry.115, section ".printk_index", align 4
@dwc2_hc_ahberr_intr.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.118, ptr @.str, ptr @.str.119, i8 1, i8 -122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwc2_hc_ahberr_intr\00", [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"--Host Channel %d Interrupt: AHB Error--\0A\00", [54 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str, i32 1574, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AHB ERROR, Channel %d\0A\00", [41 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry_ptr = internal global ptr @dwc2_hc_ahberr_intr._entry, section ".printk_index", align 4
@dwc2_hc_ahberr_intr._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.118, ptr @.str, i32 1575, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"  hcchar 0x%08x, hcsplt 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry_ptr.123 = internal global ptr @dwc2_hc_ahberr_intr._entry.121, section ".printk_index", align 4
@dwc2_hc_ahberr_intr._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.118, ptr @.str, i32 1576, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"  hctsiz 0x%08x, hc_dma 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry_ptr.126 = internal global ptr @dwc2_hc_ahberr_intr._entry.124, section ".printk_index", align 4
@dwc2_hc_ahberr_intr._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.118, ptr @.str, i32 1578, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  Device address: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry_ptr.129 = internal global ptr @dwc2_hc_ahberr_intr._entry.127, section ".printk_index", align 4
@dwc2_hc_ahberr_intr._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.118, ptr @.str, i32 1581, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  Endpoint: %d, %s\0A\00", [44 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry_ptr.132 = internal global ptr @dwc2_hc_ahberr_intr._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CONTROL\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BULK\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INTERRUPT\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ISOCHRONOUS\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.118, ptr @.str, i32 1601, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  Endpoint type: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry_ptr.140 = internal global ptr @dwc2_hc_ahberr_intr._entry.138, section ".printk_index", align 4
@.str.141 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HIGH\00", [27 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FULL\00", [27 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LOW\00", [28 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.118, ptr @.str, i32 1618, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  Speed: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry_ptr.146 = internal global ptr @dwc2_hc_ahberr_intr._entry.144, section ".printk_index", align 4
@dwc2_hc_ahberr_intr._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.118, ptr @.str, i32 1622, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  Max packet size: %d (mult %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry_ptr.149 = internal global ptr @dwc2_hc_ahberr_intr._entry.147, section ".printk_index", align 4
@dwc2_hc_ahberr_intr._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.118, ptr @.str, i32 1623, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  Data buffer length: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry_ptr.152 = internal global ptr @dwc2_hc_ahberr_intr._entry.150, section ".printk_index", align 4
@dwc2_hc_ahberr_intr._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.118, ptr @.str, i32 1625, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"  Transfer buffer: %p, Transfer DMA: %08lx\0A\00", [52 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry_ptr.155 = internal global ptr @dwc2_hc_ahberr_intr._entry.153, section ".printk_index", align 4
@dwc2_hc_ahberr_intr._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.118, ptr @.str, i32 1627, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"  Setup buffer: %p, Setup DMA: %08lx\0A\00", [58 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry_ptr.158 = internal global ptr @dwc2_hc_ahberr_intr._entry.156, section ".printk_index", align 4
@dwc2_hc_ahberr_intr._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.118, ptr @.str, i32 1628, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  Interval: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@dwc2_hc_ahberr_intr._entry_ptr.161 = internal global ptr @dwc2_hc_ahberr_intr._entry.159, section ".printk_index", align 4
@dwc2_hc_stall_intr.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.162, ptr @.str, ptr @.str.163, i8 1, i8 26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dwc2_hc_stall_intr\00", [45 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"--Host Channel %d Interrupt: STALL Received--\0A\00", [49 x i8] zeroinitializer }, align 32
@dwc2_hc_nak_intr.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.164, ptr @.str, ptr @.str.165, i8 1, i8 47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwc2_hc_nak_intr\00", [47 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: qtd is NULL\0A\00", [47 x i8] zeroinitializer }, align 32
@dwc2_hc_nak_intr.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.164, ptr @.str, ptr @.str.166, i8 1, i8 48, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: qtd->urb is NULL\0A\00", [42 x i8] zeroinitializer }, align 32
@dwc2_hc_nak_intr.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.164, ptr @.str, ptr @.str.167, i8 1, i8 50, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"--Host Channel %d Interrupt: NAK Received--\0A\00", [51 x i8] zeroinitializer }, align 32
@dwc2_hc_nak_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.164, ptr @.str, i32 1300, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NACK interrupt for ISOC transfer\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc2_hc_nak_intr._entry_ptr = internal global ptr @dwc2_hc_nak_intr._entry, section ".printk_index", align 4
@dwc2_hc_ack_intr.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.169, ptr @.str, ptr @.str.170, i8 1, i8 74, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwc2_hc_ack_intr\00", [47 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"--Host Channel %d Interrupt: ACK Received--\0A\00", [51 x i8] zeroinitializer }, align 32
@dwc2_hc_nyet_intr.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.171, ptr @.str, ptr @.str.172, i8 1, i8 93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwc2_hc_nyet_intr\00", [46 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"--Host Channel %d Interrupt: NYET Received--\0A\00", [50 x i8] zeroinitializer }, align 32
@dwc2_hc_xacterr_intr.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.173, ptr @.str, ptr @.str.174, i8 1, i8 -98, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwc2_hc_xacterr_intr\00", [43 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"--Host Channel %d Interrupt: Transaction Error--\0A\00", [46 x i8] zeroinitializer }, align 32
@dwc2_hc_babble_intr.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.175, ptr @.str, ptr @.str.176, i8 1, i8 124, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwc2_hc_babble_intr\00", [44 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"--Host Channel %d Interrupt: Babble Error--\0A\00", [51 x i8] zeroinitializer }, align 32
@dwc2_hc_frmovrun_intr.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.177, ptr @.str, ptr @.str.178, i8 1, i8 -82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dwc2_hc_frmovrun_intr\00", [42 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"--Host Channel %d Interrupt: Frame Overrun--\0A\00", [50 x i8] zeroinitializer }, align 32
@dwc2_hc_datatglerr_intr.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.179, ptr @.str, ptr @.str.180, i8 1, i8 -75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dwc2_hc_datatglerr_intr\00", [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"--Host Channel %d Interrupt: Data Toggle Error--\0A\00", [46 x i8] zeroinitializer }, align 32
@dwc2_hc_datatglerr_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.179, ptr @.str, i32 1757, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Data Toggle Error on OUT transfer, channel %d\0A\00", [49 x i8] zeroinitializer }, align 32
@dwc2_hc_datatglerr_intr._entry_ptr = internal global ptr @dwc2_hc_datatglerr_intr._entry, section ".printk_index", align 4
@dwc2_perio_tx_fifo_empty_intr.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.182, ptr @.str, ptr @.str.183, i8 0, i8 64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dwc2_perio_tx_fifo_empty_intr\00", [34 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"--Periodic TxFIFO Empty Interrupt--\0A\00", [59 x i8] zeroinitializer }, align 32
@switch.table.dwc2_hc_ahberr_intr = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.133, ptr @.str.136, ptr @.str.134, ptr @.str.135], [16 x i8] zeroinitializer }, align 32
@switch.table.dwc2_hc_ahberr_intr.184 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.143, ptr @.str.142, ptr @.str.141], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.185 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 6, i64 7, i64 9, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.187 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 4294967175, i64 4294967264]
@__sancov_gen_cov_switch_values.190 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.191 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.192 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 4294967175, i64 4294967264]
@__sancov_gen_cov_switch_values.195 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 4294967175, i64 4294967264]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 32, i64 4294967175, i64 4294967264]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 32, i64 4294967175, i64 4294967264]
@__sancov_gen_cov_switch_values.200 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 2]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 13]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 548, i32 7 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 557, i32 7 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2239, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2265, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2283, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2285, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 84, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 85, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 87, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 192, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 198, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 208, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 209, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 210, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 212, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 232, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 246, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 360, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 379, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 396, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 420, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 274, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 309, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 320, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2205, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2207, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2055, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2061, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2063, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2075, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2107, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 714, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 728, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 742, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 665, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 669, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 998, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1037, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1046, i32 5 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1055, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1067, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1082, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1103, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 953, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 503, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 507, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 522, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 524, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 525, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 527, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 528, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 529, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 868, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 878, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 808, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 812, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 823, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 826, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 836, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 632, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2013, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1838, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1892, i32 5 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1896, i32 5 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1955, i32 5 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1961, i32 5 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1964, i32 5 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1972, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1182, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1191, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1193, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1195, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1196, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1789, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1792, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1795, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1799, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1801, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1814, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1561, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1574, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1575, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1576, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1577, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1579, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1585, i32 14 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1588, i32 14 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1591, i32 14 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1594, i32 14 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1597, i32 14 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1601, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1605, i32 11 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1608, i32 11 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1611, i32 11 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1618, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1620, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1623, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1624, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1626, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1628, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1128, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1213, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1218, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1223, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1300, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1320, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1397, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1658, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1520, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1719, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1749, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1755, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.733 = private constant [31 x i8] c"../drivers/usb/dwc2/hcd_intr.c\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 259, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant [33 x i8] c"switch.table.dwc2_hc_ahberr_intr\00", align 1
@___asan_gen_.736 = private unnamed_addr constant [37 x i8] c"switch.table.dwc2_hc_ahberr_intr.184\00", align 1
@llvm.compiler.used = appending global [208 x ptr] [ptr @dwc2_halt_status_ok._entry, ptr @dwc2_halt_status_ok._entry.115, ptr @dwc2_halt_status_ok._entry_ptr, ptr @dwc2_halt_status_ok._entry_ptr.117, ptr @dwc2_handle_hcd_intr._entry, ptr @dwc2_handle_hcd_intr._entry_ptr, ptr @dwc2_hc_ahberr_intr._entry, ptr @dwc2_hc_ahberr_intr._entry.121, ptr @dwc2_hc_ahberr_intr._entry.124, ptr @dwc2_hc_ahberr_intr._entry.127, ptr @dwc2_hc_ahberr_intr._entry.130, ptr @dwc2_hc_ahberr_intr._entry.138, ptr @dwc2_hc_ahberr_intr._entry.144, ptr @dwc2_hc_ahberr_intr._entry.147, ptr @dwc2_hc_ahberr_intr._entry.150, ptr @dwc2_hc_ahberr_intr._entry.153, ptr @dwc2_hc_ahberr_intr._entry.156, ptr @dwc2_hc_ahberr_intr._entry.159, ptr @dwc2_hc_ahberr_intr._entry_ptr, ptr @dwc2_hc_ahberr_intr._entry_ptr.123, ptr @dwc2_hc_ahberr_intr._entry_ptr.126, ptr @dwc2_hc_ahberr_intr._entry_ptr.129, ptr @dwc2_hc_ahberr_intr._entry_ptr.132, ptr @dwc2_hc_ahberr_intr._entry_ptr.140, ptr @dwc2_hc_ahberr_intr._entry_ptr.146, ptr @dwc2_hc_ahberr_intr._entry_ptr.149, ptr @dwc2_hc_ahberr_intr._entry_ptr.152, ptr @dwc2_hc_ahberr_intr._entry_ptr.155, ptr @dwc2_hc_ahberr_intr._entry_ptr.158, ptr @dwc2_hc_ahberr_intr._entry_ptr.161, ptr @dwc2_hc_chhltd_intr_dma._entry, ptr @dwc2_hc_chhltd_intr_dma._entry.101, ptr @dwc2_hc_chhltd_intr_dma._entry.98, ptr @dwc2_hc_chhltd_intr_dma._entry_ptr, ptr @dwc2_hc_chhltd_intr_dma._entry_ptr.100, ptr @dwc2_hc_chhltd_intr_dma._entry_ptr.103, ptr @dwc2_hc_datatglerr_intr._entry, ptr @dwc2_hc_datatglerr_intr._entry_ptr, ptr @dwc2_hc_n_intr._entry, ptr @dwc2_hc_n_intr._entry.49, ptr @dwc2_hc_n_intr._entry_ptr, ptr @dwc2_hc_n_intr._entry_ptr.51, ptr @dwc2_hc_nak_intr._entry, ptr @dwc2_hc_nak_intr._entry_ptr, ptr @dwc2_rx_fifo_level_intr._entry, ptr @dwc2_rx_fifo_level_intr._entry.28, ptr @dwc2_rx_fifo_level_intr._entry_ptr, ptr @dwc2_rx_fifo_level_intr._entry_ptr.30, ptr @dwc2_track_missed_sofs._entry, ptr @dwc2_track_missed_sofs._entry.14, ptr @dwc2_track_missed_sofs._entry.17, ptr @dwc2_track_missed_sofs._entry_ptr, ptr @dwc2_track_missed_sofs._entry_ptr.16, ptr @dwc2_track_missed_sofs._entry_ptr.19, ptr @dwc2_update_isoc_urb_state._entry, ptr @dwc2_update_isoc_urb_state._entry_ptr, ptr @dwc2_update_urb_state_abn._entry, ptr @dwc2_update_urb_state_abn._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @switch.table.dwc2_hc_ahberr_intr, ptr @switch.table.dwc2_hc_ahberr_intr.184], section "llvm.metadata"
@0 = internal global [179 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_handle_hcd_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_track_missed_sofs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_track_missed_sofs._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_track_missed_sofs._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_rx_fifo_level_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_rx_fifo_level_intr._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_n_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_n_intr._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_update_isoc_urb_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_chhltd_intr_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_chhltd_intr_dma._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_chhltd_intr_dma._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_update_urb_state_abn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_halt_status_ok._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_halt_status_ok._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_ahberr_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_ahberr_intr._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_ahberr_intr._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_ahberr_intr._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_ahberr_intr._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_ahberr_intr._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_ahberr_intr._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_ahberr_intr._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_ahberr_intr._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_ahberr_intr._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_ahberr_intr._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_ahberr_intr._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_nak_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hc_datatglerr_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwc2_hc_ahberr_intr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwc2_hc_ahberr_intr.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_save_data_toggle(ptr nocapture noundef readonly %hsotg, ptr noundef readonly %chan, i32 noundef %chnum, ptr noundef writeonly %qtd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chnum, 5
  %add = add i32 %mul, 1296
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = shl i32 %2, 24
  %retval.0.i = select i1 %tobool.not.i, i32 %5, i32 %2
  %and = lshr i32 %retval.0.i, 29
  %shr = and i32 %and, 3
  %ep_type = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %ep_type to i32
  call void @__asan_loadN_noabort(i32 %6, i32 3)
  %bf.load = load i24, ptr %ep_type, align 1
  %7 = and i24 %bf.load, 192
  %cmp.not = icmp eq i24 %7, 0
  br i1 %cmp.not, label %if.else32, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %if.then.do.end_crit_edge, label %lor.rhs

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.rhs:                                          ; preds = %if.then
  %qh = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %8 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qh, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end25, !prof !413

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %if.then.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end25:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp26 = icmp eq i32 %shr, 0
  %data_toggle = getelementptr inbounds %struct.dwc2_qh, ptr %9, i32 0, i32 6
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %data_toggle to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %data_toggle, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %data_toggle to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %data_toggle, align 1
  br label %cleanup

if.else32:                                        ; preds = %entry
  %tobool34.not = icmp eq ptr %qtd, null
  br i1 %tobool34.not, label %do.end52, label %if.end68, !prof !413

do.end52:                                         ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 558, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end68:                                         ; preds = %if.else32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp69 = icmp eq i32 %shr, 0
  %data_toggle71 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 2
  br i1 %cmp69, label %if.then70, label %if.else72

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %data_toggle71 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %data_toggle71, align 1
  br label %cleanup

if.else72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %data_toggle71 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %data_toggle71, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else72, %if.then70, %do.end52, %if.else, %if.then27, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_handle_hcd_intr(ptr noundef %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @dwc2_is_controller_alive(ptr noundef %hsotg) #5
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  %7 = lshr i32 %4, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %7, i32 %4
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end.if.end94_crit_edge, label %if.then3

if.end.if.end94_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then3:                                         ; preds = %if.end
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i135 = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i135) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %11 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i137 = icmp eq i8 %12, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %retval.0.i.i138 = select i1 %tobool.not.i.i137, i32 %13, i32 %10
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %17 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i6.i = icmp eq i8 %18, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  %retval.0.i7.i = select i1 %tobool.not.i6.i, i32 %19, i32 %16
  %and.i139 = and i32 %retval.0.i7.i, %retval.0.i.i138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i139)
  %tobool5.not = icmp eq i32 %and.i139, 0
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  %and = and i32 %and.i139, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end8.if.end26_crit_edge, label %do.body15

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.body15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_hcd_intr.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_hcd_intr, %if.end26)) #5
          to label %if.then21 [label %if.end26], !srcloc !414

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_hcd_intr.__UNIQUE_ID_ddebug370, ptr noundef %21, ptr noundef nonnull @.str.8, i32 noundef %and.i139) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %do.body15, %if.end8.if.end26_crit_edge
  %and27 = and i32 %and.i139, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end30_crit_edge, label %if.then29

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  %22 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i141 = icmp eq i8 %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %25, i32 20
  br i1 %tobool.not.i.i141, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 8) #5, !srcloc !415
  br label %dwc2_writel.exit.i

do.body1.i.i:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 134217728) #5, !srcloc !415
  br label %dwc2_writel.exit.i

dwc2_writel.exit.i:                               ; preds = %do.body1.i.i, %do.body.i.i
  %call.i = tail call i32 @dwc2_hcd_get_frame_number(ptr noundef %hsotg) #5
  %conv.i = trunc i32 %call.i to i16
  %frame_number.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 11
  %26 = ptrtoint ptr %frame_number.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %frame_number.i, align 4
  %last_frame_num.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 49
  %frame_num_idx.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 52
  %27 = ptrtoint ptr %frame_num_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frame_num_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %28)
  %cmp3.i.i = icmp slt i32 %28, 1000
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %dwc2_writel.exit.i
  %29 = ptrtoint ptr %last_frame_num.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %last_frame_num.i.i, align 8
  %add.i.i.i = add i16 %30, 1
  %and.i.i.i = and i16 %add.i.i.i, 16383
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i.i.i, i16 %conv.i)
  %cmp.not.i.i = icmp eq i16 %and.i.i.i, %conv.i
  br i1 %cmp.not.i.i, label %if.then5.i.i.dwc2_track_missed_sofs.exit.i_crit_edge, label %if.then10.i.i

if.then5.i.i.dwc2_track_missed_sofs.exit.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_track_missed_sofs.exit.i

if.then10.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %frame_num_array.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 50
  %31 = ptrtoint ptr %frame_num_array.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %frame_num_array.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %32, i32 %28
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i, ptr %arrayidx.i.i, align 2
  %34 = ptrtoint ptr %last_frame_num.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %last_frame_num.i.i, align 8
  %last_frame_num_array.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 51
  %36 = ptrtoint ptr %last_frame_num_array.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %last_frame_num_array.i.i, align 8
  %38 = ptrtoint ptr %frame_num_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %frame_num_idx.i.i, align 4
  %arrayidx14.i.i = getelementptr i16, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %35, ptr %arrayidx14.i.i, align 2
  %41 = load i32, ptr %frame_num_idx.i.i, align 4
  %inc.i.i = add i32 %41, 1
  store i32 %inc.i.i, ptr %frame_num_idx.i.i, align 4
  br label %dwc2_track_missed_sofs.exit.i

if.else.i.i:                                      ; preds = %dwc2_writel.exit.i
  %dumped_frame_num_array.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 53
  %42 = ptrtoint ptr %dumped_frame_num_array.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dumped_frame_num_array.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i25.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i25.i, label %if.then17.i.i, label %if.else.i.i.dwc2_track_missed_sofs.exit.i_crit_edge

if.else.i.i.dwc2_track_missed_sofs.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_track_missed_sofs.exit.i

if.then17.i.i:                                    ; preds = %if.else.i.i
  %44 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.11) #8
  %46 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.15) #8
  %frame_num_array28.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 50
  %last_frame_num_array31.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 51
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %do.end26.i.i.do.end26.i.i_crit_edge, %if.then17.i.i
  %i.062.i.i = phi i32 [ 0, %if.then17.i.i ], [ %inc34.i.i, %do.end26.i.i.do.end26.i.i_crit_edge ]
  %48 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hsotg, align 8
  %50 = ptrtoint ptr %frame_num_array28.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %frame_num_array28.i.i, align 4
  %arrayidx29.i.i = getelementptr i16, ptr %51, i32 %i.062.i.i
  %52 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx29.i.i, align 2
  %conv30.i.i = zext i16 %53 to i32
  %54 = ptrtoint ptr %last_frame_num_array31.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %last_frame_num_array31.i.i, align 8
  %arrayidx32.i.i = getelementptr i16, ptr %55, i32 %i.062.i.i
  %56 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx32.i.i, align 2
  %conv33.i.i = zext i16 %57 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.18, i32 noundef %conv30.i.i, i32 noundef %conv33.i.i) #8
  %inc34.i.i = add nuw nsw i32 %i.062.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc34.i.i, 1000
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %do.end26.i.i.do.end26.i.i_crit_edge

do.end26.i.i.do.end26.i.i_crit_edge:              ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26.i.i

for.end.i.i:                                      ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %dumped_frame_num_array.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %dumped_frame_num_array.i.i, align 8
  br label %dwc2_track_missed_sofs.exit.i

dwc2_track_missed_sofs.exit.i:                    ; preds = %for.end.i.i, %if.else.i.i.dwc2_track_missed_sofs.exit.i_crit_edge, %if.then10.i.i, %if.then5.i.i.dwc2_track_missed_sofs.exit.i_crit_edge
  %59 = ptrtoint ptr %last_frame_num.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i, ptr %last_frame_num.i.i, align 8
  %periodic_sched_inactive.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 40
  %60 = ptrtoint ptr %periodic_sched_inactive.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %periodic_sched_inactive.i, align 4
  %cmp.not26.i = icmp eq ptr %61, %periodic_sched_inactive.i
  br i1 %cmp.not26.i, label %dwc2_track_missed_sofs.exit.i.while.end.i_crit_edge, label %while.body.lr.ph.i

dwc2_track_missed_sofs.exit.i.while.end.i_crit_edge: ; preds = %dwc2_track_missed_sofs.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %dwc2_track_missed_sofs.exit.i
  %periodic_sched_ready.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 41
  %prev.i2.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 41, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %qh_entry.027.i = phi ptr [ %61, %while.body.lr.ph.i ], [ %63, %if.end.i.while.body.i_crit_edge ]
  %62 = ptrtoint ptr %qh_entry.027.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %qh_entry.027.i, align 4
  %next_active_frame.i = getelementptr i8, ptr %qh_entry.027.i, i32 -100
  %64 = ptrtoint ptr %next_active_frame.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %next_active_frame.i, align 8
  %66 = ptrtoint ptr %frame_number.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %frame_number.i, align 4
  %conv.i.i = zext i16 %67 to i32
  %conv1.i.i = zext i16 %65 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %68 = and i32 %sub.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.not.i = icmp eq i32 %68, 0
  br i1 %tobool.not.not.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qh_entry.027.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %qh_entry.027.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i.i, align 4
  %71 = ptrtoint ptr %qh_entry.027.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %qh_entry.027.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev1.i.i.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %70, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %75 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %qh_entry.027.i, ptr noundef %76, ptr noundef %periodic_sched_ready.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.if.end.i_crit_edge

__list_del_entry.exit.i.i.if.end.i_crit_edge:     ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %qh_entry.027.i, ptr %prev.i2.i.i, align 4
  %78 = ptrtoint ptr %qh_entry.027.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %periodic_sched_ready.i, ptr %qh_entry.027.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %qh_entry.027.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %qh_entry.027.i, ptr %76, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %cmp.not.i = icmp eq ptr %63, %periodic_sched_inactive.i
  br i1 %cmp.not.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %dwc2_track_missed_sofs.exit.i.while.end.i_crit_edge
  %call7.i = tail call i32 @dwc2_hcd_select_transactions(ptr noundef %hsotg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.not.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.not.i, label %while.end.i.if.end30_crit_edge, label %if.then10.i

while.end.i.if.end30_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then10.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %hsotg, i32 noundef %call7.i) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then10.i, %while.end.i.if.end30_crit_edge, %if.end26.if.end30_crit_edge
  %and31 = and i32 %and.i139, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end34_crit_edge, label %if.then33

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_rx_fifo_level_intr(ptr noundef %hsotg)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %and35 = and i32 %and.i139, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end38_crit_edge, label %if.then37

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_np_tx_fifo_empty_intr.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_hcd_intr, %dwc2_np_tx_fifo_empty_intr.exit)) #5
          to label %if.then.i142 [label %dwc2_np_tx_fifo_empty_intr.exit], !srcloc !414

if.then.i142:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_np_tx_fifo_empty_intr.__UNIQUE_ID_ddebug300, ptr noundef %82, ptr noundef nonnull @.str.32) #5
  br label %dwc2_np_tx_fifo_empty_intr.exit

dwc2_np_tx_fifo_empty_intr.exit:                  ; preds = %if.then.i142, %if.then37
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %hsotg, i32 noundef 2) #5
  br label %if.end38

if.end38:                                         ; preds = %dwc2_np_tx_fifo_empty_intr.exit, %if.end34.if.end38_crit_edge
  %and39 = and i32 %and.i139, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end42_crit_edge, label %if.then41

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_port_intr(ptr noundef %hsotg)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end38.if.end42_crit_edge
  %and43 = and i32 %and.i139, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end46_crit_edge, label %if.then45

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_intr(ptr noundef %hsotg)
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42.if.end46_crit_edge
  %and47 = and i32 %and.i139, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end50_crit_edge, label %if.then49

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then49:                                        ; preds = %if.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_perio_tx_fifo_empty_intr.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_hcd_intr, %dwc2_perio_tx_fifo_empty_intr.exit)) #5
          to label %if.then5.i [label %dwc2_perio_tx_fifo_empty_intr.exit], !srcloc !414

if.then5.i:                                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_perio_tx_fifo_empty_intr.__UNIQUE_ID_ddebug301, ptr noundef %84, ptr noundef nonnull @.str.183) #5
  br label %dwc2_perio_tx_fifo_empty_intr.exit

dwc2_perio_tx_fifo_empty_intr.exit:               ; preds = %if.then5.i, %if.then49
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %hsotg, i32 noundef 1) #5
  br label %if.end50

if.end50:                                         ; preds = %dwc2_perio_tx_fifo_empty_intr.exit, %if.end46.if.end50_crit_edge
  br i1 %tobool13.not, label %if.end50.if.end94_crit_edge, label %do.body53

if.end50.if.end94_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

do.body53:                                        ; preds = %if.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_hcd_intr.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_hcd_intr, %do.body72)) #5
          to label %if.then67 [label %do.body72], !srcloc !414

if.then67:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_hcd_intr.__UNIQUE_ID_ddebug371, ptr noundef %86, ptr noundef nonnull @.str.9) #5
  br label %do.body72

do.body72:                                        ; preds = %if.then67, %do.body53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_handle_hcd_intr.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_handle_hcd_intr, %if.end94)) #5
          to label %if.then86 [label %if.end94], !srcloc !414

if.then86:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hsotg, align 8
  %89 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %90, i32 20
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %92 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i = icmp eq i8 %93, 0
  %94 = tail call i32 @llvm.bswap.i32(i32 %91) #5
  %retval.0.i143 = select i1 %tobool.not.i, i32 %94, i32 %91
  %95 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %96, i32 24
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %98 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i147 = icmp eq i8 %99, 0
  %100 = tail call i32 @llvm.bswap.i32(i32 %97) #5
  %retval.0.i148 = select i1 %tobool.not.i147, i32 %100, i32 %97
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_handle_hcd_intr.__UNIQUE_ID_ddebug372, ptr noundef %88, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i143, i32 noundef %retval.0.i148) #5
  br label %if.end94

if.end94:                                         ; preds = %if.then86, %do.body72, %if.end50.if.end94_crit_edge, %if.end.if.end94_crit_edge
  %retval1.0 = phi i32 [ 1, %if.then86 ], [ 1, %if.end50.if.end94_crit_edge ], [ 0, %if.end.if.end94_crit_edge ], [ 1, %do.body72 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.then6, %do.end
  %retval.0 = phi i32 [ %retval1.0, %if.end94 ], [ 0, %if.then6 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dwc2_is_controller_alive(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_rx_fifo_level_intr(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_rx_fifo_level_intr, %if.end6)) #5
          to label %if.then5 [label %if.end6], !srcloc !414

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.21) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %retval.0.i148 = select i1 %tobool.not.i, i32 %7, i32 %4
  %and = and i32 %retval.0.i148, 15
  %arrayidx = getelementptr %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 58, i32 %and
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.22) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %and15 = lshr i32 %retval.0.i148, 4
  %shr16 = and i32 %and15, 2047
  %and17 = lshr i32 %retval.0.i148, 15
  %shr18 = and i32 %and17, 3
  %and19 = lshr i32 %retval.0.i148, 17
  %shr20 = and i32 %and19, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_rx_fifo_level_intr, %do.body42)) #5
          to label %if.then37 [label %do.body42], !srcloc !414

if.then37:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug296, ptr noundef %13, ptr noundef nonnull @.str.24, i32 noundef %and) #5
  br label %do.body42

do.body42:                                        ; preds = %if.then37, %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_rx_fifo_level_intr, %do.body61)) #5
          to label %if.then56 [label %do.body61], !srcloc !414

if.then56:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug297, ptr noundef %15, ptr noundef nonnull @.str.25, i32 noundef %shr16) #5
  br label %do.body61

do.body61:                                        ; preds = %if.then56, %do.body42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_rx_fifo_level_intr, %do.body80)) #5
          to label %if.then75 [label %do.body80], !srcloc !414

if.then75:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hsotg, align 8
  %data_pid_start = getelementptr inbounds %struct.dwc2_host_chan, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %data_pid_start to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %data_pid_start, align 4
  %bf.lshr = lshr i16 %bf.load, 3
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug298, ptr noundef %17, ptr noundef nonnull @.str.26, i32 noundef %shr18, i32 noundef %bf.cast) #5
  br label %do.body80

do.body80:                                        ; preds = %if.then75, %do.body61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_rx_fifo_level_intr, %if.end99)) #5
          to label %if.then94 [label %if.end99], !srcloc !414

if.then94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug299, ptr noundef %20, ptr noundef nonnull @.str.27, i32 noundef %shr20) #5
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %do.body80
  %21 = zext i32 %shr20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr20, label %do.end106 [
    i32 2, label %sw.bb
    i32 3, label %if.end99.cleanup_crit_edge
    i32 5, label %if.end99.cleanup_crit_edge154
    i32 7, label %if.end99.cleanup_crit_edge155
  ]

if.end99.cleanup_crit_edge155:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end99.cleanup_crit_edge154:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr16)
  %cmp.not = icmp eq i32 %shr16, 0
  br i1 %cmp.not, label %sw.bb.cleanup_crit_edge, label %if.then100

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then100:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %xfer_buf = getelementptr inbounds %struct.dwc2_host_chan, ptr %9, i32 0, i32 3
  %22 = ptrtoint ptr %xfer_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xfer_buf, align 4
  %conv = trunc i32 %shr16 to i16
  tail call void @dwc2_read_packet(ptr noundef %hsotg, ptr noundef %23, i16 noundef zeroext %conv) #5
  %xfer_count = getelementptr inbounds %struct.dwc2_host_chan, ptr %9, i32 0, i32 7
  %24 = ptrtoint ptr %xfer_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xfer_count, align 4
  %add = add i32 %25, %shr16
  store i32 %add, ptr %xfer_count, align 4
  %26 = ptrtoint ptr %xfer_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xfer_buf, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 %shr16
  store ptr %add.ptr, ptr %xfer_buf, align 4
  br label %cleanup

do.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.29, i32 noundef %shr20) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %if.then100, %sw.bb.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %if.end99.cleanup_crit_edge154, %if.end99.cleanup_crit_edge155, %do.end12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_port_intr(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  %hprt0_modify = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hprt0_modify) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_port_intr.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_port_intr, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_port_intr.__UNIQUE_ID_ddebug305, ptr noundef %1, ptr noundef nonnull @.str.34) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1088
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %retval.0.i133 = select i1 %tobool.not.i, i32 %7, i32 %4
  %and = and i32 %retval.0.i133, -47
  %8 = ptrtoint ptr %hprt0_modify to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %hprt0_modify, align 4
  %and5 = and i32 %retval.0.i133, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.end.if.end27_crit_edge, label %if.then7

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then7:                                         ; preds = %do.end
  %or = or i32 %and, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i137 = getelementptr i8, ptr %10, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 %or) #5, !srcloc !415
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %13, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %11) #5, !srcloc !415
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_port_intr.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_port_intr, %do.end26)) #5
          to label %if.then22 [label %do.end26], !srcloc !414

if.then22:                                        ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_port_intr.__UNIQUE_ID_ddebug306, ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i133) #5
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %dwc2_writel.exit
  tail call void @dwc2_hcd_connect(ptr noundef %hsotg) #5
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %do.end.if.end27_crit_edge
  %and28 = and i32 %retval.0.i133, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end68_crit_edge, label %if.then30

if.end27.if.end68_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then30:                                        ; preds = %if.end27
  %or31 = or i32 %and, 8
  %16 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i139 = icmp eq i8 %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i139, label %do.body1.i145, label %do.body.i142

do.body.i142:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %19, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %or31) #5, !srcloc !415
  br label %dwc2_writel.exit146

do.body1.i145:                                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %or31) #5
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i144 = getelementptr i8, ptr %22, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i144, i32 %20) #5, !srcloc !415
  br label %dwc2_writel.exit146

dwc2_writel.exit146:                              ; preds = %do.body1.i145, %do.body.i142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_port_intr.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_port_intr, %do.end56)) #5
          to label %if.then46 [label %do.end56], !srcloc !414

if.then46:                                        ; preds = %dwc2_writel.exit146
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hsotg, align 8
  %and48 = lshr i32 %retval.0.i133, 2
  %and48.lobit = and i32 %and48, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_port_intr.__UNIQUE_ID_ddebug307, ptr noundef %24, ptr noundef nonnull @.str.36, i32 noundef %retval.0.i133, i32 noundef %and48.lobit) #5
  br label %do.end56

do.end56:                                         ; preds = %if.then46, %dwc2_writel.exit146
  %and57 = and i32 %retval.0.i133, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #7
  %new_connection = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 48
  %25 = ptrtoint ptr %new_connection to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %new_connection, align 2
  call fastcc void @dwc2_hprt0_enable(ptr noundef %hsotg, i32 noundef %retval.0.i133, ptr noundef nonnull %hprt0_modify)
  br label %if.end68

if.else:                                          ; preds = %do.end56
  %flags = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 35
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load = load i32, ptr %flags, align 4
  %bf.set = or i32 %bf.load, 268435456
  store i32 %bf.set, ptr %flags, align 4
  %dma_desc_fs_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 33
  %27 = ptrtoint ptr %dma_desc_fs_enable to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dma_desc_fs_enable, align 4, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool60.not = icmp eq i8 %28, 0
  br i1 %tobool60.not, label %if.else.if.end68_crit_edge, label %if.then61

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then61:                                        ; preds = %if.else
  %dma_desc_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %29 = ptrtoint ptr %dma_desc_enable to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %dma_desc_enable, align 1
  %new_connection63 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 48
  %30 = ptrtoint ptr %new_connection63 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %new_connection63, align 2
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %32, i32 1024
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %34 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i150 = icmp eq i8 %35, 0
  %36 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  %retval.0.i151 = select i1 %tobool.not.i150, i32 %36, i32 %33
  %and65 = and i32 %retval.0.i151, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i150, label %do.body1.i159, label %do.body.i156

do.body.i156:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %38, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %and65) #5, !srcloc !415
  br label %if.end68

do.body1.i159:                                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %and65) #5
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i158 = getelementptr i8, ptr %41, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i158, i32 %39) #5, !srcloc !415
  br label %if.end68

if.end68:                                         ; preds = %do.body1.i159, %do.body.i156, %if.else.if.end68_crit_edge, %if.then59, %if.end27.if.end68_crit_edge
  %and69 = and i32 %retval.0.i133, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end96_crit_edge, label %if.then71

if.end68.if.end96_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.then71:                                        ; preds = %if.end68
  %42 = ptrtoint ptr %hprt0_modify to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hprt0_modify, align 4
  %or72 = or i32 %43, 32
  %44 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i162 = icmp eq i8 %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i162, label %do.body1.i168, label %do.body.i165

do.body.i165:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %add.ptr.i164 = getelementptr i8, ptr %47, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 %or72) #5, !srcloc !415
  br label %dwc2_writel.exit169

do.body1.i168:                                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %or72) #5
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i167 = getelementptr i8, ptr %50, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i167, i32 %48) #5, !srcloc !415
  br label %dwc2_writel.exit169

dwc2_writel.exit169:                              ; preds = %do.body1.i168, %do.body.i165
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_port_intr.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_port_intr, %do.end91)) #5
          to label %if.then87 [label %do.end91], !srcloc !414

if.then87:                                        ; preds = %dwc2_writel.exit169
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_port_intr.__UNIQUE_ID_ddebug308, ptr noundef %52, ptr noundef nonnull @.str.37, i32 noundef %retval.0.i133) #5
  br label %do.end91

do.end91:                                         ; preds = %if.then87, %dwc2_writel.exit169
  %flags92 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 35
  %53 = ptrtoint ptr %flags92 to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load93 = load i32, ptr %flags92, align 4
  %bf.set95 = or i32 %bf.load93, 67108864
  store i32 %bf.set95, ptr %flags92, align 4
  br label %if.end96

if.end96:                                         ; preds = %do.end91, %if.end68.if.end96_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hprt0_modify) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_intr(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1044
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %retval.0.i81 = select i1 %tobool.not.i, i32 %5, i32 %2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_intr.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_intr, %do.body7)) #5
          to label %if.then6 [label %do.body7], !srcloc !414

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_intr.__UNIQUE_ID_ddebug368, ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42) #5
  br label %do.body7

do.body7:                                         ; preds = %if.then6, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_intr.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_intr, %if.end26)) #5
          to label %if.then21 [label %if.end26], !srcloc !414

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_intr.__UNIQUE_ID_ddebug369, ptr noundef %9, ptr noundef nonnull @.str.44, i32 noundef %retval.0.i81) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %do.body7
  %split_order = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 44
  %10 = ptrtoint ptr %split_order to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %split_order, align 4
  %cmp.not85 = icmp eq ptr %11, %split_order
  br i1 %cmp.not85, label %if.end26.for.cond47.preheader_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.for.cond47.preheader_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond47.preheader

for.cond47.preheader:                             ; preds = %if.end41.for.cond47.preheader_crit_edge, %if.end26.for.cond47.preheader_crit_edge
  %haint.0.lcssa = phi i32 [ %retval.0.i81, %if.end26.for.cond47.preheader_crit_edge ], [ %haint.1, %if.end41.for.cond47.preheader_crit_edge ]
  %host_channels = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 37
  %12 = ptrtoint ptr %host_channels to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %host_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp4990.not = icmp eq i8 %13, 0
  br i1 %cmp4990.not, label %for.cond47.preheader.for.end58_crit_edge, label %for.cond47.preheader.for.body51_crit_edge

for.cond47.preheader.for.body51_crit_edge:        ; preds = %for.cond47.preheader
  br label %for.body51

for.cond47.preheader.for.end58_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end58

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %if.end26.for.body_crit_edge
  %haint.087 = phi i32 [ %haint.1, %if.end41.for.body_crit_edge ], [ %retval.0.i81, %if.end26.for.body_crit_edge ]
  %.pn.in86 = phi ptr [ %.pn88, %if.end41.for.body_crit_edge ], [ %11, %if.end26.for.body_crit_edge ]
  %14 = ptrtoint ptr %.pn.in86 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn88 = load ptr, ptr %.pn.in86, align 4
  %chan.0 = getelementptr i8, ptr %.pn.in86, i32 -72
  %15 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %chan.0, align 4
  %conv = zext i8 %16 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %haint.087
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %for.body.if.end41_crit_edge, label %if.then38

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_n_intr(ptr noundef %hsotg, i32 noundef %conv)
  %neg = xor i32 %shl, -1
  %and40 = and i32 %haint.087, %neg
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %for.body.if.end41_crit_edge
  %haint.1 = phi i32 [ %and40, %if.then38 ], [ %haint.087, %for.body.if.end41_crit_edge ]
  %cmp.not = icmp eq ptr %.pn88, %split_order
  br i1 %cmp.not, label %if.end41.for.cond47.preheader_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end41.for.cond47.preheader_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond47.preheader

for.body51:                                       ; preds = %for.inc57.for.body51_crit_edge, %for.cond47.preheader.for.body51_crit_edge
  %i.091 = phi i32 [ %inc, %for.inc57.for.body51_crit_edge ], [ 0, %for.cond47.preheader.for.body51_crit_edge ]
  %shl52 = shl nuw i32 1, %i.091
  %and53 = and i32 %shl52, %haint.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %for.body51.for.inc57_crit_edge, label %if.then55

for.body51.for.inc57_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc57

if.then55:                                        ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_n_intr(ptr noundef %hsotg, i32 noundef %i.091)
  br label %for.inc57

for.inc57:                                        ; preds = %if.then55, %for.body51.for.inc57_crit_edge
  %inc = add nuw nsw i32 %i.091, 1
  %17 = ptrtoint ptr %host_channels to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %host_channels, align 8
  %conv48 = zext i8 %18 to i32
  %cmp49 = icmp ult i32 %inc, %conv48
  br i1 %cmp49, label %for.inc57.for.body51_crit_edge, label %for.inc57.for.end58_crit_edge

for.inc57.for.end58_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end58

for.inc57.for.body51_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body51

for.end58:                                        ; preds = %for.inc57.for.end58_crit_edge, %for.cond47.preheader.for.end58_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_get_frame_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_select_transactions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_queue_transactions(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_read_packet(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hprt0_enable(ptr noundef %hsotg, i32 noundef %hprt0, ptr nocapture noundef %hprt0_modify) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hprt0_enable.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hprt0_enable, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hprt0_enable.__UNIQUE_ID_ddebug302, ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, ptr noundef %hsotg) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1028
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %retval.0.i145 = select i1 %tobool.not.i, i32 %7, i32 %4
  %and = and i32 %retval.0.i145, -65536
  %call6 = tail call i32 @dwc2_calc_frame_interval(ptr noundef %hsotg) #5
  %and7 = and i32 %call6, 65535
  %or = or i32 %and, %and7
  %8 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i147 = icmp eq i8 %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i147, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i149 = getelementptr i8, ptr %11, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %or) #5, !srcloc !415
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %14, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %12) #5, !srcloc !415
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  %host_support_fs_ls_low_power = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 34
  %15 = ptrtoint ptr %host_support_fs_ls_low_power to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %host_support_fs_ls_low_power, align 1, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not = icmp eq i8 %16, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 35
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load = load i32, ptr %flags, align 4
  %bf.set = or i32 %bf.load, 536870912
  store i32 %bf.set, ptr %flags, align 4
  br label %cleanup

if.end10:                                         ; preds = %dwc2_writel.exit
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %21 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i153 = icmp eq i8 %22, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %retval.0.i154 = select i1 %tobool.not.i153, i32 %23, i32 %20
  %and12 = lshr i32 %hprt0, 17
  %shr = and i32 %and12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp = icmp eq i32 %shr, 2
  %shr.off = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.off)
  %switch = icmp ult i32 %shr.off, 2
  %and15 = and i32 %retval.0.i154, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %switch, label %if.then14, label %if.else77

if.then14:                                        ; preds = %if.end10
  br i1 %tobool16.not, label %if.then17, label %if.then14.if.end19_crit_edge

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then17:                                        ; preds = %if.then14
  %or18 = or i32 %retval.0.i154, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i153, label %do.body1.i162, label %do.body.i159

do.body.i159:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %or18) #5, !srcloc !415
  br label %if.end19

do.body1.i162:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or18) #5
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i161 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i161, i32 %26) #5, !srcloc !415
  br label %if.end19

if.end19:                                         ; preds = %do.body1.i162, %do.body.i159, %if.then14.if.end19_crit_edge
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i165 = getelementptr i8, ptr %30, i32 1024
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %32 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i167 = icmp eq i8 %33, 0
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  %retval.0.i168 = select i1 %tobool.not.i167, i32 %34, i32 %31
  %and21 = and i32 %retval.0.i168, 3
  br i1 %cmp, label %land.lhs.true, label %if.end19.do.body51_crit_edge

if.end19.do.body51_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body51

land.lhs.true:                                    ; preds = %if.end19
  %host_ls_low_power_phy_clk = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 35
  %35 = ptrtoint ptr %host_ls_low_power_phy_clk to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %host_ls_low_power_phy_clk, align 2, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool24.not = icmp eq i8 %36, 0
  br i1 %tobool24.not, label %land.lhs.true.do.body51_crit_edge, label %do.body26

land.lhs.true.do.body51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body51

do.body26:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hprt0_enable.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hprt0_enable, %do.end44)) #5
          to label %if.then40 [label %do.end44], !srcloc !414

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hprt0_enable.__UNIQUE_ID_ddebug303, ptr noundef %38, ptr noundef nonnull @.str.40) #5
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body26
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and21)
  %cmp45.not = icmp eq i32 %and21, 2
  br i1 %cmp45.not, label %do.end44.if.end83_crit_edge, label %if.then46

do.end44.if.end83_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then46:                                        ; preds = %do.end44
  %and47 = and i32 %retval.0.i168, -4
  %or49 = or i32 %and47, 2
  %39 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i170 = icmp eq i8 %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i170, label %do.body1.i176, label %do.body.i173

do.body.i173:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %42, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %or49) #5, !srcloc !415
  br label %if.then85

do.body1.i176:                                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %or49) #5
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i175 = getelementptr i8, ptr %45, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i175, i32 %43) #5, !srcloc !415
  br label %if.then85

do.body51:                                        ; preds = %land.lhs.true.do.body51_crit_edge, %if.end19.do.body51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hprt0_enable.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hprt0_enable, %do.end69)) #5
          to label %if.then65 [label %do.end69], !srcloc !414

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hprt0_enable.__UNIQUE_ID_ddebug304, ptr noundef %47, ptr noundef nonnull @.str.41) #5
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %do.body51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and21)
  %cmp70.not = icmp eq i32 %and21, 1
  br i1 %cmp70.not, label %do.end69.if.end83_crit_edge, label %if.then71

do.end69.if.end83_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then71:                                        ; preds = %do.end69
  %and72 = and i32 %retval.0.i168, -4
  %or74 = or i32 %and72, 1
  %48 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i179 = icmp eq i8 %49, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i179, label %do.body1.i185, label %do.body.i182

do.body.i182:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr.i181 = getelementptr i8, ptr %51, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 %or74) #5, !srcloc !415
  br label %if.then85

do.body1.i185:                                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %or74) #5
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i184 = getelementptr i8, ptr %54, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i184, i32 %52) #5, !srcloc !415
  br label %if.then85

if.else77:                                        ; preds = %if.end10
  br i1 %tobool16.not, label %if.else77.if.else89_crit_edge, label %if.then80

if.else77.if.else89_crit_edge:                    ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else89

if.then80:                                        ; preds = %if.else77
  %and81 = and i32 %retval.0.i154, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i153, label %do.body1.i194, label %do.body.i191

do.body.i191:                                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %add.ptr.i190 = getelementptr i8, ptr %56, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 %and81) #5, !srcloc !415
  br label %if.then85

do.body1.i194:                                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %and81) #5
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i193 = getelementptr i8, ptr %59, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i193, i32 %57) #5, !srcloc !415
  br label %if.then85

if.end83:                                         ; preds = %do.end69.if.end83_crit_edge, %do.end44.if.end83_crit_edge
  br i1 %tobool16.not, label %if.end83.if.then85_crit_edge, label %if.end83.if.else89_crit_edge

if.end83.if.else89_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else89

if.end83.if.then85_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then85

if.then85:                                        ; preds = %if.end83.if.then85_crit_edge, %do.body1.i194, %do.body.i191, %do.body1.i185, %do.body.i182, %do.body1.i176, %do.body.i173
  %60 = ptrtoint ptr %hprt0_modify to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hprt0_modify, align 4
  %or86 = or i32 %61, 256
  store i32 %or86, ptr %hprt0_modify, align 4
  %62 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i197 = icmp eq i8 %63, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i197, label %do.body1.i203, label %do.body.i200

do.body.i200:                                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %add.ptr.i199 = getelementptr i8, ptr %65, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 %or86) #5, !srcloc !415
  br label %dwc2_writel.exit204

do.body1.i203:                                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %or86) #5
  %67 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i202 = getelementptr i8, ptr %68, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i202, i32 %66) #5, !srcloc !415
  br label %dwc2_writel.exit204

dwc2_writel.exit204:                              ; preds = %do.body1.i203, %do.body.i200
  %wq_otg = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 25
  %69 = ptrtoint ptr %wq_otg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wq_otg, align 8
  %reset_work = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 62
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %70, ptr noundef %reset_work, i32 noundef 6) #5
  br label %cleanup

if.else89:                                        ; preds = %if.end83.if.else89_crit_edge, %if.else77.if.else89_crit_edge
  %flags90 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 35
  %71 = ptrtoint ptr %flags90 to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load91 = load i32, ptr %flags90, align 4
  %bf.set93 = or i32 %bf.load91, 536870912
  store i32 %bf.set93, ptr %flags90, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else89, %dwc2_writel.exit204, %if.then9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_calc_frame_interval(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_n_intr(ptr noundef %hsotg, i32 noundef %chnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 58, i32 %chnum
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %mul = shl i32 %chnum, 5
  %add = add i32 %mul, 1288
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %retval.0.i371 = select i1 %tobool.not.i, i32 %7, i32 %4
  %add2 = add i32 %mul, 1292
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i373 = getelementptr i8, ptr %9, i32 %add2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i373) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %11 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i375 = icmp eq i8 %12, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %retval.0.i376 = select i1 %tobool.not.i375, i32 %13, i32 %10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.45) #8
  %16 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i378 = icmp eq i8 %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i378, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i380 = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380, i32 %retval.0.i371) #5, !srcloc !415
  br label %cleanup

do.body1.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i371) #5
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %20) #5, !srcloc !415
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_n_intr.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_n_intr, %do.body19)) #5
          to label %if.then14 [label %do.body19], !srcloc !414

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_n_intr.__UNIQUE_ID_ddebug364, ptr noundef %24, ptr noundef nonnull @.str.47, i32 noundef %chnum) #5
  br label %do.body19

do.body19:                                        ; preds = %if.then14, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_n_intr.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_n_intr, %if.end38)) #5
          to label %if.then33 [label %if.end38], !srcloc !414

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hsotg, align 8
  %and = and i32 %retval.0.i376, %retval.0.i371
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_n_intr.__UNIQUE_ID_ddebug365, ptr noundef %26, ptr noundef nonnull @.str.48, i32 noundef %retval.0.i371, i32 noundef %retval.0.i376, i32 noundef %and) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %do.body19
  %27 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i382 = icmp eq i8 %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i382, label %do.body1.i388, label %do.body.i385

do.body.i385:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i384 = getelementptr i8, ptr %30, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i384, i32 %retval.0.i371) #5, !srcloc !415
  br label %dwc2_writel.exit389

do.body1.i388:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i371) #5
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i387 = getelementptr i8, ptr %33, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i387, i32 %31) #5, !srcloc !415
  br label %dwc2_writel.exit389

dwc2_writel.exit389:                              ; preds = %do.body1.i388, %do.body.i385
  %qh = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %34 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %qh, align 4
  %tobool41.not = icmp eq ptr %35, null
  br i1 %tobool41.not, label %do.end45, label %if.end47

do.end45:                                         ; preds = %dwc2_writel.exit389
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.50) #8
  br label %cleanup

if.end47:                                         ; preds = %dwc2_writel.exit389
  %hcint48 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 23
  %38 = ptrtoint ptr %hcint48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i371, ptr %hcint48, align 4
  %and49 = and i32 %retval.0.i376, %retval.0.i371
  %halt_status = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 22
  %39 = ptrtoint ptr %halt_status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %halt_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %40)
  %cmp = icmp eq i32 %40, 13
  br i1 %cmp, label %if.then50, label %if.end86

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and49)
  %cmp51.not = icmp eq i32 %and49, 2
  br i1 %cmp51.not, label %if.then50.if.end73_crit_edge, label %do.end67, !prof !416

if.then50.if.end73_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

do.end67:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2092, i32 noundef 9, ptr noundef null) #5
  br label %if.end73

if.end73:                                         ; preds = %do.end67, %if.then50.if.end73_crit_edge
  %dma_desc_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %41 = ptrtoint ptr %dma_desc_enable to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dma_desc_enable, align 1, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool81.not = icmp eq i8 %42, 0
  %43 = ptrtoint ptr %halt_status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %halt_status, align 4
  br i1 %tobool81.not, label %if.else, label %if.then82

if.then82:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %hsotg, ptr noundef nonnull %1, i32 noundef %chnum, i32 noundef %44) #5
  br label %cleanup

if.else:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_release_channel(ptr noundef %hsotg, ptr noundef nonnull %1, ptr noundef null, i32 noundef %44)
  br label %cleanup

if.end86:                                         ; preds = %if.end47
  %qtd_list = getelementptr inbounds %struct.dwc2_qh, ptr %35, i32 0, i32 23
  %45 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not = icmp eq ptr %46, %qtd_list
  br i1 %cmp.i.not, label %do.body91, label %if.end132

do.body91:                                        ; preds = %if.end86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_n_intr.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_n_intr, %do.body110)) #5
          to label %if.then105 [label %do.body110], !srcloc !414

if.then105:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_n_intr.__UNIQUE_ID_ddebug366, ptr noundef %48, ptr noundef nonnull @.str.52, i32 noundef %chnum) #5
  br label %do.body110

do.body110:                                       ; preds = %if.then105, %do.body91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_n_intr.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_n_intr, %do.end129)) #5
          to label %if.then124 [label %do.end129], !srcloc !414

if.then124:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hsotg, align 8
  %51 = ptrtoint ptr %hcint48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hcint48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_n_intr.__UNIQUE_ID_ddebug367, ptr noundef %50, ptr noundef nonnull @.str.48, i32 noundef %52, i32 noundef %retval.0.i376, i32 noundef %and49) #5
  br label %do.end129

do.end129:                                        ; preds = %if.then124, %do.body110
  %53 = ptrtoint ptr %halt_status to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %halt_status, align 4
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %add2
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %57 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i = icmp eq i8 %58, 0
  %59 = tail call i32 @llvm.bswap.i32(i32 %56) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %59, i32 %56
  %and.i = and i32 %retval.0.i.i, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %61, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %and.i) #5, !srcloc !415
  br label %disable_hc_int.exit

do.body1.i.i:                                     ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %64, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %62) #5, !srcloc !415
  br label %disable_hc_int.exit

disable_hc_int.exit:                              ; preds = %do.body1.i.i, %do.body.i.i
  %65 = ptrtoint ptr %hcint48 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %hcint48, align 4
  br label %cleanup

if.end132:                                        ; preds = %if.end86
  %add.ptr = getelementptr i8, ptr %46, i32 -36
  %host_dma = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 31
  %66 = ptrtoint ptr %host_dma to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %host_dma, align 2, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool137.not = icmp ne i8 %67, 0
  %and139 = and i32 %and49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  %or.cond = select i1 %tobool137.not, i1 true, i1 %tobool140.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and49)
  %cmp141.not = icmp eq i32 %and49, 2
  %and143 = and i32 %and49, -3
  %spec.select = select i1 %cmp141.not, i32 2, i32 %and143
  %hcint.0 = select i1 %or.cond, i32 %and49, i32 %spec.select
  %and146 = and i32 %hcint.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end132.if.end150_crit_edge, label %if.then148

if.end132.if.end150_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end150

if.then148:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_xfercomp_intr(ptr noundef %hsotg, ptr noundef nonnull %1, i32 noundef %chnum, ptr noundef %add.ptr)
  %and149 = and i32 %hcint.0, -65
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.end132.if.end150_crit_edge
  %hcint.1 = phi i32 [ %and149, %if.then148 ], [ %hcint.0, %if.end132.if.end150_crit_edge ]
  %and151 = and i32 %hcint.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end150.if.end158_crit_edge, label %if.then153

if.end150.if.end158_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

if.then153:                                       ; preds = %if.end150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_chhltd_intr.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_n_intr, %if.end6.i)) #5
          to label %if.then5.i [label %if.end6.i], !srcloc !414

if.then5.i:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_chhltd_intr.__UNIQUE_ID_ddebug363, ptr noundef %69, ptr noundef nonnull @.str.91, i32 noundef %chnum) #5
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.then153
  %70 = ptrtoint ptr %host_dma to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %host_dma, align 2, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool7.not.i = icmp eq i8 %71, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_chhltd_intr_dma(ptr noundef %hsotg, ptr noundef nonnull %1, i32 noundef %chnum, ptr noundef %add.ptr) #5
  br label %dwc2_hc_chhltd_intr.exit

if.else.i:                                        ; preds = %if.end6.i
  %call9.i = tail call fastcc zeroext i1 @dwc2_halt_status_ok(ptr noundef %hsotg, ptr noundef nonnull %1, i32 noundef %chnum, ptr noundef %add.ptr) #5
  br i1 %call9.i, label %if.end11.i, label %if.else.i.dwc2_hc_chhltd_intr.exit_crit_edge

if.else.i.dwc2_hc_chhltd_intr.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_chhltd_intr.exit

if.end11.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %halt_status to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %halt_status, align 4
  tail call fastcc void @dwc2_release_channel(ptr noundef %hsotg, ptr noundef nonnull %1, ptr noundef %add.ptr, i32 noundef %73) #5
  br label %dwc2_hc_chhltd_intr.exit

dwc2_hc_chhltd_intr.exit:                         ; preds = %if.end11.i, %if.else.i.dwc2_hc_chhltd_intr.exit_crit_edge, %if.then8.i
  %74 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %qh, align 4
  %tobool.not.i390 = icmp eq ptr %75, null
  br i1 %tobool.not.i390, label %dwc2_hc_chhltd_intr.exit.exit_crit_edge, label %dwc2_check_qtd_still_ok.exit

dwc2_hc_chhltd_intr.exit.exit_crit_edge:          ; preds = %dwc2_hc_chhltd_intr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit:                     ; preds = %dwc2_hc_chhltd_intr.exit
  %qtd_list.i = getelementptr inbounds %struct.dwc2_qh, ptr %75, i32 0, i32 23
  %76 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %qtd_list.i, align 8
  %cmp.i392 = icmp eq ptr %77, %46
  br i1 %cmp.i392, label %dwc2_check_qtd_still_ok.exit.if.end158_crit_edge, label %dwc2_check_qtd_still_ok.exit.exit_crit_edge

dwc2_check_qtd_still_ok.exit.exit_crit_edge:      ; preds = %dwc2_check_qtd_still_ok.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit.if.end158_crit_edge: ; preds = %dwc2_check_qtd_still_ok.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

if.end158:                                        ; preds = %dwc2_check_qtd_still_ok.exit.if.end158_crit_edge, %if.end150.if.end158_crit_edge
  %and159 = and i32 %hcint.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.end158.if.end166_crit_edge, label %if.then161

if.end158.if.end166_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166

if.then161:                                       ; preds = %if.end158
  tail call fastcc void @dwc2_hc_ahberr_intr(ptr noundef %hsotg, ptr noundef nonnull %1, i32 noundef %chnum, ptr noundef %add.ptr)
  %78 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %qh, align 4
  %tobool.not.i394 = icmp eq ptr %79, null
  br i1 %tobool.not.i394, label %if.then161.exit_crit_edge, label %dwc2_check_qtd_still_ok.exit400

if.then161.exit_crit_edge:                        ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit400:                  ; preds = %if.then161
  %qtd_list.i395 = getelementptr inbounds %struct.dwc2_qh, ptr %79, i32 0, i32 23
  %80 = ptrtoint ptr %qtd_list.i395 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %qtd_list.i395, align 8
  %cmp.i397 = icmp eq ptr %81, %46
  br i1 %cmp.i397, label %dwc2_check_qtd_still_ok.exit400.if.end166_crit_edge, label %dwc2_check_qtd_still_ok.exit400.exit_crit_edge

dwc2_check_qtd_still_ok.exit400.exit_crit_edge:   ; preds = %dwc2_check_qtd_still_ok.exit400
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit400.if.end166_crit_edge: ; preds = %dwc2_check_qtd_still_ok.exit400
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166

if.end166:                                        ; preds = %dwc2_check_qtd_still_ok.exit400.if.end166_crit_edge, %if.end158.if.end166_crit_edge
  %and167 = and i32 %hcint.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.end166.if.end174_crit_edge, label %if.then169

if.end166.if.end174_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end174

if.then169:                                       ; preds = %if.end166
  tail call fastcc void @dwc2_hc_stall_intr(ptr noundef %hsotg, ptr noundef nonnull %1, i32 noundef %chnum, ptr noundef %add.ptr)
  %82 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %qh, align 4
  %tobool.not.i401 = icmp eq ptr %83, null
  br i1 %tobool.not.i401, label %if.then169.exit_crit_edge, label %dwc2_check_qtd_still_ok.exit407

if.then169.exit_crit_edge:                        ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit407:                  ; preds = %if.then169
  %qtd_list.i402 = getelementptr inbounds %struct.dwc2_qh, ptr %83, i32 0, i32 23
  %84 = ptrtoint ptr %qtd_list.i402 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %qtd_list.i402, align 8
  %cmp.i404 = icmp eq ptr %85, %46
  br i1 %cmp.i404, label %dwc2_check_qtd_still_ok.exit407.if.end174_crit_edge, label %dwc2_check_qtd_still_ok.exit407.exit_crit_edge

dwc2_check_qtd_still_ok.exit407.exit_crit_edge:   ; preds = %dwc2_check_qtd_still_ok.exit407
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit407.if.end174_crit_edge: ; preds = %dwc2_check_qtd_still_ok.exit407
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end174

if.end174:                                        ; preds = %dwc2_check_qtd_still_ok.exit407.if.end174_crit_edge, %if.end166.if.end174_crit_edge
  %and175 = and i32 %hcint.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end174.if.end182_crit_edge, label %if.then177

if.end174.if.end182_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end182

if.then177:                                       ; preds = %if.end174
  tail call fastcc void @dwc2_hc_nak_intr(ptr noundef %hsotg, ptr noundef nonnull %1, i32 noundef %chnum, ptr noundef %add.ptr)
  %86 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %qh, align 4
  %tobool.not.i408 = icmp eq ptr %87, null
  br i1 %tobool.not.i408, label %if.then177.exit_crit_edge, label %dwc2_check_qtd_still_ok.exit414

if.then177.exit_crit_edge:                        ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit414:                  ; preds = %if.then177
  %qtd_list.i409 = getelementptr inbounds %struct.dwc2_qh, ptr %87, i32 0, i32 23
  %88 = ptrtoint ptr %qtd_list.i409 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %qtd_list.i409, align 8
  %cmp.i411 = icmp eq ptr %89, %46
  br i1 %cmp.i411, label %dwc2_check_qtd_still_ok.exit414.if.end182_crit_edge, label %dwc2_check_qtd_still_ok.exit414.exit_crit_edge

dwc2_check_qtd_still_ok.exit414.exit_crit_edge:   ; preds = %dwc2_check_qtd_still_ok.exit414
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit414.if.end182_crit_edge: ; preds = %dwc2_check_qtd_still_ok.exit414
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end182

if.end182:                                        ; preds = %dwc2_check_qtd_still_ok.exit414.if.end182_crit_edge, %if.end174.if.end182_crit_edge
  %and183 = and i32 %hcint.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %if.end182.if.end190_crit_edge, label %if.then185

if.end182.if.end190_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end190

if.then185:                                       ; preds = %if.end182
  tail call fastcc void @dwc2_hc_ack_intr(ptr noundef %hsotg, ptr noundef nonnull %1, i32 noundef %chnum, ptr noundef %add.ptr)
  %90 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %qh, align 4
  %tobool.not.i415 = icmp eq ptr %91, null
  br i1 %tobool.not.i415, label %if.then185.exit_crit_edge, label %dwc2_check_qtd_still_ok.exit421

if.then185.exit_crit_edge:                        ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit421:                  ; preds = %if.then185
  %qtd_list.i416 = getelementptr inbounds %struct.dwc2_qh, ptr %91, i32 0, i32 23
  %92 = ptrtoint ptr %qtd_list.i416 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %qtd_list.i416, align 8
  %cmp.i418 = icmp eq ptr %93, %46
  br i1 %cmp.i418, label %dwc2_check_qtd_still_ok.exit421.if.end190_crit_edge, label %dwc2_check_qtd_still_ok.exit421.exit_crit_edge

dwc2_check_qtd_still_ok.exit421.exit_crit_edge:   ; preds = %dwc2_check_qtd_still_ok.exit421
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit421.if.end190_crit_edge: ; preds = %dwc2_check_qtd_still_ok.exit421
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end190

if.end190:                                        ; preds = %dwc2_check_qtd_still_ok.exit421.if.end190_crit_edge, %if.end182.if.end190_crit_edge
  %and191 = and i32 %hcint.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.end190.if.end198_crit_edge, label %if.then193

if.end190.if.end198_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end198

if.then193:                                       ; preds = %if.end190
  tail call fastcc void @dwc2_hc_nyet_intr(ptr noundef %hsotg, ptr noundef nonnull %1, i32 noundef %chnum, ptr noundef %add.ptr)
  %94 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %qh, align 4
  %tobool.not.i422 = icmp eq ptr %95, null
  br i1 %tobool.not.i422, label %if.then193.exit_crit_edge, label %dwc2_check_qtd_still_ok.exit428

if.then193.exit_crit_edge:                        ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit428:                  ; preds = %if.then193
  %qtd_list.i423 = getelementptr inbounds %struct.dwc2_qh, ptr %95, i32 0, i32 23
  %96 = ptrtoint ptr %qtd_list.i423 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %qtd_list.i423, align 8
  %cmp.i425 = icmp eq ptr %97, %46
  br i1 %cmp.i425, label %dwc2_check_qtd_still_ok.exit428.if.end198_crit_edge, label %dwc2_check_qtd_still_ok.exit428.exit_crit_edge

dwc2_check_qtd_still_ok.exit428.exit_crit_edge:   ; preds = %dwc2_check_qtd_still_ok.exit428
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit428.if.end198_crit_edge: ; preds = %dwc2_check_qtd_still_ok.exit428
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end198

if.end198:                                        ; preds = %dwc2_check_qtd_still_ok.exit428.if.end198_crit_edge, %if.end190.if.end198_crit_edge
  %and199 = and i32 %hcint.1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.end198.if.end206_crit_edge, label %if.then201

if.end198.if.end206_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206

if.then201:                                       ; preds = %if.end198
  tail call fastcc void @dwc2_hc_xacterr_intr(ptr noundef %hsotg, ptr noundef nonnull %1, i32 noundef %chnum, ptr noundef %add.ptr)
  %98 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %qh, align 4
  %tobool.not.i429 = icmp eq ptr %99, null
  br i1 %tobool.not.i429, label %if.then201.exit_crit_edge, label %dwc2_check_qtd_still_ok.exit435

if.then201.exit_crit_edge:                        ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit435:                  ; preds = %if.then201
  %qtd_list.i430 = getelementptr inbounds %struct.dwc2_qh, ptr %99, i32 0, i32 23
  %100 = ptrtoint ptr %qtd_list.i430 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %qtd_list.i430, align 8
  %cmp.i432 = icmp eq ptr %101, %46
  br i1 %cmp.i432, label %dwc2_check_qtd_still_ok.exit435.if.end206_crit_edge, label %dwc2_check_qtd_still_ok.exit435.exit_crit_edge

dwc2_check_qtd_still_ok.exit435.exit_crit_edge:   ; preds = %dwc2_check_qtd_still_ok.exit435
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit435.if.end206_crit_edge: ; preds = %dwc2_check_qtd_still_ok.exit435
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206

if.end206:                                        ; preds = %dwc2_check_qtd_still_ok.exit435.if.end206_crit_edge, %if.end198.if.end206_crit_edge
  %and207 = and i32 %hcint.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %if.end206.if.end214_crit_edge, label %if.then209

if.end206.if.end214_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end214

if.then209:                                       ; preds = %if.end206
  tail call fastcc void @dwc2_hc_babble_intr(ptr noundef %hsotg, ptr noundef nonnull %1, i32 noundef %chnum, ptr noundef %add.ptr)
  %102 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %qh, align 4
  %tobool.not.i436 = icmp eq ptr %103, null
  br i1 %tobool.not.i436, label %if.then209.exit_crit_edge, label %dwc2_check_qtd_still_ok.exit442

if.then209.exit_crit_edge:                        ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit442:                  ; preds = %if.then209
  %qtd_list.i437 = getelementptr inbounds %struct.dwc2_qh, ptr %103, i32 0, i32 23
  %104 = ptrtoint ptr %qtd_list.i437 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %qtd_list.i437, align 8
  %cmp.i439 = icmp eq ptr %105, %46
  br i1 %cmp.i439, label %dwc2_check_qtd_still_ok.exit442.if.end214_crit_edge, label %dwc2_check_qtd_still_ok.exit442.exit_crit_edge

dwc2_check_qtd_still_ok.exit442.exit_crit_edge:   ; preds = %dwc2_check_qtd_still_ok.exit442
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit442.if.end214_crit_edge: ; preds = %dwc2_check_qtd_still_ok.exit442
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end214

if.end214:                                        ; preds = %dwc2_check_qtd_still_ok.exit442.if.end214_crit_edge, %if.end206.if.end214_crit_edge
  %and215 = and i32 %hcint.1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %if.end222, label %if.then217

if.then217:                                       ; preds = %if.end214
  tail call fastcc void @dwc2_hc_frmovrun_intr(ptr noundef %hsotg, ptr noundef nonnull %1, i32 noundef %chnum, ptr noundef %add.ptr)
  %106 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %qh, align 4
  %tobool.not.i443 = icmp eq ptr %107, null
  br i1 %tobool.not.i443, label %if.then217.exit_crit_edge, label %dwc2_check_qtd_still_ok.exit449

if.then217.exit_crit_edge:                        ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

dwc2_check_qtd_still_ok.exit449:                  ; preds = %if.then217
  %qtd_list.i444 = getelementptr inbounds %struct.dwc2_qh, ptr %107, i32 0, i32 23
  %108 = ptrtoint ptr %qtd_list.i444 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %qtd_list.i444, align 8
  %cmp.i446 = icmp ne ptr %109, %46
  %and223 = and i32 %hcint.1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  %or.cond361 = select i1 %cmp.i446, i1 true, i1 %tobool224.not
  br i1 %or.cond361, label %dwc2_check_qtd_still_ok.exit449.exit_crit_edge, label %dwc2_check_qtd_still_ok.exit449.if.then225_crit_edge

dwc2_check_qtd_still_ok.exit449.if.then225_crit_edge: ; preds = %dwc2_check_qtd_still_ok.exit449
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then225

dwc2_check_qtd_still_ok.exit449.exit_crit_edge:   ; preds = %dwc2_check_qtd_still_ok.exit449
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end222:                                        ; preds = %if.end214
  %and223.old = and i32 %hcint.1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223.old)
  %tobool224.not.old = icmp eq i32 %and223.old, 0
  br i1 %tobool224.not.old, label %if.end222.exit_crit_edge, label %if.end222.if.then225_crit_edge

if.end222.if.then225_crit_edge:                   ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then225

if.end222.exit_crit_edge:                         ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.then225:                                       ; preds = %if.end222.if.then225_crit_edge, %dwc2_check_qtd_still_ok.exit449.if.then225_crit_edge
  tail call fastcc void @dwc2_hc_datatglerr_intr(ptr noundef %hsotg, ptr noundef nonnull %1, i32 noundef %chnum, ptr noundef %add.ptr)
  br label %exit

exit:                                             ; preds = %if.then225, %if.end222.exit_crit_edge, %dwc2_check_qtd_still_ok.exit449.exit_crit_edge, %if.then217.exit_crit_edge, %dwc2_check_qtd_still_ok.exit442.exit_crit_edge, %if.then209.exit_crit_edge, %dwc2_check_qtd_still_ok.exit435.exit_crit_edge, %if.then201.exit_crit_edge, %dwc2_check_qtd_still_ok.exit428.exit_crit_edge, %if.then193.exit_crit_edge, %dwc2_check_qtd_still_ok.exit421.exit_crit_edge, %if.then185.exit_crit_edge, %dwc2_check_qtd_still_ok.exit414.exit_crit_edge, %if.then177.exit_crit_edge, %dwc2_check_qtd_still_ok.exit407.exit_crit_edge, %if.then169.exit_crit_edge, %dwc2_check_qtd_still_ok.exit400.exit_crit_edge, %if.then161.exit_crit_edge, %dwc2_check_qtd_still_ok.exit.exit_crit_edge, %dwc2_hc_chhltd_intr.exit.exit_crit_edge
  %110 = ptrtoint ptr %hcint48 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %hcint48, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %disable_hc_int.exit, %if.else, %if.then82, %do.end45, %do.body1.i, %do.body.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_complete_xfer_ddma(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_release_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %halt_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_release_channel.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_release_channel, %if.end6)) #5
          to label %if.then5 [label %if.end6], !srcloc !414

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chan, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_release_channel.__UNIQUE_ID_ddebug319, ptr noundef %1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef %conv, i32 noundef %halt_status) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry
  %4 = zext i32 %halt_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %halt_status, label %if.end6.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 11, label %if.end6.sw.bb7_crit_edge
    i32 6, label %if.end6.sw.bb7_crit_edge120
    i32 9, label %if.end6.sw.bb7_crit_edge121
    i32 7, label %sw.bb8
    i32 13, label %if.end6.cleanup_crit_edge
    i32 12, label %do.body35
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.sw.bb7_crit_edge121:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

if.end6.sw.bb7_crit_edge120:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

if.end6.sw.bb7_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6.sw.bb7_crit_edge, %if.end6.sw.bb7_crit_edge120, %if.end6.sw.bb7_crit_edge121
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end6
  %tobool9.not = icmp eq ptr %qtd, null
  br i1 %tobool9.not, label %sw.bb8.sw.epilog_crit_edge, label %land.lhs.true

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb8
  %error_count = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %5 = ptrtoint ptr %error_count to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %error_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp = icmp ugt i8 %6, 2
  br i1 %cmp, label %do.body13, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body13:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_release_channel.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_release_channel, %do.end31)) #5
          to label %if.then27 [label %do.end31], !srcloc !414

if.then27:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_release_channel.__UNIQUE_ID_ddebug320, ptr noundef %8, ptr noundef nonnull @.str.55) #5
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body13
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef nonnull %qtd, i32 noundef -71) #5
  br label %sw.epilog

do.body35:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_release_channel.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_release_channel, %do.end53)) #5
          to label %if.then49 [label %do.end53], !srcloc !414

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_release_channel.__UNIQUE_ID_ddebug321, ptr noundef %10, ptr noundef nonnull @.str.56) #5
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %do.body35
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef -5) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end53, %do.end31, %land.lhs.true.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %sw.bb7, %sw.bb, %if.end6.sw.epilog_crit_edge
  %free_qtd.0 = phi i32 [ 0, %if.end6.sw.epilog_crit_edge ], [ 1, %do.end53 ], [ 1, %do.end31 ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ 0, %sw.bb8.sw.epilog_crit_edge ], [ 1, %sw.bb7 ], [ 1, %sw.bb ]
  %qh = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %11 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qh, align 4
  tail call fastcc void @dwc2_deactivate_qh(ptr noundef %hsotg, ptr noundef %12, i32 noundef %free_qtd.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end6.cleanup_crit_edge
  %hc_list_entry = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 25
  %13 = ptrtoint ptr %hc_list_entry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hc_list_entry, align 4
  %cmp.i.not = icmp eq ptr %14, %hc_list_entry
  br i1 %cmp.i.not, label %cleanup.if.end59_crit_edge, label %if.then57

cleanup.if.end59_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then57:                                        ; preds = %cleanup
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hc_list_entry) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then57.list_del.exit_crit_edge

if.then57.list_del.exit_crit_edge:                ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 25, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %hc_list_entry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hc_list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then57.list_del.exit_crit_edge
  %21 = ptrtoint ptr %hc_list_entry to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %hc_list_entry, align 4
  %prev.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 25, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %list_del.exit, %cleanup.if.end59_crit_edge
  tail call void @dwc2_hc_cleanup(ptr noundef %hsotg, ptr noundef %chan) #5
  %free_hc_list = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 54
  %prev.i109 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 54, i32 1
  %23 = ptrtoint ptr %prev.i109 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i109, align 4
  %call.i.i110 = tail call zeroext i1 @__list_add_valid(ptr noundef %hc_list_entry, ptr noundef %24, ptr noundef %free_hc_list) #5
  br i1 %call.i.i110, label %if.end.i.i111, label %if.end59.list_add_tail.exit_crit_edge

if.end59.list_add_tail.exit_crit_edge:            ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i111:                                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i109 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %hc_list_entry, ptr %prev.i109, align 4
  %26 = ptrtoint ptr %hc_list_entry to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %free_hc_list, ptr %hc_list_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 25, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %hc_list_entry, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i111, %if.end59.list_add_tail.exit_crit_edge
  %uframe_sched = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 13
  %29 = ptrtoint ptr %uframe_sched to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %uframe_sched, align 2, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool61.not = icmp eq i8 %30, 0
  br i1 %tobool61.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %available_host_channels = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 57
  %31 = ptrtoint ptr %available_host_channels to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %available_host_channels, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %available_host_channels, align 4
  br label %if.end66

if.else:                                          ; preds = %list_add_tail.exit
  %ep_type = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %33 = ptrtoint ptr %ep_type to i32
  call void @__asan_loadN_noabort(i32 %33, i32 3)
  %bf.load = load i24, ptr %ep_type, align 1
  %bf.lshr = lshr i24 %bf.load, 6
  %bf.clear = and i24 %bf.lshr, 3
  %bf.cast = zext i24 %bf.clear to i32
  %34 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %bf.cast, label %if.else.if.end66_crit_edge [
    i32 0, label %if.else.sw.bb63_crit_edge
    i32 2, label %if.else.sw.bb63_crit_edge122
  ]

if.else.sw.bb63_crit_edge122:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb63

if.else.sw.bb63_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb63

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

sw.bb63:                                          ; preds = %if.else.sw.bb63_crit_edge, %if.else.sw.bb63_crit_edge122
  %non_periodic_channels = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 56
  %35 = ptrtoint ptr %non_periodic_channels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %non_periodic_channels, align 8
  %dec = add i32 %36, -1
  store i32 %dec, ptr %non_periodic_channels, align 8
  br label %if.end66

if.end66:                                         ; preds = %sw.bb63, %if.else.if.end66_crit_edge, %if.then62
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 1048
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %40 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  %retval.0.i112 = select i1 %tobool.not.i, i32 %42, i32 %39
  %43 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %chan, align 4
  %conv69 = zext i8 %44 to i32
  %shl = shl nuw i32 1, %conv69
  %neg = xor i32 %shl, -1
  %and = and i32 %retval.0.i112, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %46, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %and) #5, !srcloc !415
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %49, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %47) #5, !srcloc !415
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  %call70 = tail call i32 @dwc2_hcd_select_transactions(ptr noundef %hsotg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71.not = icmp eq i32 %call70, 0
  br i1 %cmp71.not, label %dwc2_writel.exit.if.end74_crit_edge, label %if.then73

dwc2_writel.exit.if.end74_crit_edge:              ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then73:                                        ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %hsotg, i32 noundef %call70) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %dwc2_writel.exit.if.end74_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_xfercomp_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %urb1 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %0 = ptrtoint ptr %urb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_xfercomp_intr, %if.end7)) #5
          to label %if.then6 [label %if.end7], !srcloc !414

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug330, ptr noundef %3, ptr noundef nonnull @.str.61, i32 noundef %chnum) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %entry
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end7.handle_xfercomp_done_crit_edge, label %if.end10

if.end7.handle_xfercomp_done_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_xfercomp_done

if.end10:                                         ; preds = %if.end7
  %pipe_type.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %pipe_type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pipe_type.i, align 2
  %dma_desc_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %6 = ptrtoint ptr %dma_desc_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_desc_enable, align 1, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end10
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then13.cleanup_crit_edge, label %if.then13.handle_xfercomp_done_crit_edge

if.then13.handle_xfercomp_done_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_xfercomp_done

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %qh = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %8 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qh, align 4
  %do_split = getelementptr inbounds %struct.dwc2_qh, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %do_split to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %do_split, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  br i1 %tobool18.not, label %if.end17.if.end41_crit_edge, label %if.then19

if.end17.if.end41_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then19:                                        ; preds = %if.end17
  %ep_type = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %ep_type to i32
  call void @__asan_loadN_noabort(i32 %12, i32 3)
  %bf.load = load i24, ptr %ep_type, align 1
  %13 = and i24 %bf.load, 4288
  %.not = icmp eq i24 %13, 4160
  br i1 %.not, label %land.lhs.true27, label %if.then19.if.else_crit_edge

if.then19.if.else_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true27:                                  ; preds = %if.then19
  %host_dma = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 31
  %14 = ptrtoint ptr %host_dma to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %host_dma, align 2, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool29.not = icmp eq i8 %15, 0
  br i1 %tobool29.not, label %land.lhs.true27.if.else_crit_edge, label %if.then31

land.lhs.true27.if.else_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then31:                                        ; preds = %land.lhs.true27
  %complete_split = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 3
  %16 = ptrtoint ptr %complete_split to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %complete_split, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool33.not = icmp eq i8 %17, 0
  br i1 %tobool33.not, label %if.then31.if.end41_crit_edge, label %land.lhs.true34

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

land.lhs.true34:                                  ; preds = %if.then31
  %call35 = tail call fastcc i32 @dwc2_xfercomp_isoc_split_in(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true34.if.end41_crit_edge, label %land.lhs.true34.handle_xfercomp_done_crit_edge

land.lhs.true34.handle_xfercomp_done_crit_edge:   ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_xfercomp_done

land.lhs.true34.if.end41_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.else:                                          ; preds = %land.lhs.true27.if.else_crit_edge, %if.then19.if.else_crit_edge
  %complete_split39 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 3
  %18 = ptrtoint ptr %complete_split39 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %complete_split39, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.else, %land.lhs.true34.if.end41_crit_edge, %if.then31.if.end41_crit_edge, %if.end17.if.end41_crit_edge
  %19 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.187)
  switch i8 %5, label %if.end41.handle_xfercomp_done_crit_edge [
    i8 0, label %sw.bb
    i8 2, label %do.body122
    i8 3, label %do.body148
    i8 1, label %sw.bb173
  ]

if.end41.handle_xfercomp_done_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_xfercomp_done

sw.bb:                                            ; preds = %if.end41
  %20 = ptrtoint ptr %qtd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qtd, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %21, label %sw.bb.sw.epilog_crit_edge [
    i32 0, label %sw.bb42
    i32 1, label %sw.bb69
    i32 2, label %do.body96
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb42:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %length = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp43.not = icmp eq i32 %24, 0
  %. = select i1 %cmp43.not, i32 2, i32 1
  %25 = ptrtoint ptr %qtd to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %., ptr %qtd, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_xfercomp_intr, %sw.epilog)) #5
          to label %if.then64 [label %sw.epilog], !srcloc !414

if.then64:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug331, ptr noundef %27, ptr noundef nonnull @.str.62) #5
  br label %sw.epilog

sw.bb69:                                          ; preds = %sw.bb
  %call70 = tail call fastcc i32 @dwc2_update_urb_state(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef nonnull %1, ptr noundef %qtd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.else93, label %if.then72

if.then72:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %qtd to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %qtd, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_xfercomp_intr, %sw.epilog)) #5
          to label %if.then88 [label %sw.epilog], !srcloc !414

if.then88:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug332, ptr noundef %30, ptr noundef nonnull @.str.63) #5
  br label %sw.epilog

if.else93:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_hcd_save_data_toggle(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  br label %sw.epilog

do.body96:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_xfercomp_intr, %do.end114)) #5
          to label %if.then110 [label %do.end114], !srcloc !414

if.then110:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug333, ptr noundef %32, ptr noundef nonnull @.str.64) #5
  br label %do.end114

do.end114:                                        ; preds = %if.then110, %do.body96
  %status = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %34)
  %cmp115 = icmp eq i32 %34, -115
  br i1 %cmp115, label %if.then117, label %do.end114.if.end119_crit_edge

do.end114.if.end119_crit_edge:                    ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

if.then117:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %status, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %do.end114.if.end119_crit_edge
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status, align 4
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef %37) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end119, %if.else93, %if.then88, %if.then72, %if.then64, %sw.bb42, %sw.bb.sw.epilog_crit_edge
  %halt_status.0 = phi i32 [ 1, %sw.bb.sw.epilog_crit_edge ], [ 2, %if.end119 ], [ 1, %if.then64 ], [ 1, %if.then88 ], [ 1, %if.else93 ], [ 1, %sw.bb42 ], [ 1, %if.then72 ]
  tail call fastcc void @dwc2_complete_non_periodic_xfer(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %halt_status.0)
  br label %handle_xfercomp_done

do.body122:                                       ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_xfercomp_intr, %do.end140)) #5
          to label %if.then136 [label %do.end140], !srcloc !414

if.then136:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug334, ptr noundef %39, ptr noundef nonnull @.str.65) #5
  br label %do.end140

do.end140:                                        ; preds = %if.then136, %do.body122
  %call141 = tail call fastcc i32 @dwc2_update_urb_state(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef nonnull %1, ptr noundef %qtd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %do.end140.if.end146_crit_edge, label %if.then143

do.end140.if.end146_crit_edge:                    ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146

if.then143:                                       ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #7
  %status144 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %status144 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status144, align 4
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef %41) #5
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %do.end140.if.end146_crit_edge
  %halt_status.1 = phi i32 [ 2, %if.then143 ], [ 1, %do.end140.if.end146_crit_edge ]
  %mul.i = shl i32 %chnum, 5
  %add.i = add i32 %mul.i, 1296
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %add.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %45 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i = icmp eq i8 %46, 0
  %47 = shl i32 %44, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %47, i32 %44
  %and.i = lshr i32 %retval.0.i.i, 29
  %shr.i = and i32 %and.i, 3
  %ep_type.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %48 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 3)
  %bf.load.i = load i24, ptr %ep_type.i, align 1
  %49 = and i24 %bf.load.i, 192
  %cmp.not.i = icmp eq i24 %49, 0
  br i1 %cmp.not.i, label %if.else32.i, label %if.then.i

if.then.i:                                        ; preds = %if.end146
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %if.then.i.do.end.i_crit_edge, label %lor.rhs.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

lor.rhs.i:                                        ; preds = %if.then.i
  %50 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %qh, align 4
  %tobool1.not.i = icmp eq ptr %51, null
  br i1 %tobool1.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end25.i, !prof !413

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %dwc2_hcd_save_data_toggle.exit

if.end25.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp26.i = icmp eq i32 %shr.i, 0
  %data_toggle.i = getelementptr inbounds %struct.dwc2_qh, ptr %51, i32 0, i32 6
  br i1 %cmp26.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %data_toggle.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %data_toggle.i, align 1
  br label %dwc2_hcd_save_data_toggle.exit

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %data_toggle.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %data_toggle.i, align 1
  br label %dwc2_hcd_save_data_toggle.exit

if.else32.i:                                      ; preds = %if.end146
  %tobool34.not.i = icmp eq ptr %qtd, null
  br i1 %tobool34.not.i, label %do.end52.i, label %if.end68.i, !prof !413

do.end52.i:                                       ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 558, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %dwc2_hcd_save_data_toggle.exit

if.end68.i:                                       ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp69.i = icmp eq i32 %shr.i, 0
  %data_toggle71.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 2
  br i1 %cmp69.i, label %if.then70.i, label %if.else72.i

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %data_toggle71.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %data_toggle71.i, align 1
  br label %dwc2_hcd_save_data_toggle.exit

if.else72.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %data_toggle71.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %data_toggle71.i, align 1
  br label %dwc2_hcd_save_data_toggle.exit

dwc2_hcd_save_data_toggle.exit:                   ; preds = %if.else72.i, %if.then70.i, %do.end52.i, %if.else.i, %if.then27.i, %do.end.i
  tail call fastcc void @dwc2_complete_non_periodic_xfer(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %halt_status.1)
  br label %handle_xfercomp_done

do.body148:                                       ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_xfercomp_intr, %do.end166)) #5
          to label %if.then162 [label %do.end166], !srcloc !414

if.then162:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug335, ptr noundef %57, ptr noundef nonnull @.str.66) #5
  br label %do.end166

do.end166:                                        ; preds = %if.then162, %do.body148
  %call167 = tail call fastcc i32 @dwc2_update_urb_state(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef nonnull %1, ptr noundef %qtd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %do.end166.if.end172_crit_edge, label %if.then169

do.end166.if.end172_crit_edge:                    ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end172

if.then169:                                       ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #7
  %status170 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 8
  %58 = ptrtoint ptr %status170 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %status170, align 4
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef %59) #5
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %do.end166.if.end172_crit_edge
  %halt_status.2 = phi i32 [ 2, %if.then169 ], [ 1, %do.end166.if.end172_crit_edge ]
  %mul.i318 = shl i32 %chnum, 5
  %add.i319 = add i32 %mul.i318, 1296
  %regs.i.i320 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %60 = ptrtoint ptr %regs.i.i320 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i.i320, align 4
  %add.ptr.i.i321 = getelementptr i8, ptr %61, i32 %add.i319
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i321) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i322 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %63 = ptrtoint ptr %needs_byte_swap.i.i322 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %needs_byte_swap.i.i322, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i323 = icmp eq i8 %64, 0
  %65 = shl i32 %62, 24
  %retval.0.i.i324 = select i1 %tobool.not.i.i323, i32 %65, i32 %62
  %and.i325 = lshr i32 %retval.0.i.i324, 29
  %shr.i326 = and i32 %and.i325, 3
  %ep_type.i327 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %66 = ptrtoint ptr %ep_type.i327 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 3)
  %bf.load.i328 = load i24, ptr %ep_type.i327, align 1
  %67 = and i24 %bf.load.i328, 192
  %cmp.not.i329 = icmp eq i24 %67, 0
  br i1 %cmp.not.i329, label %if.else32.i342, label %if.then.i331

if.then.i331:                                     ; preds = %if.end172
  %tobool.not.i330 = icmp eq ptr %chan, null
  br i1 %tobool.not.i330, label %if.then.i331.do.end.i335_crit_edge, label %lor.rhs.i334

if.then.i331.do.end.i335_crit_edge:               ; preds = %if.then.i331
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i335

lor.rhs.i334:                                     ; preds = %if.then.i331
  %68 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %qh, align 4
  %tobool1.not.i333 = icmp eq ptr %69, null
  br i1 %tobool1.not.i333, label %lor.rhs.i334.do.end.i335_crit_edge, label %if.end25.i338, !prof !413

lor.rhs.i334.do.end.i335_crit_edge:               ; preds = %lor.rhs.i334
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i335

do.end.i335:                                      ; preds = %lor.rhs.i334.do.end.i335_crit_edge, %if.then.i331.do.end.i335_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %dwc2_hcd_save_data_toggle.exit349

if.end25.i338:                                    ; preds = %lor.rhs.i334
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i326)
  %cmp26.i336 = icmp eq i32 %shr.i326, 0
  %data_toggle.i337 = getelementptr inbounds %struct.dwc2_qh, ptr %69, i32 0, i32 6
  br i1 %cmp26.i336, label %if.then27.i339, label %if.else.i340

if.then27.i339:                                   ; preds = %if.end25.i338
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %data_toggle.i337 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %data_toggle.i337, align 1
  br label %dwc2_hcd_save_data_toggle.exit349

if.else.i340:                                     ; preds = %if.end25.i338
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %data_toggle.i337 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 2, ptr %data_toggle.i337, align 1
  br label %dwc2_hcd_save_data_toggle.exit349

if.else32.i342:                                   ; preds = %if.end172
  %tobool34.not.i341 = icmp eq ptr %qtd, null
  br i1 %tobool34.not.i341, label %do.end52.i343, label %if.end68.i346, !prof !413

do.end52.i343:                                    ; preds = %if.else32.i342
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 558, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %dwc2_hcd_save_data_toggle.exit349

if.end68.i346:                                    ; preds = %if.else32.i342
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i326)
  %cmp69.i344 = icmp eq i32 %shr.i326, 0
  %data_toggle71.i345 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 2
  br i1 %cmp69.i344, label %if.then70.i347, label %if.else72.i348

if.then70.i347:                                   ; preds = %if.end68.i346
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %data_toggle71.i345 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %data_toggle71.i345, align 1
  br label %dwc2_hcd_save_data_toggle.exit349

if.else72.i348:                                   ; preds = %if.end68.i346
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %data_toggle71.i345 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 2, ptr %data_toggle71.i345, align 1
  br label %dwc2_hcd_save_data_toggle.exit349

dwc2_hcd_save_data_toggle.exit349:                ; preds = %if.else72.i348, %if.then70.i347, %do.end52.i343, %if.else.i340, %if.then27.i339, %do.end.i335
  %74 = ptrtoint ptr %regs.i.i320 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i.i320, align 4
  %add.ptr.i.i353 = getelementptr i8, ptr %75, i32 %add.i319
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i353) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %77 = ptrtoint ptr %needs_byte_swap.i.i322 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %needs_byte_swap.i.i322, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i355 = icmp eq i8 %78, 0
  %79 = tail call i32 @llvm.bswap.i32(i32 %76) #5
  %retval.0.i.i356 = select i1 %tobool.not.i.i355, i32 %79, i32 %76
  %error_count.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %80 = ptrtoint ptr %error_count.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %error_count.i, align 4
  %81 = ptrtoint ptr %ep_type.i327 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 3)
  %bf.load.i357 = load i24, ptr %ep_type.i327, align 1
  %82 = and i24 %bf.load.i357, 4096
  %tobool.not.i358 = icmp eq i24 %82, 0
  %and.i359 = and i32 %retval.0.i.i356, 536346624
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i359)
  %cmp.i = icmp eq i32 %and.i359, 0
  %or.cond.i = select i1 %tobool.not.i358, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %if.then.i360, label %if.else.i361

if.then.i360:                                     ; preds = %dwc2_hcd_save_data_toggle.exit349
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_release_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %halt_status.2) #5
  br label %handle_xfercomp_done

if.else.i361:                                     ; preds = %dwc2_hcd_save_data_toggle.exit349
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %halt_status.2) #5
  br label %handle_xfercomp_done

sw.bb173:                                         ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_xfercomp_intr, %if.end195)) #5
          to label %if.then190 [label %if.end195], !srcloc !414

if.then190:                                       ; preds = %sw.bb173
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug336, ptr noundef %84, ptr noundef nonnull @.str.67) #5
  br label %if.end195

if.end195:                                        ; preds = %if.then190, %sw.bb173
  %isoc_split_pos = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 4
  %85 = ptrtoint ptr %isoc_split_pos to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %isoc_split_pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %86)
  %cmp197 = icmp eq i8 %86, 3
  br i1 %cmp197, label %if.then199, label %if.end195.if.end201_crit_edge

if.end195.if.end201_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end201

if.then199:                                       ; preds = %if.end195
  %87 = ptrtoint ptr %urb1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %urb1, align 4
  %tobool.not.i362 = icmp eq ptr %88, null
  br i1 %tobool.not.i362, label %if.then199.if.end201_crit_edge, label %if.end.i

if.then199.if.end201_crit_edge:                   ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end201

if.end.i:                                         ; preds = %if.then199
  %isoc_frame_index.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 5
  %89 = ptrtoint ptr %isoc_frame_index.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %isoc_frame_index.i, align 4
  %idxprom.i = zext i16 %90 to i32
  %status.i = getelementptr %struct.dwc2_hcd_urb, ptr %88, i32 0, i32 14, i32 %idxprom.i, i32 3
  %91 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %status.i, align 4
  %mul.i.i = shl i32 %chnum, 5
  %add.i.i = add i32 %mul.i.i, 1296
  %regs.i.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %92 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %93, i32 %add.i.i
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %ep_is_in.i.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %95 = ptrtoint ptr %ep_is_in.i.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 3)
  %bf.load.i.i = load i24, ptr %ep_is_in.i.i, align 1
  %96 = and i24 %bf.load.i.i, 4096
  %tobool.not.i.i363 = icmp eq i24 %96, 0
  br i1 %tobool.not.i.i363, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %needs_byte_swap.i.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %97 = ptrtoint ptr %needs_byte_swap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %needs_byte_swap.i.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i.i.i = icmp eq i8 %98, 0
  %99 = tail call i32 @llvm.bswap.i32(i32 %94) #5
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %99, i32 %94
  %and.i.i = and i32 %retval.0.i.i.i, 524287
  %xfer_len.i.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 6
  %100 = ptrtoint ptr %xfer_len.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %xfer_len.i.i, align 4
  %sub.i.i = sub i32 %101, %and.i.i
  br label %dwc2_get_actual_xfer_length.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  %102 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %qh, align 4
  %do_split.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %do_split.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %do_split.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool5.not.i.i = icmp eq i8 %105, 0
  br i1 %tobool5.not.i.i, label %if.else7.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %ssplit_out_xfer_count.i.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 9
  %106 = ptrtoint ptr %ssplit_out_xfer_count.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ssplit_out_xfer_count.i.i, align 4
  br label %dwc2_get_actual_xfer_length.exit.i

if.else7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %xfer_len8.i.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 6
  %108 = ptrtoint ptr %xfer_len8.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %xfer_len8.i.i, align 4
  br label %dwc2_get_actual_xfer_length.exit.i

dwc2_get_actual_xfer_length.exit.i:               ; preds = %if.else7.i.i, %if.then6.i.i, %if.then1.i.i
  %length.0.i.i = phi i32 [ %sub.i.i, %if.then1.i.i ], [ %107, %if.then6.i.i ], [ %109, %if.else7.i.i ]
  %actual_length.i = getelementptr %struct.dwc2_hcd_urb, ptr %88, i32 0, i32 14, i32 %idxprom.i, i32 2
  %110 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %length.0.i.i, ptr %actual_length.i, align 4
  %111 = ptrtoint ptr %isoc_frame_index.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %isoc_frame_index.i, align 4
  %inc38.i = add i16 %112, 1
  store i16 %inc38.i, ptr %isoc_frame_index.i, align 4
  %conv39.i = zext i16 %inc38.i to i32
  %packet_count.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %88, i32 0, i32 10
  %113 = ptrtoint ptr %packet_count.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %packet_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %conv39.i)
  %cmp40.i = icmp eq i32 %114, %conv39.i
  br i1 %cmp40.i, label %if.then42.i, label %dwc2_get_actual_xfer_length.exit.i.if.end201_crit_edge

dwc2_get_actual_xfer_length.exit.i.if.end201_crit_edge: ; preds = %dwc2_get_actual_xfer_length.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end201

if.then42.i:                                      ; preds = %dwc2_get_actual_xfer_length.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef 0) #5
  br label %if.end201

if.end201:                                        ; preds = %if.then42.i, %dwc2_get_actual_xfer_length.exit.i.if.end201_crit_edge, %if.then199.if.end201_crit_edge, %if.end195.if.end201_crit_edge
  %halt_status.3 = phi i32 [ 1, %if.end195.if.end201_crit_edge ], [ 0, %if.then199.if.end201_crit_edge ], [ 2, %if.then42.i ], [ 1, %dwc2_get_actual_xfer_length.exit.i.if.end201_crit_edge ]
  %mul.i365 = shl i32 %chnum, 5
  %add.i366 = add i32 %mul.i365, 1296
  %regs.i.i367 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %115 = ptrtoint ptr %regs.i.i367 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i.i367, align 4
  %add.ptr.i.i368 = getelementptr i8, ptr %116, i32 %add.i366
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i368) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i369 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %118 = ptrtoint ptr %needs_byte_swap.i.i369 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %needs_byte_swap.i.i369, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i.i370 = icmp eq i8 %119, 0
  %120 = tail call i32 @llvm.bswap.i32(i32 %117) #5
  %retval.0.i.i371 = select i1 %tobool.not.i.i370, i32 %120, i32 %117
  %error_count.i372 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %121 = ptrtoint ptr %error_count.i372 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %error_count.i372, align 4
  %ep_is_in.i373 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %122 = ptrtoint ptr %ep_is_in.i373 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 3)
  %bf.load.i374 = load i24, ptr %ep_is_in.i373, align 1
  %123 = and i24 %bf.load.i374, 4096
  %tobool.not.i375 = icmp eq i24 %123, 0
  %and.i376 = and i32 %retval.0.i.i371, 536346624
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i376)
  %cmp.i377 = icmp eq i32 %and.i376, 0
  %or.cond.i378 = select i1 %tobool.not.i375, i1 true, i1 %cmp.i377
  br i1 %or.cond.i378, label %if.then.i379, label %if.else.i380

if.then.i379:                                     ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_release_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %halt_status.3) #5
  br label %handle_xfercomp_done

if.else.i380:                                     ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %halt_status.3) #5
  br label %handle_xfercomp_done

handle_xfercomp_done:                             ; preds = %if.else.i380, %if.then.i379, %if.else.i361, %if.then.i360, %dwc2_hcd_save_data_toggle.exit, %sw.epilog, %if.end41.handle_xfercomp_done_crit_edge, %land.lhs.true34.handle_xfercomp_done_crit_edge, %if.then13.handle_xfercomp_done_crit_edge, %if.end7.handle_xfercomp_done_crit_edge
  %mul.i383 = shl i32 %chnum, 5
  %add.i384 = add i32 %mul.i383, 1292
  %regs.i.i385 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %124 = ptrtoint ptr %regs.i.i385 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i.i385, align 4
  %add.ptr.i.i386 = getelementptr i8, ptr %125, i32 %add.i384
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i386) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i387 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %127 = ptrtoint ptr %needs_byte_swap.i.i387 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %needs_byte_swap.i.i387, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i.i388 = icmp eq i8 %128, 0
  %129 = tail call i32 @llvm.bswap.i32(i32 %126) #5
  %retval.0.i.i389 = select i1 %tobool.not.i.i388, i32 %129, i32 %126
  %and.i390 = and i32 %retval.0.i.i389, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i388, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %handle_xfercomp_done
  call void @__sanitizer_cov_trace_pc() #7
  %130 = ptrtoint ptr %regs.i.i385 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs.i.i385, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %131, i32 %add.i384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %and.i390) #5, !srcloc !415
  br label %cleanup

do.body1.i.i:                                     ; preds = %handle_xfercomp_done
  call void @__sanitizer_cov_trace_pc() #7
  %132 = tail call i32 @llvm.bswap.i32(i32 %and.i390) #5
  %133 = ptrtoint ptr %regs.i.i385 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i.i385, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %134, i32 %add.i384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %132) #5, !srcloc !415
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i.i, %do.body.i.i, %if.then13.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_ahberr_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %urb1 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %0 = ptrtoint ptr %urb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_ahberr_intr.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_ahberr_intr, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_ahberr_intr.__UNIQUE_ID_ddebug351, ptr noundef %3, ptr noundef nonnull @.str.119, i32 noundef %chnum) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.handle_ahberr_halt_crit_edge, label %if.end7

do.end.handle_ahberr_halt_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %.pre161 = shl i32 %chnum, 5
  br label %handle_ahberr_halt

if.end7:                                          ; preds = %do.end
  %priv.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i.i, align 8
  %root_hub1.i = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %root_hub1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root_hub1.i, align 8
  %qh.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %8 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qh.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end7.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end.i

if.end7.dwc2_hc_handle_tt_clear.exit_crit_edge:   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end.i:                                         ; preds = %if.end7
  %dev_speed.i = getelementptr inbounds %struct.dwc2_qh, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_speed.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dev_speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp.i = icmp eq i8 %11, 3
  br i1 %cmp.i, label %if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end5.i

if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end5.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %urb1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb1, align 4
  %tobool6.not.i = icmp eq ptr %13, null
  br i1 %tobool6.not.i, label %if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end8.i

if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end8.i:                                        ; preds = %if.end5.i
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool10.not.i = icmp eq ptr %15, null
  br i1 %tobool10.not.i, label %if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %lor.lhs.false.i

if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %dev.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %tobool11.not.i = icmp eq ptr %17, null
  br i1 %tobool11.not.i, label %lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %lor.lhs.false12.i

lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %tt.i = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %tt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tt.i, align 4
  %tobool14.not.i = icmp eq ptr %19, null
  br i1 %tobool14.not.i, label %lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end16.i

lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end16.i:                                       ; preds = %lor.lhs.false12.i
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %cmp19.i = icmp eq ptr %21, %7
  br i1 %cmp19.i, label %if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end22.i

if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end22.i:                                       ; preds = %if.end16.i
  %status.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %13, i32 0, i32 8
  %22 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %23, label %if.then30.i [
    i32 -32, label %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge
    i32 -121, label %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge165
  ]

if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge165: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.then30.i:                                      ; preds = %if.end22.i
  %tt_buffer_dirty.i = getelementptr inbounds %struct.dwc2_qh, ptr %9, i32 0, i32 34
  %25 = ptrtoint ptr %tt_buffer_dirty.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %tt_buffer_dirty.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %tt_buffer_dirty.i, align 8
  %call32.i = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef nonnull %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.then34.i

if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.then34.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qh.i, align 4
  %tt_buffer_dirty36.i = getelementptr inbounds %struct.dwc2_qh, ptr %27, i32 0, i32 34
  %28 = ptrtoint ptr %tt_buffer_dirty36.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load37.i = load i8, ptr %tt_buffer_dirty36.i, align 8
  %bf.clear38.i = and i8 %bf.load37.i, 127
  store i8 %bf.clear38.i, ptr %tt_buffer_dirty36.i, align 8
  br label %dwc2_hc_handle_tt_clear.exit

dwc2_hc_handle_tt_clear.exit:                     ; preds = %if.then34.i, %if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge165, %if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end7.dwc2_hc_handle_tt_clear.exit_crit_edge
  %mul = shl i32 %chnum, 5
  %add = add i32 %mul, 1280
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 %add
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %32 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i142 = icmp eq i8 %33, 0
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  %retval.0.i143 = select i1 %tobool.not.i142, i32 %34, i32 %31
  %add10 = add i32 %mul, 1284
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %36, i32 %add10
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %38 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i147 = icmp eq i8 %39, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  %retval.0.i148 = select i1 %tobool.not.i147, i32 %40, i32 %37
  %add13 = add i32 %mul, 1296
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %42, i32 %add13
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %44 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i152 = icmp eq i8 %45, 0
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  %retval.0.i153 = select i1 %tobool.not.i152, i32 %46, i32 %43
  %add16 = add i32 %mul, 1300
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %48, i32 %add16
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %50 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i157 = icmp eq i8 %51, 0
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #5
  %retval.0.i158 = select i1 %tobool.not.i157, i32 %52, i32 %49
  %53 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.120, i32 noundef %chnum) #8
  %55 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.122, i32 noundef %retval.0.i143, i32 noundef %retval.0.i148) #8
  %57 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.125, i32 noundef %retval.0.i153, i32 noundef %retval.0.i158) #8
  %59 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hsotg, align 8
  %pipe_info = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 13
  %61 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pipe_info, align 2
  %conv = zext i8 %62 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.128, i32 noundef %conv) #8
  %63 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hsotg, align 8
  %ep_num.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 13, i32 1
  %65 = ptrtoint ptr %ep_num.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ep_num.i, align 1
  %conv41 = zext i8 %66 to i32
  %pipe_dir.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 13, i32 3
  %67 = ptrtoint ptr %pipe_dir.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %pipe_dir.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %68)
  %cmp.i159.not = icmp eq i8 %68, -128
  %cond = select i1 %cmp.i159.not, ptr @.str.74, ptr @.str.75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.131, i32 noundef %conv41, ptr noundef nonnull %cond) #8
  %pipe_type.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 13, i32 2
  %69 = ptrtoint ptr %pipe_type.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %pipe_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %70)
  %71 = icmp ult i8 %70, 4
  br i1 %71, label %switch.lookup, label %dwc2_hc_handle_tt_clear.exit.do.end54_crit_edge

dwc2_hc_handle_tt_clear.exit.do.end54_crit_edge:  ; preds = %dwc2_hc_handle_tt_clear.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

switch.lookup:                                    ; preds = %dwc2_hc_handle_tt_clear.exit
  call void @__sanitizer_cov_trace_pc() #7
  %72 = sext i8 %70 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.dwc2_hc_ahberr_intr, i32 0, i32 %72
  %73 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %73)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end54

do.end54:                                         ; preds = %switch.lookup, %dwc2_hc_handle_tt_clear.exit.do.end54_crit_edge
  %pipetype.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.137, %dwc2_hc_handle_tt_clear.exit.do.end54_crit_edge ]
  %74 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.139, ptr noundef nonnull %pipetype.0) #8
  %speed56 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %76 = ptrtoint ptr %speed56 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 3)
  %bf.load = load i24, ptr %speed56, align 1
  %bf.lshr = lshr i24 %bf.load, 8
  %bf.clear = and i24 %bf.lshr, 15
  %bf.cast = zext i24 %bf.clear to i32
  %switch.tableidx = add nsw i32 %bf.cast, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %77 = icmp ult i32 %switch.tableidx, 3
  br i1 %77, label %switch.lookup162, label %do.end54.do.end64_crit_edge

do.end54.do.end64_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end64

switch.lookup162:                                 ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep163 = getelementptr inbounds [3 x ptr], ptr @switch.table.dwc2_hc_ahberr_intr.184, i32 0, i32 %switch.tableidx
  %78 = ptrtoint ptr %switch.gep163 to i32
  call void @__asan_load4_noabort(i32 %78)
  %switch.load164 = load ptr, ptr %switch.gep163, align 4
  br label %do.end64

do.end64:                                         ; preds = %switch.lookup162, %do.end54.do.end64_crit_edge
  %speed.0 = phi ptr [ %switch.load164, %switch.lookup162 ], [ @.str.137, %do.end54.do.end64_crit_edge ]
  %79 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.145, ptr noundef nonnull %speed.0) #8
  %81 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hsotg, align 8
  %maxp.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 13, i32 4
  %83 = ptrtoint ptr %maxp.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %maxp.i, align 2
  %conv72 = zext i16 %84 to i32
  %maxp_mult.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 13, i32 5
  %85 = ptrtoint ptr %maxp_mult.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %maxp_mult.i, align 2
  %conv75 = zext i16 %86 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.148, i32 noundef %conv72, i32 noundef %conv75) #8
  %87 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hsotg, align 8
  %length = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 6
  %89 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.151, i32 noundef %90) #8
  %91 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hsotg, align 8
  %buf = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 2
  %93 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %buf, align 4
  %dma = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 3
  %95 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.154, ptr noundef %94, i32 noundef %96) #8
  %97 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hsotg, align 8
  %setup_packet = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 4
  %99 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %setup_packet, align 4
  %setup_dma = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 5
  %101 = ptrtoint ptr %setup_dma to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %setup_dma, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.157, ptr noundef %100, i32 noundef %102) #8
  %103 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hsotg, align 8
  %interval = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 12
  %105 = ptrtoint ptr %interval to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %interval, align 4
  %conv92 = zext i16 %106 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.160, i32 noundef %conv92) #8
  %dma_desc_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %107 = ptrtoint ptr %dma_desc_enable to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %dma_desc_enable, align 1, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool93.not = icmp eq i8 %108, 0
  br i1 %tobool93.not, label %if.end95, label %if.then94

if.then94:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, i32 noundef 11) #5
  br label %handle_ahberr_done

if.end95:                                         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef -5) #5
  br label %handle_ahberr_halt

handle_ahberr_halt:                               ; preds = %if.end95, %do.end.handle_ahberr_halt_crit_edge
  %.pre.pre-phi = phi i32 [ %.pre161, %do.end.handle_ahberr_halt_crit_edge ], [ %mul, %if.end95 ]
  tail call void @dwc2_hc_halt(ptr noundef %hsotg, ptr noundef %chan, i32 noundef 11) #5
  br label %handle_ahberr_done

handle_ahberr_done:                               ; preds = %handle_ahberr_halt, %if.then94
  %mul.i.pre-phi = phi i32 [ %.pre.pre-phi, %handle_ahberr_halt ], [ %mul, %if.then94 ]
  %add.i = add i32 %mul.i.pre-phi, 1292
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %109 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %110, i32 %add.i
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %112 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i.i = icmp eq i8 %113, 0
  %114 = tail call i32 @llvm.bswap.i32(i32 %111) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %114, i32 %111
  %and.i = and i32 %retval.0.i.i, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %handle_ahberr_done
  call void @__sanitizer_cov_trace_pc() #7
  %115 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %116, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %and.i) #5, !srcloc !415
  br label %disable_hc_int.exit

do.body1.i.i:                                     ; preds = %handle_ahberr_done
  call void @__sanitizer_cov_trace_pc() #7
  %117 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %118 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %119, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %117) #5, !srcloc !415
  br label %disable_hc_int.exit

disable_hc_int.exit:                              ; preds = %do.body1.i.i, %do.body.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_stall_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %urb1 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %0 = ptrtoint ptr %urb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_stall_intr.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_stall_intr, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_stall_intr.__UNIQUE_ID_ddebug337, ptr noundef %3, ptr noundef nonnull @.str.163, i32 noundef %chnum) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dma_desc_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %4 = ptrtoint ptr %dma_desc_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_desc_enable, align 1, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, i32 noundef 6) #5
  br label %handle_stall_done

if.end7:                                          ; preds = %do.end
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end7.handle_stall_halt_crit_edge, label %if.end10

if.end7.handle_stall_halt_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_stall_halt

if.end10:                                         ; preds = %if.end7
  %pipe_type.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %pipe_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pipe_type.i, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.190)
  switch i8 %7, label %if.end10.handle_stall_halt_crit_edge [
    i8 0, label %if.then13
    i8 2, label %if.end10.if.then19_crit_edge
    i8 3, label %if.end10.if.then19_crit_edge38
  ]

if.end10.if.then19_crit_edge38:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

if.end10.if.then19_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

if.end10.handle_stall_halt_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_stall_halt

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef -32) #5
  br label %handle_stall_halt

if.then19:                                        ; preds = %if.end10.if.then19_crit_edge, %if.end10.if.then19_crit_edge38
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef -32) #5
  %qh = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %9 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qh, align 4
  %data_toggle = getelementptr inbounds %struct.dwc2_qh, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %data_toggle to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %data_toggle, align 1
  br label %handle_stall_halt

handle_stall_halt:                                ; preds = %if.then19, %if.then13, %if.end10.handle_stall_halt_crit_edge, %if.end7.handle_stall_halt_crit_edge
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 6)
  br label %handle_stall_done

handle_stall_done:                                ; preds = %handle_stall_halt, %if.then6
  %mul.i = shl i32 %chnum, 5
  %add.i = add i32 %mul.i, 1292
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %add.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %15 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %17, i32 %14
  %and.i = and i32 %retval.0.i.i, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %handle_stall_done
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %19, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %and.i) #5, !srcloc !415
  br label %disable_hc_int.exit

do.body1.i.i:                                     ; preds = %handle_stall_done
  call void @__sanitizer_cov_trace_pc() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %22, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %20) #5, !srcloc !415
  br label %disable_hc_int.exit

disable_hc_int.exit:                              ; preds = %do.body1.i.i, %do.body.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_nak_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %qtd, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_nak_intr.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_nak_intr, %return)) #5
          to label %if.then5 [label %return], !srcloc !414

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_nak_intr.__UNIQUE_ID_ddebug345, ptr noundef %1, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.164) #5
  br label %return

if.end6:                                          ; preds = %entry
  %urb = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %do.body9, label %if.end27

do.body9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_nak_intr.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_nak_intr, %return)) #5
          to label %if.then23 [label %return], !srcloc !414

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_nak_intr.__UNIQUE_ID_ddebug346, ptr noundef %5, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.164) #5
  br label %return

if.end27:                                         ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_nak_intr.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_nak_intr, %if.end48)) #5
          to label %if.then44 [label %if.end48], !srcloc !414

if.then44:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_nak_intr.__UNIQUE_ID_ddebug347, ptr noundef %7, ptr noundef nonnull @.str.167, i32 noundef %chnum) #5
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end27
  %do_split = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 14
  %8 = ptrtoint ptr %do_split to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %do_split, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool49.not = icmp eq i8 %9, 0
  br i1 %tobool49.not, label %if.end70, label %if.then50

if.then50:                                        ; preds = %if.end48
  %complete_split = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 15
  %10 = ptrtoint ptr %complete_split to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %complete_split, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool51.not = icmp eq i8 %11, 0
  br i1 %tobool51.not, label %if.then50.if.end53_crit_edge, label %if.then52

if.then50.if.end53_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  %error_count = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %12 = ptrtoint ptr %error_count to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %error_count, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then50.if.end53_crit_edge
  %complete_split54 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 3
  %13 = ptrtoint ptr %complete_split54 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %complete_split54, align 2
  %num_naks = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 13
  %14 = ptrtoint ptr %num_naks to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_naks, align 4
  %inc = add i16 %15, 1
  store i16 %inc, ptr %num_naks, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %inc)
  %cmp = icmp ugt i16 %inc, 2
  br i1 %cmp, label %land.rhs, label %if.end53.land.end67_crit_edge

if.end53.land.end67_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end67

land.rhs:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %ep_type = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %16 = ptrtoint ptr %ep_type to i32
  call void @__asan_loadN_noabort(i32 %16, i32 3)
  %bf.load = load i24, ptr %ep_type, align 1
  %17 = and i24 %bf.load, 192
  %cmp57 = icmp eq i24 %17, 0
  %18 = lshr i24 %bf.load, 8
  %19 = trunc i24 %18 to i8
  %20 = and i8 %19, 16
  %21 = xor i8 %20, 16
  %22 = select i1 %cmp57, i8 %21, i8 16
  br label %land.end67

land.end67:                                       ; preds = %land.rhs, %if.end53.land.end67_crit_edge
  %23 = phi i8 [ 0, %if.end53.land.end67_crit_edge ], [ %22, %land.rhs ]
  %qh = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 15
  %24 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qh, align 4
  %want_wait = getelementptr inbounds %struct.dwc2_qh, ptr %25, i32 0, i32 34
  %26 = ptrtoint ptr %want_wait to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load68 = load i8, ptr %want_wait, align 8
  %bf.clear69 = and i8 %bf.load68, -17
  %bf.set = or i8 %bf.clear69, %23
  store i8 %bf.set, ptr %want_wait, align 8
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef nonnull %qtd, i32 noundef 4)
  br label %handle_nak_done

if.end70:                                         ; preds = %if.end48
  %27 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %urb, align 4
  %pipe_type.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %28, i32 0, i32 13, i32 2
  %29 = ptrtoint ptr %pipe_type.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pipe_type.i, align 2
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.191)
  switch i8 %30, label %if.end70.handle_nak_done_crit_edge [
    i8 0, label %if.end70.sw.bb_crit_edge
    i8 2, label %if.end70.sw.bb_crit_edge159
    i8 3, label %sw.bb101
    i8 1, label %do.end105
  ]

if.end70.sw.bb_crit_edge159:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end70.sw.bb_crit_edge:                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end70.handle_nak_done_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_nak_done

sw.bb:                                            ; preds = %if.end70.sw.bb_crit_edge, %if.end70.sw.bb_crit_edge159
  %host_dma = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 31
  %32 = ptrtoint ptr %host_dma to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %host_dma, align 2, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool74.not = icmp eq i8 %33, 0
  br i1 %tobool74.not, label %sw.bb.if.end84_crit_edge, label %land.lhs.true

sw.bb.if.end84_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

land.lhs.true:                                    ; preds = %sw.bb
  %ep_is_in76 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %34 = ptrtoint ptr %ep_is_in76 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 3)
  %bf.load77 = load i24, ptr %ep_is_in76, align 1
  %35 = and i24 %bf.load77, 4096
  %tobool81.not = icmp eq i24 %35, 0
  br i1 %tobool81.not, label %land.lhs.true.if.end84_crit_edge, label %if.then82

land.lhs.true.if.end84_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then82:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %error_count83 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %36 = ptrtoint ptr %error_count83 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %error_count83, align 4
  br label %handle_nak_done

if.end84:                                         ; preds = %land.lhs.true.if.end84_crit_edge, %sw.bb.if.end84_crit_edge
  %error_count85 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %37 = ptrtoint ptr %error_count85 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %error_count85, align 4
  %qh86 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %38 = ptrtoint ptr %qh86 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %qh86, align 4
  %ping_state = getelementptr inbounds %struct.dwc2_qh, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %ping_state to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ping_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool87.not = icmp eq i8 %41, 0
  br i1 %tobool87.not, label %if.then88, label %if.end84.if.end100_crit_edge

if.end84.if.end100_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then88:                                        ; preds = %if.end84
  tail call fastcc void @dwc2_update_urb_state_abn(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %28, ptr noundef nonnull %qtd, i32 noundef 4)
  tail call void @dwc2_hcd_save_data_toggle(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef nonnull %qtd)
  %speed = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %42 = ptrtoint ptr %speed to i32
  call void @__asan_loadN_noabort(i32 %42, i32 3)
  %bf.load90 = load i24, ptr %speed, align 1
  %43 = and i24 %bf.load90, 3840
  %cmp94 = icmp eq i24 %43, 768
  br i1 %cmp94, label %if.then96, label %if.then88.if.end100_crit_edge

if.then88.if.end100_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then96:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %qh86 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %qh86, align 4
  %ping_state98 = getelementptr inbounds %struct.dwc2_qh, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %ping_state98 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %ping_state98, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then96, %if.then88.if.end100_crit_edge, %if.end84.if.end100_crit_edge
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef nonnull %qtd, i32 noundef 4)
  br label %handle_nak_done

sw.bb101:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %error_count102 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %47 = ptrtoint ptr %error_count102 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %error_count102, align 4
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef nonnull %qtd, i32 noundef 4)
  br label %handle_nak_done

do.end105:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.168) #8
  br label %handle_nak_done

handle_nak_done:                                  ; preds = %do.end105, %sw.bb101, %if.end100, %if.then82, %if.end70.handle_nak_done_crit_edge, %land.end67
  %mul.i = shl i32 %chnum, 5
  %add.i = add i32 %mul.i, 1292
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %50 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 %add.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %53 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i = icmp eq i8 %54, 0
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %55, i32 %52
  %and.i = and i32 %retval.0.i.i, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %handle_nak_done
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %57, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %and.i) #5, !srcloc !415
  br label %return

do.body1.i.i:                                     ; preds = %handle_nak_done
  call void @__sanitizer_cov_trace_pc() #7
  %58 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %59 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %60, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %58) #5, !srcloc !415
  br label %return

return:                                           ; preds = %do.body1.i.i, %do.body.i.i, %if.then23, %do.body9, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_ack_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_ack_intr.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_ack_intr, %if.end6)) #5
          to label %if.then5 [label %if.end6], !srcloc !414

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_ack_intr.__UNIQUE_ID_ddebug348, ptr noundef %1, ptr noundef nonnull @.str.170, i32 noundef %chnum) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry
  %do_split = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 14
  %2 = ptrtoint ptr %do_split to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %do_split, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %if.else42, label %if.then8

if.then8:                                         ; preds = %if.end6
  %ep_is_in = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %ep_is_in to i32
  call void @__asan_loadN_noabort(i32 %4, i32 3)
  %bf.load = load i24, ptr %ep_is_in, align 1
  %5 = and i24 %bf.load, 4096
  %tobool9.not = icmp eq i24 %5, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true:                                    ; preds = %if.then8
  %data_pid_start = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %data_pid_start to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load10 = load i16, ptr %data_pid_start, align 4
  %7 = and i16 %bf.load10, 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %7)
  %cmp.not = icmp eq i16 %7, 24
  br i1 %cmp.not, label %land.lhs.true.if.end15_crit_edge, label %if.then14

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %xfer_len = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 6
  %8 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xfer_len, align 4
  %ssplit_out_xfer_count = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 9
  %10 = ptrtoint ptr %ssplit_out_xfer_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ssplit_out_xfer_count, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true.if.end15_crit_edge, %if.then8.if.end15_crit_edge
  %11 = ptrtoint ptr %ep_is_in to i32
  call void @__asan_loadN_noabort(i32 %11, i32 3)
  %bf.load16 = load i24, ptr %ep_is_in, align 1
  %12 = and i24 %bf.load16, 4288
  %13 = icmp eq i24 %12, 64
  br i1 %13, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %complete_split = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 3
  %14 = ptrtoint ptr %complete_split to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %complete_split, align 2
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 3)
  br label %if.end48

if.else:                                          ; preds = %if.end15
  %xact_pos = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 18
  %15 = ptrtoint ptr %xact_pos to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %xact_pos, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.192)
  switch i8 %16, label %if.else.if.end48_crit_edge [
    i8 0, label %if.else.sw.bb28_crit_edge
    i8 1, label %sw.bb
    i8 2, label %if.else.sw.bb28_crit_edge77
  ]

if.else.sw.bb28_crit_edge77:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28

if.else.sw.bb28_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %isoc_split_pos = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 4
  %18 = ptrtoint ptr %isoc_split_pos to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %isoc_split_pos, align 1
  %isoc_split_offset = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 6
  %19 = ptrtoint ptr %isoc_split_offset to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %isoc_split_offset, align 2
  br label %if.end48

sw.bb28:                                          ; preds = %if.else.sw.bb28_crit_edge, %if.else.sw.bb28_crit_edge77
  %urb = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %20 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %urb, align 4
  %isoc_frame_index = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 5
  %22 = ptrtoint ptr %isoc_frame_index to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %isoc_frame_index, align 4
  %idxprom = zext i16 %23 to i32
  %isoc_split_offset29 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 6
  %24 = ptrtoint ptr %isoc_split_offset29 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %isoc_split_offset29, align 2
  %add = add i16 %25, 188
  store i16 %add, ptr %isoc_split_offset29, align 2
  %length = getelementptr %struct.dwc2_hcd_urb, ptr %21, i32 0, i32 14, i32 %idxprom, i32 1
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  %conv33 = zext i16 %add to i32
  %sub = sub i32 %27, %conv33
  call void @__sanitizer_cov_trace_const_cmp4(i32 189, i32 %sub)
  %cmp34 = icmp ult i32 %sub, 189
  %isoc_split_pos37 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 4
  br i1 %cmp34, label %if.then36, label %if.else38

if.then36:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %isoc_split_pos37 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %isoc_split_pos37, align 1
  br label %if.end48

if.else38:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %isoc_split_pos37 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %isoc_split_pos37, align 1
  br label %if.end48

if.else42:                                        ; preds = %if.end6
  %error_count = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %30 = ptrtoint ptr %error_count to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %error_count, align 4
  %qh = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %31 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qh, align 4
  %ping_state = getelementptr inbounds %struct.dwc2_qh, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %ping_state to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ping_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool43.not = icmp eq i8 %34, 0
  br i1 %tobool43.not, label %if.else42.if.end48_crit_edge, label %if.then44

if.else42.if.end48_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then44:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %ping_state to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %ping_state, align 4
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 3)
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.else42.if.end48_crit_edge, %if.else38, %if.then36, %sw.bb, %if.else.if.end48_crit_edge, %if.then27
  %mul.i = shl i32 %chnum, 5
  %add.i = add i32 %mul.i, 1292
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %add.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %39 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i = icmp eq i8 %40, 0
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %41, i32 %38
  %and.i = and i32 %retval.0.i.i, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %43, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %and.i) #5, !srcloc !415
  br label %disable_hc_int.exit

do.body1.i.i:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %46, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %44) #5, !srcloc !415
  br label %disable_hc_int.exit

disable_hc_int.exit:                              ; preds = %do.body1.i.i, %do.body.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_nyet_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_nyet_intr.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_nyet_intr, %if.end6)) #5
          to label %if.then5 [label %if.end6], !srcloc !414

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_nyet_intr.__UNIQUE_ID_ddebug349, ptr noundef %1, ptr noundef nonnull @.str.172, i32 noundef %chnum) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry
  %do_split = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 14
  %2 = ptrtoint ptr %do_split to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %do_split, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %if.end6.if.end89_crit_edge, label %land.lhs.true

if.end6.if.end89_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

land.lhs.true:                                    ; preds = %if.end6
  %complete_split = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 15
  %4 = ptrtoint ptr %complete_split to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %complete_split, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end89_crit_edge, label %if.then10

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.then10:                                        ; preds = %land.lhs.true
  %ep_is_in = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %ep_is_in to i32
  call void @__asan_loadN_noabort(i32 %6, i32 3)
  %bf.load = load i24, ptr %ep_is_in, align 1
  %7 = and i24 %bf.load, 4288
  %8 = icmp eq i24 %7, 4160
  br i1 %8, label %land.lhs.true18, label %if.then10.if.end32_crit_edge

if.then10.if.end32_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true18:                                  ; preds = %if.then10
  %host_dma = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 31
  %9 = ptrtoint ptr %host_dma to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %host_dma, align 2, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool19.not = icmp eq i8 %10, 0
  br i1 %tobool19.not, label %land.lhs.true18.if.end32_crit_edge, label %if.then21

land.lhs.true18.if.end32_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then21:                                        ; preds = %land.lhs.true18
  %complete_split22 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 3
  %11 = ptrtoint ptr %complete_split22 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %complete_split22, align 2
  %isoc_split_offset = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 6
  %12 = ptrtoint ptr %isoc_split_offset to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %isoc_split_offset, align 2
  %isoc_frame_index = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 5
  %13 = ptrtoint ptr %isoc_frame_index to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %isoc_frame_index, align 4
  %inc = add i16 %14, 1
  store i16 %inc, ptr %isoc_frame_index, align 4
  %urb = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %15 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb, align 4
  %tobool23.not = icmp eq ptr %16, null
  br i1 %tobool23.not, label %if.then21.if.else_crit_edge, label %land.lhs.true24

if.then21.if.else_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true24:                                  ; preds = %if.then21
  %conv26 = zext i16 %inc to i32
  %packet_count = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %packet_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv26)
  %cmp28 = icmp eq i32 %18, %conv26
  br i1 %cmp28, label %if.then30, label %land.lhs.true24.if.else_crit_edge

land.lhs.true24.if.else_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then30:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef 0) #5
  tail call fastcc void @dwc2_release_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 2)
  br label %handle_nyet_done

if.else:                                          ; preds = %land.lhs.true24.if.else_crit_edge, %if.then21.if.else_crit_edge
  tail call fastcc void @dwc2_release_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 0)
  br label %handle_nyet_done

if.end32:                                         ; preds = %land.lhs.true18.if.end32_crit_edge, %if.then10.if.end32_crit_edge
  %bf.lshr35 = lshr i24 %bf.load, 6
  %trunc = trunc i24 %bf.lshr35 to i2
  %19 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.193)
  switch i2 %trunc, label %if.end32.if.end88_crit_edge [
    i2 -1, label %if.end32.if.then47_crit_edge
    i2 1, label %if.end32.if.then47_crit_edge160
  ]

if.end32.if.then47_crit_edge160:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

if.end32.if.then47_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

if.end32.if.end88_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.then47:                                        ; preds = %if.end32.if.then47_crit_edge, %if.end32.if.then47_crit_edge160
  %qh48 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %20 = ptrtoint ptr %qh48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qh48, align 4
  %uframe_sched = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 13
  %22 = ptrtoint ptr %uframe_sched to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %uframe_sched, align 2, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool50.not = icmp eq i8 %23, 0
  br i1 %tobool50.not, label %if.end82, label %if.else61

if.else61:                                        ; preds = %if.then47
  %start_active_frame = getelementptr inbounds %struct.dwc2_qh, ptr %21, i32 0, i32 16
  %24 = ptrtoint ptr %start_active_frame to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %start_active_frame, align 2
  %num_hs_transfers = getelementptr inbounds %struct.dwc2_qh, ptr %21, i32 0, i32 17
  %26 = ptrtoint ptr %num_hs_transfers to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_hs_transfers, align 4
  %add.i = add i16 %27, %25
  %ep_type64 = getelementptr inbounds %struct.dwc2_qh, ptr %21, i32 0, i32 1
  %28 = ptrtoint ptr %ep_type64 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ep_type64, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp66.not = icmp eq i8 %29, 1
  br i1 %cmp66.not, label %lor.lhs.false68, label %if.else61.if.then72_crit_edge

if.else61.if.then72_crit_edge:                    ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then72

lor.lhs.false68:                                  ; preds = %if.else61
  %ep_is_in69 = getelementptr inbounds %struct.dwc2_qh, ptr %21, i32 0, i32 2
  %30 = ptrtoint ptr %ep_is_in69 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ep_is_in69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool71.not = icmp eq i8 %31, 0
  br i1 %tobool71.not, label %lor.lhs.false68.if.end76_crit_edge, label %lor.lhs.false68.if.then72_crit_edge

lor.lhs.false68.if.then72_crit_edge:              ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then72

lor.lhs.false68.if.end76_crit_edge:               ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then72:                                        ; preds = %lor.lhs.false68.if.then72_crit_edge, %if.else61.if.then72_crit_edge
  %add.i144 = add i16 %add.i, 1
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %lor.lhs.false68.if.end76_crit_edge
  %end_frnum.0.in.in = phi i16 [ %add.i144, %if.then72 ], [ %add.i, %lor.lhs.false68.if.end76_crit_edge ]
  %next_active_frame78 = getelementptr inbounds %struct.dwc2_qh, ptr %21, i32 0, i32 15
  %32 = ptrtoint ptr %next_active_frame78 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %next_active_frame78, align 8
  %conv.i = zext i16 %33 to i32
  %conv1.i = zext i16 %end_frnum.0.in.in to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %34 = and i32 %sub.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool80.not.not = icmp eq i32 %34, 0
  br i1 %tobool80.not.not, label %if.end76.cleanup_crit_edge, label %if.end76.if.end88_crit_edge

if.end76.if.end88_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end82:                                         ; preds = %if.then47
  %call52 = tail call i32 @dwc2_hcd_get_frame_number(ptr noundef %hsotg) #5
  %conv53 = trunc i32 %call52 to i16
  %next_active_frame = getelementptr inbounds %struct.dwc2_qh, ptr %21, i32 0, i32 15
  %35 = ptrtoint ptr %next_active_frame to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %next_active_frame, align 8
  %37 = xor i16 %36, %conv53
  %38 = and i16 %37, 16376
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp58.not = icmp eq i16 %38, 0
  br i1 %cmp58.not, label %if.end82.if.end88_crit_edge, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

cleanup:                                          ; preds = %if.end82.cleanup_crit_edge, %if.end76.cleanup_crit_edge
  %complete_split85 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 3
  %39 = ptrtoint ptr %complete_split85 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %complete_split85, align 2
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 7)
  br label %handle_nyet_done

if.end88:                                         ; preds = %if.end82.if.end88_crit_edge, %if.end76.if.end88_crit_edge, %if.end32.if.end88_crit_edge
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 5)
  br label %handle_nyet_done

if.end89:                                         ; preds = %land.lhs.true.if.end89_crit_edge, %if.end6.if.end89_crit_edge
  %qh90 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %40 = ptrtoint ptr %qh90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %qh90, align 4
  %ping_state = getelementptr inbounds %struct.dwc2_qh, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %ping_state to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %ping_state, align 4
  %error_count = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %43 = ptrtoint ptr %error_count to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %error_count, align 4
  %urb91 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %44 = ptrtoint ptr %urb91 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %urb91, align 4
  tail call fastcc void @dwc2_update_urb_state_abn(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %45, ptr noundef %qtd, i32 noundef 5)
  %mul.i = shl i32 %chnum, 5
  %add.i147 = add i32 %mul.i, 1296
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %46 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %add.i147
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %49 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i = icmp eq i8 %50, 0
  %51 = shl i32 %48, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %51, i32 %48
  %and.i148 = lshr i32 %retval.0.i.i, 29
  %shr.i = and i32 %and.i148, 3
  %ep_type.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %52 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 3)
  %bf.load.i = load i24, ptr %ep_type.i, align 1
  %53 = and i24 %bf.load.i, 192
  %cmp.not.i = icmp eq i24 %53, 0
  br i1 %cmp.not.i, label %if.else32.i, label %if.then.i

if.then.i:                                        ; preds = %if.end89
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %if.then.i.do.end.i_crit_edge, label %lor.rhs.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

lor.rhs.i:                                        ; preds = %if.then.i
  %54 = ptrtoint ptr %qh90 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %qh90, align 4
  %tobool1.not.i = icmp eq ptr %55, null
  br i1 %tobool1.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end25.i, !prof !413

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %dwc2_hcd_save_data_toggle.exit

if.end25.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp26.i = icmp eq i32 %shr.i, 0
  %data_toggle.i = getelementptr inbounds %struct.dwc2_qh, ptr %55, i32 0, i32 6
  br i1 %cmp26.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %data_toggle.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %data_toggle.i, align 1
  br label %dwc2_hcd_save_data_toggle.exit

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %data_toggle.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %data_toggle.i, align 1
  br label %dwc2_hcd_save_data_toggle.exit

if.else32.i:                                      ; preds = %if.end89
  %tobool34.not.i = icmp eq ptr %qtd, null
  br i1 %tobool34.not.i, label %do.end52.i, label %if.end68.i, !prof !413

do.end52.i:                                       ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 558, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %dwc2_hcd_save_data_toggle.exit

if.end68.i:                                       ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp69.i = icmp eq i32 %shr.i, 0
  %data_toggle71.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 2
  br i1 %cmp69.i, label %if.then70.i, label %if.else72.i

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %data_toggle71.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %data_toggle71.i, align 1
  br label %dwc2_hcd_save_data_toggle.exit

if.else72.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %data_toggle71.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %data_toggle71.i, align 1
  br label %dwc2_hcd_save_data_toggle.exit

dwc2_hcd_save_data_toggle.exit:                   ; preds = %if.else72.i, %if.then70.i, %do.end52.i, %if.else.i, %if.then27.i, %do.end.i
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 5)
  br label %handle_nyet_done

handle_nyet_done:                                 ; preds = %dwc2_hcd_save_data_toggle.exit, %if.end88, %cleanup, %if.else, %if.then30
  %mul.i149 = shl i32 %chnum, 5
  %add.i150 = add i32 %mul.i149, 1292
  %regs.i.i151 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %60 = ptrtoint ptr %regs.i.i151 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i.i151, align 4
  %add.ptr.i.i152 = getelementptr i8, ptr %61, i32 %add.i150
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i152) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i153 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %63 = ptrtoint ptr %needs_byte_swap.i.i153 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %needs_byte_swap.i.i153, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i154 = icmp eq i8 %64, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  %retval.0.i.i155 = select i1 %tobool.not.i.i154, i32 %65, i32 %62
  %and.i156 = and i32 %retval.0.i.i155, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i154, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %handle_nyet_done
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %regs.i.i151 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i151, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %67, i32 %add.i150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %and.i156) #5, !srcloc !415
  br label %disable_hc_int.exit

do.body1.i.i:                                     ; preds = %handle_nyet_done
  call void @__sanitizer_cov_trace_pc() #7
  %68 = tail call i32 @llvm.bswap.i32(i32 %and.i156) #5
  %69 = ptrtoint ptr %regs.i.i151 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i151, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %70, i32 %add.i150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %68) #5, !srcloc !415
  br label %disable_hc_int.exit

disable_hc_int.exit:                              ; preds = %do.body1.i.i, %do.body.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_xacterr_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_xacterr_intr.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_xacterr_intr, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_xacterr_intr.__UNIQUE_ID_ddebug352, ptr noundef %1, ptr noundef nonnull @.str.174, i32 noundef %chnum) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %priv.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %root_hub1.i = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %root_hub1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root_hub1.i, align 8
  %qh.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %6 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qh.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end.i

do.end.dwc2_hc_handle_tt_clear.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end.i:                                         ; preds = %do.end
  %dev_speed.i = getelementptr inbounds %struct.dwc2_qh, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_speed.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dev_speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp eq i8 %9, 3
  br i1 %cmp.i, label %if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end5.i

if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end5.i:                                        ; preds = %if.end.i
  %urb.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %10 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end8.i

if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end8.i:                                        ; preds = %if.end5.i
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool10.not.i = icmp eq ptr %13, null
  br i1 %tobool10.not.i, label %if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %lor.lhs.false.i

if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %dev.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %lor.lhs.false12.i

lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %tt.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %tt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tt.i, align 4
  %tobool14.not.i = icmp eq ptr %17, null
  br i1 %tobool14.not.i, label %lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end16.i

lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end16.i:                                       ; preds = %lor.lhs.false12.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %cmp19.i = icmp eq ptr %19, %5
  br i1 %cmp19.i, label %if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end22.i

if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end22.i:                                       ; preds = %if.end16.i
  %status.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %11, i32 0, i32 8
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %21, label %if.then30.i [
    i32 -32, label %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge
    i32 -121, label %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge86
  ]

if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge86: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.then30.i:                                      ; preds = %if.end22.i
  %tt_buffer_dirty.i = getelementptr inbounds %struct.dwc2_qh, ptr %7, i32 0, i32 34
  %23 = ptrtoint ptr %tt_buffer_dirty.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %tt_buffer_dirty.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %tt_buffer_dirty.i, align 8
  %call32.i = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef nonnull %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.then34.i

if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.then34.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qh.i, align 4
  %tt_buffer_dirty36.i = getelementptr inbounds %struct.dwc2_qh, ptr %25, i32 0, i32 34
  %26 = ptrtoint ptr %tt_buffer_dirty36.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load37.i = load i8, ptr %tt_buffer_dirty36.i, align 8
  %bf.clear38.i = and i8 %bf.load37.i, 127
  store i8 %bf.clear38.i, ptr %tt_buffer_dirty36.i, align 8
  br label %dwc2_hc_handle_tt_clear.exit

dwc2_hc_handle_tt_clear.exit:                     ; preds = %if.then34.i, %if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge86, %if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %do.end.dwc2_hc_handle_tt_clear.exit_crit_edge
  %dma_desc_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %27 = ptrtoint ptr %dma_desc_enable to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dma_desc_enable, align 1, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool4.not = icmp eq i8 %28, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %dwc2_hc_handle_tt_clear.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, i32 noundef 7) #5
  br label %handle_xacterr_done

if.end6:                                          ; preds = %dwc2_hc_handle_tt_clear.exit
  %urb = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %29 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %urb, align 4
  %pipe_type.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %30, i32 0, i32 13, i32 2
  %31 = ptrtoint ptr %pipe_type.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pipe_type.i, align 2
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.195)
  switch i8 %32, label %if.end6.handle_xacterr_done_crit_edge [
    i8 0, label %if.end6.sw.bb_crit_edge
    i8 2, label %if.end6.sw.bb_crit_edge87
    i8 3, label %sw.bb22
    i8 1, label %sw.bb33
  ]

if.end6.sw.bb_crit_edge87:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end6.sw.bb_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end6.handle_xacterr_done_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_xacterr_done

sw.bb:                                            ; preds = %if.end6.sw.bb_crit_edge, %if.end6.sw.bb_crit_edge87
  %error_count = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %34 = ptrtoint ptr %error_count to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %error_count, align 4
  %inc = add i8 %35, 1
  store i8 %inc, ptr %error_count, align 4
  %36 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qh.i, align 4
  %ping_state = getelementptr inbounds %struct.dwc2_qh, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %ping_state to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ping_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool8.not = icmp eq i8 %39, 0
  br i1 %tobool8.not, label %if.then9, label %sw.bb.if.end21_crit_edge

sw.bb.if.end21_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then9:                                         ; preds = %sw.bb
  tail call fastcc void @dwc2_update_urb_state_abn(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %30, ptr noundef %qtd, i32 noundef 7)
  %mul.i = shl i32 %chnum, 5
  %add.i = add i32 %mul.i, 1296
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 %add.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %43 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i = icmp eq i8 %44, 0
  %45 = shl i32 %42, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %45, i32 %42
  %and.i = lshr i32 %retval.0.i.i, 29
  %shr.i = and i32 %and.i, 3
  %ep_type.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %46 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 3)
  %bf.load.i74 = load i24, ptr %ep_type.i, align 1
  %47 = and i24 %bf.load.i74, 192
  %cmp.not.i = icmp eq i24 %47, 0
  br i1 %cmp.not.i, label %if.else32.i, label %if.then.i

if.then.i:                                        ; preds = %if.then9
  %tobool.not.i75 = icmp eq ptr %chan, null
  br i1 %tobool.not.i75, label %if.then.i.do.end.i_crit_edge, label %lor.rhs.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

lor.rhs.i:                                        ; preds = %if.then.i
  %48 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %qh.i, align 4
  %tobool1.not.i = icmp eq ptr %49, null
  br i1 %tobool1.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end25.i, !prof !413

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %dwc2_hcd_save_data_toggle.exit

if.end25.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp26.i = icmp eq i32 %shr.i, 0
  %data_toggle.i = getelementptr inbounds %struct.dwc2_qh, ptr %49, i32 0, i32 6
  br i1 %cmp26.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %data_toggle.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %data_toggle.i, align 1
  br label %dwc2_hcd_save_data_toggle.exit

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %data_toggle.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %data_toggle.i, align 1
  br label %dwc2_hcd_save_data_toggle.exit

if.else32.i:                                      ; preds = %if.then9
  %tobool34.not.i = icmp eq ptr %qtd, null
  br i1 %tobool34.not.i, label %do.end52.i, label %if.end68.i, !prof !413

do.end52.i:                                       ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 558, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %dwc2_hcd_save_data_toggle.exit

if.end68.i:                                       ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp69.i = icmp eq i32 %shr.i, 0
  %data_toggle71.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 2
  br i1 %cmp69.i, label %if.then70.i, label %if.else72.i

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %data_toggle71.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %data_toggle71.i, align 1
  br label %dwc2_hcd_save_data_toggle.exit

if.else72.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %data_toggle71.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %data_toggle71.i, align 1
  br label %dwc2_hcd_save_data_toggle.exit

dwc2_hcd_save_data_toggle.exit:                   ; preds = %if.else72.i, %if.then70.i, %do.end52.i, %if.else.i, %if.then27.i, %do.end.i
  %54 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 3)
  %bf.load = load i24, ptr %ep_type.i, align 1
  %55 = and i24 %bf.load, 7936
  %56 = icmp eq i24 %55, 768
  br i1 %56, label %if.then17, label %dwc2_hcd_save_data_toggle.exit.if.end21_crit_edge

dwc2_hcd_save_data_toggle.exit.if.end21_crit_edge: ; preds = %dwc2_hcd_save_data_toggle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then17:                                        ; preds = %dwc2_hcd_save_data_toggle.exit
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %qh.i, align 4
  %ping_state19 = getelementptr inbounds %struct.dwc2_qh, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %ping_state19 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %ping_state19, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %dwc2_hcd_save_data_toggle.exit.if.end21_crit_edge, %sw.bb.if.end21_crit_edge
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 7)
  br label %handle_xacterr_done

sw.bb22:                                          ; preds = %if.end6
  %error_count23 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %60 = ptrtoint ptr %error_count23 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %error_count23, align 4
  %inc24 = add i8 %61, 1
  store i8 %inc24, ptr %error_count23, align 4
  %do_split = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 14
  %62 = ptrtoint ptr %do_split to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %do_split, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool26.not = icmp eq i8 %63, 0
  br i1 %tobool26.not, label %sw.bb22.if.end32_crit_edge, label %land.lhs.true27

sw.bb22.if.end32_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true27:                                  ; preds = %sw.bb22
  %complete_split = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 15
  %64 = ptrtoint ptr %complete_split to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %complete_split, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool29.not = icmp eq i8 %65, 0
  br i1 %tobool29.not, label %land.lhs.true27.if.end32_crit_edge, label %if.then30

land.lhs.true27.if.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  %complete_split31 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 3
  %66 = ptrtoint ptr %complete_split31 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %complete_split31, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true27.if.end32_crit_edge, %sw.bb22.if.end32_crit_edge
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 7)
  br label %handle_xacterr_done

sw.bb33:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = tail call fastcc i32 @dwc2_update_isoc_urb_state(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd, i32 noundef 7), !range !417
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %call34)
  br label %handle_xacterr_done

handle_xacterr_done:                              ; preds = %sw.bb33, %if.end32, %if.end21, %if.end6.handle_xacterr_done_crit_edge, %if.then5
  %mul.i77 = shl i32 %chnum, 5
  %add.i78 = add i32 %mul.i77, 1292
  %regs.i.i79 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %67 = ptrtoint ptr %regs.i.i79 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.i79, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %68, i32 %add.i78
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i80) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i81 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %70 = ptrtoint ptr %needs_byte_swap.i.i81 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %needs_byte_swap.i.i81, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i.i82 = icmp eq i8 %71, 0
  %72 = tail call i32 @llvm.bswap.i32(i32 %69) #5
  %retval.0.i.i83 = select i1 %tobool.not.i.i82, i32 %72, i32 %69
  %and.i84 = and i32 %retval.0.i.i83, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i82, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %handle_xacterr_done
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %regs.i.i79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i79, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %74, i32 %add.i78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %and.i84) #5, !srcloc !415
  br label %disable_hc_int.exit

do.body1.i.i:                                     ; preds = %handle_xacterr_done
  call void @__sanitizer_cov_trace_pc() #7
  %75 = tail call i32 @llvm.bswap.i32(i32 %and.i84) #5
  %76 = ptrtoint ptr %regs.i.i79 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i.i79, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %77, i32 %add.i78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %75) #5, !srcloc !415
  br label %disable_hc_int.exit

disable_hc_int.exit:                              ; preds = %do.body1.i.i, %do.body.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_babble_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_babble_intr.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_babble_intr, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_babble_intr.__UNIQUE_ID_ddebug350, ptr noundef %1, ptr noundef nonnull @.str.176, i32 noundef %chnum) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %priv.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %root_hub1.i = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %root_hub1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root_hub1.i, align 8
  %qh.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %6 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qh.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end.i

do.end.dwc2_hc_handle_tt_clear.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end.i:                                         ; preds = %do.end
  %dev_speed.i = getelementptr inbounds %struct.dwc2_qh, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_speed.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dev_speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp eq i8 %9, 3
  br i1 %cmp.i, label %if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end5.i

if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end5.i:                                        ; preds = %if.end.i
  %urb.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %10 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end8.i

if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end8.i:                                        ; preds = %if.end5.i
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool10.not.i = icmp eq ptr %13, null
  br i1 %tobool10.not.i, label %if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %lor.lhs.false.i

if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %dev.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %lor.lhs.false12.i

lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %tt.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %tt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tt.i, align 4
  %tobool14.not.i = icmp eq ptr %17, null
  br i1 %tobool14.not.i, label %lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end16.i

lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end16.i:                                       ; preds = %lor.lhs.false12.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %cmp19.i = icmp eq ptr %19, %5
  br i1 %cmp19.i, label %if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end22.i

if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end22.i:                                       ; preds = %if.end16.i
  %status.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %11, i32 0, i32 8
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %21, label %if.then30.i [
    i32 -32, label %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge
    i32 -121, label %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge34
  ]

if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge34: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.then30.i:                                      ; preds = %if.end22.i
  %tt_buffer_dirty.i = getelementptr inbounds %struct.dwc2_qh, ptr %7, i32 0, i32 34
  %23 = ptrtoint ptr %tt_buffer_dirty.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %tt_buffer_dirty.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %tt_buffer_dirty.i, align 8
  %call32.i = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef nonnull %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.then34.i

if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.then34.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qh.i, align 4
  %tt_buffer_dirty36.i = getelementptr inbounds %struct.dwc2_qh, ptr %25, i32 0, i32 34
  %26 = ptrtoint ptr %tt_buffer_dirty36.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load37.i = load i8, ptr %tt_buffer_dirty36.i, align 8
  %bf.clear38.i = and i8 %bf.load37.i, 127
  store i8 %bf.clear38.i, ptr %tt_buffer_dirty36.i, align 8
  br label %dwc2_hc_handle_tt_clear.exit

dwc2_hc_handle_tt_clear.exit:                     ; preds = %if.then34.i, %if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge34, %if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %do.end.dwc2_hc_handle_tt_clear.exit_crit_edge
  %dma_desc_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %27 = ptrtoint ptr %dma_desc_enable to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dma_desc_enable, align 1, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool4.not = icmp eq i8 %28, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %dwc2_hc_handle_tt_clear.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, i32 noundef 9) #5
  br label %disable_int

if.end6:                                          ; preds = %dwc2_hc_handle_tt_clear.exit
  %ep_type = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %29 = ptrtoint ptr %ep_type to i32
  call void @__asan_loadN_noabort(i32 %29, i32 3)
  %bf.load = load i24, ptr %ep_type, align 1
  %30 = and i24 %bf.load, 192
  %cmp.not = icmp eq i24 %30, 64
  br i1 %cmp.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef -75) #5
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 9)
  br label %disable_int

if.else:                                          ; preds = %if.end6
  %urb1.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %31 = ptrtoint ptr %urb1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %urb1.i, align 4
  %tobool.not.i30 = icmp eq ptr %32, null
  br i1 %tobool.not.i30, label %if.else.dwc2_update_isoc_urb_state.exit_crit_edge, label %if.end.i31

if.else.dwc2_update_isoc_urb_state.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_update_isoc_urb_state.exit

if.end.i31:                                       ; preds = %if.else
  %isoc_frame_index.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 5
  %33 = ptrtoint ptr %isoc_frame_index.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %isoc_frame_index.i, align 4
  %idxprom.i = zext i16 %34 to i32
  %error_count10.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %32, i32 0, i32 9
  %35 = ptrtoint ptr %error_count10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error_count10.i, align 4
  %inc11.i = add i32 %36, 1
  store i32 %inc11.i, ptr %error_count10.i, align 4
  %status12.i = getelementptr %struct.dwc2_hcd_urb, ptr %32, i32 0, i32 14, i32 %idxprom.i, i32 3
  %37 = ptrtoint ptr %status12.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -75, ptr %status12.i, align 4
  %38 = load i16, ptr %isoc_frame_index.i, align 4
  %inc38.i = add i16 %38, 1
  store i16 %inc38.i, ptr %isoc_frame_index.i, align 4
  %conv39.i = zext i16 %inc38.i to i32
  %packet_count.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %32, i32 0, i32 10
  %39 = ptrtoint ptr %packet_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %packet_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv39.i)
  %cmp40.i = icmp eq i32 %40, %conv39.i
  br i1 %cmp40.i, label %if.then42.i, label %if.end.i31.dwc2_update_isoc_urb_state.exit_crit_edge

if.end.i31.dwc2_update_isoc_urb_state.exit_crit_edge: ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_update_isoc_urb_state.exit

if.then42.i:                                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef 0) #5
  br label %dwc2_update_isoc_urb_state.exit

dwc2_update_isoc_urb_state.exit:                  ; preds = %if.then42.i, %if.end.i31.dwc2_update_isoc_urb_state.exit_crit_edge, %if.else.dwc2_update_isoc_urb_state.exit_crit_edge
  %retval.0.i32 = phi i32 [ 0, %if.else.dwc2_update_isoc_urb_state.exit_crit_edge ], [ 2, %if.then42.i ], [ 1, %if.end.i31.dwc2_update_isoc_urb_state.exit_crit_edge ]
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %retval.0.i32)
  br label %disable_int

disable_int:                                      ; preds = %dwc2_update_isoc_urb_state.exit, %if.then7, %if.then5
  %mul.i = shl i32 %chnum, 5
  %add.i = add i32 %mul.i, 1292
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %41 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %add.i
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %44 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i = icmp eq i8 %45, 0
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %46, i32 %43
  %and.i = and i32 %retval.0.i.i, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %disable_int
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %48, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %and.i) #5, !srcloc !415
  br label %disable_hc_int.exit

do.body1.i.i:                                     ; preds = %disable_int
  call void @__sanitizer_cov_trace_pc() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %50 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %51, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %49) #5, !srcloc !415
  br label %disable_hc_int.exit

disable_hc_int.exit:                              ; preds = %do.body1.i.i, %do.body.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_frmovrun_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_frmovrun_intr.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_frmovrun_intr, %if.end6)) #5
          to label %if.then5 [label %if.end6], !srcloc !414

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_frmovrun_intr.__UNIQUE_ID_ddebug353, ptr noundef %1, ptr noundef nonnull @.str.178, i32 noundef %chnum) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry
  %priv.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %root_hub1.i = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %root_hub1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root_hub1.i, align 8
  %qh.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %6 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qh.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end6.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end.i

if.end6.dwc2_hc_handle_tt_clear.exit_crit_edge:   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end.i:                                         ; preds = %if.end6
  %dev_speed.i = getelementptr inbounds %struct.dwc2_qh, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_speed.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dev_speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp eq i8 %9, 3
  br i1 %cmp.i, label %if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end5.i

if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end5.i:                                        ; preds = %if.end.i
  %urb.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %10 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end8.i

if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end8.i:                                        ; preds = %if.end5.i
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool10.not.i = icmp eq ptr %13, null
  br i1 %tobool10.not.i, label %if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %lor.lhs.false.i

if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %dev.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %lor.lhs.false12.i

lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %tt.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %tt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tt.i, align 4
  %tobool14.not.i = icmp eq ptr %17, null
  br i1 %tobool14.not.i, label %lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end16.i

lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end16.i:                                       ; preds = %lor.lhs.false12.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %cmp19.i = icmp eq ptr %19, %5
  br i1 %cmp19.i, label %if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end22.i

if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end22.i:                                       ; preds = %if.end16.i
  %status.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %11, i32 0, i32 8
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %21, label %if.then30.i [
    i32 -32, label %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge
    i32 -121, label %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge31
  ]

if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge31: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.then30.i:                                      ; preds = %if.end22.i
  %tt_buffer_dirty.i = getelementptr inbounds %struct.dwc2_qh, ptr %7, i32 0, i32 34
  %23 = ptrtoint ptr %tt_buffer_dirty.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %tt_buffer_dirty.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %tt_buffer_dirty.i, align 8
  %call32.i = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef nonnull %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.then34.i

if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.then34.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qh.i, align 4
  %tt_buffer_dirty36.i = getelementptr inbounds %struct.dwc2_qh, ptr %25, i32 0, i32 34
  %26 = ptrtoint ptr %tt_buffer_dirty36.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load37.i = load i8, ptr %tt_buffer_dirty36.i, align 8
  %bf.clear38.i = and i8 %bf.load37.i, 127
  store i8 %bf.clear38.i, ptr %tt_buffer_dirty36.i, align 8
  br label %dwc2_hc_handle_tt_clear.exit

dwc2_hc_handle_tt_clear.exit:                     ; preds = %if.then34.i, %if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge31, %if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end6.dwc2_hc_handle_tt_clear.exit_crit_edge
  %urb = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %27 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %urb, align 4
  %pipe_type.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %28, i32 0, i32 13, i32 2
  %29 = ptrtoint ptr %pipe_type.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pipe_type.i, align 2
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.198)
  switch i8 %30, label %dwc2_hc_handle_tt_clear.exit.sw.epilog_crit_edge [
    i8 1, label %sw.bb9
    i8 3, label %dwc2_hc_handle_tt_clear.exit.sw.epilog.sink.split_crit_edge
  ]

dwc2_hc_handle_tt_clear.exit.sw.epilog.sink.split_crit_edge: ; preds = %dwc2_hc_handle_tt_clear.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

dwc2_hc_handle_tt_clear.exit.sw.epilog_crit_edge: ; preds = %dwc2_hc_handle_tt_clear.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %dwc2_hc_handle_tt_clear.exit
  %tobool.not.i26 = icmp eq ptr %28, null
  br i1 %tobool.not.i26, label %sw.bb9.sw.epilog.sink.split_crit_edge, label %if.end.i27

sw.bb9.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end.i27:                                       ; preds = %sw.bb9
  %isoc_frame_index.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 5
  %32 = ptrtoint ptr %isoc_frame_index.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %isoc_frame_index.i, align 4
  %idxprom.i = zext i16 %33 to i32
  %error_count.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %28, i32 0, i32 9
  %34 = ptrtoint ptr %error_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error_count.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %error_count.i, align 4
  %ep_is_in.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %36 = ptrtoint ptr %ep_is_in.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 3)
  %bf.load.i28 = load i24, ptr %ep_is_in.i, align 1
  %37 = and i24 %bf.load.i28, 4096
  %tobool3.not.i = icmp eq i24 %37, 0
  %spec.select.i = select i1 %tobool3.not.i, i32 -70, i32 -63
  %38 = getelementptr %struct.dwc2_hcd_urb, ptr %28, i32 0, i32 14, i32 %idxprom.i, i32 3
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.select.i, ptr %38, align 4
  %actual_length8.i = getelementptr %struct.dwc2_hcd_urb, ptr %28, i32 0, i32 14, i32 %idxprom.i, i32 2
  %40 = ptrtoint ptr %actual_length8.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %actual_length8.i, align 4
  %41 = load i16, ptr %isoc_frame_index.i, align 4
  %inc38.i = add i16 %41, 1
  store i16 %inc38.i, ptr %isoc_frame_index.i, align 4
  %conv39.i = zext i16 %inc38.i to i32
  %packet_count.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %28, i32 0, i32 10
  %42 = ptrtoint ptr %packet_count.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %packet_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv39.i)
  %cmp40.i = icmp eq i32 %43, %conv39.i
  br i1 %cmp40.i, label %if.then42.i, label %if.end.i27.sw.epilog.sink.split_crit_edge

if.end.i27.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.then42.i:                                      ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef 0) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then42.i, %if.end.i27.sw.epilog.sink.split_crit_edge, %sw.bb9.sw.epilog.sink.split_crit_edge, %dwc2_hc_handle_tt_clear.exit.sw.epilog.sink.split_crit_edge
  %retval.0.i29.sink = phi i32 [ 8, %dwc2_hc_handle_tt_clear.exit.sw.epilog.sink.split_crit_edge ], [ 0, %sw.bb9.sw.epilog.sink.split_crit_edge ], [ 2, %if.then42.i ], [ 1, %if.end.i27.sw.epilog.sink.split_crit_edge ]
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %retval.0.i29.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %dwc2_hc_handle_tt_clear.exit.sw.epilog_crit_edge
  %mul.i = shl i32 %chnum, 5
  %add.i = add i32 %mul.i, 1292
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 %add.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %47 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i = icmp eq i8 %48, 0
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %49, i32 %46
  %and.i = and i32 %retval.0.i.i, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %51, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %and.i) #5, !srcloc !415
  br label %disable_hc_int.exit

do.body1.i.i:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %54, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %52) #5, !srcloc !415
  br label %disable_hc_int.exit

disable_hc_int.exit:                              ; preds = %do.body1.i.i, %do.body.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_datatglerr_intr(ptr nocapture noundef readonly %hsotg, ptr nocapture noundef readonly %chan, i32 noundef %chnum, ptr nocapture noundef %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_datatglerr_intr.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_datatglerr_intr, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_datatglerr_intr.__UNIQUE_ID_ddebug354, ptr noundef %1, ptr noundef nonnull @.str.180, i32 noundef %chnum) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ep_is_in = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %ep_is_in to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %ep_is_in, align 1
  %3 = and i24 %bf.load, 4096
  %tobool4.not = icmp eq i24 %3, 0
  br i1 %tobool4.not, label %do.end7, label %if.then5

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %error_count = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %4 = ptrtoint ptr %error_count to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %error_count, align 4
  br label %if.end9

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.181, i32 noundef %chnum) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end7, %if.then5
  %priv.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 19
  %7 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i.i, align 8
  %root_hub1.i = getelementptr inbounds %struct.usb_bus, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %root_hub1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root_hub1.i, align 8
  %qh.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %11 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qh.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end9.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end.i

if.end9.dwc2_hc_handle_tt_clear.exit_crit_edge:   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end.i:                                         ; preds = %if.end9
  %dev_speed.i = getelementptr inbounds %struct.dwc2_qh, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev_speed.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dev_speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp.i = icmp eq i8 %14, 3
  br i1 %cmp.i, label %if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end5.i

if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end5.i:                                        ; preds = %if.end.i
  %urb.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %15 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb.i, align 4
  %tobool6.not.i = icmp eq ptr %16, null
  br i1 %tobool6.not.i, label %if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end8.i

if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end8.i:                                        ; preds = %if.end5.i
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool10.not.i = icmp eq ptr %18, null
  br i1 %tobool10.not.i, label %if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %lor.lhs.false.i

if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %dev.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %tobool11.not.i = icmp eq ptr %20, null
  br i1 %tobool11.not.i, label %lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %lor.lhs.false12.i

lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %tt.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %tt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tt.i, align 4
  %tobool14.not.i = icmp eq ptr %22, null
  br i1 %tobool14.not.i, label %lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end16.i

lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end16.i:                                       ; preds = %lor.lhs.false12.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %cmp19.i = icmp eq ptr %24, %10
  br i1 %cmp19.i, label %if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.end22.i

if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end22.i:                                       ; preds = %if.end16.i
  %status.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %16, i32 0, i32 8
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %26, label %if.then30.i [
    i32 -32, label %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge
    i32 -121, label %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge18
  ]

if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge18: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.then30.i:                                      ; preds = %if.end22.i
  %tt_buffer_dirty.i = getelementptr inbounds %struct.dwc2_qh, ptr %12, i32 0, i32 34
  %28 = ptrtoint ptr %tt_buffer_dirty.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %tt_buffer_dirty.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %tt_buffer_dirty.i, align 8
  %call32.i = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef nonnull %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge, label %if.then34.i

if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hc_handle_tt_clear.exit

if.then34.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qh.i, align 4
  %tt_buffer_dirty36.i = getelementptr inbounds %struct.dwc2_qh, ptr %30, i32 0, i32 34
  %31 = ptrtoint ptr %tt_buffer_dirty36.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load37.i = load i8, ptr %tt_buffer_dirty36.i, align 8
  %bf.clear38.i = and i8 %bf.load37.i, 127
  store i8 %bf.clear38.i, ptr %tt_buffer_dirty36.i, align 8
  br label %dwc2_hc_handle_tt_clear.exit

dwc2_hc_handle_tt_clear.exit:                     ; preds = %if.then34.i, %if.then30.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end22.i.dwc2_hc_handle_tt_clear.exit_crit_edge18, %if.end16.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %lor.lhs.false12.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %lor.lhs.false.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end8.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end5.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end.i.dwc2_hc_handle_tt_clear.exit_crit_edge, %if.end9.dwc2_hc_handle_tt_clear.exit_crit_edge
  %mul.i = shl i32 %chnum, 5
  %add.i = add i32 %mul.i, 1292
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %add.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %35 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %37, i32 %34
  %and.i = and i32 %retval.0.i.i, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %dwc2_hc_handle_tt_clear.exit
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %39, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %and.i) #5, !srcloc !415
  br label %disable_hc_int.exit

do.body1.i.i:                                     ; preds = %dwc2_hc_handle_tt_clear.exit
  call void @__sanitizer_cov_trace_pc() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %41 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %42, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %40) #5, !srcloc !415
  br label %disable_hc_int.exit

disable_hc_int.exit:                              ; preds = %do.body1.i.i, %do.body.i.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_host_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_deactivate_qh(ptr noundef %hsotg, ptr noundef %qh, i32 noundef %free_qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_deactivate_qh.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_deactivate_qh, %if.end6)) #5
          to label %if.then5 [label %if.end6], !srcloc !414

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_deactivate_qh.__UNIQUE_ID_ddebug317, ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, ptr noundef %hsotg, ptr noundef %qh, i32 noundef %free_qtd) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry
  %qtd_list = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 23
  %2 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not = icmp eq ptr %3, %qtd_list
  br i1 %cmp.i.not, label %do.body10, label %if.end29

do.body10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_deactivate_qh.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_deactivate_qh, %no_qtd)) #5
          to label %if.then24 [label %no_qtd], !srcloc !414

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_deactivate_qh.__UNIQUE_ID_ddebug318, ptr noundef %5, ptr noundef nonnull @.str.59) #5
  br label %no_qtd

if.end29:                                         ; preds = %if.end6
  %add.ptr = getelementptr i8, ptr %3, i32 -36
  %complete_split = getelementptr i8, ptr %3, i32 -30
  %6 = ptrtoint ptr %complete_split to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %complete_split, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool32.not = icmp eq i8 %7, 0
  br i1 %tobool32.not, label %if.else, label %if.end29.if.end41_crit_edge

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %isoc_split_pos = getelementptr i8, ptr %3, i32 -29
  %8 = ptrtoint ptr %isoc_split_pos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %isoc_split_pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %switch = icmp ult i8 %9, 2
  %spec.select = zext i1 %switch to i32
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.end29.if.end41_crit_edge
  %continue_split.0 = phi i32 [ 1, %if.end29.if.end41_crit_edge ], [ %spec.select, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_qtd)
  %tobool42.not = icmp eq i32 %free_qtd, 0
  br i1 %tobool42.not, label %if.end41.no_qtd_crit_edge, label %if.then43

if.end41.no_qtd_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_qtd

if.then43:                                        ; preds = %if.end41
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then43.dwc2_hcd_qtd_unlink_and_free.exit_crit_edge

if.then43.dwc2_hcd_qtd_unlink_and_free.exit_crit_edge: ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %dwc2_hcd_qtd_unlink_and_free.exit

if.end.i.i.i:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr i8, ptr %3, i32 4
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %dwc2_hcd_qtd_unlink_and_free.exit

dwc2_hcd_qtd_unlink_and_free.exit:                ; preds = %if.end.i.i.i, %if.then43.dwc2_hcd_qtd_unlink_and_free.exit_crit_edge
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i = getelementptr i8, ptr %3, i32 4
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %add.ptr) #5
  br label %no_qtd

no_qtd:                                           ; preds = %dwc2_hcd_qtd_unlink_and_free.exit, %if.end41.no_qtd_crit_edge, %if.then24, %do.body10
  %continue_split.1 = phi i32 [ 0, %if.then24 ], [ 0, %dwc2_hcd_qtd_unlink_and_free.exit ], [ %continue_split.0, %if.end41.no_qtd_crit_edge ], [ 0, %do.body10 ]
  %channel = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 24
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %channel, align 8
  tail call void @dwc2_hcd_qh_deactivate(ptr noundef %hsotg, ptr noundef %qh, i32 noundef %continue_split.1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hc_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_qh_deactivate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_xfercomp_isoc_split_in(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %urb = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %0 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %isoc_frame_index = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 5
  %2 = ptrtoint ptr %isoc_frame_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %isoc_frame_index, align 4
  %idxprom = zext i16 %3 to i32
  %mul.i = shl i32 %chnum, 5
  %add.i = add i32 %mul.i, 1296
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %ep_is_in.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %ep_is_in.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 3)
  %bf.load.i = load i24, ptr %ep_is_in.i, align 1
  %8 = and i24 %bf.load.i, 4096
  %tobool.not.i = icmp eq i24 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  %11 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %11, i32 %6
  %and.i = and i32 %retval.0.i.i, 524287
  %xfer_len.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 6
  %12 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xfer_len.i, align 4
  %sub.i = sub i32 %13, %and.i
  br label %dwc2_get_actual_xfer_length.exit

if.else.i:                                        ; preds = %if.end
  %qh.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %14 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qh.i, align 4
  %do_split.i = getelementptr inbounds %struct.dwc2_qh, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %do_split.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %do_split.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not.i = icmp eq i8 %17, 0
  br i1 %tobool5.not.i, label %if.else7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %ssplit_out_xfer_count.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 9
  %18 = ptrtoint ptr %ssplit_out_xfer_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ssplit_out_xfer_count.i, align 4
  br label %dwc2_get_actual_xfer_length.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %xfer_len8.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 6
  %20 = ptrtoint ptr %xfer_len8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xfer_len8.i, align 4
  br label %dwc2_get_actual_xfer_length.exit

dwc2_get_actual_xfer_length.exit:                 ; preds = %if.else7.i, %if.then6.i, %if.then1.i
  %length.0.i = phi i32 [ %sub.i, %if.then1.i ], [ %19, %if.then6.i ], [ %21, %if.else7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.0.i)
  %tobool2.not = icmp eq i32 %length.0.i, 0
  br i1 %tobool2.not, label %land.lhs.true, label %dwc2_get_actual_xfer_length.exit.if.end5_crit_edge

dwc2_get_actual_xfer_length.exit.if.end5_crit_edge: ; preds = %dwc2_get_actual_xfer_length.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

land.lhs.true:                                    ; preds = %dwc2_get_actual_xfer_length.exit
  %isoc_split_offset = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 6
  %22 = ptrtoint ptr %isoc_split_offset to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %isoc_split_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool3.not = icmp eq i16 %23, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %complete_split = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 3
  %24 = ptrtoint ptr %complete_split to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %complete_split, align 2
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %dwc2_get_actual_xfer_length.exit.if.end5_crit_edge
  %actual_length = getelementptr %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 14, i32 %idxprom, i32 2
  %25 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual_length, align 4
  %add = add i32 %26, %length.0.i
  store i32 %add, ptr %actual_length, align 4
  %align_buf = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 5
  %27 = ptrtoint ptr %align_buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %align_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool6.not = icmp eq i32 %28, 0
  br i1 %tobool6.not, label %if.end5.if.end19_crit_edge, label %do.body

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

do.body:                                          ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_xfercomp_isoc_split_in.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_xfercomp_isoc_split_in, %do.end)) #5
          to label %if.then13 [label %do.end], !srcloc !414

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_xfercomp_isoc_split_in.__UNIQUE_ID_ddebug329, ptr noundef %30, ptr noundef nonnull @.str.69) #5
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %31 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hsotg, align 8
  %qh = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %33 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %qh, align 4
  %dw_align_buf_dma = getelementptr inbounds %struct.dwc2_qh, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %dw_align_buf_dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dw_align_buf_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %36, i32 noundef 1024, i32 noundef 2, i32 noundef 0) #5
  %37 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %urb, align 4
  %buf = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf, align 4
  %xfer_dma = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 4
  %41 = ptrtoint ptr %xfer_dma to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xfer_dma, align 4
  %dma = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %38, i32 0, i32 3
  %43 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma, align 4
  %sub = sub i32 %42, %44
  %add.ptr = getelementptr i8, ptr %40, i32 %sub
  %45 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %qh, align 4
  %dw_align_buf = getelementptr inbounds %struct.dwc2_qh, ptr %46, i32 0, i32 21
  %47 = ptrtoint ptr %dw_align_buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dw_align_buf, align 8
  %49 = call ptr @memcpy(ptr %add.ptr, ptr %48, i32 %length.0.i)
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end5.if.end19_crit_edge
  %isoc_split_offset20 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 6
  %50 = ptrtoint ptr %isoc_split_offset20 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %isoc_split_offset20, align 2
  %52 = trunc i32 %length.0.i to i16
  %conv22 = add i16 %51, %52
  store i16 %conv22, ptr %isoc_split_offset20, align 2
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 %add.i
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %56 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i79 = icmp eq i8 %57, 0
  %58 = shl i32 %55, 24
  %retval.0.i80 = select i1 %tobool.not.i79, i32 %58, i32 %55
  %59 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %actual_length, align 4
  %length = getelementptr %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 14, i32 %idxprom, i32 1
  %61 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp.not = icmp uge i32 %60, %62
  %63 = and i32 %retval.0.i80, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp27 = icmp eq i32 %63, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp27
  br i1 %or.cond, label %if.then29, label %if.end19.if.end33_crit_edge

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then29:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 14, i32 %idxprom, i32 3
  %64 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %status, align 4
  %65 = ptrtoint ptr %isoc_frame_index to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %isoc_frame_index, align 4
  %inc = add i16 %66, 1
  store i16 %inc, ptr %isoc_frame_index, align 4
  %complete_split31 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 3
  %67 = ptrtoint ptr %complete_split31 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %complete_split31, align 2
  %68 = ptrtoint ptr %isoc_split_offset20 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %isoc_split_offset20, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end19.if.end33_crit_edge
  %69 = ptrtoint ptr %isoc_frame_index to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %isoc_frame_index, align 4
  %conv35 = zext i16 %70 to i32
  %71 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %urb, align 4
  %packet_count = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %packet_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %conv35)
  %cmp37 = icmp eq i32 %74, %conv35
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef 0) #5
  tail call fastcc void @dwc2_release_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 2)
  br label %cleanup

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_release_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then39, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.else ], [ 1, %if.then39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_update_urb_state(ptr nocapture noundef readonly %hsotg, ptr nocapture noundef readonly %chan, i32 noundef %chnum, ptr nocapture noundef %urb, ptr nocapture noundef readonly %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = shl i32 %chnum, 5
  %add.i = add i32 %mul.i, 1296
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %ep_is_in.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %ep_is_in.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 3)
  %bf.load.i = load i24, ptr %ep_is_in.i, align 1
  %4 = and i24 %bf.load.i, 4096
  %tobool.not.i = icmp eq i24 %4, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  %7 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %7, i32 %2
  %and.i = and i32 %retval.0.i.i, 524287
  %xfer_len.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 6
  %8 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xfer_len.i, align 4
  %sub.i = sub i32 %9, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp4.i = icmp ne i32 %and.i, 0
  %conv.i = zext i1 %cmp4.i to i32
  br label %dwc2_get_actual_xfer_length.exit

if.else.i:                                        ; preds = %entry
  %qh.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %10 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qh.i, align 4
  %do_split.i = getelementptr inbounds %struct.dwc2_qh, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %do_split.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %do_split.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i = icmp eq i8 %13, 0
  br i1 %tobool5.not.i, label %if.else7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %ssplit_out_xfer_count.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 9
  %14 = ptrtoint ptr %ssplit_out_xfer_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssplit_out_xfer_count.i, align 4
  br label %dwc2_get_actual_xfer_length.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %xfer_len8.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 6
  %16 = ptrtoint ptr %xfer_len8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xfer_len8.i, align 4
  br label %dwc2_get_actual_xfer_length.exit

dwc2_get_actual_xfer_length.exit:                 ; preds = %if.else7.i, %if.then6.i, %if.then1.i
  %short_read.0 = phi i32 [ 0, %if.else7.i ], [ 0, %if.then6.i ], [ %conv.i, %if.then1.i ]
  %length.0.i = phi i32 [ %17, %if.else7.i ], [ %15, %if.then6.i ], [ %sub.i, %if.then1.i ]
  %actual_length = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %urb, i32 0, i32 7
  %18 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual_length, align 4
  %add = add i32 %19, %length.0.i
  %length = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %urb, i32 0, i32 6
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %21)
  %cmp = icmp ugt i32 %add, %21
  br i1 %cmp, label %do.body, label %dwc2_get_actual_xfer_length.exit.do.body9_crit_edge

dwc2_get_actual_xfer_length.exit.do.body9_crit_edge: ; preds = %dwc2_get_actual_xfer_length.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body9

do.body:                                          ; preds = %dwc2_get_actual_xfer_length.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state, %do.end)) #5
          to label %if.then5 [label %do.end], !srcloc !414

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state.__UNIQUE_ID_ddebug309, ptr noundef %23, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length, align 4
  %26 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %actual_length, align 4
  %sub = sub i32 %25, %27
  br label %do.body9

do.body9:                                         ; preds = %do.end, %dwc2_get_actual_xfer_length.exit.do.body9_crit_edge
  %xfer_length.0 = phi i32 [ %sub, %do.end ], [ %length.0.i, %dwc2_get_actual_xfer_length.exit.do.body9_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state, %do.end28)) #5
          to label %if.then23 [label %do.end28], !srcloc !414

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hsotg, align 8
  %30 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state.__UNIQUE_ID_ddebug310, ptr noundef %29, ptr noundef nonnull @.str.72, i32 noundef %31, i32 noundef %xfer_length.0) #5
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.body9
  %32 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actual_length, align 4
  %add30 = add i32 %33, %xfer_length.0
  store i32 %add30, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xfer_length.0)
  %tobool31.not = icmp eq i32 %xfer_length.0, 0
  br i1 %tobool31.not, label %do.end28.if.else_crit_edge, label %land.lhs.true

do.end28.if.else_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %do.end28
  %34 = ptrtoint ptr %ep_is_in.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 3)
  %bf.load = load i24, ptr %ep_is_in.i, align 1
  %35 = and i24 %bf.load, 192
  %cmp32 = icmp eq i24 %35, 128
  br i1 %cmp32, label %land.lhs.true33, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true33:                                  ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %urb, i32 0, i32 11
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %and = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %land.lhs.true33.if.else_crit_edge, label %land.lhs.true35

land.lhs.true33.if.else_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true35:                                  ; preds = %land.lhs.true33
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %39)
  %cmp38.not = icmp ult i32 %add30, %39
  br i1 %cmp38.not, label %land.lhs.true35.if.else_crit_edge, label %land.lhs.true39

land.lhs.true35.if.else_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true39:                                  ; preds = %land.lhs.true35
  %max_packet = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 2
  %40 = ptrtoint ptr %max_packet to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load41 = load i16, ptr %max_packet, align 4
  %bf.lshr42 = lshr i16 %bf.load41, 5
  %bf.cast43 = zext i16 %bf.lshr42 to i32
  %rem = urem i32 %39, %bf.cast43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool44.not = icmp eq i32 %rem, 0
  br i1 %tobool44.not, label %land.lhs.true39.if.end52_crit_edge, label %land.lhs.true39.if.else_crit_edge

land.lhs.true39.if.else_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true39.if.end52_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.else:                                          ; preds = %land.lhs.true39.if.else_crit_edge, %land.lhs.true35.if.else_crit_edge, %land.lhs.true33.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %do.end28.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %short_read.0)
  %tobool46.not = icmp eq i32 %short_read.0, 0
  br i1 %tobool46.not, label %lor.lhs.false, label %if.else.if.then50_crit_edge

if.else.if.then50_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

lor.lhs.false:                                    ; preds = %if.else
  %41 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %42)
  %cmp49.not = icmp ult i32 %add30, %42
  br i1 %cmp49.not, label %lor.lhs.false.if.end52_crit_edge, label %lor.lhs.false.if.then50_crit_edge

lor.lhs.false.if.then50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then50:                                        ; preds = %lor.lhs.false.if.then50_crit_edge, %if.else.if.then50_crit_edge
  %status = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %urb, i32 0, i32 8
  %43 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %status, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %lor.lhs.false.if.end52_crit_edge, %land.lhs.true39.if.end52_crit_edge
  %xfer_done.0 = phi i32 [ 1, %if.then50 ], [ 0, %lor.lhs.false.if.end52_crit_edge ], [ 0, %land.lhs.true39.if.end52_crit_edge ]
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 %add.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %47 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i231 = icmp eq i8 %48, 0
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  %retval.0.i232 = select i1 %tobool.not.i231, i32 %49, i32 %46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state, %do.body79)) #5
          to label %if.then69 [label %do.body79], !srcloc !414

if.then69:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hsotg, align 8
  %52 = ptrtoint ptr %ep_is_in.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 3)
  %bf.load71 = load i24, ptr %ep_is_in.i, align 1
  %53 = and i24 %bf.load71, 4096
  %tobool75.not = icmp eq i24 %53, 0
  %cond = select i1 %tobool75.not, ptr @.str.75, ptr @.str.74
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state.__UNIQUE_ID_ddebug311, ptr noundef %51, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.70, ptr noundef nonnull %cond, i32 noundef %chnum) #5
  br label %do.body79

do.body79:                                        ; preds = %if.then69, %if.end52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state, %do.body98)) #5
          to label %if.then93 [label %do.body98], !srcloc !414

if.then93:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hsotg, align 8
  %xfer_len = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 6
  %56 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %xfer_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state.__UNIQUE_ID_ddebug312, ptr noundef %55, ptr noundef nonnull @.str.76, i32 noundef %57) #5
  br label %do.body98

do.body98:                                        ; preds = %if.then93, %do.body79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state, %do.body118)) #5
          to label %if.then112 [label %do.body118], !srcloc !414

if.then112:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hsotg, align 8
  %and114 = and i32 %retval.0.i232, 524287
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state.__UNIQUE_ID_ddebug313, ptr noundef %59, ptr noundef nonnull @.str.77, i32 noundef %and114) #5
  br label %do.body118

do.body118:                                       ; preds = %if.then112, %do.body98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state, %do.body138)) #5
          to label %if.then132 [label %do.body138], !srcloc !414

if.then132:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hsotg, align 8
  %62 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state.__UNIQUE_ID_ddebug314, ptr noundef %61, ptr noundef nonnull @.str.78, i32 noundef %63) #5
  br label %do.body138

do.body138:                                       ; preds = %if.then132, %do.body118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state, %do.body158)) #5
          to label %if.then152 [label %do.body158], !srcloc !414

if.then152:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hsotg, align 8
  %66 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state.__UNIQUE_ID_ddebug315, ptr noundef %65, ptr noundef nonnull @.str.79, i32 noundef %67) #5
  br label %do.body158

do.body158:                                       ; preds = %if.then152, %do.body138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state, %do.end176)) #5
          to label %if.then172 [label %do.end176], !srcloc !414

if.then172:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state.__UNIQUE_ID_ddebug316, ptr noundef %69, ptr noundef nonnull @.str.80, i32 noundef %short_read.0, i32 noundef %xfer_done.0) #5
  br label %do.end176

do.end176:                                        ; preds = %if.then172, %do.body158
  ret i32 %xfer_done.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_complete_non_periodic_xfer(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %halt_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_complete_non_periodic_xfer.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_complete_non_periodic_xfer, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_complete_non_periodic_xfer.__UNIQUE_ID_ddebug327, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.81) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %error_count = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %2 = ptrtoint ptr %error_count to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %error_count, align 4
  %hcint = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 23
  %3 = ptrtoint ptr %hcint to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hcint, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end24_crit_edge, label %do.body6

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.body6:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_complete_non_periodic_xfer.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_complete_non_periodic_xfer, %do.end23)) #5
          to label %if.then20 [label %do.end23], !srcloc !414

if.then20:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_complete_non_periodic_xfer.__UNIQUE_ID_ddebug328, ptr noundef %6, ptr noundef nonnull @.str.82) #5
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body6
  %qh = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %7 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qh, align 4
  %ping_state = getelementptr inbounds %struct.dwc2_qh, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %ping_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %ping_state, align 4
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %do.end.if.end24_crit_edge
  %ep_is_in = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %10 = ptrtoint ptr %ep_is_in to i32
  call void @__asan_loadN_noabort(i32 %10, i32 3)
  %bf.load = load i24, ptr %ep_is_in, align 1
  %11 = and i24 %bf.load, 4096
  %tobool25.not = icmp eq i24 %11, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %halt_status)
  br label %if.end27

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_release_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %halt_status)
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_update_isoc_urb_state(ptr noundef %hsotg, ptr nocapture noundef readonly %chan, i32 noundef %chnum, ptr noundef %qtd, i32 noundef %halt_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %urb1 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %0 = ptrtoint ptr %urb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %isoc_frame_index = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 5
  %2 = ptrtoint ptr %isoc_frame_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %isoc_frame_index, align 4
  %idxprom = zext i16 %3 to i32
  %4 = zext i32 %halt_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %halt_status, label %do.end [
    i32 1, label %sw.bb
    i32 8, label %sw.bb2
    i32 9, label %sw.bb9
    i32 7, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  %status = getelementptr %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 14, i32 %idxprom, i32 3
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status, align 4
  %mul.i = shl i32 %chnum, 5
  %add.i = add i32 %mul.i, 1296
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %ep_is_in.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %9 = ptrtoint ptr %ep_is_in.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 3)
  %bf.load.i = load i24, ptr %ep_is_in.i, align 1
  %10 = and i24 %bf.load.i, 4096
  %tobool.not.i = icmp eq i24 %10, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %11 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %13, i32 %8
  %and.i = and i32 %retval.0.i.i, 524287
  %xfer_len.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 6
  %14 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xfer_len.i, align 4
  %sub.i = sub i32 %15, %and.i
  br label %dwc2_get_actual_xfer_length.exit

if.else.i:                                        ; preds = %sw.bb
  %qh.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %16 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qh.i, align 4
  %do_split.i = getelementptr inbounds %struct.dwc2_qh, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %do_split.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %do_split.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not.i = icmp eq i8 %19, 0
  br i1 %tobool5.not.i, label %if.else7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %ssplit_out_xfer_count.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 9
  %20 = ptrtoint ptr %ssplit_out_xfer_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ssplit_out_xfer_count.i, align 4
  br label %dwc2_get_actual_xfer_length.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %xfer_len8.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 6
  %22 = ptrtoint ptr %xfer_len8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xfer_len8.i, align 4
  br label %dwc2_get_actual_xfer_length.exit

dwc2_get_actual_xfer_length.exit:                 ; preds = %if.else7.i, %if.then6.i, %if.then1.i
  %length.0.i = phi i32 [ %sub.i, %if.then1.i ], [ %21, %if.then6.i ], [ %23, %if.else7.i ]
  %actual_length = getelementptr %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 14, i32 %idxprom, i32 2
  %24 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %length.0.i, ptr %actual_length, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %error_count = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %error_count, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %error_count, align 4
  %ep_is_in = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %27 = ptrtoint ptr %ep_is_in to i32
  call void @__asan_loadN_noabort(i32 %27, i32 3)
  %bf.load = load i24, ptr %ep_is_in, align 1
  %28 = and i24 %bf.load, 4096
  %tobool3.not = icmp eq i24 %28, 0
  %spec.select = select i1 %tobool3.not, i32 -70, i32 -63
  %29 = getelementptr %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 14, i32 %idxprom, i32 3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select, ptr %29, align 4
  %actual_length8 = getelementptr %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 14, i32 %idxprom, i32 2
  %31 = ptrtoint ptr %actual_length8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %actual_length8, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %error_count10 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %error_count10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error_count10, align 4
  %inc11 = add i32 %33, 1
  store i32 %inc11, ptr %error_count10, align 4
  %status12 = getelementptr %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 14, i32 %idxprom, i32 3
  %34 = ptrtoint ptr %status12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -75, ptr %status12, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %error_count14 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 9
  %35 = ptrtoint ptr %error_count14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error_count14, align 4
  %inc15 = add i32 %36, 1
  store i32 %inc15, ptr %error_count14, align 4
  %status16 = getelementptr %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 14, i32 %idxprom, i32 3
  %37 = ptrtoint ptr %status16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -71, ptr %status16, align 4
  %mul.i79 = shl i32 %chnum, 5
  %add.i80 = add i32 %mul.i79, 1296
  %regs.i.i81 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %38 = ptrtoint ptr %regs.i.i81 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i81, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %39, i32 %add.i80
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i82) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i83 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %41 = ptrtoint ptr %needs_byte_swap.i.i83 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %needs_byte_swap.i.i83, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i84 = icmp eq i8 %42, 0
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  %retval.0.i.i85 = select i1 %tobool.not.i.i84, i32 %43, i32 %40
  %and12.i = lshr i32 %retval.0.i.i85, 19
  %shr13.i = and i32 %and12.i, 1023
  %start_pkt_count.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 8
  %44 = ptrtoint ptr %start_pkt_count.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %start_pkt_count.i, align 4
  %conv14.i = zext i16 %45 to i32
  %sub15.i = sub nsw i32 %conv14.i, %shr13.i
  %max_packet.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 2
  %46 = ptrtoint ptr %max_packet.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load16.i = load i16, ptr %max_packet.i, align 4
  %bf.lshr17.i = lshr i16 %bf.load16.i, 5
  %bf.cast18.i = zext i16 %bf.lshr17.i to i32
  %mul19.i = mul nsw i32 %sub15.i, %bf.cast18.i
  %actual_length18 = getelementptr %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 14, i32 %idxprom, i32 2
  %47 = ptrtoint ptr %actual_length18 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul19.i, ptr %actual_length18, align 4
  %qh = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %48 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %qh, align 4
  %do_split = getelementptr inbounds %struct.dwc2_qh, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %do_split to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %do_split, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool19.not = icmp eq i8 %51, 0
  br i1 %tobool19.not, label %sw.bb13.sw.epilog_crit_edge, label %land.lhs.true

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb13
  %ep_type = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %52 = ptrtoint ptr %ep_type to i32
  call void @__asan_loadN_noabort(i32 %52, i32 3)
  %bf.load20 = load i24, ptr %ep_type, align 1
  %53 = and i24 %bf.load20, 4288
  %.not = icmp eq i24 %53, 4160
  br i1 %.not, label %land.lhs.true32, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true32:                                  ; preds = %land.lhs.true
  %host_dma = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 31
  %54 = ptrtoint ptr %host_dma to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %host_dma, align 2, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool33.not = icmp eq i8 %55, 0
  br i1 %tobool33.not, label %land.lhs.true32.sw.epilog_crit_edge, label %if.then35

land.lhs.true32.sw.epilog_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then35:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  %complete_split = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 3
  %56 = ptrtoint ptr %complete_split to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %complete_split, align 2
  %isoc_split_offset = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 6
  %57 = ptrtoint ptr %isoc_split_offset to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %isoc_split_offset, align 2
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.88, i32 noundef %halt_status) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then35, %land.lhs.true32.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %sw.bb9, %sw.bb2, %dwc2_get_actual_xfer_length.exit
  %60 = ptrtoint ptr %isoc_frame_index to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %isoc_frame_index, align 4
  %inc38 = add i16 %61, 1
  store i16 %inc38, ptr %isoc_frame_index, align 4
  %conv39 = zext i16 %inc38 to i32
  %packet_count = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 10
  %62 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %packet_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %conv39)
  %cmp40 = icmp eq i32 %63, %conv39
  br i1 %cmp40, label %if.then42, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then42:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 2, %if.then42 ], [ 1, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %halt_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_halt_channel.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_halt_channel, %if.end6)) #5
          to label %if.then5 [label %if.end6], !srcloc !414

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_halt_channel.__UNIQUE_ID_ddebug322, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.83) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry
  %host_dma = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 31
  %2 = ptrtoint ptr %host_dma to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %host_dma, align 2, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %if.end30, label %if.then8

if.then8:                                         ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_halt_channel.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_halt_channel, %if.end29)) #5
          to label %if.then25 [label %if.end29], !srcloc !414

if.then25:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_halt_channel.__UNIQUE_ID_ddebug323, ptr noundef %5, ptr noundef nonnull @.str.84) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.then8
  tail call fastcc void @dwc2_release_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %halt_status)
  br label %if.end100

if.end30:                                         ; preds = %if.end6
  tail call void @dwc2_hc_halt(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %halt_status) #5
  %halt_on_queue = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 12
  %6 = ptrtoint ptr %halt_on_queue to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %halt_on_queue, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool31.not = icmp eq i8 %7, 0
  br i1 %tobool31.not, label %if.end30.if.end100_crit_edge, label %if.then32

if.end30.if.end100_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then32:                                        ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_halt_channel.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_halt_channel, %do.end50)) #5
          to label %if.then47 [label %do.end50], !srcloc !414

if.then47:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_halt_channel.__UNIQUE_ID_ddebug324, ptr noundef %9, ptr noundef nonnull @.str.85) #5
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %if.then32
  %ep_type = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %10 = ptrtoint ptr %ep_type to i32
  call void @__asan_loadN_noabort(i32 %10, i32 3)
  %bf.load = load i24, ptr %ep_type, align 1
  %bf.lshr = lshr i24 %bf.load, 6
  %trunc = trunc i24 %bf.lshr to i2
  %11 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.201)
  switch i2 %trunc, label %do.body78 [
    i2 0, label %do.end50.do.body58_crit_edge
    i2 -2, label %do.end50.do.body58_crit_edge160
  ]

do.end50.do.body58_crit_edge160:                  ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body58

do.end50.do.body58_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body58

do.body58:                                        ; preds = %do.end50.do.body58_crit_edge, %do.end50.do.body58_crit_edge160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_halt_channel.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_halt_channel, %do.end76)) #5
          to label %if.then72 [label %do.end76], !srcloc !414

if.then72:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_halt_channel.__UNIQUE_ID_ddebug325, ptr noundef %13, ptr noundef nonnull @.str.86) #5
  br label %do.end76

do.end76:                                         ; preds = %if.then72, %do.body58
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %17 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  %retval.0.i136 = select i1 %tobool.not.i, i32 %19, i32 %16
  %or = or i32 %retval.0.i136, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %or) #5, !srcloc !415
  br label %if.end100

do.body1.i:                                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %24, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %22) #5, !srcloc !415
  br label %if.end100

do.body78:                                        ; preds = %do.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_halt_channel.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_halt_channel, %do.end96)) #5
          to label %if.then92 [label %do.end96], !srcloc !414

if.then92:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_halt_channel.__UNIQUE_ID_ddebug326, ptr noundef %26, ptr noundef nonnull @.str.87) #5
  br label %do.end96

do.end96:                                         ; preds = %if.then92, %do.body78
  %qh = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %27 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qh, align 4
  %qh_list_entry = getelementptr inbounds %struct.dwc2_qh, ptr %28, i32 0, i32 25
  %periodic_sched_assigned = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qh_list_entry) #5
  br i1 %call.i.i, label %if.end.i.i, label %do.end96.__list_del_entry.exit.i_crit_edge

do.end96.__list_del_entry.exit.i_crit_edge:       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %28, i32 0, i32 25, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qh_list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %do.end96.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 42, i32 1
  %35 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %qh_list_entry, ptr noundef %36, ptr noundef %periodic_sched_assigned) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %qh_list_entry, ptr %prev.i2.i, align 4
  %38 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %periodic_sched_assigned, ptr %qh_list_entry, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %28, i32 0, i32 25, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %qh_list_entry, ptr %36, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %regs.i141 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %41 = ptrtoint ptr %regs.i141 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i141, align 4
  %add.ptr.i142 = getelementptr i8, ptr %42, i32 24
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i143 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %44 = ptrtoint ptr %needs_byte_swap.i143 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %needs_byte_swap.i143, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i144 = icmp eq i8 %45, 0
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  %retval.0.i145 = select i1 %tobool.not.i144, i32 %46, i32 %43
  %or98 = or i32 %retval.0.i145, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i144, label %do.body1.i153, label %do.body.i150

do.body.i150:                                     ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %regs.i141 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i141, align 4
  %add.ptr.i149 = getelementptr i8, ptr %48, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %or98) #5, !srcloc !415
  br label %if.end100

do.body1.i153:                                    ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %or98) #5
  %50 = ptrtoint ptr %regs.i141 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i141, align 4
  %add.ptr4.i152 = getelementptr i8, ptr %51, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i152, i32 %49) #5, !srcloc !415
  br label %if.end100

if.end100:                                        ; preds = %do.body1.i153, %do.body.i150, %do.body1.i, %do.body.i, %if.end30.if.end100_crit_edge, %if.end29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hc_halt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_hc_chhltd_intr_dma(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_chhltd_intr_dma, %if.end6)) #5
          to label %if.then5 [label %if.end6], !srcloc !414

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug359, ptr noundef %1, ptr noundef nonnull @.str.93, i32 noundef %chnum) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry
  %snpsid = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %snpsid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snpsid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1330915097, i32 %3)
  %cmp = icmp ugt i32 %3, 1330915097
  br i1 %cmp, label %if.then7, label %if.end6.if.end28_crit_edge

if.end6.if.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then7:                                         ; preds = %if.end6
  %speed = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_loadN_noabort(i32 %4, i32 3)
  %bf.load = load i24, ptr %speed, align 1
  %5 = and i24 %bf.load, 7936
  %6 = icmp eq i24 %5, 768
  br i1 %6, label %land.lhs.true14, label %if.then7.if.end28_crit_edge

if.then7.if.end28_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

land.lhs.true14:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %7 = and i24 %bf.load, 64
  %switch.selectcmp = icmp ne i24 %7, 0
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true14, %if.then7.if.end28_crit_edge, %if.end6.if.end28_crit_edge
  %tobool152.not = phi i1 [ true, %if.then7.if.end28_crit_edge ], [ true, %if.end6.if.end28_crit_edge ], [ %switch.selectcmp, %land.lhs.true14 ]
  %halt_status = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 22
  %8 = ptrtoint ptr %halt_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %halt_status, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %9, label %if.end28.if.end43_crit_edge [
    i32 13, label %if.end28.if.then35_crit_edge
    i32 11, label %land.lhs.true33
  ]

if.end28.if.then35_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

land.lhs.true33:                                  ; preds = %if.end28
  %dma_desc_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %11 = ptrtoint ptr %dma_desc_enable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dma_desc_enable, align 1, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool34.not = icmp eq i8 %12, 0
  br i1 %tobool34.not, label %land.lhs.true33.if.then35_crit_edge, label %land.lhs.true33.if.end43_crit_edge

land.lhs.true33.if.end43_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

land.lhs.true33.if.then35_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

if.then35:                                        ; preds = %land.lhs.true33.if.then35_crit_edge, %if.end28.if.then35_crit_edge
  %dma_desc_enable37 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %13 = ptrtoint ptr %dma_desc_enable37 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dma_desc_enable37, align 1, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool38.not = icmp eq i8 %14, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dwc2_hcd_complete_xfer_ddma(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, i32 noundef %9) #5
  br label %cleanup

if.else:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_release_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %9)
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true33.if.end43_crit_edge, %if.end28.if.end43_crit_edge
  %mul = shl i32 %chnum, 5
  %add = add i32 %mul, 1292
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %18 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %20 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  %retval.0.i370 = select i1 %tobool.not.i, i32 %20, i32 %17
  %hcint = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 23
  %21 = ptrtoint ptr %hcint to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hcint, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %if.else62, label %if.then46

if.then46:                                        ; preds = %if.end43
  %ep_type47 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %23 = ptrtoint ptr %ep_type47 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 3)
  %bf.load48 = load i24, ptr %ep_type47, align 1
  %24 = and i24 %bf.load48, 4288
  %25 = icmp eq i24 %24, 64
  br i1 %25, label %if.then60, label %if.then46.if.end61_crit_edge

if.then46.if.end61_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then60:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_ack_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.then46.if.end61_crit_edge
  tail call fastcc void @dwc2_hc_xfercomp_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  br label %cleanup

if.else62:                                        ; preds = %if.end43
  %and64 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.else67, label %if.then66

if.then66:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_stall_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  br label %cleanup

if.else67:                                        ; preds = %if.else62
  %and69 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else67.if.else123_crit_edge, label %land.lhs.true71

if.else67.if.else123_crit_edge:                   ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else123

land.lhs.true71:                                  ; preds = %if.else67
  %dma_desc_enable73 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %26 = ptrtoint ptr %dma_desc_enable73 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dma_desc_enable73, align 1, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool74.not = icmp eq i8 %27, 0
  br i1 %tobool74.not, label %if.then75, label %land.lhs.true71.if.else123_crit_edge

land.lhs.true71.if.else123_crit_edge:             ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else123

if.then75:                                        ; preds = %land.lhs.true71
  br i1 %tobool152.not, label %if.then75.if.end122_crit_edge, label %if.then77

if.then75.if.end122_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

if.then77:                                        ; preds = %if.then75
  %and79 = and i32 %22, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body102, label %do.body82

do.body82:                                        ; preds = %if.then77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_chhltd_intr_dma, %do.end100)) #5
          to label %if.then96 [label %do.end100], !srcloc !414

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug360, ptr noundef %29, ptr noundef nonnull @.str.94) #5
  br label %do.end100

do.end100:                                        ; preds = %if.then96, %do.body82
  %error_count = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %30 = ptrtoint ptr %error_count to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %error_count, align 4
  br label %if.end122

do.body102:                                       ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_chhltd_intr_dma, %if.end122)) #5
          to label %if.then116 [label %if.end122], !srcloc !414

if.then116:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug361, ptr noundef %32, ptr noundef nonnull @.str.95) #5
  br label %if.end122

if.end122:                                        ; preds = %if.then116, %do.body102, %do.end100, %if.then75.if.end122_crit_edge
  tail call fastcc void @dwc2_hc_xacterr_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  br label %cleanup

if.else123:                                       ; preds = %land.lhs.true71.if.else123_crit_edge, %if.else67.if.else123_crit_edge
  %and125 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.else123.if.else132_crit_edge, label %land.lhs.true127

if.else123.if.else132_crit_edge:                  ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else132

land.lhs.true127:                                 ; preds = %if.else123
  %dma_desc_enable129 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %33 = ptrtoint ptr %dma_desc_enable129 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dma_desc_enable129, align 1, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool130.not = icmp eq i8 %34, 0
  br i1 %tobool130.not, label %land.lhs.true127.if.else132_crit_edge, label %if.then131

land.lhs.true127.if.else132_crit_edge:            ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else132

if.then131:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_xacterr_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  br label %cleanup

if.else132:                                       ; preds = %land.lhs.true127.if.else132_crit_edge, %if.else123.if.else132_crit_edge
  %and134 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.else132.if.else141_crit_edge, label %land.lhs.true136

if.else132.if.else141_crit_edge:                  ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else141

land.lhs.true136:                                 ; preds = %if.else132
  %dma_desc_enable138 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %35 = ptrtoint ptr %dma_desc_enable138 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dma_desc_enable138, align 1, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool139.not = icmp eq i8 %36, 0
  br i1 %tobool139.not, label %land.lhs.true136.if.else141_crit_edge, label %if.then140

land.lhs.true136.if.else141_crit_edge:            ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else141

if.then140:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_ahberr_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  br label %cleanup

if.else141:                                       ; preds = %land.lhs.true136.if.else141_crit_edge, %if.else132.if.else141_crit_edge
  %and143 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.else146, label %if.then145

if.then145:                                       ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_babble_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  br label %cleanup

if.else146:                                       ; preds = %if.else141
  %and148 = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.else151, label %if.then150

if.then150:                                       ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_frmovrun_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  br label %cleanup

if.else151:                                       ; preds = %if.else146
  br i1 %tobool152.not, label %if.then153, label %do.end226

if.then153:                                       ; preds = %if.else151
  %and155 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.else158, label %if.then157

if.then157:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_nyet_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  br label %cleanup

if.else158:                                       ; preds = %if.then153
  %and160 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp ne i32 %and160, 0
  %and163 = and i32 %retval.0.i370, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  %or.cond359 = select i1 %tobool161.not, i1 %tobool164.not, i1 false
  br i1 %or.cond359, label %if.then165, label %if.else166

if.then165:                                       ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_nak_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  br label %cleanup

if.else166:                                       ; preds = %if.else158
  %and168 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp ne i32 %and168, 0
  %and171 = and i32 %retval.0.i370, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  %or.cond360 = select i1 %tobool169.not, i1 %tobool172.not, i1 false
  br i1 %or.cond360, label %if.then173, label %if.else174

if.then173:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dwc2_hc_ack_intr(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  br label %cleanup

if.else174:                                       ; preds = %if.else166
  %ep_type175 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %37 = ptrtoint ptr %ep_type175 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 3)
  %bf.load176 = load i24, ptr %ep_type175, align 1
  %bf.lshr177 = lshr i24 %bf.load176, 6
  %trunc = trunc i24 %bf.lshr177 to i2
  %38 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.203)
  switch i2 %trunc, label %do.end211 [
    i2 -1, label %if.else174.do.body189_crit_edge
    i2 1, label %if.else174.do.body189_crit_edge380
  ]

if.else174.do.body189_crit_edge380:               ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body189

if.else174.do.body189_crit_edge:                  ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body189

do.body189:                                       ; preds = %if.else174.do.body189_crit_edge, %if.else174.do.body189_crit_edge380
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hc_chhltd_intr_dma, %do.end207)) #5
          to label %if.then203 [label %do.end207], !srcloc !414

if.then203:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug362, ptr noundef %40, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.92, i32 noundef %chnum) #5
  br label %do.end207

do.end207:                                        ; preds = %if.then203, %do.body189
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 12)
  br label %cleanup

do.end211:                                        ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.92, i32 noundef %chnum) #8
  %43 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hsotg, align 8
  %45 = ptrtoint ptr %hcint to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hcint, align 4
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %add.ptr.i372 = getelementptr i8, ptr %48, i32 20
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i372) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %50 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i374 = icmp eq i8 %51, 0
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #5
  %retval.0.i375 = select i1 %tobool.not.i374, i32 %52, i32 %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.99, i32 noundef %46, i32 noundef %retval.0.i375) #8
  br label %error

do.end226:                                        ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.102, i32 noundef %22) #8
  br label %error

error:                                            ; preds = %do.end226, %do.end211
  %error_count229 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 10
  %55 = ptrtoint ptr %error_count229 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %error_count229, align 4
  %inc = add i8 %56, 1
  store i8 %inc, ptr %error_count229, align 4
  %urb = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %57 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %urb, align 4
  tail call fastcc void @dwc2_update_urb_state_abn(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %58, ptr noundef %qtd, i32 noundef 7)
  %59 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %urb, align 4
  %actual_length = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %actual_length, align 4
  %length = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %60, i32 0, i32 6
  %63 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp232.not = icmp ult i32 %62, %64
  br i1 %cmp232.not, label %error.if.end235_crit_edge, label %if.then233

error.if.end235_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end235

if.then233:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %error_count229 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 3, ptr %error_count229, align 4
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %error.if.end235_crit_edge
  tail call void @dwc2_hcd_save_data_toggle(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd)
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef 7)
  br label %cleanup

cleanup:                                          ; preds = %if.end235, %do.end207, %if.then173, %if.then165, %if.then157, %if.then150, %if.then145, %if.then140, %if.then131, %if.end122, %if.then66, %if.end61, %if.else, %if.then39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dwc2_halt_status_ok(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %halt_status = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 22
  %0 = ptrtoint ptr %halt_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %halt_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %mul = shl i32 %chnum, 5
  %add = add i32 %mul, 1280
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %retval.0.i128 = select i1 %tobool.not.i, i32 %7, i32 %4
  br i1 %cmp, label %if.then, label %if.end79

if.then:                                          ; preds = %entry
  %add2 = add i32 %mul, 1296
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %9, i32 %add2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %11 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i132 = icmp eq i8 %12, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %retval.0.i133 = select i1 %tobool.not.i132, i32 %13, i32 %10
  %add5 = add i32 %mul, 1292
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %15, i32 %add5
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %17 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i137 = icmp eq i8 %18, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  %retval.0.i138 = select i1 %tobool.not.i137, i32 %19, i32 %16
  %add8 = add i32 %mul, 1284
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %21, i32 %add8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %23 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %needs_byte_swap.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i142 = icmp eq i8 %24, 0
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %retval.0.i143 = select i1 %tobool.not.i142, i32 %25, i32 %22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_halt_status_ok.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_halt_status_ok, %do.body15)) #5
          to label %if.then14 [label %do.body15], !srcloc !414

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_halt_status_ok.__UNIQUE_ID_ddebug355, ptr noundef %27, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109) #5
  br label %do.body15

do.body15:                                        ; preds = %if.then14, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_halt_status_ok.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_halt_status_ok, %do.body34)) #5
          to label %if.then29 [label %do.body34], !srcloc !414

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_halt_status_ok.__UNIQUE_ID_ddebug356, ptr noundef %29, ptr noundef nonnull @.str.111, i32 noundef %chnum, i32 noundef %retval.0.i128, i32 noundef %retval.0.i133) #5
  br label %do.body34

do.body34:                                        ; preds = %if.then29, %do.body15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_halt_status_ok.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_halt_status_ok, %do.end52)) #5
          to label %if.then48 [label %do.end52], !srcloc !414

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hsotg, align 8
  %hcint = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 23
  %32 = ptrtoint ptr %hcint to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hcint, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_halt_status_ok.__UNIQUE_ID_ddebug357, ptr noundef %31, ptr noundef nonnull @.str.112, i32 noundef %33, i32 noundef %retval.0.i138, i32 noundef %retval.0.i143) #5
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body34
  %tobool53.not = icmp eq ptr %qtd, null
  br i1 %tobool53.not, label %do.end52.do.end77_crit_edge, label %do.body55

do.end52.do.end77_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end77

do.body55:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_halt_status_ok.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_halt_status_ok, %do.end77)) #5
          to label %if.then69 [label %do.end77], !srcloc !414

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hsotg, align 8
  %complete_split = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 3
  %36 = ptrtoint ptr %complete_split to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %complete_split, align 2
  %conv = zext i8 %37 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_halt_status_ok.__UNIQUE_ID_ddebug358, ptr noundef %35, ptr noundef nonnull @.str.113, i32 noundef %conv) #5
  br label %do.end77

do.end77:                                         ; preds = %if.then69, %do.body55, %do.end52.do.end77_crit_edge
  %38 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.109, i32 noundef %chnum) #8
  br label %cleanup

if.end79:                                         ; preds = %entry
  %and = and i32 %retval.0.i128, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool83.not = icmp eq i32 %and, 0
  br i1 %tobool83.not, label %if.end79.cleanup_crit_edge, label %do.end87

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end87:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.109, i32 noundef %retval.0.i128) #8
  %halt_pending = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 13
  %42 = ptrtoint ptr %halt_pending to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %halt_pending, align 2
  %43 = ptrtoint ptr %halt_status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %halt_status, align 4
  tail call fastcc void @dwc2_halt_channel(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, i32 noundef %44)
  br label %cleanup

cleanup:                                          ; preds = %do.end87, %if.end79.cleanup_crit_edge, %do.end77
  %retval.0 = phi i1 [ false, %do.end77 ], [ false, %do.end87 ], [ true, %if.end79.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_update_urb_state_abn(ptr nocapture noundef readonly %hsotg, ptr nocapture noundef readonly %chan, i32 noundef %chnum, ptr nocapture noundef %urb, ptr nocapture noundef readonly %qtd, i32 noundef %halt_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = shl i32 %chnum, 5
  %add.i = add i32 %mul.i, 1296
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %5, i32 %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %halt_status)
  %cmp.i = icmp eq i32 %halt_status, 1
  br i1 %cmp.i, label %if.then.i, label %if.else11.i

if.then.i:                                        ; preds = %entry
  %ep_is_in.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %ep_is_in.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 3)
  %bf.load.i = load i24, ptr %ep_is_in.i, align 1
  %7 = and i24 %bf.load.i, 4096
  %tobool.not.i = icmp eq i24 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %retval.0.i.i, 524287
  %xfer_len.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 6
  %8 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xfer_len.i, align 4
  %sub.i = sub i32 %9, %and.i
  br label %dwc2_get_actual_xfer_length.exit

if.else.i:                                        ; preds = %if.then.i
  %qh.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %10 = ptrtoint ptr %qh.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qh.i, align 4
  %do_split.i = getelementptr inbounds %struct.dwc2_qh, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %do_split.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %do_split.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i = icmp eq i8 %13, 0
  br i1 %tobool5.not.i, label %if.else7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %ssplit_out_xfer_count.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 9
  %14 = ptrtoint ptr %ssplit_out_xfer_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssplit_out_xfer_count.i, align 4
  br label %dwc2_get_actual_xfer_length.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %xfer_len8.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 6
  %16 = ptrtoint ptr %xfer_len8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xfer_len8.i, align 4
  br label %dwc2_get_actual_xfer_length.exit

if.else11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and12.i = lshr i32 %retval.0.i.i, 19
  %shr13.i = and i32 %and12.i, 1023
  %start_pkt_count.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 8
  %18 = ptrtoint ptr %start_pkt_count.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %start_pkt_count.i, align 4
  %conv14.i = zext i16 %19 to i32
  %sub15.i = sub nsw i32 %conv14.i, %shr13.i
  %max_packet.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 2
  %20 = ptrtoint ptr %max_packet.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load16.i = load i16, ptr %max_packet.i, align 4
  %bf.lshr17.i = lshr i16 %bf.load16.i, 5
  %bf.cast18.i = zext i16 %bf.lshr17.i to i32
  %mul19.i = mul nsw i32 %sub15.i, %bf.cast18.i
  br label %dwc2_get_actual_xfer_length.exit

dwc2_get_actual_xfer_length.exit:                 ; preds = %if.else11.i, %if.else7.i, %if.then6.i, %if.then1.i
  %length.0.i = phi i32 [ %sub.i, %if.then1.i ], [ %15, %if.then6.i ], [ %17, %if.else7.i ], [ %mul19.i, %if.else11.i ]
  %actual_length = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %urb, i32 0, i32 7
  %21 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual_length, align 4
  %add = add i32 %22, %length.0.i
  %length = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %urb, i32 0, i32 6
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %24)
  %cmp = icmp ugt i32 %add, %24
  br i1 %cmp, label %do.end, label %dwc2_get_actual_xfer_length.exit.if.end_crit_edge

dwc2_get_actual_xfer_length.exit.if.end_crit_edge: ; preds = %dwc2_get_actual_xfer_length.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %dwc2_get_actual_xfer_length.exit
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.104) #8
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length, align 4
  %29 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %actual_length, align 4
  %sub = sub i32 %28, %30
  br label %if.end

if.end:                                           ; preds = %do.end, %dwc2_get_actual_xfer_length.exit.if.end_crit_edge
  %xfer_length.0 = phi i32 [ %sub, %do.end ], [ %length.0.i, %dwc2_get_actual_xfer_length.exit.if.end_crit_edge ]
  %31 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual_length, align 4
  %add4 = add i32 %32, %xfer_length.0
  store i32 %add4, ptr %actual_length, align 4
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %add.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  %36 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i177 = icmp eq i8 %37, 0
  %38 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  %retval.0.i178 = select i1 %tobool.not.i177, i32 %38, i32 %35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state_abn, %do.body18)) #5
          to label %if.then12 [label %do.body18], !srcloc !414

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hsotg, align 8
  %ep_is_in = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %41 = ptrtoint ptr %ep_is_in to i32
  call void @__asan_loadN_noabort(i32 %41, i32 3)
  %bf.load = load i24, ptr %ep_is_in, align 1
  %42 = and i24 %bf.load, 4096
  %tobool14.not = icmp eq i24 %42, 0
  %cond = select i1 %tobool14.not, ptr @.str.75, ptr @.str.74
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug338, ptr noundef %40, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.104, ptr noundef nonnull %cond, i32 noundef %chnum) #5
  br label %do.body18

do.body18:                                        ; preds = %if.then12, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state_abn, %do.body37)) #5
          to label %if.then32 [label %do.body37], !srcloc !414

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hsotg, align 8
  %start_pkt_count = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 8
  %45 = ptrtoint ptr %start_pkt_count to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %start_pkt_count, align 4
  %conv = zext i16 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug339, ptr noundef %44, ptr noundef nonnull @.str.105, i32 noundef %conv) #5
  br label %do.body37

do.body37:                                        ; preds = %if.then32, %do.body18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state_abn, %do.body56)) #5
          to label %if.then51 [label %do.body56], !srcloc !414

if.then51:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hsotg, align 8
  %and = lshr i32 %retval.0.i178, 19
  %shr = and i32 %and, 1023
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug340, ptr noundef %48, ptr noundef nonnull @.str.106, i32 noundef %shr) #5
  br label %do.body56

do.body56:                                        ; preds = %if.then51, %do.body37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state_abn, %do.body78)) #5
          to label %if.then70 [label %do.body78], !srcloc !414

if.then70:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hsotg, align 8
  %max_packet = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 2
  %51 = ptrtoint ptr %max_packet to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load72 = load i16, ptr %max_packet, align 4
  %bf.lshr73 = lshr i16 %bf.load72, 5
  %bf.cast74 = zext i16 %bf.lshr73 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug341, ptr noundef %50, ptr noundef nonnull @.str.107, i32 noundef %bf.cast74) #5
  br label %do.body78

do.body78:                                        ; preds = %if.then70, %do.body56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state_abn, %do.body97)) #5
          to label %if.then92 [label %do.body97], !srcloc !414

if.then92:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug342, ptr noundef %53, ptr noundef nonnull @.str.108, i32 noundef %xfer_length.0) #5
  br label %do.body97

do.body97:                                        ; preds = %if.then92, %do.body78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state_abn, %do.body117)) #5
          to label %if.then111 [label %do.body117], !srcloc !414

if.then111:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hsotg, align 8
  %56 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug343, ptr noundef %55, ptr noundef nonnull @.str.79, i32 noundef %57) #5
  br label %do.body117

do.body117:                                       ; preds = %if.then111, %do.body97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_urb_state_abn, %do.end136)) #5
          to label %if.then131 [label %do.end136], !srcloc !414

if.then131:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hsotg, align 8
  %60 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug344, ptr noundef %59, ptr noundef nonnull @.str.78, i32 noundef %61) #5
  br label %do.end136

do.end136:                                        ; preds = %if.then131, %do.body117
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_clear_tt_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 179)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 179)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !85, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !100, !102, !103, !105, !106, !108, !109, !110, !112, !113, !115, !117, !118, !119, !121, !122, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !262, !264, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !311, !313, !315, !317, !319, !320, !321, !323, !325, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !400}
!llvm.module.flags = !{!401, !402, !403, !404, !405, !406, !407, !408}
!llvm.ident = !{!409}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 548, i32 7}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 557, i32 7}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 2239, i32 3}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @dwc2_handle_hcd_intr._entry, !6, !"_entry", i1 false, i1 false}
!11 = !{ptr @dwc2_handle_hcd_intr._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 2265, i32 4}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dwc2_handle_hcd_intr.__UNIQUE_ID_ddebug370, !13, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 2283, i32 4}
!18 = !{ptr @dwc2_handle_hcd_intr.__UNIQUE_ID_ddebug371, !17, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 2285, i32 4}
!21 = !{ptr @dwc2_handle_hcd_intr.__UNIQUE_ID_ddebug372, !20, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 84, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dwc2_track_missed_sofs._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @dwc2_track_missed_sofs._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 85, i32 3}
!30 = !{ptr @dwc2_track_missed_sofs._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dwc2_track_missed_sofs._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 87, i32 4}
!34 = !{ptr @dwc2_track_missed_sofs._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dwc2_track_missed_sofs._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 192, i32 3}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug295, !37, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 198, i32 3}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @dwc2_rx_fifo_level_intr._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @dwc2_rx_fifo_level_intr._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 208, i32 3}
!47 = !{ptr @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug296, !46, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 209, i32 3}
!50 = !{ptr @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug297, !49, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 210, i32 3}
!53 = !{ptr @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug298, !52, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 212, i32 3}
!56 = !{ptr @dwc2_rx_fifo_level_intr.__UNIQUE_ID_ddebug299, !55, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 232, i32 3}
!59 = !{ptr @dwc2_rx_fifo_level_intr._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @dwc2_rx_fifo_level_intr._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 246, i32 2}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @dwc2_np_tx_fifo_empty_intr.__UNIQUE_ID_ddebug300, !62, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 360, i32 2}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @dwc2_port_intr.__UNIQUE_ID_ddebug305, !66, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 379, i32 3}
!71 = !{ptr @dwc2_port_intr.__UNIQUE_ID_ddebug306, !70, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 396, i32 3}
!74 = !{ptr @dwc2_port_intr.__UNIQUE_ID_ddebug307, !73, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 420, i32 3}
!77 = !{ptr @dwc2_port_intr.__UNIQUE_ID_ddebug308, !76, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 274, i32 2}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @dwc2_hprt0_enable.__UNIQUE_ID_ddebug302, !79, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 309, i32 4}
!84 = !{ptr @dwc2_hprt0_enable.__UNIQUE_ID_ddebug303, !83, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 320, i32 4}
!87 = !{ptr @dwc2_hprt0_enable.__UNIQUE_ID_ddebug304, !86, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 2205, i32 3}
!90 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @dwc2_hc_intr.__UNIQUE_ID_ddebug368, !89, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 2207, i32 3}
!94 = !{ptr @dwc2_hc_intr.__UNIQUE_ID_ddebug369, !93, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 2055, i32 3}
!97 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @dwc2_hc_n_intr._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @dwc2_hc_n_intr._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 2061, i32 3}
!102 = !{ptr @dwc2_hc_n_intr.__UNIQUE_ID_ddebug364, !101, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 2063, i32 3}
!105 = !{ptr @dwc2_hc_n_intr.__UNIQUE_ID_ddebug365, !104, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 2075, i32 3}
!108 = !{ptr @dwc2_hc_n_intr._entry.49, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @dwc2_hc_n_intr._entry_ptr.51, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 2107, i32 3}
!112 = !{ptr @dwc2_hc_n_intr.__UNIQUE_ID_ddebug366, !111, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!113 = !{ptr @dwc2_hc_n_intr.__UNIQUE_ID_ddebug367, !114, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!114 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 2109, i32 3}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 714, i32 3}
!117 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @dwc2_release_channel.__UNIQUE_ID_ddebug319, !116, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 728, i32 4}
!121 = !{ptr @dwc2_release_channel.__UNIQUE_ID_ddebug320, !120, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 742, i32 3}
!124 = !{ptr @dwc2_release_channel.__UNIQUE_ID_ddebug321, !123, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 665, i32 3}
!127 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @dwc2_deactivate_qh.__UNIQUE_ID_ddebug317, !126, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 669, i32 3}
!131 = !{ptr @dwc2_deactivate_qh.__UNIQUE_ID_ddebug318, !130, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 998, i32 3}
!134 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug330, !133, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1037, i32 4}
!138 = !{ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug331, !137, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1046, i32 5}
!141 = !{ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug332, !140, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1055, i32 4}
!144 = !{ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug333, !143, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1067, i32 3}
!147 = !{ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug334, !146, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1082, i32 3}
!150 = !{ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug335, !149, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1103, i32 4}
!153 = !{ptr @dwc2_hc_xfercomp_intr.__UNIQUE_ID_ddebug336, !152, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 953, i32 3}
!156 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @dwc2_xfercomp_isoc_split_in.__UNIQUE_ID_ddebug329, !155, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 503, i32 3}
!160 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug309, !159, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 507, i32 2}
!164 = !{ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug310, !163, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 522, i32 2}
!167 = !{ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug311, !166, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!168 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 524, i32 2}
!172 = !{ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug312, !171, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 525, i32 2}
!175 = !{ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug313, !174, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 527, i32 2}
!178 = !{ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug314, !177, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 528, i32 2}
!181 = !{ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug315, !180, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 529, i32 2}
!184 = !{ptr @dwc2_update_urb_state.__UNIQUE_ID_ddebug316, !183, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 868, i32 2}
!187 = !{ptr @dwc2_complete_non_periodic_xfer.__UNIQUE_ID_ddebug327, !186, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!188 = !{ptr @.str.82, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 878, i32 3}
!190 = !{ptr @dwc2_complete_non_periodic_xfer.__UNIQUE_ID_ddebug328, !189, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!191 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 808, i32 3}
!193 = !{ptr @dwc2_halt_channel.__UNIQUE_ID_ddebug322, !192, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 812, i32 4}
!196 = !{ptr @dwc2_halt_channel.__UNIQUE_ID_ddebug323, !195, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 823, i32 3}
!199 = !{ptr @dwc2_halt_channel.__UNIQUE_ID_ddebug324, !198, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!200 = !{ptr @.str.86, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 826, i32 4}
!202 = !{ptr @dwc2_halt_channel.__UNIQUE_ID_ddebug325, !201, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!203 = !{ptr @.str.87, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 836, i32 4}
!205 = !{ptr @dwc2_halt_channel.__UNIQUE_ID_ddebug326, !204, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!206 = !{ptr @.str.88, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 632, i32 3}
!208 = !{ptr @.str.89, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @dwc2_update_isoc_urb_state._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @dwc2_update_isoc_urb_state._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 2013, i32 3}
!213 = !{ptr @.str.91, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @dwc2_hc_chhltd_intr.__UNIQUE_ID_ddebug363, !212, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!215 = !{ptr @.str.92, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1838, i32 3}
!217 = !{ptr @.str.93, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug359, !216, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!219 = !{ptr @.str.94, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1892, i32 5}
!221 = !{ptr @dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug360, !220, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!222 = !{ptr @.str.95, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1896, i32 5}
!224 = !{ptr @dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug361, !223, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!225 = !{ptr @.str.96, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1955, i32 5}
!227 = !{ptr @dwc2_hc_chhltd_intr_dma.__UNIQUE_ID_ddebug362, !226, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!228 = !{ptr @.str.97, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1961, i32 5}
!230 = !{ptr @dwc2_hc_chhltd_intr_dma._entry, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @dwc2_hc_chhltd_intr_dma._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.99, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1964, i32 5}
!234 = !{ptr @dwc2_hc_chhltd_intr_dma._entry.98, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @dwc2_hc_chhltd_intr_dma._entry_ptr.100, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.102, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1972, i32 3}
!238 = !{ptr @dwc2_hc_chhltd_intr_dma._entry.101, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @dwc2_hc_chhltd_intr_dma._entry_ptr.103, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.104, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1182, i32 3}
!242 = !{ptr @dwc2_update_urb_state_abn._entry, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @dwc2_update_urb_state_abn._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug338, !245, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!245 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1189, i32 2}
!246 = !{ptr @.str.105, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1191, i32 2}
!248 = !{ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug339, !247, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!249 = !{ptr @.str.106, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1193, i32 2}
!251 = !{ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug340, !250, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!252 = !{ptr @.str.107, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1195, i32 2}
!254 = !{ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug341, !253, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!255 = !{ptr @.str.108, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1196, i32 2}
!257 = !{ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug342, !256, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!258 = !{ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug343, !259, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!259 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1198, i32 2}
!260 = !{ptr @dwc2_update_urb_state_abn.__UNIQUE_ID_ddebug344, !261, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!261 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1200, i32 2}
!262 = !{ptr @.str.109, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1789, i32 3}
!264 = !{ptr @.str.110, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @dwc2_halt_status_ok.__UNIQUE_ID_ddebug355, !263, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!266 = !{ptr @.str.111, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1792, i32 3}
!268 = !{ptr @dwc2_halt_status_ok.__UNIQUE_ID_ddebug356, !267, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!269 = !{ptr @.str.112, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1795, i32 3}
!271 = !{ptr @dwc2_halt_status_ok.__UNIQUE_ID_ddebug357, !270, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!272 = !{ptr @.str.113, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1799, i32 4}
!274 = !{ptr @dwc2_halt_status_ok.__UNIQUE_ID_ddebug358, !273, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!275 = !{ptr @.str.114, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1801, i32 3}
!277 = !{ptr @dwc2_halt_status_ok._entry, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @dwc2_halt_status_ok._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.116, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1814, i32 3}
!281 = !{ptr @dwc2_halt_status_ok._entry.115, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @dwc2_halt_status_ok._entry_ptr.117, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.118, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1561, i32 2}
!285 = !{ptr @.str.119, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @dwc2_hc_ahberr_intr.__UNIQUE_ID_ddebug351, !284, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!287 = !{ptr @.str.120, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1574, i32 2}
!289 = !{ptr @dwc2_hc_ahberr_intr._entry, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @dwc2_hc_ahberr_intr._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.122, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1575, i32 2}
!293 = !{ptr @dwc2_hc_ahberr_intr._entry.121, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @dwc2_hc_ahberr_intr._entry_ptr.123, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.125, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1576, i32 2}
!297 = !{ptr @dwc2_hc_ahberr_intr._entry.124, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @dwc2_hc_ahberr_intr._entry_ptr.126, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.128, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1577, i32 2}
!301 = !{ptr @dwc2_hc_ahberr_intr._entry.127, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @dwc2_hc_ahberr_intr._entry_ptr.129, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.131, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1579, i32 2}
!305 = !{ptr @dwc2_hc_ahberr_intr._entry.130, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @dwc2_hc_ahberr_intr._entry_ptr.132, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.133, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1585, i32 14}
!309 = !{ptr @.str.134, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1588, i32 14}
!311 = !{ptr @.str.135, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1591, i32 14}
!313 = !{ptr @.str.136, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1594, i32 14}
!315 = !{ptr @.str.137, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1597, i32 14}
!317 = !{ptr @.str.139, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1601, i32 2}
!319 = !{ptr @dwc2_hc_ahberr_intr._entry.138, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @dwc2_hc_ahberr_intr._entry_ptr.140, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.141, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1605, i32 11}
!323 = !{ptr @.str.142, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1608, i32 11}
!325 = !{ptr @.str.143, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1611, i32 11}
!327 = !{ptr @.str.145, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1618, i32 2}
!329 = !{ptr @dwc2_hc_ahberr_intr._entry.144, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @dwc2_hc_ahberr_intr._entry_ptr.146, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.148, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1620, i32 2}
!333 = !{ptr @dwc2_hc_ahberr_intr._entry.147, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @dwc2_hc_ahberr_intr._entry_ptr.149, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.151, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1623, i32 2}
!337 = !{ptr @dwc2_hc_ahberr_intr._entry.150, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @dwc2_hc_ahberr_intr._entry_ptr.152, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.154, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1624, i32 2}
!341 = !{ptr @dwc2_hc_ahberr_intr._entry.153, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @dwc2_hc_ahberr_intr._entry_ptr.155, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.157, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1626, i32 2}
!345 = !{ptr @dwc2_hc_ahberr_intr._entry.156, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @dwc2_hc_ahberr_intr._entry_ptr.158, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.160, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1628, i32 2}
!349 = !{ptr @dwc2_hc_ahberr_intr._entry.159, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @dwc2_hc_ahberr_intr._entry_ptr.161, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.162, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1128, i32 2}
!353 = !{ptr @.str.163, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @dwc2_hc_stall_intr.__UNIQUE_ID_ddebug337, !352, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!355 = !{ptr @.str.164, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1213, i32 3}
!357 = !{ptr @.str.165, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @dwc2_hc_nak_intr.__UNIQUE_ID_ddebug345, !356, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!359 = !{ptr @.str.166, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1218, i32 3}
!361 = !{ptr @dwc2_hc_nak_intr.__UNIQUE_ID_ddebug346, !360, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!362 = !{ptr @.str.167, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1223, i32 3}
!364 = !{ptr @dwc2_hc_nak_intr.__UNIQUE_ID_ddebug347, !363, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!365 = !{ptr @.str.168, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1300, i32 3}
!367 = !{ptr @dwc2_hc_nak_intr._entry, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @dwc2_hc_nak_intr._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.169, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1320, i32 3}
!371 = !{ptr @.str.170, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @dwc2_hc_ack_intr.__UNIQUE_ID_ddebug348, !370, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!373 = !{ptr @.str.171, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1397, i32 3}
!375 = !{ptr @.str.172, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @dwc2_hc_nyet_intr.__UNIQUE_ID_ddebug349, !374, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!377 = !{ptr @.str.173, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1658, i32 2}
!379 = !{ptr @.str.174, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @dwc2_hc_xacterr_intr.__UNIQUE_ID_ddebug352, !378, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!381 = !{ptr @.str.175, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1520, i32 2}
!383 = !{ptr @.str.176, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @dwc2_hc_babble_intr.__UNIQUE_ID_ddebug350, !382, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!385 = !{ptr @.str.177, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1719, i32 3}
!387 = !{ptr @.str.178, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @dwc2_hc_frmovrun_intr.__UNIQUE_ID_ddebug353, !386, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!389 = !{ptr @.str.179, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1749, i32 2}
!391 = !{ptr @.str.180, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @dwc2_hc_datatglerr_intr.__UNIQUE_ID_ddebug354, !390, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!393 = !{ptr @.str.181, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 1755, i32 3}
!395 = !{ptr @dwc2_hc_datatglerr_intr._entry, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @dwc2_hc_datatglerr_intr._entry_ptr, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.182, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/usb/dwc2/hcd_intr.c", i32 259, i32 3}
!399 = !{ptr @.str.183, !398, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @dwc2_perio_tx_fifo_empty_intr.__UNIQUE_ID_ddebug301, !398, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!401 = !{i32 1, !"wchar_size", i32 2}
!402 = !{i32 1, !"min_enum_size", i32 4}
!403 = !{i32 8, !"branch-target-enforcement", i32 0}
!404 = !{i32 8, !"sign-return-address", i32 0}
!405 = !{i32 8, !"sign-return-address-all", i32 0}
!406 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!407 = !{i32 7, !"uwtable", i32 1}
!408 = !{i32 7, !"frame-pointer", i32 2}
!409 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!410 = !{i64 4683158}
!411 = !{i64 2155988754}
!412 = !{i8 0, i8 2}
!413 = !{!"branch_weights", i32 1, i32 2000}
!414 = !{i64 2148758363, i64 2148758368, i64 2148758381, i64 2148758425, i64 2148758459, i64 2148758480}
!415 = !{i64 4682740}
!416 = !{!"branch_weights", i32 2000, i32 1}
!417 = !{i32 0, i32 3}
