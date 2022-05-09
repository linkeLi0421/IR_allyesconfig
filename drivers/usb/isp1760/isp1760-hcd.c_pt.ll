; ModuleID = '/llk/IR_all_yes/drivers/usb/isp1760/isp1760-hcd.c_pt.bc'
source_filename = "../drivers/usb/isp1760/isp1760-hcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.isp1760_hcd = type { ptr, ptr, ptr, [78 x ptr], i8, ptr, %struct.spinlock, ptr, i32, ptr, i32, [56 x %struct.isp1760_memory_chunk], [3 x %struct.list_head], i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.isp1760_memory_chunk = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.67, i32 }
%union.anon.67 = type { ptr }
%struct.isp1760_memory_layout = type { [3 x i32], [3 x i32], i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.isp1760_qtd = type { i8, ptr, i32, %struct.list_head, ptr, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.isp1760_qh = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32 }
%struct.isp1760_slotinfo = type { ptr, ptr, i32 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.73 }>
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { [4 x i8], [4 x i8] }
%struct.ptd = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.urb_listitem = type { %struct.list_head, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isp1760_urb_listitem\00", [43 x i8] zeroinitializer }, align 32
@urb_listitem_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isp1760_qtd\00", [20 x i8] zeroinitializer }, align 32
@qtd_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isp1760_qh\00", [21 x i8] zeroinitializer }, align 32
@qh_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@isp1760_hc_driver = internal constant { %struct.hc_driver, [40 x i8] } { %struct.hc_driver { ptr @.str.3, ptr @.str.4, i32 4, ptr @isp1760_irq, i32 33, ptr @isp1760_hc_setup, ptr @isp1760_run, ptr null, ptr null, ptr @isp1760_stop, ptr @isp1760_shutdown, ptr @isp1760_get_frame, ptr @isp1760_urb_enqueue, ptr @isp1760_urb_dequeue, ptr null, ptr null, ptr @isp1760_endpoint_disable, ptr null, ptr @isp1760_hub_status_data, ptr @isp1760_hub_control, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp1760_clear_tt_buffer_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isp1760-hcd\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NXP ISP1760 USB Host Controller\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/isp1760/isp1760-hcd.c\00", [62 x i8] zeroinitializer }, align 32
@handle_done_ptds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 1474, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: PTD_STATE_QTD_RELOAD on interrupt packet\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"handle_done_ptds\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@handle_done_ptds._entry_ptr = internal global ptr @handle_done_ptds._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@check_int_transfer.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 1, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"isp1760\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"check_int_transfer\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: underrun during uFrame %d\0A\00", [33 x i8] zeroinitializer }, align 32
@check_int_transfer.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.5, ptr @.str.13, i8 1, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: transaction error during uFrame %d\0A\00", [56 x i8] zeroinitializer }, align 32
@check_int_transfer.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.5, ptr @.str.14, i8 1, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: babble error during uFrame %d\0A\00", [61 x i8] zeroinitializer }, align 32
@check_atl_transfer.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 1, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"check_atl_transfer\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PID error; reloading ptd\0A\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@isp176x_hc_portsc1_fields = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8192, i32 4096, i32 1024, i32 256, i32 128, i32 64, i32 4, i32 2, i32 1], [60 x i8] zeroinitializer }, align 32
@free_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 643, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Invalid pointer: %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"free_mem\00", [23 x i8] zeroinitializer }, align 32
@free_mem._entry_ptr = internal global ptr @free_mem._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@isp1760_hc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 741, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Scratch test failed. 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isp1760_hc_setup\00", [47 x i8] zeroinitializer }, align 32
@isp1760_hc_setup._entry_ptr = internal global ptr @isp1760_hc_setup._entry, section ".printk_index", align 4
@priv_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@ehci_cf_port_reset_rwsem = external dso_local global %struct.rw_semaphore, align 4
@errata2_timer_hcd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@isp1760_run.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@errata2_timer = internal global { %struct.timer_list, [48 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&errata2_timer)\00", [47 x i8] zeroinitializer }, align 32
@isp1760_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 1722, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"USB ISP %02x%02x HW rev. %d started\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isp1760_run\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@isp1760_run._entry_ptr = internal global ptr @isp1760_run._entry, section ".printk_index", align 4
@isp1763_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.27, ptr @.str.5, i32 1601, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isp1763_run\00", [20 x i8] zeroinitializer }, align 32
@isp1763_run._entry_ptr = internal global ptr @isp1763_run._entry, section ".printk_index", align 4
@isp1760_urb_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 1908, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: isochronous USB packets not yet supported\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isp1760_urb_enqueue\00", [44 x i8] zeroinitializer }, align 32
@isp1760_urb_enqueue._entry_ptr = internal global ptr @isp1760_urb_enqueue._entry, section ".printk_index", align 4
@isp1760_urb_enqueue._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.5, i32 1912, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: unknown pipe type\0A\00", [41 x i8] zeroinitializer }, align 32
@isp1760_urb_enqueue._entry_ptr.32 = internal global ptr @isp1760_urb_enqueue._entry.30, section ".printk_index", align 4
@packetize_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 1791, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"buf is null, dma is %08lx len is %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"packetize_urb\00", [18 x i8] zeroinitializer }, align 32
@packetize_urb._entry_ptr = internal global ptr @packetize_urb._entry, section ".printk_index", align 4
@isp1760_hub_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 2301, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Port resume should be skipped.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isp1760_hub_control\00", [44 x i8] zeroinitializer }, align 32
@isp1760_hub_control._entry_ptr = internal global ptr @isp1760_hub_control._entry, section ".printk_index", align 4
@isp1760_hub_control._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.5, i32 2326, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"port %d resume error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@isp1760_hub_control._entry_ptr.39 = internal global ptr @isp1760_hub_control._entry.37, section ".printk_index", align 4
@isp1760_hub_control._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.5, i32 2346, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"port %d reset error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@isp1760_hub_control._entry_ptr.42 = internal global ptr @isp1760_hub_control._entry.40, section ".printk_index", align 4
@isp1760_hub_control._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.5, i32 2360, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PORT_OWNER is set\0A\00", [45 x i8] zeroinitializer }, align 32
@isp1760_hub_control._entry_ptr.45 = internal global ptr @isp1760_hub_control._entry.43, section ".printk_index", align 4
@check_reset_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 2183, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"port %d full speed --> companion\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"check_reset_complete\00", [43 x i8] zeroinitializer }, align 32
@check_reset_complete._entry_ptr = internal global ptr @check_reset_complete._entry, section ".printk_index", align 4
@check_reset_complete._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.5, i32 2190, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port %d high speed\0A\00", [44 x i8] zeroinitializer }, align 32
@check_reset_complete._entry_ptr.50 = internal global ptr @check_reset_complete._entry.48, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [9 x i64] [i64 7, i64 16, i64 8193, i64 8195, i64 8961, i64 8963, i64 40960, i64 40966, i64 41728]
@__sancov_gen_cov_switch_values.53 = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 2, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 4294967175, i64 4294967264]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2526, i32 42 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"urb_listitem_cachep\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 39, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2533, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"qtd_cachep\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 37, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2540, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant [10 x i8] c"qh_cachep\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 38, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"isp1760_hc_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2505, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2506, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2507, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1382, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1472, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1285, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1291, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1298, i32 5 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1337, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [26 x i8] c"isp176x_hc_portsc1_fields\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 185, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 642, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 740, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 689, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"errata2_timer_hcd\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1552, i32 24 }
@___asan_gen_.158 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"errata2_timer\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1551, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1714, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1721, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1600, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1906, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1911, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1788, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2301, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2324, i32 6 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2345, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2360, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2182, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private constant [37 x i8] c"../drivers/usb/isp1760/isp1760-hcd.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2189, i32 3 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @check_reset_complete._entry, ptr @check_reset_complete._entry.48, ptr @check_reset_complete._entry_ptr, ptr @check_reset_complete._entry_ptr.50, ptr @free_mem._entry, ptr @free_mem._entry_ptr, ptr @handle_done_ptds._entry, ptr @handle_done_ptds._entry_ptr, ptr @isp1760_hc_setup._entry, ptr @isp1760_hc_setup._entry_ptr, ptr @isp1760_hub_control._entry, ptr @isp1760_hub_control._entry.37, ptr @isp1760_hub_control._entry.40, ptr @isp1760_hub_control._entry.43, ptr @isp1760_hub_control._entry_ptr, ptr @isp1760_hub_control._entry_ptr.39, ptr @isp1760_hub_control._entry_ptr.42, ptr @isp1760_hub_control._entry_ptr.45, ptr @isp1760_run._entry, ptr @isp1760_run._entry_ptr, ptr @isp1760_urb_enqueue._entry, ptr @isp1760_urb_enqueue._entry.30, ptr @isp1760_urb_enqueue._entry_ptr, ptr @isp1760_urb_enqueue._entry_ptr.32, ptr @isp1763_run._entry, ptr @isp1763_run._entry_ptr, ptr @packetize_urb._entry, ptr @packetize_urb._entry_ptr, ptr @.str, ptr @urb_listitem_cachep, ptr @.str.1, ptr @qtd_cachep, ptr @.str.2, ptr @qh_cachep, ptr @isp1760_hc_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @isp176x_hc_portsc1_fields, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @priv_init.__key, ptr @.str.22, ptr @errata2_timer_hcd, ptr @isp1760_run.__key, ptr @errata2_timer, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urb_listitem_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtd_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qh_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_hc_driver to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_done_ptds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp176x_hc_portsc1_fields to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_hc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @priv_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @errata2_timer_hcd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_run.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @errata2_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1763_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_urb_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_urb_enqueue._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packetize_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_hub_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_hub_control._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_hub_control._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_hub_control._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reset_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reset_complete._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @isp1760_init_kmem_once() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 12, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #7
  store ptr %call, ptr @urb_listitem_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 36, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #7
  store ptr %call1, ptr @qtd_cachep, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.destroy_urb_listitem_crit_edge, label %if.end4

if.end.destroy_urb_listitem_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_urb_listitem

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #7
  store ptr %call5, ptr @qh_cachep, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %destroy_qtd, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

destroy_qtd:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @qtd_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  br label %destroy_urb_listitem

destroy_urb_listitem:                             ; preds = %destroy_qtd, %if.end.destroy_urb_listitem_crit_edge
  %1 = load ptr, ptr @urb_listitem_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #7
  br label %return

return:                                           ; preds = %destroy_urb_listitem, %if.end4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %destroy_urb_listitem ], [ -12, %entry.return_crit_edge ], [ 0, %if.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @isp1760_deinit_kmem_cache() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @qtd_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  %1 = load ptr, ptr @qh_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #7
  %2 = load ptr, ptr @urb_listitem_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @isp1760_hcd_register(ptr noundef %priv, ptr nocapture noundef readonly %mem, i32 noundef %irq, i32 noundef %irqflags, ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %memory_layout = getelementptr inbounds %struct.isp1760_hcd, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %memory_layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory_layout, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @usb_create_hcd(ptr noundef nonnull @isp1760_hc_driver, ptr noundef %dev, ptr noundef %retval.0.i) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %hcd_priv = getelementptr inbounds %struct.usb_hcd, ptr %call1, i32 0, i32 30
  %6 = ptrtoint ptr %hcd_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %priv, ptr %hcd_priv, align 8
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %priv, align 4
  %slot_num = getelementptr inbounds %struct.isp1760_memory_layout, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot_num, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 12) #7
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !125

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %atl_slots84 = getelementptr inbounds %struct.isp1760_hcd, ptr %priv, i32 0, i32 7
  %12 = ptrtoint ptr %atl_slots84 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %atl_slots84, align 4
  br label %put_hcd

if.end7.i.i:                                      ; preds = %if.end
  %13 = extractvalue { i32, i1 } %10, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #10
  %atl_slots = getelementptr inbounds %struct.isp1760_hcd, ptr %priv, i32 0, i32 7
  %14 = ptrtoint ptr %atl_slots to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i, ptr %atl_slots, align 4
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.end7.i.i.put_hcd_crit_edge, label %if.end7

if.end7.i.i.put_hcd_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_hcd

if.end7:                                          ; preds = %if.end7.i.i
  %15 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slot_num, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 12) #7
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %kcalloc.exit80.thread, label %if.end7.i.i78, !prof !125

kcalloc.exit80.thread:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %int_slots92 = getelementptr inbounds %struct.isp1760_hcd, ptr %priv, i32 0, i32 9
  %19 = ptrtoint ptr %int_slots92 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %int_slots92, align 4
  br label %free_atl_slots

if.end7.i.i78:                                    ; preds = %if.end7
  %20 = extractvalue { i32, i1 } %17, 0
  %call8.i.i77 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #10
  %int_slots = getelementptr inbounds %struct.isp1760_hcd, ptr %priv, i32 0, i32 9
  %21 = ptrtoint ptr %int_slots to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i77, ptr %int_slots, align 4
  %tobool11.not = icmp eq ptr %call8.i.i77, null
  br i1 %tobool11.not, label %if.end7.i.i78.free_atl_slots_crit_edge, label %if.end13

if.end7.i.i78.free_atl_slots_crit_edge:           ; preds = %if.end7.i.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_atl_slots

if.end13:                                         ; preds = %if.end7.i.i78
  %22 = ptrtoint ptr %memory_layout to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %memory_layout, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp266.not.i = icmp eq i32 %25, 0
  br i1 %cmp266.not.i, label %if.end13.for.inc17.i_crit_edge, label %for.body3.lr.ph.i

if.end13.for.inc17.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.i

for.body3.lr.ph.i:                                ; preds = %if.end13
  %arrayidx5.i = getelementptr %struct.isp1760_memory_layout, ptr %23, i32 0, i32 1, i32 0
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %payload_addr.168.i = phi i32 [ 4096, %for.body3.lr.ph.i ], [ %add16.i, %for.body3.i.for.body3.i_crit_edge ]
  %j.067.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i, %for.body3.i.for.body3.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.isp1760_hcd, ptr %priv, i32 0, i32 11, i32 %j.067.i
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %payload_addr.168.i, ptr %arrayidx4.i, align 4
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx5.i, align 4
  %size.i = getelementptr %struct.isp1760_hcd, ptr %priv, i32 0, i32 11, i32 %j.067.i, i32 1
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %size.i, align 4
  %free.i = getelementptr %struct.isp1760_hcd, ptr %priv, i32 0, i32 11, i32 %j.067.i, i32 2
  %30 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %free.i, align 4
  %add16.i = add i32 %28, %payload_addr.168.i
  %inc.i = add nuw i32 %j.067.i, 1
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %23, align 4
  %cmp2.i = icmp ult i32 %inc.i, %32
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.for.inc17.i_crit_edge

for.body3.i.for.inc17.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.i

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i

for.inc17.i:                                      ; preds = %for.body3.i.for.inc17.i_crit_edge, %if.end13.for.inc17.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %if.end13.for.inc17.i_crit_edge ], [ %inc.i, %for.body3.i.for.inc17.i_crit_edge ]
  %payload_addr.1.lcssa.i = phi i32 [ 4096, %if.end13.for.inc17.i_crit_edge ], [ %add16.i, %for.body3.i.for.inc17.i_crit_edge ]
  %arrayidx.1.i = getelementptr [3 x i32], ptr %23, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp266.not.1.i = icmp eq i32 %34, 0
  br i1 %cmp266.not.1.i, label %for.inc17.i.for.inc17.1.i_crit_edge, label %for.body3.lr.ph.1.i

for.inc17.i.for.inc17.1.i_crit_edge:              ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.1.i

for.body3.lr.ph.1.i:                              ; preds = %for.inc17.i
  %arrayidx5.1.i = getelementptr %struct.isp1760_memory_layout, ptr %23, i32 0, i32 1, i32 1
  br label %for.body3.1.i

for.body3.1.i:                                    ; preds = %for.body3.1.i.for.body3.1.i_crit_edge, %for.body3.lr.ph.1.i
  %payload_addr.168.1.i = phi i32 [ %payload_addr.1.lcssa.i, %for.body3.lr.ph.1.i ], [ %add16.1.i, %for.body3.1.i.for.body3.1.i_crit_edge ]
  %j.067.1.i = phi i32 [ 0, %for.body3.lr.ph.1.i ], [ %inc.1.i, %for.body3.1.i.for.body3.1.i_crit_edge ]
  %add.1.i = add i32 %j.067.1.i, %j.0.lcssa.i
  %arrayidx4.1.i = getelementptr %struct.isp1760_hcd, ptr %priv, i32 0, i32 11, i32 %add.1.i
  %35 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %payload_addr.168.1.i, ptr %arrayidx4.1.i, align 4
  %36 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx5.1.i, align 4
  %size.1.i = getelementptr %struct.isp1760_hcd, ptr %priv, i32 0, i32 11, i32 %add.1.i, i32 1
  %38 = ptrtoint ptr %size.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %size.1.i, align 4
  %free.1.i = getelementptr %struct.isp1760_hcd, ptr %priv, i32 0, i32 11, i32 %add.1.i, i32 2
  %39 = ptrtoint ptr %free.1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %free.1.i, align 4
  %add16.1.i = add i32 %37, %payload_addr.168.1.i
  %inc.1.i = add nuw i32 %j.067.1.i, 1
  %40 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.1.i, align 4
  %cmp2.1.i = icmp ult i32 %inc.1.i, %41
  br i1 %cmp2.1.i, label %for.body3.1.i.for.body3.1.i_crit_edge, label %for.body3.1.i.for.inc17.1.i_crit_edge

for.body3.1.i.for.inc17.1.i_crit_edge:            ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.1.i

for.body3.1.i.for.body3.1.i_crit_edge:            ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.1.i

for.inc17.1.i:                                    ; preds = %for.body3.1.i.for.inc17.1.i_crit_edge, %for.inc17.i.for.inc17.1.i_crit_edge
  %j.0.lcssa.1.i = phi i32 [ 0, %for.inc17.i.for.inc17.1.i_crit_edge ], [ %inc.1.i, %for.body3.1.i.for.inc17.1.i_crit_edge ]
  %payload_addr.1.lcssa.1.i = phi i32 [ %payload_addr.1.lcssa.i, %for.inc17.i.for.inc17.1.i_crit_edge ], [ %add16.1.i, %for.body3.1.i.for.inc17.1.i_crit_edge ]
  %add19.1.i = add i32 %j.0.lcssa.1.i, %j.0.lcssa.i
  %arrayidx.2.i = getelementptr [3 x i32], ptr %23, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp266.not.2.i = icmp eq i32 %43, 0
  br i1 %cmp266.not.2.i, label %for.inc17.1.i.for.inc17.2.i_crit_edge, label %for.body3.lr.ph.2.i

for.inc17.1.i.for.inc17.2.i_crit_edge:            ; preds = %for.inc17.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.2.i

for.body3.lr.ph.2.i:                              ; preds = %for.inc17.1.i
  %arrayidx5.2.i = getelementptr %struct.isp1760_memory_layout, ptr %23, i32 0, i32 1, i32 2
  br label %for.body3.2.i

for.body3.2.i:                                    ; preds = %for.body3.2.i.for.body3.2.i_crit_edge, %for.body3.lr.ph.2.i
  %payload_addr.168.2.i = phi i32 [ %payload_addr.1.lcssa.1.i, %for.body3.lr.ph.2.i ], [ %add16.2.i, %for.body3.2.i.for.body3.2.i_crit_edge ]
  %j.067.2.i = phi i32 [ 0, %for.body3.lr.ph.2.i ], [ %inc.2.i, %for.body3.2.i.for.body3.2.i_crit_edge ]
  %add.2.i = add i32 %add19.1.i, %j.067.2.i
  %arrayidx4.2.i = getelementptr %struct.isp1760_hcd, ptr %priv, i32 0, i32 11, i32 %add.2.i
  %44 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %payload_addr.168.2.i, ptr %arrayidx4.2.i, align 4
  %45 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx5.2.i, align 4
  %size.2.i = getelementptr %struct.isp1760_hcd, ptr %priv, i32 0, i32 11, i32 %add.2.i, i32 1
  %47 = ptrtoint ptr %size.2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %size.2.i, align 4
  %free.2.i = getelementptr %struct.isp1760_hcd, ptr %priv, i32 0, i32 11, i32 %add.2.i, i32 2
  %48 = ptrtoint ptr %free.2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %free.2.i, align 4
  %add16.2.i = add i32 %46, %payload_addr.168.2.i
  %inc.2.i = add nuw i32 %j.067.2.i, 1
  %49 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.2.i, align 4
  %cmp2.2.i = icmp ult i32 %inc.2.i, %50
  br i1 %cmp2.2.i, label %for.body3.2.i.for.body3.2.i_crit_edge, label %for.body3.2.i.for.inc17.2.i_crit_edge

for.body3.2.i.for.inc17.2.i_crit_edge:            ; preds = %for.body3.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.2.i

for.body3.2.i.for.body3.2.i_crit_edge:            ; preds = %for.body3.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.2.i

for.inc17.2.i:                                    ; preds = %for.body3.2.i.for.inc17.2.i_crit_edge, %for.inc17.1.i.for.inc17.2.i_crit_edge
  %payload_addr.1.lcssa.2.i = phi i32 [ %payload_addr.1.lcssa.1.i, %for.inc17.1.i.for.inc17.2.i_crit_edge ], [ %add16.2.i, %for.body3.2.i.for.inc17.2.i_crit_edge ]
  %memory_pool21.i = getelementptr inbounds %struct.isp1760_hcd, ptr %priv, i32 0, i32 11
  %51 = ptrtoint ptr %memory_pool21.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %memory_pool21.i, align 4
  %sub.i = sub i32 %payload_addr.1.lcssa.2.i, %52
  %payload_area_size.i = getelementptr inbounds %struct.isp1760_memory_layout, ptr %23, i32 0, i32 4
  %53 = ptrtoint ptr %payload_area_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %payload_area_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %54)
  %cmp24.i = icmp ugt i32 %sub.i, %54
  br i1 %cmp24.i, label %do.end.i, label %for.inc17.2.i.init_memory.exit_crit_edge, !prof !125

for.inc17.2.i.init_memory.exit_crit_edge:         ; preds = %for.inc17.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_memory.exit

do.end.i:                                         ; preds = %for.inc17.2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 600, i32 noundef 9, ptr noundef null) #7
  br label %init_memory.exit

init_memory.exit:                                 ; preds = %do.end.i, %for.inc17.2.i.init_memory.exit_crit_edge
  %irq14 = getelementptr inbounds %struct.usb_hcd, ptr %call1, i32 0, i32 15
  %55 = ptrtoint ptr %irq14 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %irq, ptr %irq14, align 8
  %56 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mem, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call1, i32 0, i32 17
  %58 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %mem, i32 0, i32 1
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %end.i, align 4
  %61 = load i32, ptr %mem, align 4
  %sub.i82 = add i32 %60, 1
  %add.i = sub i32 %sub.i82, %61
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call1, i32 0, i32 18
  %62 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i, ptr %rsrc_len, align 4
  %cant_recv_wakeups = getelementptr inbounds %struct.usb_hcd, ptr %call1, i32 0, i32 14
  %63 = ptrtoint ptr %cant_recv_wakeups to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load = load i16, ptr %cant_recv_wakeups, align 4
  %bf.set = or i16 %bf.load, 16
  store i16 %bf.set, ptr %cant_recv_wakeups, align 4
  %call16 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call1, i32 noundef %irq, i32 noundef %irqflags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %free_int_slots

if.end19:                                         ; preds = %init_memory.exit
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call1, align 8
  %call20 = tail call i32 @device_wakeup_enable(ptr noundef %65) #7
  br label %cleanup

free_int_slots:                                   ; preds = %init_memory.exit
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %int_slots to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %int_slots, align 4
  tail call void @kfree(ptr noundef %67) #7
  br label %free_atl_slots

free_atl_slots:                                   ; preds = %free_int_slots, %if.end7.i.i78.free_atl_slots_crit_edge, %kcalloc.exit80.thread
  %ret.0 = phi i32 [ %call16, %free_int_slots ], [ -12, %if.end7.i.i78.free_atl_slots_crit_edge ], [ -12, %kcalloc.exit80.thread ]
  %68 = ptrtoint ptr %atl_slots to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %atl_slots, align 4
  tail call void @kfree(ptr noundef %69) #7
  br label %put_hcd

put_hcd:                                          ; preds = %free_atl_slots, %if.end7.i.i.put_hcd_crit_edge, %kcalloc.exit.thread
  %ret.1 = phi i32 [ %ret.0, %free_atl_slots ], [ -12, %if.end7.i.i.put_hcd_crit_edge ], [ -12, %kcalloc.exit.thread ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %put_hcd, %if.end19, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %put_hcd ], [ 0, %if.end19 ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @isp1760_hcd_unregister(ptr nocapture noundef readonly %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_remove_hcd(ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void @usb_put_hcd(ptr noundef %3) #7
  %atl_slots = getelementptr inbounds %struct.isp1760_hcd, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %atl_slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %atl_slots, align 4
  tail call void @kfree(ptr noundef %5) #7
  %int_slots = getelementptr inbounds %struct.isp1760_hcd, ptr %priv, i32 0, i32 9
  %6 = ptrtoint ptr %int_slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %int_slots, align 4
  tail call void @kfree(ptr noundef %7) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_irq(ptr noundef %hcd) #2 align 64 {
entry:
  %val.i.i29 = alloca i32, align 4
  %val.i.i24 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %lock = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.leave_crit_edge, label %if.end

entry.leave_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %leave

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i, align 4, !annotation !126
  %arrayidx.i.i = getelementptr %struct.isp1760_hcd, ptr %5, i32 0, i32 3, i32 53
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %8, ptr noundef nonnull %val.i.i) #7
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %if.end.leave_crit_edge, label %if.end7, !prof !125

if.end.leave_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %leave

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %is_isp1763 = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %is_isp1763 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_isp1763, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  %cond = select i1 %tobool8.not, i32 784, i32 212
  %regs = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %call.i = call i32 @regmap_write(ptr noundef %14, i32 noundef %cond, i32 noundef %10) #7
  %15 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i24) #7
  %17 = ptrtoint ptr %val.i.i24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i.i24, align 4, !annotation !126
  %arrayidx.i.i27 = getelementptr %struct.isp1760_hcd, ptr %16, i32 0, i32 3, i32 22
  %18 = ptrtoint ptr %arrayidx.i.i27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i27, align 4
  %call.i.i28 = call i32 @regmap_field_read(ptr noundef %19, ptr noundef nonnull %val.i.i24) #7
  %20 = ptrtoint ptr %val.i.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i.i24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i24) #7
  %int_done_map = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %int_done_map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %int_done_map, align 4
  %or = or i32 %23, %21
  store i32 %or, ptr %int_done_map, align 4
  %24 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i29) #7
  %26 = ptrtoint ptr %val.i.i29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %val.i.i29, align 4, !annotation !126
  %arrayidx.i.i32 = getelementptr %struct.isp1760_hcd, ptr %25, i32 0, i32 3, i32 25
  %27 = ptrtoint ptr %arrayidx.i.i32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i32, align 4
  %call.i.i33 = call i32 @regmap_field_read(ptr noundef %28, ptr noundef nonnull %val.i.i29) #7
  %29 = ptrtoint ptr %val.i.i29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i.i29, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i29) #7
  %atl_done_map = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %atl_done_map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %atl_done_map, align 4
  %or11 = or i32 %32, %30
  store i32 %or11, ptr %atl_done_map, align 4
  call fastcc void @handle_done_ptds(ptr noundef %hcd)
  br label %leave

