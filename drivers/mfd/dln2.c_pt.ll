; ModuleID = '/llk/IR_all_yes/drivers/mfd/dln2.c_pt.bc'
source_filename = "../drivers/mfd/dln2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dln2_register_event_cb\22, \22a\22\09"
module asm "\09.weak\09__crc_dln2_register_event_cb\09\09\09\09"
module asm "\09.long\09__crc_dln2_register_event_cb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dln2_register_event_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22dln2_register_event_cb\22\09\09\09\09\09"
module asm "__kstrtabns_dln2_register_event_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dln2_unregister_event_cb\22, \22a\22\09"
module asm "\09.weak\09__crc_dln2_unregister_event_cb\09\09\09\09"
module asm "\09.long\09__crc_dln2_unregister_event_cb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dln2_unregister_event_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22dln2_unregister_event_cb\22\09\09\09\09\09"
module asm "__kstrtabns_dln2_unregister_event_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dln2_transfer\22, \22a\22\09"
module asm "\09.weak\09__crc_dln2_transfer\09\09\09\09"
module asm "\09.long\09__crc_dln2_transfer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dln2_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22dln2_transfer\22\09\09\09\09\09"
module asm "__kstrtabns_dln2_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.dln2_platform_data = type { i16, i8 }
%struct.mfd_cell_acpi_match = type { ptr, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dln2_event_cb_entry = type { %struct.list_head, i16, ptr, ptr }
%struct.dln2_dev = type { ptr, ptr, i8, i8, [16 x ptr], [16 x ptr], [6 x %struct.dln2_mod_rx_slots], %struct.list_head, %struct.spinlock, i8, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dln2_mod_rx_slots = type { [1 x i32], %struct.wait_queue_head, [16 x %struct.dln2_rx_context], %struct.spinlock }
%struct.dln2_rx_context = type { %struct.completion, ptr, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.dln2_header = type { i16, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.dln2_response = type { %struct.dln2_header, i16 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_dln2_register_event_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_dln2_register_event_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_dln2_register_event_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dln2_register_event_cb to i32), ptr @__kstrtab_dln2_register_event_cb, ptr @__kstrtabns_dln2_register_event_cb }, section "___ksymtab+dln2_register_event_cb", align 4
@__kstrtab_dln2_unregister_event_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_dln2_unregister_event_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_dln2_unregister_event_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dln2_unregister_event_cb to i32), ptr @__kstrtab_dln2_unregister_event_cb, ptr @__kstrtabns_dln2_unregister_event_cb }, section "___ksymtab+dln2_unregister_event_cb", align 4
@__kstrtab_dln2_transfer = external dso_local constant [0 x i8], align 1
@__kstrtabns_dln2_transfer = external dso_local constant [0 x i8], align 1
@__ksymtab_dln2_transfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dln2_transfer to i32), ptr @__kstrtab_dln2_transfer, ptr @__kstrtabns_dln2_transfer }, section "___ksymtab+dln2_transfer", align 4
@__initcall__kmod_dln2__298_878_dln2_driver_init6 = internal global ptr @dln2_driver_init, section ".initcall6.init", align 4
@dln2_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.5, ptr @dln2_probe, ptr @dln2_disconnect, ptr null, ptr @dln2_suspend, ptr @dln2_resume, ptr null, ptr null, ptr null, ptr @dln2_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_dln2_driver_exit = internal global ptr @dln2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [58 x i8] c"dln2.author=Octavian Purdila <octavian.purdila@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [67 x i8] c"dln2.description=Core driver for the Diolan DLN2 interface adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [27 x i8] c"dln2.file=drivers/mfd/dln2\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [20 x i8] c"dln2.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_dln2_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 463, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USB write failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_dln2_transfer\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/mfd/dln2.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@_dln2_transfer._entry_ptr = internal global ptr @_dln2_transfer._entry, section ".printk_index", align 4
@_dln2_transfer.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dln2\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d received response with error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@free_rx_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 426, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to resubmit RX URB: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"free_rx_slot\00", [19 x i8] zeroinitializer }, align 32
@free_rx_slot._entry_ptr = internal global ptr @free_rx_slot._entry, section ".printk_index", align 4
@dln2_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 -23977, i16 8211, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dln2_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dln2->disconnect_wq\00", [43 x i8] zeroinitializer }, align 32
@dln2_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&dln2->mod_rx_slots[i].wq\00", [38 x i8] zeroinitializer }, align 32
@dln2_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&dln2->mod_rx_slots[i].lock\00", [36 x i8] zeroinitializer }, align 32
@dln2_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dln2->event_cb_lock\00", [43 x i8] zeroinitializer }, align 32
@dln2_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dln2->disconnect_lock\00", [41 x i8] zeroinitializer }, align 32
@dln2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 823, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to initialize hardware\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dln2_probe\00", [21 x i8] zeroinitializer }, align 32
@dln2_probe._entry_ptr = internal global ptr @dln2_probe._entry, section ".printk_index", align 4
@dln2_devs = internal constant { [4 x %struct.mfd_cell], [64 x i8] } { [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.50, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @dln2_pdata_gpio, i32 4, ptr null, ptr null, i64 0, i8 0, ptr @dln2_acpi_match_gpio, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.51, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @dln2_pdata_i2c, i32 4, ptr null, ptr null, i64 0, i8 0, ptr @dln2_acpi_match_i2c, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.52, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @dln2_pdata_spi, i32 4, ptr null, ptr null, i64 0, i8 0, ptr @dln2_acpi_match_spi, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.53, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @dln2_pdata_adc, i32 4, ptr null, ptr null, i64 0, i8 0, ptr @dln2_acpi_match_adc, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [64 x i8] zeroinitializer }, align 32
@dln2_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 829, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to add mfd devices to core\0A\00", [61 x i8] zeroinitializer }, align 32
@dln2_probe._entry_ptr.22 = internal global ptr @dln2_probe._entry.20, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@dln2_rx.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dln2_rx\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"urb shutting down with status %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dln2_rx.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nonzero urb status received %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dln2_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.2, i32 267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"short response: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@dln2_rx._entry_ptr = internal global ptr @dln2_rx._entry, section ".printk_index", align 4
@dln2_rx._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 278, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"size mismatch: handle %x cmd %x echo %x size %d actual %d\0A\00", [37 x i8] zeroinitializer }, align 32
@dln2_rx._entry_ptr.30 = internal global ptr @dln2_rx._entry.28, section ".printk_index", align 4
@dln2_rx._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 283, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid handle %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dln2_rx._entry_ptr.34 = internal global ptr @dln2_rx._entry.31, section ".printk_index", align 4
@dln2_rx._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.24, ptr @.str.2, i32 305, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@dln2_rx._entry_ptr.36 = internal global ptr @dln2_rx._entry.35, section ".printk_index", align 4
@dln2_run_event_callbacks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dln2_transfer_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 218, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bad/late response %d/%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dln2_transfer_complete\00", [41 x i8] zeroinitializer }, align 32
@dln2_transfer_complete._entry_ptr = internal global ptr @dln2_transfer_complete._entry, section ".printk_index", align 4
@dln2_start_rx_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 645, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to submit RX URB: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dln2_start_rx_urbs\00", [45 x i8] zeroinitializer }, align 32
@dln2_start_rx_urbs._entry_ptr = internal global ptr @dln2_start_rx_urbs._entry, section ".printk_index", align 4
@dln2_check_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 551, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Device ID 0x%x not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dln2_check_hw\00", [18 x i8] zeroinitializer }, align 32
@dln2_check_hw._entry_ptr = internal global ptr @dln2_check_hw._entry, section ".printk_index", align 4
@dln2_print_serialno._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 572, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Diolan DLN2 serial %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dln2_print_serialno\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dln2_print_serialno._entry_ptr = internal global ptr @dln2_print_serialno._entry, section ".printk_index", align 4
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dln2-gpio\00", [22 x i8] zeroinitializer }, align 32
@dln2_pdata_gpio = internal global { %struct.dln2_platform_data, [28 x i8] } { %struct.dln2_platform_data { i16 2, i8 0 }, [28 x i8] zeroinitializer }, align 32
@dln2_acpi_match_gpio = internal global { %struct.mfd_cell_acpi_match, [16 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dln2-i2c\00", [23 x i8] zeroinitializer }, align 32
@dln2_pdata_i2c = internal global { %struct.dln2_platform_data, [28 x i8] } { %struct.dln2_platform_data { i16 3, i8 0 }, [28 x i8] zeroinitializer }, align 32
@dln2_acpi_match_i2c = internal global { %struct.mfd_cell_acpi_match, [16 x i8] } { %struct.mfd_cell_acpi_match { ptr null, i64 1 }, [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dln2-spi\00", [23 x i8] zeroinitializer }, align 32
@dln2_pdata_spi = internal global { %struct.dln2_platform_data, [28 x i8] } { %struct.dln2_platform_data { i16 4, i8 0 }, [28 x i8] zeroinitializer }, align 32
@dln2_acpi_match_spi = internal global { %struct.mfd_cell_acpi_match, [16 x i8] } { %struct.mfd_cell_acpi_match { ptr null, i64 2 }, [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dln2-adc\00", [23 x i8] zeroinitializer }, align 32
@dln2_pdata_adc = internal global { %struct.dln2_platform_data, [28 x i8] } { %struct.dln2_platform_data { i16 5, i8 0 }, [28 x i8] zeroinitializer }, align 32
@dln2_acpi_match_adc = internal global { %struct.mfd_cell_acpi_match, [16 x i8] } { %struct.mfd_cell_acpi_match { ptr null, i64 3 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967264, i64 4294967294]
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"dln2_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 869, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 463, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 493, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 426, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [11 x i8] c"dln2_table\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 862, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 800, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 803, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 804, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 809, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 810, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 823, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [10 x i8] c"dln2_devs\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 698, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 829, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 87, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 259, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 262, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 267, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 277, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 283, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 305, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 230, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 695, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 723, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 218, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 645, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 550, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 572, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 700, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant [16 x i8] c"dln2_pdata_gpio\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 660, i32 34 }
@___asan_gen_.237 = private unnamed_addr constant [21 x i8] c"dln2_acpi_match_gpio\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 664, i32 35 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 706, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant [15 x i8] c"dln2_pdata_i2c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 669, i32 34 }
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c"dln2_acpi_match_i2c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 674, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 712, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant [15 x i8] c"dln2_pdata_spi\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 679, i32 34 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c"dln2_acpi_match_spi\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 684, i32 35 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 718, i32 11 }
@___asan_gen_.261 = private unnamed_addr constant [15 x i8] c"dln2_pdata_adc\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 689, i32 34 }
@___asan_gen_.264 = private unnamed_addr constant [20 x i8] c"dln2_acpi_match_adc\00", align 1
@___asan_gen_.265 = private constant [22 x i8] c"../drivers/mfd/dln2.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 694, i32 35 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_dln2_driver_exit, ptr @__initcall__kmod_dln2__298_878_dln2_driver_init6, ptr @__ksymtab_dln2_register_event_cb, ptr @__ksymtab_dln2_transfer, ptr @__ksymtab_dln2_unregister_event_cb, ptr @_dln2_transfer._entry, ptr @_dln2_transfer._entry_ptr, ptr @dln2_check_hw._entry, ptr @dln2_check_hw._entry_ptr, ptr @dln2_driver_exit, ptr @dln2_print_serialno._entry, ptr @dln2_print_serialno._entry_ptr, ptr @dln2_probe._entry, ptr @dln2_probe._entry.20, ptr @dln2_probe._entry_ptr, ptr @dln2_probe._entry_ptr.22, ptr @dln2_rx._entry, ptr @dln2_rx._entry.28, ptr @dln2_rx._entry.31, ptr @dln2_rx._entry.35, ptr @dln2_rx._entry_ptr, ptr @dln2_rx._entry_ptr.30, ptr @dln2_rx._entry_ptr.34, ptr @dln2_rx._entry_ptr.36, ptr @dln2_start_rx_urbs._entry, ptr @dln2_start_rx_urbs._entry_ptr, ptr @dln2_transfer_complete._entry, ptr @dln2_transfer_complete._entry_ptr, ptr @free_rx_slot._entry, ptr @free_rx_slot._entry_ptr, ptr @dln2_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dln2_table, ptr @dln2_probe.__key, ptr @.str.9, ptr @dln2_probe.__key.10, ptr @.str.11, ptr @dln2_probe.__key.12, ptr @.str.13, ptr @dln2_probe.__key.14, ptr @.str.15, ptr @dln2_probe.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @dln2_devs, ptr @.str.21, ptr @init_completion.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @dln2_pdata_gpio, ptr @dln2_acpi_match_gpio, ptr @.str.51, ptr @dln2_pdata_i2c, ptr @dln2_acpi_match_i2c, ptr @.str.52, ptr @dln2_pdata_spi, ptr @dln2_acpi_match_spi, ptr @.str.53, ptr @dln2_pdata_adc, ptr @dln2_acpi_match_adc], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dln2_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_rx_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_devs to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_rx._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_rx._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_rx._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_transfer_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_start_rx_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_check_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_print_serialno._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_pdata_gpio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_acpi_match_gpio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_pdata_i2c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_acpi_match_i2c to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_pdata_spi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_acpi_match_spi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_pdata_adc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_acpi_match_adc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dln2_register_event_cb(ptr noundef %pdev, i16 noundef zeroext %id, ptr noundef %event_cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 20) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %id3 = getelementptr inbounds %struct.dln2_event_cb_entry, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %id3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %id, ptr %id3, align 8
  %callback = getelementptr inbounds %struct.dln2_event_cb_entry, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %event_cb, ptr %callback, align 8
  %pdev4 = getelementptr inbounds %struct.dln2_event_cb_entry, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %pdev4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %pdev4, align 4
  %event_cb_lock = getelementptr inbounds %struct.dln2_dev, ptr %3, i32 0, i32 8
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_cb_lock) #10
  %event_cb_list = getelementptr inbounds %struct.dln2_dev, ptr %3, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %i.0.in = phi ptr [ %event_cb_list, %if.end ], [ %i.0, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %i.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %i.0 = load ptr, ptr %i.0.in, align 4
  %cmp12.not = icmp eq ptr %i.0, %event_cb_list
  br i1 %cmp12.not, label %if.then27, label %for.body

for.body:                                         ; preds = %for.cond
  %id14 = getelementptr inbounds %struct.dln2_event_cb_entry, ptr %i.0, i32 0, i32 1
  %9 = ptrtoint ptr %id14 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id14, align 4
  %cmp17 = icmp eq i16 %10, %id
  br i1 %cmp17, label %if.then33.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then27:                                        ; preds = %for.cond
  %11 = ptrtoint ptr %event_cb_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %event_cb_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %event_cb_list, ptr noundef %12) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then27.list_add_rcu.exit_crit_edge

if.then27.list_add_rcu.exit_crit_edge:            ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call7.i.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %event_cb_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !154
  %15 = ptrtoint ptr %event_cb_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %event_cb_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %if.then27.list_add_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_cb_lock, i32 noundef %call7) #10
  br label %cleanup

if.then33.critedge:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_cb_lock, i32 noundef %call7) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then33.critedge, %list_add_rcu.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %list_add_rcu.exit ], [ -16, %if.then33.critedge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dln2_unregister_event_cb(ptr nocapture noundef readonly %pdev, i16 noundef zeroext %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %event_cb_lock = getelementptr inbounds %struct.dln2_dev, ptr %3, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_cb_lock) #10
  %event_cb_list = getelementptr inbounds %struct.dln2_dev, ptr %3, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %i.0.in = phi ptr [ %event_cb_list, %entry ], [ %i.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %i.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %i.0 = load ptr, ptr %i.0.in, align 4
  %cmp8.not = icmp eq ptr %i.0, %event_cb_list
  br i1 %cmp8.not, label %if.end23.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %id10 = getelementptr inbounds %struct.dln2_event_cb_entry, ptr %i.0, i32 0, i32 1
  %5 = ptrtoint ptr %id10 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %id10, align 4
  %cmp13 = icmp eq i16 %6, %id
  br i1 %cmp13, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i.0) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_rcu.exit_crit_edge

if.then.list_del_rcu.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %i.0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %i.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %i.0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_cb_lock, i32 noundef %call3) #10
  tail call void @synchronize_rcu() #10
  tail call void @kfree(ptr noundef %i.0) #10
  br label %if.end23

if.end23.critedge:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_cb_lock, i32 noundef %call3) #10
  br label %if.end23