leave:                                            ; preds = %if.end7, %if.end.leave_crit_edge, %entry.leave_crit_edge
  %irqret.0 = phi i32 [ 0, %if.end.leave_crit_edge ], [ 1, %if.end7 ], [ 0, %entry.leave_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret i32 %irqret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_hc_setup(ptr noundef %hcd) #2 align 64 {
entry:
  %val.i.i1.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  %val.i.i60 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %is_isp1763 = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_isp1763 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_isp1763, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %. = select i1 %tobool.not, i32 -559035650, i32 51966
  %arrayidx.i.i = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 3, i32 43
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %8 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i.i, align 4, !annotation !126
  %arrayidx.i.i59 = getelementptr %struct.isp1760_hcd, ptr %7, i32 0, i32 3, i32 40
  %9 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i59, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %10, ptr noundef nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %11 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i60) #7
  %13 = ptrtoint ptr %val.i.i60 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i.i60, align 4, !annotation !126
  %arrayidx.i.i63 = getelementptr %struct.isp1760_hcd, ptr %12, i32 0, i32 3, i32 43
  %14 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i63, align 4
  %call.i.i64 = call i32 @regmap_field_read(ptr noundef %15, ptr noundef nonnull %val.i.i60) #7
  %16 = ptrtoint ptr %val.i.i60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i.i60, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i60) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %.)
  %cmp.not = icmp eq i32 %17, %.
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.20, i32 noundef %17) #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  %20 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.isp1760_hcd, ptr %21, i32 0, i32 3, i32 47
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %23, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %24 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i67 = getelementptr %struct.isp1760_hcd, ptr %25, i32 0, i32 3, i32 48
  %26 = ptrtoint ptr %arrayidx.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i.i67, align 4
  %call.i.i.i.i68 = call i32 @regmap_field_update_bits_base(ptr noundef %27, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %28 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i71 = getelementptr %struct.isp1760_hcd, ptr %29, i32 0, i32 3, i32 49
  %30 = ptrtoint ptr %arrayidx.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i71, align 4
  %call.i.i.i.i72 = call i32 @regmap_field_update_bits_base(ptr noundef %31, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %32 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i75 = getelementptr %struct.isp1760_hcd, ptr %33, i32 0, i32 3, i32 26
  %34 = ptrtoint ptr %arrayidx.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i.i75, align 4
  %call.i.i.i.i76 = call i32 @regmap_field_update_bits_base(ptr noundef %35, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %36 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i79 = getelementptr %struct.isp1760_hcd, ptr %37, i32 0, i32 3, i32 23
  %38 = ptrtoint ptr %arrayidx.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i.i79, align 4
  %call.i.i.i.i80 = call i32 @regmap_field_update_bits_base(ptr noundef %39, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %40 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i83 = getelementptr %struct.isp1760_hcd, ptr %41, i32 0, i32 3, i32 20
  %42 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i83, align 4
  %call.i.i.i.i84 = call i32 @regmap_field_update_bits_base(ptr noundef %43, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call5 = call fastcc i32 @ehci_reset(ptr noundef %hcd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %44 = ptrtoint ptr %is_isp1763 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_isp1763, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool10.not = icmp eq i8 %45, 0
  %.56 = select i1 %tobool10.not, i32 28, i32 44
  %46 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hcd_priv.i, align 8
  %fields.i.i86 = getelementptr inbounds %struct.isp1760_hcd, ptr %47, i32 0, i32 3
  %arrayidx.i.i.i87 = getelementptr ptr, ptr %fields.i.i86, i32 %.56
  %48 = ptrtoint ptr %arrayidx.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i.i87, align 4
  %call.i.i.i.i88 = call i32 @regmap_field_update_bits_base(ptr noundef %49, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %56(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 214748000) #7
  %60 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hcd_priv.i, align 8
  %fields.i.i90 = getelementptr inbounds %struct.isp1760_hcd, ptr %61, i32 0, i32 3
  %arrayidx.i.i.i91 = getelementptr ptr, ptr %fields.i.i90, i32 %.56
  %62 = ptrtoint ptr %arrayidx.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i.i91, align 4
  %call.i.i.i.i92 = call i32 @regmap_field_update_bits_base(ptr noundef %63, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %64 = ptrtoint ptr %is_isp1763 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_isp1763, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool16.not = icmp eq i8 %65, 0
  br i1 %tobool16.not, label %if.end8.if.end24_crit_edge, label %if.then17

if.end8.if.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i95 = getelementptr %struct.isp1760_hcd, ptr %67, i32 0, i32 3, i32 62
  %68 = ptrtoint ptr %arrayidx.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i.i95, align 4
  %call.i.i.i.i96 = call i32 @regmap_field_update_bits_base(ptr noundef %69, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %70 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i99 = getelementptr %struct.isp1760_hcd, ptr %71, i32 0, i32 3, i32 71
  %72 = ptrtoint ptr %arrayidx.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i.i99, align 4
  %call.i.i.i.i100 = call i32 @regmap_field_update_bits_base(ptr noundef %73, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %74 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i103 = getelementptr %struct.isp1760_hcd, ptr %75, i32 0, i32 3, i32 77
  %76 = ptrtoint ptr %arrayidx.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i.i103, align 4
  %call.i.i.i.i104 = call i32 @regmap_field_update_bits_base(ptr noundef %77, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %78(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %81(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %82(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %85(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %86(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %87(i32 noundef 214748000) #7
  %88 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i107 = getelementptr %struct.isp1760_hcd, ptr %89, i32 0, i32 3, i32 37
  %90 = ptrtoint ptr %arrayidx.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i.i.i107, align 4
  %call.i.i.i.i108 = call i32 @regmap_field_update_bits_base(ptr noundef %91, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.end8.if.end24_crit_edge
  %92 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i111 = getelementptr %struct.isp1760_hcd, ptr %93, i32 0, i32 3, i32 54
  %94 = ptrtoint ptr %arrayidx.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i.i.i111, align 4
  %call.i.i.i.i112 = call i32 @regmap_field_update_bits_base(ptr noundef %95, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %96 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i115 = getelementptr %struct.isp1760_hcd, ptr %97, i32 0, i32 3, i32 55
  %98 = ptrtoint ptr %arrayidx.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i.i.i115, align 4
  %call.i.i.i.i116 = call i32 @regmap_field_update_bits_base(ptr noundef %99, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %100 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hcd_priv.i, align 8
  %lock.i = getelementptr inbounds %struct.isp1760_hcd, ptr %101, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @priv_init.__key, i16 noundef signext 3) #7
  %arrayidx.i = getelementptr %struct.isp1760_hcd, ptr %101, i32 0, i32 12, i32 0
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i.i = getelementptr %struct.isp1760_hcd, ptr %101, i32 0, i32 12, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %arrayidx.1.i = getelementptr %struct.isp1760_hcd, ptr %101, i32 0, i32 12, i32 1
  %104 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %arrayidx.1.i, ptr %arrayidx.1.i, align 4
  %prev.i.1.i = getelementptr %struct.isp1760_hcd, ptr %101, i32 0, i32 12, i32 1, i32 1
  %105 = ptrtoint ptr %prev.i.1.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %arrayidx.1.i, ptr %prev.i.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.isp1760_hcd, ptr %101, i32 0, i32 12, i32 2
  %106 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %arrayidx.2.i, ptr %arrayidx.2.i, align 4
  %prev.i.2.i = getelementptr %struct.isp1760_hcd, ptr %101, i32 0, i32 12, i32 2, i32 1
  %107 = ptrtoint ptr %prev.i.2.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx.2.i, ptr %prev.i.2.i, align 4
  %periodic_size.i = getelementptr inbounds %struct.isp1760_hcd, ptr %101, i32 0, i32 13
  %108 = ptrtoint ptr %periodic_size.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1024, ptr %periodic_size.i, align 4
  %is_isp1763.i = getelementptr inbounds %struct.isp1760_hcd, ptr %101, i32 0, i32 4
  %109 = ptrtoint ptr %is_isp1763.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %is_isp1763.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i = icmp eq i8 %110, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.priv_init.exit_crit_edge

if.end24.priv_init.exit_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %priv_init.exit

if.end.i:                                         ; preds = %if.end24
  %111 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %113 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !126
  %arrayidx.i.i.i118 = getelementptr %struct.isp1760_hcd, ptr %112, i32 0, i32 3, i32 11
  %114 = ptrtoint ptr %arrayidx.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i.i.i118, align 4
  %call.i.i.i119 = call i32 @regmap_field_read(ptr noundef %115, ptr noundef nonnull %val.i.i.i) #7
  %116 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %118 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i1.i) #7
  %120 = ptrtoint ptr %val.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %val.i.i1.i, align 4, !annotation !126
  %arrayidx.i.i4.i = getelementptr %struct.isp1760_hcd, ptr %119, i32 0, i32 3, i32 12
  %121 = ptrtoint ptr %arrayidx.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i.i4.i, align 4
  %call.i.i5.i = call i32 @regmap_field_read(ptr noundef %122, ptr noundef nonnull %val.i.i1.i) #7
  %123 = ptrtoint ptr %val.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val.i.i1.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool4.not.i = icmp eq i32 %117, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.end.i.priv_init.exit_crit_edge

if.end.i.priv_init.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %priv_init.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %124, 2
  br label %priv_init.exit

priv_init.exit:                                   ; preds = %if.else.i, %if.end.i.priv_init.exit_crit_edge, %if.end24.priv_init.exit_crit_edge
  %.sink.i = phi i32 [ %add.i, %if.else.i ], [ 2, %if.end24.priv_init.exit_crit_edge ], [ 8, %if.end.i.priv_init.exit_crit_edge ]
  %i_thresh6.i = getelementptr inbounds %struct.isp1760_hcd, ptr %101, i32 0, i32 14
  %125 = ptrtoint ptr %i_thresh6.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %.sink.i, ptr %i_thresh6.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %priv_init.exit, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %priv_init.exit ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_run(ptr noundef %hcd) #2 align 64 {
entry:
  %val.i.i96 = alloca i32, align 4
  %val.i.i91 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i.i62.i = alloca i32, align 4
  %val.i.i57.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %is_isp1763 = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_isp1763 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_isp1763, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %uses_new_polling = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 14
  %4 = ptrtoint ptr %uses_new_polling to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %uses_new_polling, align 4
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %uses_new_polling, align 4
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state, align 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %6 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !126
  %arrayidx.i.i.i = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 3, i32 40
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_field_read(ptr noundef %8, ptr noundef nonnull %val.i.i.i) #7
  %9 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %11 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i57.i) #7
  %13 = ptrtoint ptr %val.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i.i57.i, align 4, !annotation !126
  %arrayidx.i.i60.i = getelementptr %struct.isp1760_hcd, ptr %12, i32 0, i32 3, i32 41
  %14 = ptrtoint ptr %arrayidx.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i60.i, align 4
  %call.i.i61.i = call i32 @regmap_field_read(ptr noundef %15, ptr noundef nonnull %val.i.i57.i) #7
  %16 = ptrtoint ptr %val.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i.i57.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i57.i) #7
  %18 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i62.i) #7
  %20 = ptrtoint ptr %val.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i.i62.i, align 4, !annotation !126
  %arrayidx.i.i65.i = getelementptr %struct.isp1760_hcd, ptr %19, i32 0, i32 3, i32 42
  %21 = ptrtoint ptr %arrayidx.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i65.i, align 4
  %call.i.i66.i = call i32 @regmap_field_read(ptr noundef %22, ptr noundef nonnull %val.i.i62.i) #7
  %23 = ptrtoint ptr %val.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i.i62.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i62.i) #7
  %25 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.24, i32 noundef %10, i32 noundef %17, i32 noundef %24) #11
  %27 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_hcd, ptr %28, i32 0, i32 3, i32 47
  %29 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %30, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %31 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i69.i = getelementptr %struct.isp1760_hcd, ptr %32, i32 0, i32 3, i32 48
  %33 = ptrtoint ptr %arrayidx.i.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i69.i, align 4
  %call.i.i.i.i70.i = call i32 @regmap_field_update_bits_base(ptr noundef %34, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %35 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i73.i = getelementptr %struct.isp1760_hcd, ptr %36, i32 0, i32 3, i32 49
  %37 = ptrtoint ptr %arrayidx.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i.i73.i, align 4
  %call.i.i.i.i74.i = call i32 @regmap_field_update_bits_base(ptr noundef %38, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %39 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i77.i = getelementptr %struct.isp1760_hcd, ptr %40, i32 0, i32 3, i32 26
  %41 = ptrtoint ptr %arrayidx.i.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i.i77.i, align 4
  %call.i.i.i.i78.i = call i32 @regmap_field_update_bits_base(ptr noundef %42, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %43 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i81.i = getelementptr %struct.isp1760_hcd, ptr %44, i32 0, i32 3, i32 23
  %45 = ptrtoint ptr %arrayidx.i.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i.i81.i, align 4
  %call.i.i.i.i82.i = call i32 @regmap_field_update_bits_base(ptr noundef %46, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %47 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i85.i = getelementptr %struct.isp1760_hcd, ptr %48, i32 0, i32 3, i32 20
  %49 = ptrtoint ptr %arrayidx.i.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i.i85.i, align 4
  %call.i.i.i.i86.i = call i32 @regmap_field_update_bits_base(ptr noundef %50, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748) #7
  %52 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i89.i = getelementptr %struct.isp1760_hcd, ptr %53, i32 0, i32 3, i32 25
  %54 = ptrtoint ptr %arrayidx.i.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i.i89.i, align 4
  %call.i.i.i.i90.i = call i32 @regmap_field_update_bits_base(ptr noundef %55, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %56 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i93.i = getelementptr %struct.isp1760_hcd, ptr %57, i32 0, i32 3, i32 22
  %58 = ptrtoint ptr %arrayidx.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i.i93.i, align 4
  %call.i.i.i.i94.i = call i32 @regmap_field_update_bits_base(ptr noundef %59, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %60 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i97.i = getelementptr %struct.isp1760_hcd, ptr %61, i32 0, i32 3, i32 19
  %62 = ptrtoint ptr %arrayidx.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i.i97.i, align 4
  %call.i.i.i.i98.i = call i32 @regmap_field_update_bits_base(ptr noundef %63, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %64 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i101.i = getelementptr %struct.isp1760_hcd, ptr %65, i32 0, i32 3, i32 62
  %66 = ptrtoint ptr %arrayidx.i.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i.i101.i, align 4
  %call.i.i.i.i102.i = call i32 @regmap_field_update_bits_base(ptr noundef %67, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %regs.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %69, i32 noundef 230, i32 noundef 128) #7
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 4
  %call.i103.i = call i32 @regmap_write(ptr noundef %71, i32 noundef 230, i32 noundef 32768) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %72(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %73(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %74(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %75(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %78(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %81(i32 noundef 214748000) #7
  %82 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i106.i = getelementptr %struct.isp1760_hcd, ptr %83, i32 0, i32 3, i32 54
  %84 = ptrtoint ptr %arrayidx.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i.i106.i, align 4
  %call.i.i.i.i107.i = call i32 @regmap_field_update_bits_base(ptr noundef %85, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %86 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i110.i = getelementptr %struct.isp1760_hcd, ptr %87, i32 0, i32 3, i32 55
  %88 = ptrtoint ptr %arrayidx.i.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i.i.i110.i, align 4
  %call.i.i.i.i111.i = call i32 @regmap_field_update_bits_base(ptr noundef %89, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %90 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i114.i = getelementptr %struct.isp1760_hcd, ptr %91, i32 0, i32 3, i32 39
  %92 = ptrtoint ptr %arrayidx.i.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i.i.i114.i, align 4
  %call.i.i.i.i115.i = call i32 @regmap_field_update_bits_base(ptr noundef %93, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %94 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i118.i = getelementptr %struct.isp1760_hcd, ptr %95, i32 0, i32 3, i32 61
  %96 = ptrtoint ptr %arrayidx.i.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.i.i118.i, align 4
  %call.i.i.i.i119.i = call i32 @regmap_field_update_bits_base(ptr noundef %97, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %98 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i122.i = getelementptr %struct.isp1760_hcd, ptr %99, i32 0, i32 3, i32 60
  %100 = ptrtoint ptr %arrayidx.i.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i.i122.i, align 4
  %call.i.i.i.i123.i = call i32 @regmap_field_update_bits_base(ptr noundef %101, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %102 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i126.i = getelementptr %struct.isp1760_hcd, ptr %103, i32 0, i32 3, i32 59
  %104 = ptrtoint ptr %arrayidx.i.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i.i.i126.i, align 4
  %call.i.i.i.i127.i = call i32 @regmap_field_update_bits_base(ptr noundef %105, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %106 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i130.i = getelementptr %struct.isp1760_hcd, ptr %107, i32 0, i32 3, i32 58
  %108 = ptrtoint ptr %arrayidx.i.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i.i130.i, align 4
  %call.i.i.i.i131.i = call i32 @regmap_field_update_bits_base(ptr noundef %109, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %110 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i134.i = getelementptr %struct.isp1760_hcd, ptr %111, i32 0, i32 3, i32 57
  %112 = ptrtoint ptr %arrayidx.i.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i.i.i134.i, align 4
  %call.i.i.i.i135.i = call i32 @regmap_field_update_bits_base(ptr noundef %113, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %114 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i138.i = getelementptr %struct.isp1760_hcd, ptr %115, i32 0, i32 3, i32 56
  %116 = ptrtoint ptr %arrayidx.i.i.i138.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i.i.i138.i, align 4
  %call.i.i.i.i139.i = call i32 @regmap_field_update_bits_base(ptr noundef %117, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %118 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i142.i = getelementptr %struct.isp1760_hcd, ptr %119, i32 0, i32 3, i32 27
  %120 = ptrtoint ptr %arrayidx.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i.i142.i, align 4
  %call.i.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %121, i32 noundef -1, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %122 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i145.i = getelementptr %struct.isp1760_hcd, ptr %123, i32 0, i32 3, i32 24
  %124 = ptrtoint ptr %arrayidx.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i.i145.i, align 4
  %call.i.i.i146.i = call i32 @regmap_field_update_bits_base(ptr noundef %125, i32 noundef -1, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %126 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i149.i = getelementptr %struct.isp1760_hcd, ptr %127, i32 0, i32 3, i32 21
  %128 = ptrtoint ptr %arrayidx.i.i149.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i.i149.i, align 4
  %call.i.i.i150.i = call i32 @regmap_field_update_bits_base(ptr noundef %129, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %130 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i153.i = getelementptr %struct.isp1760_hcd, ptr %131, i32 0, i32 3, i32 49
  %132 = ptrtoint ptr %arrayidx.i.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx.i.i.i153.i, align 4
  %call.i.i.i.i154.i = call i32 @regmap_field_update_bits_base(ptr noundef %133, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %134 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i157.i = getelementptr %struct.isp1760_hcd, ptr %135, i32 0, i32 3, i32 48
  %136 = ptrtoint ptr %arrayidx.i.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i.i.i157.i, align 4
  %call.i.i.i.i158.i = call i32 @regmap_field_update_bits_base(ptr noundef %137, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %138 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i161.i = getelementptr %struct.isp1760_hcd, ptr %139, i32 0, i32 3, i32 13
  %140 = ptrtoint ptr %arrayidx.i.i.i161.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.i.i.i161.i, align 4
  %call.i.i.i.i162.i = call i32 @regmap_field_update_bits_base(ptr noundef %141, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %142 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i165.i = getelementptr %struct.isp1760_hcd, ptr %143, i32 0, i32 3, i32 14
  %144 = ptrtoint ptr %arrayidx.i.i.i165.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i.i.i165.i, align 4
  %call.i.i.i.i166.i = call i32 @regmap_field_update_bits_base(ptr noundef %145, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call6.i = call fastcc i32 @isp1760_hcd_set_and_wait(ptr noundef %hcd, i32 noundef 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @down_write(ptr noundef nonnull @ehci_cf_port_reset_rwsem) #7
  %call8.i = call fastcc i32 @isp1760_hcd_set_and_wait(ptr noundef %hcd, i32 noundef 18) #7
  call void @up_write(ptr noundef nonnull @ehci_cf_port_reset_rwsem) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i.i55 = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 3, i32 61
  %146 = ptrtoint ptr %arrayidx.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i.i.i55, align 4
  %call.i.i.i.i56 = tail call i32 @regmap_field_update_bits_base(ptr noundef %147, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %148 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i59 = getelementptr %struct.isp1760_hcd, ptr %149, i32 0, i32 3, i32 60
  %150 = ptrtoint ptr %arrayidx.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i.i.i59, align 4
  %call.i.i.i.i60 = tail call i32 @regmap_field_update_bits_base(ptr noundef %151, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %152 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i63 = getelementptr %struct.isp1760_hcd, ptr %153, i32 0, i32 3, i32 59
  %154 = ptrtoint ptr %arrayidx.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i.i.i63, align 4
  %call.i.i.i.i64 = tail call i32 @regmap_field_update_bits_base(ptr noundef %155, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %156 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i67 = getelementptr %struct.isp1760_hcd, ptr %157, i32 0, i32 3, i32 58
  %158 = ptrtoint ptr %arrayidx.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i.i.i67, align 4
  %call.i.i.i.i68 = tail call i32 @regmap_field_update_bits_base(ptr noundef %159, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %160 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i71 = getelementptr %struct.isp1760_hcd, ptr %161, i32 0, i32 3, i32 57
  %162 = ptrtoint ptr %arrayidx.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i.i.i71, align 4
  %call.i.i.i.i72 = tail call i32 @regmap_field_update_bits_base(ptr noundef %163, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %164 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i75 = getelementptr %struct.isp1760_hcd, ptr %165, i32 0, i32 3, i32 56
  %166 = ptrtoint ptr %arrayidx.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx.i.i.i75, align 4
  %call.i.i.i.i76 = tail call i32 @regmap_field_update_bits_base(ptr noundef %167, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %168 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i79 = getelementptr %struct.isp1760_hcd, ptr %169, i32 0, i32 3, i32 39
  %170 = ptrtoint ptr %arrayidx.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx.i.i.i79, align 4
  %call.i.i.i.i80 = tail call i32 @regmap_field_update_bits_base(ptr noundef %171, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %172 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i83 = getelementptr %struct.isp1760_hcd, ptr %173, i32 0, i32 3, i32 13
  %174 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx.i.i.i83, align 4
  %call.i.i.i.i84 = tail call i32 @regmap_field_update_bits_base(ptr noundef %175, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %176 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i87 = getelementptr %struct.isp1760_hcd, ptr %177, i32 0, i32 3, i32 14
  %178 = ptrtoint ptr %arrayidx.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx.i.i.i87, align 4
  %call.i.i.i.i88 = tail call i32 @regmap_field_update_bits_base(ptr noundef %179, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call3 = tail call fastcc i32 @isp1760_hcd_set_and_wait(ptr noundef %hcd, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @down_write(ptr noundef nonnull @ehci_cf_port_reset_rwsem) #7
  %call7 = tail call fastcc i32 @isp1760_hcd_set_and_wait(ptr noundef %hcd, i32 noundef 18)
  tail call void @up_write(ptr noundef nonnull @ehci_cf_port_reset_rwsem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %hcd, ptr @errata2_timer_hcd, align 4
  tail call void @init_timer_key(ptr noundef nonnull @errata2_timer, ptr noundef nonnull @errata2_function, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @isp1760_run.__key) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %180 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %180, 20
  store i32 %add, ptr getelementptr inbounds (%struct.timer_list, ptr @errata2_timer, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @errata2_timer) #7
  %181 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %183 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 -1, ptr %val.i.i, align 4, !annotation !126
  %arrayidx.i.i = getelementptr %struct.isp1760_hcd, ptr %182, i32 0, i32 3, i32 40
  %184 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i90 = call i32 @regmap_field_read(ptr noundef %185, ptr noundef nonnull %val.i.i) #7
  %186 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %188 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i91) #7
  %190 = ptrtoint ptr %val.i.i91 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -1, ptr %val.i.i91, align 4, !annotation !126
  %arrayidx.i.i94 = getelementptr %struct.isp1760_hcd, ptr %189, i32 0, i32 3, i32 41
  %191 = ptrtoint ptr %arrayidx.i.i94 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx.i.i94, align 4
  %call.i.i95 = call i32 @regmap_field_read(ptr noundef %192, ptr noundef nonnull %val.i.i91) #7
  %193 = ptrtoint ptr %val.i.i91 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %val.i.i91, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i91) #7
  %195 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i96) #7
  %197 = ptrtoint ptr %val.i.i96 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 -1, ptr %val.i.i96, align 4, !annotation !126
  %arrayidx.i.i99 = getelementptr %struct.isp1760_hcd, ptr %196, i32 0, i32 3, i32 42
  %198 = ptrtoint ptr %arrayidx.i.i99 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx.i.i99, align 4
  %call.i.i100 = call i32 @regmap_field_read(ptr noundef %199, ptr noundef nonnull %val.i.i96) #7
  %200 = ptrtoint ptr %val.i.i96 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %val.i.i96, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i96) #7
  %202 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %203, ptr noundef nonnull @.str.24, i32 noundef %187, i32 noundef %194, i32 noundef %201) #11
  %204 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i103 = getelementptr %struct.isp1760_hcd, ptr %205, i32 0, i32 3, i32 27
  %206 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx.i.i103, align 4
  %call.i.i.i104 = call i32 @regmap_field_update_bits_base(ptr noundef %207, i32 noundef -1, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %208 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i108 = getelementptr %struct.isp1760_hcd, ptr %209, i32 0, i32 3, i32 24
  %210 = ptrtoint ptr %arrayidx.i.i108 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx.i.i108, align 4
  %call.i.i.i109 = call i32 @regmap_field_update_bits_base(ptr noundef %211, i32 noundef -1, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %212 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i113 = getelementptr %struct.isp1760_hcd, ptr %213, i32 0, i32 3, i32 21
  %214 = ptrtoint ptr %arrayidx.i.i113 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx.i.i113, align 4
  %call.i.i.i114 = call i32 @regmap_field_update_bits_base(ptr noundef %215, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %216 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i118 = getelementptr %struct.isp1760_hcd, ptr %217, i32 0, i32 3, i32 26
  %218 = ptrtoint ptr %arrayidx.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx.i.i.i118, align 4
  %call.i.i.i.i119 = call i32 @regmap_field_update_bits_base(ptr noundef %219, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %220 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i122 = getelementptr %struct.isp1760_hcd, ptr %221, i32 0, i32 3, i32 23
  %222 = ptrtoint ptr %arrayidx.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx.i.i.i122, align 4
  %call.i.i.i.i123 = call i32 @regmap_field_update_bits_base(ptr noundef %223, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %224 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i126 = getelementptr %struct.isp1760_hcd, ptr %225, i32 0, i32 3, i32 20
  %226 = ptrtoint ptr %arrayidx.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx.i.i.i126, align 4
  %call.i.i.i.i127 = call i32 @regmap_field_update_bits_base(ptr noundef %227, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %228 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i130 = getelementptr %struct.isp1760_hcd, ptr %229, i32 0, i32 3, i32 49
  %230 = ptrtoint ptr %arrayidx.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %arrayidx.i.i.i130, align 4
  %call.i.i.i.i131 = call i32 @regmap_field_update_bits_base(ptr noundef %231, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %232 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i134 = getelementptr %struct.isp1760_hcd, ptr %233, i32 0, i32 3, i32 48
  %234 = ptrtoint ptr %arrayidx.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx.i.i.i134, align 4
  %call.i.i.i.i135 = call i32 @regmap_field_update_bits_base(ptr noundef %235, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call6.i, %if.then.cleanup_crit_edge ], [ %call8.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp1760_stop(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %call1 = tail call i32 @del_timer(ptr noundef nonnull @errata2_timer) #7
  %call2 = tail call i32 @isp1760_hub_control(ptr noundef %hcd, i16 noundef zeroext 8961, i16 noundef zeroext 8, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0)
  tail call void @msleep(i32 noundef 20) #7
  %lock = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %call3 = tail call fastcc i32 @ehci_reset(ptr noundef %hcd)
  %2 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.isp1760_hcd, ptr %3, i32 0, i32 3, i32 39
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %6 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i.i12 = getelementptr %struct.isp1760_hcd, ptr %7, i32 0, i32 3, i32 18
  %8 = ptrtoint ptr %arrayidx.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i12, align 4
  %call.i.i.i.i13 = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp1760_shutdown(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @isp1760_stop(ptr noundef %hcd)
  %hcd_priv.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 3, i32 39
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %4 = ptrtoint ptr %hcd_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcd_priv.i.i.i, align 8
  %arrayidx.i.i.i5 = getelementptr %struct.isp1760_hcd, ptr %5, i32 0, i32 3, i32 15
  %6 = ptrtoint ptr %arrayidx.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i.i5, align 4
  %call.i.i.i.i6 = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_get_frame(ptr nocapture noundef readonly %hcd) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %2 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i.i, align 4, !annotation !126
  %arrayidx.i.i = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 3, i32 17
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %4, ptr noundef nonnull %val.i.i) #7
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %shr = lshr i32 %6, 3
  %periodic_size = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %periodic_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %periodic_size, align 4
  %rem = urem i32 %shr, %8
  ret i32 %rem
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_urb_enqueue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) #2 align 64 {
entry:
  %new_qtds = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_qtds) #7
  %2 = getelementptr inbounds %struct.list_head, ptr %new_qtds, i32 0, i32 1
  %3 = ptrtoint ptr %new_qtds to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %new_qtds, ptr %new_qtds, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %new_qtds, ptr %2, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %5 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %6, 30
  %7 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %entry.unreachabledefault [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 1, label %sw.bb5
    i32 0, label %do.end
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %qh_list = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx4 = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 12, i32 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %interval = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %8 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %sw.bb5.cleanup_crit_edge, label %if.end

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7 = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 12, i32 2
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #11
  br label %cleanup

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  %ep_queue.0 = phi ptr [ %arrayidx7, %if.end ], [ %arrayidx4, %sw.bb2 ], [ %qh_list, %sw.bb ]
  %and15 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %sw.epilog.if.end17_crit_edge, label %if.then16

sw.epilog.if.end17_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %actual_length, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %sw.epilog.if.end17_crit_edge
  %13 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hcd_priv.i, align 8
  %memory_layout.i = getelementptr inbounds %struct.isp1760_hcd, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %memory_layout.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %memory_layout.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transfer_buffer.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end17.if.end22.i_crit_edge

if.end17.if.end22.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.end17
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transfer_buffer_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.not.i = icmp eq i32 %20, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end22.i_crit_edge, label %do.end.i

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hcd, align 8
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %23 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %transfer_dma.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.33, i32 noundef %24, i32 noundef %20) #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1792, i32 noundef 9, ptr noundef null) #7
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end.i, %land.lhs.true.i.if.end22.i_crit_edge, %if.end17.if.end22.i_crit_edge
  %25 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pipe, align 4
  %27 = trunc i32 %26 to i8
  %28 = lshr i8 %27, 7
  %shr.mask.i = and i32 %26, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask.i)
  %cmp.i = icmp eq i32 %shr.mask.i, -2147483648
  br i1 %cmp.i, label %if.then28.i, label %if.end22.i.if.end38.i_crit_edge

if.end22.i.if.end38.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then28.i:                                      ; preds = %if.end22.i
  %29 = load ptr, ptr @qtd_cachep, align 4
  %or.i.i.i = or i32 %mem_flags, 256
  %call.i.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %29, i32 noundef %or.i.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then28.i.cleanup112.i_crit_edge, label %if.end32.i

if.then28.i.cleanup112.i_crit_edge:               ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112.i

if.end32.i:                                       ; preds = %if.then28.i
  %qtd_list.i.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %qtd_list.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %qtd_list.i.i, ptr %qtd_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %qtd_list.i.i, ptr %prev.i.i.i, align 8
  %urb1.i.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %urb1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %urb, ptr %urb1.i.i, align 4
  %33 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %call.i.i.i, align 8
  %status.i.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %status.i.i, align 8
  %actual_length.i.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %actual_length.i.i, align 4
  %setup_packet.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %36 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %setup_packet.i, align 4
  %data_buffer.i.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %data_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %data_buffer.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %length.i.i, align 8
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %2, align 4
  %call.i.i173.i = call zeroext i1 @__list_add_valid(ptr noundef %qtd_list.i.i, ptr noundef %41, ptr noundef nonnull %new_qtds) #7
  br i1 %call.i.i173.i, label %if.end.i.i.i, label %if.end32.i.list_add_tail.exit.i_crit_edge

if.end32.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %qtd_list.i.i, ptr %2, align 4
  %43 = ptrtoint ptr %qtd_list.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %new_qtds, ptr %qtd_list.i.i, align 4
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev.i.i.i, align 8
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %qtd_list.i.i, ptr %41, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end32.i.list_add_tail.exit.i_crit_edge
  %transfer_buffer_length34.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %46 = ptrtoint ptr %transfer_buffer_length34.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %transfer_buffer_length34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp35.i = icmp eq i32 %47, 0
  %spec.select.i = select i1 %cmp35.i, i8 1, i8 %28
  br label %if.end38.i

if.end38.i:                                       ; preds = %list_add_tail.exit.i, %if.end22.i.if.end38.i_crit_edge
  %packet_type.1.i = phi i8 [ %28, %if.end22.i.if.end38.i_crit_edge ], [ %spec.select.i, %list_add_tail.exit.i ]
  %dev.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %50 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pipe, align 4
  %52 = lshr i32 %51, 15
  %and.i.i = and i32 %52, 15
  %53 = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i174.not.i = icmp eq i32 %53, 0
  %arrayidx.i.i = getelementptr %struct.usb_device, ptr %49, i32 0, i32 22, i32 %and.i.i
  %arrayidx57.i.i = getelementptr %struct.usb_device, ptr %49, i32 0, i32 21, i32 %and.i.i
  %ep.0.in.i.i = select i1 %tobool.not.i174.not.i, ptr %arrayidx.i.i, ptr %arrayidx57.i.i
  %54 = ptrtoint ptr %ep.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %ep.0.i.i = load ptr, ptr %ep.0.in.i.i, align 4
  %tobool59.not.i.i = icmp eq ptr %ep.0.i.i, null
  br i1 %tobool59.not.i.i, label %if.end38.i.usb_maxpacket.exit.i_crit_edge, label %if.end61.i.i

if.end38.i.usb_maxpacket.exit.i_crit_edge:        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_maxpacket.exit.i

if.end61.i.i:                                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %57 = and i16 %56, -249
  %58 = call i16 @llvm.bswap.i16(i16 %57) #7
  br label %usb_maxpacket.exit.i

usb_maxpacket.exit.i:                             ; preds = %if.end61.i.i, %if.end38.i.usb_maxpacket.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %58, %if.end61.i.i ], [ 0, %if.end38.i.usb_maxpacket.exit.i_crit_edge ]
  %and46.i = zext i16 %retval.0.i.i to i32
  %59 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %transfer_buffer.i, align 4
  %transfer_buffer_length48.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %61 = ptrtoint ptr %transfer_buffer_length48.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %transfer_buffer_length48.i, align 4
  %or.i.i176.i = or i32 %mem_flags, 256
  %arrayidx.i = getelementptr %struct.isp1760_memory_layout, ptr %16, i32 0, i32 1, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %list_add_tail.exit192.i.for.cond.i_crit_edge, %usb_maxpacket.exit.i
  %buf.0.i = phi ptr [ %60, %usb_maxpacket.exit.i ], [ %add.ptr.i, %list_add_tail.exit192.i.for.cond.i_crit_edge ]
  %len.0.i = phi i32 [ %62, %usb_maxpacket.exit.i ], [ %sub.i, %list_add_tail.exit192.i.for.cond.i_crit_edge ]
  %63 = load ptr, ptr @qtd_cachep, align 4
  %call.i.i177.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %63, i32 noundef %or.i.i176.i) #7
  %tobool.not.i178.i = icmp eq ptr %call.i.i177.i, null
  br i1 %tobool.not.i178.i, label %for.cond.i.cleanup112.i_crit_edge, label %if.end52.i

for.cond.i.cleanup112.i_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112.i

if.end52.i:                                       ; preds = %for.cond.i
  %qtd_list.i179.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i177.i, i32 0, i32 3
  %64 = ptrtoint ptr %qtd_list.i179.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %qtd_list.i179.i, ptr %qtd_list.i179.i, align 4
  %prev.i.i180.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i177.i, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %prev.i.i180.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %qtd_list.i179.i, ptr %prev.i.i180.i, align 8
  %urb1.i181.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i177.i, i32 0, i32 4
  %66 = ptrtoint ptr %urb1.i181.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %urb, ptr %urb1.i181.i, align 4
  %67 = ptrtoint ptr %call.i.i177.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %packet_type.1.i, ptr %call.i.i177.i, align 8
  %status.i182.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i177.i, i32 0, i32 7
  %68 = ptrtoint ptr %status.i182.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %status.i182.i, align 8
  %actual_length.i183.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i177.i, i32 0, i32 6
  %69 = ptrtoint ptr %actual_length.i183.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %actual_length.i183.i, align 4
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i, align 4
  %72 = call i32 @llvm.umin.i32(i32 %len.0.i, i32 %71) #7
  %data_buffer.i186.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i177.i, i32 0, i32 1
  %73 = ptrtoint ptr %data_buffer.i186.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %buf.0.i, ptr %data_buffer.i186.i, align 4
  %length.i187.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i177.i, i32 0, i32 5
  %74 = ptrtoint ptr %length.i187.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %72, ptr %length.i187.i, align 8
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %2, align 4
  %call.i.i189.i = call zeroext i1 @__list_add_valid(ptr noundef %qtd_list.i179.i, ptr noundef %76, ptr noundef nonnull %new_qtds) #7
  br i1 %call.i.i189.i, label %if.end.i.i191.i, label %if.end52.i.list_add_tail.exit192.i_crit_edge

if.end52.i.list_add_tail.exit192.i_crit_edge:     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit192.i

if.end.i.i191.i:                                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %qtd_list.i179.i, ptr %2, align 4
  %78 = ptrtoint ptr %qtd_list.i179.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %new_qtds, ptr %qtd_list.i179.i, align 4
  %79 = ptrtoint ptr %prev.i.i180.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev.i.i180.i, align 8
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %qtd_list.i179.i, ptr %76, align 4
  br label %list_add_tail.exit192.i

list_add_tail.exit192.i:                          ; preds = %if.end.i.i191.i, %if.end52.i.list_add_tail.exit192.i_crit_edge
  %sub.i = sub i32 %len.0.i, %72
  %add.ptr.i = getelementptr i8, ptr %buf.0.i, i32 %72
  %cmp62.i = icmp slt i32 %sub.i, 1
  br i1 %cmp62.i, label %for.end.i, label %list_add_tail.exit192.i.for.cond.i_crit_edge

list_add_tail.exit192.i.for.cond.i_crit_edge:     ; preds = %list_add_tail.exit192.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.i:                                        ; preds = %list_add_tail.exit192.i
  %81 = ptrtoint ptr %transfer_buffer_length48.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %transfer_buffer_length48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp67.not.i = icmp eq i32 %82, 0
  br i1 %cmp67.not.i, label %for.end.i.packetize_urb.exit_crit_edge, label %if.then69.i

for.end.i.packetize_urb.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %packetize_urb.exit

if.then69.i:                                      ; preds = %for.end.i
  %83 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pipe, align 4
  %shr71.i = lshr i32 %84, 30
  %85 = zext i32 %shr71.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %shr71.i, label %if.then69.i.packetize_urb.exit_crit_edge [
    i32 2, label %if.end98.thread220.i
    i32 3, label %land.lhs.true88.i
  ]

if.then69.i.packetize_urb.exit_crit_edge:         ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %packetize_urb.exit

if.end98.thread220.i:                             ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %packet_type.1.i)
  %cmp77.i = icmp ne i8 %packet_type.1.i, 1
  %.170.i = zext i1 %cmp77.i to i8
  br label %if.then100.i

land.lhs.true88.i:                                ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i.i)
  %tobool89.not.i = icmp eq i16 %retval.0.i.i, 0
  br i1 %tobool89.not.i, label %land.lhs.true88.i.packetize_urb.exit_crit_edge, label %land.lhs.true90.i

land.lhs.true88.i.packetize_urb.exit_crit_edge:   ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %packetize_urb.exit

land.lhs.true90.i:                                ; preds = %land.lhs.true88.i
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %86 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %transfer_flags.i, align 4
  %and91.i = and i32 %87, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %land.lhs.true90.i.packetize_urb.exit_crit_edge, label %if.end98.i

land.lhs.true90.i.packetize_urb.exit_crit_edge:   ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %packetize_urb.exit

if.end98.i:                                       ; preds = %land.lhs.true90.i
  %rem.i = urem i32 %82, %and46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool95.not.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool95.not.not.i, label %if.end98.i.if.then100.i_crit_edge, label %if.end98.i.packetize_urb.exit_crit_edge

if.end98.i.packetize_urb.exit_crit_edge:          ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %packetize_urb.exit

if.end98.i.if.then100.i_crit_edge:                ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then100.i

if.then100.i:                                     ; preds = %if.end98.i.if.then100.i_crit_edge, %if.end98.thread220.i
  %packet_type.2223.i = phi i8 [ %.170.i, %if.end98.thread220.i ], [ %packet_type.1.i, %if.end98.i.if.then100.i_crit_edge ]
  %88 = load ptr, ptr @qtd_cachep, align 4
  %call.i.i194.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %88, i32 noundef %or.i.i176.i) #7
  %tobool.not.i195.i = icmp eq ptr %call.i.i194.i, null
  br i1 %tobool.not.i195.i, label %if.then100.i.cleanup112.i_crit_edge, label %if.end104.i

if.then100.i.cleanup112.i_crit_edge:              ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup112.i

if.end104.i:                                      ; preds = %if.then100.i
  %qtd_list.i196.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i194.i, i32 0, i32 3
  %89 = ptrtoint ptr %qtd_list.i196.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %qtd_list.i196.i, ptr %qtd_list.i196.i, align 4
  %prev.i.i197.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i194.i, i32 0, i32 3, i32 1
  %90 = ptrtoint ptr %prev.i.i197.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %qtd_list.i196.i, ptr %prev.i.i197.i, align 8
  %urb1.i198.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i194.i, i32 0, i32 4
  %91 = ptrtoint ptr %urb1.i198.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %urb, ptr %urb1.i198.i, align 4
  %92 = ptrtoint ptr %call.i.i194.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %packet_type.2223.i, ptr %call.i.i194.i, align 8
  %status.i199.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i194.i, i32 0, i32 7
  %93 = ptrtoint ptr %status.i199.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %status.i199.i, align 8
  %actual_length.i200.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i194.i, i32 0, i32 6
  %94 = ptrtoint ptr %actual_length.i200.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %actual_length.i200.i, align 4
  %data_buffer.i203.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i194.i, i32 0, i32 1
  %95 = ptrtoint ptr %data_buffer.i203.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %data_buffer.i203.i, align 4
  %length.i204.i = getelementptr inbounds %struct.isp1760_qtd, ptr %call.i.i194.i, i32 0, i32 5
  %96 = ptrtoint ptr %length.i204.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %length.i204.i, align 8
  %97 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %2, align 4
  %call.i.i206.i = call zeroext i1 @__list_add_valid(ptr noundef %qtd_list.i196.i, ptr noundef %98, ptr noundef nonnull %new_qtds) #7
  br i1 %call.i.i206.i, label %if.end.i.i208.i, label %if.end104.i.packetize_urb.exit_crit_edge

if.end104.i.packetize_urb.exit_crit_edge:         ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %packetize_urb.exit

if.end.i.i208.i:                                  ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %qtd_list.i196.i, ptr %2, align 4
  %100 = ptrtoint ptr %qtd_list.i196.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %new_qtds, ptr %qtd_list.i196.i, align 4
  %101 = ptrtoint ptr %prev.i.i197.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev.i.i197.i, align 8
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %qtd_list.i196.i, ptr %98, align 4
  br label %packetize_urb.exit

cleanup112.i:                                     ; preds = %if.then100.i.cleanup112.i_crit_edge, %for.cond.i.cleanup112.i_crit_edge, %if.then28.i.cleanup112.i_crit_edge
  %103 = ptrtoint ptr %new_qtds to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %new_qtds, align 4
  %cmp.not19.i.i = icmp eq ptr %104, %new_qtds
  br i1 %cmp.not19.i.i, label %cleanup112.i.packetize_urb.exit_crit_edge, label %cleanup112.i.for.body.i.i_crit_edge

cleanup112.i.for.body.i.i_crit_edge:              ; preds = %cleanup112.i
  br label %for.body.i.i

cleanup112.i.packetize_urb.exit_crit_edge:        ; preds = %cleanup112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %packetize_urb.exit

for.body.i.i:                                     ; preds = %qtd_free.exit.i.i.for.body.i.i_crit_edge, %cleanup112.i.for.body.i.i_crit_edge
  %.pn.in20.i.i = phi ptr [ %.pn.i.i, %qtd_free.exit.i.i.for.body.i.i_crit_edge ], [ %104, %cleanup112.i.for.body.i.i_crit_edge ]
  %qtd.0.i.i = getelementptr i8, ptr %.pn.in20.i.i, i32 -12
  %105 = ptrtoint ptr %.pn.in20.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pn.i.i = load ptr, ptr %.pn.in20.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i.i, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i.i.i, align 4
  %108 = ptrtoint ptr %.pn.in20.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %.pn.in20.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev1.i.i.i.i.i, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %107, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %112 = ptrtoint ptr %.pn.in20.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i.i, align 4
  %prev.i.i210.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %prev.i.i210.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i210.i, align 4
  %payload_addr.i.i.i = getelementptr i8, ptr %.pn.in20.i.i, i32 -4
  %114 = ptrtoint ptr %payload_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %payload_addr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i.i.i = icmp eq i32 %115, 0
  br i1 %tobool.not.i.i.i, label %list_del.exit.i.i.qtd_free.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !128

list_del.exit.i.i.qtd_free.exit.i.i_crit_edge:    ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtd_free.exit.i.i

do.end.i.i.i:                                     ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 997, i32 noundef 9, ptr noundef null) #7
  br label %qtd_free.exit.i.i

qtd_free.exit.i.i:                                ; preds = %do.end.i.i.i, %list_del.exit.i.i.qtd_free.exit.i.i_crit_edge
  %116 = load ptr, ptr @qtd_cachep, align 4
  call void @kmem_cache_free(ptr noundef %116, ptr noundef %qtd.0.i.i) #7
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %new_qtds
  br i1 %cmp.not.i.i, label %qtd_free.exit.i.i.packetize_urb.exit_crit_edge, label %qtd_free.exit.i.i.for.body.i.i_crit_edge

qtd_free.exit.i.i.for.body.i.i_crit_edge:         ; preds = %qtd_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

qtd_free.exit.i.i.packetize_urb.exit_crit_edge:   ; preds = %qtd_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %packetize_urb.exit

packetize_urb.exit:                               ; preds = %qtd_free.exit.i.i.packetize_urb.exit_crit_edge, %cleanup112.i.packetize_urb.exit_crit_edge, %if.end.i.i208.i, %if.end104.i.packetize_urb.exit_crit_edge, %if.end98.i.packetize_urb.exit_crit_edge, %land.lhs.true90.i.packetize_urb.exit_crit_edge, %land.lhs.true88.i.packetize_urb.exit_crit_edge, %if.then69.i.packetize_urb.exit_crit_edge, %for.end.i.packetize_urb.exit_crit_edge
  %117 = ptrtoint ptr %new_qtds to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile ptr, ptr %new_qtds, align 4
  %cmp.i105.not = icmp eq ptr %118, %new_qtds
  br i1 %cmp.i105.not, label %packetize_urb.exit.cleanup_crit_edge, label %do.body23

packetize_urb.exit.cleanup_crit_edge:             ; preds = %packetize_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body23:                                        ; preds = %packetize_urb.exit
  %lock = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 6
  %call26 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  %119 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool32.not = icmp eq i32 %and1.i, 0
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.body23
  %121 = ptrtoint ptr %new_qtds to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %new_qtds, align 4
  %cmp.not19.i = icmp eq ptr %122, %new_qtds
  br i1 %cmp.not19.i, label %if.then33.out_crit_edge, label %if.then33.for.body.i_crit_edge

if.then33.for.body.i_crit_edge:                   ; preds = %if.then33
  br label %for.body.i

if.then33.out_crit_edge:                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.i:                                       ; preds = %qtd_free.exit.i.for.body.i_crit_edge, %if.then33.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %qtd_free.exit.i.for.body.i_crit_edge ], [ %122, %if.then33.for.body.i_crit_edge ]
  %qtd.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -12
  %123 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  %call.i.i.i106 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #7
  br i1 %call.i.i.i106, label %if.end.i.i.i108, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i108:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i107 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i.i107, align 4
  %126 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev1.i.i.i.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %127, ptr %125, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i108, %for.body.i.list_del.exit.i_crit_edge
  %130 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i, align 4
  %prev.i.i109 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %131 = ptrtoint ptr %prev.i.i109 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i109, align 4
  %payload_addr.i.i = getelementptr i8, ptr %.pn.in20.i, i32 -4
  %132 = ptrtoint ptr %payload_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %payload_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i.i110 = icmp eq i32 %133, 0
  br i1 %tobool.not.i.i110, label %list_del.exit.i.qtd_free.exit.i_crit_edge, label %do.end.i.i, !prof !128

list_del.exit.i.qtd_free.exit.i_crit_edge:        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtd_free.exit.i

do.end.i.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 997, i32 noundef 9, ptr noundef null) #7
  br label %qtd_free.exit.i

qtd_free.exit.i:                                  ; preds = %do.end.i.i, %list_del.exit.i.qtd_free.exit.i_crit_edge
  %134 = load ptr, ptr @qtd_cachep, align 4
  call void @kmem_cache_free(ptr noundef %134, ptr noundef %qtd.0.i) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %new_qtds
  br i1 %cmp.not.i, label %qtd_free.exit.i.out_crit_edge, label %qtd_free.exit.i.for.body.i_crit_edge

qtd_free.exit.i.for.body.i_crit_edge:             ; preds = %qtd_free.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

qtd_free.exit.i.out_crit_edge:                    ; preds = %qtd_free.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end34:                                         ; preds = %do.body23
  %call35 = call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end34
  %135 = ptrtoint ptr %new_qtds to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %new_qtds, align 4
  %cmp.not19.i112 = icmp eq ptr %136, %new_qtds
  br i1 %cmp.not19.i112, label %if.then37.out_crit_edge, label %if.then37.for.body.i117_crit_edge

if.then37.for.body.i117_crit_edge:                ; preds = %if.then37
  br label %for.body.i117

if.then37.out_crit_edge:                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.i117:                                    ; preds = %qtd_free.exit.i127.for.body.i117_crit_edge, %if.then37.for.body.i117_crit_edge
  %.pn.in20.i113 = phi ptr [ %.pn.i115, %qtd_free.exit.i127.for.body.i117_crit_edge ], [ %136, %if.then37.for.body.i117_crit_edge ]
  %qtd.0.i114 = getelementptr i8, ptr %.pn.in20.i113, i32 -12
  %137 = ptrtoint ptr %.pn.in20.i113 to i32
  call void @__asan_load4_noabort(i32 %137)
  %.pn.i115 = load ptr, ptr %.pn.in20.i113, align 4
  %call.i.i.i116 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i113) #7
  br i1 %call.i.i.i116, label %if.end.i.i.i120, label %for.body.i117.list_del.exit.i124_crit_edge

for.body.i117.list_del.exit.i124_crit_edge:       ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i124

if.end.i.i.i120:                                  ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i118 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i113, i32 0, i32 1
  %138 = ptrtoint ptr %prev.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %prev.i.i.i118, align 4
  %140 = ptrtoint ptr %.pn.in20.i113 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %.pn.in20.i113, align 4
  %prev1.i.i.i.i119 = getelementptr inbounds %struct.list_head, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %prev1.i.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %139, ptr %prev1.i.i.i.i119, align 4
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %141, ptr %139, align 4
  br label %list_del.exit.i124

list_del.exit.i124:                               ; preds = %if.end.i.i.i120, %for.body.i117.list_del.exit.i124_crit_edge
  %144 = ptrtoint ptr %.pn.in20.i113 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i113, align 4
  %prev.i.i121 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i113, i32 0, i32 1
  %145 = ptrtoint ptr %prev.i.i121 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i121, align 4
  %payload_addr.i.i122 = getelementptr i8, ptr %.pn.in20.i113, i32 -4
  %146 = ptrtoint ptr %payload_addr.i.i122 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %payload_addr.i.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i.i123 = icmp eq i32 %147, 0
  br i1 %tobool.not.i.i123, label %list_del.exit.i124.qtd_free.exit.i127_crit_edge, label %do.end.i.i125, !prof !128

list_del.exit.i124.qtd_free.exit.i127_crit_edge:  ; preds = %list_del.exit.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtd_free.exit.i127

do.end.i.i125:                                    ; preds = %list_del.exit.i124
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 997, i32 noundef 9, ptr noundef null) #7
  br label %qtd_free.exit.i127

qtd_free.exit.i127:                               ; preds = %do.end.i.i125, %list_del.exit.i124.qtd_free.exit.i127_crit_edge
  %148 = load ptr, ptr @qtd_cachep, align 4
  call void @kmem_cache_free(ptr noundef %148, ptr noundef %qtd.0.i114) #7
  %cmp.not.i126 = icmp eq ptr %.pn.i115, %new_qtds
  br i1 %cmp.not.i126, label %qtd_free.exit.i127.out_crit_edge, label %qtd_free.exit.i127.for.body.i117_crit_edge

qtd_free.exit.i127.for.body.i117_crit_edge:       ; preds = %qtd_free.exit.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i117

qtd_free.exit.i127.out_crit_edge:                 ; preds = %qtd_free.exit.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end38:                                         ; preds = %if.end34
  %ep = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %149 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ep, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %150, i32 0, i32 5
  %151 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hcpriv, align 4
  %tobool39.not = icmp eq ptr %152, null
  br i1 %tobool39.not, label %if.else, label %if.end38.for.cond_crit_edge

if.end38.for.cond_crit_edge:                      ; preds = %if.end38
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end38.for.cond_crit_edge
  %qhit.0.in = phi ptr [ %qhit.0, %for.body.for.cond_crit_edge ], [ %ep_queue.0, %if.end38.for.cond_crit_edge ]
  %153 = ptrtoint ptr %qhit.0.in to i32
  call void @__asan_load4_noabort(i32 %153)
  %qhit.0 = load ptr, ptr %qhit.0.in, align 4
  %cmp44.not = icmp eq ptr %qhit.0, %ep_queue.0
  br i1 %cmp44.not, label %if.then56.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %cmp46 = icmp eq ptr %qhit.0, %152
  br i1 %cmp46, label %for.body.if.end66_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.if.end66_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then56.critedge:                               ; preds = %for.cond
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ep_queue.0, i32 0, i32 1
  %154 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %152, ptr noundef %155, ptr noundef %ep_queue.0) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then56.critedge.if.end66_crit_edge

if.then56.critedge.if.end66_crit_edge:            ; preds = %if.then56.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.end.i.i:                                       ; preds = %if.then56.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %152, ptr %prev.i, align 4
  %157 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %ep_queue.0, ptr %152, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  %158 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %155, ptr %prev3.i.i, align 4
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %152, ptr %155, align 4
  br label %if.end66

if.else:                                          ; preds = %if.end38
  %160 = load ptr, ptr @qh_cachep, align 4
  %call.i.i130 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %160, i32 noundef 2848) #7
  %tobool.not.i131 = icmp eq ptr %call.i.i130, null
  br i1 %tobool.not.i131, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef %urb) #7
  call fastcc void @qtd_list_free(ptr noundef nonnull %new_qtds)
  br label %out

if.end62:                                         ; preds = %if.else
  %161 = ptrtoint ptr %call.i.i130 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %call.i.i130, ptr %call.i.i130, align 8
  %prev.i.i132 = getelementptr inbounds %struct.list_head, ptr %call.i.i130, i32 0, i32 1
  %162 = ptrtoint ptr %prev.i.i132 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call.i.i130, ptr %prev.i.i132, align 4
  %qtd_list.i = getelementptr inbounds %struct.isp1760_qh, ptr %call.i.i130, i32 0, i32 1
  %163 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %qtd_list.i, ptr %qtd_list.i, align 8
  %prev.i1.i = getelementptr inbounds %struct.isp1760_qh, ptr %call.i.i130, i32 0, i32 1, i32 1
  %164 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %qtd_list.i, ptr %prev.i1.i, align 4
  %slot.i = getelementptr inbounds %struct.isp1760_qh, ptr %call.i.i130, i32 0, i32 4
  %165 = ptrtoint ptr %slot.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -1, ptr %slot.i, align 8
  %prev.i133 = getelementptr inbounds %struct.list_head, ptr %ep_queue.0, i32 0, i32 1
  %166 = ptrtoint ptr %prev.i133 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %prev.i133, align 4
  %call.i.i134 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i130, ptr noundef %167, ptr noundef %ep_queue.0) #7
  br i1 %call.i.i134, label %if.end.i.i136, label %if.end62.list_add_tail.exit137_crit_edge

if.end62.list_add_tail.exit137_crit_edge:         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit137

if.end.i.i136:                                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %prev.i133 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call.i.i130, ptr %prev.i133, align 4
  %169 = ptrtoint ptr %call.i.i130 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %ep_queue.0, ptr %call.i.i130, align 8
  %170 = ptrtoint ptr %prev.i.i132 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %167, ptr %prev.i.i132, align 4
  %171 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %call.i.i130, ptr %167, align 4
  br label %list_add_tail.exit137

list_add_tail.exit137:                            ; preds = %if.end.i.i136, %if.end62.list_add_tail.exit137_crit_edge
  %172 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ep, align 4
  %hcpriv65 = getelementptr inbounds %struct.usb_host_endpoint, ptr %173, i32 0, i32 5
  %174 = ptrtoint ptr %hcpriv65 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call.i.i130, ptr %hcpriv65, align 4
  br label %if.end66

if.end66:                                         ; preds = %list_add_tail.exit137, %if.end.i.i, %if.then56.critedge.if.end66_crit_edge, %for.body.if.end66_crit_edge
  %qh.0 = phi ptr [ %call.i.i130, %list_add_tail.exit137 ], [ %152, %if.then56.critedge.if.end66_crit_edge ], [ %152, %if.end.i.i ], [ %152, %for.body.if.end66_crit_edge ]
  %175 = ptrtoint ptr %new_qtds to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile ptr, ptr %new_qtds, align 4
  %cmp.i.not.i = icmp eq ptr %176, %new_qtds
  br i1 %cmp.i.not.i, label %if.end66.list_splice_tail.exit_crit_edge, label %if.then.i

if.end66.list_splice_tail.exit_crit_edge:         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail.exit

if.then.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %qtd_list = getelementptr inbounds %struct.isp1760_qh, ptr %qh.0, i32 0, i32 1
  %prev.i138 = getelementptr inbounds %struct.isp1760_qh, ptr %qh.0, i32 0, i32 1, i32 1
  %177 = ptrtoint ptr %prev.i138 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %prev.i138, align 4
  %179 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %2, align 4
  %prev3.i.i139 = getelementptr inbounds %struct.list_head, ptr %176, i32 0, i32 1
  %181 = ptrtoint ptr %prev3.i.i139 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %178, ptr %prev3.i.i139, align 4
  %182 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %176, ptr %178, align 4
  %183 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %qtd_list, ptr %180, align 4
  store ptr %180, ptr %prev.i138, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i, %if.end66.list_splice_tail.exit_crit_edge
  call fastcc void @schedule_ptds(ptr noundef %hcd)
  br label %out

out:                                              ; preds = %list_splice_tail.exit, %if.then61, %qtd_free.exit.i127.out_crit_edge, %if.then37.out_crit_edge, %qtd_free.exit.i.out_crit_edge, %if.then33.out_crit_edge
  %retval1.0 = phi i32 [ 0, %list_splice_tail.exit ], [ -12, %if.then61 ], [ -108, %if.then33.out_crit_edge ], [ %call35, %if.then37.out_crit_edge ], [ -108, %qtd_free.exit.i.out_crit_edge ], [ %call35, %qtd_free.exit.i127.out_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call26) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %packetize_urb.exit.cleanup_crit_edge, %do.end, %sw.bb5.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %do.end ], [ %retval1.0, %out ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -12, %packetize_urb.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_qtds) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_urb_dequeue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #2 align 64 {
entry:
  %val.i.i77.i.i = alloca i32, align 4
  %val.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %lock = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call7 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %ep = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcpriv, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end.out_crit_edge, label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %if.end
  %qtd_list = getelementptr inbounds %struct.isp1760_qh, ptr %5, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end10
  %.pn.in = phi ptr [ %qtd_list, %if.end10 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp14.not = icmp eq ptr %.pn, %qtd_list
  br i1 %cmp14.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %urb16 = getelementptr i8, ptr %.pn, i32 8
  %7 = ptrtoint ptr %urb16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %urb16, align 4
  %cmp17 = icmp eq ptr %8, %urb
  br i1 %cmp17, label %for.body.lr.ph.i, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.lr.ph.i:                                 ; preds = %for.body
  %urb16.le = getelementptr i8, ptr %.pn, i32 8
  %9 = ptrtoint ptr %urb16.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urb16.le, align 4
  %slot.i.i = getelementptr inbounds %struct.isp1760_qh, ptr %5, i32 0, i32 4
  %pipe.i.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %if.end15.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %qtd_list52.i = phi ptr [ %.pn, %for.body.lr.ph.i ], [ %64, %if.end15.i.for.body.i_crit_edge ]
  %urb_was_running.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %urb_was_running.2.i, %if.end15.i.for.body.i_crit_edge ]
  %urb3.i = getelementptr i8, ptr %qtd_list52.i, i32 8
  %11 = ptrtoint ptr %urb3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %urb3.i, align 4
  %cmp4.not.i = icmp eq ptr %12, %10
  br i1 %cmp4.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %status.i = getelementptr i8, ptr %qtd_list52.i, i32 20
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp5.i = icmp ugt i32 %14, 1
  %spec.select.i = select i1 %cmp5.i, i32 1, i32 %urb_was_running.050.i
  %15 = ptrtoint ptr %qtd_list52.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qtd_list52.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %16, %qtd_list
  br i1 %cmp.i.not.i.i, label %if.end.i.land.lhs.true.i_crit_edge, label %last_qtd_of_urb.exit.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

last_qtd_of_urb.exit.i:                           ; preds = %if.end.i
  %urb4.i.i = getelementptr i8, ptr %16, i32 8
  %17 = ptrtoint ptr %urb4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urb4.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %10
  br i1 %cmp.i.not.i, label %last_qtd_of_urb.exit.i.if.end11.i_crit_edge, label %last_qtd_of_urb.exit.i.land.lhs.true.i_crit_edge

last_qtd_of_urb.exit.i.land.lhs.true.i_crit_edge: ; preds = %last_qtd_of_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

last_qtd_of_urb.exit.i.if.end11.i_crit_edge:      ; preds = %last_qtd_of_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %last_qtd_of_urb.exit.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp9.i = icmp ugt i32 %14, 2
  %spec.select43.i = select i1 %cmp9.i, i32 0, i32 %spec.select.i
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true.i, %last_qtd_of_urb.exit.i.if.end11.i_crit_edge
  %urb_was_running.2.i = phi i32 [ %spec.select.i, %last_qtd_of_urb.exit.i.if.end11.i_crit_edge ], [ %spec.select43.i, %land.lhs.true.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp13.i = icmp eq i32 %14, 2
  br i1 %cmp13.i, label %if.then14.i, label %if.end11.i.if.end15.i_crit_edge

if.end11.i.if.end15.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end11.i
  %19 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hcd_priv.i, align 8
  %21 = ptrtoint ptr %slot.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slot.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i44.i = icmp eq i32 %22, -1
  br i1 %cmp.i44.i, label %do.end.i.i, label %if.then14.i.if.end.i45.i_crit_edge, !prof !125

if.then14.i.if.end.i45.i_crit_edge:               ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i45.i

do.end.i.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1973, i32 noundef 9, ptr noundef null) #7
  %23 = ptrtoint ptr %slot.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load i32, ptr %slot.i.i, align 4
  br label %if.end.i45.i

if.end.i45.i:                                     ; preds = %do.end.i.i, %if.then14.i.if.end.i45.i_crit_edge
  %24 = phi i32 [ %.pr.i, %do.end.i.i ], [ %22, %if.then14.i.if.end.i45.i_crit_edge ]
  %25 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pipe.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %switch.i.i = icmp slt i32 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp26.not.i.i = icmp eq i32 %24, -1
  br i1 %switch.i.i, label %if.then24.i.i, label %if.else.i.i

if.then24.i.i:                                    ; preds = %if.end.i45.i
  br i1 %cmp26.not.i.i, label %if.then24.i.i.if.end30.i.i_crit_edge, label %if.then27.i.i

if.then24.i.i.if.end30.i.i_crit_edge:             ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i.i

if.then27.i.i:                                    ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i.i) #7
  %29 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %val.i.i.i.i, align 4, !annotation !126
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_hcd, ptr %28, i32 0, i32 3, i32 26
  %30 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @regmap_field_read(ptr noundef %31, ptr noundef nonnull %val.i.i.i.i) #7
  %32 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i) #7
  %34 = ptrtoint ptr %slot.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %slot.i.i, align 4
  %shl.i.i = shl nuw i32 1, %35
  %or.i.i = or i32 %shl.i.i, %33
  %36 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i76.i.i = getelementptr %struct.isp1760_hcd, ptr %37, i32 0, i32 3, i32 26
  %38 = ptrtoint ptr %arrayidx.i.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i76.i.i, align 4
  %call.i.i.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %39, i32 noundef -1, i32 noundef %or.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748) #7
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then27.i.i, %if.then24.i.i.if.end30.i.i_crit_edge
  %atl_slots.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %20, i32 0, i32 7
  br label %kill_transfer.exit.i

if.else.i.i:                                      ; preds = %if.end.i45.i
  br i1 %cmp26.not.i.i, label %if.else.i.i.if.end43.i.i_crit_edge, label %if.then38.i.i

if.else.i.i.if.end43.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i.i

if.then38.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i77.i.i) #7
  %43 = ptrtoint ptr %val.i.i77.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %val.i.i77.i.i, align 4, !annotation !126
  %arrayidx.i.i80.i.i = getelementptr %struct.isp1760_hcd, ptr %42, i32 0, i32 3, i32 23
  %44 = ptrtoint ptr %arrayidx.i.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i80.i.i, align 4
  %call.i.i81.i.i = call i32 @regmap_field_read(ptr noundef %45, ptr noundef nonnull %val.i.i77.i.i) #7
  %46 = ptrtoint ptr %val.i.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i.i77.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i77.i.i) #7
  %48 = ptrtoint ptr %slot.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %slot.i.i, align 4
  %shl41.i.i = shl nuw i32 1, %49
  %or42.i.i = or i32 %shl41.i.i, %47
  %50 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i84.i.i = getelementptr %struct.isp1760_hcd, ptr %51, i32 0, i32 3, i32 23
  %52 = ptrtoint ptr %arrayidx.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i84.i.i, align 4
  %call.i.i.i85.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %53, i32 noundef -1, i32 noundef %or42.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then38.i.i, %if.else.i.i.if.end43.i.i_crit_edge
  %int_slots.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %20, i32 0, i32 9
  br label %kill_transfer.exit.i

kill_transfer.exit.i:                             ; preds = %if.end43.i.i, %if.end30.i.i
  %int_slots.sink88.i.i = phi ptr [ %int_slots.i.i, %if.end43.i.i ], [ %atl_slots.i.i, %if.end30.i.i ]
  %54 = ptrtoint ptr %int_slots.sink88.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %int_slots.sink88.i.i, align 4
  %56 = ptrtoint ptr %slot.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %slot.i.i, align 4
  %arrayidx45.i.i = getelementptr %struct.isp1760_slotinfo, ptr %55, i32 %57
  %58 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %arrayidx45.i.i, align 4
  %59 = load ptr, ptr %int_slots.sink88.i.i, align 4
  %60 = load i32, ptr %slot.i.i, align 4
  %qtd50.i.i = getelementptr %struct.isp1760_slotinfo, ptr %59, i32 %60, i32 1
  %61 = ptrtoint ptr %qtd50.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %qtd50.i.i, align 4
  store i32 -1, ptr %slot.i.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %kill_transfer.exit.i, %if.end11.i.if.end15.i_crit_edge
  %62 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4, ptr %status.i, align 4
  %63 = ptrtoint ptr %qtd_list52.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %qtd_list52.i, align 4
  %cmp.not.i = icmp eq ptr %64, %qtd_list
  br i1 %cmp.not.i, label %if.end15.i.for.end.i_crit_edge, label %if.end15.i.for.body.i_crit_edge

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end15.i.for.end.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %if.end15.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %urb_was_running.0.lcssa.i = phi i32 [ %urb_was_running.2.i, %if.end15.i.for.end.i_crit_edge ], [ %urb_was_running.050.i, %for.body.i.for.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 8
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp18.not.i = icmp eq i32 %68, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %urb_was_running.0.lcssa.i)
  %tobool20.not.i = icmp eq i32 %urb_was_running.0.lcssa.i, 0
  %or.cond.i = select i1 %cmp18.not.i, i1 true, i1 %tobool20.not.i
  br i1 %or.cond.i, label %for.end.i.dequeue_urb_from_qtd.exit_crit_edge, label %if.then21.i

for.end.i.dequeue_urb_from_qtd.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dequeue_urb_from_qtd.exit

if.then21.i:                                      ; preds = %for.end.i
  %tt_buffer_dirty.i = getelementptr inbounds %struct.isp1760_qh, ptr %5, i32 0, i32 5
  %69 = ptrtoint ptr %tt_buffer_dirty.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %tt_buffer_dirty.i, align 4
  %call22.i = call i32 @usb_hub_clear_tt_buffer(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then21.i.dequeue_urb_from_qtd.exit_crit_edge, label %if.then24.i

if.then21.i.dequeue_urb_from_qtd.exit_crit_edge:  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dequeue_urb_from_qtd.exit

if.then24.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %tt_buffer_dirty.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %tt_buffer_dirty.i, align 4
  br label %dequeue_urb_from_qtd.exit

dequeue_urb_from_qtd.exit:                        ; preds = %if.then24.i, %if.then21.i.dequeue_urb_from_qtd.exit_crit_edge, %for.end.i.dequeue_urb_from_qtd.exit_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #7
  br i1 %call.i.i, label %if.end.i.i, label %dequeue_urb_from_qtd.exit.__list_del_entry.exit.i_crit_edge

dequeue_urb_from_qtd.exit.__list_del_entry.exit.i_crit_edge: ; preds = %dequeue_urb_from_qtd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %dequeue_urb_from_qtd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i, align 4
  %73 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %dequeue_urb_from_qtd.exit.__list_del_entry.exit.i_crit_edge
  %77 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %qtd_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn, ptr noundef %qtd_list, ptr noundef %78) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.end_crit_edge

__list_del_entry.exit.i.for.end_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %.pn, ptr %prev1.i.i2.i, align 4
  %80 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %78, ptr %.pn, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %qtd_list, ptr %prev3.i.i.i, align 4
  %82 = ptrtoint ptr %qtd_list to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %.pn, ptr %qtd_list, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.end_crit_edge, %for.cond.for.end_crit_edge
  %status28 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %83 = ptrtoint ptr %status28 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %status, ptr %status28, align 4
  call fastcc void @schedule_ptds(ptr noundef %hcd)
  br label %out

out:                                              ; preds = %for.end, %if.end.out_crit_edge, %entry.out_crit_edge
  %retval1.0 = phi i32 [ %call7, %entry.out_crit_edge ], [ 0, %for.end ], [ -22, %if.end.out_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp1760_endpoint_disable(ptr noundef %hcd, ptr nocapture noundef %ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %lock = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 5
  %2 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcpriv, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %qtd_list = getelementptr inbounds %struct.isp1760_qh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not = icmp eq ptr %5, %qtd_list
  br i1 %cmp.i.not, label %if.end.for.body_crit_edge, label %do.end20, !prof !128

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2083, i32 noundef 9, ptr noundef null) #7
  br label %for.body

for.body:                                         ; preds = %do.end20, %if.end.for.body_crit_edge
  %arrayidx = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 12, i32 0
  br label %for.cond37

for.cond37:                                       ; preds = %for.body45.for.cond37_crit_edge, %for.body
  %qh_iter.0.in = phi ptr [ %arrayidx, %for.body ], [ %qh_iter.0, %for.body45.for.cond37_crit_edge ]
  %6 = ptrtoint ptr %qh_iter.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %qh_iter.0 = load ptr, ptr %qh_iter.0.in, align 4
  %cmp41.not = icmp eq ptr %qh_iter.0, %arrayidx
  br i1 %cmp41.not, label %for.inc56, label %for.body45

for.body45:                                       ; preds = %for.cond37
  %cmp46 = icmp eq ptr %qh_iter.0, %3
  br i1 %cmp46, label %for.body45.if.then48_crit_edge, label %for.body45.for.cond37_crit_edge

for.body45.for.cond37_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond37

for.body45.if.then48_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48

if.then48:                                        ; preds = %for.body45.2.if.then48_crit_edge, %for.body45.1.if.then48_crit_edge, %for.body45.if.then48_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %3) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then48.for.inc56.thread_crit_edge

if.then48.for.inc56.thread_crit_edge:             ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56.thread

if.end.i.i:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %for.inc56.thread

for.inc56.thread:                                 ; preds = %if.end.i.i, %if.then48.for.inc56.thread_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end57

for.inc56:                                        ; preds = %for.cond37
  %arrayidx.1 = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 12, i32 1
  br label %for.cond37.1

for.cond37.1:                                     ; preds = %for.body45.1.for.cond37.1_crit_edge, %for.inc56
  %qh_iter.0.in.1 = phi ptr [ %arrayidx.1, %for.inc56 ], [ %qh_iter.0.1, %for.body45.1.for.cond37.1_crit_edge ]
  %15 = ptrtoint ptr %qh_iter.0.in.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %qh_iter.0.1 = load ptr, ptr %qh_iter.0.in.1, align 4
  %cmp41.not.1 = icmp eq ptr %qh_iter.0.1, %arrayidx.1
  br i1 %cmp41.not.1, label %for.inc56.1, label %for.body45.1

for.body45.1:                                     ; preds = %for.cond37.1
  %cmp46.1 = icmp eq ptr %qh_iter.0.1, %3
  br i1 %cmp46.1, label %for.body45.1.if.then48_crit_edge, label %for.body45.1.for.cond37.1_crit_edge

for.body45.1.for.cond37.1_crit_edge:              ; preds = %for.body45.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond37.1

for.body45.1.if.then48_crit_edge:                 ; preds = %for.body45.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48

for.inc56.1:                                      ; preds = %for.cond37.1
  %arrayidx.2 = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 12, i32 2
  br label %for.cond37.2

for.cond37.2:                                     ; preds = %for.body45.2.for.cond37.2_crit_edge, %for.inc56.1
  %qh_iter.0.in.2 = phi ptr [ %arrayidx.2, %for.inc56.1 ], [ %qh_iter.0.2, %for.body45.2.for.cond37.2_crit_edge ]
  %16 = ptrtoint ptr %qh_iter.0.in.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %qh_iter.0.2 = load ptr, ptr %qh_iter.0.in.2, align 4
  %cmp41.not.2 = icmp eq ptr %qh_iter.0.2, %arrayidx.2
  br i1 %cmp41.not.2, label %for.cond37.2.for.end57_crit_edge, label %for.body45.2

for.cond37.2.for.end57_crit_edge:                 ; preds = %for.cond37.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end57

for.body45.2:                                     ; preds = %for.cond37.2
  %cmp46.2 = icmp eq ptr %qh_iter.0.2, %3
  br i1 %cmp46.2, label %for.body45.2.if.then48_crit_edge, label %for.body45.2.for.cond37.2_crit_edge

for.body45.2.for.cond37.2_crit_edge:              ; preds = %for.body45.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond37.2

for.body45.2.if.then48_crit_edge:                 ; preds = %for.body45.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48

for.end57:                                        ; preds = %for.cond37.2.for.end57_crit_edge, %for.inc56.thread
  %17 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not.i = icmp eq ptr %18, %qtd_list
  br i1 %cmp.i.not.i, label %for.end57.if.end.i_crit_edge, label %do.end.i, !prof !128

for.end57.if.end.i_crit_edge:                     ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 676, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.end57.if.end.i_crit_edge
  %slot.i = getelementptr inbounds %struct.isp1760_qh, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i75 = icmp sgt i32 %20, -1
  br i1 %cmp.i75, label %do.end37.i, label %if.end.i.qh_free.exit_crit_edge, !prof !125

if.end.i.qh_free.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qh_free.exit

do.end37.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 677, i32 noundef 9, ptr noundef null) #7
  br label %qh_free.exit

qh_free.exit:                                     ; preds = %do.end37.i, %if.end.i.qh_free.exit_crit_edge
  %21 = load ptr, ptr @qh_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef nonnull %3) #7
  %22 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %hcpriv, align 4
  tail call fastcc void @schedule_ptds(ptr noundef %hcd)
  br label %out

out:                                              ; preds = %qh_free.exit, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_hub_status_data(ptr nocapture noundef readonly %hcd, ptr nocapture noundef %buf) #2 align 64 {
entry:
  %val.i.i.i51 = alloca i32, align 4
  %val.i.i.i45 = alloca i32, align 4
  %val.i.i.i39 = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf, align 1
  %lock = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %5 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hcd_priv.i, align 8
  %fields.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %7 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !126
  %8 = ptrtoint ptr %fields.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fields.i.i, align 4
  %call.i.i.i = call i32 @regmap_field_read(ptr noundef %9, ptr noundef nonnull %val.i.i.i) #7
  %10 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i39) #7
  %14 = ptrtoint ptr %val.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i.i.i39, align 4, !annotation !126
  %arrayidx.i.i.i = getelementptr %struct.isp1760_hcd, ptr %13, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i42 = call i32 @regmap_field_read(ptr noundef %16, ptr noundef nonnull %val.i.i.i39) #7
  %17 = ptrtoint ptr %val.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i.i.i39, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i43.not = icmp eq i32 %18, 0
  br i1 %tobool.i43.not, label %land.lhs.true.if.end12_crit_edge, label %if.then11

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hcd_priv.i, align 8
  %is_isp1763.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %is_isp1763.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_isp1763.i.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  %base.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %conv1.i.i = select i1 %tobool.not.i.i, i32 100, i32 160
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %conv1.i.i
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %26 = and i32 %25, -33554433
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %28, i32 %conv1.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %26) #7, !srcloc !131
  br label %cleanup.sink.split

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %29 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i45) #7
  %31 = ptrtoint ptr %val.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %val.i.i.i45, align 4, !annotation !126
  %arrayidx.i.i.i48 = getelementptr %struct.isp1760_hcd, ptr %30, i32 0, i32 3, i32 7
  %32 = ptrtoint ptr %arrayidx.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i.i48, align 4
  %call.i.i.i49 = call i32 @regmap_field_read(ptr noundef %33, ptr noundef nonnull %val.i.i.i45) #7
  %34 = ptrtoint ptr %val.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i.i.i45, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i50.not = icmp eq i32 %35, 0
  br i1 %tobool.i50.not, label %lor.lhs.false, label %if.end12.done_crit_edge

if.end12.done_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

lor.lhs.false:                                    ; preds = %if.end12
  %36 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i51) #7
  %38 = ptrtoint ptr %val.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %val.i.i.i51, align 4, !annotation !126
  %arrayidx.i.i.i54 = getelementptr %struct.isp1760_hcd, ptr %37, i32 0, i32 3, i32 5
  %39 = ptrtoint ptr %arrayidx.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i.i54, align 4
  %call.i.i.i55 = call i32 @regmap_field_read(ptr noundef %40, ptr noundef nonnull %val.i.i.i51) #7
  %41 = ptrtoint ptr %val.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i.i.i51, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i56.not = icmp eq i32 %42, 0
  br i1 %tobool.i56.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %land.lhs.true17

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true17:                                  ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %reset_done = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 15
  %44 = ptrtoint ptr %reset_done to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reset_done, align 4
  %sub = sub i32 %43, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp18 = icmp sgt i32 %sub, -1
  br i1 %cmp18, label %land.lhs.true17.done_crit_edge, label %land.lhs.true17.cleanup.sink.split_crit_edge

land.lhs.true17.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true17.done_crit_edge:                   ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

done:                                             ; preds = %land.lhs.true17.done_crit_edge, %if.end12.done_crit_edge
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %buf, align 1
  %48 = or i8 %47, 2
  store i8 %48, ptr %buf, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %done, %land.lhs.true17.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.then11
  %retval.0.ph = phi i32 [ 1, %done ], [ 0, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ 0, %land.lhs.true17.cleanup.sink.split_crit_edge ], [ 0, %if.then11 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr nocapture noundef writeonly %buf, i16 noundef zeroext %wLength) #2 align 64 {
entry:
  %val.i.i402 = alloca i32, align 4
  %val.i.i.i396 = alloca i32, align 4
  %val.i.i.i390 = alloca i32, align 4
  %val.i.i.i384 = alloca i32, align 4
  %val.i.i.i378 = alloca i32, align 4
  %val.i.i.i372 = alloca i32, align 4
  %val.i.i.i367 = alloca i32, align 4
  %val.i.i.i361 = alloca i32, align 4
  %val.i.i.i355 = alloca i32, align 4
  %val.i.i.i349 = alloca i32, align 4
  %val.i.i.i343 = alloca i32, align 4
  %val.i.i.i337 = alloca i32, align 4
  %val.i.i.i331 = alloca i32, align 4
  %val.i.i.i326 = alloca i32, align 4
  %val.i.i.i320 = alloca i32, align 4
  %val.i.i.i314 = alloca i32, align 4
  %val.i.i.i308 = alloca i32, align 4
  %val.i.i.i.i.i = alloca i32, align 4
  %val.i.i.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i.i.i300 = alloca i32, align 4
  %val.i.i.i294 = alloca i32, align 4
  %val.i.i.i291 = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %is_isp1763.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_isp1763.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_isp1763.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.isp1760_hcd_n_ports.exit_crit_edge

entry.isp1760_hcd_n_ports.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1760_hcd_n_ports.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %4 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !126
  %arrayidx.i.i.i = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 3, i32 10
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_field_read(ptr noundef %6, ptr noundef nonnull %val.i.i.i) #7
  %7 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  br label %isp1760_hcd_n_ports.exit

isp1760_hcd_n_ports.exit:                         ; preds = %if.end.i, %entry.isp1760_hcd_n_ports.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.end.i ], [ 1, %entry.isp1760_hcd_n_ports.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 6
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %9 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %typeReq, label %isp1760_hcd_n_ports.exit.error_crit_edge [
    i16 8193, label %sw.bb
    i16 8961, label %sw.bb11
    i16 -24570, label %sw.bb36
    i16 -24576, label %sw.bb37
    i16 -23808, label %sw.bb38
    i16 8195, label %sw.bb143
    i16 8963, label %sw.bb148
  ]

isp1760_hcd_n_ports.exit.error_crit_edge:         ; preds = %isp1760_hcd_n_ports.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

sw.bb:                                            ; preds = %isp1760_hcd_n_ports.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %switch = icmp ult i16 %wValue, 2
  br i1 %switch, label %sw.bb.sw.epilog196_crit_edge, label %sw.bb.error_crit_edge

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

sw.bb.sw.epilog196_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog196

sw.bb11:                                          ; preds = %isp1760_hcd_n_ports.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %tobool.not = icmp eq i16 %wIndex, 0
  %conv12 = zext i16 %wIndex to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv12)
  %cmp13 = icmp slt i32 %retval.0.i, %conv12
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp13
  br i1 %or.cond, label %sw.bb11.error_crit_edge, label %if.end

sw.bb11.error_crit_edge:                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %sw.bb11
  %10 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %wValue, label %if.end.error_crit_edge [
    i16 1, label %sw.bb16
    i16 17, label %if.end.sw.epilog34_crit_edge
    i16 2, label %sw.bb17
    i16 18, label %if.end.sw.epilog34_crit_edge407
    i16 8, label %sw.bb28
    i16 16, label %sw.bb32
    i16 19, label %if.end.sw.epilog34_crit_edge408
    i16 20, label %if.end.sw.epilog34_crit_edge409
  ]

if.end.sw.epilog34_crit_edge409:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

if.end.sw.epilog34_crit_edge408:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

if.end.sw.epilog34_crit_edge407:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

if.end.sw.epilog34_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @isp1760_hcd_clear(ptr noundef %hcd, i32 noundef 6)
  br label %sw.epilog34

sw.bb17:                                          ; preds = %if.end
  %11 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i291) #7
  %13 = ptrtoint ptr %val.i.i.i291 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i.i.i291, align 4, !annotation !126
  %arrayidx.i.i.i292 = getelementptr %struct.isp1760_hcd, ptr %12, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i.i292 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i.i292, align 4
  %call.i.i.i293 = call i32 @regmap_field_read(ptr noundef %15, ptr noundef nonnull %val.i.i.i291) #7
  %16 = ptrtoint ptr %val.i.i.i291 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i.i.i291, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i291) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %if.end20, label %sw.bb17.error_crit_edge

sw.bb17.error_crit_edge:                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end20:                                         ; preds = %sw.bb17
  %18 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i294) #7
  %20 = ptrtoint ptr %val.i.i.i294 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i.i.i294, align 4, !annotation !126
  %arrayidx.i.i.i297 = getelementptr %struct.isp1760_hcd, ptr %19, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %arrayidx.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i297, align 4
  %call.i.i.i298 = call i32 @regmap_field_read(ptr noundef %22, ptr noundef nonnull %val.i.i.i294) #7
  %23 = ptrtoint ptr %val.i.i.i294 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i.i.i294, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i294) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i299.not = icmp eq i32 %24, 0
  br i1 %tobool.i299.not, label %if.end20.sw.epilog34_crit_edge, label %if.then22

if.end20.sw.epilog34_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

if.then22:                                        ; preds = %if.end20
  %25 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i300) #7
  %27 = ptrtoint ptr %val.i.i.i300 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val.i.i.i300, align 4, !annotation !126
  %arrayidx.i.i.i303 = getelementptr %struct.isp1760_hcd, ptr %26, i32 0, i32 3, i32 6
  %28 = ptrtoint ptr %arrayidx.i.i.i303 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i303, align 4
  %call.i.i.i304 = call i32 @regmap_field_read(ptr noundef %29, ptr noundef nonnull %val.i.i.i300) #7
  %30 = ptrtoint ptr %val.i.i.i300 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i.i.i300, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i300) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i305.not = icmp eq i32 %31, 0
  br i1 %tobool.i305.not, label %if.then22.error_crit_edge, label %if.end25

if.then22.error_crit_edge:                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end25:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @isp1760_hcd_clear(ptr noundef %hcd, i32 noundef 7)
  call fastcc void @isp1760_hcd_set(ptr noundef %hcd, i32 noundef 5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %32, 4
  %reset_done = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 15
  %33 = ptrtoint ptr %reset_done to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add, ptr %reset_done, align 4
  br label %sw.epilog34

sw.bb28:                                          ; preds = %if.end
  %call29 = call fastcc zeroext i1 @isp1760_hcd_ppc_is_set(ptr noundef %hcd)
  br i1 %call29, label %if.then30, label %sw.bb28.sw.epilog34_crit_edge

sw.bb28.sw.epilog34_crit_edge:                    ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

if.then30:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @isp1760_hcd_clear(ptr noundef %hcd, i32 noundef 1)
  br label %sw.epilog34

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @isp1760_hcd_set(ptr noundef %hcd, i32 noundef 7)
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %sw.bb32, %if.then30, %sw.bb28.sw.epilog34_crit_edge, %if.end25, %if.end20.sw.epilog34_crit_edge, %sw.bb16, %if.end.sw.epilog34_crit_edge, %if.end.sw.epilog34_crit_edge407, %if.end.sw.epilog34_crit_edge408, %if.end.sw.epilog34_crit_edge409
  %34 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %36 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %val.i.i, align 4, !annotation !126
  %arrayidx.i.i = getelementptr %struct.isp1760_hcd, ptr %35, i32 0, i32 3, i32 15
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %38, ptr noundef nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %sw.epilog196

sw.bb36:                                          ; preds = %isp1760_hcd_n_ports.exit
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %hcd_priv.i.i.i307 = getelementptr inbounds %struct.usb_hcd, ptr %40, i32 0, i32 30
  %41 = ptrtoint ptr %hcd_priv.i.i.i307 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hcd_priv.i.i.i307, align 8
  %is_isp1763.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %is_isp1763.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_isp1763.i.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb36.isp1760_hcd_n_ports.exit.i_crit_edge

sw.bb36.isp1760_hcd_n_ports.exit.i_crit_edge:     ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1760_hcd_n_ports.exit.i

if.end.i.i:                                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i.i) #7
  %45 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %val.i.i.i.i, align 4, !annotation !126
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_hcd, ptr %42, i32 0, i32 3, i32 10
  %46 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @regmap_field_read(ptr noundef %47, ptr noundef nonnull %val.i.i.i.i) #7
  %48 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i) #7
  br label %isp1760_hcd_n_ports.exit.i

isp1760_hcd_n_ports.exit.i:                       ; preds = %if.end.i.i, %sw.bb36.isp1760_hcd_n_ports.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %49, %if.end.i.i ], [ 1, %sw.bb36.isp1760_hcd_n_ports.exit.i_crit_edge ]
  %bDescriptorType.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %50 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 41, ptr %bDescriptorType.i, align 1
  %bPwrOn2PwrGood.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 4
  %51 = ptrtoint ptr %bPwrOn2PwrGood.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 10, ptr %bPwrOn2PwrGood.i, align 1
  %bHubContrCurrent.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 5
  %52 = ptrtoint ptr %bHubContrCurrent.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %bHubContrCurrent.i, align 1
  %conv.i = trunc i32 %retval.0.i.i to i8
  %bNbrPorts.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %53 = ptrtoint ptr %bNbrPorts.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.i, ptr %bNbrPorts.i, align 1
  %div.i = sdiv i32 %retval.0.i.i, 8
  %conv1.i = add nsw i32 %div.i, 1
  %conv2.i = and i32 %conv1.i, 65535
  %conv2.tr.i = trunc i32 %conv1.i to i8
  %54 = shl i8 %conv2.tr.i, 1
  %conv4.i = add i8 %54, 7
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv4.i, ptr %buf, align 1
  %u.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  %56 = call ptr @memset(ptr %u.i, i32 0, i32 %conv2.i)
  %arrayidx8.i = getelementptr [4 x i8], ptr %u.i, i32 0, i32 %conv2.i
  %57 = call ptr @memset(ptr %arrayidx8.i, i32 255, i32 %conv2.i)
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %hcd_priv.i.i32.i = getelementptr inbounds %struct.usb_hcd, ptr %59, i32 0, i32 30
  %60 = ptrtoint ptr %hcd_priv.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hcd_priv.i.i32.i, align 8
  %is_isp1763.i33.i = getelementptr inbounds %struct.isp1760_hcd, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %is_isp1763.i33.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_isp1763.i33.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i34.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i34.i, label %isp1760_hcd_ppc_is_set.exit.i, label %isp1760_hcd_n_ports.exit.i.isp1760_hcd_ppc_is_set.exit.thread.i_crit_edge

isp1760_hcd_n_ports.exit.i.isp1760_hcd_ppc_is_set.exit.thread.i_crit_edge: ; preds = %isp1760_hcd_n_ports.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1760_hcd_ppc_is_set.exit.thread.i

isp1760_hcd_ppc_is_set.exit.i:                    ; preds = %isp1760_hcd_n_ports.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i.i.i) #7
  %64 = ptrtoint ptr %val.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %val.i.i.i.i.i, align 4, !annotation !126
  %arrayidx.i.i.i.i.i = getelementptr %struct.isp1760_hcd, ptr %61, i32 0, i32 3, i32 9
  %65 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 @regmap_field_read(ptr noundef %66, ptr noundef nonnull %val.i.i.i.i.i) #7
  %67 = ptrtoint ptr %val.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val.i.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.i.i.not.i = icmp eq i32 %68, 0
  br i1 %tobool.i.i.not.i, label %isp1760_hcd_ppc_is_set.exit.i.isp1760_hub_descriptor.exit_crit_edge, label %isp1760_hcd_ppc_is_set.exit.i.isp1760_hcd_ppc_is_set.exit.thread.i_crit_edge

isp1760_hcd_ppc_is_set.exit.i.isp1760_hcd_ppc_is_set.exit.thread.i_crit_edge: ; preds = %isp1760_hcd_ppc_is_set.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1760_hcd_ppc_is_set.exit.thread.i

isp1760_hcd_ppc_is_set.exit.i.isp1760_hub_descriptor.exit_crit_edge: ; preds = %isp1760_hcd_ppc_is_set.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1760_hub_descriptor.exit

isp1760_hcd_ppc_is_set.exit.thread.i:             ; preds = %isp1760_hcd_ppc_is_set.exit.i.isp1760_hcd_ppc_is_set.exit.thread.i_crit_edge, %isp1760_hcd_n_ports.exit.i.isp1760_hcd_ppc_is_set.exit.thread.i_crit_edge
  br label %isp1760_hub_descriptor.exit

isp1760_hub_descriptor.exit:                      ; preds = %isp1760_hcd_ppc_is_set.exit.thread.i, %isp1760_hcd_ppc_is_set.exit.i.isp1760_hub_descriptor.exit_crit_edge
  %69 = phi i16 [ 2304, %isp1760_hcd_ppc_is_set.exit.thread.i ], [ 2560, %isp1760_hcd_ppc_is_set.exit.i.isp1760_hub_descriptor.exit_crit_edge ]
  %wHubCharacteristics.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %70 = ptrtoint ptr %wHubCharacteristics.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %wHubCharacteristics.i, align 1
  br label %sw.epilog196

sw.bb37:                                          ; preds = %isp1760_hcd_n_ports.exit
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 0, ptr %buf, align 1
  br label %sw.epilog196

sw.bb38:                                          ; preds = %isp1760_hcd_n_ports.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %tobool39.not = icmp eq i16 %wIndex, 0
  %conv41 = zext i16 %wIndex to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv41)
  %cmp42 = icmp slt i32 %retval.0.i, %conv41
  %or.cond285 = select i1 %tobool39.not, i1 true, i1 %cmp42
  br i1 %or.cond285, label %sw.bb38.error_crit_edge, label %if.end45

sw.bb38.error_crit_edge:                          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end45:                                         ; preds = %sw.bb38
  %dec46 = add i16 %wIndex, -1
  %72 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i308) #7
  %74 = ptrtoint ptr %val.i.i.i308 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %val.i.i.i308, align 4, !annotation !126
  %arrayidx.i.i.i311 = getelementptr %struct.isp1760_hcd, ptr %73, i32 0, i32 3, i32 7
  %75 = ptrtoint ptr %arrayidx.i.i.i311 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i.i311, align 4
  %call.i.i.i312 = call i32 @regmap_field_read(ptr noundef %76, ptr noundef nonnull %val.i.i.i308) #7
  %77 = ptrtoint ptr %val.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val.i.i.i308, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i308) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.i313.not = icmp eq i32 %78, 0
  %spec.select = select i1 %tobool.i313.not, i32 0, i32 65536
  %79 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i314) #7
  %81 = ptrtoint ptr %val.i.i.i314 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %val.i.i.i314, align 4, !annotation !126
  %arrayidx.i.i.i317 = getelementptr %struct.isp1760_hcd, ptr %80, i32 0, i32 3, i32 5
  %82 = ptrtoint ptr %arrayidx.i.i.i317 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i.i.i317, align 4
  %call.i.i.i318 = call i32 @regmap_field_read(ptr noundef %83, ptr noundef nonnull %val.i.i.i314) #7
  %84 = ptrtoint ptr %val.i.i.i314 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val.i.i.i314, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i314) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.i319.not = icmp eq i32 %85, 0
  br i1 %tobool.i319.not, label %if.end45.if.end83_crit_edge, label %do.end54

if.end45.if.end83_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

do.end54:                                         ; preds = %if.end45
  %86 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.35) #11
  %reset_done55 = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 15
  %88 = ptrtoint ptr %reset_done55 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %reset_done55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool56.not = icmp eq i32 %89, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  br i1 %tobool56.not, label %if.then57, label %if.else

if.then57:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  %add59 = add i32 %90, 2
  %91 = ptrtoint ptr %reset_done55 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add59, ptr %reset_done55, align 4
  %rh_timer = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 5
  %call62 = call i32 @mod_timer(ptr noundef %rh_timer, i32 noundef %add59) #7
  br label %if.end83

if.else:                                          ; preds = %do.end54
  %sub = sub i32 %90, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp64 = icmp sgt i32 %sub, -1
  br i1 %cmp64, label %if.then66, label %if.else.if.end83_crit_edge

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then66:                                        ; preds = %if.else
  %or67 = or i32 %spec.select, 262144
  %92 = ptrtoint ptr %reset_done55 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %reset_done55, align 4
  call fastcc void @isp1760_hcd_clear(ptr noundef %hcd, i32 noundef 7)
  %call69 = call fastcc i32 @isp1760_hcd_clear_and_wait(ptr noundef %hcd, i32 noundef 5, i32 noundef 2000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70.not = icmp eq i32 %call69, 0
  br i1 %cmp70.not, label %if.then66.if.end83_crit_edge, label %do.end75

if.then66.if.end83_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

do.end75:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hcd, align 8
  %conv78 = zext i16 %dec46 to i32
  %add79 = add nuw nsw i32 %conv78, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.38, i32 noundef %add79, i32 noundef %call69) #11
  br label %error

if.end83:                                         ; preds = %if.then66.if.end83_crit_edge, %if.else.if.end83_crit_edge, %if.then57, %if.end45.if.end83_crit_edge
  %status.1 = phi i32 [ %or67, %if.then66.if.end83_crit_edge ], [ %spec.select, %if.else.if.end83_crit_edge ], [ %spec.select, %if.then57 ], [ %spec.select, %if.end45.if.end83_crit_edge ]
  %95 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i320) #7
  %97 = ptrtoint ptr %val.i.i.i320 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %val.i.i.i320, align 4, !annotation !126
  %arrayidx.i.i.i323 = getelementptr %struct.isp1760_hcd, ptr %96, i32 0, i32 3, i32 3
  %98 = ptrtoint ptr %arrayidx.i.i.i323 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i.i.i323, align 4
  %call.i.i.i324 = call i32 @regmap_field_read(ptr noundef %99, ptr noundef nonnull %val.i.i.i320) #7
  %100 = ptrtoint ptr %val.i.i.i320 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val.i.i.i320, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i320) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.i325.not = icmp eq i32 %101, 0
  br i1 %tobool.i325.not, label %if.end83.if.end106_crit_edge, label %land.lhs.true

if.end83.if.end106_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

land.lhs.true:                                    ; preds = %if.end83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %reset_done86 = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 15
  %103 = ptrtoint ptr %reset_done86 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %reset_done86, align 4
  %sub87 = sub i32 %102, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub87)
  %cmp88 = icmp sgt i32 %sub87, -1
  br i1 %cmp88, label %if.then90, label %land.lhs.true.if.end106_crit_edge

land.lhs.true.if.end106_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then90:                                        ; preds = %land.lhs.true
  %105 = ptrtoint ptr %reset_done86 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %reset_done86, align 4
  %call93 = call fastcc i32 @isp1760_hcd_clear_and_wait(ptr noundef %hcd, i32 noundef 3, i32 noundef 750)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94.not = icmp eq i32 %call93, 0
  br i1 %cmp94.not, label %if.end104, label %do.end99

do.end99:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hcd, align 8
  %conv102 = zext i16 %dec46 to i32
  %add103 = add nuw nsw i32 %conv102, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.41, i32 noundef %add103, i32 noundef %call93) #11
  br label %error

if.end104:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  %or91 = or i32 %status.1, 1048576
  %conv105 = zext i16 %dec46 to i32
  call fastcc void @check_reset_complete(ptr noundef %hcd, i32 noundef %conv105)
  br label %if.end106

if.end106:                                        ; preds = %if.end104, %land.lhs.true.if.end106_crit_edge, %if.end83.if.end106_crit_edge
  %status.2 = phi i32 [ %or91, %if.end104 ], [ %status.1, %land.lhs.true.if.end106_crit_edge ], [ %status.1, %if.end83.if.end106_crit_edge ]
  %108 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hcd_priv.i, align 8
  %fields.i.i328 = getelementptr inbounds %struct.isp1760_hcd, ptr %109, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i326) #7
  %110 = ptrtoint ptr %val.i.i.i326 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %val.i.i.i326, align 4, !annotation !126
  %111 = ptrtoint ptr %fields.i.i328 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %fields.i.i328, align 4
  %call.i.i.i329 = call i32 @regmap_field_read(ptr noundef %112, ptr noundef nonnull %val.i.i.i326) #7
  %113 = ptrtoint ptr %val.i.i.i326 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val.i.i.i326, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i326) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.i330.not = icmp eq i32 %114, 0
  br i1 %tobool.i330.not, label %if.end106.if.end114_crit_edge, label %do.end111

if.end106.if.end114_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

do.end111:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.44) #11
  br label %if.end114

if.end114:                                        ; preds = %do.end111, %if.end106.if.end114_crit_edge
  %117 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i331) #7
  %119 = ptrtoint ptr %val.i.i.i331 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %val.i.i.i331, align 4, !annotation !126
  %arrayidx.i.i.i334 = getelementptr %struct.isp1760_hcd, ptr %118, i32 0, i32 3, i32 8
  %120 = ptrtoint ptr %arrayidx.i.i.i334 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i.i.i334, align 4
  %call.i.i.i335 = call i32 @regmap_field_read(ptr noundef %121, ptr noundef nonnull %val.i.i.i331) #7
  %122 = ptrtoint ptr %val.i.i.i331 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %val.i.i.i331, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i331) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.i336.not = icmp eq i32 %123, 0
  %or118 = or i32 %status.2, 1025
  %spec.select286 = select i1 %tobool.i336.not, i32 %status.2, i32 %or118
  %124 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i337) #7
  %126 = ptrtoint ptr %val.i.i.i337 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %val.i.i.i337, align 4, !annotation !126
  %arrayidx.i.i.i340 = getelementptr %struct.isp1760_hcd, ptr %125, i32 0, i32 3, i32 6
  %127 = ptrtoint ptr %arrayidx.i.i.i340 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i.i.i340, align 4
  %call.i.i.i341 = call i32 @regmap_field_read(ptr noundef %128, ptr noundef nonnull %val.i.i.i337) #7
  %129 = ptrtoint ptr %val.i.i.i337 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %val.i.i.i337, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i337) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.i342.not = icmp eq i32 %130, 0
  %or122 = or i32 %spec.select286, 2
  %status.4 = select i1 %tobool.i342.not, i32 %spec.select286, i32 %or122
  %131 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i343) #7
  %133 = ptrtoint ptr %val.i.i.i343 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %val.i.i.i343, align 4, !annotation !126
  %arrayidx.i.i.i346 = getelementptr %struct.isp1760_hcd, ptr %132, i32 0, i32 3, i32 4
  %134 = ptrtoint ptr %arrayidx.i.i.i346 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i.i.i346, align 4
  %call.i.i.i347 = call i32 @regmap_field_read(ptr noundef %135, ptr noundef nonnull %val.i.i.i343) #7
  %136 = ptrtoint ptr %val.i.i.i343 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %val.i.i.i343, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i343) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool.i348.not = icmp eq i32 %137, 0
  br i1 %tobool.i348.not, label %if.end114.if.end131_crit_edge, label %land.lhs.true126

if.end114.if.end131_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

land.lhs.true126:                                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i349) #7
  %140 = ptrtoint ptr %val.i.i.i349 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %val.i.i.i349, align 4, !annotation !126
  %arrayidx.i.i.i352 = getelementptr %struct.isp1760_hcd, ptr %139, i32 0, i32 3, i32 5
  %141 = ptrtoint ptr %arrayidx.i.i.i352 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i.i.i352, align 4
  %call.i.i.i353 = call i32 @regmap_field_read(ptr noundef %142, ptr noundef nonnull %val.i.i.i349) #7
  %143 = ptrtoint ptr %val.i.i.i349 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %val.i.i.i349, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i349) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.i354.not = icmp eq i32 %144, 0
  %or130 = or i32 %status.4, 4
  %spec.select287 = select i1 %tobool.i354.not, i32 %status.4, i32 %or130
  br label %if.end131

if.end131:                                        ; preds = %land.lhs.true126, %if.end114.if.end131_crit_edge
  %status.5 = phi i32 [ %status.4, %if.end114.if.end131_crit_edge ], [ %spec.select287, %land.lhs.true126 ]
  %145 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i355) #7
  %147 = ptrtoint ptr %val.i.i.i355 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 -1, ptr %val.i.i.i355, align 4, !annotation !126
  %arrayidx.i.i.i358 = getelementptr %struct.isp1760_hcd, ptr %146, i32 0, i32 3, i32 3
  %148 = ptrtoint ptr %arrayidx.i.i.i358 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i.i.i358, align 4
  %call.i.i.i359 = call i32 @regmap_field_read(ptr noundef %149, ptr noundef nonnull %val.i.i.i355) #7
  %150 = ptrtoint ptr %val.i.i.i355 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %val.i.i.i355, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i355) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.i360.not = icmp eq i32 %151, 0
  %or134 = or i32 %status.5, 16
  %spec.select288 = select i1 %tobool.i360.not, i32 %status.5, i32 %or134
  %152 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i361) #7
  %154 = ptrtoint ptr %val.i.i.i361 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %val.i.i.i361, align 4, !annotation !126
  %arrayidx.i.i.i364 = getelementptr %struct.isp1760_hcd, ptr %153, i32 0, i32 3, i32 1
  %155 = ptrtoint ptr %arrayidx.i.i.i364 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx.i.i.i364, align 4
  %call.i.i.i365 = call i32 @regmap_field_read(ptr noundef %156, ptr noundef nonnull %val.i.i.i361) #7
  %157 = ptrtoint ptr %val.i.i.i361 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %val.i.i.i361, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i361) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.i366.not = icmp eq i32 %158, 0
  %or138 = or i32 %spec.select288, 256
  %status.7 = select i1 %tobool.i366.not, i32 %spec.select288, i32 %or138
  %159 = call i32 @llvm.bswap.i32(i32 %status.7)
  %160 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %160, i32 4)
  store i32 %159, ptr %buf, align 1
  br label %sw.epilog196