if.end23:                                         ; preds = %if.end23.critedge, %list_del_rcu.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dln2_transfer(ptr nocapture noundef readonly %pdev, i16 noundef zeroext %cmd, ptr nocapture noundef readonly %obuf, i32 noundef %obuf_len, ptr noundef %ibuf, ptr nocapture noundef %ibuf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %call4 = tail call fastcc i32 @_dln2_transfer(ptr noundef %3, i16 noundef zeroext %7, i16 noundef zeroext %cmd, ptr noundef %obuf, i32 noundef %obuf_len, ptr noundef %ibuf, ptr noundef %ibuf_len)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_dln2_transfer(ptr noundef %dln2, i16 noundef zeroext %handle, i16 noundef zeroext %cmd, ptr nocapture noundef readonly %obuf, i32 noundef %obuf_len, ptr noundef writeonly %ibuf, ptr nocapture noundef %ibuf_len) unnamed_addr #0 align 64 {
entry:
  %actual.i = alloca i32, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.dln2_dev, ptr %dln2, i32 0, i32 1
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %idxprom = zext i16 %handle to i32
  %disconnect_lock = getelementptr inbounds %struct.dln2_dev, ptr %dln2, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %disconnect_lock) #10
  %disconnect = getelementptr inbounds %struct.dln2_dev, ptr %dln2, i32 0, i32 9
  %2 = ptrtoint ptr %disconnect to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disconnect, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end5, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %disconnect_lock) #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %active_transfers = getelementptr inbounds %struct.dln2_dev, ptr %dln2, i32 0, i32 10
  %4 = ptrtoint ptr %active_transfers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_transfers, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %active_transfers, align 4
  tail call void @_raw_spin_unlock(ptr noundef %disconnect_lock) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 392) #10
  %6 = ptrtoint ptr %disconnect to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disconnect, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.out_decr_crit_edge

if.end5.out_decr_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_decr

if.end.i.i:                                       ; preds = %if.end5
  %arrayidx.i.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %idxprom
  %lock.i.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %idxprom, i32 3
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %call5.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %arrayidx.i.i, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 16
  br i1 %cmp6.i.i, label %find_free_slot.exit.thread48.i, label %if.then.i

find_free_slot.exit.thread48.i:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef %call5.i.i, ptr noundef %arrayidx.i.i) #10
  %in_use.i.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %idxprom, i32 2, i32 %call5.i.i, i32 2
  %8 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %in_use.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #10
  br label %alloc_rx_slot.exit

if.then.i:                                        ; preds = %if.end.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %9 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %wq.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %idxprom, i32 1
  %call583.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %10 = ptrtoint ptr %disconnect to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %disconnect, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i2984.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i2984.i, label %if.then.i.if.end.i37.i_crit_edge, label %if.then.i.if.end14.thread68.i_crit_edge

if.then.i.if.end14.thread68.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.thread68.i

if.then.i.if.end.i37.i_crit_edge:                 ; preds = %if.then.i
  br label %if.end.i37.i

if.end.i37.i:                                     ; preds = %cleanup.i.if.end.i37.i_crit_edge, %if.then.i.if.end.i37.i_crit_edge
  %call585.i = phi i32 [ %call5.i, %cleanup.i.if.end.i37.i_crit_edge ], [ %call583.i, %if.then.i.if.end.i37.i_crit_edge ]
  %call2.i34.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %call5.i35.i = call i32 @_find_first_zero_bit_be(ptr noundef %arrayidx.i.i, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call5.i35.i)
  %cmp6.i36.i = icmp slt i32 %call5.i35.i, 16
  br i1 %cmp6.i36.i, label %find_free_slot.exit43.thread52.i, label %if.end.i

find_free_slot.exit43.thread52.i:                 ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef %call5.i35.i, ptr noundef %arrayidx.i.i) #10
  %in_use.i38.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %idxprom, i32 2, i32 %call5.i35.i, i32 2
  %12 = ptrtoint ptr %in_use.i38.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %in_use.i38.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i34.i) #10
  br label %if.end14.thread68.i