sw.bb143:                                         ; preds = %isp1760_hcd_n_ports.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %switch289 = icmp ult i16 %wValue, 2
  br i1 %switch289, label %sw.bb143.sw.epilog196_crit_edge, label %sw.bb143.error_crit_edge

sw.bb143.error_crit_edge:                         ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

sw.bb143.sw.epilog196_crit_edge:                  ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog196

sw.bb148:                                         ; preds = %isp1760_hcd_n_ports.exit
  %161 = and i16 %wIndex, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %161)
  %tobool151.not = icmp eq i16 %161, 0
  %conv153 = zext i16 %161 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv153)
  %cmp154 = icmp slt i32 %retval.0.i, %conv153
  %or.cond290 = select i1 %tobool151.not, i1 true, i1 %cmp154
  br i1 %or.cond290, label %sw.bb148.error_crit_edge, label %if.end157

sw.bb148.error_crit_edge:                         ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end157:                                        ; preds = %sw.bb148
  %162 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hcd_priv.i, align 8
  %fields.i.i369 = getelementptr inbounds %struct.isp1760_hcd, ptr %163, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i367) #7
  %164 = ptrtoint ptr %val.i.i.i367 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 -1, ptr %val.i.i.i367, align 4, !annotation !126
  %165 = ptrtoint ptr %fields.i.i369 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %fields.i.i369, align 4
  %call.i.i.i370 = call i32 @regmap_field_read(ptr noundef %166, ptr noundef nonnull %val.i.i.i367) #7
  %167 = ptrtoint ptr %val.i.i.i367 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %val.i.i.i367, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i367) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.i371.not = icmp eq i32 %168, 0
  br i1 %tobool.i371.not, label %if.end161, label %if.end157.sw.epilog196_crit_edge

if.end157.sw.epilog196_crit_edge:                 ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog196

if.end161:                                        ; preds = %if.end157
  %169 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %wValue, label %if.end161.error_crit_edge [
    i16 1, label %sw.bb163
    i16 2, label %sw.bb164
    i16 8, label %sw.bb171
    i16 4, label %sw.bb175
  ]

if.end161.error_crit_edge:                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

sw.bb163:                                         ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @isp1760_hcd_set(ptr noundef %hcd, i32 noundef 6)
  br label %sw.epilog196

sw.bb164:                                         ; preds = %if.end161
  %170 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i372) #7
  %172 = ptrtoint ptr %val.i.i.i372 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 -1, ptr %val.i.i.i372, align 4, !annotation !126
  %arrayidx.i.i.i375 = getelementptr %struct.isp1760_hcd, ptr %171, i32 0, i32 3, i32 6
  %173 = ptrtoint ptr %arrayidx.i.i.i375 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx.i.i.i375, align 4
  %call.i.i.i376 = call i32 @regmap_field_read(ptr noundef %174, ptr noundef nonnull %val.i.i.i372) #7
  %175 = ptrtoint ptr %val.i.i.i372 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %val.i.i.i372, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i372) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.i377.not = icmp eq i32 %176, 0
  br i1 %tobool.i377.not, label %sw.bb164.error_crit_edge, label %lor.lhs.false166

sw.bb164.error_crit_edge:                         ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

lor.lhs.false166:                                 ; preds = %sw.bb164
  %177 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i378) #7
  %179 = ptrtoint ptr %val.i.i.i378 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 -1, ptr %val.i.i.i378, align 4, !annotation !126
  %arrayidx.i.i.i381 = getelementptr %struct.isp1760_hcd, ptr %178, i32 0, i32 3, i32 3
  %180 = ptrtoint ptr %arrayidx.i.i.i381 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx.i.i.i381, align 4
  %call.i.i.i382 = call i32 @regmap_field_read(ptr noundef %181, ptr noundef nonnull %val.i.i.i378) #7
  %182 = ptrtoint ptr %val.i.i.i378 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %val.i.i.i378, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i378) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.i383.not = icmp eq i32 %183, 0
  br i1 %tobool.i383.not, label %if.end170, label %lor.lhs.false166.error_crit_edge

lor.lhs.false166.error_crit_edge:                 ; preds = %lor.lhs.false166
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end170:                                        ; preds = %lor.lhs.false166
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @isp1760_hcd_set(ptr noundef %hcd, i32 noundef 4)
  br label %sw.epilog196

sw.bb171:                                         ; preds = %if.end161
  %call172 = call fastcc zeroext i1 @isp1760_hcd_ppc_is_set(ptr noundef %hcd)
  br i1 %call172, label %if.then173, label %sw.bb171.sw.epilog196_crit_edge

sw.bb171.sw.epilog196_crit_edge:                  ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog196

if.then173:                                       ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @isp1760_hcd_set(ptr noundef %hcd, i32 noundef 1)
  br label %sw.epilog196

sw.bb175:                                         ; preds = %if.end161
  %184 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i384) #7
  %186 = ptrtoint ptr %val.i.i.i384 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 -1, ptr %val.i.i.i384, align 4, !annotation !126
  %arrayidx.i.i.i387 = getelementptr %struct.isp1760_hcd, ptr %185, i32 0, i32 3, i32 5
  %187 = ptrtoint ptr %arrayidx.i.i.i387 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx.i.i.i387, align 4
  %call.i.i.i388 = call i32 @regmap_field_read(ptr noundef %188, ptr noundef nonnull %val.i.i.i384) #7
  %189 = ptrtoint ptr %val.i.i.i384 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %val.i.i.i384, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i384) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.i389.not = icmp eq i32 %190, 0
  br i1 %tobool.i389.not, label %if.end178, label %sw.bb175.error_crit_edge

sw.bb175.error_crit_edge:                         ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end178:                                        ; preds = %sw.bb175
  %191 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i390) #7
  %193 = ptrtoint ptr %val.i.i.i390 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 -1, ptr %val.i.i.i390, align 4, !annotation !126
  %arrayidx.i.i.i393 = getelementptr %struct.isp1760_hcd, ptr %192, i32 0, i32 3, i32 8
  %194 = ptrtoint ptr %arrayidx.i.i.i393 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx.i.i.i393, align 4
  %call.i.i.i394 = call i32 @regmap_field_read(ptr noundef %195, ptr noundef nonnull %val.i.i.i390) #7
  %196 = ptrtoint ptr %val.i.i.i390 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %val.i.i.i390, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i390) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool.i395.not = icmp eq i32 %197, 0
  br i1 %tobool.i395.not, label %if.end178.if.else188_crit_edge, label %land.lhs.true181

if.end178.if.else188_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else188

land.lhs.true181:                                 ; preds = %if.end178
  %198 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i396) #7
  %200 = ptrtoint ptr %val.i.i.i396 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 -1, ptr %val.i.i.i396, align 4, !annotation !126
  %arrayidx.i.i.i399 = getelementptr %struct.isp1760_hcd, ptr %199, i32 0, i32 3, i32 6
  %201 = ptrtoint ptr %arrayidx.i.i.i399 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i.i.i399, align 4
  %call.i.i.i400 = call i32 @regmap_field_read(ptr noundef %202, ptr noundef nonnull %val.i.i.i396) #7
  %203 = ptrtoint ptr %val.i.i.i396 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %val.i.i.i396, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i396) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool.i401.not = icmp eq i32 %204, 0
  br i1 %tobool.i401.not, label %land.lhs.true183, label %land.lhs.true181.if.else188_crit_edge

land.lhs.true181.if.else188_crit_edge:            ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else188

land.lhs.true183:                                 ; preds = %land.lhs.true181
  %205 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i402) #7
  %207 = ptrtoint ptr %val.i.i402 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 -1, ptr %val.i.i402, align 4, !annotation !126
  %arrayidx.i.i405 = getelementptr %struct.isp1760_hcd, ptr %206, i32 0, i32 3, i32 2
  %208 = ptrtoint ptr %arrayidx.i.i405 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx.i.i405, align 4
  %call.i.i406 = call i32 @regmap_field_read(ptr noundef %209, ptr noundef nonnull %val.i.i402) #7
  %210 = ptrtoint ptr %val.i.i402 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %val.i.i402, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i402) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %211)
  %cmp185 = icmp eq i32 %211, 1
  br i1 %cmp185, label %if.then187, label %land.lhs.true183.if.else188_crit_edge

land.lhs.true183.if.else188_crit_edge:            ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else188

if.then187:                                       ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @isp1760_hcd_set(ptr noundef %hcd, i32 noundef 0)
  br label %sw.epilog196

if.else188:                                       ; preds = %land.lhs.true183.if.else188_crit_edge, %land.lhs.true181.if.else188_crit_edge, %if.end178.if.else188_crit_edge
  call fastcc void @isp1760_hcd_set(ptr noundef %hcd, i32 noundef 3)
  call fastcc void @isp1760_hcd_clear(ptr noundef %hcd, i32 noundef 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %212 = load volatile i32, ptr @jiffies, align 128
  %add190 = add i32 %212, 5
  %reset_done191 = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 15
  %213 = ptrtoint ptr %reset_done191 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %add190, ptr %reset_done191, align 4
  br label %sw.epilog196

error:                                            ; preds = %sw.bb175.error_crit_edge, %lor.lhs.false166.error_crit_edge, %sw.bb164.error_crit_edge, %if.end161.error_crit_edge, %sw.bb148.error_crit_edge, %sw.bb143.error_crit_edge, %do.end99, %do.end75, %sw.bb38.error_crit_edge, %if.then22.error_crit_edge, %sw.bb17.error_crit_edge, %if.end.error_crit_edge, %sw.bb11.error_crit_edge, %sw.bb.error_crit_edge, %isp1760_hcd_n_ports.exit.error_crit_edge
  br label %sw.epilog196

sw.epilog196:                                     ; preds = %error, %if.else188, %if.then187, %if.then173, %sw.bb171.sw.epilog196_crit_edge, %if.end170, %sw.bb163, %if.end157.sw.epilog196_crit_edge, %sw.bb143.sw.epilog196_crit_edge, %if.end131, %sw.bb37, %isp1760_hub_descriptor.exit, %sw.epilog34, %sw.bb.sw.epilog196_crit_edge
  %retval1.2 = phi i32 [ -32, %error ], [ 0, %if.end157.sw.epilog196_crit_edge ], [ 0, %if.else188 ], [ 0, %if.then187 ], [ 0, %if.then173 ], [ 0, %sw.bb171.sw.epilog196_crit_edge ], [ 0, %if.end170 ], [ 0, %sw.bb163 ], [ 0, %sw.bb143.sw.epilog196_crit_edge ], [ 0, %if.end131 ], [ 0, %sw.bb37 ], [ 0, %isp1760_hub_descriptor.exit ], [ 0, %sw.epilog34 ], [ 0, %sw.bb.sw.epilog196_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  ret i32 %retval1.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp1760_clear_tt_buffer_complete(ptr noundef %hcd, ptr nocapture noundef readonly %ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %2 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd_priv.i, align 8
  %lock = getelementptr inbounds %struct.isp1760_hcd, ptr %3, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %tt_buffer_dirty = getelementptr inbounds %struct.isp1760_qh, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %tt_buffer_dirty to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tt_buffer_dirty, align 4
  tail call fastcc void @schedule_ptds(ptr noundef %hcd)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_done_ptds(ptr noundef %hcd) unnamed_addr #2 align 64 {
entry:
  %val.i.i335 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %ptd = alloca %struct.ptd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ptd) #7
  %2 = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 3
  %4 = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 4
  %5 = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 5
  %6 = call ptr @memset(ptr %ptd, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i.i, align 4, !annotation !126
  %arrayidx.i.i = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 3, i32 23
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %9, ptr noundef nonnull %val.i.i) #7
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %neg = xor i32 %11, -1
  %int_done_map = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %int_done_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %int_done_map, align 4
  %and = and i32 %13, %neg
  store i32 %and, ptr %int_done_map, align 4
  %14 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i335) #7
  %16 = ptrtoint ptr %val.i.i335 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i.i335, align 4, !annotation !126
  %arrayidx.i.i338 = getelementptr %struct.isp1760_hcd, ptr %15, i32 0, i32 3, i32 26
  %17 = ptrtoint ptr %arrayidx.i.i338 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i338, align 4
  %call.i.i339 = call i32 @regmap_field_read(ptr noundef %18, ptr noundef nonnull %val.i.i335) #7
  %19 = ptrtoint ptr %val.i.i335 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i.i335, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i335) #7
  %neg3 = xor i32 %20, -1
  %atl_done_map = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %atl_done_map to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %atl_done_map, align 4
  %and4 = and i32 %22, %neg3
  store i32 %and4, ptr %atl_done_map, align 4
  %23 = ptrtoint ptr %int_done_map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %int_done_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool7 = icmp ne i32 %and4, 0
  %int_slots = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 9
  %atl_slots = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 7
  br label %while.cond

while.condthread-pre-split:                       ; preds = %if.end247, %land.lhs.true227.while.condthread-pre-split_crit_edge, %sw.epilog.while.condthread-pre-split_crit_edge, %do.end212, %sw.epilog.thread, %do.end67, %do.end
  %25 = ptrtoint ptr %int_done_map to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %int_done_map, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.condthread-pre-split, %entry
  %26 = phi i32 [ %.pr, %while.condthread-pre-split ], [ %24, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not = icmp eq i32 %26, 0
  br i1 %tobool9.not, label %lor.rhs10, label %if.then

lor.rhs10:                                        ; preds = %while.cond
  %27 = ptrtoint ptr %atl_done_map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %atl_done_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.not = icmp eq i32 %28, 0
  br i1 %tobool12.not, label %while.end, label %if.else

if.then:                                          ; preds = %while.cond
  %29 = call i32 @llvm.cttz.i32(i32 %26, i1 true) #7, !range !132
  %shl = shl nuw i32 1, %29
  %neg19 = xor i32 %shl, -1
  %and21 = and i32 %26, %neg19
  %30 = ptrtoint ptr %int_done_map to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and21, ptr %int_done_map, align 4
  %31 = ptrtoint ptr %int_slots to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %int_slots, align 4
  %arrayidx = getelementptr %struct.isp1760_slotinfo, ptr %32, i32 %29
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %tobool23.not = icmp eq ptr %34, null
  br i1 %tobool23.not, label %do.end, label %if.end41

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1382, i32 noundef 9, ptr noundef null) #7
  br label %while.condthread-pre-split

if.end41:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @ptd_read(ptr noundef %hcd, i32 noundef 2048, i32 noundef %29, ptr noundef nonnull %ptd)
  %qtd43 = getelementptr %struct.isp1760_slotinfo, ptr %32, i32 %29, i32 1
  %35 = ptrtoint ptr %qtd43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %qtd43, align 4
  %urb = getelementptr inbounds %struct.isp1760_qtd, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %urb, align 4
  %call44 = call fastcc i32 @check_int_transfer(ptr noundef %hcd, ptr noundef nonnull %ptd, ptr noundef %38)
  br label %if.end86

if.else:                                          ; preds = %lor.rhs10
  %39 = ptrtoint ptr %atl_done_map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %atl_done_map, align 4
  %41 = call i32 @llvm.cttz.i32(i32 %40, i1 false) #7, !range !132
  %shl47 = shl nuw i32 1, %41
  %neg48 = xor i32 %shl47, -1
  %and50 = and i32 %40, %neg48
  %42 = ptrtoint ptr %atl_done_map to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and50, ptr %atl_done_map, align 4
  %43 = ptrtoint ptr %atl_slots to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %atl_slots, align 4
  %arrayidx51 = getelementptr %struct.isp1760_slotinfo, ptr %44, i32 %41
  %45 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx51, align 4
  %tobool53.not = icmp eq ptr %46, null
  br i1 %tobool53.not, label %do.end67, label %if.end81

do.end67:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1397, i32 noundef 9, ptr noundef null) #7
  br label %while.condthread-pre-split

if.end81:                                         ; preds = %if.else
  call fastcc void @ptd_read(ptr noundef %hcd, i32 noundef 3072, i32 noundef %41, ptr noundef nonnull %ptd)
  %qtd83 = getelementptr %struct.isp1760_slotinfo, ptr %44, i32 %41, i32 1
  %47 = ptrtoint ptr %qtd83 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %qtd83, align 4
  %urb84 = getelementptr inbounds %struct.isp1760_qtd, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %urb84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %urb84, align 4
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %3, align 4
  %and.i = and i32 %52, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool21.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool21.not.i, label %if.end36.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end81
  %and24.i = and i32 %52, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.else.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  %status.i = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 12
  %53 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -75, ptr %status.i, align 4
  br label %if.end86

if.else.i:                                        ; preds = %if.then22.i
  %54 = and i32 %52, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool29.not.i = icmp eq i32 %54, 0
  %status33.i = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 12
  br i1 %tobool29.not.i, label %if.else32.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %status33.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -32, ptr %status33.i, align 4
  br label %if.end86

if.else32.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %status33.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -71, ptr %status33.i, align 4
  br label %if.end86

if.end36.i:                                       ; preds = %if.end81
  %57 = and i32 %52, -1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1879048192, i32 %57)
  %.not.i = icmp eq i32 %57, -1879048192
  br i1 %.not.i, label %do.body44.i, label %if.end57.i

do.body44.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_atl_transfer.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_done_ptds, %if.then53.i)) #7
          to label %if.end86 [label %if.then53.i], !srcloc !133

if.then53.i:                                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_atl_transfer.__UNIQUE_ID_ddebug240, ptr noundef %59, ptr noundef nonnull @.str.16) #7
  br label %if.end86

if.end57.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = and i32 %52, -2139619328
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %60)
  %.not80.i = icmp eq i32 %60, -2147483648
  %spec.select.i = select i1 %.not80.i, i32 2, i32 1
  br label %if.end86

if.end86:                                         ; preds = %if.end57.i, %if.then53.i, %do.body44.i, %if.else32.i, %if.then30.i, %if.then26.i, %if.end41
  %ptd_offset.0 = phi i32 [ 2048, %if.end41 ], [ 3072, %if.then26.i ], [ 3072, %if.then30.i ], [ 3072, %if.else32.i ], [ 3072, %do.body44.i ], [ 3072, %if.then53.i ], [ 3072, %if.end57.i ]
  %slots.0 = phi ptr [ %32, %if.end41 ], [ %44, %if.then26.i ], [ %44, %if.then30.i ], [ %44, %if.else32.i ], [ %44, %do.body44.i ], [ %44, %if.then53.i ], [ %44, %if.end57.i ]
  %state.0 = phi i32 [ %call44, %if.end41 ], [ 3, %if.then26.i ], [ 3, %if.then30.i ], [ 3, %if.else32.i ], [ 2, %do.body44.i ], [ 2, %if.then53.i ], [ %spec.select.i, %if.end57.i ]
  %slot.0 = phi i32 [ %29, %if.end41 ], [ %41, %if.then26.i ], [ %41, %if.then30.i ], [ %41, %if.else32.i ], [ %41, %do.body44.i ], [ %41, %if.then53.i ], [ %41, %if.end57.i ]
  %arrayidx87 = getelementptr %struct.isp1760_slotinfo, ptr %slots.0, i32 %slot.0
  %qtd88 = getelementptr %struct.isp1760_slotinfo, ptr %slots.0, i32 %slot.0, i32 1
  %61 = ptrtoint ptr %qtd88 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %qtd88, align 4
  store ptr null, ptr %qtd88, align 4
  %63 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx87, align 4
  store ptr null, ptr %arrayidx87, align 4
  %slot95 = getelementptr inbounds %struct.isp1760_qh, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %slot95 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %slot95, align 4
  %status = getelementptr inbounds %struct.isp1760_qtd, ptr %62, i32 0, i32 7
  %66 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp.not = icmp eq i32 %67, 2
  br i1 %cmp.not, label %if.end86.if.end118_crit_edge, label %do.end112, !prof !128

if.end86.if.end118_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

do.end112:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1412, i32 noundef 9, ptr noundef null) #7
  br label %if.end118

if.end118:                                        ; preds = %do.end112, %if.end86.if.end118_crit_edge
  %68 = zext i32 %state.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %state.0, label %do.end212 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb155
    i32 3, label %sw.bb176
  ]

sw.bb:                                            ; preds = %if.end118
  %urb126 = getelementptr inbounds %struct.isp1760_qtd, ptr %62, i32 0, i32 4
  %69 = ptrtoint ptr %urb126 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %urb126, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %70, i32 0, i32 10
  %71 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pipe, align 4
  %shr.mask = and i32 %72, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask)
  %cmp128 = icmp eq i32 %shr.mask, 1073741824
  br i1 %cmp128, label %land.lhs.true, label %sw.bb.if.else133_crit_edge

sw.bb.if.else133_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else133

land.lhs.true:                                    ; preds = %sw.bb
  %dev = getelementptr inbounds %struct.urb, ptr %70, i32 0, i32 8
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp130.not = icmp eq i32 %76, 3
  br i1 %cmp130.not, label %land.lhs.true.if.else133_crit_edge, label %land.lhs.true.if.end137_crit_edge

land.lhs.true.if.end137_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137

land.lhs.true.if.else133_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else133

if.else133:                                       ; preds = %land.lhs.true.if.else133_crit_edge, %sw.bb.if.else133_crit_edge
  br label %if.end137

if.end137:                                        ; preds = %if.else133, %land.lhs.true.if.end137_crit_edge
  %.sink345 = phi i32 [ 16383, %if.else133 ], [ 2047, %land.lhs.true.if.end137_crit_edge ]
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %3, align 4
  %and135 = and i32 %78, %.sink345
  %actual_length136 = getelementptr inbounds %struct.isp1760_qtd, ptr %62, i32 0, i32 6
  %79 = ptrtoint ptr %actual_length136 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and135, ptr %actual_length136, align 4
  %80 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 3, ptr %status, align 4
  %qtd_list = getelementptr inbounds %struct.isp1760_qtd, ptr %62, i32 0, i32 3
  %qtd_list139 = getelementptr inbounds %struct.isp1760_qh, ptr %64, i32 0, i32 1
  %81 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %qtd_list, align 4
  %cmp.i.not = icmp eq ptr %82, %qtd_list139
  br i1 %cmp.i.not, label %if.end137.if.end148_crit_edge, label %lor.lhs.false

if.end137.if.end148_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

lor.lhs.false:                                    ; preds = %if.end137
  %83 = ptrtoint ptr %urb126 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %urb126, align 4
  %pipe.i = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 10
  %85 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %86)
  %cmp.i340 = icmp ugt i32 %86, -1073741825
  br i1 %cmp.i340, label %is_short_bulk.exit, label %lor.lhs.false.if.else145_crit_edge

lor.lhs.false.if.else145_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else145

is_short_bulk.exit:                               ; preds = %lor.lhs.false
  %actual_length.i = getelementptr inbounds %struct.isp1760_qtd, ptr %62, i32 0, i32 6
  %87 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %actual_length.i, align 4
  %length.i = getelementptr inbounds %struct.isp1760_qtd, ptr %62, i32 0, i32 5
  %89 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp1.i.not = icmp ult i32 %88, %90
  br i1 %cmp1.i.not, label %is_short_bulk.exit.if.end148_crit_edge, label %is_short_bulk.exit.if.else145_crit_edge

is_short_bulk.exit.if.else145_crit_edge:          ; preds = %is_short_bulk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else145

is_short_bulk.exit.if.end148_crit_edge:           ; preds = %is_short_bulk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.else145:                                       ; preds = %is_short_bulk.exit.if.else145_crit_edge, %lor.lhs.false.if.else145_crit_edge
  %add.ptr = getelementptr i8, ptr %82, i32 -12
  br label %if.end148

if.end148:                                        ; preds = %if.else145, %is_short_bulk.exit.if.end148_crit_edge, %if.end137.if.end148_crit_edge
  %qtd.0 = phi ptr [ %add.ptr, %if.else145 ], [ null, %is_short_bulk.exit.if.end148_crit_edge ], [ null, %if.end137.if.end148_crit_edge ]
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %3, align 4
  br label %sw.epilog

sw.bb155:                                         ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %status, align 4
  %94 = ptrtoint ptr %ptd to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ptd, align 4
  %or = or i32 %95, 1
  store i32 %or, ptr %ptd, align 4
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %3, align 4
  %98 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %2, align 4
  %100 = lshr i32 %99, 6
  %shl161 = and i32 %100, 7864320
  %and158.masked = and i32 %97, -33030145
  %and165 = or i32 %and158.masked, %shl161
  %or167 = or i32 %and165, 25165824
  store i32 %or167, ptr %3, align 4
  br label %sw.epilog

sw.bb176:                                         ; preds = %if.end118
  %101 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 4, ptr %status, align 4
  %urb178 = getelementptr inbounds %struct.isp1760_qtd, ptr %62, i32 0, i32 4
  %102 = ptrtoint ptr %urb178 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %urb178, align 4
  %dev179 = getelementptr inbounds %struct.urb, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %dev179 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev179, align 4
  %speed180 = getelementptr inbounds %struct.usb_device, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %speed180 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %speed180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %107)
  %cmp181.not = icmp eq i32 %107, 3
  br i1 %cmp181.not, label %sw.bb176.sw.epilog.thread_crit_edge, label %land.lhs.true182

sw.bb176.sw.epilog.thread_crit_edge:              ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

land.lhs.true182:                                 ; preds = %sw.bb176
  %status184 = getelementptr inbounds %struct.urb, ptr %103, i32 0, i32 12
  %108 = ptrtoint ptr %status184 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %status184, align 4
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %109, label %if.then190 [
    i32 -32, label %land.lhs.true182.sw.epilog.thread_crit_edge
    i32 -121, label %land.lhs.true182.sw.epilog.thread_crit_edge347
  ]

land.lhs.true182.sw.epilog.thread_crit_edge347:   ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

land.lhs.true182.sw.epilog.thread_crit_edge:      ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.then190:                                       ; preds = %land.lhs.true182
  %tt_buffer_dirty = getelementptr inbounds %struct.isp1760_qh, ptr %64, i32 0, i32 5
  %111 = ptrtoint ptr %tt_buffer_dirty to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %tt_buffer_dirty, align 4
  %112 = ptrtoint ptr %urb178 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %urb178, align 4
  %call192 = call i32 @usb_hub_clear_tt_buffer(ptr noundef %113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.then190.sw.epilog.thread_crit_edge, label %if.then194

if.then190.sw.epilog.thread_crit_edge:            ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.then194:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %tt_buffer_dirty to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %tt_buffer_dirty, align 4
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %if.then194, %if.then190.sw.epilog.thread_crit_edge, %land.lhs.true182.sw.epilog.thread_crit_edge, %land.lhs.true182.sw.epilog.thread_crit_edge347, %sw.bb176.sw.epilog.thread_crit_edge
  %toggle198 = getelementptr inbounds %struct.isp1760_qh, ptr %64, i32 0, i32 2
  %115 = ptrtoint ptr %toggle198 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %toggle198, align 4
  %ping199 = getelementptr inbounds %struct.isp1760_qh, ptr %64, i32 0, i32 3
  %116 = ptrtoint ptr %ping199 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %ping199, align 4
  br label %while.condthread-pre-split

do.end212:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1465, i32 noundef 9, ptr noundef null) #7
  br label %while.condthread-pre-split

sw.epilog:                                        ; preds = %sw.bb155, %if.end148
  %.sink346 = phi i32 [ %97, %sw.bb155 ], [ %92, %if.end148 ]
  %qtd.1 = phi ptr [ %62, %sw.bb155 ], [ %qtd.0, %if.end148 ]
  %shr169 = lshr i32 %.sink346, 25
  %and170 = and i32 %shr169, 1
  %toggle171 = getelementptr inbounds %struct.isp1760_qh, ptr %64, i32 0, i32 2
  %117 = ptrtoint ptr %toggle171 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %and170, ptr %toggle171, align 4
  %shr173 = lshr i32 %.sink346, 26
  %and174 = and i32 %shr173, 1
  %ping175 = getelementptr inbounds %struct.isp1760_qh, ptr %64, i32 0, i32 3
  %118 = ptrtoint ptr %ping175 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %and174, ptr %ping175, align 4
  %tobool226.not = icmp eq ptr %qtd.1, null
  br i1 %tobool226.not, label %sw.epilog.while.condthread-pre-split_crit_edge, label %land.lhs.true227

sw.epilog.while.condthread-pre-split_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.condthread-pre-split

land.lhs.true227:                                 ; preds = %sw.epilog
  %status228 = getelementptr inbounds %struct.isp1760_qtd, ptr %qtd.1, i32 0, i32 7
  %119 = ptrtoint ptr %status228 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %status228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp229 = icmp eq i32 %120, 1
  br i1 %cmp229, label %if.then230, label %land.lhs.true227.while.condthread-pre-split_crit_edge

land.lhs.true227.while.condthread-pre-split_crit_edge: ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.condthread-pre-split

if.then230:                                       ; preds = %land.lhs.true227
  %121 = ptrtoint ptr %int_slots to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %int_slots, align 4
  %cmp232 = icmp eq ptr %slots.0, %122
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state.0)
  %cond = icmp eq i32 %state.0, 2
  br i1 %cmp232, label %if.then233, label %if.else243

if.then233:                                       ; preds = %if.then230
  br i1 %cond, label %do.end238, label %if.then241

do.end238:                                        ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #11
  br label %if.end247

if.then241:                                       ; preds = %if.then233
  call fastcc void @create_ptd_atl(ptr noundef %64, ptr noundef nonnull %qtd.1, ptr noundef nonnull %ptd) #7
  %urb.i.i = getelementptr inbounds %struct.isp1760_qtd, ptr %qtd.1, i32 0, i32 4
  %125 = ptrtoint ptr %urb.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %urb.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.urb, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %130)
  %cmp.i.i = icmp eq i32 %130, 3
  %interval.i.i = getelementptr inbounds %struct.urb, ptr %126, i32 0, i32 25
  %131 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %interval.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else18.i.i

if.then.i.i:                                      ; preds = %if.then241
  %shr.i.i = ashr i32 %132, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %132)
  %cmp4.i.i = icmp sgt i32 %132, 4
  br i1 %cmp4.i.i, label %if.then.i.i.create_ptd_int.exit_crit_edge, label %if.else.i.i

if.then.i.i.create_ptd_int.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_ptd_int.exit

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %132)
  %cmp8.i.i = icmp sgt i32 %132, 2
  br i1 %cmp8.i.i, label %if.else.i.i.create_ptd_int.exit_crit_edge, label %if.else10.i.i

if.else.i.i.create_ptd_int.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_ptd_int.exit

if.else10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %132)
  %cmp13.i.i = icmp eq i32 %132, 2
  %..i.i = select i1 %cmp13.i.i, i32 85, i32 255
  br label %create_ptd_int.exit

if.else18.i.i:                                    ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 255, ptr %5, align 4
  br label %create_ptd_int.exit

create_ptd_int.exit:                              ; preds = %if.else18.i.i, %if.else10.i.i, %if.else.i.i.create_ptd_int.exit_crit_edge, %if.then.i.i.create_ptd_int.exit_crit_edge
  %usof.0.i.i = phi i32 [ 15, %if.else18.i.i ], [ 1, %if.then.i.i.create_ptd_int.exit_crit_edge ], [ 34, %if.else.i.i.create_ptd_int.exit_crit_edge ], [ %..i.i, %if.else10.i.i ]
  %period.0.i.i = phi i32 [ %132, %if.else18.i.i ], [ %shr.i.i, %if.then.i.i.create_ptd_int.exit_crit_edge ], [ %shr.i.i, %if.else.i.i.create_ptd_int.exit_crit_edge ], [ %shr.i.i, %if.else10.i.i ]
  %shr22.i.i = lshr i32 %period.0.i.i, 1
  %and.i.i = and i32 %shr22.i.i, 248
  %134 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %2, align 4
  %or.i.i = or i32 %and.i.i, %135
  store i32 %or.i.i, ptr %2, align 4
  %136 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %usof.0.i.i, ptr %4, align 4
  br label %if.end247

if.else243:                                       ; preds = %if.then230
  br i1 %cond, label %if.else243.if.end247_crit_edge, label %if.then245

if.else243.if.end247_crit_edge:                   ; preds = %if.else243
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end247

if.then245:                                       ; preds = %if.else243
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @create_ptd_atl(ptr noundef %64, ptr noundef nonnull %qtd.1, ptr noundef nonnull %ptd)
  br label %if.end247

if.end247:                                        ; preds = %if.then245, %if.else243.if.end247_crit_edge, %create_ptd_int.exit, %do.end238
  call fastcc void @start_bus_transfer(ptr noundef %hcd, i32 noundef %ptd_offset.0, i32 noundef %slot.0, ptr noundef %slots.0, ptr noundef nonnull %qtd.1, ptr noundef %64, ptr noundef nonnull %ptd)
  br label %while.condthread-pre-split

while.end:                                        ; preds = %lor.rhs10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp ne i32 %24, 0
  %spec.select = select i1 %tobool.not, i1 true, i1 %tobool7
  br i1 %spec.select, label %if.then250, label %while.end.if.end251_crit_edge

while.end.if.end251_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251

if.then250:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @schedule_ptds(ptr noundef %hcd)
  br label %if.end251

if.end251:                                        ; preds = %if.then250, %while.end.if.end251_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ptd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ptd_read(ptr nocapture noundef readonly %hcd, i32 noundef %ptd_offset, i32 noundef %slot, ptr noundef writeonly %ptd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %is_isp1763 = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_isp1763 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_isp1763, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %mul.i = shl i32 %slot, 5
  %add.i = add i32 %mul.i, %ptd_offset
  %regs.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %conv1.i = and i32 %add.i, 65535
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 828, i32 noundef %conv1.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #7
  %base.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv1.i)
  %cmp.i.i = icmp ult i32 %conv1.i, 4096
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7
  br i1 %cmp.i.i, label %while.body.i.preheader.i, label %while.body5.i.preheader.i

while.body5.i.preheader.i:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %ptd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ptd, align 4
  %incdec.ptr8.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 1
  %incdec.ptr9.i.i = getelementptr i32, ptr %ptd, i32 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr8.i.i) #7, !srcloc !129
  %12 = ptrtoint ptr %incdec.ptr9.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %incdec.ptr9.i.i, align 4
  %incdec.ptr8.i.1.i = getelementptr i32, ptr %incdec.ptr8.i.i, i32 1
  %incdec.ptr9.i.1.i = getelementptr i32, ptr %ptd, i32 2
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr8.i.1.i) #7, !srcloc !129
  %14 = ptrtoint ptr %incdec.ptr9.i.1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %incdec.ptr9.i.1.i, align 4
  %incdec.ptr8.i.2.i = getelementptr i32, ptr %incdec.ptr8.i.1.i, i32 1
  %incdec.ptr9.i.2.i = getelementptr i32, ptr %ptd, i32 3
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr8.i.2.i) #7, !srcloc !129
  %16 = ptrtoint ptr %incdec.ptr9.i.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %incdec.ptr9.i.2.i, align 4
  %incdec.ptr8.i.3.i = getelementptr i32, ptr %incdec.ptr8.i.2.i, i32 1
  %incdec.ptr9.i.3.i = getelementptr i32, ptr %ptd, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr8.i.3.i) #7, !srcloc !129
  %18 = ptrtoint ptr %incdec.ptr9.i.3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %incdec.ptr9.i.3.i, align 4
  %incdec.ptr8.i.4.i = getelementptr i32, ptr %incdec.ptr8.i.3.i, i32 1
  %incdec.ptr9.i.4.i = getelementptr i32, ptr %ptd, i32 5
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr8.i.4.i) #7, !srcloc !129
  %20 = ptrtoint ptr %incdec.ptr9.i.4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %incdec.ptr9.i.4.i, align 4
  %incdec.ptr8.i.5.i = getelementptr i32, ptr %incdec.ptr8.i.4.i, i32 1
  %incdec.ptr9.i.5.i = getelementptr i32, ptr %ptd, i32 6
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr8.i.5.i) #7, !srcloc !129
  %22 = ptrtoint ptr %incdec.ptr9.i.5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %incdec.ptr9.i.5.i, align 4
  %incdec.ptr8.i.6.i = getelementptr i32, ptr %incdec.ptr8.i.5.i, i32 1
  %incdec.ptr9.i.6.i = getelementptr i32, ptr %ptd, i32 7
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr8.i.6.i) #7, !srcloc !129
  %24 = ptrtoint ptr %incdec.ptr9.i.6.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %incdec.ptr9.i.6.i, align 4
  br label %cleanup

while.body.i.preheader.i:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %26 = ptrtoint ptr %ptd to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ptd, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 1
  %incdec.ptr2.i.i = getelementptr i32, ptr %ptd, i32 1
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.i) #7, !srcloc !129
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  %29 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %incdec.ptr2.i.i, align 4
  %incdec.ptr.i.1.i = getelementptr i32, ptr %incdec.ptr.i.i, i32 1
  %incdec.ptr2.i.1.i = getelementptr i32, ptr %ptd, i32 2
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.1.i) #7, !srcloc !129
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %32 = ptrtoint ptr %incdec.ptr2.i.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %incdec.ptr2.i.1.i, align 4
  %incdec.ptr.i.2.i = getelementptr i32, ptr %incdec.ptr.i.1.i, i32 1
  %incdec.ptr2.i.2.i = getelementptr i32, ptr %ptd, i32 3
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.2.i) #7, !srcloc !129
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %35 = ptrtoint ptr %incdec.ptr2.i.2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %incdec.ptr2.i.2.i, align 4
  %incdec.ptr.i.3.i = getelementptr i32, ptr %incdec.ptr.i.2.i, i32 1
  %incdec.ptr2.i.3.i = getelementptr i32, ptr %ptd, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.3.i) #7, !srcloc !129
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  %38 = ptrtoint ptr %incdec.ptr2.i.3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %incdec.ptr2.i.3.i, align 4
  %incdec.ptr.i.4.i = getelementptr i32, ptr %incdec.ptr.i.3.i, i32 1
  %incdec.ptr2.i.4.i = getelementptr i32, ptr %ptd, i32 5
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.4.i) #7, !srcloc !129
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  %41 = ptrtoint ptr %incdec.ptr2.i.4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %incdec.ptr2.i.4.i, align 4
  %incdec.ptr.i.5.i = getelementptr i32, ptr %incdec.ptr.i.4.i, i32 1
  %incdec.ptr2.i.5.i = getelementptr i32, ptr %ptd, i32 6
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.5.i) #7, !srcloc !129
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  %44 = ptrtoint ptr %incdec.ptr2.i.5.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %incdec.ptr2.i.5.i, align 4
  %incdec.ptr.i.6.i = getelementptr i32, ptr %incdec.ptr.i.5.i, i32 1
  %incdec.ptr2.i.6.i = getelementptr i32, ptr %ptd, i32 7
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.6.i) #7, !srcloc !129
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  %47 = ptrtoint ptr %incdec.ptr2.i.6.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %incdec.ptr2.i.6.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 196, i32 noundef %conv1.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #7
  %base.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %50, i32 198
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i8) #7, !srcloc !134
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %53, i32 198
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.1.i) #7, !srcloc !134
  %55 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %56, i32 198
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.2.i) #7, !srcloc !134
  %58 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %59, i32 198
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.3.i) #7, !srcloc !134
  %61 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.4.i = getelementptr i8, ptr %62, i32 198
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.4.i) #7, !srcloc !134
  %64 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.5.i = getelementptr i8, ptr %65, i32 198
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.5.i) #7, !srcloc !134
  %67 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.6.i = getelementptr i8, ptr %68, i32 198
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.6.i) #7, !srcloc !134
  %70 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.7.i = getelementptr i8, ptr %71, i32 198
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.7.i) #7, !srcloc !134
  %73 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.8.i = getelementptr i8, ptr %74, i32 198
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.8.i) #7, !srcloc !134
  %76 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.9.i = getelementptr i8, ptr %77, i32 198
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.9.i) #7, !srcloc !134
  %79 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.10.i = getelementptr i8, ptr %80, i32 198
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.10.i) #7, !srcloc !134
  %82 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.11.i = getelementptr i8, ptr %83, i32 198
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.11.i) #7, !srcloc !134
  %85 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.12.i = getelementptr i8, ptr %86, i32 198
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.12.i) #7, !srcloc !134
  %88 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.13.i = getelementptr i8, ptr %89, i32 198
  %90 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.13.i) #7, !srcloc !134
  %91 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.14.i = getelementptr i8, ptr %92, i32 198
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.14.i) #7, !srcloc !134
  %le32_ptd.sroa.30.28.insert.ext.i = zext i16 %93 to i32
  %le32_ptd.sroa.30.28.insert.shift.i = shl nuw i32 %le32_ptd.sroa.30.28.insert.ext.i, 16
  %94 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.15.i = getelementptr i8, ptr %95, i32 198
  %96 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.15.i) #7, !srcloc !134
  %le32_ptd.sroa.30.30.insert.ext.i = zext i16 %96 to i32
  %le32_ptd.sroa.30.30.insert.insert.i = or i32 %le32_ptd.sroa.30.28.insert.shift.i, %le32_ptd.sroa.30.30.insert.ext.i
  %le32_ptd.sroa.0.sroa.5.0.insert.ext.i = zext i16 %54 to i32
  %le32_ptd.sroa.0.sroa.0.0.insert.ext.i = zext i16 %51 to i32
  %le32_ptd.sroa.0.sroa.0.0.insert.shift.i = shl nuw i32 %le32_ptd.sroa.0.sroa.0.0.insert.ext.i, 16
  %le32_ptd.sroa.0.sroa.0.0.insert.insert.i = or i32 %le32_ptd.sroa.0.sroa.0.0.insert.shift.i, %le32_ptd.sroa.0.sroa.5.0.insert.ext.i
  %97 = tail call i32 @llvm.bswap.i32(i32 %le32_ptd.sroa.0.sroa.0.0.insert.insert.i) #7
  %98 = ptrtoint ptr %ptd to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %ptd, align 4
  %le32_ptd.sroa.6.sroa.5.0.insert.ext.i = zext i16 %60 to i32
  %le32_ptd.sroa.6.sroa.0.0.insert.ext.i = zext i16 %57 to i32
  %le32_ptd.sroa.6.sroa.0.0.insert.shift.i = shl nuw i32 %le32_ptd.sroa.6.sroa.0.0.insert.ext.i, 16
  %le32_ptd.sroa.6.sroa.0.0.insert.insert.i = or i32 %le32_ptd.sroa.6.sroa.0.0.insert.shift.i, %le32_ptd.sroa.6.sroa.5.0.insert.ext.i
  %99 = tail call i32 @llvm.bswap.i32(i32 %le32_ptd.sroa.6.sroa.0.0.insert.insert.i) #7
  %dw12.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 1
  %100 = ptrtoint ptr %dw12.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %dw12.i, align 4
  %le32_ptd.sroa.10.sroa.5.0.insert.ext.i = zext i16 %66 to i32
  %le32_ptd.sroa.10.sroa.0.0.insert.ext.i = zext i16 %63 to i32
  %le32_ptd.sroa.10.sroa.0.0.insert.shift.i = shl nuw i32 %le32_ptd.sroa.10.sroa.0.0.insert.ext.i, 16
  %le32_ptd.sroa.10.sroa.0.0.insert.insert.i = or i32 %le32_ptd.sroa.10.sroa.0.0.insert.shift.i, %le32_ptd.sroa.10.sroa.5.0.insert.ext.i
  %101 = tail call i32 @llvm.bswap.i32(i32 %le32_ptd.sroa.10.sroa.0.0.insert.insert.i) #7
  %dw23.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 2
  %102 = ptrtoint ptr %dw23.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %dw23.i, align 4
  %le32_ptd.sroa.14.sroa.5.0.insert.ext.i = zext i16 %72 to i32
  %le32_ptd.sroa.14.sroa.0.0.insert.ext.i = zext i16 %69 to i32
  %le32_ptd.sroa.14.sroa.0.0.insert.shift.i = shl nuw i32 %le32_ptd.sroa.14.sroa.0.0.insert.ext.i, 16
  %le32_ptd.sroa.14.sroa.0.0.insert.insert.i = or i32 %le32_ptd.sroa.14.sroa.0.0.insert.shift.i, %le32_ptd.sroa.14.sroa.5.0.insert.ext.i
  %103 = tail call i32 @llvm.bswap.i32(i32 %le32_ptd.sroa.14.sroa.0.0.insert.insert.i) #7
  %dw34.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 3
  %104 = ptrtoint ptr %dw34.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %dw34.i, align 4
  %le32_ptd.sroa.18.sroa.5.0.insert.ext.i = zext i16 %78 to i32
  %le32_ptd.sroa.18.sroa.0.0.insert.ext.i = zext i16 %75 to i32
  %le32_ptd.sroa.18.sroa.0.0.insert.shift.i = shl nuw i32 %le32_ptd.sroa.18.sroa.0.0.insert.ext.i, 16
  %le32_ptd.sroa.18.sroa.0.0.insert.insert.i = or i32 %le32_ptd.sroa.18.sroa.0.0.insert.shift.i, %le32_ptd.sroa.18.sroa.5.0.insert.ext.i
  %105 = tail call i32 @llvm.bswap.i32(i32 %le32_ptd.sroa.18.sroa.0.0.insert.insert.i) #7
  %dw45.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 4
  %106 = ptrtoint ptr %dw45.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %dw45.i, align 4
  %le32_ptd.sroa.22.sroa.5.0.insert.ext.i = zext i16 %84 to i32
  %le32_ptd.sroa.22.sroa.0.0.insert.ext.i = zext i16 %81 to i32
  %le32_ptd.sroa.22.sroa.0.0.insert.shift.i = shl nuw i32 %le32_ptd.sroa.22.sroa.0.0.insert.ext.i, 16
  %le32_ptd.sroa.22.sroa.0.0.insert.insert.i = or i32 %le32_ptd.sroa.22.sroa.0.0.insert.shift.i, %le32_ptd.sroa.22.sroa.5.0.insert.ext.i
  %107 = tail call i32 @llvm.bswap.i32(i32 %le32_ptd.sroa.22.sroa.0.0.insert.insert.i) #7
  %dw56.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 5
  %108 = ptrtoint ptr %dw56.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %dw56.i, align 4
  %le32_ptd.sroa.26.sroa.5.0.insert.ext.i = zext i16 %90 to i32
  %le32_ptd.sroa.26.sroa.0.0.insert.ext.i = zext i16 %87 to i32
  %le32_ptd.sroa.26.sroa.0.0.insert.shift.i = shl nuw i32 %le32_ptd.sroa.26.sroa.0.0.insert.ext.i, 16
  %le32_ptd.sroa.26.sroa.0.0.insert.insert.i = or i32 %le32_ptd.sroa.26.sroa.0.0.insert.shift.i, %le32_ptd.sroa.26.sroa.5.0.insert.ext.i
  %109 = tail call i32 @llvm.bswap.i32(i32 %le32_ptd.sroa.26.sroa.0.0.insert.insert.i) #7
  %dw67.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 6
  %110 = ptrtoint ptr %dw67.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %dw67.i, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %le32_ptd.sroa.30.30.insert.insert.i) #7
  %dw78.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 7
  %112 = ptrtoint ptr %dw78.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %dw78.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.body.i.preheader.i, %while.body5.i.preheader.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_int_transfer(ptr nocapture noundef readonly %hcd, ptr nocapture noundef readonly %ptd, ptr nocapture noundef writeonly %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dw3 = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 3
  %0 = ptrtoint ptr %dw3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dw3, align 4
  %and = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %dw41 = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 4
  %2 = ptrtoint ptr %dw41 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dw41, align 4
  %shr = lshr i32 %3, 8
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -71, ptr %status, align 4
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %if.then
  %dw4.073 = phi i32 [ %shr, %if.then ], [ %shr48, %sw.epilog.for.body_crit_edge ]
  %i.072 = phi i32 [ 0, %if.then ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %and2 = and i32 %dw4.073, 7
  %5 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %and2, label %for.body.sw.epilog_crit_edge [
    i32 4, label %do.body
    i32 1, label %do.body9
    i32 2, label %do.body29
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_int_transfer.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_int_transfer, %if.then6)) #7
          to label %sw.epilog.sink.split [label %if.then6], !srcloc !133

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_int_transfer.__UNIQUE_ID_ddebug237, ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %i.072) #7
  br label %sw.epilog.sink.split

do.body9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_int_transfer.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_int_transfer, %if.then21)) #7
          to label %sw.epilog.sink.split [label %if.then21], !srcloc !133

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_int_transfer.__UNIQUE_ID_ddebug238, ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef %i.072) #7
  br label %sw.epilog.sink.split

do.body29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_int_transfer.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_int_transfer, %if.then41)) #7
          to label %sw.epilog.sink.split [label %if.then41], !srcloc !133

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_int_transfer.__UNIQUE_ID_ddebug239, ptr noundef %11, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef %i.072) #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then41, %do.body29, %if.then21, %do.body9, %if.then6, %do.body
  %.sink = phi i32 [ -70, %do.body ], [ -70, %if.then6 ], [ -71, %do.body9 ], [ -71, %if.then21 ], [ -75, %do.body29 ], [ -75, %if.then41 ]
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.sw.epilog_crit_edge
  %shr48 = lshr i32 %dw4.073, 3
  %inc = add nuw nsw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 3, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_clear_tt_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @create_ptd_atl(ptr noundef readonly %qh, ptr nocapture noundef readonly %qtd, ptr nocapture noundef %ptd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ptd, i32 0, i32 32)
  %urb = getelementptr inbounds %struct.isp1760_qtd, ptr %qtd, i32 0, i32 4
  %1 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %urb, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 10
  %5 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pipe, align 4
  %7 = lshr i32 %6, 15
  %and.i = and i32 %7, 15
  %8 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.not = icmp eq i32 %8, 0
  %arrayidx.i = getelementptr %struct.usb_device, ptr %4, i32 0, i32 22, i32 %and.i
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %4, i32 0, i32 21, i32 %and.i
  %ep.0.in.i = select i1 %tobool.not.i.not, ptr %arrayidx.i, ptr %arrayidx57.i
  %9 = ptrtoint ptr %ep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %ep.0.i = load ptr, ptr %ep.0.in.i, align 4
  %tobool59.not.i = icmp eq ptr %ep.0.i, null
  br i1 %tobool59.not.i, label %entry.usb_maxpacket.exit_crit_edge, label %if.end61.i

entry.usb_maxpacket.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i, i32 0, i32 4
  %10 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %12 = and i16 %11, -249
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #7
  %phi.cast = zext i16 %13 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 18
  %phi.bo206 = or i32 %phi.bo, 1
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %entry.usb_maxpacket.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo206, %if.end61.i ], [ 1, %entry.usb_maxpacket.exit_crit_edge ]
  %14 = ptrtoint ptr %ptd to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %ptd, align 4
  %length = getelementptr inbounds %struct.isp1760_qtd, ptr %qtd, i32 0, i32 5
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  %shl = shl i32 %16, 3
  %or9 = or i32 %retval.0.i, %shl
  store i32 %or9, ptr %ptd, align 4
  %17 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urb, align 4
  %pipe11 = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %pipe11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pipe11, align 4
  %21 = shl i32 %20, 16
  %shl14 = and i32 %21, -2147483648
  %or16 = or i32 %shl14, %or9
  store i32 %or16, ptr %ptd, align 4
  %22 = load ptr, ptr %urb, align 4
  %pipe18 = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %pipe18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pipe18, align 4
  %shr19 = lshr i32 %24, 16
  %and20 = and i32 %shr19, 7
  %dw1 = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 1
  %25 = ptrtoint ptr %dw1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and20, ptr %dw1, align 4
  %26 = load ptr, ptr %urb, align 4
  %pipe23 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %pipe23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pipe23, align 4
  %29 = lshr i32 %28, 5
  %shl26 = and i32 %29, 1016
  %or28 = or i32 %shl26, %and20
  store i32 %or28, ptr %dw1, align 4
  %30 = ptrtoint ptr %qtd to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %qtd, align 4
  %conv29 = zext i8 %31 to i32
  %shl30 = shl nuw nsw i32 %conv29, 10
  %or32 = or i32 %shl30, %or28
  store i32 %or32, ptr %dw1, align 4
  %32 = load ptr, ptr %urb, align 4
  %pipe34 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %pipe34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pipe34, align 4
  %shr35 = lshr i32 %34, 30
  %35 = zext i32 %shr35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %shr35, label %usb_maxpacket.exit.if.end49_crit_edge [
    i32 3, label %usb_maxpacket.exit.if.end49.sink.split_crit_edge
    i32 1, label %if.then46
  ]

usb_maxpacket.exit.if.end49.sink.split_crit_edge: ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.sink.split

usb_maxpacket.exit.if.end49_crit_edge:            ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then46:                                        ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.then46, %usb_maxpacket.exit.if.end49.sink.split_crit_edge
  %.sink = phi i32 [ 12288, %if.then46 ], [ 8192, %usb_maxpacket.exit.if.end49.sink.split_crit_edge ]
  %or48 = or i32 %or32, %.sink
  %36 = ptrtoint ptr %dw1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or48, ptr %dw1, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %usb_maxpacket.exit.if.end49_crit_edge
  %37 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %urb, align 4
  %dev51 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev51, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp52.not = icmp eq i32 %42, 3
  br i1 %cmp52.not, label %if.else91, label %if.then54

if.then54:                                        ; preds = %if.end49
  %43 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dw1, align 4
  %or56 = or i32 %44, 16384
  store i32 %or56, ptr %dw1, align 4
  %45 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %urb, align 4
  %dev58 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev58, align 4
  %speed59 = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %speed59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %speed59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp60 = icmp eq i32 %50, 1
  br i1 %cmp60, label %if.then62, label %if.then54.if.end65_crit_edge

if.then54.if.end65_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then62:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %or64 = or i32 %44, 147456
  %51 = ptrtoint ptr %dw1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or64, ptr %dw1, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.then54.if.end65_crit_edge
  %52 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %urb, align 4
  %dev67 = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev67, align 4
  %ttport = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %ttport to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ttport, align 8
  %shl68 = shl i32 %57, 18
  %58 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dw1, align 4
  %or70 = or i32 %59, %shl68
  store i32 %or70, ptr %dw1, align 4
  %60 = load ptr, ptr %urb, align 4
  %dev72 = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev72, align 4
  %tt = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tt, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl73 = shl i32 %68, 25
  %or75 = or i32 %shl73, %or70
  store i32 %or75, ptr %dw1, align 4
  %69 = load ptr, ptr %urb, align 4
  %pipe77 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %pipe77 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pipe77, align 4
  %shr78.mask = and i32 %71, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr78.mask)
  %cmp80 = icmp eq i32 %shr78.mask, 1073741824
  br i1 %cmp80, label %land.lhs.true, label %if.end65.if.end111_crit_edge

if.end65.if.end111_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

land.lhs.true:                                    ; preds = %if.end65
  %dev83 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 8
  %72 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev83, align 4
  %speed84 = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %speed84 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %speed84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp85 = icmp eq i32 %75, 1
  br i1 %cmp85, label %if.then87, label %land.lhs.true.if.end111_crit_edge

land.lhs.true.if.end111_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then87:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %or89 = or i32 %or75, 131072
  %76 = ptrtoint ptr %dw1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or89, ptr %dw1, align 4
  br label %if.end111

if.else91:                                        ; preds = %if.end49
  %or94 = or i32 %or16, 536870912
  %77 = ptrtoint ptr %ptd to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or94, ptr %ptd, align 4
  %78 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %urb, align 4
  %pipe96 = getelementptr inbounds %struct.urb, ptr %79, i32 0, i32 10
  %80 = ptrtoint ptr %pipe96 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pipe96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %switch = icmp slt i32 %81, 0
  br i1 %switch, label %if.then107, label %if.else91.if.end111_crit_edge

if.else91.if.end111_crit_edge:                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then107:                                       ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  %ping = getelementptr inbounds %struct.isp1760_qh, ptr %qh, i32 0, i32 3
  %82 = ptrtoint ptr %ping to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ping, align 4
  %shl108 = shl i32 %83, 26
  %dw3 = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 3
  %84 = ptrtoint ptr %dw3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dw3, align 4
  %or109 = or i32 %85, %shl108
  store i32 %or109, ptr %dw3, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.else91.if.end111_crit_edge, %if.then87, %land.lhs.true.if.end111_crit_edge, %if.end65.if.end111_crit_edge
  %dw2 = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 2
  %86 = ptrtoint ptr %dw2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %dw2, align 4
  %payload_addr = getelementptr inbounds %struct.isp1760_qtd, ptr %qtd, i32 0, i32 2
  %87 = ptrtoint ptr %payload_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %payload_addr, align 4
  %sub.i = shl i32 %88, 5
  %89 = add i32 %sub.i, -32768
  %shl113 = and i32 %89, -256
  store i32 %shl113, ptr %dw2, align 4
  %dw3120 = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 3
  %90 = ptrtoint ptr %dw3120 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dw3120, align 4
  %toggle = getelementptr inbounds %struct.isp1760_qh, ptr %qh, i32 0, i32 2
  %92 = ptrtoint ptr %toggle to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %toggle, align 4
  %shl122 = shl i32 %93, 25
  %or124 = or i32 %shl122, %91
  store i32 %or124, ptr %dw3120, align 4
  %94 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %urb, align 4
  %pipe126 = getelementptr inbounds %struct.urb, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %pipe126 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pipe126, align 4
  %shr127.mask = and i32 %97, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr127.mask)
  %cmp129 = icmp eq i32 %shr127.mask, -2147483648
  br i1 %cmp129, label %if.then131, label %if.end111.if.end146_crit_edge

if.end111.if.end146_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.then131:                                       ; preds = %if.end111
  %data_buffer = getelementptr inbounds %struct.isp1760_qtd, ptr %qtd, i32 0, i32 1
  %98 = ptrtoint ptr %data_buffer to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data_buffer, align 4
  %setup_packet = getelementptr inbounds %struct.urb, ptr %95, i32 0, i32 21
  %100 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %setup_packet, align 4
  %cmp133 = icmp eq ptr %99, %101
  br i1 %cmp133, label %if.then135, label %if.else138

if.then135:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #9
  %and137 = and i32 %or124, -33554433
  br label %if.end146.sink.split

if.else138:                                       ; preds = %if.then131
  %qtd_list.i = getelementptr inbounds %struct.isp1760_qtd, ptr %qtd, i32 0, i32 3
  %qtd_list1.i = getelementptr inbounds %struct.isp1760_qh, ptr %qh, i32 0, i32 1
  %102 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %qtd_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %103, %qtd_list1.i
  br i1 %cmp.i.not.i, label %if.else138.if.then141_crit_edge, label %last_qtd_of_urb.exit

if.else138.if.then141_crit_edge:                  ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141

last_qtd_of_urb.exit:                             ; preds = %if.else138
  %urb4.i = getelementptr i8, ptr %103, i32 8
  %104 = ptrtoint ptr %urb4.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %urb4.i, align 4
  %cmp.i.not = icmp eq ptr %105, %95
  br i1 %cmp.i.not, label %last_qtd_of_urb.exit.if.end146_crit_edge, label %last_qtd_of_urb.exit.if.then141_crit_edge

last_qtd_of_urb.exit.if.then141_crit_edge:        ; preds = %last_qtd_of_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141

last_qtd_of_urb.exit.if.end146_crit_edge:         ; preds = %last_qtd_of_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.then141:                                       ; preds = %last_qtd_of_urb.exit.if.then141_crit_edge, %if.else138.if.then141_crit_edge
  %or143 = or i32 %or124, 33554432
  br label %if.end146.sink.split

if.end146.sink.split:                             ; preds = %if.then141, %if.then135
  %and137.sink = phi i32 [ %and137, %if.then135 ], [ %or143, %if.then141 ]
  %106 = ptrtoint ptr %dw3120 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %and137.sink, ptr %dw3120, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.end146.sink.split, %last_qtd_of_urb.exit.if.end146_crit_edge, %if.end111.if.end146_crit_edge
  %107 = ptrtoint ptr %dw3120 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dw3120, align 4
  %or150 = or i32 %108, -2122317824
  store i32 %or150, ptr %dw3120, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_bus_transfer(ptr nocapture noundef readonly %hcd, i32 noundef %ptd_offset, i32 noundef %slot, ptr nocapture noundef %slots, ptr noundef %qtd, ptr noundef %qh, ptr noundef readonly %ptd) unnamed_addr #2 align 64 {