if.end.i:                                         ; preds = %if.end.i37.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i34.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call585.i)
  %tobool.not.i = icmp eq i32 %call585.i, 0
  br i1 %tobool.not.i, label %cleanup.i, label %if.end14.i

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #10
  %call5.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %13 = ptrtoint ptr %disconnect to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %disconnect, align 4, !range !155
  %tobool.not.i29.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i29.i, label %cleanup.i.if.end.i37.i_crit_edge, label %cleanup.i.if.end14.thread68.i_crit_edge

cleanup.i.if.end14.thread68.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.thread68.i

cleanup.i.if.end.i37.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i37.i

if.end14.thread68.i:                              ; preds = %cleanup.i.if.end14.thread68.i_crit_edge, %find_free_slot.exit43.thread52.i, %if.then.i.if.end14.thread68.i_crit_edge
  %slot.151.ph.i = phi i32 [ %call5.i35.i, %find_free_slot.exit43.thread52.i ], [ -19, %if.then.i.if.end14.thread68.i_crit_edge ], [ -19, %cleanup.i.if.end14.thread68.i_crit_edge ]
  call void @finish_wait(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br label %alloc_rx_slot.exit

if.end14.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call585.i)
  %cmp.i = icmp slt i32 %call585.i, 0
  br i1 %cmp.i, label %if.end14.i.out_decr_crit_edge, label %if.end14.i.if.end8_crit_edge

if.end14.i.if.end8_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end14.i.out_decr_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_decr

alloc_rx_slot.exit:                               ; preds = %if.end14.thread68.i, %find_free_slot.exit.thread48.i
  %slot.267.i = phi i32 [ %slot.151.ph.i, %if.end14.thread68.i ], [ %call5.i.i, %find_free_slot.exit.thread48.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot.267.i)
  %cmp = icmp slt i32 %slot.267.i, 0
  br i1 %cmp, label %alloc_rx_slot.exit.out_decr_crit_edge, label %alloc_rx_slot.exit.if.end8_crit_edge

alloc_rx_slot.exit.if.end8_crit_edge:             ; preds = %alloc_rx_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

alloc_rx_slot.exit.out_decr_crit_edge:            ; preds = %alloc_rx_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_decr

if.end8:                                          ; preds = %alloc_rx_slot.exit.if.end8_crit_edge, %if.end14.i.if.end8_crit_edge
  %slot.267.i130 = phi i32 [ %slot.267.i, %alloc_rx_slot.exit.if.end8_crit_edge ], [ %call5.i35.i, %if.end14.i.if.end8_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i) #10
  %15 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %actual.i, align 4, !annotation !156
  %add.i.i = add i32 %obuf_len, 8
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #14
  %tobool.not.i.i112 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i112, label %dln2_send_wait.exit.thread, label %dln2_send_wait.exit

dln2_send_wait.exit.thread:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  br label %do.end

dln2_send_wait.exit:                              ; preds = %if.end8
  %conv = trunc i32 %slot.267.i130 to i16
  %16 = call i16 @llvm.bswap.i16(i16 %cmd) #10
  %id.i.i = getelementptr inbounds %struct.dln2_header, ptr %call9.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %id.i.i, align 2
  %conv.i.i = trunc i32 %add.i.i to i16
  %18 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #10
  %19 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %call9.i.i.i, align 128
  %20 = call i16 @llvm.bswap.i16(i16 %conv) #10
  %echo1.i.i = getelementptr inbounds %struct.dln2_header, ptr %call9.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %echo1.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %echo1.i.i, align 4
  %22 = call i16 @llvm.bswap.i16(i16 %handle) #10
  %handle2.i.i = getelementptr inbounds %struct.dln2_header, ptr %call9.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %handle2.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %handle2.i.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i.i, i32 8
  %24 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %obuf, i32 %obuf_len)
  %25 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dln2, align 4
  %ep_out.i = getelementptr inbounds %struct.dln2_dev, ptr %dln2, i32 0, i32 3
  %27 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ep_out.i, align 1
  %conv.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %26, align 8
  %shl.i.i = shl i32 %30, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %26, i32 noundef %or.i, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i.i, ptr noundef nonnull %actual.i, i32 noundef 200) #10
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp10 = icmp slt i32 %call3.i, 0
  br i1 %cmp10, label %dln2_send_wait.exit.do.end_crit_edge, label %if.end13

dln2_send_wait.exit.do.end_crit_edge:             ; preds = %dln2_send_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %dln2_send_wait.exit.do.end_crit_edge, %dln2_send_wait.exit.thread
  %retval.0.i114133 = phi i32 [ -12, %dln2_send_wait.exit.thread ], [ %call3.i, %dln2_send_wait.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %retval.0.i114133) #15
  br label %out_free_rx_slot

if.end13:                                         ; preds = %dln2_send_wait.exit
  %arrayidx14 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %idxprom, i32 2, i32 %slot.267.i130
  %call15 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %arrayidx14, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %if.then18, label %if.else22

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool19.not = icmp eq i32 %call15, 0
  %spec.store.select = select i1 %tobool19.not, i32 -110, i32 %call15
  br label %out_free_rx_slot

if.else22:                                        ; preds = %if.end13
  %31 = ptrtoint ptr %disconnect to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %disconnect, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool25.not = icmp eq i8 %32, 0
  br i1 %tobool25.not, label %if.end27, label %if.else22.out_free_rx_slot_crit_edge

if.else22.out_free_rx_slot_crit_edge:             ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_rx_slot

if.end27:                                         ; preds = %if.else22
  %urb = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %idxprom, i32 2, i32 %slot.267.i130, i32 1
  %33 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 14
  %35 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %transfer_buffer, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %36, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %conv29 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %39)
  %cmp30 = icmp ult i16 %39, 10
  br i1 %cmp30, label %if.end27.out_free_rx_slot_crit_edge, label %if.end33

if.end27.out_free_rx_slot_crit_edge:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_rx_slot

if.end33:                                         ; preds = %if.end27
  %result = getelementptr inbounds %struct.dln2_response, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %result to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %result, align 2
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %42)
  %cmp35 = icmp ugt i16 %42, 128
  br i1 %cmp35, label %do.body38, label %if.end50

do.body38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dln2_transfer.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dln2_transfer, %if.then43)) #10
          to label %out_free_rx_slot [label %if.then43], !srcloc !157

if.then43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %result to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %result, align 2
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %conv46 = zext i16 %45 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_dln2_transfer.__UNIQUE_ID_ddebug297, ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %idxprom, i32 noundef %conv46) #10
  br label %out_free_rx_slot

if.end50:                                         ; preds = %if.end33
  %tobool51.not = icmp eq ptr %ibuf, null
  br i1 %tobool51.not, label %if.end50.out_free_rx_slot_crit_edge, label %if.end53

if.end50.out_free_rx_slot_crit_edge:              ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_rx_slot

if.end53:                                         ; preds = %if.end50
  %46 = ptrtoint ptr %ibuf_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ibuf_len, align 4
  %sub = add nsw i32 %conv29, -10
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %sub)
  %cmp54 = icmp ugt i32 %47, %sub
  br i1 %cmp54, label %if.then56, label %if.end53.if.end58_crit_edge

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %ibuf_len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub, ptr %ibuf_len, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end53.if.end58_crit_edge
  %add.ptr = getelementptr %struct.dln2_response, ptr %36, i32 1
  %49 = ptrtoint ptr %ibuf_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ibuf_len, align 4
  %51 = call ptr @memcpy(ptr %ibuf, ptr %add.ptr, i32 %50)
  br label %out_free_rx_slot

out_free_rx_slot:                                 ; preds = %if.end58, %if.end50.out_free_rx_slot_crit_edge, %if.then43, %do.body38, %if.end27.out_free_rx_slot_crit_edge, %if.else22.out_free_rx_slot_crit_edge, %if.then18, %do.end
  %ret.1 = phi i32 [ %retval.0.i114133, %do.end ], [ %spec.store.select, %if.then18 ], [ 0, %if.end58 ], [ 0, %if.end50.out_free_rx_slot_crit_edge ], [ -19, %if.else22.out_free_rx_slot_crit_edge ], [ -71, %if.end27.out_free_rx_slot_crit_edge ], [ -121, %if.then43 ], [ -121, %do.body38 ]
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  call void @_clear_bit(i32 noundef %slot.267.i130, ptr noundef %arrayidx.i.i) #10
  %arrayidx5.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %idxprom, i32 2, i32 %slot.267.i130
  %in_use.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %idxprom, i32 2, i32 %slot.267.i130, i32 2
  %52 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %in_use.i, align 4
  %urb6.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %idxprom, i32 2, i32 %slot.267.i130, i32 1
  %53 = ptrtoint ptr %urb6.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %urb6.i, align 4
  store ptr null, ptr %urb6.i, align 4
  %55 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx5.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i) #10
  %tobool.not.i116 = icmp eq ptr %54, null
  br i1 %tobool.not.i116, label %out_free_rx_slot.free_rx_slot.exit_crit_edge, label %if.then.i117

out_free_rx_slot.free_rx_slot.exit_crit_edge:     ; preds = %out_free_rx_slot
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_rx_slot.exit

if.then.i117:                                     ; preds = %out_free_rx_slot
  %56 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %interface, align 4
  %call10.i = call i32 @usb_submit_urb(ptr noundef nonnull %54, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %if.then.i117.free_rx_slot.exit_crit_edge

if.then.i117.free_rx_slot.exit_crit_edge:         ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_rx_slot.exit

do.end16.i:                                       ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #12
  %dev9.i = getelementptr inbounds %struct.usb_interface, ptr %57, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.7, i32 noundef %call10.i) #15
  br label %free_rx_slot.exit