entry:
  %val.i.i248 = alloca i32, align 4
  %val.i.i239 = alloca i32, align 4
  %val.i.i234 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp = icmp slt i32 %slot, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %memory_layout = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %memory_layout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memory_layout, align 4
  %slot_num = getelementptr inbounds %struct.isp1760_memory_layout, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot_num, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %slot)
  %cmp1 = icmp ult i32 %sub, %slot
  br i1 %cmp1, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !125

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1010, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %length = getelementptr inbounds %struct.isp1760_qtd, ptr %qtd, i32 0, i32 5
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool21.not = icmp eq i32 %7, 0
  br i1 %tobool21.not, label %if.end.if.end46_crit_edge, label %land.rhs

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.rhs:                                         ; preds = %if.end
  %payload_addr = getelementptr inbounds %struct.isp1760_qtd, ptr %qtd, i32 0, i32 2
  %8 = ptrtoint ptr %payload_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %payload_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool22.not = icmp eq i32 %9, 0
  br i1 %tobool22.not, label %do.end40, label %land.rhs.if.end46_crit_edge, !prof !125

land.rhs.if.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.end40:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1011, i32 noundef 9, ptr noundef null) #7
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %land.rhs.if.end46_crit_edge, %if.end.if.end46_crit_edge
  %arrayidx = getelementptr %struct.isp1760_slotinfo, ptr %slots, i32 %slot
  %qtd55 = getelementptr %struct.isp1760_slotinfo, ptr %slots, i32 %slot, i32 1
  %10 = ptrtoint ptr %qtd55 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qtd55, align 4
  %tobool56.not = icmp eq ptr %11, null
  br i1 %tobool56.not, label %if.end46.if.end78_crit_edge, label %do.end72, !prof !128

if.end46.if.end78_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end72:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1012, i32 noundef 9, ptr noundef null) #7
  br label %if.end78

if.end78:                                         ; preds = %do.end72, %if.end46.if.end78_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool89.not = icmp eq ptr %13, null
  br i1 %tobool89.not, label %if.end78.if.end111_crit_edge, label %do.end105, !prof !128

if.end78.if.end111_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

do.end105:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %if.end111

if.end111:                                        ; preds = %do.end105, %if.end78.if.end111_crit_edge
  %status = getelementptr inbounds %struct.isp1760_qtd, ptr %qtd, i32 0, i32 7
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp120.not = icmp eq i32 %15, 1
  br i1 %cmp120.not, label %if.end111.if.end142_crit_edge, label %do.end136, !prof !128

if.end111.if.end142_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

do.end136:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1014, i32 noundef 9, ptr noundef null) #7
  br label %if.end142

if.end142:                                        ; preds = %do.end136, %if.end111.if.end142_crit_edge
  %is_isp1763 = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %is_isp1763 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_isp1763, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool150.not = icmp eq i8 %17, 0
  br i1 %tobool150.not, label %if.end142.if.end152_crit_edge, label %if.then151

if.end142.if.end152_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

if.then151:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #7
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.end142.if.end152_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %ptd_offset)
  %cmp153 = icmp eq i32 %ptd_offset, 3072
  %19 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hcd_priv.i, align 8
  br i1 %cmp153, label %if.then154, label %if.else

if.then154:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i.i, align 4, !annotation !126
  %arrayidx.i.i = getelementptr %struct.isp1760_hcd, ptr %20, i32 0, i32 3, i32 26
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %23, ptr noundef nonnull %val.i.i) #7
  %24 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %shl = shl nuw i32 1, %slot
  %or = or i32 %25, %shl
  %26 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i233 = getelementptr %struct.isp1760_hcd, ptr %27, i32 0, i32 3, i32 26
  %28 = ptrtoint ptr %arrayidx.i.i233 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i233, align 4
  %call.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %29, i32 noundef -1, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %30 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i234) #7
  %32 = ptrtoint ptr %val.i.i234 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i.i234, align 4, !annotation !126
  %arrayidx.i.i237 = getelementptr %struct.isp1760_hcd, ptr %31, i32 0, i32 3, i32 25
  %33 = ptrtoint ptr %arrayidx.i.i237 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i237, align 4
  %call.i.i238 = call i32 @regmap_field_read(ptr noundef %34, ptr noundef nonnull %val.i.i234) #7
  %35 = ptrtoint ptr %val.i.i234 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i.i234, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i234) #7
  %atl_done_map = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %atl_done_map to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %atl_done_map, align 4
  %or157 = or i32 %38, %36
  %neg = xor i32 %shl, -1
  %and = and i32 %or157, %neg
  store i32 %and, ptr %atl_done_map, align 4
  br label %if.end169

if.else:                                          ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i239) #7
  %39 = ptrtoint ptr %val.i.i239 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %val.i.i239, align 4, !annotation !126
  %arrayidx.i.i242 = getelementptr %struct.isp1760_hcd, ptr %20, i32 0, i32 3, i32 23
  %40 = ptrtoint ptr %arrayidx.i.i242 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i242, align 4
  %call.i.i243 = call i32 @regmap_field_read(ptr noundef %41, ptr noundef nonnull %val.i.i239) #7
  %42 = ptrtoint ptr %val.i.i239 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i.i239, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i239) #7
  %shl161 = shl nuw i32 1, %slot
  %or162 = or i32 %43, %shl161
  %44 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i246 = getelementptr %struct.isp1760_hcd, ptr %45, i32 0, i32 3, i32 23
  %46 = ptrtoint ptr %arrayidx.i.i246 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i246, align 4
  %call.i.i.i247 = call i32 @regmap_field_update_bits_base(ptr noundef %47, i32 noundef -1, i32 noundef %or162, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %48 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i248) #7
  %50 = ptrtoint ptr %val.i.i248 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %val.i.i248, align 4, !annotation !126
  %arrayidx.i.i251 = getelementptr %struct.isp1760_hcd, ptr %49, i32 0, i32 3, i32 22
  %51 = ptrtoint ptr %arrayidx.i.i251 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i251, align 4
  %call.i.i252 = call i32 @regmap_field_read(ptr noundef %52, ptr noundef nonnull %val.i.i248) #7
  %53 = ptrtoint ptr %val.i.i248 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val.i.i248, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i248) #7
  %int_done_map = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 10
  %55 = ptrtoint ptr %int_done_map to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %int_done_map, align 4
  %or164 = or i32 %56, %54
  %neg166 = xor i32 %shl161, -1
  %and168 = and i32 %or164, %neg166
  store i32 %and168, ptr %int_done_map, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.else, %if.then154
  %neg171.pre-phi = phi i32 [ %neg166, %if.else ], [ %neg, %if.then154 ]
  %skip_map.0 = phi i32 [ %43, %if.else ], [ %25, %if.then154 ]
  %slot173 = getelementptr inbounds %struct.isp1760_qh, ptr %qh, i32 0, i32 4
  %57 = ptrtoint ptr %slot173 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %slot, ptr %slot173, align 4
  %58 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %status, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %timestamp = getelementptr %struct.isp1760_slotinfo, ptr %slots, i32 %slot, i32 2
  %60 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %timestamp, align 4
  %61 = ptrtoint ptr %qtd55 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %qtd, ptr %qtd55, align 4
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %qh, ptr %arrayidx, align 4
  %63 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hcd_priv.i, align 8
  %is_isp1763.i = getelementptr inbounds %struct.isp1760_hcd, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %is_isp1763.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %is_isp1763.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end169
  %base.i = getelementptr inbounds %struct.isp1760_hcd, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %mul.i.i = shl i32 %slot, 5
  %add.i.i = add i32 %mul.i.i, %ptd_offset
  %add1.i.i = add i32 %add.i.i, 4
  %dw1.i.i = getelementptr %struct.ptd, ptr %ptd, i32 0, i32 1
  %add.ptr.i.i.i = getelementptr i8, ptr %68, i32 %add1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add1.i.i)
  %cmp.i.i.i = icmp ult i32 %add1.i.i, 4096
  %69 = ptrtoint ptr %dw1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dw1.i.i, align 4
  br i1 %cmp.i.i.i, label %while.body.i.preheader.i.i, label %while.body5.i.preheader.i.i

while.body5.i.preheader.i.i:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %70) #7, !srcloc !131
  %incdec.ptr7.i.i.i = getelementptr %struct.ptd, ptr %ptd, i32 0, i32 2
  %incdec.ptr8.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 1
  %71 = ptrtoint ptr %incdec.ptr7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %incdec.ptr7.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr8.i.i.i, i32 %72) #7, !srcloc !131
  %incdec.ptr7.i.1.i.i = getelementptr %struct.ptd, ptr %ptd, i32 0, i32 3
  %incdec.ptr8.i.1.i.i = getelementptr i32, ptr %incdec.ptr8.i.i.i, i32 1
  %73 = ptrtoint ptr %incdec.ptr7.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %incdec.ptr7.i.1.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr8.i.1.i.i, i32 %74) #7, !srcloc !131
  %incdec.ptr7.i.2.i.i = getelementptr %struct.ptd, ptr %ptd, i32 0, i32 4
  %incdec.ptr8.i.2.i.i = getelementptr i32, ptr %incdec.ptr8.i.1.i.i, i32 1
  %75 = ptrtoint ptr %incdec.ptr7.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %incdec.ptr7.i.2.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr8.i.2.i.i, i32 %76) #7, !srcloc !131
  %incdec.ptr7.i.3.i.i = getelementptr %struct.ptd, ptr %ptd, i32 0, i32 5
  %incdec.ptr8.i.3.i.i = getelementptr i32, ptr %incdec.ptr8.i.2.i.i, i32 1
  %77 = ptrtoint ptr %incdec.ptr7.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %incdec.ptr7.i.3.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr8.i.3.i.i, i32 %78) #7, !srcloc !131
  %incdec.ptr7.i.4.i.i = getelementptr %struct.ptd, ptr %ptd, i32 0, i32 6
  %incdec.ptr8.i.4.i.i = getelementptr i32, ptr %incdec.ptr8.i.3.i.i, i32 1
  %79 = ptrtoint ptr %incdec.ptr7.i.4.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %incdec.ptr7.i.4.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr8.i.4.i.i, i32 %80) #7, !srcloc !131
  %incdec.ptr7.i.5.i.i = getelementptr %struct.ptd, ptr %ptd, i32 0, i32 7
  %incdec.ptr8.i.5.i.i = getelementptr i32, ptr %incdec.ptr8.i.4.i.i, i32 1
  %81 = ptrtoint ptr %incdec.ptr7.i.5.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %incdec.ptr7.i.5.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr8.i.5.i.i, i32 %82) #7, !srcloc !131
  br label %isp1760_mem_write.exit.i.i

while.body.i.preheader.i.i:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = call i32 @llvm.bswap.i32(i32 %70) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %83) #7, !srcloc !131
  %incdec.ptr.i.i.i = getelementptr %struct.ptd, ptr %ptd, i32 0, i32 2
  %incdec.ptr2.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 1
  %84 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %incdec.ptr.i.i.i, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr2.i.i.i, i32 %86) #7, !srcloc !131
  %incdec.ptr.i.1.i.i = getelementptr %struct.ptd, ptr %ptd, i32 0, i32 3
  %incdec.ptr2.i.1.i.i = getelementptr i32, ptr %incdec.ptr2.i.i.i, i32 1
  %87 = ptrtoint ptr %incdec.ptr.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %incdec.ptr.i.1.i.i, align 4
  %89 = call i32 @llvm.bswap.i32(i32 %88) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr2.i.1.i.i, i32 %89) #7, !srcloc !131
  %incdec.ptr.i.2.i.i = getelementptr %struct.ptd, ptr %ptd, i32 0, i32 4
  %incdec.ptr2.i.2.i.i = getelementptr i32, ptr %incdec.ptr2.i.1.i.i, i32 1
  %90 = ptrtoint ptr %incdec.ptr.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %incdec.ptr.i.2.i.i, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr2.i.2.i.i, i32 %92) #7, !srcloc !131
  %incdec.ptr.i.3.i.i = getelementptr %struct.ptd, ptr %ptd, i32 0, i32 5
  %incdec.ptr2.i.3.i.i = getelementptr i32, ptr %incdec.ptr2.i.2.i.i, i32 1
  %93 = ptrtoint ptr %incdec.ptr.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %incdec.ptr.i.3.i.i, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr2.i.3.i.i, i32 %95) #7, !srcloc !131
  %incdec.ptr.i.4.i.i = getelementptr %struct.ptd, ptr %ptd, i32 0, i32 6
  %incdec.ptr2.i.4.i.i = getelementptr i32, ptr %incdec.ptr2.i.3.i.i, i32 1
  %96 = ptrtoint ptr %incdec.ptr.i.4.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %incdec.ptr.i.4.i.i, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %97) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr2.i.4.i.i, i32 %98) #7, !srcloc !131
  %incdec.ptr.i.5.i.i = getelementptr %struct.ptd, ptr %ptd, i32 0, i32 7
  %incdec.ptr2.i.5.i.i = getelementptr i32, ptr %incdec.ptr2.i.4.i.i, i32 1
  %99 = ptrtoint ptr %incdec.ptr.i.5.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %incdec.ptr.i.5.i.i, align 4
  %101 = call i32 @llvm.bswap.i32(i32 %100) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr2.i.5.i.i, i32 %101) #7, !srcloc !131
  br label %isp1760_mem_write.exit.i.i

isp1760_mem_write.exit.i.i:                       ; preds = %while.body.i.preheader.i.i, %while.body5.i.preheader.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @arm_heavy_mb() #7
  %add.ptr.i5.i.i = getelementptr i8, ptr %68, i32 %add.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i6.i.i = icmp ult i32 %add.i.i, 4096
  %102 = ptrtoint ptr %ptd to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ptd, align 4
  br i1 %cmp.i6.i.i, label %while.body.i16.preheader.i.i, label %while.body5.i24.preheader.i.i

while.body5.i24.preheader.i.i:                    ; preds = %isp1760_mem_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %103) #7, !srcloc !131
  br label %ptd_write.exit

while.body.i16.preheader.i.i:                     ; preds = %isp1760_mem_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = call i32 @llvm.bswap.i32(i32 %103) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %104) #7, !srcloc !131
  br label %ptd_write.exit

if.end.i:                                         ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i6.i = shl i32 %slot, 5
  %add.i7.i = add i32 %mul.i6.i, %ptd_offset
  %105 = ptrtoint ptr %ptd to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ptd, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106) #7
  %ptd.sroa.0.sroa.0.0.extract.shift.i.i = lshr i32 %107, 16
  %ptd.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i32 %ptd.sroa.0.sroa.0.0.extract.shift.i.i to i16
  %ptd.sroa.0.sroa.5.0.extract.trunc.i.i = trunc i32 %107 to i16
  %dw1.i8.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 1
  %108 = ptrtoint ptr %dw1.i8.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dw1.i8.i, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109) #7
  %ptd.sroa.6.sroa.0.0.extract.shift.i.i = lshr i32 %110, 16
  %ptd.sroa.6.sroa.0.0.extract.trunc.i.i = trunc i32 %ptd.sroa.6.sroa.0.0.extract.shift.i.i to i16
  %ptd.sroa.6.sroa.5.0.extract.trunc.i.i = trunc i32 %110 to i16
  %dw2.i.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 2
  %111 = ptrtoint ptr %dw2.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dw2.i.i, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %112) #7
  %ptd.sroa.10.sroa.0.0.extract.shift.i.i = lshr i32 %113, 16
  %ptd.sroa.10.sroa.0.0.extract.trunc.i.i = trunc i32 %ptd.sroa.10.sroa.0.0.extract.shift.i.i to i16
  %ptd.sroa.10.sroa.5.0.extract.trunc.i.i = trunc i32 %113 to i16
  %dw3.i.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 3
  %114 = ptrtoint ptr %dw3.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dw3.i.i, align 4
  %116 = call i32 @llvm.bswap.i32(i32 %115) #7
  %ptd.sroa.14.sroa.0.0.extract.shift.i.i = lshr i32 %116, 16
  %ptd.sroa.14.sroa.0.0.extract.trunc.i.i = trunc i32 %ptd.sroa.14.sroa.0.0.extract.shift.i.i to i16
  %ptd.sroa.14.sroa.5.0.extract.trunc.i.i = trunc i32 %116 to i16
  %dw4.i.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 4
  %117 = ptrtoint ptr %dw4.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dw4.i.i, align 4
  %119 = call i32 @llvm.bswap.i32(i32 %118) #7
  %ptd.sroa.18.sroa.0.0.extract.shift.i.i = lshr i32 %119, 16
  %ptd.sroa.18.sroa.0.0.extract.trunc.i.i = trunc i32 %ptd.sroa.18.sroa.0.0.extract.shift.i.i to i16
  %ptd.sroa.18.sroa.5.0.extract.trunc.i.i = trunc i32 %119 to i16
  %dw5.i.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 5
  %120 = ptrtoint ptr %dw5.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dw5.i.i, align 4
  %122 = call i32 @llvm.bswap.i32(i32 %121) #7
  %ptd.sroa.22.sroa.0.0.extract.shift.i.i = lshr i32 %122, 16
  %ptd.sroa.22.sroa.0.0.extract.trunc.i.i = trunc i32 %ptd.sroa.22.sroa.0.0.extract.shift.i.i to i16
  %ptd.sroa.22.sroa.5.0.extract.trunc.i.i = trunc i32 %122 to i16
  %dw6.i.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 6
  %123 = ptrtoint ptr %dw6.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dw6.i.i, align 4
  %125 = call i32 @llvm.bswap.i32(i32 %124) #7
  %ptd.sroa.26.sroa.0.0.extract.shift.i.i = lshr i32 %125, 16
  %ptd.sroa.26.sroa.0.0.extract.trunc.i.i = trunc i32 %ptd.sroa.26.sroa.0.0.extract.shift.i.i to i16
  %ptd.sroa.26.sroa.5.0.extract.trunc.i.i = trunc i32 %125 to i16
  %dw7.i.i = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 7
  %126 = ptrtoint ptr %dw7.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dw7.i.i, align 4
  %128 = call i32 @llvm.bswap.i32(i32 %127) #7
  %regs.i.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %64, i32 0, i32 2
  %129 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs.i.i.i, align 4
  %conv.i.i.i = and i32 %add.i7.i, 65535
  %call.i.i.i.i = call i32 @regmap_write(ptr noundef %130, i32 noundef 196, i32 noundef %conv.i.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %131(i32 noundef 214748) #7
  %base.i.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %64, i32 0, i32 1
  %132 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %133, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i9.i, i16 %ptd.sroa.0.sroa.0.0.extract.trunc.i.i) #7, !srcloc !136
  %134 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %135, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.1.i.i, i16 %ptd.sroa.0.sroa.5.0.extract.trunc.i.i) #7, !srcloc !136
  %136 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %137, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.2.i.i, i16 %ptd.sroa.6.sroa.0.0.extract.trunc.i.i) #7, !srcloc !136
  %138 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.3.i.i = getelementptr i8, ptr %139, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.3.i.i, i16 %ptd.sroa.6.sroa.5.0.extract.trunc.i.i) #7, !srcloc !136
  %140 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.4.i.i = getelementptr i8, ptr %141, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.4.i.i, i16 %ptd.sroa.10.sroa.0.0.extract.trunc.i.i) #7, !srcloc !136
  %142 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.5.i.i = getelementptr i8, ptr %143, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.5.i.i, i16 %ptd.sroa.10.sroa.5.0.extract.trunc.i.i) #7, !srcloc !136
  %144 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.6.i.i = getelementptr i8, ptr %145, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.6.i.i, i16 %ptd.sroa.14.sroa.0.0.extract.trunc.i.i) #7, !srcloc !136
  %146 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.7.i.i = getelementptr i8, ptr %147, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.7.i.i, i16 %ptd.sroa.14.sroa.5.0.extract.trunc.i.i) #7, !srcloc !136
  %148 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.8.i.i = getelementptr i8, ptr %149, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.8.i.i, i16 %ptd.sroa.18.sroa.0.0.extract.trunc.i.i) #7, !srcloc !136
  %150 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.9.i.i = getelementptr i8, ptr %151, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.9.i.i, i16 %ptd.sroa.18.sroa.5.0.extract.trunc.i.i) #7, !srcloc !136
  %152 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.10.i.i = getelementptr i8, ptr %153, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.10.i.i, i16 %ptd.sroa.22.sroa.0.0.extract.trunc.i.i) #7, !srcloc !136
  %154 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.11.i.i = getelementptr i8, ptr %155, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.11.i.i, i16 %ptd.sroa.22.sroa.5.0.extract.trunc.i.i) #7, !srcloc !136
  %156 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.12.i.i = getelementptr i8, ptr %157, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.12.i.i, i16 %ptd.sroa.26.sroa.0.0.extract.trunc.i.i) #7, !srcloc !136
  %158 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.13.i.i = getelementptr i8, ptr %159, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.13.i.i, i16 %ptd.sroa.26.sroa.5.0.extract.trunc.i.i) #7, !srcloc !136
  %ptd.sroa.30.28.extract.shift.i.i = lshr i32 %128, 16
  %ptd.sroa.30.28.extract.trunc.i.i = trunc i32 %ptd.sroa.30.28.extract.shift.i.i to i16
  %160 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.14.i.i = getelementptr i8, ptr %161, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.14.i.i, i16 %ptd.sroa.30.28.extract.trunc.i.i) #7, !srcloc !136
  %ptd.sroa.30.30.extract.trunc.i.i = trunc i32 %128 to i16
  %162 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.15.i.i = getelementptr i8, ptr %163, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.15.i.i, i16 %ptd.sroa.30.30.extract.trunc.i.i) #7, !srcloc !136
  br label %ptd_write.exit

ptd_write.exit:                                   ; preds = %if.end.i, %while.body.i16.preheader.i.i, %while.body5.i24.preheader.i.i
  %and172 = and i32 %skip_map.0, %neg171.pre-phi
  %164 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hcd_priv.i, align 8
  %arrayidx.i.i261 = getelementptr %struct.isp1760_hcd, ptr %165, i32 0, i32 3, i32 23
  %arrayidx.i.i256 = getelementptr %struct.isp1760_hcd, ptr %165, i32 0, i32 3, i32 26
  %arrayidx.i.i261.sink = select i1 %cmp153, ptr %arrayidx.i.i256, ptr %arrayidx.i.i261
  %166 = ptrtoint ptr %arrayidx.i.i261.sink to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx.i.i261.sink, align 4
  %call.i.i.i262 = call i32 @regmap_field_update_bits_base(ptr noundef %167, i32 noundef -1, i32 noundef %and172, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @schedule_ptds(ptr noundef %hcd) unnamed_addr #2 align 64 {
entry:
  %ptd.i = alloca %struct.ptd, align 4
  %val.i.i.i.i = alloca i32, align 4
  %urb_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %urb_list) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %urb_list, i32 0, i32 1
  %1 = ptrtoint ptr %urb_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %urb_list, ptr %urb_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %urb_list, ptr %0, align 4
  %tobool.not = icmp eq ptr %hcd, null
  br i1 %tobool.not, label %do.end, label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1207, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end17:                                         ; preds = %entry
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %3 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hcd_priv.i, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc41.for.body_crit_edge, %if.end17
  %i.0190 = phi i32 [ 0, %if.end17 ], [ %inc, %for.inc41.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.isp1760_hcd, ptr %4, i32 0, i32 12, i32 %i.0190
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %cmp27.not186 = icmp eq ptr %6, %arrayidx
  br i1 %cmp27.not186, label %for.body.for.inc41_crit_edge, label %for.body.for.body30_crit_edge

for.body.for.body30_crit_edge:                    ; preds = %for.body
  br label %for.body30

for.body.for.inc41_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc41

for.body30:                                       ; preds = %for.inc.for.body30_crit_edge, %for.body.for.body30_crit_edge
  %qh.0187 = phi ptr [ %qh_next.0189, %for.inc.for.body30_crit_edge ], [ %6, %for.body.for.body30_crit_edge ]
  %7 = ptrtoint ptr %qh.0187 to i32
  call void @__asan_load4_noabort(i32 %7)
  %qh_next.0189 = load ptr, ptr %qh.0187, align 4
  %qtd_list.i = getelementptr inbounds %struct.isp1760_qh, ptr %qh.0187, i32 0, i32 1
  %8 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qtd_list.i, align 4
  %cmp.not134.i = icmp eq ptr %9, %qtd_list.i
  br i1 %cmp.not134.i, label %for.body30.collect_qtds.exit_crit_edge, label %for.body30.for.body.i_crit_edge

for.body30.for.body.i_crit_edge:                  ; preds = %for.body30
  br label %for.body.i

for.body30.collect_qtds.exit_crit_edge:           ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %collect_qtds.exit

for.body.i:                                       ; preds = %qtd_free.exit.i.for.body.i_crit_edge, %for.body30.for.body.i_crit_edge
  %.pn.in135.i = phi ptr [ %.pn138.i, %qtd_free.exit.i.for.body.i_crit_edge ], [ %9, %for.body30.for.body.i_crit_edge ]
  %qtd.0137.i = getelementptr i8, ptr %.pn.in135.i, i32 -12
  %10 = ptrtoint ptr %.pn.in135.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn138.i = load ptr, ptr %.pn.in135.i, align 4
  %status.i = getelementptr i8, ptr %.pn.in135.i, i32 20
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp8.i = icmp ult i32 %12, 3
  br i1 %cmp8.i, label %for.body.i.collect_qtds.exit_crit_edge, label %if.end.i

for.body.i.collect_qtds.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %collect_qtds.exit

if.end.i:                                         ; preds = %for.body.i
  %cmp.i.not.i.i = icmp eq ptr %.pn138.i, %qtd_list.i
  br i1 %cmp.i.not.i.i, label %if.end.i.if.end13.i_crit_edge, label %last_qtd_of_urb.exit.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

last_qtd_of_urb.exit.i:                           ; preds = %if.end.i
  %urb2.i.i = getelementptr i8, ptr %.pn.in135.i, i32 8
  %13 = ptrtoint ptr %urb2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %urb2.i.i, align 4
  %urb4.i.i = getelementptr i8, ptr %.pn138.i, i32 8
  %15 = ptrtoint ptr %urb4.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb4.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp10.i = icmp eq i32 %12, 4
  %or.cond = select i1 %cmp.i.not.i, i1 %cmp10.i, i1 false
  br i1 %or.cond, label %if.then11.i, label %last_qtd_of_urb.exit.i.if.end13thread-pre-split.i_crit_edge

last_qtd_of_urb.exit.i.if.end13thread-pre-split.i_crit_edge: ; preds = %last_qtd_of_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13thread-pre-split.i

if.then11.i:                                      ; preds = %last_qtd_of_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %status12.i = getelementptr i8, ptr %.pn138.i, i32 20
  %17 = ptrtoint ptr %status12.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %status12.i, align 4
  br label %if.end13thread-pre-split.i

if.end13thread-pre-split.i:                       ; preds = %if.then11.i, %last_qtd_of_urb.exit.i.if.end13thread-pre-split.i_crit_edge
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i = load i32, ptr %status.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end13thread-pre-split.i, %if.end.i.if.end13.i_crit_edge
  %19 = phi i32 [ %.pr.i, %if.end13thread-pre-split.i ], [ %12, %if.end.i.if.end13.i_crit_edge ]
  %tobool.not123.i = phi i1 [ %cmp.i.not.i, %if.end13thread-pre-split.i ], [ false, %if.end.i.if.end13.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp15.i = icmp eq i32 %19, 3
  br i1 %cmp15.i, label %if.then16.i, label %if.end13.i.if.end38.i_crit_edge

if.end13.i.if.end38.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then16.i:                                      ; preds = %if.end13.i
  %actual_length.i = getelementptr i8, ptr %.pn.in135.i, i32 16
  %20 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not.i = icmp eq i32 %21, 0
  br i1 %tobool17.not.i, label %if.then16.i.if.end23.i_crit_edge, label %if.then18.i

if.then16.i.if.end23.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then18.i:                                      ; preds = %if.then16.i
  %22 = ptrtoint ptr %qtd.0137.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %qtd.0137.i, align 4
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %23, label %if.then18.i.if.end23.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 0, label %if.then18.i.sw.bb20.i_crit_edge
  ]

if.then18.i.sw.bb20.i_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20.i

if.then18.i.if.end23.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

sw.bb.i:                                          ; preds = %if.then18.i
  %payload_addr.i = getelementptr i8, ptr %.pn.in135.i, i32 -4
  %25 = ptrtoint ptr %payload_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %payload_addr.i, align 4
  %data_buffer.i = getelementptr i8, ptr %.pn.in135.i, i32 -8
  %27 = ptrtoint ptr %data_buffer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data_buffer.i, align 4
  %29 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hcd_priv.i, align 8
  %is_isp1763.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %is_isp1763.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_isp1763.i.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i = icmp eq i8 %32, 0
  %regs.i.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %30, i32 0, i32 2
  %33 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i.i, align 4
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i109.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %call.i.i.i.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 828, i32 noundef %26) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748) #7
  %base.i.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %30, i32 0, i32 1
  %36 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i.i) #7
  %add.ptr.i.i.i.i = getelementptr i8, ptr %37, i32 %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %26)
  %cmp.i.i.i.i = icmp ult i32 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp18.i.i.i.i = icmp ugt i32 %21, 3
  br i1 %cmp.i.i.i.i, label %while.cond.preheader.i.i.i.i, label %while.cond3.preheader.i.i.i.i

while.cond3.preheader.i.i.i.i:                    ; preds = %if.then.i.i
  br i1 %cmp18.i.i.i.i, label %while.cond3.preheader.i.i.i.i.while.body5.i.i.i.i_crit_edge, label %while.cond3.preheader.i.i.i.i.if.else18.i.i.i.i_crit_edge

while.cond3.preheader.i.i.i.i.if.else18.i.i.i.i_crit_edge: ; preds = %while.cond3.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else18.i.i.i.i

while.cond3.preheader.i.i.i.i.while.body5.i.i.i.i_crit_edge: ; preds = %while.cond3.preheader.i.i.i.i
  br label %while.body5.i.i.i.i

while.cond.preheader.i.i.i.i:                     ; preds = %if.then.i.i
  br i1 %cmp18.i.i.i.i, label %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.i.if.then14.i.i.i.i_crit_edge

while.cond.preheader.i.i.i.i.if.then14.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i.i.i.i

while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge
  %dst.addr.011.i.i.i.i = phi ptr [ %incdec.ptr2.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %28, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %bytes.addr.010.i.i.i.i = phi i32 [ %sub.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %21, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %src.09.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.09.i.i.i.i) #7, !srcloc !129
  %39 = call i32 @llvm.bswap.i32(i32 %38) #7
  %40 = ptrtoint ptr %dst.addr.011.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dst.addr.011.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %bytes.addr.010.i.i.i.i, -4
  %incdec.ptr.i.i.i.i = getelementptr i32, ptr %src.09.i.i.i.i, i32 1
  %incdec.ptr2.i.i.i.i = getelementptr i32, ptr %dst.addr.011.i.i.i.i, i32 1
  %cmp1.i.i.i.i = icmp ugt i32 %sub.i.i.i.i, 3
  br i1 %cmp1.i.i.i.i, label %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, label %while.body.i.i.i.i.if.end.i.i.i.i_crit_edge

while.body.i.i.i.i.if.end.i.i.i.i_crit_edge:      ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i.i

while.body.i.i.i.i.while.body.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i.i

while.body5.i.i.i.i:                              ; preds = %while.body5.i.i.i.i.while.body5.i.i.i.i_crit_edge, %while.cond3.preheader.i.i.i.i.while.body5.i.i.i.i_crit_edge
  %dst.addr.15.i.i.i.i = phi ptr [ %incdec.ptr9.i.i.i.i, %while.body5.i.i.i.i.while.body5.i.i.i.i_crit_edge ], [ %28, %while.cond3.preheader.i.i.i.i.while.body5.i.i.i.i_crit_edge ]
  %bytes.addr.14.i.i.i.i = phi i32 [ %sub7.i.i.i.i, %while.body5.i.i.i.i.while.body5.i.i.i.i_crit_edge ], [ %21, %while.cond3.preheader.i.i.i.i.while.body5.i.i.i.i_crit_edge ]
  %src.13.i.i.i.i = phi ptr [ %incdec.ptr8.i.i.i.i, %while.body5.i.i.i.i.while.body5.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %while.cond3.preheader.i.i.i.i.while.body5.i.i.i.i_crit_edge ]
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.13.i.i.i.i) #7, !srcloc !129
  %42 = ptrtoint ptr %dst.addr.15.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dst.addr.15.i.i.i.i, align 4
  %sub7.i.i.i.i = add i32 %bytes.addr.14.i.i.i.i, -4
  %incdec.ptr8.i.i.i.i = getelementptr i32, ptr %src.13.i.i.i.i, i32 1
  %incdec.ptr9.i.i.i.i = getelementptr i32, ptr %dst.addr.15.i.i.i.i, i32 1
  %cmp4.i.i.i.i = icmp ugt i32 %sub7.i.i.i.i, 3
  br i1 %cmp4.i.i.i.i, label %while.body5.i.i.i.i.while.body5.i.i.i.i_crit_edge, label %while.body5.i.i.i.i.if.end.i.i.i.i_crit_edge

while.body5.i.i.i.i.if.end.i.i.i.i_crit_edge:     ; preds = %while.body5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i.i

while.body5.i.i.i.i.while.body5.i.i.i.i_crit_edge: ; preds = %while.body5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body5.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %while.body5.i.i.i.i.if.end.i.i.i.i_crit_edge, %while.body.i.i.i.i.if.end.i.i.i.i_crit_edge
  %src.2.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %while.body.i.i.i.i.if.end.i.i.i.i_crit_edge ], [ %incdec.ptr8.i.i.i.i, %while.body5.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  %bytes.addr.2.i.i.i.i = phi i32 [ %sub.i.i.i.i, %while.body.i.i.i.i.if.end.i.i.i.i_crit_edge ], [ %sub7.i.i.i.i, %while.body5.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  %dst.addr.2.i.i.i.i = phi ptr [ %incdec.ptr2.i.i.i.i, %while.body.i.i.i.i.if.end.i.i.i.i_crit_edge ], [ %incdec.ptr9.i.i.i.i, %while.body5.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.addr.2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %bytes.addr.2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i.isp1760_mem_read.exit.i.i_crit_edge, label %if.end12.i.i.i.i

if.end.i.i.i.i.isp1760_mem_read.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1760_mem_read.exit.i.i

if.end12.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  br i1 %cmp.i.i.i.i, label %if.end12.i.i.i.i.if.then14.i.i.i.i_crit_edge, label %if.end12.i.i.i.i.if.else18.i.i.i.i_crit_edge

if.end12.i.i.i.i.if.else18.i.i.i.i_crit_edge:     ; preds = %if.end12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else18.i.i.i.i

if.end12.i.i.i.i.if.then14.i.i.i.i_crit_edge:     ; preds = %if.end12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i.i.i.i

if.then14.i.i.i.i:                                ; preds = %if.end12.i.i.i.i.if.then14.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.if.then14.i.i.i.i_crit_edge
  %src.22446.i.i.i.i = phi ptr [ %src.2.i.i.i.i, %if.end12.i.i.i.i.if.then14.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %while.cond.preheader.i.i.i.i.if.then14.i.i.i.i_crit_edge ]
  %bytes.addr.22545.i.i.i.i = phi i32 [ %bytes.addr.2.i.i.i.i, %if.end12.i.i.i.i.if.then14.i.i.i.i_crit_edge ], [ %21, %while.cond.preheader.i.i.i.i.if.then14.i.i.i.i_crit_edge ]
  %dst.addr.22644.i.i.i.i = phi ptr [ %dst.addr.2.i.i.i.i, %if.end12.i.i.i.i.if.then14.i.i.i.i_crit_edge ], [ %28, %while.cond.preheader.i.i.i.i.if.then14.i.i.i.i_crit_edge ]
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.22446.i.i.i.i) #7, !srcloc !129
  %44 = call i32 @llvm.bswap.i32(i32 %43) #7
  br label %while.body23.preheader.i.i.i.i

if.else18.i.i.i.i:                                ; preds = %if.end12.i.i.i.i.if.else18.i.i.i.i_crit_edge, %while.cond3.preheader.i.i.i.i.if.else18.i.i.i.i_crit_edge
  %src.22434.i.i.i.i = phi ptr [ %src.2.i.i.i.i, %if.end12.i.i.i.i.if.else18.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %while.cond3.preheader.i.i.i.i.if.else18.i.i.i.i_crit_edge ]
  %bytes.addr.22533.i.i.i.i = phi i32 [ %bytes.addr.2.i.i.i.i, %if.end12.i.i.i.i.if.else18.i.i.i.i_crit_edge ], [ %21, %while.cond3.preheader.i.i.i.i.if.else18.i.i.i.i_crit_edge ]
  %dst.addr.22631.i.i.i.i = phi ptr [ %dst.addr.2.i.i.i.i, %if.end12.i.i.i.i.if.else18.i.i.i.i_crit_edge ], [ %28, %while.cond3.preheader.i.i.i.i.if.else18.i.i.i.i_crit_edge ]
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.22434.i.i.i.i) #7, !srcloc !129
  br label %while.body23.preheader.i.i.i.i

while.body23.preheader.i.i.i.i:                   ; preds = %if.else18.i.i.i.i, %if.then14.i.i.i.i
  %bytes.addr.22532.i.i.i.i = phi i32 [ %bytes.addr.22533.i.i.i.i, %if.else18.i.i.i.i ], [ %bytes.addr.22545.i.i.i.i, %if.then14.i.i.i.i ]
  %dst.addr.22630.i.i.i.i = phi ptr [ %dst.addr.22631.i.i.i.i, %if.else18.i.i.i.i ], [ %dst.addr.22644.i.i.i.i, %if.then14.i.i.i.i ]
  %storemerge.i.i.i.i = phi i32 [ %45, %if.else18.i.i.i.i ], [ %44, %if.then14.i.i.i.i ]
  %46 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %storemerge.i.i.i.i, ptr %val.i.i.i.i, align 4
  br label %while.body23.i.i.i.i

while.body23.i.i.i.i:                             ; preds = %while.body23.i.i.i.i.while.body23.i.i.i.i_crit_edge, %while.body23.preheader.i.i.i.i
  %bytes.addr.318.i.i.i.i = phi i32 [ %dec.i.i.i.i, %while.body23.i.i.i.i.while.body23.i.i.i.i_crit_edge ], [ %bytes.addr.22532.i.i.i.i, %while.body23.preheader.i.i.i.i ]
  %src_byteptr.017.i.i.i.i = phi ptr [ %incdec.ptr25.i.i.i.i, %while.body23.i.i.i.i.while.body23.i.i.i.i_crit_edge ], [ %val.i.i.i.i, %while.body23.preheader.i.i.i.i ]
  %dst_byteptr.016.i.i.i.i = phi ptr [ %incdec.ptr24.i.i.i.i, %while.body23.i.i.i.i.while.body23.i.i.i.i_crit_edge ], [ %dst.addr.22630.i.i.i.i, %while.body23.preheader.i.i.i.i ]
  %47 = ptrtoint ptr %src_byteptr.017.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %src_byteptr.017.i.i.i.i, align 1
  %49 = ptrtoint ptr %dst_byteptr.016.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %dst_byteptr.016.i.i.i.i, align 1
  %incdec.ptr24.i.i.i.i = getelementptr i8, ptr %dst_byteptr.016.i.i.i.i, i32 1
  %incdec.ptr25.i.i.i.i = getelementptr i8, ptr %src_byteptr.017.i.i.i.i, i32 1
  %dec.i.i.i.i = add i32 %bytes.addr.318.i.i.i.i, -1
  %cmp22.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  br i1 %cmp22.not.i.i.i.i, label %while.body23.i.i.i.i.isp1760_mem_read.exit.i.i_crit_edge, label %while.body23.i.i.i.i.while.body23.i.i.i.i_crit_edge

while.body23.i.i.i.i.while.body23.i.i.i.i_crit_edge: ; preds = %while.body23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body23.i.i.i.i

while.body23.i.i.i.i.isp1760_mem_read.exit.i.i_crit_edge: ; preds = %while.body23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1760_mem_read.exit.i.i

isp1760_mem_read.exit.i.i:                        ; preds = %while.body23.i.i.i.i.isp1760_mem_read.exit.i.i_crit_edge, %if.end.i.i.i.i.isp1760_mem_read.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i) #7
  br label %sw.bb20.i