free_rx_slot.exit:                                ; preds = %do.end16.i, %if.then.i117.free_rx_slot.exit_crit_edge, %out_free_rx_slot.free_rx_slot.exit_crit_edge
  %wq.i118 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %idxprom, i32 1
  call void @__wake_up(ptr noundef %wq.i118, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %out_decr

out_decr:                                         ; preds = %free_rx_slot.exit, %alloc_rx_slot.exit.out_decr_crit_edge, %if.end14.i.out_decr_crit_edge, %if.end5.out_decr_crit_edge
  %ret.2 = phi i32 [ %ret.1, %free_rx_slot.exit ], [ %slot.267.i, %alloc_rx_slot.exit.out_decr_crit_edge ], [ -19, %if.end5.out_decr_crit_edge ], [ %call585.i, %if.end14.i.out_decr_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %disconnect_lock) #10
  %58 = ptrtoint ptr %active_transfers to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %active_transfers, align 4
  %dec = add i32 %59, -1
  store i32 %dec, ptr %active_transfers, align 4
  call void @_raw_spin_unlock(ptr noundef %disconnect_lock) #10
  %60 = ptrtoint ptr %disconnect to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %disconnect, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool63.not = icmp eq i8 %61, 0
  br i1 %tobool63.not, label %out_decr.cleanup_crit_edge, label %if.then64

out_decr.cleanup_crit_edge:                       ; preds = %out_decr
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then64:                                        ; preds = %out_decr
  call void @__sanitizer_cov_trace_pc() #12
  %disconnect_wq = getelementptr inbounds %struct.dln2_dev, ptr %dln2, i32 0, i32 11
  call void @__wake_up(ptr noundef %disconnect_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %out_decr.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ -19, %if.end ], [ %ret.2, %if.then64 ], [ %ret.2, %out_decr.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @dln2_driver, ptr noundef null, ptr noundef nonnull @.str.5) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dln2_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @dln2_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_probe(ptr noundef %interface, ptr nocapture noundef readnone %usb_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp5 = icmp ult i8 %5, 2
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes.i.i, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp.i.not.i = icmp eq i8 %10, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_out.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

usb_endpoint_is_bulk_out.exit:                    ; preds = %if.end
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp slt i8 %12, 0
  br i1 %tobool.not, label %usb_endpoint_is_bulk_out.exit.cleanup_crit_edge, label %if.end9

usb_endpoint_is_bulk_out.exit.cleanup_crit_edge:  ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %usb_endpoint_is_bulk_out.exit
  %bmAttributes.i.i125 = getelementptr %struct.usb_host_endpoint, ptr %7, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %bmAttributes.i.i125 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bmAttributes.i.i125, align 1
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.i.not.i126 = icmp eq i8 %15, 2
  br i1 %cmp.i.not.i126, label %usb_endpoint_is_bulk_in.exit, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

usb_endpoint_is_bulk_in.exit:                     ; preds = %if.end9
  %bEndpointAddress.i.i127 = getelementptr %struct.usb_host_endpoint, ptr %7, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress.i.i127 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress.i.i127, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool14.not = icmp sgt i8 %17, -1
  br i1 %tobool14.not, label %usb_endpoint_is_bulk_in.exit.cleanup_crit_edge, label %if.end16

usb_endpoint_is_bulk_in.exit.cleanup_crit_edge:   ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 7040) #13
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %19 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress.i.i, align 1
  %ep_out = getelementptr inbounds %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %ep_out to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %ep_out, align 1
  %22 = ptrtoint ptr %bEndpointAddress.i.i127 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bEndpointAddress.i.i127, align 1
  %ep_in = getelementptr inbounds %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %ep_in to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %ep_in, align 8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %26, i32 -128
  %call23 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #10
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call23, ptr %call7.i.i, align 8
  %interface24 = getelementptr inbounds %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %interface24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %interface, ptr %interface24, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %disconnect_wq = getelementptr inbounds %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %disconnect_wq, ptr noundef nonnull @.str.9, ptr noundef nonnull @dln2_probe.__key) #10
  br label %do.body27

do.body27:                                        ; preds = %do.body27.do.body27_crit_edge, %if.end20
  %i.0135 = phi i32 [ 0, %if.end20 ], [ %inc45, %do.body27.do.body27_crit_edge ]
  %wq = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.11, ptr noundef nonnull @dln2_probe.__key.10) #10
  %lock = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @dln2_probe.__key.12, i16 noundef signext 3) #10
  %arrayidx43 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 0
  %30 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx43, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %arrayidx43, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.1 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx43.1, align 4
  %wait.i.1 = getelementptr inbounds %struct.completion, ptr %arrayidx43.1, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.1, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.2 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 2
  %32 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx43.2, align 4
  %wait.i.2 = getelementptr inbounds %struct.completion, ptr %arrayidx43.2, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.2, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.3 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 3
  %33 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx43.3, align 4
  %wait.i.3 = getelementptr inbounds %struct.completion, ptr %arrayidx43.3, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.3, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.4 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 4
  %34 = ptrtoint ptr %arrayidx43.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx43.4, align 4
  %wait.i.4 = getelementptr inbounds %struct.completion, ptr %arrayidx43.4, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.4, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.5 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 5
  %35 = ptrtoint ptr %arrayidx43.5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx43.5, align 4
  %wait.i.5 = getelementptr inbounds %struct.completion, ptr %arrayidx43.5, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.5, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.6 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 6
  %36 = ptrtoint ptr %arrayidx43.6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx43.6, align 4
  %wait.i.6 = getelementptr inbounds %struct.completion, ptr %arrayidx43.6, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.6, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.7 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 7
  %37 = ptrtoint ptr %arrayidx43.7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx43.7, align 4
  %wait.i.7 = getelementptr inbounds %struct.completion, ptr %arrayidx43.7, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.7, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.8 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 8
  %38 = ptrtoint ptr %arrayidx43.8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx43.8, align 4
  %wait.i.8 = getelementptr inbounds %struct.completion, ptr %arrayidx43.8, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.8, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.9 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 9
  %39 = ptrtoint ptr %arrayidx43.9 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx43.9, align 4
  %wait.i.9 = getelementptr inbounds %struct.completion, ptr %arrayidx43.9, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.9, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.10 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 10
  %40 = ptrtoint ptr %arrayidx43.10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx43.10, align 4
  %wait.i.10 = getelementptr inbounds %struct.completion, ptr %arrayidx43.10, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.10, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.11 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 11
  %41 = ptrtoint ptr %arrayidx43.11 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx43.11, align 4
  %wait.i.11 = getelementptr inbounds %struct.completion, ptr %arrayidx43.11, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.11, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.12 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 12
  %42 = ptrtoint ptr %arrayidx43.12 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx43.12, align 4
  %wait.i.12 = getelementptr inbounds %struct.completion, ptr %arrayidx43.12, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.12, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.13 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 13
  %43 = ptrtoint ptr %arrayidx43.13 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx43.13, align 4
  %wait.i.13 = getelementptr inbounds %struct.completion, ptr %arrayidx43.13, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.13, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.14 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 14
  %44 = ptrtoint ptr %arrayidx43.14 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx43.14, align 4
  %wait.i.14 = getelementptr inbounds %struct.completion, ptr %arrayidx43.14, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.14, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %arrayidx43.15 = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 6, i32 %i.0135, i32 2, i32 15
  %45 = ptrtoint ptr %arrayidx43.15 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx43.15, align 4
  %wait.i.15 = getelementptr inbounds %struct.completion, ptr %arrayidx43.15, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.15, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #10
  %inc45 = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc45, 6
  br i1 %exitcond.not, label %do.body47, label %do.body27.do.body27_crit_edge

do.body27.do.body27_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

do.body47:                                        ; preds = %do.body27
  %event_cb_lock = getelementptr inbounds %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %event_cb_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @dln2_probe.__key.14, i16 noundef signext 3) #10
  %disconnect_lock = getelementptr inbounds %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %disconnect_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @dln2_probe.__key.16, i16 noundef signext 3) #10
  %event_cb_list = getelementptr inbounds %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %event_cb_list to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %event_cb_list, ptr %event_cb_list, align 4
  %prev.i = getelementptr inbounds %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %event_cb_list, ptr %prev.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %do.body47
  %i.01.i = phi i32 [ 0, %do.body47 ], [ %inc.i, %if.end9.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i129 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3264, i32 noundef 512) #13
  %arrayidx.i = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 5, i32 %i.01.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i129, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i129, null
  br i1 %tobool.not.i, label %for.body.i.out_free_crit_edge, label %if.end.i

for.body.i.out_free_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end.i:                                         ; preds = %for.body.i
  %call3.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %arrayidx4.i = getelementptr %struct.dln2_dev, ptr %call7.i.i, i32 0, i32 4, i32 %i.01.i
  %50 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call3.i, ptr %arrayidx4.i, align 4
  %tobool7.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool7.not.i, label %if.end.i.out_free_crit_edge, label %if.end9.i

if.end.i.out_free_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end9.i:                                        ; preds = %if.end.i
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call7.i.i, align 8
  %53 = ptrtoint ptr %ep_in to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ep_in, align 8
  %conv.i = zext i8 %54 to i32
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %52, align 8
  %shl.i.i = shl i32 %56, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or14.i = or i32 %or.i.i, -1073741696
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call3.i, i32 0, i32 8
  %59 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %52, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call3.i, i32 0, i32 10
  %60 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or14.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call3.i, i32 0, i32 14
  %61 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call3.i, i32 0, i32 19
  %62 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 512, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call3.i, i32 0, i32 28
  %63 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @dln2_rx, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call3.i, i32 0, i32 27
  %64 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i, ptr %context4.i.i, align 4
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end58, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end58:                                         ; preds = %if.end9.i
  %call59 = tail call fastcc i32 @dln2_start_rx_urbs(ptr noundef nonnull %call7.i.i, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.out_stop_rx_crit_edge

if.end58.out_stop_rx_crit_edge:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_stop_rx

if.end62:                                         ; preds = %if.end58
  %call63 = tail call fastcc i32 @dln2_hw_init(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end62.out_stop_rx.sink.split_crit_edge, label %if.end70

if.end62.out_stop_rx.sink.split_crit_edge:        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_stop_rx.sink.split

if.end70:                                         ; preds = %if.end62
  %call.i = tail call i32 @mfd_add_devices(ptr noundef %dev1, i32 noundef -2, ptr noundef nonnull @dln2_devs, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp72.not = icmp eq i32 %call.i, 0
  br i1 %cmp72.not, label %if.end70.cleanup_crit_edge, label %if.end70.out_stop_rx.sink.split_crit_edge

if.end70.out_stop_rx.sink.split_crit_edge:        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_stop_rx.sink.split

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_stop_rx.sink.split:                           ; preds = %if.end70.out_stop_rx.sink.split_crit_edge, %if.end62.out_stop_rx.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.18, %if.end62.out_stop_rx.sink.split_crit_edge ], [ @.str.21, %if.end70.out_stop_rx.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call63, %if.end62.out_stop_rx.sink.split_crit_edge ], [ %call.i, %if.end70.out_stop_rx.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.21.sink) #15
  br label %out_stop_rx

out_stop_rx:                                      ; preds = %out_stop_rx.sink.split, %if.end58.out_stop_rx_crit_edge
  %ret.0 = phi i32 [ %call59, %if.end58.out_stop_rx_crit_edge ], [ %ret.0.ph, %out_stop_rx.sink.split ]
  tail call fastcc void @dln2_stop_rx_urbs(ptr noundef nonnull %call7.i.i)
  br label %out_free

out_free:                                         ; preds = %out_stop_rx, %if.end.i.out_free_crit_edge, %for.body.i.out_free_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_stop_rx ], [ -12, %for.body.i.out_free_crit_edge ], [ -12, %if.end.i.out_free_crit_edge ]
  tail call fastcc void @dln2_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end70.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %usb_endpoint_is_bulk_in.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %usb_endpoint_is_bulk_out.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_free ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %usb_endpoint_is_bulk_out.exit.cleanup_crit_edge ], [ -19, %usb_endpoint_is_bulk_in.exit.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ 0, %if.end70.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dln2_disconnect(ptr noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @dln2_stop(ptr noundef %1)
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void @mfd_remove_devices(ptr noundef %dev) #10
  tail call fastcc void @dln2_free(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_suspend(ptr nocapture noundef readonly %iface, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @dln2_stop(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_resume(ptr nocapture noundef readonly %iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %disconnect = getelementptr inbounds %struct.dln2_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %disconnect to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %disconnect, align 4
  %call1 = tail call fastcc i32 @dln2_start_rx_urbs(ptr noundef %1, i32 noundef 3072)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dln2_start_rx_urbs(ptr nocapture noundef readonly %dln2, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.dln2_dev, ptr %dln2, i32 0, i32 1
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %arrayidx = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %entry.do.end_crit_edge, label %for.cond

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %call.1 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp2.1 = icmp slt i32 %call.1, 0
  br i1 %cmp2.1, label %for.cond.do.end_crit_edge, label %for.cond.1

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %call.2 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp2.2 = icmp slt i32 %call.2, 0
  br i1 %cmp2.2, label %for.cond.1.do.end_crit_edge, label %for.cond.2

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  %call.3 = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp2.3 = icmp slt i32 %call.3, 0
  br i1 %cmp2.3, label %for.cond.2.do.end_crit_edge, label %for.cond.3

for.cond.2.do.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.4, align 4
  %call.4 = tail call i32 @usb_submit_urb(ptr noundef %11, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp2.4 = icmp slt i32 %call.4, 0
  br i1 %cmp2.4, label %for.cond.3.do.end_crit_edge, label %for.cond.4

for.cond.3.do.end_crit_edge:                      ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.5, align 4
  %call.5 = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp2.5 = icmp slt i32 %call.5, 0
  br i1 %cmp2.5, label %for.cond.4.do.end_crit_edge, label %for.cond.5

for.cond.4.do.end_crit_edge:                      ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.6, align 4
  %call.6 = tail call i32 @usb_submit_urb(ptr noundef %15, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp2.6 = icmp slt i32 %call.6, 0
  br i1 %cmp2.6, label %for.cond.5.do.end_crit_edge, label %for.cond.6

for.cond.5.do.end_crit_edge:                      ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.7, align 4
  %call.7 = tail call i32 @usb_submit_urb(ptr noundef %17, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp2.7 = icmp slt i32 %call.7, 0
  br i1 %cmp2.7, label %for.cond.6.do.end_crit_edge, label %for.cond.7

for.cond.6.do.end_crit_edge:                      ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx.8 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.8, align 4
  %call.8 = tail call i32 @usb_submit_urb(ptr noundef %19, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %cmp2.8 = icmp slt i32 %call.8, 0
  br i1 %cmp2.8, label %for.cond.7.do.end_crit_edge, label %for.cond.8

for.cond.7.do.end_crit_edge:                      ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx.9 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 9
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.9, align 4
  %call.9 = tail call i32 @usb_submit_urb(ptr noundef %21, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %cmp2.9 = icmp slt i32 %call.9, 0
  br i1 %cmp2.9, label %for.cond.8.do.end_crit_edge, label %for.cond.9

for.cond.8.do.end_crit_edge:                      ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx.10 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 10
  %22 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.10, align 4
  %call.10 = tail call i32 @usb_submit_urb(ptr noundef %23, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10)
  %cmp2.10 = icmp slt i32 %call.10, 0
  br i1 %cmp2.10, label %for.cond.9.do.end_crit_edge, label %for.cond.10

for.cond.9.do.end_crit_edge:                      ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.10:                                      ; preds = %for.cond.9
  %arrayidx.11 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 11
  %24 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.11, align 4
  %call.11 = tail call i32 @usb_submit_urb(ptr noundef %25, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11)
  %cmp2.11 = icmp slt i32 %call.11, 0
  br i1 %cmp2.11, label %for.cond.10.do.end_crit_edge, label %for.cond.11

for.cond.10.do.end_crit_edge:                     ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.11:                                      ; preds = %for.cond.10
  %arrayidx.12 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 12
  %26 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.12, align 4
  %call.12 = tail call i32 @usb_submit_urb(ptr noundef %27, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12)
  %cmp2.12 = icmp slt i32 %call.12, 0
  br i1 %cmp2.12, label %for.cond.11.do.end_crit_edge, label %for.cond.12

for.cond.11.do.end_crit_edge:                     ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.12:                                      ; preds = %for.cond.11
  %arrayidx.13 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 13
  %28 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.13, align 4
  %call.13 = tail call i32 @usb_submit_urb(ptr noundef %29, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.13)
  %cmp2.13 = icmp slt i32 %call.13, 0
  br i1 %cmp2.13, label %for.cond.12.do.end_crit_edge, label %for.cond.13

for.cond.12.do.end_crit_edge:                     ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.13:                                      ; preds = %for.cond.12
  %arrayidx.14 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 14
  %30 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.14, align 4
  %call.14 = tail call i32 @usb_submit_urb(ptr noundef %31, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.14)
  %cmp2.14 = icmp slt i32 %call.14, 0
  br i1 %cmp2.14, label %for.cond.13.do.end_crit_edge, label %for.cond.14

for.cond.13.do.end_crit_edge:                     ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.14:                                      ; preds = %for.cond.13
  %arrayidx.15 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 15
  %32 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.15, align 4
  %call.15 = tail call i32 @usb_submit_urb(ptr noundef %33, i32 noundef %gfp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.15)
  %cmp2.15 = icmp slt i32 %call.15, 0
  br i1 %cmp2.15, label %for.cond.14.do.end_crit_edge, label %for.cond.14.cleanup_crit_edge

for.cond.14.cleanup_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.14.do.end_crit_edge:                     ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %for.cond.14.do.end_crit_edge, %for.cond.13.do.end_crit_edge, %for.cond.12.do.end_crit_edge, %for.cond.11.do.end_crit_edge, %for.cond.10.do.end_crit_edge, %for.cond.9.do.end_crit_edge, %for.cond.8.do.end_crit_edge, %for.cond.7.do.end_crit_edge, %for.cond.6.do.end_crit_edge, %for.cond.5.do.end_crit_edge, %for.cond.4.do.end_crit_edge, %for.cond.3.do.end_crit_edge, %for.cond.2.do.end_crit_edge, %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %for.cond.do.end_crit_edge ], [ %call.2, %for.cond.1.do.end_crit_edge ], [ %call.3, %for.cond.2.do.end_crit_edge ], [ %call.4, %for.cond.3.do.end_crit_edge ], [ %call.5, %for.cond.4.do.end_crit_edge ], [ %call.6, %for.cond.5.do.end_crit_edge ], [ %call.7, %for.cond.6.do.end_crit_edge ], [ %call.8, %for.cond.7.do.end_crit_edge ], [ %call.9, %for.cond.8.do.end_crit_edge ], [ %call.10, %for.cond.9.do.end_crit_edge ], [ %call.11, %for.cond.10.do.end_crit_edge ], [ %call.12, %for.cond.11.do.end_crit_edge ], [ %call.13, %for.cond.12.do.end_crit_edge ], [ %call.14, %for.cond.13.do.end_crit_edge ], [ %call.15, %for.cond.14.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %call.lcssa) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.lcssa, %do.end ], [ 0, %for.cond.14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dln2_hw_init(ptr noundef %dln2) unnamed_addr #0 align 64 {
entry:
  %serial_no.i = alloca i32, align 4
  %len.i4 = alloca i32, align 4
  %hw_type.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_type.i) #10
  %0 = ptrtoint ptr %hw_type.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hw_type.i, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #10
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %len.i, align 4
  %call.i = call fastcc i32 @_dln2_transfer(ptr noundef %dln2, i16 noundef zeroext 1, i16 noundef zeroext 48, ptr noundef null, i32 noundef 0, ptr noundef nonnull %hw_type.i, ptr noundef nonnull %len.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.dln2_check_hw.exit.thread_crit_edge, label %if.end.i

entry.dln2_check_hw.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dln2_check_hw.exit.thread

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp1.i = icmp ult i32 %3, 4
  br i1 %cmp1.i, label %if.end.i.dln2_check_hw.exit.thread_crit_edge, label %if.end3.i

if.end.i.dln2_check_hw.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dln2_check_hw.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %hw_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %5)
  %cmp4.not.i = icmp eq i32 %5, 131072
  br i1 %cmp4.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call i32 @llvm.bswap.i32(i32 %5) #10
  %interface.i = getelementptr inbounds %struct.dln2_dev, ptr %dln2, i32 0, i32 1
  %7 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interface.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.45, i32 noundef %6) #15
  br label %dln2_check_hw.exit.thread

dln2_check_hw.exit.thread:                        ; preds = %do.end.i, %if.end.i.dln2_check_hw.exit.thread_crit_edge, %entry.dln2_check_hw.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -121, %if.end.i.dln2_check_hw.exit.thread_crit_edge ], [ %call.i, %entry.dln2_check_hw.exit.thread_crit_edge ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_type.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_type.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %serial_no.i) #10
  %9 = ptrtoint ptr %serial_no.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %serial_no.i, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i4) #10
  %10 = ptrtoint ptr %len.i4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %len.i4, align 4
  %interface.i5 = getelementptr inbounds %struct.dln2_dev, ptr %dln2, i32 0, i32 1
  %11 = ptrtoint ptr %interface.i5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interface.i5, align 4
  %dev1.i = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  %call.i6 = call fastcc i32 @_dln2_transfer(ptr noundef %dln2, i16 noundef zeroext 1, i16 noundef zeroext 49, ptr noundef null, i32 noundef 0, ptr noundef nonnull %serial_no.i, ptr noundef nonnull %len.i4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %cmp.i7 = icmp slt i32 %call.i6, 0
  br i1 %cmp.i7, label %if.end.dln2_print_serialno.exit_crit_edge, label %if.end.i8

if.end.dln2_print_serialno.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dln2_print_serialno.exit

if.end.i8:                                        ; preds = %if.end
  %13 = ptrtoint ptr %len.i4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp2.i = icmp ult i32 %14, 4
  br i1 %cmp2.i, label %if.end.i8.dln2_print_serialno.exit_crit_edge, label %do.end.i9

if.end.i8.dln2_print_serialno.exit_crit_edge:     ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %dln2_print_serialno.exit

do.end.i9:                                        ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %serial_no.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %serial_no.i, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.47, i32 noundef %17) #15
  br label %dln2_print_serialno.exit

dln2_print_serialno.exit:                         ; preds = %do.end.i9, %if.end.i8.dln2_print_serialno.exit_crit_edge, %if.end.dln2_print_serialno.exit_crit_edge
  %retval.0.i10 = phi i32 [ 0, %do.end.i9 ], [ %call.i6, %if.end.dln2_print_serialno.exit_crit_edge ], [ -121, %if.end.i8.dln2_print_serialno.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %serial_no.i) #10
  br label %cleanup

cleanup:                                          ; preds = %dln2_print_serialno.exit, %dln2_check_hw.exit.thread
  %retval.0 = phi i32 [ %retval.0.i10, %dln2_print_serialno.exit ], [ %retval.0.i.ph, %dln2_check_hw.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dln2_stop_rx_urbs(ptr nocapture noundef readonly %dln2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %1) #10
  %arrayidx.1 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #10
  %arrayidx.2 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #10
  %arrayidx.3 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #10
  %arrayidx.4 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #10
  %arrayidx.5 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #10
  %arrayidx.6 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #10
  %arrayidx.7 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.7, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #10
  %arrayidx.8 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.8, align 4
  tail call void @usb_kill_urb(ptr noundef %17) #10
  %arrayidx.9 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.9, align 4
  tail call void @usb_kill_urb(ptr noundef %19) #10
  %arrayidx.10 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.10, align 4
  tail call void @usb_kill_urb(ptr noundef %21) #10
  %arrayidx.11 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.11, align 4
  tail call void @usb_kill_urb(ptr noundef %23) #10
  %arrayidx.12 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 12
  %24 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.12, align 4
  tail call void @usb_kill_urb(ptr noundef %25) #10
  %arrayidx.13 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 13
  %26 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.13, align 4
  tail call void @usb_kill_urb(ptr noundef %27) #10
  %arrayidx.14 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 14
  %28 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.14, align 4
  tail call void @usb_kill_urb(ptr noundef %29) #10
  %arrayidx.15 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 15
  %30 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.15, align 4
  tail call void @usb_kill_urb(ptr noundef %31) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dln2_free(ptr noundef %dln2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_free_urb(ptr noundef %1) #10
  %arrayidx1.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 0
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1.i, align 4
  tail call void @kfree(ptr noundef %3) #10
  %arrayidx.1.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @usb_free_urb(ptr noundef %5) #10
  %arrayidx1.1.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.1.i, align 4
  tail call void @kfree(ptr noundef %7) #10
  %arrayidx.2.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @usb_free_urb(ptr noundef %9) #10
  %arrayidx1.2.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.2.i, align 4
  tail call void @kfree(ptr noundef %11) #10
  %arrayidx.3.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3.i, align 4
  tail call void @usb_free_urb(ptr noundef %13) #10
  %arrayidx1.3.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.3.i, align 4
  tail call void @kfree(ptr noundef %15) #10
  %arrayidx.4.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.4.i, align 4
  tail call void @usb_free_urb(ptr noundef %17) #10
  %arrayidx1.4.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx1.4.i, align 4
  tail call void @kfree(ptr noundef %19) #10
  %arrayidx.5.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 5
  %20 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5.i, align 4
  tail call void @usb_free_urb(ptr noundef %21) #10
  %arrayidx1.5.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 5
  %22 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx1.5.i, align 4
  tail call void @kfree(ptr noundef %23) #10
  %arrayidx.6.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.6.i, align 4
  tail call void @usb_free_urb(ptr noundef %25) #10
  %arrayidx1.6.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 6
  %26 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx1.6.i, align 4
  tail call void @kfree(ptr noundef %27) #10
  %arrayidx.7.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 7
  %28 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.7.i, align 4
  tail call void @usb_free_urb(ptr noundef %29) #10
  %arrayidx1.7.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 7
  %30 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx1.7.i, align 4
  tail call void @kfree(ptr noundef %31) #10
  %arrayidx.8.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 8
  %32 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.8.i, align 4
  tail call void @usb_free_urb(ptr noundef %33) #10
  %arrayidx1.8.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 8
  %34 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx1.8.i, align 4
  tail call void @kfree(ptr noundef %35) #10
  %arrayidx.9.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 9
  %36 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.9.i, align 4
  tail call void @usb_free_urb(ptr noundef %37) #10
  %arrayidx1.9.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 9
  %38 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx1.9.i, align 4
  tail call void @kfree(ptr noundef %39) #10
  %arrayidx.10.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 10
  %40 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.10.i, align 4
  tail call void @usb_free_urb(ptr noundef %41) #10
  %arrayidx1.10.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 10
  %42 = ptrtoint ptr %arrayidx1.10.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx1.10.i, align 4
  tail call void @kfree(ptr noundef %43) #10
  %arrayidx.11.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 11
  %44 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.11.i, align 4
  tail call void @usb_free_urb(ptr noundef %45) #10
  %arrayidx1.11.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 11
  %46 = ptrtoint ptr %arrayidx1.11.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx1.11.i, align 4
  tail call void @kfree(ptr noundef %47) #10
  %arrayidx.12.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 12
  %48 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.12.i, align 4
  tail call void @usb_free_urb(ptr noundef %49) #10
  %arrayidx1.12.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 12
  %50 = ptrtoint ptr %arrayidx1.12.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx1.12.i, align 4
  tail call void @kfree(ptr noundef %51) #10
  %arrayidx.13.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 13
  %52 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.13.i, align 4
  tail call void @usb_free_urb(ptr noundef %53) #10
  %arrayidx1.13.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 13
  %54 = ptrtoint ptr %arrayidx1.13.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx1.13.i, align 4
  tail call void @kfree(ptr noundef %55) #10
  %arrayidx.14.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 14
  %56 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.14.i, align 4
  tail call void @usb_free_urb(ptr noundef %57) #10
  %arrayidx1.14.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 14
  %58 = ptrtoint ptr %arrayidx1.14.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx1.14.i, align 4
  tail call void @kfree(ptr noundef %59) #10
  %arrayidx.15.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 4, i32 15
  %60 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.15.i, align 4
  tail call void @usb_free_urb(ptr noundef %61) #10
  %arrayidx1.15.i = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 5, i32 15
  %62 = ptrtoint ptr %arrayidx1.15.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx1.15.i, align 4
  tail call void @kfree(ptr noundef %63) #10
  %64 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dln2, align 4
  tail call void @usb_put_dev(ptr noundef %65) #10
  tail call void @kfree(ptr noundef %dln2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dln2_rx(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %interface = getelementptr inbounds %struct.dln2_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.body5 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge140
    i32 -108, label %entry.do.body_crit_edge141
    i32 -32, label %entry.do.body_crit_edge142
  ]

entry.do.body_crit_edge142:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge141:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge140, %entry.do.body_crit_edge141, %entry.do.body_crit_edge142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_rx.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_rx, %if.then)) #10
          to label %cleanup [label %if.then], !srcloc !157

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_rx.__UNIQUE_ID_ddebug295, ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %10) #10
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_rx.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_rx, %if.then17)) #10
          to label %out [label %if.then17], !srcloc !157

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_rx.__UNIQUE_ID_ddebug296, ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %12) #10
  br label %out

sw.epilog:                                        ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp = icmp ult i32 %14, 8
  br i1 %cmp, label %do.end25, label %if.end27

do.end25:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %14) #15
  br label %out

if.end27:                                         ; preds = %sw.epilog
  %handle28 = getelementptr inbounds %struct.dln2_header, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %handle28 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %handle28, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %id29 = getelementptr inbounds %struct.dln2_header, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %id29 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %id29, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %echo30 = getelementptr inbounds %struct.dln2_header, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %echo30 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %echo30, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %3, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv)
  %cmp33.not = icmp eq i32 %14, %conv
  br i1 %cmp33.not, label %if.end44, label %do.end38

do.end38:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %conv39 = zext i16 %17 to i32
  %conv40 = zext i16 %20 to i32
  %conv41 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %conv39, i32 noundef %conv40, i32 noundef %conv41, i32 noundef %conv, i32 noundef %14) #15
  br label %out

if.end44:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %17)
  %cmp46 = icmp ugt i16 %17, 5
  br i1 %cmp46, label %do.end51, label %if.end53

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %conv45 = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %conv45) #15
  br label %out