if.end.i109.i:                                    ; preds = %sw.bb.i
  %conv.i.i.i = and i32 %26, 65535
  %call.i.i8.i.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 196, i32 noundef %conv.i.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp17.i.i.i = icmp ugt i32 %21, 1
  br i1 %cmp17.i.i.i, label %while.body.lr.ph.i.i.i, label %if.end.i109.i.if.end.i.i.i_crit_edge

if.end.i109.i.if.end.i.i.i_crit_edge:             ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end.i109.i
  %base.i9.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %30, i32 0, i32 1
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %dstptr.addr.019.i.i.i = phi ptr [ %28, %while.body.lr.ph.i.i.i ], [ %incdec.ptr.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %bytes.addr.018.i.i.i = phi i32 [ %21, %while.body.lr.ph.i.i.i ], [ %sub.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %51 = ptrtoint ptr %base.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i9.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %52, i32 198
  %53 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #7, !srcloc !134
  %54 = ptrtoint ptr %dstptr.addr.019.i.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %dstptr.addr.019.i.i.i, align 2
  %sub.i.i.i = add i32 %bytes.addr.018.i.i.i, -2
  %incdec.ptr.i.i.i = getelementptr i16, ptr %dstptr.addr.019.i.i.i, i32 1
  %cmp.i.i.i = icmp ugt i32 %sub.i.i.i, 1
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %while.end.i.i.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp3.i.i.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %cmp3.i.i.i, label %while.end.i.i.i.sw.bb20.i_crit_edge, label %while.end.i.i.i.if.end.i.i.i_crit_edge

while.end.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

while.end.i.i.i.sw.bb20.i_crit_edge:              ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20.i

if.end.i.i.i:                                     ; preds = %while.end.i.i.i.if.end.i.i.i_crit_edge, %if.end.i109.i.if.end.i.i.i_crit_edge
  %dstptr.addr.0.lcssa.i.i128.i = phi ptr [ %incdec.ptr.i.i.i, %while.end.i.i.i.if.end.i.i.i_crit_edge ], [ %28, %if.end.i109.i.if.end.i.i.i_crit_edge ]
  %base5.i.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %30, i32 0, i32 1
  %55 = ptrtoint ptr %base5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base5.i.i.i, align 4
  %add.ptr6.i.i.i = getelementptr i8, ptr %56, i32 198
  %57 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6.i.i.i) #7, !srcloc !134
  %58 = lshr i16 %57, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %conv10.i.i.i = trunc i16 %58 to i8
  %59 = ptrtoint ptr %dstptr.addr.0.lcssa.i.i128.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv10.i.i.i, ptr %dstptr.addr.0.lcssa.i.i128.i, align 1
  br label %sw.bb20.i

sw.bb20.i:                                        ; preds = %if.end.i.i.i, %while.end.i.i.i.sw.bb20.i_crit_edge, %isp1760_mem_read.exit.i.i, %if.then18.i.sw.bb20.i_crit_edge
  %60 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %actual_length.i, align 4
  %urb.i = getelementptr i8, ptr %.pn.in135.i, i32 8
  %62 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %urb.i, align 4
  %actual_length22.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 20
  %64 = ptrtoint ptr %actual_length22.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %actual_length22.i, align 4
  %add.i = add i32 %65, %61
  store i32 %add.i, ptr %actual_length22.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %sw.bb20.i, %if.then18.i.if.end23.i_crit_edge, %if.then16.i.if.end23.i_crit_edge
  %urb.i.i = getelementptr i8, ptr %.pn.in135.i, i32 8
  %66 = ptrtoint ptr %urb.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %urb.i.i, align 4
  %pipe.i.i = getelementptr inbounds %struct.urb, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pipe.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %69)
  %cmp.i110.i = icmp ugt i32 %69, -1073741825
  br i1 %cmp.i110.i, label %is_short_bulk.exit.i, label %if.end23.i.if.end38.i_crit_edge

if.end23.i.if.end38.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

is_short_bulk.exit.i:                             ; preds = %if.end23.i
  %70 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %actual_length.i, align 4
  %length.i.i = getelementptr i8, ptr %.pn.in135.i, i32 12
  %72 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp1.i.not.i = icmp ult i32 %71, %73
  br i1 %cmp1.i.not.i, label %if.then26.i, label %is_short_bulk.exit.i.if.end38.i_crit_edge

is_short_bulk.exit.i.if.end38.i_crit_edge:        ; preds = %is_short_bulk.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then26.i:                                      ; preds = %is_short_bulk.exit.i
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %67, i32 0, i32 13
  %74 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %transfer_flags.i, align 4
  %and.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool28.not.i, label %if.then26.i.if.end32.i_crit_edge, label %if.then29.i

if.then26.i.if.end32.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %status31.i = getelementptr inbounds %struct.urb, ptr %67, i32 0, i32 12
  %76 = ptrtoint ptr %status31.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -121, ptr %status31.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.then26.i.if.end32.i_crit_edge
  br i1 %tobool.not123.i, label %if.then34.i, label %if.end32.i.if.end38.i_crit_edge

if.end32.i.if.end38.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %status35.i = getelementptr i8, ptr %.pn138.i, i32 20
  %77 = ptrtoint ptr %status35.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %status35.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then34.i, %if.end32.i.if.end38.i_crit_edge, %is_short_bulk.exit.i.if.end38.i_crit_edge, %if.end23.i.if.end38.i_crit_edge, %if.end13.i.if.end38.i_crit_edge
  %payload_addr39.i = getelementptr i8, ptr %.pn.in135.i, i32 -4
  %78 = ptrtoint ptr %payload_addr39.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %payload_addr39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool40.not.i = icmp eq i32 %79, 0
  br i1 %tobool40.not.i, label %if.end38.i.if.end42.i_crit_edge, label %for.cond.preheader.i.i

if.end38.i.if.end42.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

for.cond.preheader.i.i:                           ; preds = %if.end38.i
  %80 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hcd_priv.i, align 8
  %memory_layout.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %memory_layout.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %memory_layout.i.i, align 4
  %payload_blocks.i.i = getelementptr inbounds %struct.isp1760_memory_layout, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %payload_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %payload_blocks.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp81.not.i.i = icmp eq i32 %85, 0
  br i1 %cmp81.not.i.i, label %for.cond.preheader.i.i.do.end35.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.do.end35.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.082.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.isp1760_hcd, ptr %81, i32 0, i32 11, i32 %i.082.i.i
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %79)
  %cmp2.i.i = icmp eq i32 %87, %79
  br i1 %cmp2.i.i, label %if.then3.i.i, label %for.inc.i.i

if.then3.i.i:                                     ; preds = %for.body.i.i
  %free.i.i = getelementptr %struct.isp1760_hcd, ptr %81, i32 0, i32 11, i32 %i.082.i.i, i32 2
  %88 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %free.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool6.not.i.i = icmp eq i32 %89, 0
  br i1 %tobool6.not.i.i, label %if.then3.i.i.if.end21.i.i_crit_edge, label %do.end.i.i, !prof !128

if.then3.i.i.if.end21.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

do.end.i.i:                                       ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 635, i32 noundef 9, ptr noundef null) #7
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %do.end.i.i, %if.then3.i.i.if.end21.i.i_crit_edge
  %90 = ptrtoint ptr %free.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %free.i.i, align 4
  br label %cleanup.sink.split.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.082.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %85
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end35.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.do.end35.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35.i.i

do.end35.i.i:                                     ; preds = %for.inc.i.i.do.end35.i.i_crit_edge, %for.cond.preheader.i.i.do.end35.i.i_crit_edge
  %91 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %79) #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 644, i32 noundef 9, ptr noundef null) #7
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %do.end35.i.i, %if.end21.i.i
  %93 = ptrtoint ptr %payload_addr39.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %payload_addr39.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %cleanup.sink.split.i.i, %if.end38.i.if.end42.i_crit_edge
  br i1 %tobool.not123.i, label %if.end42.i.if.end68.i_crit_edge, label %if.then44.i

if.end42.i.if.end68.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.i

if.then44.i:                                      ; preds = %if.end42.i
  %94 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %95)
  %cmp46.i = icmp eq i32 %95, 4
  br i1 %cmp46.i, label %land.lhs.true48.i, label %if.then44.i.if.end56.i_crit_edge

if.then44.i.if.end56.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

land.lhs.true48.i:                                ; preds = %if.then44.i
  %urb49.i = getelementptr i8, ptr %.pn.in135.i, i32 8
  %96 = ptrtoint ptr %urb49.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %urb49.i, align 4
  %status50.i = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %status50.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %status50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %99)
  %cmp51.i = icmp eq i32 %99, -115
  br i1 %cmp51.i, label %if.then53.i, label %land.lhs.true48.i.if.end56.i_crit_edge

land.lhs.true48.i.if.end56.i_crit_edge:           ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

if.then53.i:                                      ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %status50.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -32, ptr %status50.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then53.i, %land.lhs.true48.i.if.end56.i_crit_edge, %if.then44.i.if.end56.i_crit_edge
  %101 = load ptr, ptr @urb_listitem_cachep, align 4
  %call.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %101, i32 noundef 2848) #7
  %tobool58.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool58.not.i, label %if.end56.i.collect_qtds.exit_crit_edge, label %if.end64.i, !prof !125

if.end56.i.collect_qtds.exit_crit_edge:           ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %collect_qtds.exit

if.end64.i:                                       ; preds = %if.end56.i
  %urb65.i = getelementptr i8, ptr %.pn.in135.i, i32 8
  %102 = ptrtoint ptr %urb65.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %urb65.i, align 4
  %urb66.i = getelementptr inbounds %struct.urb_listitem, ptr %call.i.i, i32 0, i32 1
  %104 = ptrtoint ptr %urb66.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %urb66.i, align 8
  %105 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %106, ptr noundef nonnull %urb_list) #7
  br i1 %call.i.i.i, label %if.end.i.i113.i, label %if.end64.i.if.end68.i_crit_edge

if.end64.i.if.end68.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.i

if.end.i.i113.i:                                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i.i, ptr %0, align 4
  %108 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %urb_list, ptr %call.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev3.i.i.i, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %call.i.i, ptr %106, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.end.i.i113.i, %if.end64.i.if.end68.i_crit_edge, %if.end42.i.if.end68.i_crit_edge
  %call.i.i114.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in135.i) #7
  br i1 %call.i.i114.i, label %if.end.i.i115.i, label %if.end68.i.list_del.exit.i_crit_edge

if.end68.i.list_del.exit.i_crit_edge:             ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i115.i:                                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in135.i, i32 0, i32 1
  %111 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %prev.i.i.i, align 4
  %113 = ptrtoint ptr %.pn.in135.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %.pn.in135.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %112, ptr %prev1.i.i.i.i, align 4
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %114, ptr %112, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i115.i, %if.end68.i.list_del.exit.i_crit_edge
  %117 = ptrtoint ptr %.pn.in135.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in135.i, align 4
  %prev.i116.i = getelementptr inbounds %struct.list_head, ptr %.pn.in135.i, i32 0, i32 1
  %118 = ptrtoint ptr %prev.i116.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i116.i, align 4
  %119 = ptrtoint ptr %payload_addr39.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %payload_addr39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i118.i = icmp eq i32 %120, 0
  br i1 %tobool.not.i118.i, label %list_del.exit.i.qtd_free.exit.i_crit_edge, label %do.end.i119.i, !prof !128

list_del.exit.i.qtd_free.exit.i_crit_edge:        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtd_free.exit.i

do.end.i119.i:                                    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 997, i32 noundef 9, ptr noundef null) #7
  br label %qtd_free.exit.i

qtd_free.exit.i:                                  ; preds = %do.end.i119.i, %list_del.exit.i.qtd_free.exit.i_crit_edge
  %121 = load ptr, ptr @qtd_cachep, align 4
  call void @kmem_cache_free(ptr noundef %121, ptr noundef %qtd.0137.i) #7
  br i1 %cmp.i.not.i.i, label %qtd_free.exit.i.collect_qtds.exit_crit_edge, label %qtd_free.exit.i.for.body.i_crit_edge

qtd_free.exit.i.for.body.i_crit_edge:             ; preds = %qtd_free.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

qtd_free.exit.i.collect_qtds.exit_crit_edge:      ; preds = %qtd_free.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %collect_qtds.exit

collect_qtds.exit:                                ; preds = %qtd_free.exit.i.collect_qtds.exit_crit_edge, %if.end56.i.collect_qtds.exit_crit_edge, %for.body.i.collect_qtds.exit_crit_edge, %for.body30.collect_qtds.exit_crit_edge
  %122 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %qtd_list.i, align 4
  %cmp.i.not = icmp eq ptr %123, %qtd_list.i
  br i1 %cmp.i.not, label %if.then33, label %collect_qtds.exit.for.inc_crit_edge

collect_qtds.exit.for.inc_crit_edge:              ; preds = %collect_qtds.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then33:                                        ; preds = %collect_qtds.exit
  %call.i.i130 = call zeroext i1 @__list_del_entry_valid(ptr noundef %qh.0187) #7
  br i1 %call.i.i130, label %if.end.i.i, label %if.then33.list_del.exit_crit_edge

if.then33.list_del.exit_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i131 = getelementptr inbounds %struct.list_head, ptr %qh.0187, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i.i131 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i131, align 4
  %126 = ptrtoint ptr %qh.0187 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %qh.0187, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev1.i.i.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %127, ptr %125, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then33.list_del.exit_crit_edge
  %130 = ptrtoint ptr %qh.0187 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr inttoptr (i32 256 to ptr), ptr %qh.0187, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %qh.0187, i32 0, i32 1
  %131 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %collect_qtds.exit.for.inc_crit_edge
  %cmp27.not = icmp eq ptr %qh_next.0189, %arrayidx
  br i1 %cmp27.not, label %for.inc.for.inc41_crit_edge, label %for.inc.for.body30_crit_edge

for.inc.for.body30_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body30

for.inc.for.inc41_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc41

for.inc41:                                        ; preds = %for.inc.for.inc41_crit_edge, %for.body.for.inc41_crit_edge
  %inc = add nuw nsw i32 %i.0190, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end42, label %for.inc41.for.body_crit_edge

for.inc41.for.body_crit_edge:                     ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end42:                                        ; preds = %for.inc41
  %132 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %urb_list, align 4
  %cmp54.not191 = icmp eq ptr %133, %urb_list
  br i1 %cmp54.not191, label %for.end42.for.cond65.preheader_crit_edge, label %for.end42.for.body57_crit_edge

for.end42.for.body57_crit_edge:                   ; preds = %for.end42
  br label %for.body57

for.end42.for.cond65.preheader_crit_edge:         ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %isp1760_urb_done.exit.for.cond65.preheader_crit_edge, %for.end42.for.cond65.preheader_crit_edge
  %134 = getelementptr inbounds %struct.ptd, ptr %ptd.i, i32 0, i32 2
  %135 = getelementptr inbounds %struct.ptd, ptr %ptd.i, i32 0, i32 4
  %136 = getelementptr inbounds %struct.ptd, ptr %ptd.i, i32 0, i32 5
  br label %for.body67

for.body57:                                       ; preds = %isp1760_urb_done.exit.for.body57_crit_edge, %for.end42.for.body57_crit_edge
  %urb_listitem.0192 = phi ptr [ %urb_listitem_next.0, %isp1760_urb_done.exit.for.body57_crit_edge ], [ %133, %for.end42.for.body57_crit_edge ]
  %137 = ptrtoint ptr %urb_listitem.0192 to i32
  call void @__asan_load4_noabort(i32 %137)
  %urb_listitem_next.0 = load ptr, ptr %urb_listitem.0192, align 4
  %urb = getelementptr inbounds %struct.urb_listitem, ptr %urb_listitem.0192, i32 0, i32 1
  %138 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %urb, align 4
  %140 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hcd_priv.i, align 8
  %unlinked.i = getelementptr inbounds %struct.urb, ptr %139, i32 0, i32 1
  %142 = ptrtoint ptr %unlinked.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %unlinked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i = icmp eq i32 %143, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body57.if.end3.i_crit_edge

for.body57.if.end3.i_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then.i:                                        ; preds = %for.body57
  %status.i132 = getelementptr inbounds %struct.urb, ptr %139, i32 0, i32 12
  %144 = ptrtoint ptr %status.i132 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %status.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %145)
  %cmp.i133 = icmp eq i32 %145, -115
  br i1 %cmp.i133, label %if.then1.i, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %status.i132 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %status.i132, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.then.i.if.end3.i_crit_edge, %for.body57.if.end3.i_crit_edge
  %pipe.i = getelementptr inbounds %struct.urb, ptr %139, i32 0, i32 10
  %147 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pipe.i, align 4
  %and.i134 = and i32 %148, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i134)
  %tobool4.not.i = icmp eq i32 %and.i134, 0
  %shr.mask.i = and i32 %148, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask.i)
  %cmp7.not.i = icmp eq i32 %shr.mask.i, -2147483648
  %or.cond.i = or i1 %tobool4.not.i, %cmp7.not.i
  br i1 %or.cond.i, label %if.end3.i.isp1760_urb_done.exit_crit_edge, label %if.then8.i

if.end3.i.isp1760_urb_done.exit_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1760_urb_done.exit

if.then8.i:                                       ; preds = %if.end3.i
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %139, i32 0, i32 14
  %149 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %transfer_buffer.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %139, i32 0, i32 19
  %151 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %transfer_buffer_length.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %150, i32 %152
  %cmp1034.i = icmp ult ptr %150, %add.ptr33.i
  br i1 %cmp1034.i, label %if.then8.i.for.body.i136_crit_edge, label %if.then8.i.isp1760_urb_done.exit_crit_edge

if.then8.i.isp1760_urb_done.exit_crit_edge:       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1760_urb_done.exit

if.then8.i.for.body.i136_crit_edge:               ; preds = %if.then8.i
  br label %for.body.i136

for.body.i136:                                    ; preds = %for.body.i136.for.body.i136_crit_edge, %if.then8.i.for.body.i136_crit_edge
  %ptr.035.i = phi ptr [ %add.ptr14.i, %for.body.i136.for.body.i136_crit_edge ], [ %150, %if.then8.i.for.body.i136_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %153 = load ptr, ptr @mem_map, align 4
  %154 = ptrtoint ptr %ptr.035.i to i32
  %sub.i = add i32 %154, 1073741824
  %shr11.i = lshr i32 %sub.i, 12
  %add.ptr13.i = getelementptr %struct.page, ptr %153, i32 %shr11.i
  call void @flush_dcache_page(ptr noundef %add.ptr13.i) #7
  %add.ptr14.i = getelementptr i8, ptr %ptr.035.i, i32 4096
  %155 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %transfer_buffer.i, align 4
  %157 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %transfer_buffer_length.i, align 4
  %add.ptr.i = getelementptr i8, ptr %156, i32 %158
  %cmp10.i135 = icmp ult ptr %add.ptr14.i, %add.ptr.i
  br i1 %cmp10.i135, label %for.body.i136.for.body.i136_crit_edge, label %for.body.i136.isp1760_urb_done.exit_crit_edge

for.body.i136.isp1760_urb_done.exit_crit_edge:    ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1760_urb_done.exit

for.body.i136.for.body.i136_crit_edge:            ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i136

isp1760_urb_done.exit:                            ; preds = %for.body.i136.isp1760_urb_done.exit_crit_edge, %if.then8.i.isp1760_urb_done.exit_crit_edge, %if.end3.i.isp1760_urb_done.exit_crit_edge
  call void @usb_hcd_unlink_urb_from_ep(ptr noundef nonnull %hcd, ptr noundef %139) #7
  %lock.i = getelementptr inbounds %struct.isp1760_hcd, ptr %141, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %status16.i = getelementptr inbounds %struct.urb, ptr %139, i32 0, i32 12
  %159 = ptrtoint ptr %status16.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %status16.i, align 4
  call void @usb_hcd_giveback_urb(ptr noundef nonnull %hcd, ptr noundef %139, i32 noundef %160) #7
  call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %161 = load ptr, ptr @urb_listitem_cachep, align 4
  call void @kmem_cache_free(ptr noundef %161, ptr noundef %urb_listitem.0192) #7
  %cmp54.not = icmp eq ptr %urb_listitem_next.0, %urb_list
  br i1 %cmp54.not, label %isp1760_urb_done.exit.for.cond65.preheader_crit_edge, label %isp1760_urb_done.exit.for.body57_crit_edge

isp1760_urb_done.exit.for.body57_crit_edge:       ; preds = %isp1760_urb_done.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57

isp1760_urb_done.exit.for.cond65.preheader_crit_edge: ; preds = %isp1760_urb_done.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond65.preheader

for.body67:                                       ; preds = %for.inc92.for.body67_crit_edge, %for.cond65.preheader
  %i.1197 = phi i32 [ 0, %for.cond65.preheader ], [ %inc93, %for.inc92.for.body67_crit_edge ]
  %arrayidx69 = getelementptr %struct.isp1760_hcd, ptr %4, i32 0, i32 12, i32 %i.1197
  %162 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx69, align 4
  %cmp81.not193 = icmp eq ptr %163, %arrayidx69
  br i1 %cmp81.not193, label %for.body67.for.inc92_crit_edge, label %for.body67.for.body84_crit_edge

for.body67.for.body84_crit_edge:                  ; preds = %for.body67
  br label %for.body84

for.body67.for.inc92_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc92

for.body84:                                       ; preds = %enqueue_qtds.exit.for.body84_crit_edge, %for.body67.for.body84_crit_edge
  %qh.1194 = phi ptr [ %qh_next.1, %enqueue_qtds.exit.for.body84_crit_edge ], [ %163, %for.body67.for.body84_crit_edge ]
  %164 = ptrtoint ptr %qh.1194 to i32
  call void @__asan_load4_noabort(i32 %164)
  %qh_next.1 = load ptr, ptr %qh.1194, align 4
  %165 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hcd_priv.i, align 8
  %memory_layout.i = getelementptr inbounds %struct.isp1760_hcd, ptr %166, i32 0, i32 5
  %167 = ptrtoint ptr %memory_layout.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %memory_layout.i, align 4
  %slot_num1.i = getelementptr inbounds %struct.isp1760_memory_layout, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %slot_num1.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %slot_num1.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ptd.i) #7
  %qtd_list.i138 = getelementptr inbounds %struct.isp1760_qh, ptr %qh.1194, i32 0, i32 1
  %171 = call ptr @memset(ptr %ptd.i, i32 255, i32 32)
  %172 = ptrtoint ptr %qtd_list.i138 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile ptr, ptr %qtd_list.i138, align 4
  %cmp.i.not.i139 = icmp eq ptr %173, %qtd_list.i138
  br i1 %cmp.i.not.i139, label %do.end.i, label %if.end25.i, !prof !125

do.end.i:                                         ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1130, i32 noundef 9, ptr noundef null) #7
  br label %enqueue_qtds.exit

if.end25.i:                                       ; preds = %for.body84
  %tt_buffer_dirty.i = getelementptr inbounds %struct.isp1760_qh, ptr %qh.1194, i32 0, i32 5
  %174 = ptrtoint ptr %tt_buffer_dirty.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %tt_buffer_dirty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool26.not.i = icmp eq i32 %175, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end25.i.enqueue_qtds.exit_crit_edge

if.end25.i.enqueue_qtds.exit_crit_edge:           ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %enqueue_qtds.exit

if.end28.i:                                       ; preds = %if.end25.i
  %urb.i140 = getelementptr i8, ptr %173, i32 8
  %176 = ptrtoint ptr %urb.i140 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %urb.i140, align 4
  %pipe.i141 = getelementptr inbounds %struct.urb, ptr %177, i32 0, i32 10
  %178 = ptrtoint ptr %pipe.i141 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %pipe.i141, align 4
  %shr.mask.i142 = and i32 %179, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i142)
  %cmp.i143 = icmp eq i32 %shr.mask.i142, 1073741824
  %int_slots.i = getelementptr inbounds %struct.isp1760_hcd, ptr %166, i32 0, i32 9
  %atl_slots.i = getelementptr inbounds %struct.isp1760_hcd, ptr %166, i32 0, i32 7
  %slots.0.in.i = select i1 %cmp.i143, ptr %int_slots.i, ptr %atl_slots.i
  %ptd_offset.0.i = select i1 %cmp.i143, i32 2048, i32 3072
  %180 = ptrtoint ptr %slots.0.in.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %slots.0.i = load ptr, ptr %slots.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp33210.i = icmp sgt i32 %170, 0
  br i1 %cmp33210.i, label %if.end28.i.for.body.i144_crit_edge, label %if.end28.i.for.body55.lr.ph.i_crit_edge

if.end28.i.for.body55.lr.ph.i_crit_edge:          ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body55.lr.ph.i

if.end28.i.for.body.i144_crit_edge:               ; preds = %if.end28.i
  br label %for.body.i144

for.body.i144:                                    ; preds = %for.inc.i.for.body.i144_crit_edge, %if.end28.i.for.body.i144_crit_edge
  %curr_slot.0212.i = phi i32 [ %inc.i, %for.inc.i.for.body.i144_crit_edge ], [ 0, %if.end28.i.for.body.i144_crit_edge ]
  %free_slot.0211.i = phi i32 [ %free_slot.1.i, %for.inc.i.for.body.i144_crit_edge ], [ -1, %if.end28.i.for.body.i144_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %free_slot.0211.i)
  %cmp34.i = icmp eq i32 %free_slot.0211.i, -1
  br i1 %cmp34.i, label %land.lhs.true.i145, label %for.body.i144.if.end38.i146_crit_edge

for.body.i144.if.end38.i146_crit_edge:            ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i146

land.lhs.true.i145:                               ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #9
  %qtd35.i = getelementptr %struct.isp1760_slotinfo, ptr %slots.0.i, i32 %curr_slot.0212.i, i32 1
  %181 = ptrtoint ptr %qtd35.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %qtd35.i, align 4
  %cmp36.i = icmp eq ptr %182, null
  %spec.select.i = select i1 %cmp36.i, i32 %curr_slot.0212.i, i32 -1
  br label %if.end38.i146

if.end38.i146:                                    ; preds = %land.lhs.true.i145, %for.body.i144.if.end38.i146_crit_edge
  %free_slot.1.i = phi i32 [ %free_slot.0211.i, %for.body.i144.if.end38.i146_crit_edge ], [ %spec.select.i, %land.lhs.true.i145 ]
  %arrayidx39.i = getelementptr %struct.isp1760_slotinfo, ptr %slots.0.i, i32 %curr_slot.0212.i
  %183 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx39.i, align 4
  %cmp41.i = icmp eq ptr %184, %qh.1194
  br i1 %cmp41.i, label %if.end38.i146.for.body55.lr.ph.i_crit_edge, label %for.inc.i

if.end38.i146.for.body55.lr.ph.i_crit_edge:       ; preds = %if.end38.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body55.lr.ph.i

for.inc.i:                                        ; preds = %if.end38.i146
  %inc.i = add nuw nsw i32 %curr_slot.0212.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %170
  br i1 %exitcond.not.i, label %for.inc.i.for.body55.lr.ph.i_crit_edge, label %for.inc.i.for.body.i144_crit_edge

for.inc.i.for.body.i144_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i144

for.inc.i.for.body55.lr.ph.i_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body55.lr.ph.i

for.body55.lr.ph.i:                               ; preds = %for.inc.i.for.body55.lr.ph.i_crit_edge, %if.end38.i146.for.body55.lr.ph.i_crit_edge, %if.end28.i.for.body55.lr.ph.i_crit_edge
  %curr_slot.0.lcssa.i = phi i32 [ 0, %if.end28.i.for.body55.lr.ph.i_crit_edge ], [ %170, %for.inc.i.for.body55.lr.ph.i_crit_edge ], [ %curr_slot.0212.i, %if.end38.i146.for.body55.lr.ph.i_crit_edge ]
  %free_slot.2.i = phi i32 [ -1, %if.end28.i.for.body55.lr.ph.i_crit_edge ], [ %free_slot.1.i, %for.inc.i.for.body55.lr.ph.i_crit_edge ], [ %free_slot.1.i, %if.end38.i146.for.body55.lr.ph.i_crit_edge ]
  %sub.i147 = add i32 %170, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %free_slot.2.i)
  %cmp117.i = icmp sgt i32 %free_slot.2.i, -1
  br label %for.body55.i

for.body55.i:                                     ; preds = %for.inc136.i.for.body55.i_crit_edge, %for.body55.lr.ph.i
  %.pn221.i = phi ptr [ %173, %for.body55.lr.ph.i ], [ %.pn.i, %for.inc136.i.for.body55.i_crit_edge ]
  %curr_slot.1220.i = phi i32 [ %curr_slot.0.lcssa.i, %for.body55.lr.ph.i ], [ %curr_slot.3.i, %for.inc136.i.for.body55.i_crit_edge ]
  %n.0219.i = phi i32 [ 0, %for.body55.lr.ph.i ], [ %n.1.i, %for.inc136.i.for.body55.i_crit_edge ]
  %qtd.0222.i = getelementptr i8, ptr %.pn221.i, i32 -12
  %status.i148 = getelementptr i8, ptr %.pn221.i, i32 20
  %185 = ptrtoint ptr %status.i148 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %status.i148, align 4
  %187 = zext i32 %186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %186, label %for.body55.i.for.inc136.i_crit_edge [
    i32 0, label %if.then57.i
    i32 1, label %for.body55.i.if.then113.i_crit_edge
  ]

for.body55.i.if.then113.i_crit_edge:              ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then113.i

for.body55.i.for.inc136.i_crit_edge:              ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc136.i

if.then57.i:                                      ; preds = %for.body55.i
  %payload_addr.i149 = getelementptr i8, ptr %.pn221.i, i32 -4
  %188 = ptrtoint ptr %payload_addr.i149 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %payload_addr.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool59.not.i = icmp eq i32 %189, 0
  br i1 %tobool59.not.i, label %if.end81.thread.i, label %if.end81.i, !prof !128

if.end81.thread.i:                                ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #9
  %190 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hcd_priv.i, align 8
  %memory_layout.i226.i = getelementptr inbounds %struct.isp1760_hcd, ptr %191, i32 0, i32 5
  %192 = ptrtoint ptr %memory_layout.i226.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %memory_layout.i226.i, align 4
  br label %if.end.i.i155

if.end81.i:                                       ; preds = %if.then57.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1158, i32 noundef 9, ptr noundef null) #7
  %194 = ptrtoint ptr %payload_addr.i149 to i32
  call void @__asan_load4_noabort(i32 %194)
  %.pr.i150 = load i32, ptr %payload_addr.i149, align 4
  %195 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hcd_priv.i, align 8
  %memory_layout.i.i151 = getelementptr inbounds %struct.isp1760_hcd, ptr %196, i32 0, i32 5
  %197 = ptrtoint ptr %memory_layout.i.i151 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %memory_layout.i.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i150)
  %tobool.not.i.i152 = icmp eq i32 %.pr.i150, 0
  br i1 %tobool.not.i.i152, label %if.end81.i.if.end.i.i155_crit_edge, label %do.end.i.i153, !prof !128

if.end81.i.if.end.i.i155_crit_edge:               ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i155

do.end.i.i153:                                    ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 609, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i155

if.end.i.i155:                                    ; preds = %do.end.i.i153, %if.end81.i.if.end.i.i155_crit_edge, %if.end81.thread.i
  %199 = phi ptr [ %193, %if.end81.thread.i ], [ %198, %do.end.i.i153 ], [ %198, %if.end81.i.if.end.i.i155_crit_edge ]
  %200 = phi ptr [ %191, %if.end81.thread.i ], [ %196, %do.end.i.i153 ], [ %196, %if.end81.i.if.end.i.i155_crit_edge ]
  %length.i.i154 = getelementptr i8, ptr %.pn221.i, i32 12
  %201 = ptrtoint ptr %length.i.i154 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %length.i.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool20.not.i.i = icmp eq i32 %202, 0
  br i1 %tobool20.not.i.i, label %if.end.i.i155.if.end109.thread.i_crit_edge, label %for.cond.preheader.i.i157

if.end.i.i155.if.end109.thread.i_crit_edge:       ; preds = %if.end.i.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.thread.i

for.cond.preheader.i.i157:                        ; preds = %if.end.i.i155
  %payload_blocks.i.i156 = getelementptr inbounds %struct.isp1760_memory_layout, ptr %199, i32 0, i32 3
  %203 = ptrtoint ptr %payload_blocks.i.i156 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %payload_blocks.i.i156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp51.not.i.i = icmp eq i32 %204, 0
  br i1 %cmp51.not.i.i, label %for.cond.preheader.i.i157.alloc_mem.exit.i_crit_edge, label %for.cond.preheader.i.i157.for.body.i.i158_crit_edge

for.cond.preheader.i.i157.for.body.i.i158_crit_edge: ; preds = %for.cond.preheader.i.i157
  br label %for.body.i.i158

for.cond.preheader.i.i157.alloc_mem.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i157
  call void @__sanitizer_cov_trace_pc() #9
  br label %alloc_mem.exit.i

for.body.i.i158:                                  ; preds = %for.inc.i.i162.for.body.i.i158_crit_edge, %for.cond.preheader.i.i157.for.body.i.i158_crit_edge
  %i.052.i.i = phi i32 [ %inc.i.i160, %for.inc.i.i162.for.body.i.i158_crit_edge ], [ 0, %for.cond.preheader.i.i157.for.body.i.i158_crit_edge ]
  %size.i.i = getelementptr %struct.isp1760_hcd, ptr %200, i32 0, i32 11, i32 %i.052.i.i, i32 1
  %205 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %202)
  %cmp24.not.i.i = icmp ult i32 %206, %202
  br i1 %cmp24.not.i.i, label %for.body.i.i158.for.inc.i.i162_crit_edge, label %land.lhs.true.i.i

for.body.i.i158.for.inc.i.i162_crit_edge:         ; preds = %for.body.i.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i162

land.lhs.true.i.i:                                ; preds = %for.body.i.i158
  %free.i.i159 = getelementptr %struct.isp1760_hcd, ptr %200, i32 0, i32 11, i32 %i.052.i.i, i32 2
  %207 = ptrtoint ptr %free.i.i159 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %free.i.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool27.not.i.i = icmp eq i32 %208, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true.i.i.for.inc.i.i162_crit_edge, label %if.then28.i.i

land.lhs.true.i.i.for.inc.i.i162_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i162

if.then28.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.le.i.i = getelementptr %struct.isp1760_hcd, ptr %200, i32 0, i32 11, i32 %i.052.i.i
  %209 = ptrtoint ptr %free.i.i159 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %free.i.i159, align 4
  %210 = ptrtoint ptr %arrayidx.le.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx.le.i.i, align 4
  %212 = ptrtoint ptr %payload_addr.i149 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %payload_addr.i149, align 4
  br label %alloc_mem.exit.i

for.inc.i.i162:                                   ; preds = %land.lhs.true.i.i.for.inc.i.i162_crit_edge, %for.body.i.i158.for.inc.i.i162_crit_edge
  %inc.i.i160 = add nuw i32 %i.052.i.i, 1
  %exitcond.not.i.i161 = icmp eq i32 %inc.i.i160, %204
  br i1 %exitcond.not.i.i161, label %for.inc.i.i162.alloc_mem.exit.i_crit_edge, label %for.inc.i.i162.for.body.i.i158_crit_edge

for.inc.i.i162.for.body.i.i158_crit_edge:         ; preds = %for.inc.i.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i158

for.inc.i.i162.alloc_mem.exit.i_crit_edge:        ; preds = %for.inc.i.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %alloc_mem.exit.i

alloc_mem.exit.i:                                 ; preds = %for.inc.i.i162.alloc_mem.exit.i_crit_edge, %if.then28.i.i, %for.cond.preheader.i.i157.alloc_mem.exit.i_crit_edge
  %213 = ptrtoint ptr %length.i.i154 to i32
  call void @__asan_load4_noabort(i32 %213)
  %.pr228.i = load i32, ptr %length.i.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr228.i)
  %tobool89.not.i = icmp eq i32 %.pr228.i, 0
  br i1 %tobool89.not.i, label %alloc_mem.exit.i.if.end109.thread.i_crit_edge, label %land.lhs.true90.i

alloc_mem.exit.i.if.end109.thread.i_crit_edge:    ; preds = %alloc_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.thread.i

land.lhs.true90.i:                                ; preds = %alloc_mem.exit.i
  %214 = ptrtoint ptr %payload_addr.i149 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %payload_addr.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool92.not.i = icmp eq i32 %215, 0
  br i1 %tobool92.not.i, label %land.lhs.true90.i.enqueue_qtds.exit_crit_edge, label %land.lhs.true97.i

land.lhs.true90.i.enqueue_qtds.exit_crit_edge:    ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %enqueue_qtds.exit

land.lhs.true97.i:                                ; preds = %land.lhs.true90.i
  %216 = ptrtoint ptr %qtd.0222.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %qtd.0222.i, align 4
  %218 = zext i8 %217 to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %217, label %land.lhs.true97.i.if.end109.thread.i_crit_edge [
    i8 2, label %land.lhs.true97.i.if.then104.i_crit_edge
    i8 0, label %land.lhs.true97.i.if.then104.i_crit_edge217
  ]

land.lhs.true97.i.if.then104.i_crit_edge217:      ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then104.i

land.lhs.true97.i.if.then104.i_crit_edge:         ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then104.i

land.lhs.true97.i.if.end109.thread.i_crit_edge:   ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.thread.i

if.then104.i:                                     ; preds = %land.lhs.true97.i.if.then104.i_crit_edge, %land.lhs.true97.i.if.then104.i_crit_edge217
  %data_buffer.i163 = getelementptr i8, ptr %.pn221.i, i32 -8
  %219 = ptrtoint ptr %data_buffer.i163 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %data_buffer.i163, align 4
  %221 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %hcd_priv.i, align 8
  %is_isp1763.i.i164 = getelementptr inbounds %struct.isp1760_hcd, ptr %222, i32 0, i32 4
  %223 = ptrtoint ptr %is_isp1763.i.i164 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %is_isp1763.i.i164, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool.not.i198.i = icmp eq i8 %224, 0
  br i1 %tobool.not.i198.i, label %if.then.i.i167, label %if.end.i199.i