if.end53:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp57 = icmp eq i16 %16, 0
  br i1 %cmp57, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.end53
  %sub = add i32 %14, -8
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %event_cb_lock = getelementptr inbounds %struct.dln2_dev, ptr %1, i32 0, i32 8
  %call66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_cb_lock) #10
  %27 = tail call i32 @llvm.read_register.i32(metadata !144) #10
  %and.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !158
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.then59.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then59.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then59
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then59.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b30.i = load i1, ptr @dln2_run_event_callbacks.__warned, align 1
  br i1 %.b30.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dln2_run_event_callbacks.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 230, ptr noundef nonnull @.str.37) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %event_cb_list.i = getelementptr inbounds %struct.dln2_dev, ptr %1, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %i.0.in.i = phi ptr [ %event_cb_list.i, %do.end.i ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %31 = ptrtoint ptr %i.0.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %i.0.i = load volatile ptr, ptr %i.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %i.0.i, %event_cb_list.i
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %id10.i = getelementptr inbounds %struct.dln2_event_cb_entry, ptr %i.0.i, i32 0, i32 1
  %32 = ptrtoint ptr %id10.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %id10.i, align 4
  %cmp12.i = icmp eq i16 %33, %20
  br i1 %cmp12.i, label %if.then14.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then14.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %callback.i = getelementptr inbounds %struct.dln2_event_cb_entry, ptr %i.0.i, i32 0, i32 3
  %34 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %callback.i, align 4
  %pdev.i = getelementptr inbounds %struct.dln2_event_cb_entry, ptr %i.0.i, i32 0, i32 2
  %36 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev.i, align 4
  tail call void %35(ptr noundef %37, i16 noundef zeroext %23, ptr noundef %add.ptr, i32 noundef %sub) #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.then14.i, %for.cond.i.for.end.i_crit_edge
  %call.i31.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i31.i, label %for.end.i.dln2_run_event_callbacks.exit_crit_edge, label %land.lhs.true.i34.i

for.end.i.dln2_run_event_callbacks.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dln2_run_event_callbacks.exit

land.lhs.true.i34.i:                              ; preds = %for.end.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool.not.i33.i, label %land.lhs.true.i34.i.dln2_run_event_callbacks.exit_crit_edge, label %land.lhs.true2.i36.i

land.lhs.true.i34.i.dln2_run_event_callbacks.exit_crit_edge: ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dln2_run_event_callbacks.exit

land.lhs.true2.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b4.i35.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35.i, label %land.lhs.true2.i36.i.dln2_run_event_callbacks.exit_crit_edge, label %if.then.i37.i

land.lhs.true2.i36.i.dln2_run_event_callbacks.exit_crit_edge: ; preds = %land.lhs.true2.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dln2_run_event_callbacks.exit

if.then.i37.i:                                    ; preds = %land.lhs.true2.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #10
  br label %dln2_run_event_callbacks.exit

dln2_run_event_callbacks.exit:                    ; preds = %if.then.i37.i, %land.lhs.true2.i36.i.dln2_run_event_callbacks.exit_crit_edge, %land.lhs.true.i34.i.dln2_run_event_callbacks.exit_crit_edge, %for.end.i.dln2_run_event_callbacks.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !159
  %38 = tail call i32 @llvm.read_register.i32(metadata !144) #10
  %and.i.i.i.i.i38.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i38.i to ptr
  %preempt_count.i.i.i.i39.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i39.i, align 4
  %sub.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i39.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_cb_lock, i32 noundef %call66) #10
  br label %out

if.else:                                          ; preds = %if.end53
  %idxprom.i = zext i16 %17 to i32
  %conv.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %23)
  %cmp.i = icmp ugt i16 %23, 15
  br i1 %cmp.i, label %if.else.dln2_transfer_complete.exit_crit_edge, label %if.end.i

if.else.dln2_transfer_complete.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %dln2_transfer_complete.exit

if.end.i:                                         ; preds = %if.else
  %arrayidx4.i = getelementptr %struct.dln2_dev, ptr %1, i32 0, i32 6, i32 %idxprom.i, i32 2, i32 %conv.i
  %lock.i = getelementptr %struct.dln2_dev, ptr %1, i32 0, i32 6, i32 %idxprom.i, i32 3
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %in_use.i = getelementptr %struct.dln2_dev, ptr %1, i32 0, i32 6, i32 %idxprom.i, i32 2, i32 %conv.i, i32 2
  %42 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %in_use.i, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i129 = icmp eq i8 %43, 0
  br i1 %tobool.not.i129, label %if.end.i.out.thread40.i_crit_edge, label %land.lhs.true.i130

if.end.i.out.thread40.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread40.i

land.lhs.true.i130:                               ; preds = %if.end.i
  %urb12.i = getelementptr %struct.dln2_dev, ptr %1, i32 0, i32 6, i32 %idxprom.i, i32 2, i32 %conv.i, i32 1
  %44 = ptrtoint ptr %urb12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %urb12.i, align 4
  %tobool13.not.i = icmp eq ptr %45, null
  br i1 %tobool13.not.i, label %dln2_transfer_complete.exit.thread, label %land.lhs.true.i130.out.thread40.i_crit_edge

land.lhs.true.i130.out.thread40.i_crit_edge:      ; preds = %land.lhs.true.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread40.i

out.thread40.i:                                   ; preds = %land.lhs.true.i130.out.thread40.i_crit_edge, %if.end.i.out.thread40.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #10
  br label %dln2_transfer_complete.exit

dln2_transfer_complete.exit.thread:               ; preds = %land.lhs.true.i130
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %urb12.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %urb, ptr %urb12.i, align 4
  tail call void @complete(ptr noundef %arrayidx4.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #10
  br label %cleanup

dln2_transfer_complete.exit:                      ; preds = %out.thread40.i, %if.else.dln2_transfer_complete.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef %idxprom.i, i32 noundef %conv.i) #15
  br label %out

out:                                              ; preds = %dln2_transfer_complete.exit, %dln2_run_event_callbacks.exit, %do.end51, %do.end38, %do.end25, %if.then17, %do.body5
  %call76 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.end82, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end82:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call76) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %out.cleanup_crit_edge, %dln2_transfer_complete.exit.thread, %if.then, %do.body
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dln2_stop(ptr noundef %dln2) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %disconnect_lock = getelementptr inbounds %struct.dln2_dev, ptr %dln2, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %disconnect_lock) #10
  %disconnect = getelementptr inbounds %struct.dln2_dev, ptr %dln2, i32 0, i32 9
  %0 = ptrtoint ptr %disconnect to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %disconnect, align 4
  tail call void @_raw_spin_unlock(ptr noundef %disconnect_lock) #10
  br label %for.body

for.body:                                         ; preds = %if.end.15.for.body_crit_edge, %entry
  %i.056 = phi i32 [ 0, %entry ], [ %inc14, %if.end.15.for.body_crit_edge ]
  %lock = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %in_use = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 0, i32 2
  %1 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %in_use, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 0
  tail call void @complete(ptr noundef %arrayidx11) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %in_use.1 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 1, i32 2
  %3 = ptrtoint ptr %in_use.1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in_use.1, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.1 = icmp eq i8 %4, 0
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.1 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 1
  tail call void @complete(ptr noundef %arrayidx11.1) #10
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %in_use.2 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 2, i32 2
  %5 = ptrtoint ptr %in_use.2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_use.2, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.2 = icmp eq i8 %6, 0
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.2 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 2
  tail call void @complete(ptr noundef %arrayidx11.2) #10
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %in_use.3 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 3, i32 2
  %7 = ptrtoint ptr %in_use.3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_use.3, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.3 = icmp eq i8 %8, 0
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.3 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 3
  tail call void @complete(ptr noundef %arrayidx11.3) #10
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %in_use.4 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 4, i32 2
  %9 = ptrtoint ptr %in_use.4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %in_use.4, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.4 = icmp eq i8 %10, 0
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.4 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 4
  tail call void @complete(ptr noundef %arrayidx11.4) #10
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %in_use.5 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 5, i32 2
  %11 = ptrtoint ptr %in_use.5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %in_use.5, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.5 = icmp eq i8 %12, 0
  br i1 %tobool.not.5, label %if.end.4.if.end.5_crit_edge, label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.5 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 5
  tail call void @complete(ptr noundef %arrayidx11.5) #10
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %in_use.6 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 6, i32 2
  %13 = ptrtoint ptr %in_use.6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %in_use.6, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.6 = icmp eq i8 %14, 0
  br i1 %tobool.not.6, label %if.end.5.if.end.6_crit_edge, label %if.then.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.6 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 6
  tail call void @complete(ptr noundef %arrayidx11.6) #10
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end.5.if.end.6_crit_edge
  %in_use.7 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 7, i32 2
  %15 = ptrtoint ptr %in_use.7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %in_use.7, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.7 = icmp eq i8 %16, 0
  br i1 %tobool.not.7, label %if.end.6.if.end.7_crit_edge, label %if.then.7

if.end.6.if.end.7_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.7

if.then.7:                                        ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.7 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 7
  tail call void @complete(ptr noundef %arrayidx11.7) #10
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %if.end.6.if.end.7_crit_edge
  %in_use.8 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 8, i32 2
  %17 = ptrtoint ptr %in_use.8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %in_use.8, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.8 = icmp eq i8 %18, 0
  br i1 %tobool.not.8, label %if.end.7.if.end.8_crit_edge, label %if.then.8

if.end.7.if.end.8_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.8

if.then.8:                                        ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.8 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 8
  tail call void @complete(ptr noundef %arrayidx11.8) #10
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.8, %if.end.7.if.end.8_crit_edge
  %in_use.9 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 9, i32 2
  %19 = ptrtoint ptr %in_use.9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %in_use.9, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.9 = icmp eq i8 %20, 0
  br i1 %tobool.not.9, label %if.end.8.if.end.9_crit_edge, label %if.then.9

if.end.8.if.end.9_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.9

if.then.9:                                        ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.9 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 9
  tail call void @complete(ptr noundef %arrayidx11.9) #10
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.9, %if.end.8.if.end.9_crit_edge
  %in_use.10 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 10, i32 2
  %21 = ptrtoint ptr %in_use.10 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %in_use.10, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.10 = icmp eq i8 %22, 0
  br i1 %tobool.not.10, label %if.end.9.if.end.10_crit_edge, label %if.then.10

if.end.9.if.end.10_crit_edge:                     ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.10

if.then.10:                                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.10 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 10
  tail call void @complete(ptr noundef %arrayidx11.10) #10
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.10, %if.end.9.if.end.10_crit_edge
  %in_use.11 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 11, i32 2
  %23 = ptrtoint ptr %in_use.11 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %in_use.11, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.11 = icmp eq i8 %24, 0
  br i1 %tobool.not.11, label %if.end.10.if.end.11_crit_edge, label %if.then.11

if.end.10.if.end.11_crit_edge:                    ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.11

if.then.11:                                       ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.11 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 11
  tail call void @complete(ptr noundef %arrayidx11.11) #10
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.11, %if.end.10.if.end.11_crit_edge
  %in_use.12 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 12, i32 2
  %25 = ptrtoint ptr %in_use.12 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %in_use.12, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.12 = icmp eq i8 %26, 0
  br i1 %tobool.not.12, label %if.end.11.if.end.12_crit_edge, label %if.then.12

if.end.11.if.end.12_crit_edge:                    ; preds = %if.end.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.12

if.then.12:                                       ; preds = %if.end.11
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.12 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 12
  tail call void @complete(ptr noundef %arrayidx11.12) #10
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.12, %if.end.11.if.end.12_crit_edge
  %in_use.13 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 13, i32 2
  %27 = ptrtoint ptr %in_use.13 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %in_use.13, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.13 = icmp eq i8 %28, 0
  br i1 %tobool.not.13, label %if.end.12.if.end.13_crit_edge, label %if.then.13