if.then.i.i167:                                   ; preds = %if.then104.i
  %base.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %222, i32 0, i32 1
  %225 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i165 = getelementptr i8, ptr %226, i32 %215
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %215)
  %cmp.i.i.i166 = icmp ult i32 %215, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr228.i)
  %cmp139.i.i.i = icmp ugt i32 %.pr228.i, 3
  br i1 %cmp.i.i.i166, label %while.cond.preheader.i.i.i, label %while.cond3.preheader.i.i.i

while.cond3.preheader.i.i.i:                      ; preds = %if.then.i.i167
  br i1 %cmp139.i.i.i, label %while.cond3.preheader.i.i.i.while.body5.i.i.i_crit_edge, label %while.cond3.preheader.i.i.i.if.else14.i.i.i_crit_edge

while.cond3.preheader.i.i.i.if.else14.i.i.i_crit_edge: ; preds = %while.cond3.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else14.i.i.i

while.cond3.preheader.i.i.i.while.body5.i.i.i_crit_edge: ; preds = %while.cond3.preheader.i.i.i
  br label %while.body5.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.then.i.i167
  br i1 %cmp139.i.i.i, label %while.cond.preheader.i.i.i.while.body.i.i.i170_crit_edge, label %while.cond.preheader.i.i.i.if.then13.i.i.i_crit_edge

while.cond.preheader.i.i.i.if.then13.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i.i.i

while.cond.preheader.i.i.i.while.body.i.i.i170_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i170

while.body.i.i.i170:                              ; preds = %while.body.i.i.i170.while.body.i.i.i170_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i170_crit_edge
  %dst.042.i.i.i = phi ptr [ %incdec.ptr2.i.i.i, %while.body.i.i.i170.while.body.i.i.i170_crit_edge ], [ %add.ptr.i.i.i165, %while.cond.preheader.i.i.i.while.body.i.i.i170_crit_edge ]
  %bytes.addr.041.i.i.i = phi i32 [ %sub.i.i.i168, %while.body.i.i.i170.while.body.i.i.i170_crit_edge ], [ %.pr228.i, %while.cond.preheader.i.i.i.while.body.i.i.i170_crit_edge ]
  %src.addr.040.i.i.i = phi ptr [ %incdec.ptr.i.i.i169, %while.body.i.i.i170.while.body.i.i.i170_crit_edge ], [ %220, %while.cond.preheader.i.i.i.while.body.i.i.i170_crit_edge ]
  %227 = ptrtoint ptr %src.addr.040.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %src.addr.040.i.i.i, align 4
  %229 = call i32 @llvm.bswap.i32(i32 %228) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.042.i.i.i, i32 %229) #7, !srcloc !131
  %sub.i.i.i168 = add i32 %bytes.addr.041.i.i.i, -4
  %incdec.ptr.i.i.i169 = getelementptr i32, ptr %src.addr.040.i.i.i, i32 1
  %incdec.ptr2.i.i.i = getelementptr i32, ptr %dst.042.i.i.i, i32 1
  %cmp1.i.i.i = icmp ugt i32 %sub.i.i.i168, 3
  br i1 %cmp1.i.i.i, label %while.body.i.i.i170.while.body.i.i.i170_crit_edge, label %while.body.i.i.i170.if.end.i.i.i171_crit_edge

while.body.i.i.i170.if.end.i.i.i171_crit_edge:    ; preds = %while.body.i.i.i170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i171

while.body.i.i.i170.while.body.i.i.i170_crit_edge: ; preds = %while.body.i.i.i170
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i170

while.body5.i.i.i:                                ; preds = %while.body5.i.i.i.while.body5.i.i.i_crit_edge, %while.cond3.preheader.i.i.i.while.body5.i.i.i_crit_edge
  %dst.136.i.i.i = phi ptr [ %incdec.ptr8.i.i.i, %while.body5.i.i.i.while.body5.i.i.i_crit_edge ], [ %add.ptr.i.i.i165, %while.cond3.preheader.i.i.i.while.body5.i.i.i_crit_edge ]
  %bytes.addr.135.i.i.i = phi i32 [ %sub6.i.i.i, %while.body5.i.i.i.while.body5.i.i.i_crit_edge ], [ %.pr228.i, %while.cond3.preheader.i.i.i.while.body5.i.i.i_crit_edge ]
  %src.addr.134.i.i.i = phi ptr [ %incdec.ptr7.i.i.i, %while.body5.i.i.i.while.body5.i.i.i_crit_edge ], [ %220, %while.cond3.preheader.i.i.i.while.body5.i.i.i_crit_edge ]
  %230 = ptrtoint ptr %src.addr.134.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %src.addr.134.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.136.i.i.i, i32 %231) #7, !srcloc !131
  %sub6.i.i.i = add i32 %bytes.addr.135.i.i.i, -4
  %incdec.ptr7.i.i.i = getelementptr i32, ptr %src.addr.134.i.i.i, i32 1
  %incdec.ptr8.i.i.i = getelementptr i32, ptr %dst.136.i.i.i, i32 1
  %cmp4.i.i.i = icmp ugt i32 %sub6.i.i.i, 3
  br i1 %cmp4.i.i.i, label %while.body5.i.i.i.while.body5.i.i.i_crit_edge, label %while.body5.i.i.i.if.end.i.i.i171_crit_edge

while.body5.i.i.i.if.end.i.i.i171_crit_edge:      ; preds = %while.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i171

while.body5.i.i.i.while.body5.i.i.i_crit_edge:    ; preds = %while.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body5.i.i.i

if.end.i.i.i171:                                  ; preds = %while.body5.i.i.i.if.end.i.i.i171_crit_edge, %while.body.i.i.i170.if.end.i.i.i171_crit_edge
  %src.addr.2.i.i.i = phi ptr [ %incdec.ptr.i.i.i169, %while.body.i.i.i170.if.end.i.i.i171_crit_edge ], [ %incdec.ptr7.i.i.i, %while.body5.i.i.i.if.end.i.i.i171_crit_edge ]
  %bytes.addr.2.i.i.i = phi i32 [ %sub.i.i.i168, %while.body.i.i.i170.if.end.i.i.i171_crit_edge ], [ %sub6.i.i.i, %while.body5.i.i.i.if.end.i.i.i171_crit_edge ]
  %dst.2.i.i.i = phi ptr [ %incdec.ptr2.i.i.i, %while.body.i.i.i170.if.end.i.i.i171_crit_edge ], [ %incdec.ptr8.i.i.i, %while.body5.i.i.i.if.end.i.i.i171_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.addr.2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %bytes.addr.2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i171.if.end109.thread.i_crit_edge, label %if.end11.i.i.i

if.end.i.i.i171.if.end109.thread.i_crit_edge:     ; preds = %if.end.i.i.i171
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.thread.i

if.end11.i.i.i:                                   ; preds = %if.end.i.i.i171
  br i1 %cmp.i.i.i166, label %if.end11.i.i.i.if.then13.i.i.i_crit_edge, label %if.end11.i.i.i.if.else14.i.i.i_crit_edge

if.end11.i.i.i.if.else14.i.i.i_crit_edge:         ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else14.i.i.i

if.end11.i.i.i.if.then13.i.i.i_crit_edge:         ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end11.i.i.i.if.then13.i.i.i_crit_edge, %while.cond.preheader.i.i.i.if.then13.i.i.i_crit_edge
  %src.addr.25166.i.i.i = phi ptr [ %src.addr.2.i.i.i, %if.end11.i.i.i.if.then13.i.i.i_crit_edge ], [ %220, %while.cond.preheader.i.i.i.if.then13.i.i.i_crit_edge ]
  %dst.25265.i.i.i = phi ptr [ %dst.2.i.i.i, %if.end11.i.i.i.if.then13.i.i.i_crit_edge ], [ %add.ptr.i.i.i165, %while.cond.preheader.i.i.i.if.then13.i.i.i_crit_edge ]
  %232 = ptrtoint ptr %src.addr.25166.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %src.addr.25166.i.i.i, align 4
  %234 = call i32 @llvm.bswap.i32(i32 %233) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.25265.i.i.i, i32 %234) #7, !srcloc !131
  br label %if.end109.thread.i

if.else14.i.i.i:                                  ; preds = %if.end11.i.i.i.if.else14.i.i.i_crit_edge, %while.cond3.preheader.i.i.i.if.else14.i.i.i_crit_edge
  %src.addr.25156.i.i.i = phi ptr [ %src.addr.2.i.i.i, %if.end11.i.i.i.if.else14.i.i.i_crit_edge ], [ %220, %while.cond3.preheader.i.i.i.if.else14.i.i.i_crit_edge ]
  %dst.25255.i.i.i = phi ptr [ %dst.2.i.i.i, %if.end11.i.i.i.if.else14.i.i.i_crit_edge ], [ %add.ptr.i.i.i165, %while.cond3.preheader.i.i.i.if.else14.i.i.i_crit_edge ]
  %235 = ptrtoint ptr %src.addr.25156.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %src.addr.25156.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.25255.i.i.i, i32 %236) #7, !srcloc !131
  br label %if.end109.thread.i

if.end.i199.i:                                    ; preds = %if.then104.i
  %regs.i.i.i172 = getelementptr inbounds %struct.isp1760_hcd, ptr %222, i32 0, i32 2
  %237 = ptrtoint ptr %regs.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %regs.i.i.i172, align 4
  %conv.i.i.i173 = and i32 %215, 65535
  %call.i.i.i.i174 = call i32 @regmap_write(ptr noundef %238, i32 noundef 196, i32 noundef %conv.i.i.i173) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %239 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %239(i32 noundef 214748) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr228.i)
  %cmp13.i.i.i = icmp ugt i32 %.pr228.i, 1
  br i1 %cmp13.i.i.i, label %while.body.lr.ph.i.i.i176, label %if.end.i199.i.do.body.i.i.i_crit_edge

if.end.i199.i.do.body.i.i.i_crit_edge:            ; preds = %if.end.i199.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

while.body.lr.ph.i.i.i176:                        ; preds = %if.end.i199.i
  %base.i.i.i175 = getelementptr inbounds %struct.isp1760_hcd, ptr %222, i32 0, i32 1
  br label %while.body.i10.i.i

while.body.i10.i.i:                               ; preds = %while.body.i10.i.i.while.body.i10.i.i_crit_edge, %while.body.lr.ph.i.i.i176
  %bytes.addr.015.i.i.i = phi i32 [ %.pr228.i, %while.body.lr.ph.i.i.i176 ], [ %sub.i7.i.i, %while.body.i10.i.i.while.body.i10.i.i_crit_edge ]
  %src.addr.014.i.i.i = phi ptr [ %220, %while.body.lr.ph.i.i.i176 ], [ %incdec.ptr.i8.i.i, %while.body.i10.i.i.while.body.i10.i.i_crit_edge ]
  %240 = ptrtoint ptr %src.addr.014.i.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %src.addr.014.i.i.i, align 2
  %242 = ptrtoint ptr %base.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %base.i.i.i175, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %243, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i6.i.i, i16 %241) #7, !srcloc !136
  %sub.i7.i.i = add i32 %bytes.addr.015.i.i.i, -2
  %incdec.ptr.i8.i.i = getelementptr i16, ptr %src.addr.014.i.i.i, i32 1
  %cmp.i9.i.i = icmp ugt i32 %sub.i7.i.i, 1
  br i1 %cmp.i9.i.i, label %while.body.i10.i.i.while.body.i10.i.i_crit_edge, label %while.end.i.i.i177

while.body.i10.i.i.while.body.i10.i.i_crit_edge:  ; preds = %while.body.i10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i10.i.i

while.end.i.i.i177:                               ; preds = %while.body.i10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i7.i.i)
  %cmp2.i.i.i = icmp eq i32 %sub.i7.i.i, 0
  br i1 %cmp2.i.i.i, label %while.end.i.i.i177.if.end109.thread.i_crit_edge, label %while.end.i.i.i177.do.body.i.i.i_crit_edge

while.end.i.i.i177.do.body.i.i.i_crit_edge:       ; preds = %while.end.i.i.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

while.end.i.i.i177.if.end109.thread.i_crit_edge:  ; preds = %while.end.i.i.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.thread.i

do.body.i.i.i:                                    ; preds = %while.end.i.i.i177.do.body.i.i.i_crit_edge, %if.end.i199.i.do.body.i.i.i_crit_edge
  %src.addr.0.lcssa.i.i206.i = phi ptr [ %incdec.ptr.i8.i.i, %while.end.i.i.i177.do.body.i.i.i_crit_edge ], [ %220, %if.end.i199.i.do.body.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  call void @arm_heavy_mb() #7
  %244 = ptrtoint ptr %src.addr.0.lcssa.i.i206.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %src.addr.0.lcssa.i.i206.i, align 1
  %conv4.i.i.i = zext i8 %245 to i16
  %246 = shl nuw i16 %conv4.i.i.i, 8
  %base5.i.i.i178 = getelementptr inbounds %struct.isp1760_hcd, ptr %222, i32 0, i32 1
  %247 = ptrtoint ptr %base5.i.i.i178 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %base5.i.i.i178, align 4
  %add.ptr6.i.i.i179 = getelementptr i8, ptr %248, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i.i.i179, i16 %246) #7, !srcloc !136
  br label %if.end109.thread.i

if.end109.thread.i:                               ; preds = %do.body.i.i.i, %while.end.i.i.i177.if.end109.thread.i_crit_edge, %if.else14.i.i.i, %if.then13.i.i.i, %if.end.i.i.i171.if.end109.thread.i_crit_edge, %land.lhs.true97.i.if.end109.thread.i_crit_edge, %alloc_mem.exit.i.if.end109.thread.i_crit_edge, %if.end.i.i155.if.end109.thread.i_crit_edge
  %249 = ptrtoint ptr %status.i148 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 1, ptr %status.i148, align 4
  br label %if.then113.i

if.then113.i:                                     ; preds = %if.end109.thread.i, %for.body55.i.if.then113.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %curr_slot.1220.i, i32 %sub.i147)
  %cmp114.i = icmp sgt i32 %curr_slot.1220.i, %sub.i147
  %or.cond.i180 = select i1 %cmp114.i, i1 %cmp117.i, i1 false
  br i1 %or.cond.i180, label %if.then119.i, label %if.then113.i.if.end129.i_crit_edge

if.then113.i.if.end129.i_crit_edge:               ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.i

if.then119.i:                                     ; preds = %if.then113.i
  %urb120.i = getelementptr i8, ptr %.pn221.i, i32 8
  %250 = ptrtoint ptr %urb120.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %urb120.i, align 4
  %pipe121.i = getelementptr inbounds %struct.urb, ptr %251, i32 0, i32 10
  %252 = ptrtoint ptr %pipe121.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %pipe121.i, align 4
  %shr122.mask.i = and i32 %253, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr122.mask.i)
  %cmp124.i = icmp eq i32 %shr122.mask.i, 1073741824
  call fastcc void @create_ptd_atl(ptr noundef %qh.1194, ptr noundef %qtd.0222.i, ptr noundef nonnull %ptd.i) #7
  br i1 %cmp124.i, label %if.then126.i, label %if.then119.i.if.end128.i_crit_edge

if.then119.i.if.end128.i_crit_edge:               ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128.i

if.then126.i:                                     ; preds = %if.then119.i
  %254 = ptrtoint ptr %urb120.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %urb120.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.urb, ptr %255, i32 0, i32 8
  %256 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev.i.i.i, align 4
  %speed.i.i.i = getelementptr inbounds %struct.usb_device, ptr %257, i32 0, i32 4
  %258 = ptrtoint ptr %speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %speed.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %259)
  %cmp.i.i200.i = icmp eq i32 %259, 3
  %interval.i.i.i = getelementptr inbounds %struct.urb, ptr %255, i32 0, i32 25
  %260 = ptrtoint ptr %interval.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %interval.i.i.i, align 4
  br i1 %cmp.i.i200.i, label %if.then.i.i.i, label %if.else18.i.i.i

if.then.i.i.i:                                    ; preds = %if.then126.i
  %shr.i.i.i = ashr i32 %261, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %261)
  %cmp4.i.i201.i = icmp sgt i32 %261, 4
  br i1 %cmp4.i.i201.i, label %if.then.i.i.i.create_ptd_int.exit.i_crit_edge, label %if.else.i.i.i

if.then.i.i.i.create_ptd_int.exit.i_crit_edge:    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_ptd_int.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %261)
  %cmp8.i.i.i = icmp sgt i32 %261, 2
  br i1 %cmp8.i.i.i, label %if.else.i.i.i.create_ptd_int.exit.i_crit_edge, label %if.else10.i.i.i

if.else.i.i.i.create_ptd_int.exit.i_crit_edge:    ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_ptd_int.exit.i

if.else10.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %261)
  %cmp13.i.i202.i = icmp eq i32 %261, 2
  %..i.i.i = select i1 %cmp13.i.i202.i, i32 85, i32 255
  br label %create_ptd_int.exit.i

if.else18.i.i.i:                                  ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #9
  %262 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 255, ptr %136, align 4
  br label %create_ptd_int.exit.i

create_ptd_int.exit.i:                            ; preds = %if.else18.i.i.i, %if.else10.i.i.i, %if.else.i.i.i.create_ptd_int.exit.i_crit_edge, %if.then.i.i.i.create_ptd_int.exit.i_crit_edge
  %usof.0.i.i.i = phi i32 [ 15, %if.else18.i.i.i ], [ 1, %if.then.i.i.i.create_ptd_int.exit.i_crit_edge ], [ 34, %if.else.i.i.i.create_ptd_int.exit.i_crit_edge ], [ %..i.i.i, %if.else10.i.i.i ]
  %period.0.i.i.i = phi i32 [ %261, %if.else18.i.i.i ], [ %shr.i.i.i, %if.then.i.i.i.create_ptd_int.exit.i_crit_edge ], [ %shr.i.i.i, %if.else.i.i.i.create_ptd_int.exit.i_crit_edge ], [ %shr.i.i.i, %if.else10.i.i.i ]
  %shr22.i.i.i = lshr i32 %period.0.i.i.i, 1
  %and.i.i.i = and i32 %shr22.i.i.i, 248
  %263 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %134, align 4
  %or.i.i.i = or i32 %and.i.i.i, %264
  store i32 %or.i.i.i, ptr %134, align 4
  %265 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %usof.0.i.i.i, ptr %135, align 4
  br label %if.end128.i

if.end128.i:                                      ; preds = %create_ptd_int.exit.i, %if.then119.i.if.end128.i_crit_edge
  call fastcc void @start_bus_transfer(ptr noundef nonnull %hcd, i32 noundef %ptd_offset.0.i, i32 noundef %free_slot.2.i, ptr noundef %slots.0.i, ptr noundef %qtd.0222.i, ptr noundef %qh.1194, ptr noundef nonnull %ptd.i) #7
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.end128.i, %if.then113.i.if.end129.i_crit_edge
  %curr_slot.2.i = phi i32 [ %free_slot.2.i, %if.end128.i ], [ %curr_slot.1220.i, %if.then113.i.if.end129.i_crit_edge ]
  %inc130.i = add i32 %n.0219.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc130.i)
  %cmp131.i = icmp sgt i32 %inc130.i, 1
  br i1 %cmp131.i, label %if.end129.i.enqueue_qtds.exit_crit_edge, label %if.end129.i.for.inc136.i_crit_edge

if.end129.i.for.inc136.i_crit_edge:               ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc136.i

if.end129.i.enqueue_qtds.exit_crit_edge:          ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %enqueue_qtds.exit

for.inc136.i:                                     ; preds = %if.end129.i.for.inc136.i_crit_edge, %for.body55.i.for.inc136.i_crit_edge
  %n.1.i = phi i32 [ 1, %if.end129.i.for.inc136.i_crit_edge ], [ %n.0219.i, %for.body55.i.for.inc136.i_crit_edge ]
  %curr_slot.3.i = phi i32 [ %curr_slot.2.i, %if.end129.i.for.inc136.i_crit_edge ], [ %curr_slot.1220.i, %for.body55.i.for.inc136.i_crit_edge ]
  %266 = ptrtoint ptr %.pn221.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %.pn.i = load ptr, ptr %.pn221.i, align 4
  %cmp52.not.i = icmp eq ptr %.pn.i, %qtd_list.i138
  br i1 %cmp52.not.i, label %for.inc136.i.enqueue_qtds.exit_crit_edge, label %for.inc136.i.for.body55.i_crit_edge

for.inc136.i.for.body55.i_crit_edge:              ; preds = %for.inc136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body55.i

for.inc136.i.enqueue_qtds.exit_crit_edge:         ; preds = %for.inc136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %enqueue_qtds.exit

enqueue_qtds.exit:                                ; preds = %for.inc136.i.enqueue_qtds.exit_crit_edge, %if.end129.i.enqueue_qtds.exit_crit_edge, %land.lhs.true90.i.enqueue_qtds.exit_crit_edge, %if.end25.i.enqueue_qtds.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ptd.i) #7
  %cmp81.not = icmp eq ptr %qh_next.1, %arrayidx69
  br i1 %cmp81.not, label %enqueue_qtds.exit.for.inc92_crit_edge, label %enqueue_qtds.exit.for.body84_crit_edge

enqueue_qtds.exit.for.body84_crit_edge:           ; preds = %enqueue_qtds.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body84

enqueue_qtds.exit.for.inc92_crit_edge:            ; preds = %enqueue_qtds.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc92

for.inc92:                                        ; preds = %enqueue_qtds.exit.for.inc92_crit_edge, %for.body67.for.inc92_crit_edge
  %inc93 = add nuw nsw i32 %i.1197, 1
  %exitcond202.not = icmp eq i32 %inc93, 3
  br i1 %exitcond202.not, label %for.inc92.cleanup_crit_edge, label %for.inc92.for.body67_crit_edge

for.inc92.for.body67_crit_edge:                   ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body67

for.inc92.cleanup_crit_edge:                      ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc92.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %urb_list) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp1760_hcd_clear(ptr nocapture noundef readonly %hcd, i32 noundef %field) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %field)
  %cmp1.i = icmp ult i32 %field, 9
  br i1 %cmp1.i, label %if.then.i, label %if.end.i, !prof !125

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [9 x i32], ptr @isp176x_hc_portsc1_fields, i32 0, i32 %field
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %is_isp1763.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %is_isp1763.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_isp1763.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %base.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %conv1.i = select i1 %tobool.not.i, i32 100, i32 160
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv1.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !129
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %neg.i = xor i32 %3, -1
  %and.i = and i32 %9, %neg.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %12, i32 %conv1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %10) #7, !srcloc !131
  br label %isp1760_hcd_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fields.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 3
  %arrayidx.i.i = getelementptr ptr, ptr %fields.i, i32 %field
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %14, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %isp1760_hcd_write.exit

isp1760_hcd_write.exit:                           ; preds = %if.end.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp1760_hcd_set(ptr nocapture noundef readonly %hcd, i32 noundef %field) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %field)
  %cmp1.i = icmp ult i32 %field, 9
  br i1 %cmp1.i, label %if.then.i, label %if.end.i, !prof !125

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [9 x i32], ptr @isp176x_hc_portsc1_fields, i32 0, i32 %field
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %is_isp1763.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %is_isp1763.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_isp1763.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %base.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %conv1.i = select i1 %tobool.not.i, i32 100, i32 160
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv1.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !129
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %or.i = or i32 %9, %3
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %12, i32 %conv1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %10) #7, !srcloc !131
  br label %isp1760_hcd_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fields.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 3
  %arrayidx.i.i = getelementptr ptr, ptr %fields.i, i32 %field
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %14, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %isp1760_hcd_write.exit

isp1760_hcd_write.exit:                           ; preds = %if.end.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ehci_reset(ptr nocapture noundef %hcd) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %next_statechange = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %next_statechange to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %next_statechange, align 4
  %5 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !126
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_hcd, ptr %5, i32 0, i32 3, i32 14
  %7 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %8, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call1.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call1.i, 250000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %entry
  %9 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call10.i = call i32 @regmap_field_read(ptr noundef %10, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.cond.i.isp1760_hcd_set_and_wait_swap.exit_crit_edge

for.cond.i.isp1760_hcd_set_and_wait_swap.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1760_hcd_set_and_wait_swap.exit

lor.lhs.false.i:                                  ; preds = %for.cond.i
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool11.not.i = icmp eq i32 %12, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call15.i = call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call22.i = call i32 @regmap_field_read(ptr noundef %14, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool27.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool27.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.isp1760_hcd_set_and_wait_swap.exit_crit_edge

for.end.i.isp1760_hcd_set_and_wait_swap.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1760_hcd_set_and_wait_swap.exit

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool28.not.i = icmp eq i32 %16, 0
  %phi.sel.i = select i1 %tobool28.not.i, i32 0, i32 -110
  br label %isp1760_hcd_set_and_wait_swap.exit

isp1760_hcd_set_and_wait_swap.exit:               ; preds = %lor.rhs.i, %for.end.i.isp1760_hcd_set_and_wait_swap.exit_crit_edge, %for.cond.i.isp1760_hcd_set_and_wait_swap.exit_crit_edge
  %tobool27.not5.i = phi i32 [ %call22.i, %for.end.i.isp1760_hcd_set_and_wait_swap.exit_crit_edge ], [ %phi.sel.i, %lor.rhs.i ], [ %call10.i, %for.cond.i.isp1760_hcd_set_and_wait_swap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  ret i32 %tobool27.not5.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp1760_hcd_set_and_wait(ptr nocapture noundef readonly %hcd, i32 noundef %field) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !126
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %field)
  %cmp1.i.i = icmp ult i32 %field, 9
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.end.i.i, !prof !125

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [9 x i32], ptr @isp176x_hc_portsc1_fields, i32 0, i32 %field
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i, align 4
  %is_isp1763.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %is_isp1763.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_isp1763.i.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  %base.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %conv1.i.i = select i1 %tobool.not.i.i, i32 100, i32 160
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv1.i.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !129
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %or.i.i = or i32 %10, %4
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %13, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %11) #7, !srcloc !131
  br label %isp1760_hcd_set.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fields.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 3
  %arrayidx.i.i.i = getelementptr ptr, ptr %fields.i.i, i32 %field
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %15, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %isp1760_hcd_set.exit

isp1760_hcd_set.exit:                             ; preds = %if.end.i.i, %if.then.i.i
  %call1 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call1, 250000000
  %arrayidx = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 3, i32 %field
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %isp1760_hcd_set.exit
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call10 = call i32 @regmap_field_read(ptr noundef %17, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.cond.lor.end_crit_edge

for.cond.lor.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.lhs.false:                                    ; preds = %for.cond
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br i1 %tobool11.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call15 = call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call22 = call i32 @regmap_field_read(ptr noundef %21, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool27.not = icmp eq i32 %call22, 0
  br i1 %tobool27.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool28.not = icmp eq i32 %23, 0
  %phi.sel = select i1 %tobool28.not, i32 -110, i32 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %for.cond.lor.end_crit_edge
  %tobool27.not5 = phi i32 [ %call22, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call10, %for.cond.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %tobool27.not5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @errata2_function(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  %ptd = alloca %struct.ptd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @errata2_timer_hcd, align 4
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 30
  %1 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hcd_priv.i, align 8
  %memory_layout = getelementptr inbounds %struct.isp1760_hcd, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %memory_layout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %memory_layout, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ptd) #7
  %5 = getelementptr inbounds %struct.ptd, ptr %ptd, i32 0, i32 3
  %lock = getelementptr inbounds %struct.isp1760_hcd, ptr %2, i32 0, i32 6
  %6 = call ptr @memset(ptr %ptd, i32 255, i32 32)
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %slot_num = getelementptr inbounds %struct.isp1760_memory_layout, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slot_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp639.not = icmp eq i32 %8, 0
  br i1 %cmp639.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %atl_slots = getelementptr inbounds %struct.isp1760_hcd, ptr %2, i32 0, i32 7
  %atl_done_map = getelementptr inbounds %struct.isp1760_hcd, ptr %2, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %slot.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %atl_slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %atl_slots, align 4
  %arrayidx = getelementptr %struct.isp1760_slotinfo, ptr %10, i32 %slot.040
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %timestamp = getelementptr %struct.isp1760_slotinfo, ptr %10, i32 %slot.040, i32 2
  %13 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timestamp, align 4
  %add = add i32 %14, 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp11 = icmp slt i32 %sub, 0
  br i1 %cmp11, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @ptd_read(ptr noundef %0, i32 noundef 3072, i32 noundef %slot.040, ptr noundef nonnull %ptd)
  %16 = ptrtoint ptr %ptd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ptd, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true14:                                  ; preds = %if.then
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool16.not = icmp sgt i32 %19, -1
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %slot.040
  %20 = ptrtoint ptr %atl_done_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %atl_done_map, align 4
  %or = or i32 %21, %shl
  store i32 %or, ptr %atl_done_map, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %land.lhs.true14.for.inc_crit_edge, %if.then.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %slot.040, 1
  %22 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slot_num, align 4
  %cmp6 = icmp ult i32 %inc, %23
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %atl_done_map19 = getelementptr inbounds %struct.isp1760_hcd, ptr %2, i32 0, i32 8
  %24 = ptrtoint ptr %atl_done_map19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %atl_done_map19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool20.not = icmp eq i32 %25, 0
  br i1 %tobool20.not, label %for.end.if.end22_crit_edge, label %if.then21

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @handle_done_ptds(ptr noundef %0)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %for.end.if.end22_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add25 = add i32 %26, 20
  store i32 %add25, ptr getelementptr inbounds (%struct.timer_list, ptr @errata2_timer, i32 0, i32 1), align 4
  call void @add_timer(ptr noundef nonnull @errata2_timer) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ptd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qtd_list_free(ptr noundef readonly %qtd_list) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qtd_list, align 4
  %cmp.not19 = icmp eq ptr %1, %qtd_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %qtd_free.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %qtd_free.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %qtd.0 = getelementptr i8, ptr %.pn.in20, i32 -12
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %payload_addr.i = getelementptr i8, ptr %.pn.in20, i32 -4
  %11 = ptrtoint ptr %payload_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %payload_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %list_del.exit.qtd_free.exit_crit_edge, label %do.end.i, !prof !128

list_del.exit.qtd_free.exit_crit_edge:            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtd_free.exit

do.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 997, i32 noundef 9, ptr noundef null) #7
  br label %qtd_free.exit

qtd_free.exit:                                    ; preds = %do.end.i, %list_del.exit.qtd_free.exit_crit_edge
  %13 = load ptr, ptr @qtd_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef %qtd.0) #7
  %cmp.not = icmp eq ptr %.pn, %qtd_list
  br i1 %cmp.not, label %qtd_free.exit.for.end_crit_edge, label %qtd_free.exit.for.body_crit_edge

qtd_free.exit.for.body_crit_edge:                 ; preds = %qtd_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

qtd_free.exit.for.end_crit_edge:                  ; preds = %qtd_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %qtd_free.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @isp1760_hcd_ppc_is_set(ptr nocapture noundef readonly %hcd) unnamed_addr #2 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %is_isp1763 = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_isp1763 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_isp1763, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %4 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !126
  %arrayidx.i.i.i = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 3, i32 9
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_field_read(ptr noundef %6, ptr noundef nonnull %val.i.i.i) #7
  %7 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i = icmp ne i32 %8, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool.i, %if.end ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp1760_hcd_clear_and_wait(ptr nocapture noundef readonly %hcd, i32 noundef %field, i32 noundef %timeout_us) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !126
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %field)
  %cmp1.i.i = icmp ult i32 %field, 9
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.end.i.i, !prof !125

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [9 x i32], ptr @isp176x_hc_portsc1_fields, i32 0, i32 %field
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i, align 4
  %is_isp1763.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %is_isp1763.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_isp1763.i.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  %base.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %conv1.i.i = select i1 %tobool.not.i.i, i32 100, i32 160
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv1.i.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !129
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %neg.i.i = xor i32 %4, -1
  %and.i.i = and i32 %10, %neg.i.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #7
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %13, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %11) #7, !srcloc !131
  br label %isp1760_hcd_clear.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fields.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %1, i32 0, i32 3
  %arrayidx.i.i.i = getelementptr ptr, ptr %fields.i.i, i32 %field
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %15, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %isp1760_hcd_clear.exit

isp1760_hcd_clear.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %conv = zext i32 %timeout_us to i64
  %call1 = tail call i64 @ktime_get() #7
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %call1, %mul.i
  %arrayidx = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 3, i32 %field
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %isp1760_hcd_clear.exit
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call10 = call i32 @regmap_field_read(ptr noundef %17, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.cond.lor.end_crit_edge

for.cond.lor.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.lhs.false:                                    ; preds = %for.cond
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br i1 %tobool11.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call15 = call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call22 = call i32 @regmap_field_read(ptr noundef %21, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool27.not = icmp eq i32 %call22, 0
  br i1 %tobool27.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool28.not = icmp eq i32 %23, 0
  %phi.sel = select i1 %tobool28.not, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %for.cond.lor.end_crit_edge
  %tobool27.not46 = phi i32 [ %call22, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call10, %for.cond.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %tobool27.not46
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_reset_complete(ptr nocapture noundef readonly %hcd, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  %val.i.i.i15 = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %2 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !126
  %arrayidx.i.i.i = getelementptr %struct.isp1760_hcd, ptr %1, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_field_read(ptr noundef %4, ptr noundef nonnull %val.i.i.i) #7
  %5 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %hcd_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hcd_priv.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i15) #7
  %9 = ptrtoint ptr %val.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i.i.i15, align 4, !annotation !126
  %arrayidx.i.i.i18 = getelementptr %struct.isp1760_hcd, ptr %8, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %arrayidx.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i18, align 4
  %call.i.i.i19 = call i32 @regmap_field_read(ptr noundef %11, ptr noundef nonnull %val.i.i.i15) #7
  %12 = ptrtoint ptr %val.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i.i.i15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i20.not = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hcd, align 8
  %add = add i32 %index, 1
  br i1 %tobool.i20.not, label %do.end, label %do.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.46, i32 noundef %add) #11
  %16 = ptrtoint ptr %hcd_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hcd_priv.i.i.i, align 8
  %is_isp1763.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %is_isp1763.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_isp1763.i.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  %base.i.i = getelementptr inbounds %struct.isp1760_hcd, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %conv1.i.i = select i1 %tobool.not.i.i, i32 100, i32 160
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %conv1.i.i
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %23 = or i32 %22, 2097152
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %25, i32 %conv1.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %23) #7, !srcloc !131
  %26 = ptrtoint ptr %hcd_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hcd_priv.i.i.i, align 8
  %is_isp1763.i.i23 = getelementptr inbounds %struct.isp1760_hcd, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %is_isp1763.i.i23 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_isp1763.i.i23, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i24 = icmp eq i8 %29, 0
  %base.i.i25 = getelementptr inbounds %struct.isp1760_hcd, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %base.i.i25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i25, align 4
  %conv1.i.i26 = select i1 %tobool.not.i.i24, i32 100, i32 160
  %add.ptr.i.i27 = getelementptr i8, ptr %31, i32 %conv1.i.i26
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #7, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %33 = and i32 %32, -33554433
  %34 = ptrtoint ptr %base.i.i25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i25, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %35, i32 %conv1.i.i26
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %33) #7, !srcloc !131
  br label %return

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.49, i32 noundef %add) #11
  br label %return

return:                                           ; preds = %do.end4, %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 2526, i32 42}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 2533, i32 33}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 2540, i32 32}
!6 = !{ptr @qtd_cachep, !7, !"qtd_cachep", i1 false, i1 false}
!7 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 37, i32 27}
!8 = !{ptr @qh_cachep, !9, !"qh_cachep", i1 false, i1 false}
!9 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 38, i32 27}
!10 = !{ptr @urb_listitem_cachep, !11, !"urb_listitem_cachep", i1 false, i1 false}
!11 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 39, i32 27}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 2506, i32 18}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 2507, i32 19}
!16 = !{ptr @isp1760_hc_driver, !17, !"isp1760_hc_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 2505, i32 31}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1382, i32 5}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1472, i32 6}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @handle_done_ptds._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @handle_done_ptds._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1285, i32 5}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @check_int_transfer.__UNIQUE_ID_ddebug237, !28, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1291, i32 5}
!34 = !{ptr @check_int_transfer.__UNIQUE_ID_ddebug238, !33, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1298, i32 5}
!37 = !{ptr @check_int_transfer.__UNIQUE_ID_ddebug239, !36, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1337, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @check_atl_transfer.__UNIQUE_ID_ddebug240, !39, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!44 = !{ptr @isp176x_hc_portsc1_fields, !45, !"isp176x_hc_portsc1_fields", i1 false, i1 false}
!45 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 185, i32 18}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 642, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @free_mem._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @free_mem._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 740, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @isp1760_hc_setup._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @isp1760_hc_setup._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @priv_init.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 689, i32 2}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @isp1760_run.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1714, i32 2}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1721, i32 2}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @isp1760_run._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @isp1760_run._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1600, i32 2}
!70 = !{ptr @isp1763_run._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @isp1763_run._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @errata2_timer_hcd, !73, !"errata2_timer_hcd", i1 false, i1 false}
!73 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1552, i32 24}
!74 = !{ptr @errata2_timer, !75, !"errata2_timer", i1 false, i1 false}
!75 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1551, i32 26}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1906, i32 3}
!78 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @isp1760_urb_enqueue._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @isp1760_urb_enqueue._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1911, i32 3}
!83 = !{ptr @isp1760_urb_enqueue._entry.30, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @isp1760_urb_enqueue._entry_ptr.32, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 1788, i32 3}
!87 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @packetize_urb._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @packetize_urb._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 2301, i32 4}
!92 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @isp1760_hub_control._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @isp1760_hub_control._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 2324, i32 6}
!97 = !{ptr @isp1760_hub_control._entry.37, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @isp1760_hub_control._entry_ptr.39, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 2345, i32 5}
!101 = !{ptr @isp1760_hub_control._entry.40, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @isp1760_hub_control._entry_ptr.42, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 2360, i32 4}
!105 = !{ptr @isp1760_hub_control._entry.43, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @isp1760_hub_control._entry_ptr.45, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 2182, i32 3}
!109 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @check_reset_complete._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @check_reset_complete._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/isp1760/isp1760-hcd.c", i32 2189, i32 3}
!114 = !{ptr @check_reset_complete._entry.48, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @check_reset_complete._entry_ptr.50, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"branch_weights", i32 1, i32 2000}
!126 = !{!"auto-init"}
!127 = !{i8 0, i8 2}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{i64 5275162}
!130 = !{i64 2154585115}
!131 = !{i64 5274744}
!132 = !{i32 0, i32 33}
!133 = !{i64 2148233266, i64 2148233271, i64 2148233284, i64 2148233328, i64 2148233362, i64 2148233383}
!134 = !{i64 5274324}
!135 = !{i64 2154594672}
!136 = !{i64 5274124}
!137 = !{i64 2154590697}
!138 = !{i64 2154591330}