if.end.12.if.end.13_crit_edge:                    ; preds = %if.end.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.13

if.then.13:                                       ; preds = %if.end.12
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.13 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 13
  tail call void @complete(ptr noundef %arrayidx11.13) #10
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.13, %if.end.12.if.end.13_crit_edge
  %in_use.14 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 14, i32 2
  %29 = ptrtoint ptr %in_use.14 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %in_use.14, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.14 = icmp eq i8 %30, 0
  br i1 %tobool.not.14, label %if.end.13.if.end.14_crit_edge, label %if.then.14

if.end.13.if.end.14_crit_edge:                    ; preds = %if.end.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.14

if.then.14:                                       ; preds = %if.end.13
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.14 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 14
  tail call void @complete(ptr noundef %arrayidx11.14) #10
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.14, %if.end.13.if.end.14_crit_edge
  %in_use.15 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 15, i32 2
  %31 = ptrtoint ptr %in_use.15 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %in_use.15, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.15 = icmp eq i8 %32, 0
  br i1 %tobool.not.15, label %if.end.14.if.end.15_crit_edge, label %if.then.15

if.end.14.if.end.15_crit_edge:                    ; preds = %if.end.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.15

if.then.15:                                       ; preds = %if.end.14
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.15 = getelementptr %struct.dln2_dev, ptr %dln2, i32 0, i32 6, i32 %i.056, i32 2, i32 15
  tail call void @complete(ptr noundef %arrayidx11.15) #10
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.15, %if.end.14.if.end.15_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %inc14 = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc14, 6
  br i1 %exitcond.not, label %do.body17, label %if.end.15.for.body_crit_edge

if.end.15.for.body_crit_edge:                     ; preds = %if.end.15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body17:                                        ; preds = %if.end.15
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 753) #10
  %active_transfers = getelementptr inbounds %struct.dln2_dev, ptr %dln2, i32 0, i32 10
  %33 = ptrtoint ptr %active_transfers to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %active_transfers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool23.not = icmp eq i32 %34, 0
  br i1 %tobool23.not, label %do.body17.do.end36_crit_edge, label %if.end25

do.body17.do.end36_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

if.end25:                                         ; preds = %do.body17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %35 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %disconnect_wq = getelementptr inbounds %struct.dln2_dev, ptr %dln2, i32 0, i32 11
  %call2757 = call i32 @prepare_to_wait_event(ptr noundef %disconnect_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %36 = ptrtoint ptr %active_transfers to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %active_transfers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool29.not58 = icmp eq i32 %37, 0
  br i1 %tobool29.not58, label %if.end25.for.end32_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  br label %cleanup

if.end25.for.end32_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end32

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end25.cleanup_crit_edge
  call void @schedule() #10
  %call27 = call i32 @prepare_to_wait_event(ptr noundef %disconnect_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %38 = ptrtoint ptr %active_transfers to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %active_transfers, align 4
  %tobool29.not = icmp eq i32 %39, 0
  br i1 %tobool29.not, label %cleanup.for.end32_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end32_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end32

for.end32:                                        ; preds = %cleanup.for.end32_crit_edge, %if.end25.for.end32_crit_edge
  call void @finish_wait(ptr noundef %disconnect_wq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end36

do.end36:                                         ; preds = %for.end32, %do.body17.do.end36_crit_edge
  call fastcc void @dln2_stop_rx_urbs(ptr noundef %dln2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142}
!llvm.named.register.sp = !{!144}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__ksymtab_dln2_register_event_cb, !1, !"__ksymtab_dln2_register_event_cb", i1 false, i1 false}
!1 = !{!"../drivers/mfd/dln2.c", i32 161, i32 1}
!2 = !{ptr @__ksymtab_dln2_unregister_event_cb, !3, !"__ksymtab_dln2_unregister_event_cb", i1 false, i1 false}
!3 = !{!"../drivers/mfd/dln2.c", i32 187, i32 1}
!4 = !{ptr @__ksymtab_dln2_transfer, !5, !"__ksymtab_dln2_transfer", i1 false, i1 false}
!5 = !{!"../drivers/mfd/dln2.c", i32 534, i32 1}
!6 = !{ptr @__initcall__kmod_dln2__298_878_dln2_driver_init6, !7, !"__initcall__kmod_dln2__298_878_dln2_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/mfd/dln2.c", i32 878, i32 1}
!8 = !{ptr @__exitcall_dln2_driver_exit, !7, !"__exitcall_dln2_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author299, !10, !"__UNIQUE_ID_author299", i1 false, i1 false}
!10 = !{!"../drivers/mfd/dln2.c", i32 880, i32 1}
!11 = !{ptr @__UNIQUE_ID_description300, !12, !"__UNIQUE_ID_description300", i1 false, i1 false}
!12 = !{!"../drivers/mfd/dln2.c", i32 881, i32 1}
!13 = !{ptr @__UNIQUE_ID_file301, !14, !"__UNIQUE_ID_file301", i1 false, i1 false}
!14 = !{!"../drivers/mfd/dln2.c", i32 882, i32 1}
!15 = !{ptr @__UNIQUE_ID_license302, !14, !"__UNIQUE_ID_license302", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mfd/dln2.c", i32 463, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @_dln2_transfer._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @_dln2_transfer._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/dln2.c", i32 493, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @_dln2_transfer.__UNIQUE_ID_ddebug297, !25, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mfd/dln2.c", i32 426, i32 4}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @free_rx_slot._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @free_rx_slot._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @dln2_driver, !34, !"dln2_driver", i1 false, i1 false}
!34 = !{!"../drivers/mfd/dln2.c", i32 869, i32 26}
!35 = !{ptr @dln2_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/mfd/dln2.c", i32 800, i32 2}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dln2_probe.__key.10, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/mfd/dln2.c", i32 803, i32 3}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dln2_probe.__key.12, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/mfd/dln2.c", i32 804, i32 3}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dln2_probe.__key.14, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/mfd/dln2.c", i32 809, i32 2}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @dln2_probe.__key.16, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/mfd/dln2.c", i32 810, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mfd/dln2.c", i32 823, i32 3}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dln2_probe._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @dln2_probe._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/dln2.c", i32 829, i32 3}
!57 = !{ptr @dln2_probe._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @dln2_probe._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @init_completion.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../include/linux/completion.h", i32 87, i32 2}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/dln2.c", i32 259, i32 3}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @dln2_rx.__UNIQUE_ID_ddebug295, !63, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mfd/dln2.c", i32 262, i32 3}
!68 = !{ptr @dln2_rx.__UNIQUE_ID_ddebug296, !67, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mfd/dln2.c", i32 267, i32 3}
!71 = !{ptr @dln2_rx._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @dln2_rx._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/dln2.c", i32 277, i32 3}
!75 = !{ptr @dln2_rx._entry.28, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @dln2_rx._entry_ptr.30, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mfd/dln2.c", i32 283, i32 3}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @dln2_rx._entry.31, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @dln2_rx._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @dln2_rx._entry.35, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/mfd/dln2.c", i32 305, i32 3}
!84 = !{ptr @dln2_rx._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../drivers/mfd/dln2.c", i32 230, i32 2}
!87 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!94 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mfd/dln2.c", i32 218, i32 3}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @dln2_transfer_complete._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @dln2_transfer_complete._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mfd/dln2.c", i32 645, i32 4}
!102 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @dln2_start_rx_urbs._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @dln2_start_rx_urbs._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mfd/dln2.c", i32 550, i32 3}
!107 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @dln2_check_hw._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @dln2_check_hw._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mfd/dln2.c", i32 572, i32 2}
!112 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @dln2_print_serialno._entry, !111, !"_entry", i1 false, i1 false}
!115 = !{ptr @dln2_print_serialno._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mfd/dln2.c", i32 700, i32 11}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mfd/dln2.c", i32 706, i32 11}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mfd/dln2.c", i32 712, i32 11}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mfd/dln2.c", i32 718, i32 11}
!124 = !{ptr @dln2_devs, !125, !"dln2_devs", i1 false, i1 false}
!125 = !{!"../drivers/mfd/dln2.c", i32 698, i32 30}
!126 = !{ptr @dln2_pdata_gpio, !127, !"dln2_pdata_gpio", i1 false, i1 false}
!127 = !{!"../drivers/mfd/dln2.c", i32 660, i32 34}
!128 = !{ptr @dln2_acpi_match_gpio, !129, !"dln2_acpi_match_gpio", i1 false, i1 false}
!129 = !{!"../drivers/mfd/dln2.c", i32 664, i32 35}
!130 = !{ptr @dln2_pdata_i2c, !131, !"dln2_pdata_i2c", i1 false, i1 false}
!131 = !{!"../drivers/mfd/dln2.c", i32 669, i32 34}
!132 = !{ptr @dln2_acpi_match_i2c, !133, !"dln2_acpi_match_i2c", i1 false, i1 false}
!133 = !{!"../drivers/mfd/dln2.c", i32 674, i32 35}
!134 = !{ptr @dln2_pdata_spi, !135, !"dln2_pdata_spi", i1 false, i1 false}
!135 = !{!"../drivers/mfd/dln2.c", i32 679, i32 34}
!136 = !{ptr @dln2_acpi_match_spi, !137, !"dln2_acpi_match_spi", i1 false, i1 false}
!137 = !{!"../drivers/mfd/dln2.c", i32 684, i32 35}
!138 = !{ptr @dln2_pdata_adc, !139, !"dln2_pdata_adc", i1 false, i1 false}
!139 = !{!"../drivers/mfd/dln2.c", i32 689, i32 34}
!140 = !{ptr @dln2_acpi_match_adc, !141, !"dln2_acpi_match_adc", i1 false, i1 false}
!141 = !{!"../drivers/mfd/dln2.c", i32 694, i32 35}
!142 = !{ptr @dln2_table, !143, !"dln2_table", i1 false, i1 false}
!143 = !{!"../drivers/mfd/dln2.c", i32 862, i32 35}
!144 = !{!"sp"}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{i64 2151844721}
!155 = !{i8 0, i8 2}
!156 = !{!"auto-init"}
!157 = !{i64 2148709194, i64 2148709199, i64 2148709212, i64 2148709256, i64 2148709290, i64 2148709311}
!158 = !{i64 2149373848}
!159 = !{i64 2149374114}
