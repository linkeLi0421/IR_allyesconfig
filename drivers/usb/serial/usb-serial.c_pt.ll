; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/usb-serial.c_pt.bc'
source_filename = "../drivers/usb/serial/usb-serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usb_serial_claim_interface\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_serial_claim_interface\09\09\09\09"
module asm "\09.long\09__crc_usb_serial_claim_interface\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_serial_claim_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_serial_claim_interface\22\09\09\09\09\09"
module asm "__kstrtabns_usb_serial_claim_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_serial_port_softint\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_serial_port_softint\09\09\09\09"
module asm "\09.long\09__crc_usb_serial_port_softint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_serial_port_softint:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_serial_port_softint\22\09\09\09\09\09"
module asm "__kstrtabns_usb_serial_port_softint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+usb_serial_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_serial_suspend\09\09\09\09"
module asm "\09.long\09__crc_usb_serial_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_serial_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_serial_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_usb_serial_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+usb_serial_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_serial_resume\09\09\09\09"
module asm "\09.long\09__crc_usb_serial_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_serial_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_serial_resume\22\09\09\09\09\09"
module asm "__kstrtabns_usb_serial_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_serial_register_drivers\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_serial_register_drivers\09\09\09\09"
module asm "\09.long\09__crc_usb_serial_register_drivers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_serial_register_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_serial_register_drivers\22\09\09\09\09\09"
module asm "__kstrtabns_usb_serial_register_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_serial_deregister_drivers\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_serial_deregister_drivers\09\09\09\09"
module asm "\09.long\09__crc_usb_serial_deregister_drivers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_serial_deregister_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_serial_deregister_drivers\22\09\09\09\09\09"
module asm "__kstrtabns_usb_serial_deregister_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_serial_driver = type { ptr, ptr, %struct.list_head, %struct.device_driver, ptr, %struct.usb_dynids, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_serial_port = type { ptr, %struct.tty_port, %struct.spinlock, i32, i8, ptr, ptr, i8, ptr, i32, ptr, i8, ptr, i32, ptr, i8, [2 x ptr], [2 x ptr], i32, ptr, i32, ptr, %struct.kfifo, [2 x ptr], [2 x ptr], i32, i8, %struct.async_icount, i32, i32, %struct.work_struct, i32, %struct.device }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.kfifo = type { %union.anon.70, [0 x i8] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_serial_endpoints = type { i8, i8, i8, i8, [16 x ptr], [16 x ptr], [16 x ptr], [16 x ptr] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_dynid = type { %struct.list_head, %struct.usb_device_id }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }

@table_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @table_lock, i64 52), ptr getelementptr (i8, ptr @table_lock, i64 52) }, ptr @table_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@serial_minors = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@usb_serial_claim_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to claim sibling interface: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usb_serial_claim_interface\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/serial/usb-serial.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_serial_claim_interface._entry_ptr = internal global ptr @usb_serial_claim_interface._entry, section ".printk_index", align 4
@__kstrtab_usb_serial_claim_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_serial_claim_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_serial_claim_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_serial_claim_interface to i32), ptr @__kstrtab_usb_serial_claim_interface, ptr @__kstrtabns_usb_serial_claim_interface }, section "___ksymtab_gpl+usb_serial_claim_interface", align 4
@__kstrtab_usb_serial_port_softint = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_serial_port_softint = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_serial_port_softint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_serial_port_softint to i32), ptr @__kstrtab_usb_serial_port_softint, ptr @__kstrtabns_usb_serial_port_softint }, section "___ksymtab_gpl+usb_serial_port_softint", align 4
@__kstrtab_usb_serial_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_serial_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_serial_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_serial_suspend to i32), ptr @__kstrtab_usb_serial_suspend, ptr @__kstrtabns_usb_serial_suspend }, section "___ksymtab+usb_serial_suspend", align 4
@__kstrtab_usb_serial_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_serial_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_serial_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_serial_resume to i32), ptr @__kstrtab_usb_serial_resume, ptr @__kstrtabns_usb_serial_resume }, section "___ksymtab+usb_serial_resume", align 4
@usb_serial_tty_driver = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@usb_serial_bus_type = external dso_local global %struct.bus_type, align 4
@__initcall__kmod_usbserial__278_1388_usb_serial_init6 = internal global ptr @usb_serial_init, section ".initcall6.init", align 4
@__exitcall_usb_serial_exit = internal global ptr @usb_serial_exit, section ".exitcall.exit", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usbserial\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_usb_serial_register_drivers = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_serial_register_drivers = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_serial_register_drivers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_serial_register_drivers to i32), ptr @__kstrtab_usb_serial_register_drivers, ptr @__kstrtabns_usb_serial_register_drivers }, section "___ksymtab_gpl+usb_serial_register_drivers", align 4
@__kstrtab_usb_serial_deregister_drivers = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_serial_deregister_drivers = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_serial_deregister_drivers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_serial_deregister_drivers to i32), ptr @__kstrtab_usb_serial_deregister_drivers, ptr @__kstrtabns_usb_serial_deregister_drivers }, section "___ksymtab_gpl+usb_serial_deregister_drivers", align 4
@__UNIQUE_ID_author289 = internal constant [65 x i8] c"usbserial.author=Greg Kroah-Hartman <gregkh@linuxfoundation.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [45 x i8] c"usbserial.description=USB Serial Driver core\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [44 x i8] c"usbserial.file=drivers/usb/serial/usbserial\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"usbserial.license=GPL v2\00", section ".modinfo", align 1
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"table_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"table_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"serial_minors.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@usb_serial_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013usbserial: %s - registering bus driver failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_serial_init\00", [16 x i8] zeroinitializer }, align 32
@usb_serial_init._entry_ptr = internal global ptr @usb_serial_init._entry, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyUSB\00", [25 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@serial_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @serial_install, ptr null, ptr @serial_open, ptr @serial_close, ptr null, ptr @serial_cleanup, ptr @serial_write, ptr null, ptr null, ptr @serial_write_room, ptr @serial_chars_in_buffer, ptr @serial_ioctl, ptr null, ptr @serial_set_termios, ptr @serial_throttle, ptr @serial_unthrottle, ptr null, ptr null, ptr @serial_hangup, ptr @serial_break, ptr null, ptr null, ptr @serial_wait_until_sent, ptr null, ptr @serial_tiocmget, ptr @serial_tiocmset, ptr null, ptr @serial_get_icount, ptr @serial_get_serial, ptr @serial_set_serial, ptr null, ptr null, ptr null, ptr null, ptr @serial_proc_show }, [48 x i8] zeroinitializer }, align 32
@usb_serial_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013usbserial: %s - tty_register_driver failed\0A\00", [50 x i8] zeroinitializer }, align 32
@usb_serial_init._entry_ptr.14 = internal global ptr @usb_serial_init._entry.12, section ".printk_index", align 4
@usb_serial_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013usbserial: %s - registering generic driver failed\0A\00", [43 x i8] zeroinitializer }, align 32
@usb_serial_init._entry_ptr.17 = internal global ptr @usb_serial_init._entry.15, section ".printk_index", align 4
@usb_serial_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.2, i32 1369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013usbserial: %s - returning with error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@usb_serial_init._entry_ptr.20 = internal global ptr @usb_serial_init._entry.18, section ".printk_index", align 4
@serial_open.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"serial_open\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@serial_close.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.23, ptr @.str.2, ptr @.str.22, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"serial_close\00", [19 x i8] zeroinitializer }, align 32
@serial_cleanup.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.24, ptr @.str.2, ptr @.str.22, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serial_cleanup\00", [17 x i8] zeroinitializer }, align 32
@serial_write.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"serial_write\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - %d byte(s)\0A\00", [47 x i8] zeroinitializer }, align 32
@serial_write_room.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.27, ptr @.str.2, ptr @.str.22, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"serial_write_room\00", [46 x i8] zeroinitializer }, align 32
@serial_chars_in_buffer.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.28, ptr @.str.2, ptr @.str.22, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"serial_chars_in_buffer\00", [41 x i8] zeroinitializer }, align 32
@serial_ioctl.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"serial_ioctl\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - cmd 0x%04x\0A\00", [47 x i8] zeroinitializer }, align 32
@serial_set_termios.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.31, ptr @.str.2, ptr @.str.22, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"serial_set_termios\00", [45 x i8] zeroinitializer }, align 32
@serial_throttle.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.32, ptr @.str.2, ptr @.str.22, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"serial_throttle\00", [16 x i8] zeroinitializer }, align 32
@serial_unthrottle.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.33, ptr @.str.2, ptr @.str.22, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"serial_unthrottle\00", [46 x i8] zeroinitializer }, align 32
@serial_hangup.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.34, ptr @.str.2, ptr @.str.22, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_hangup\00", [18 x i8] zeroinitializer }, align 32
@serial_break.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.35, ptr @.str.2, ptr @.str.22, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"serial_break\00", [19 x i8] zeroinitializer }, align 32
@serial_wait_until_sent.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.36, ptr @.str.2, ptr @.str.22, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"serial_wait_until_sent\00", [41 x i8] zeroinitializer }, align 32
@serial_tiocmget.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.37, ptr @.str.2, ptr @.str.22, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"serial_tiocmget\00", [16 x i8] zeroinitializer }, align 32
@serial_tiocmset.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.38, ptr @.str.2, ptr @.str.22, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"serial_tiocmset\00", [16 x i8] zeroinitializer }, align 32
@serial_get_icount.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.2, ptr @.str.22, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"serial_get_icount\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usbserinfo:1.0 driver:2.0\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d:\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" module:%s\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" name:\22%s\22\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" vendor:%04x product:%04x\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" num_ports:%d\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" port:%d\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" path:%s\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usb_serial_probe.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 -12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_serial_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"none matched\0A\00", [18 x i8] zeroinitializer }, align 32
@usb_serial_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 985, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"module get failed, exiting\0A\00", [36 x i8] zeroinitializer }, align 32
@usb_serial_probe._entry_ptr = internal global ptr @usb_serial_probe._entry, section ".printk_index", align 4
@usb_serial_probe.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.50, ptr @.str.2, ptr @.str.53, i8 0, i8 -5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sub driver rejected device\0A\00", [36 x i8] zeroinitializer }, align 32
@usb_serial_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 1024, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"required endpoints missing\0A\00", [36 x i8] zeroinitializer }, align 32
@usb_serial_probe._entry_ptr.56 = internal global ptr @usb_serial_probe._entry.54, section ".printk_index", align 4
@usb_serial_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.2, i32 1040, ptr @.str.59, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"too many ports requested: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usb_serial_probe._entry_ptr.60 = internal global ptr @usb_serial_probe._entry.57, section ".printk_index", align 4
@usb_serial_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.50, ptr @.str.2, i32 1051, ptr @.str.63, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s converter detected\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@usb_serial_probe._entry_ptr.64 = internal global ptr @usb_serial_probe._entry.61, section ".printk_index", align 4
@usb_serial_probe.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.50, ptr @.str.2, ptr @.str.65, i8 1, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting up %d port structure(s)\0A\00", [63 x i8] zeroinitializer }, align 32
@serial_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr @serial_port_carrier_raised, ptr @serial_port_dtr_rts, ptr @serial_port_shutdown, ptr @serial_port_activate, ptr null }, [44 x i8] zeroinitializer }, align 32
@usb_serial_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@usb_serial_probe.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&port->work)\00", [33 x i8] zeroinitializer }, align 32
@usb_serial_port_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @usb_serial_port_group, ptr null], [24 x i8] zeroinitializer }, align 32
@usb_serial_probe.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.50, ptr @.str.2, ptr @.str.69, i8 1, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"The device claims to support interrupt in transfers, but read_int_callback is not defined\0A\00", [37 x i8] zeroinitializer }, align 32
@usb_serial_probe.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.50, ptr @.str.2, ptr @.str.70, i8 1, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"The device claims to support interrupt out transfers, but write_int_callback is not defined\0A\00", [35 x i8] zeroinitializer }, align 32
@usb_serial_probe._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.50, ptr @.str.2, i32 1141, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No more free serial minor numbers\0A\00", [61 x i8] zeroinitializer }, align 32
@usb_serial_probe._entry_ptr.73 = internal global ptr @usb_serial_probe._entry.71, section ".printk_index", align 4
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ttyUSB%d\00", [23 x i8] zeroinitializer }, align 32
@usb_serial_probe.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.50, ptr @.str.2, ptr @.str.75, i8 1, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"registering %s\0A\00", [16 x i8] zeroinitializer }, align 32
@usb_serial_probe._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.50, ptr @.str.2, i32 1154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error registering port device, continuing\0A\00", [53 x i8] zeroinitializer }, align 32
@usb_serial_probe._entry_ptr.78 = internal global ptr @usb_serial_probe._entry.76, section ".printk_index", align 4
@usb_serial_driver_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @usb_serial_driver_list, ptr @usb_serial_driver_list }, [24 x i8] zeroinitializer }, align 32
@create_serial.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&serial->disc_mutex\00", [44 x i8] zeroinitializer }, align 32
@get_iface_id.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_iface_id\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"static descriptor matches\0A\00", [37 x i8] zeroinitializer }, align 32
@get_iface_id.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.80, ptr @.str.2, ptr @.str.82, i8 0, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dynamic descriptor matches\0A\00", [36 x i8] zeroinitializer }, align 32
@store_endpoint.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"store_endpoint\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"found bulk in endpoint %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@store_endpoint.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.83, ptr @.str.2, ptr @.str.85, i8 0, i8 -53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"found bulk out endpoint %02x\0A\00", [34 x i8] zeroinitializer }, align 32
@store_endpoint.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.83, ptr @.str.2, ptr @.str.86, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"found interrupt in endpoint %02x\0A\00", [62 x i8] zeroinitializer }, align 32
@store_endpoint.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.83, ptr @.str.2, ptr @.str.87, i8 0, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"found interrupt out endpoint %02x\0A\00", [61 x i8] zeroinitializer }, align 32
@usb_serial_port_release.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.88, ptr @.str.2, ptr @.str.22, i8 0, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_serial_port_release\00", [40 x i8] zeroinitializer }, align 32
@usb_serial_port_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @usb_serial_port_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@usb_serial_port_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_port_number, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_port_number = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @port_number_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port_number\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@allocate_minors.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"allocate_minors\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %d\0A\00", [25 x i8] zeroinitializer }, align 32
@usb_serial_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1214, ptr @.str.63, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device disconnected\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_disconnect\00", [42 x i8] zeroinitializer }, align 32
@usb_serial_disconnect._entry_ptr = internal global ptr @usb_serial_disconnect._entry, section ".printk_index", align 4
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Serial driver %s has no usb_driver\0A\00", [60 x i8] zeroinitializer }, align 32
@usb_serial_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 1441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013usbserial: problem %d when registering driver %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb_serial_register\00", [44 x i8] zeroinitializer }, align 32
@usb_serial_register._entry_ptr = internal global ptr @usb_serial_register._entry, section ".printk_index", align 4
@usb_serial_register._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.2, i32 1444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016usbserial: USB Serial support registered for %s\0A\00", [45 x i8] zeroinitializer }, align 32
@usb_serial_register._entry_ptr.100 = internal global ptr @usb_serial_register._entry.98, section ".printk_index", align 4
@usb_serial_operations_init.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 1, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usb_serial_operations_init\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: using generic open\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"usbserial: %s: using generic open\0A\00", [61 x i8] zeroinitializer }, align 32
@usb_serial_operations_init.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.104, i8 1, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: using generic write\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"usbserial: %s: using generic write\0A\00", [60 x i8] zeroinitializer }, align 32
@usb_serial_operations_init.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.106, i8 1, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: using generic close\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"usbserial: %s: using generic close\0A\00", [60 x i8] zeroinitializer }, align 32
@usb_serial_operations_init.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.108, i8 1, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: using generic write_room\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"usbserial: %s: using generic write_room\0A\00", [55 x i8] zeroinitializer }, align 32
@usb_serial_operations_init.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.110, i8 1, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: using generic chars_in_buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"usbserial: %s: using generic chars_in_buffer\0A\00", [50 x i8] zeroinitializer }, align 32
@usb_serial_operations_init.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.112, i8 1, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: using generic wait_until_sent\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"usbserial: %s: using generic wait_until_sent\0A\00", [50 x i8] zeroinitializer }, align 32
@usb_serial_operations_init.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.114, i8 1, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: using generic read_bulk_callback\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"usbserial: %s: using generic read_bulk_callback\0A\00", [47 x i8] zeroinitializer }, align 32
@usb_serial_operations_init.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.116, i8 1, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: using generic write_bulk_callback\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"usbserial: %s: using generic write_bulk_callback\0A\00", [46 x i8] zeroinitializer }, align 32
@usb_serial_operations_init.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.118, i8 1, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: using generic process_read_urb\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"usbserial: %s: using generic process_read_urb\0A\00", [49 x i8] zeroinitializer }, align 32
@usb_serial_operations_init.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.120, i8 1, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: using generic prepare_write_buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"usbserial: %s: using generic prepare_write_buffer\0A\00", [45 x i8] zeroinitializer }, align 32
@usb_serial_deregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016usbserial: USB Serial deregistering driver %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_deregister\00", [42 x i8] zeroinitializer }, align 32
@usb_serial_deregister._entry_ptr = internal global ptr @usb_serial_deregister._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@___asan_gen_.126 = private unnamed_addr constant [11 x i8] c"table_lock\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [14 x i8] c"serial_minors\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 134, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [22 x i8] c"usb_serial_tty_driver\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1319, i32 20 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1511, i32 7 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 53, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 52, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1333, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1338, i32 32 }
@___asan_gen_.177 = private unnamed_addr constant [11 x i8] c"serial_ops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1295, i32 36 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1351, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1358, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1369, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 287, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 327, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 347, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 373, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 386, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 396, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 507, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 526, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 424, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 434, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 318, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 538, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 409, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 585, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 597, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 609, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 553, i32 14 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 560, i32 17 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 562, i32 18 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 564, i32 17 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 566, i32 17 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 569, i32 17 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 570, i32 17 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 572, i32 17 }
@___asan_gen_.280 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 912, i32 31 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 979, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 985, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1004, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1024, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1040, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1051, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1062, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [16 x i8] c"serial_port_ops\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 791, i32 41 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1072, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1075, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant [23 x i8] c"usb_serial_port_groups\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1107, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1118, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1141, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1148, i32 28 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1149, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1154, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant [23 x i8] c"usb_serial_driver_list\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 54, i32 8 }
@___asan_gen_.369 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 698, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 727, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 732, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 808, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 813, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 818, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 823, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 666, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [22 x i8] c"usb_serial_port_group\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 789, i32 1 }
@___asan_gen_.405 = private unnamed_addr constant [22 x i8] c"usb_serial_port_attrs\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 785, i32 26 }
@___asan_gen_.408 = private unnamed_addr constant [21 x i8] c"dev_attr_port_number\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 783, i32 8 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 781, i32 22 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 90, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1214, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1425, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1441, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1444, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1402, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1403, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1404, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1405, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1406, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1408, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1409, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1410, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1411, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1412, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.520 = private constant [35 x i8] c"../drivers/usb/serial/usb-serial.c\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1452, i32 2 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_usb_serial_exit, ptr @__initcall__kmod_usbserial__278_1388_usb_serial_init6, ptr @__ksymtab_usb_serial_claim_interface, ptr @__ksymtab_usb_serial_deregister_drivers, ptr @__ksymtab_usb_serial_port_softint, ptr @__ksymtab_usb_serial_register_drivers, ptr @__ksymtab_usb_serial_resume, ptr @__ksymtab_usb_serial_suspend, ptr @usb_serial_claim_interface._entry, ptr @usb_serial_claim_interface._entry_ptr, ptr @usb_serial_deregister._entry, ptr @usb_serial_deregister._entry_ptr, ptr @usb_serial_disconnect._entry, ptr @usb_serial_disconnect._entry_ptr, ptr @usb_serial_exit, ptr @usb_serial_init._entry, ptr @usb_serial_init._entry.12, ptr @usb_serial_init._entry.15, ptr @usb_serial_init._entry.18, ptr @usb_serial_init._entry_ptr, ptr @usb_serial_init._entry_ptr.14, ptr @usb_serial_init._entry_ptr.17, ptr @usb_serial_init._entry_ptr.20, ptr @usb_serial_probe._entry, ptr @usb_serial_probe._entry.54, ptr @usb_serial_probe._entry.57, ptr @usb_serial_probe._entry.61, ptr @usb_serial_probe._entry.71, ptr @usb_serial_probe._entry.76, ptr @usb_serial_probe._entry_ptr, ptr @usb_serial_probe._entry_ptr.56, ptr @usb_serial_probe._entry_ptr.60, ptr @usb_serial_probe._entry_ptr.64, ptr @usb_serial_probe._entry_ptr.73, ptr @usb_serial_probe._entry_ptr.78, ptr @usb_serial_register._entry, ptr @usb_serial_register._entry.98, ptr @usb_serial_register._entry_ptr, ptr @usb_serial_register._entry_ptr.100, ptr @table_lock, ptr @serial_minors, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @usb_serial_tty_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @serial_ops, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @serial_port_ops, ptr @usb_serial_probe.__key, ptr @.str.66, ptr @usb_serial_probe.__key.67, ptr @.str.68, ptr @usb_serial_port_groups, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @usb_serial_driver_list, ptr @create_serial.__key, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @usb_serial_port_group, ptr @usb_serial_port_attrs, ptr @dev_attr_port_number, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_minors to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_claim_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_tty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_probe.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_port_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_probe._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_probe._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_driver_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_serial.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_port_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_port_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_port_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_register._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_serial_deregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usb_serial_port_get_by_minor(i32 noundef %minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #11
  %call = tail call ptr @idr_find(ptr noundef nonnull @serial_minors, i32 noundef %minor) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  %disc_mutex = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #11
  %disconnected = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %disc_mutex) #11
  br label %exit

if.else:                                          ; preds = %if.end
  %kref = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !302
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !303

if.else.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !304

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.exit_crit_edge:                   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #11
  br label %exit

exit:                                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.exit_crit_edge, %if.then3, %entry.exit_crit_edge
  %port.0 = phi ptr [ null, %if.then3 ], [ null, %entry.exit_crit_edge ], [ %call, %if.else.i.i.i.i.exit_crit_edge ], [ %call, %if.end15.sink.split.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #11
  ret ptr %port.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_serial_claim_interface(ptr noundef %serial, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sibling = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 3
  %0 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sibling, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %usb_driver = getelementptr inbounds %struct.usb_serial_driver, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %usb_driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_driver, align 4
  %call = tail call i32 @usb_driver_claim_interface(ptr noundef %5, ptr noundef %intf, ptr noundef %serial) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %6 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call) #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %intf, ptr %sibling, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end3 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_serial_put(ptr noundef %serial) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !306
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !304

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !307
  %minors_reserved.i.i = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 5
  %1 = ptrtoint ptr %minors_reserved.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i.i = load i8, ptr %minors_reserved.i.i, align 4
  %2 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #11
  %num_ports.i.i.i = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 6
  %3 = ptrtoint ptr %num_ports.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_ports.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp7.not.i.i.i = icmp eq i8 %4, 0
  br i1 %cmp7.not.i.i.i, label %if.then.i.i.release_minors.exit.i.i_crit_edge, label %if.then.i.i.for.body.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

if.then.i.i.release_minors.exit.i.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_minors.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %i.08.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 %i.08.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i.i, align 4
  %minor.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %minor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %minor.i.i.i, align 8
  %call.i.i.i = tail call ptr @idr_remove(ptr noundef nonnull @serial_minors, i32 noundef %8) #11
  %inc.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %9 = ptrtoint ptr %num_ports.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_ports.i.i.i, align 1
  %conv.i.i.i = zext i8 %10 to i32
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %conv.i.i.i
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.release_minors.exit.i.i_crit_edge

for.body.i.i.i.release_minors.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_minors.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

release_minors.exit.i.i:                          ; preds = %for.body.i.i.i.release_minors.exit.i.i_crit_edge, %if.then.i.i.release_minors.exit.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #11
  %11 = ptrtoint ptr %minors_reserved.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i.i = load i8, ptr %minors_reserved.i.i, align 4
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, -33
  store i8 %bf.clear.i.i.i, ptr %minors_reserved.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %release_minors.exit.i.i, %if.then.i.if.end.i.i_crit_edge
  %12 = ptrtoint ptr %minors_reserved.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load1.i.i = load i8, ptr %minors_reserved.i.i, align 4
  %13 = and i8 %bf.load1.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %type.i.i = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 1
  %14 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.usb_serial_driver, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %release.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %17, null
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.if.end9.i.i_crit_edge, label %if.then6.i.i

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.then6.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %17(ptr noundef %serial) #11
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then6.i.i, %land.lhs.true.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  %num_port_pointers.i.i = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 7
  %18 = ptrtoint ptr %num_port_pointers.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_port_pointers.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp34.not.i.i = icmp eq i8 %19, 0
  br i1 %cmp34.not.i.i, label %if.end9.i.i.destroy_serial.exit.i_crit_edge, label %if.end9.i.i.for.body.i.i_crit_edge

if.end9.i.i.for.body.i.i_crit_edge:               ; preds = %if.end9.i.i
  br label %for.body.i.i

if.end9.i.i.destroy_serial.exit.i_crit_edge:      ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_serial.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end9.i.i.for.body.i.i_crit_edge
  %i.035.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end9.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 %i.035.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %21, null
  br i1 %tobool13.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then14.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then14.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %21, align 8
  %dev.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %21, i32 0, i32 32
  tail call void @put_device(ptr noundef %dev.i.i) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then14.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.035.i.i, 1
  %23 = ptrtoint ptr %num_port_pointers.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_port_pointers.i.i, align 2
  %conv10.i.i = zext i8 %24 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv10.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.destroy_serial.exit.i_crit_edge

for.inc.i.i.destroy_serial.exit.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_serial.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

destroy_serial.exit.i:                            ; preds = %for.inc.i.i.destroy_serial.exit.i_crit_edge, %if.end9.i.i.destroy_serial.exit.i_crit_edge
  %interface.i.i = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 2
  %25 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %interface.i.i, align 4
  tail call void @usb_put_intf(ptr noundef %26) #11
  %27 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %serial, align 4
  tail call void @usb_put_dev(ptr noundef %28) #11
  tail call void @kfree(ptr noundef %serial) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %destroy_serial.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_serial_port_softint(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_serial_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %suspend_count = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %suspend_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suspend_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %suspend_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %suspend = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %if.then2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then2:                                         ; preds = %if.end
  %call6 = tail call i32 %7(ptr noundef %1, [1 x i32] %message.coerce) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.then2.if.end10_crit_edge

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %suspend_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %suspend_count, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %suspend_count, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.then2.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1126.not = icmp eq i8 %11, 0
  br i1 %cmp1126.not, label %if.end10.cleanup_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.027 = phi i32 [ %inc13, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_serial, ptr %1, i32 0, i32 12, i32 %i.027
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %arrayidx.i = getelementptr %struct.usb_serial_port, ptr %13, i32 0, i32 17, i32 0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_poison_urb(ptr noundef %15) #11
  %arrayidx.1.i = getelementptr %struct.usb_serial_port, ptr %13, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @usb_poison_urb(ptr noundef %17) #11
  %arrayidx4.i = getelementptr %struct.usb_serial_port, ptr %13, i32 0, i32 24, i32 0
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx4.i, align 4
  tail call void @usb_poison_urb(ptr noundef %19) #11
  %arrayidx4.1.i = getelementptr %struct.usb_serial_port, ptr %13, i32 0, i32 24, i32 1
  %20 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx4.1.i, align 4
  tail call void @usb_poison_urb(ptr noundef %21) #11
  %interrupt_in_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %13, i32 0, i32 6
  %22 = ptrtoint ptr %interrupt_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %interrupt_in_urb.i, align 4
  tail call void @usb_poison_urb(ptr noundef %23) #11
  %interrupt_out_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %13, i32 0, i32 10
  %24 = ptrtoint ptr %interrupt_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %interrupt_out_urb.i, align 4
  tail call void @usb_poison_urb(ptr noundef %25) #11
  %inc13 = add nuw nsw i32 %i.027, 1
  %26 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_ports, align 1
  %conv = zext i8 %27 to i32
  %cmp11 = icmp ult i32 %inc13, %conv
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then7 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_serial_resume(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %suspend_count = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %suspend_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suspend_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %suspend_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @usb_serial_unpoison_port_urbs(ptr noundef %1)
  %type = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %resume = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resume, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 %7(ptr noundef %1) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @usb_serial_generic_resume(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call5, %if.then2 ], [ %call6, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_serial_unpoison_port_urbs(ptr nocapture noundef readonly %serial) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 6
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp6.not = icmp eq i8 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx.i = getelementptr %struct.usb_serial_port, ptr %3, i32 0, i32 17, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %5) #11
  %arrayidx.1.i = getelementptr %struct.usb_serial_port, ptr %3, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %7) #11
  %arrayidx4.i = getelementptr %struct.usb_serial_port, ptr %3, i32 0, i32 24, i32 0
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %9) #11
  %arrayidx4.1.i = getelementptr %struct.usb_serial_port, ptr %3, i32 0, i32 24, i32 1
  %10 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4.1.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %11) #11
  %interrupt_in_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %interrupt_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interrupt_in_urb.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %13) #11
  %interrupt_out_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %interrupt_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interrupt_out_urb.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %15) #11
  %inc = add nuw nsw i32 %i.07, 1
  %16 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_ports, align 1
  %conv = zext i8 %17 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_serial_console_exit() #11
  tail call void @usb_serial_generic_deregister() #11
  %0 = load ptr, ptr @usb_serial_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #11
  %1 = load ptr, ptr @usb_serial_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #11
  tail call void @bus_unregister(ptr noundef nonnull @usb_serial_bus_type) #11
  tail call void @idr_destroy(ptr noundef nonnull @serial_minors) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_console_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_deregister() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__tty_alloc_driver(i32 noundef 512, ptr noundef null, i32 noundef 12) #11
  store ptr %call, ptr @usb_serial_tty_driver, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @bus_register(ptr noundef nonnull @usb_serial_bus_type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #14
  br label %do.end29

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @usb_serial_tty_driver, align 4
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.5, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.11, ptr %name, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 188, ptr %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 12
  %8 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 36)
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3261, ptr %c_cflag, align 4
  %c_ispeed = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 12, i32 6
  %10 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 9600, ptr %c_ispeed, align 4
  %c_ospeed = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 12, i32 7
  %11 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 9600, ptr %c_ospeed, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @serial_ops, ptr %ops.i, align 4
  %call10 = tail call i32 @tty_register_driver(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10) #14
  br label %err_unregister_bus

if.end18:                                         ; preds = %if.end6
  %call19 = tail call i32 @usb_serial_generic_register() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10) #14
  %13 = load ptr, ptr @usb_serial_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %13) #11
  br label %err_unregister_bus

err_unregister_bus:                               ; preds = %do.end23, %do.end15
  %result.0 = phi i32 [ %call10, %do.end15 ], [ %call19, %do.end23 ]
  tail call void @bus_unregister(ptr noundef nonnull @usb_serial_bus_type) #11
  br label %do.end29

do.end29:                                         ; preds = %err_unregister_bus, %do.end
  %result.1 = phi i32 [ %call3, %do.end ], [ %result.0, %err_unregister_bus ]
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.10, i32 noundef %result.1) #14
  %14 = load ptr, ptr @usb_serial_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %14) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end18.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %result.1, %do.end29 ], [ %call19, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_serial_register_drivers(ptr noundef readonly %serial_drivers, ptr noundef %name, ptr noundef %id_table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 180) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %call7.i.i, align 8
  %no_dynamic_id = getelementptr inbounds %struct.usb_driver, ptr %call7.i.i, i32 0, i32 13
  %2 = ptrtoint ptr %no_dynamic_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %no_dynamic_id, align 8
  %bf.set4 = or i8 %bf.load, -64
  store i8 %bf.set4, ptr %no_dynamic_id, align 8
  %suspend = getelementptr inbounds %struct.usb_driver, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @usb_serial_suspend, ptr %suspend, align 8
  %resume = getelementptr inbounds %struct.usb_driver, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @usb_serial_resume, ptr %resume, align 4
  %probe = getelementptr inbounds %struct.usb_driver, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @usb_serial_probe, ptr %probe, align 4
  %disconnect = getelementptr inbounds %struct.usb_driver, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @usb_serial_disconnect, ptr %disconnect, align 8
  %7 = ptrtoint ptr %serial_drivers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial_drivers, align 4
  %tobool5.not65 = icmp eq ptr %8, null
  br i1 %tobool5.not65, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr ptr, ptr %sd.066, i32 1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %incdec.ptr, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %11 = phi ptr [ %10, %for.cond.for.body_crit_edge ], [ %8, %if.end.for.body_crit_edge ]
  %sd.066 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %serial_drivers, %if.end.for.body_crit_edge ]
  %reset_resume = getelementptr inbounds %struct.usb_serial_driver, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %reset_resume to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_resume, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %for.cond, label %if.then7

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %reset_resume8 = getelementptr inbounds %struct.usb_driver, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %reset_resume8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @usb_serial_reset_resume, ptr %reset_resume8, align 8
  br label %for.end

for.end:                                          ; preds = %if.then7, %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %call10 = tail call i32 @usb_register_driver(ptr noundef nonnull %call7.i.i, ptr noundef null, ptr noundef nonnull @.str.5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.cond14.preheader, label %for.end.err_free_driver_crit_edge

for.end.err_free_driver_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_driver

for.cond14.preheader:                             ; preds = %for.end
  %15 = ptrtoint ptr %serial_drivers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial_drivers, align 4
  %tobool15.not67 = icmp eq ptr %16, null
  br i1 %tobool15.not67, label %for.cond14.preheader.for.end23_crit_edge, label %for.cond14.preheader.for.body16_crit_edge

for.cond14.preheader.for.body16_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body16

for.cond14.preheader.for.end23_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end23

for.body16:                                       ; preds = %for.inc21.for.body16_crit_edge, %for.cond14.preheader.for.body16_crit_edge
  %17 = phi ptr [ %46, %for.inc21.for.body16_crit_edge ], [ %16, %for.cond14.preheader.for.body16_crit_edge ]
  %sd.168 = phi ptr [ %incdec.ptr22, %for.inc21.for.body16_crit_edge ], [ %serial_drivers, %for.cond14.preheader.for.body16_crit_edge ]
  %usb_driver = getelementptr inbounds %struct.usb_serial_driver, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %usb_driver to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %usb_driver, align 4
  %19 = ptrtoint ptr %sd.168 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd.168, align 4
  %call.i = tail call i32 @usb_disabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body16.while.cond.preheader_crit_edge

for.body16.while.cond.preheader_crit_edge:        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

if.end.i:                                         ; preds = %for.body16
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool2.not.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %driver4.i = getelementptr inbounds %struct.usb_serial_driver, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %driver4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver4.i, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %20, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %usb_driver.i = getelementptr inbounds %struct.usb_serial_driver, ptr %20, i32 0, i32 4
  %26 = ptrtoint ptr %usb_driver.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_driver.i, align 4
  %tobool7.not.i = icmp eq ptr %27, null
  br i1 %tobool7.not.i, label %do.end.i, label %if.end27.i

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %20, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1426, i32 noundef 9, ptr noundef nonnull @.str.95, ptr noundef %29) #11
  br label %while.cond.preheader

if.end27.i:                                       ; preds = %if.end6.i
  %suppress_bind_attrs.i = getelementptr inbounds %struct.usb_serial_driver, ptr %20, i32 0, i32 3, i32 4
  %30 = ptrtoint ptr %suppress_bind_attrs.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %suppress_bind_attrs.i, align 4
  tail call fastcc void @usb_serial_operations_init(ptr noundef %20) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #11
  %driver_list.i = getelementptr inbounds %struct.usb_serial_driver, ptr %20, i32 0, i32 2
  %31 = load ptr, ptr @usb_serial_driver_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %driver_list.i, ptr noundef nonnull @usb_serial_driver_list, ptr noundef %31) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end27.i.list_add.exit.i_crit_edge

if.end27.i.list_add.exit.i_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %driver_list.i, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %driver_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %driver_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.usb_serial_driver, ptr %20, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @usb_serial_driver_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %driver_list.i, ptr @usb_serial_driver_list, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end27.i.list_add.exit.i_crit_edge
  %call29.i = tail call i32 @usb_serial_bus_register(ptr noundef %20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  %35 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %20, align 4
  br i1 %tobool30.not.i, label %for.inc21, label %do.end34.i

do.end34.i:                                       ; preds = %list_add.exit.i
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %call29.i, ptr noundef %36) #14
  %call.i.i60.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %driver_list.i) #11
  br i1 %call.i.i60.i, label %if.end.i.i61.i, label %do.end34.i.usb_serial_register.exit_crit_edge

do.end34.i.usb_serial_register.exit_crit_edge:    ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_serial_register.exit

if.end.i.i61.i:                                   ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.usb_serial_driver, ptr %20, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %driver_list.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %usb_serial_register.exit

usb_serial_register.exit:                         ; preds = %if.end.i.i61.i, %do.end34.i.usb_serial_register.exit_crit_edge
  %43 = ptrtoint ptr %driver_list.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %driver_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.usb_serial_driver, ptr %20, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #11
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %usb_serial_register.exit, %do.end.i, %for.body16.while.cond.preheader_crit_edge
  %retval.0.i75 = phi i32 [ %call29.i, %usb_serial_register.exit ], [ -22, %do.end.i ], [ -19, %for.body16.while.cond.preheader_crit_edge ]
  %cmp69 = icmp ugt ptr %sd.168, %serial_drivers
  br i1 %cmp69, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.inc21:                                        ; preds = %list_add.exit.i
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %36) #14
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #11
  %incdec.ptr22 = getelementptr ptr, ptr %sd.168, i32 1
  %45 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %incdec.ptr22, align 4
  %tobool15.not = icmp eq ptr %46, null
  br i1 %tobool15.not, label %for.inc21.for.end23_crit_edge, label %for.inc21.for.body16_crit_edge

for.inc21.for.body16_crit_edge:                   ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body16

for.inc21.for.end23_crit_edge:                    ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end23

for.end23:                                        ; preds = %for.inc21.for.end23_crit_edge, %for.cond14.preheader.for.end23_crit_edge
  %id_table24 = getelementptr inbounds %struct.usb_driver, ptr %call7.i.i, i32 0, i32 9
  %47 = ptrtoint ptr %id_table24 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %id_table, ptr %id_table24, align 4
  %drvwrap = getelementptr inbounds %struct.usb_driver, ptr %call7.i.i, i32 0, i32 12
  %call25 = tail call i32 @driver_attach(ptr noundef %drvwrap) #11
  br label %cleanup

while.body:                                       ; preds = %usb_serial_deregister.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %sd.270 = phi ptr [ %incdec.ptr26, %usb_serial_deregister.exit.while.body_crit_edge ], [ %sd.168, %while.cond.preheader.while.body_crit_edge ]
  %incdec.ptr26 = getelementptr ptr, ptr %sd.270, i32 -1
  %48 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %incdec.ptr26, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %51) #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #11
  %driver_list.i57 = getelementptr inbounds %struct.usb_serial_driver, ptr %49, i32 0, i32 2
  %call.i.i.i58 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %driver_list.i57) #11
  br i1 %call.i.i.i58, label %if.end.i.i.i61, label %while.body.usb_serial_deregister.exit_crit_edge

while.body.usb_serial_deregister.exit_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_serial_deregister.exit

if.end.i.i.i61:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i59 = getelementptr inbounds %struct.usb_serial_driver, ptr %49, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %prev.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i59, align 4
  %54 = ptrtoint ptr %driver_list.i57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_list.i57, align 4
  %prev1.i.i.i.i60 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i.i60, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %usb_serial_deregister.exit

usb_serial_deregister.exit:                       ; preds = %if.end.i.i.i61, %while.body.usb_serial_deregister.exit_crit_edge
  %58 = ptrtoint ptr %driver_list.i57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %driver_list.i57, align 4
  %prev.i.i62 = getelementptr inbounds %struct.usb_serial_driver, ptr %49, i32 0, i32 2, i32 1
  %59 = ptrtoint ptr %prev.i.i62 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i62, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #11
  tail call void @usb_serial_bus_deregister(ptr noundef %49) #11
  %cmp = icmp ugt ptr %incdec.ptr26, %serial_drivers
  br i1 %cmp, label %usb_serial_deregister.exit.while.body_crit_edge, label %usb_serial_deregister.exit.while.end_crit_edge

usb_serial_deregister.exit.while.end_crit_edge:   ; preds = %usb_serial_deregister.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

usb_serial_deregister.exit.while.body_crit_edge:  ; preds = %usb_serial_deregister.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %usb_serial_deregister.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @usb_deregister(ptr noundef nonnull %call7.i.i) #11
  br label %err_free_driver

err_free_driver:                                  ; preds = %while.end, %for.end.err_free_driver_crit_edge
  %rc.0 = phi i32 [ %call10, %for.end.err_free_driver_crit_edge ], [ %retval.0.i75, %while.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_driver, %for.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err_free_driver ], [ 0, %for.end23 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #11
  %driver1.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 6
  %2 = ptrtoint ptr %driver1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver1.i, align 4
  %add.ptr.i591 = getelementptr i8, ptr %3, i32 -96
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @usb_serial_driver_list, %entry ], [ %.pn.i, %if.end.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %drv.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %cmp.not.i = icmp eq ptr %.pn.i, @usb_serial_driver_list
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %usb_driver.i = getelementptr i8, ptr %.pn.i, i32 84
  %5 = ptrtoint ptr %usb_driver.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_driver.i, align 4
  %cmp5.i = icmp eq ptr %6, %add.ptr.i591
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call fastcc ptr @get_iface_id(ptr noundef %drv.0.i, ptr noundef %interface) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %id.1.i = phi ptr [ %call.i, %if.then.i ], [ null, %for.body.i.if.end.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %id.1.i, null
  br i1 %tobool.not.i, label %if.end.i.for.cond.i_crit_edge, label %search_serial_device.exit

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

search_serial_device.exit:                        ; preds = %if.end.i
  %tobool.not = icmp eq ptr %drv.0.i, null
  br i1 %tobool.not, label %search_serial_device.exit.if.then_crit_edge, label %if.end9

search_serial_device.exit.if.then_crit_edge:      ; preds = %search_serial_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %search_serial_device.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_probe.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_probe, %if.then8)) #11
          to label %cleanup398 [label %if.then8], !srcloc !308

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_probe.__UNIQUE_ID_ddebug264, ptr noundef %dev, ptr noundef nonnull @.str.51) #11
  br label %cleanup398

if.end9:                                          ; preds = %search_serial_device.exit
  %owner = getelementptr i8, ptr %.pn.i, i32 16
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner, align 4
  %call10 = tail call zeroext i1 @try_module_get(ptr noundef %8) #11
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #11
  br i1 %call10, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #14
  br label %cleanup398

if.end15:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 192) #15
  %tobool.not.i593 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i593, label %if.end15.err_put_module_crit_edge, label %if.end19

if.end15.err_put_module_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_module

if.end19:                                         ; preds = %if.end15
  %call1.i = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #11
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.i, ptr %call7.i.i.i, align 8
  %type.i = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %drv.0.i, ptr %type.i, align 4
  %call3.i = tail call ptr @usb_get_intf(ptr noundef %interface) #11
  %interface4.i = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %interface4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call3.i, ptr %interface4.i, align 8
  %kref.i = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #11
  %13 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %kref.i, align 4
  %disc_mutex.i = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %disc_mutex.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @create_serial.__key) #11
  %minors_reserved.i = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %minors_reserved.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %minors_reserved.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %minors_reserved.i, align 4
  %probe = getelementptr i8, ptr %.pn.i, i32 156
  %15 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %probe, align 4
  %tobool20.not = icmp eq ptr %16, null
  br i1 %tobool20.not, label %if.end19.if.end45_crit_edge, label %if.then21

if.end19.if.end45_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then21:                                        ; preds = %if.end19
  %call23 = tail call fastcc ptr @get_iface_id(ptr noundef nonnull %drv.0.i, ptr noundef %interface)
  %17 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %probe, align 4
  %call25 = tail call i32 %18(ptr noundef nonnull %call7.i.i.i, ptr noundef %call23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then21.if.end45_crit_edge, label %do.body28

if.then21.if.end45_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

do.body28:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_probe.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_probe, %if.then40)) #11
          to label %err_release_sibling [label %if.then40], !srcloc !308

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_probe.__UNIQUE_ID_ddebug265, ptr noundef %dev, ptr noundef nonnull @.str.53) #11
  br label %err_release_sibling

if.end45:                                         ; preds = %if.then21.if.end45_crit_edge, %if.end19.if.end45_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 260) #15
  %tobool47.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool47.not, label %if.end45.err_release_sibling_crit_edge, label %if.end49

if.end45.err_release_sibling_crit_edge:           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_release_sibling

if.end49:                                         ; preds = %if.end45
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %20 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp7.not.i = icmp eq i8 %23, 0
  br i1 %cmp7.not.i, label %if.end49.find_endpoints.exit_crit_edge, label %for.body.lr.ph.i

if.end49.find_endpoints.exit_crit_edge:           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_endpoints.exit

for.body.lr.ph.i:                                 ; preds = %if.end49
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %21, i32 0, i32 3
  br label %for.body.i595

for.body.i595:                                    ; preds = %for.body.i595.for.body.i595_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i595.for.body.i595_crit_edge ]
  %24 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %endpoint.i, align 4
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %25, i32 %i.08.i
  tail call fastcc void @store_endpoint(ptr noundef %call7.i.i.i, ptr noundef nonnull %call7.i.i, ptr noundef %arrayidx.i) #11
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %26 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bNumEndpoints.i, align 4
  %conv.i = zext i8 %27 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i595.for.body.i595_crit_edge, label %for.body.i595.find_endpoints.exit_crit_edge

for.body.i595.find_endpoints.exit_crit_edge:      ; preds = %for.body.i595
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_endpoints.exit

for.body.i595.for.body.i595_crit_edge:            ; preds = %for.body.i595
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i595

find_endpoints.exit:                              ; preds = %for.body.i595.find_endpoints.exit_crit_edge, %if.end49.find_endpoints.exit_crit_edge
  %sibling = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sibling, align 4
  %tobool50.not = icmp eq ptr %29, null
  br i1 %tobool50.not, label %find_endpoints.exit.if.end53_crit_edge, label %if.then51

find_endpoints.exit.if.end53_crit_edge:           ; preds = %find_endpoints.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then51:                                        ; preds = %find_endpoints.exit
  %cur_altsetting.i596 = getelementptr inbounds %struct.usb_interface, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %cur_altsetting.i596 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cur_altsetting.i596, align 4
  %bNumEndpoints.i597 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %bNumEndpoints.i597 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bNumEndpoints.i597, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp7.not.i598 = icmp eq i8 %33, 0
  br i1 %cmp7.not.i598, label %if.then51.if.end53_crit_edge, label %for.body.lr.ph.i600

if.then51.if.end53_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

for.body.lr.ph.i600:                              ; preds = %if.then51
  %endpoint.i599 = getelementptr inbounds %struct.usb_host_interface, ptr %31, i32 0, i32 3
  br label %for.body.i606

for.body.i606:                                    ; preds = %for.body.i606.for.body.i606_crit_edge, %for.body.lr.ph.i600
  %i.08.i601 = phi i32 [ 0, %for.body.lr.ph.i600 ], [ %inc.i603, %for.body.i606.for.body.i606_crit_edge ]
  %34 = ptrtoint ptr %endpoint.i599 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %endpoint.i599, align 4
  %arrayidx.i602 = getelementptr %struct.usb_host_endpoint, ptr %35, i32 %i.08.i601
  tail call fastcc void @store_endpoint(ptr noundef %call7.i.i.i, ptr noundef nonnull %call7.i.i, ptr noundef %arrayidx.i602) #11
  %inc.i603 = add nuw nsw i32 %i.08.i601, 1
  %36 = ptrtoint ptr %bNumEndpoints.i597 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bNumEndpoints.i597, align 4
  %conv.i604 = zext i8 %37 to i32
  %cmp.i605 = icmp ult i32 %inc.i603, %conv.i604
  br i1 %cmp.i605, label %for.body.i606.for.body.i606_crit_edge, label %for.body.i606.if.end53_crit_edge

for.body.i606.if.end53_crit_edge:                 ; preds = %for.body.i606
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

for.body.i606.for.body.i606_crit_edge:            ; preds = %for.body.i606
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i606

if.end53:                                         ; preds = %for.body.i606.if.end53_crit_edge, %if.then51.if.end53_crit_edge, %find_endpoints.exit.if.end53_crit_edge
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %call7.i.i, align 8
  %num_bulk_in54 = getelementptr i8, ptr %.pn.i, i32 141
  %40 = ptrtoint ptr %num_bulk_in54 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_bulk_in54, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp = icmp ult i8 %39, %41
  br i1 %cmp, label %if.end53.err_free_epds.sink.split_crit_edge, label %lor.lhs.false

if.end53.err_free_epds.sink.split_crit_edge:      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds.sink.split

lor.lhs.false:                                    ; preds = %if.end53
  %num_bulk_out = getelementptr inbounds %struct.usb_serial_endpoints, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %num_bulk_out to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_bulk_out, align 1
  %num_bulk_out58 = getelementptr i8, ptr %.pn.i, i32 142
  %44 = ptrtoint ptr %num_bulk_out58 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %num_bulk_out58, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp60 = icmp ult i8 %43, %45
  br i1 %cmp60, label %lor.lhs.false.err_free_epds.sink.split_crit_edge, label %lor.lhs.false62

lor.lhs.false.err_free_epds.sink.split_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds.sink.split

lor.lhs.false62:                                  ; preds = %lor.lhs.false
  %num_interrupt_in = getelementptr inbounds %struct.usb_serial_endpoints, ptr %call7.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %num_interrupt_in to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num_interrupt_in, align 2
  %num_interrupt_in64 = getelementptr i8, ptr %.pn.i, i32 143
  %48 = ptrtoint ptr %num_interrupt_in64 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_interrupt_in64, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %49)
  %cmp66 = icmp ult i8 %47, %49
  br i1 %cmp66, label %lor.lhs.false62.err_free_epds.sink.split_crit_edge, label %lor.lhs.false68

lor.lhs.false62.err_free_epds.sink.split_crit_edge: ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds.sink.split

lor.lhs.false68:                                  ; preds = %lor.lhs.false62
  %num_interrupt_out = getelementptr inbounds %struct.usb_serial_endpoints, ptr %call7.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %num_interrupt_out to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %num_interrupt_out, align 1
  %num_interrupt_out70 = getelementptr i8, ptr %.pn.i, i32 144
  %52 = ptrtoint ptr %num_interrupt_out70 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %num_interrupt_out70, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %53)
  %cmp72 = icmp ult i8 %51, %53
  br i1 %cmp72, label %lor.lhs.false68.err_free_epds.sink.split_crit_edge, label %if.end78

lor.lhs.false68.err_free_epds.sink.split_crit_edge: ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds.sink.split

if.end78:                                         ; preds = %lor.lhs.false68
  %calc_num_ports = getelementptr i8, ptr %.pn.i, i32 164
  %54 = ptrtoint ptr %calc_num_ports to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %calc_num_ports, align 4
  %tobool79.not = icmp eq ptr %55, null
  br i1 %tobool79.not, label %if.end78.if.then89_crit_edge, label %if.then80

if.end78.if.then89_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then89

if.then80:                                        ; preds = %if.end78
  %call82 = tail call i32 %55(ptr noundef %call7.i.i.i, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then80.err_free_epds_crit_edge, label %if.end87

if.then80.err_free_epds_crit_edge:                ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

if.end87:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool88.not = icmp eq i32 %call82, 0
  br i1 %tobool88.not, label %if.end87.if.then89_crit_edge, label %if.end87.if.end92_crit_edge

if.end87.if.end92_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.end87.if.then89_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then89

if.then89:                                        ; preds = %if.end87.if.then89_crit_edge, %if.end78.if.then89_crit_edge
  %num_ports90 = getelementptr i8, ptr %.pn.i, i32 140
  %56 = ptrtoint ptr %num_ports90 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %num_ports90, align 4
  %conv91 = zext i8 %57 to i32
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.end87.if.end92_crit_edge
  %num_ports.1 = phi i32 [ %call82, %if.end87.if.end92_crit_edge ], [ %conv91, %if.then89 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %num_ports.1)
  %cmp93 = icmp ugt i32 %num_ports.1, 16
  br i1 %cmp93, label %do.end98, label %if.end92.if.end99_crit_edge

if.end92.if.end99_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

do.end98:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %num_ports.1) #14
  br label %if.end99

if.end99:                                         ; preds = %do.end98, %if.end92.if.end99_crit_edge
  %num_ports.2 = phi i32 [ 16, %do.end98 ], [ %num_ports.1, %if.end92.if.end99_crit_edge ]
  %conv100 = trunc i32 %num_ports.2 to i8
  %num_ports101 = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %num_ports101 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv100, ptr %num_ports101, align 1
  %59 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %call7.i.i, align 8
  %num_bulk_in103 = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 10
  %61 = ptrtoint ptr %num_bulk_in103 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %num_bulk_in103, align 1
  %62 = ptrtoint ptr %num_bulk_out to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %num_bulk_out, align 1
  %num_bulk_out105 = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 11
  %64 = ptrtoint ptr %num_bulk_out105 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %num_bulk_out105, align 2
  %65 = ptrtoint ptr %num_interrupt_in to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %num_interrupt_in, align 2
  %num_interrupt_in107 = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 8
  %67 = ptrtoint ptr %num_interrupt_in107 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %num_interrupt_in107, align 1
  %68 = ptrtoint ptr %num_interrupt_out to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_interrupt_out, align 1
  %num_interrupt_out109 = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 9
  %70 = ptrtoint ptr %num_interrupt_out109 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %num_interrupt_out109, align 8
  %71 = ptrtoint ptr %drv.0.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %drv.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef %72) #14
  %73 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %call7.i.i, align 8
  %75 = ptrtoint ptr %num_bulk_out to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num_bulk_out, align 1
  %77 = tail call i8 @llvm.umax.i8(i8 %74, i8 %76)
  %78 = ptrtoint ptr %num_interrupt_in to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %num_interrupt_in, align 2
  %80 = tail call i8 @llvm.umax.i8(i8 %77, i8 %79)
  %81 = ptrtoint ptr %num_interrupt_out to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_interrupt_out, align 1
  %83 = tail call i8 @llvm.umax.i8(i8 %80, i8 %82)
  %84 = ptrtoint ptr %num_ports101 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %num_ports101, align 1
  %86 = tail call i8 @llvm.umax.i8(i8 %83, i8 %85)
  %num_port_pointers = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 7
  %87 = ptrtoint ptr %num_port_pointers to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %num_port_pointers, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_probe.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_probe, %if.then174)) #11
          to label %do.end178 [label %if.then174], !srcloc !308

if.then174:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %conv175 = zext i8 %86 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_probe.__UNIQUE_ID_ddebug274, ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %conv175) #11
  br label %do.end178

do.end178:                                        ; preds = %if.then174, %if.end99
  %conv179 = zext i8 %86 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp180725.not = icmp eq i8 %86, 0
  br i1 %cmp180725.not, label %do.end178.for.cond210.preheader_crit_edge, label %do.end178.for.body_crit_edge

do.end178.for.body_crit_edge:                     ; preds = %do.end178
  br label %for.body

do.end178.for.cond210.preheader_crit_edge:        ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond210.preheader

for.cond210.preheader:                            ; preds = %if.end185.for.cond210.preheader_crit_edge, %do.end178.for.cond210.preheader_crit_edge
  %88 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp213728.not = icmp eq i8 %89, 0
  br i1 %cmp213728.not, label %for.cond210.preheader.for.cond226.preheader_crit_edge, label %for.cond210.preheader.for.body215_crit_edge

for.cond210.preheader.for.body215_crit_edge:      ; preds = %for.cond210.preheader
  br label %for.body215

for.cond210.preheader.for.cond226.preheader_crit_edge: ; preds = %for.cond210.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond226.preheader

for.body:                                         ; preds = %if.end185.for.body_crit_edge, %do.end178.for.body_crit_edge
  %i.0726 = phi i32 [ %inc, %if.end185.for.body_crit_edge ], [ 0, %do.end178.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %90 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i608 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 3520, i32 noundef 1784) #15
  %tobool183.not = icmp eq ptr %call7.i.i608, null
  br i1 %tobool183.not, label %for.body.err_free_epds_crit_edge, label %if.end185

for.body.err_free_epds_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

if.end185:                                        ; preds = %for.body
  %port186 = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 1
  tail call void @tty_port_init(ptr noundef %port186) #11
  %ops = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 1, i32 3
  %91 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @serial_port_ops, ptr %ops, align 4
  %92 = ptrtoint ptr %call7.i.i608 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call7.i.i.i, ptr %call7.i.i608, align 8
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.66, ptr noundef nonnull @usb_serial_probe.__key, i16 noundef signext 3) #11
  %work = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 30
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %93 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 30, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.68, ptr noundef nonnull @usb_serial_probe.__key.67, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry197 = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 30, i32 1
  %94 = ptrtoint ptr %entry197 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %entry197, ptr %entry197, align 8
  %prev.i = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 30, i32 1, i32 1
  %95 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %entry197, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 30, i32 2
  %96 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @usb_serial_port_work, ptr %func, align 8
  %arrayidx = getelementptr %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 12, i32 %i.0726
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i608, ptr %arrayidx, align 4
  %dev203 = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 32
  %parent = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 32, i32 1
  %98 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %dev, ptr %parent, align 8
  %driver205 = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 32, i32 6
  %99 = ptrtoint ptr %driver205 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %driver205, align 4
  %bus = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 32, i32 5
  %100 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @usb_serial_bus_type, ptr %bus, align 8
  %release = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 32, i32 35
  %101 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @usb_serial_port_release, ptr %release, align 4
  %groups = getelementptr inbounds %struct.usb_serial_port, ptr %call7.i.i608, i32 0, i32 32, i32 34
  %102 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @usb_serial_port_groups, ptr %groups, align 8
  tail call void @device_initialize(ptr noundef %dev203) #11
  %inc = add nuw nsw i32 %i.0726, 1
  %exitcond.not = icmp eq i32 %inc, %conv179
  br i1 %exitcond.not, label %if.end185.for.cond210.preheader_crit_edge, label %if.end185.for.body_crit_edge

if.end185.for.body_crit_edge:                     ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end185.for.cond210.preheader_crit_edge:        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond210.preheader

for.cond226.preheader:                            ; preds = %for.inc223.for.cond226.preheader_crit_edge, %for.cond210.preheader.for.cond226.preheader_crit_edge
  %103 = ptrtoint ptr %num_bulk_out to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %num_bulk_out, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp229731.not = icmp eq i8 %104, 0
  br i1 %cmp229731.not, label %for.cond226.preheader.for.end241_crit_edge, label %for.cond226.preheader.for.body231_crit_edge

for.cond226.preheader.for.body231_crit_edge:      ; preds = %for.cond226.preheader
  br label %for.body231

for.cond226.preheader.for.end241_crit_edge:       ; preds = %for.cond226.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end241

for.body215:                                      ; preds = %for.inc223.for.body215_crit_edge, %for.cond210.preheader.for.body215_crit_edge
  %i.1729 = phi i32 [ %inc224, %for.inc223.for.body215_crit_edge ], [ 0, %for.cond210.preheader.for.body215_crit_edge ]
  %arrayidx217 = getelementptr %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 12, i32 %i.1729
  %105 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx217, align 4
  %arrayidx218 = getelementptr %struct.usb_serial_endpoints, ptr %call7.i.i, i32 0, i32 4, i32 %i.1729
  %107 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx218, align 4
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %106, align 8
  %type1.i = getelementptr inbounds %struct.usb_serial, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %type1.i, align 4
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %110, align 4
  %bulk_in_size.i = getelementptr inbounds %struct.usb_serial_driver, ptr %112, i32 0, i32 11
  %115 = ptrtoint ptr %bulk_in_size.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bulk_in_size.i, align 4
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %108, i32 0, i32 4
  %117 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %119 = and i16 %118, -249
  %120 = tail call i16 @llvm.bswap.i16(i16 %119) #11
  %and.i.i = zext i16 %120 to i32
  %121 = tail call i32 @llvm.smax.i32(i32 %116, i32 %and.i.i) #11
  %bulk_in_size3.i = getelementptr inbounds %struct.usb_serial_port, ptr %106, i32 0, i32 13
  %122 = ptrtoint ptr %bulk_in_size3.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %bulk_in_size3.i, align 8
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %108, i32 0, i32 2
  %123 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %bEndpointAddress.i, align 1
  %bulk_in_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %106, i32 0, i32 15
  %125 = ptrtoint ptr %bulk_in_endpointAddress.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %bulk_in_endpointAddress.i, align 8
  %read_urbs_free.i = getelementptr inbounds %struct.usb_serial_port, ptr %106, i32 0, i32 18
  %read_bulk_callback.i = getelementptr inbounds %struct.usb_serial_driver, ptr %112, i32 0, i32 46
  tail call void @_set_bit(i32 noundef 0, ptr noundef %read_urbs_free.i) #11
  %call5.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %arrayidx.i609 = getelementptr %struct.usb_serial_port, ptr %106, i32 0, i32 17, i32 0
  %126 = ptrtoint ptr %arrayidx.i609 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call5.i, ptr %arrayidx.i609, align 4
  %tobool.not.i610 = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i610, label %for.body215.err_free_epds_crit_edge, label %if.end8.i.i

for.body215.err_free_epds_crit_edge:              ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

if.end8.i.i:                                      ; preds = %for.body215
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %121, i32 noundef 3264) #16
  %arrayidx9.i = getelementptr %struct.usb_serial_port, ptr %106, i32 0, i32 16, i32 0
  %127 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call9.i.i, ptr %arrayidx9.i, align 4
  %tobool12.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool12.not.i, label %if.end8.i.i.err_free_epds_crit_edge, label %if.end14.i

if.end8.i.i.err_free_epds_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

if.end14.i:                                       ; preds = %if.end8.i.i
  %128 = ptrtoint ptr %arrayidx.i609 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i609, align 4
  %130 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %bEndpointAddress.i, align 1
  %conv.i613 = zext i8 %131 to i32
  %132 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %114, align 8
  %shl.i.i = shl i32 %133, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i613, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or19.i = or i32 %or.i.i, -1073741696
  %134 = ptrtoint ptr %read_bulk_callback.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read_bulk_callback.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %129, i32 0, i32 8
  %136 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %114, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %129, i32 0, i32 10
  %137 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or19.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %129, i32 0, i32 14
  %138 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call9.i.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %129, i32 0, i32 19
  %139 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %121, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %129, i32 0, i32 28
  %140 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %135, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %129, i32 0, i32 27
  %141 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %106, ptr %context4.i.i, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %read_urbs_free.i) #11
  %call5.1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %arrayidx.1.i = getelementptr %struct.usb_serial_port, ptr %106, i32 0, i32 17, i32 1
  %142 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call5.1.i, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %call5.1.i, null
  br i1 %tobool.not.1.i, label %if.end14.i.err_free_epds_crit_edge, label %if.end8.i.1.i

if.end14.i.err_free_epds_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

if.end8.i.1.i:                                    ; preds = %if.end14.i
  %call9.i.1.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %121, i32 noundef 3264) #16
  %arrayidx9.1.i = getelementptr %struct.usb_serial_port, ptr %106, i32 0, i32 16, i32 1
  %143 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call9.i.1.i, ptr %arrayidx9.1.i, align 4
  %tobool12.not.1.i = icmp eq ptr %call9.i.1.i, null
  br i1 %tobool12.not.1.i, label %if.end8.i.1.i.err_free_epds_crit_edge, label %for.inc223

if.end8.i.1.i.err_free_epds_crit_edge:            ; preds = %if.end8.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

for.inc223:                                       ; preds = %if.end8.i.1.i
  %144 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.1.i, align 4
  %146 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %bEndpointAddress.i, align 1
  %conv.1.i = zext i8 %147 to i32
  %148 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %114, align 8
  %shl.i.1.i = shl i32 %149, 8
  %shl1.i.1.i = shl nuw nsw i32 %conv.1.i, 15
  %or.i.1.i = or i32 %shl.i.1.i, %shl1.i.1.i
  %or19.1.i = or i32 %or.i.1.i, -1073741696
  %150 = ptrtoint ptr %read_bulk_callback.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %read_bulk_callback.i, align 4
  %dev1.i.1.i = getelementptr inbounds %struct.urb, ptr %145, i32 0, i32 8
  %152 = ptrtoint ptr %dev1.i.1.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %114, ptr %dev1.i.1.i, align 4
  %pipe2.i.1.i = getelementptr inbounds %struct.urb, ptr %145, i32 0, i32 10
  %153 = ptrtoint ptr %pipe2.i.1.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or19.1.i, ptr %pipe2.i.1.i, align 4
  %transfer_buffer3.i.1.i = getelementptr inbounds %struct.urb, ptr %145, i32 0, i32 14
  %154 = ptrtoint ptr %transfer_buffer3.i.1.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call9.i.1.i, ptr %transfer_buffer3.i.1.i, align 4
  %transfer_buffer_length.i.1.i = getelementptr inbounds %struct.urb, ptr %145, i32 0, i32 19
  %155 = ptrtoint ptr %transfer_buffer_length.i.1.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %121, ptr %transfer_buffer_length.i.1.i, align 4
  %complete.i.1.i = getelementptr inbounds %struct.urb, ptr %145, i32 0, i32 28
  %156 = ptrtoint ptr %complete.i.1.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %151, ptr %complete.i.1.i, align 4
  %context4.i.1.i = getelementptr inbounds %struct.urb, ptr %145, i32 0, i32 27
  %157 = ptrtoint ptr %context4.i.1.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %106, ptr %context4.i.1.i, align 4
  %158 = ptrtoint ptr %arrayidx.i609 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i609, align 4
  %read_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %106, i32 0, i32 14
  %160 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %159, ptr %read_urb.i, align 4
  %bulk_in_buffers24.i = getelementptr inbounds %struct.usb_serial_port, ptr %106, i32 0, i32 16
  %161 = ptrtoint ptr %bulk_in_buffers24.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %bulk_in_buffers24.i, align 4
  %bulk_in_buffer.i = getelementptr inbounds %struct.usb_serial_port, ptr %106, i32 0, i32 12
  %163 = ptrtoint ptr %bulk_in_buffer.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %162, ptr %bulk_in_buffer.i, align 4
  %inc224 = add nuw nsw i32 %i.1729, 1
  %164 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %call7.i.i, align 8
  %conv212 = zext i8 %165 to i32
  %cmp213 = icmp ult i32 %inc224, %conv212
  br i1 %cmp213, label %for.inc223.for.body215_crit_edge, label %for.inc223.for.cond226.preheader_crit_edge

for.inc223.for.cond226.preheader_crit_edge:       ; preds = %for.inc223
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond226.preheader

for.inc223.for.body215_crit_edge:                 ; preds = %for.inc223
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body215

for.body231:                                      ; preds = %for.inc239.for.body231_crit_edge, %for.cond226.preheader.for.body231_crit_edge
  %i.2732 = phi i32 [ %inc240, %for.inc239.for.body231_crit_edge ], [ 0, %for.cond226.preheader.for.body231_crit_edge ]
  %arrayidx233 = getelementptr %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 12, i32 %i.2732
  %166 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx233, align 4
  %arrayidx234 = getelementptr %struct.usb_serial_endpoints, ptr %call7.i.i, i32 0, i32 5, i32 %i.2732
  %168 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx234, align 4
  %170 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %167, align 8
  %type1.i615 = getelementptr inbounds %struct.usb_serial, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %type1.i615 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %type1.i615, align 4
  %174 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %171, align 4
  %write_fifo.i = getelementptr inbounds %struct.usb_serial_port, ptr %167, i32 0, i32 22
  %call.i616 = tail call i32 @__kfifo_alloc(ptr noundef %write_fifo.i, i32 noundef 4096, i32 noundef 1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i616)
  %tobool.not.i617 = icmp eq i32 %call.i616, 0
  br i1 %tobool.not.i617, label %if.end.i618, label %for.body231.err_free_epds_crit_edge

for.body231.err_free_epds_crit_edge:              ; preds = %for.body231
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

if.end.i618:                                      ; preds = %for.body231
  %bulk_out_size.i = getelementptr inbounds %struct.usb_serial_driver, ptr %173, i32 0, i32 12
  %176 = ptrtoint ptr %bulk_out_size.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %bulk_out_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool4.not.i = icmp eq i32 %177, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.end.i618.if.end8.i_crit_edge

if.end.i618.if.end8.i_crit_edge:                  ; preds = %if.end.i618
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.else.i:                                        ; preds = %if.end.i618
  call void @__sanitizer_cov_trace_pc() #13
  %wMaxPacketSize.i.i619 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %169, i32 0, i32 4
  %178 = ptrtoint ptr %wMaxPacketSize.i.i619 to i32
  call void @__asan_loadN_noabort(i32 %178, i32 2)
  %179 = load i16, ptr %wMaxPacketSize.i.i619, align 1
  %180 = and i16 %179, -249
  %181 = tail call i16 @llvm.bswap.i16(i16 %180) #11
  %and.i.i620 = zext i16 %181 to i32
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.end.i618.if.end8.i_crit_edge
  %buffer_size.0.i = phi i32 [ %and.i.i620, %if.else.i ], [ %177, %if.end.i618.if.end8.i_crit_edge ]
  %bulk_out_size9.i = getelementptr inbounds %struct.usb_serial_port, ptr %167, i32 0, i32 20
  %182 = ptrtoint ptr %bulk_out_size9.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %buffer_size.0.i, ptr %bulk_out_size9.i, align 4
  %bEndpointAddress.i621 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %169, i32 0, i32 2
  %183 = ptrtoint ptr %bEndpointAddress.i621 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %bEndpointAddress.i621, align 1
  %bulk_out_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %167, i32 0, i32 26
  %185 = ptrtoint ptr %bulk_out_endpointAddress.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %bulk_out_endpointAddress.i, align 4
  %write_urbs_free.i = getelementptr inbounds %struct.usb_serial_port, ptr %167, i32 0, i32 25
  %write_bulk_callback.i = getelementptr inbounds %struct.usb_serial_driver, ptr %173, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 0, ptr noundef %write_urbs_free.i) #11
  %call10.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %arrayidx.i633 = getelementptr %struct.usb_serial_port, ptr %167, i32 0, i32 24, i32 0
  %186 = ptrtoint ptr %arrayidx.i633 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call10.i, ptr %arrayidx.i633, align 4
  %tobool13.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool13.not.i, label %if.end8.i.err_free_epds_crit_edge, label %if.end8.i.i648

if.end8.i.err_free_epds_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

if.end8.i.i648:                                   ; preds = %if.end8.i
  %call9.i.i647 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %buffer_size.0.i, i32 noundef 3264) #16
  %arrayidx17.i = getelementptr %struct.usb_serial_port, ptr %167, i32 0, i32 23, i32 0
  %187 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %call9.i.i647, ptr %arrayidx17.i, align 4
  %tobool20.not.i = icmp eq ptr %call9.i.i647, null
  br i1 %tobool20.not.i, label %if.end8.i.i648.err_free_epds_crit_edge, label %if.end22.i

if.end8.i.i648.err_free_epds_crit_edge:           ; preds = %if.end8.i.i648
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

if.end22.i:                                       ; preds = %if.end8.i.i648
  %188 = ptrtoint ptr %arrayidx.i633 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx.i633, align 4
  %190 = ptrtoint ptr %bEndpointAddress.i621 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %bEndpointAddress.i621, align 1
  %conv.i651 = zext i8 %191 to i32
  %192 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %175, align 8
  %shl.i.i652 = shl i32 %193, 8
  %shl1.i.i653 = shl nuw nsw i32 %conv.i651, 15
  %or.i.i654 = or i32 %shl.i.i652, %shl1.i.i653
  %or.i = or i32 %or.i.i654, -1073741824
  %194 = ptrtoint ptr %write_bulk_callback.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %write_bulk_callback.i, align 4
  %dev1.i.i655 = getelementptr inbounds %struct.urb, ptr %189, i32 0, i32 8
  %196 = ptrtoint ptr %dev1.i.i655 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %175, ptr %dev1.i.i655, align 4
  %pipe2.i.i656 = getelementptr inbounds %struct.urb, ptr %189, i32 0, i32 10
  %197 = ptrtoint ptr %pipe2.i.i656 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %or.i, ptr %pipe2.i.i656, align 4
  %transfer_buffer3.i.i657 = getelementptr inbounds %struct.urb, ptr %189, i32 0, i32 14
  %198 = ptrtoint ptr %transfer_buffer3.i.i657 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call9.i.i647, ptr %transfer_buffer3.i.i657, align 4
  %transfer_buffer_length.i.i658 = getelementptr inbounds %struct.urb, ptr %189, i32 0, i32 19
  %199 = ptrtoint ptr %transfer_buffer_length.i.i658 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %buffer_size.0.i, ptr %transfer_buffer_length.i.i658, align 4
  %complete.i.i659 = getelementptr inbounds %struct.urb, ptr %189, i32 0, i32 28
  %200 = ptrtoint ptr %complete.i.i659 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %195, ptr %complete.i.i659, align 4
  %context4.i.i660 = getelementptr inbounds %struct.urb, ptr %189, i32 0, i32 27
  %201 = ptrtoint ptr %context4.i.i660 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %167, ptr %context4.i.i660, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %write_urbs_free.i) #11
  %call10.1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %arrayidx.1.i661 = getelementptr %struct.usb_serial_port, ptr %167, i32 0, i32 24, i32 1
  %202 = ptrtoint ptr %arrayidx.1.i661 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call10.1.i, ptr %arrayidx.1.i661, align 4
  %tobool13.not.1.i = icmp eq ptr %call10.1.i, null
  br i1 %tobool13.not.1.i, label %if.end22.i.err_free_epds_crit_edge, label %if.end8.i.1.i663

if.end22.i.err_free_epds_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

if.end8.i.1.i663:                                 ; preds = %if.end22.i
  %call9.i.1.i662 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %buffer_size.0.i, i32 noundef 3264) #16
  %arrayidx17.1.i = getelementptr %struct.usb_serial_port, ptr %167, i32 0, i32 23, i32 1
  %203 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call9.i.1.i662, ptr %arrayidx17.1.i, align 4
  %tobool20.not.1.i = icmp eq ptr %call9.i.1.i662, null
  br i1 %tobool20.not.1.i, label %if.end8.i.1.i663.err_free_epds_crit_edge, label %for.inc239

if.end8.i.1.i663.err_free_epds_crit_edge:         ; preds = %if.end8.i.1.i663
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

for.inc239:                                       ; preds = %if.end8.i.1.i663
  %204 = ptrtoint ptr %arrayidx.1.i661 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx.1.i661, align 4
  %206 = ptrtoint ptr %bEndpointAddress.i621 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %bEndpointAddress.i621, align 1
  %conv.1.i679 = zext i8 %207 to i32
  %208 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %175, align 8
  %shl.i.1.i680 = shl i32 %209, 8
  %shl1.i.1.i681 = shl nuw nsw i32 %conv.1.i679, 15
  %or.i.1.i682 = or i32 %shl.i.1.i680, %shl1.i.1.i681
  %or.1.i = or i32 %or.i.1.i682, -1073741824
  %210 = ptrtoint ptr %write_bulk_callback.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %write_bulk_callback.i, align 4
  %dev1.i.1.i683 = getelementptr inbounds %struct.urb, ptr %205, i32 0, i32 8
  %212 = ptrtoint ptr %dev1.i.1.i683 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %175, ptr %dev1.i.1.i683, align 4
  %pipe2.i.1.i684 = getelementptr inbounds %struct.urb, ptr %205, i32 0, i32 10
  %213 = ptrtoint ptr %pipe2.i.1.i684 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %or.1.i, ptr %pipe2.i.1.i684, align 4
  %transfer_buffer3.i.1.i685 = getelementptr inbounds %struct.urb, ptr %205, i32 0, i32 14
  %214 = ptrtoint ptr %transfer_buffer3.i.1.i685 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %call9.i.1.i662, ptr %transfer_buffer3.i.1.i685, align 4
  %transfer_buffer_length.i.1.i686 = getelementptr inbounds %struct.urb, ptr %205, i32 0, i32 19
  %215 = ptrtoint ptr %transfer_buffer_length.i.1.i686 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %buffer_size.0.i, ptr %transfer_buffer_length.i.1.i686, align 4
  %complete.i.1.i687 = getelementptr inbounds %struct.urb, ptr %205, i32 0, i32 28
  %216 = ptrtoint ptr %complete.i.1.i687 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %211, ptr %complete.i.1.i687, align 4
  %context4.i.1.i688 = getelementptr inbounds %struct.urb, ptr %205, i32 0, i32 27
  %217 = ptrtoint ptr %context4.i.1.i688 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %167, ptr %context4.i.1.i688, align 4
  %218 = ptrtoint ptr %arrayidx.i633 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx.i633, align 8
  %write_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %167, i32 0, i32 21
  %220 = ptrtoint ptr %write_urb.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %219, ptr %write_urb.i, align 8
  %bulk_out_buffers31.i = getelementptr inbounds %struct.usb_serial_port, ptr %167, i32 0, i32 23
  %221 = ptrtoint ptr %bulk_out_buffers31.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %bulk_out_buffers31.i, align 8
  %bulk_out_buffer.i = getelementptr inbounds %struct.usb_serial_port, ptr %167, i32 0, i32 19
  %223 = ptrtoint ptr %bulk_out_buffer.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %222, ptr %bulk_out_buffer.i, align 8
  %inc240 = add nuw nsw i32 %i.2732, 1
  %224 = ptrtoint ptr %num_bulk_out to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %num_bulk_out, align 1
  %conv228 = zext i8 %225 to i32
  %cmp229 = icmp ult i32 %inc240, %conv228
  br i1 %cmp229, label %for.inc239.for.body231_crit_edge, label %for.inc239.for.end241_crit_edge

for.inc239.for.end241_crit_edge:                  ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end241

for.inc239.for.body231_crit_edge:                 ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body231

for.end241:                                       ; preds = %for.inc239.for.end241_crit_edge, %for.cond226.preheader.for.end241_crit_edge
  %226 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %type.i, align 4
  %read_int_callback = getelementptr inbounds %struct.usb_serial_driver, ptr %227, i32 0, i32 44
  %228 = ptrtoint ptr %read_int_callback to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %read_int_callback, align 4
  %tobool243.not = icmp eq ptr %229, null
  %230 = ptrtoint ptr %num_interrupt_in to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %num_interrupt_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool262.not = icmp eq i8 %231, 0
  br i1 %tobool243.not, label %if.else, label %for.cond245.preheader

for.cond245.preheader:                            ; preds = %for.end241
  br i1 %tobool262.not, label %for.cond245.preheader.if.end281_crit_edge, label %for.cond245.preheader.for.body250_crit_edge

for.cond245.preheader.for.body250_crit_edge:      ; preds = %for.cond245.preheader
  br label %for.body250

for.cond245.preheader.if.end281_crit_edge:        ; preds = %for.cond245.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end281

for.cond245:                                      ; preds = %for.body250
  %inc259 = add nuw nsw i32 %i.3735, 1
  %232 = ptrtoint ptr %num_interrupt_in to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %num_interrupt_in, align 2
  %conv247 = zext i8 %233 to i32
  %cmp248 = icmp ult i32 %inc259, %conv247
  br i1 %cmp248, label %for.cond245.for.body250_crit_edge, label %for.cond245.if.end281_crit_edge

for.cond245.if.end281_crit_edge:                  ; preds = %for.cond245
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end281

for.cond245.for.body250_crit_edge:                ; preds = %for.cond245
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body250

for.body250:                                      ; preds = %for.cond245.for.body250_crit_edge, %for.cond245.preheader.for.body250_crit_edge
  %i.3735 = phi i32 [ %inc259, %for.cond245.for.body250_crit_edge ], [ 0, %for.cond245.preheader.for.body250_crit_edge ]
  %arrayidx252 = getelementptr %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 12, i32 %i.3735
  %234 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx252, align 4
  %arrayidx253 = getelementptr %struct.usb_serial_endpoints, ptr %call7.i.i, i32 0, i32 6, i32 %i.3735
  %236 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx253, align 4
  %call254 = tail call fastcc i32 @setup_port_interrupt_in(ptr noundef %235, ptr noundef %237)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %for.cond245, label %for.body250.err_free_epds_crit_edge

for.body250.err_free_epds_crit_edge:              ; preds = %for.body250
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

if.else:                                          ; preds = %for.end241
  br i1 %tobool262.not, label %if.else.if.end281_crit_edge, label %do.body264

if.else.if.end281_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end281

do.body264:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_probe.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_probe, %if.then276)) #11
          to label %if.end281 [label %if.then276], !srcloc !308

if.then276:                                       ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_probe.__UNIQUE_ID_ddebug275, ptr noundef %dev, ptr noundef nonnull @.str.69) #11
  br label %if.end281

if.end281:                                        ; preds = %if.then276, %do.body264, %if.else.if.end281_crit_edge, %for.cond245.if.end281_crit_edge, %for.cond245.preheader.if.end281_crit_edge
  %238 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %type.i, align 4
  %write_int_callback = getelementptr inbounds %struct.usb_serial_driver, ptr %239, i32 0, i32 45
  %240 = ptrtoint ptr %write_int_callback to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %write_int_callback, align 4
  %tobool283.not = icmp eq ptr %241, null
  %242 = ptrtoint ptr %num_interrupt_out to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %num_interrupt_out, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool303.not = icmp eq i8 %243, 0
  br i1 %tobool283.not, label %if.else301, label %for.cond285.preheader

for.cond285.preheader:                            ; preds = %if.end281
  br i1 %tobool303.not, label %for.cond285.preheader.if.end322_crit_edge, label %for.cond285.preheader.for.body290_crit_edge

for.cond285.preheader.for.body290_crit_edge:      ; preds = %for.cond285.preheader
  br label %for.body290

for.cond285.preheader.if.end322_crit_edge:        ; preds = %for.cond285.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end322

for.cond285:                                      ; preds = %for.body290
  %inc299 = add nuw nsw i32 %i.4738, 1
  %244 = ptrtoint ptr %num_interrupt_out to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %num_interrupt_out, align 1
  %conv287 = zext i8 %245 to i32
  %cmp288 = icmp ult i32 %inc299, %conv287
  br i1 %cmp288, label %for.cond285.for.body290_crit_edge, label %for.cond285.if.end322_crit_edge

for.cond285.if.end322_crit_edge:                  ; preds = %for.cond285
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end322

for.cond285.for.body290_crit_edge:                ; preds = %for.cond285
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body290

for.body290:                                      ; preds = %for.cond285.for.body290_crit_edge, %for.cond285.preheader.for.body290_crit_edge
  %i.4738 = phi i32 [ %inc299, %for.cond285.for.body290_crit_edge ], [ 0, %for.cond285.preheader.for.body290_crit_edge ]
  %arrayidx292 = getelementptr %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 12, i32 %i.4738
  %246 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx292, align 4
  %arrayidx293 = getelementptr %struct.usb_serial_endpoints, ptr %call7.i.i, i32 0, i32 7, i32 %i.4738
  %248 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx293, align 4
  %call294 = tail call fastcc i32 @setup_port_interrupt_out(ptr noundef %247, ptr noundef %249)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %for.cond285, label %for.body290.err_free_epds_crit_edge

for.body290.err_free_epds_crit_edge:              ; preds = %for.body290
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

if.else301:                                       ; preds = %if.end281
  br i1 %tobool303.not, label %if.else301.if.end322_crit_edge, label %do.body305

if.else301.if.end322_crit_edge:                   ; preds = %if.else301
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end322

do.body305:                                       ; preds = %if.else301
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_probe.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_probe, %if.then317)) #11
          to label %if.end322 [label %if.then317], !srcloc !308

if.then317:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_probe.__UNIQUE_ID_ddebug276, ptr noundef %dev, ptr noundef nonnull @.str.70) #11
  br label %if.end322

if.end322:                                        ; preds = %if.then317, %do.body305, %if.else301.if.end322_crit_edge, %for.cond285.if.end322_crit_edge, %for.cond285.preheader.if.end322_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %250 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %call7.i.i.i, ptr %driver_data.i.i, align 4
  %attach = getelementptr i8, ptr %.pn.i, i32 160
  %251 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %attach, align 4
  %tobool323.not = icmp eq ptr %252, null
  br i1 %tobool323.not, label %if.else336, label %if.then324

if.then324:                                       ; preds = %if.end322
  %call326 = tail call i32 %252(ptr noundef %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326)
  %cmp327 = icmp slt i32 %call326, 0
  br i1 %cmp327, label %if.then324.err_free_epds_crit_edge, label %if.end330

if.then324.err_free_epds_crit_edge:               ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds

if.end330:                                        ; preds = %if.then324
  %253 = ptrtoint ptr %minors_reserved.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %bf.load = load i8, ptr %minors_reserved.i, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %minors_reserved.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326)
  %cmp331.not = icmp eq i32 %call326, 0
  br i1 %cmp331.not, label %if.end330.if.end341_crit_edge, label %if.then333

if.end330.if.end341_crit_edge:                    ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end341

if.then333:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #13
  %254 = ptrtoint ptr %num_ports101 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %num_ports101, align 1
  br label %exit

if.else336:                                       ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #13
  %255 = ptrtoint ptr %minors_reserved.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %bf.load338 = load i8, ptr %minors_reserved.i, align 4
  %bf.set340 = or i8 %bf.load338, 64
  store i8 %bf.set340, ptr %minors_reserved.i, align 4
  br label %if.end341

if.end341:                                        ; preds = %if.else336, %if.end330.if.end341_crit_edge
  %call342 = tail call fastcc i32 @allocate_minors(ptr noundef %call7.i.i.i, i32 noundef %num_ports.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %tobool343.not = icmp eq i32 %call342, 0
  br i1 %tobool343.not, label %for.cond349.preheader, label %if.end341.err_free_epds.sink.split_crit_edge

if.end341.err_free_epds.sink.split_crit_edge:     ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_epds.sink.split

for.cond349.preheader:                            ; preds = %if.end341
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_ports.2)
  %cmp350739 = icmp sgt i32 %num_ports.2, 0
  br i1 %cmp350739, label %for.cond349.preheader.for.body352_crit_edge, label %for.cond349.preheader.exit_crit_edge

for.cond349.preheader.exit_crit_edge:             ; preds = %for.cond349.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

for.cond349.preheader.for.body352_crit_edge:      ; preds = %for.cond349.preheader
  br label %for.body352

for.body352:                                      ; preds = %for.inc384.for.body352_crit_edge, %for.cond349.preheader.for.body352_crit_edge
  %i.5740 = phi i32 [ %inc385, %for.inc384.for.body352_crit_edge ], [ 0, %for.cond349.preheader.for.body352_crit_edge ]
  %arrayidx354 = getelementptr %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 12, i32 %i.5740
  %256 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx354, align 4
  %dev355 = getelementptr inbounds %struct.usb_serial_port, ptr %257, i32 0, i32 32
  %minor = getelementptr inbounds %struct.usb_serial_port, ptr %257, i32 0, i32 3
  %258 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %minor, align 8
  %call356 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev355, ptr noundef nonnull @.str.74, i32 noundef %259) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_probe.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_probe, %if.then369)) #11
          to label %do.end374 [label %if.then369], !srcloc !308

if.then369:                                       ; preds = %for.body352
  %init_name.i = getelementptr inbounds %struct.usb_serial_port, ptr %257, i32 0, i32 32, i32 3
  %260 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i690 = icmp eq ptr %261, null
  br i1 %tobool.not.i690, label %if.end.i691, label %if.then369.dev_name.exit_crit_edge

if.then369.dev_name.exit_crit_edge:               ; preds = %if.then369
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i691:                                      ; preds = %if.then369
  call void @__sanitizer_cov_trace_pc() #13
  %262 = ptrtoint ptr %dev355 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev355, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i691, %if.then369.dev_name.exit_crit_edge
  %retval.0.i692 = phi ptr [ %263, %if.end.i691 ], [ %261, %if.then369.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_probe.__UNIQUE_ID_ddebug277, ptr noundef %dev, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i692) #11
  br label %do.end374

do.end374:                                        ; preds = %dev_name.exit, %for.body352
  %is_prepared.i = getelementptr inbounds %struct.usb_serial_port, ptr %257, i32 0, i32 32, i32 12, i32 1
  %264 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %bf.load.i693 = load i16, ptr %is_prepared.i, align 4
  %265 = and i16 %bf.load.i693, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %265)
  %bf.cast.not.i = icmp eq i16 %265, 0
  br i1 %bf.cast.not.i, label %if.then.i694, label %do.end374.device_enable_async_suspend.exit_crit_edge

do.end374.device_enable_async_suspend.exit_crit_edge: ; preds = %do.end374
  call void @__sanitizer_cov_trace_pc() #13
  br label %device_enable_async_suspend.exit

if.then.i694:                                     ; preds = %do.end374
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set.i = or i16 %bf.load.i693, 16384
  %266 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit

device_enable_async_suspend.exit:                 ; preds = %if.then.i694, %do.end374.device_enable_async_suspend.exit_crit_edge
  %call377 = tail call i32 @device_add(ptr noundef %dev355) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call377)
  %tobool378.not = icmp eq i32 %call377, 0
  br i1 %tobool378.not, label %device_enable_async_suspend.exit.for.inc384_crit_edge, label %do.end382

device_enable_async_suspend.exit.for.inc384_crit_edge: ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc384

do.end382:                                        ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77) #14
  br label %for.inc384

for.inc384:                                       ; preds = %do.end382, %device_enable_async_suspend.exit.for.inc384_crit_edge
  %inc385 = add nuw nsw i32 %i.5740, 1
  %exitcond749.not = icmp eq i32 %inc385, %num_ports.2
  br i1 %exitcond749.not, label %for.end386, label %for.inc384.for.body352_crit_edge

for.inc384.for.body352_crit_edge:                 ; preds = %for.inc384
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body352

for.end386:                                       ; preds = %for.inc384
  br i1 %cmp350739, label %if.then389, label %for.end386.exit_crit_edge

for.end386.exit_crit_edge:                        ; preds = %for.end386
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then389:                                       ; preds = %for.end386
  call void @__sanitizer_cov_trace_pc() #13
  %port390 = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 12
  %267 = ptrtoint ptr %port390 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %port390, align 4
  %minor392 = getelementptr inbounds %struct.usb_serial_port, ptr %268, i32 0, i32 3
  %269 = ptrtoint ptr %minor392 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %minor392, align 8
  tail call void @usb_serial_console_init(i32 noundef %270) #11
  br label %exit

exit:                                             ; preds = %if.then389, %for.end386.exit_crit_edge, %for.cond349.preheader.exit_crit_edge, %if.then333
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %271 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %272) #11
  br label %cleanup398

err_free_epds.sink.split:                         ; preds = %if.end341.err_free_epds.sink.split_crit_edge, %lor.lhs.false68.err_free_epds.sink.split_crit_edge, %lor.lhs.false62.err_free_epds.sink.split_crit_edge, %lor.lhs.false.err_free_epds.sink.split_crit_edge, %if.end53.err_free_epds.sink.split_crit_edge
  %.str.72.sink = phi ptr [ @.str.55, %if.end53.err_free_epds.sink.split_crit_edge ], [ @.str.55, %lor.lhs.false.err_free_epds.sink.split_crit_edge ], [ @.str.55, %lor.lhs.false62.err_free_epds.sink.split_crit_edge ], [ @.str.55, %lor.lhs.false68.err_free_epds.sink.split_crit_edge ], [ @.str.72, %if.end341.err_free_epds.sink.split_crit_edge ]
  %retval2.0.ph = phi i32 [ -19, %if.end53.err_free_epds.sink.split_crit_edge ], [ -19, %lor.lhs.false.err_free_epds.sink.split_crit_edge ], [ -19, %lor.lhs.false62.err_free_epds.sink.split_crit_edge ], [ -19, %lor.lhs.false68.err_free_epds.sink.split_crit_edge ], [ %call342, %if.end341.err_free_epds.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.72.sink) #14
  br label %err_free_epds

err_free_epds:                                    ; preds = %err_free_epds.sink.split, %if.then324.err_free_epds_crit_edge, %for.body290.err_free_epds_crit_edge, %for.body250.err_free_epds_crit_edge, %if.end8.i.1.i663.err_free_epds_crit_edge, %if.end22.i.err_free_epds_crit_edge, %if.end8.i.i648.err_free_epds_crit_edge, %if.end8.i.err_free_epds_crit_edge, %for.body231.err_free_epds_crit_edge, %if.end8.i.1.i.err_free_epds_crit_edge, %if.end14.i.err_free_epds_crit_edge, %if.end8.i.i.err_free_epds_crit_edge, %for.body215.err_free_epds_crit_edge, %for.body.err_free_epds_crit_edge, %if.then80.err_free_epds_crit_edge
  %retval2.0 = phi i32 [ %call82, %if.then80.err_free_epds_crit_edge ], [ %call326, %if.then324.err_free_epds_crit_edge ], [ %retval2.0.ph, %err_free_epds.sink.split ], [ %call294, %for.body290.err_free_epds_crit_edge ], [ %call254, %for.body250.err_free_epds_crit_edge ], [ -12, %for.body231.err_free_epds_crit_edge ], [ -12, %if.end8.i.1.i663.err_free_epds_crit_edge ], [ -12, %if.end22.i.err_free_epds_crit_edge ], [ -12, %if.end8.i.err_free_epds_crit_edge ], [ -12, %if.end8.i.i648.err_free_epds_crit_edge ], [ -12, %if.end8.i.1.i.err_free_epds_crit_edge ], [ -12, %if.end14.i.err_free_epds_crit_edge ], [ -12, %for.body215.err_free_epds_crit_edge ], [ -12, %if.end8.i.i.err_free_epds_crit_edge ], [ -12, %for.body.err_free_epds_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %err_release_sibling

err_release_sibling:                              ; preds = %err_free_epds, %if.end45.err_release_sibling_crit_edge, %if.then40, %do.body28
  %retval2.1 = phi i32 [ %retval2.0, %err_free_epds ], [ -12, %if.end45.err_release_sibling_crit_edge ], [ %call25, %do.body28 ], [ %call25, %if.then40 ]
  %273 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %type.i, align 4
  %usb_driver.i697 = getelementptr inbounds %struct.usb_serial_driver, ptr %274, i32 0, i32 4
  %275 = ptrtoint ptr %usb_driver.i697 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %usb_driver.i697, align 4
  %sibling1.i = getelementptr inbounds %struct.usb_serial, ptr %call7.i.i.i, i32 0, i32 3
  %277 = ptrtoint ptr %sibling1.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %sibling1.i, align 4
  %tobool.not.i698 = icmp eq ptr %278, null
  br i1 %tobool.not.i698, label %err_release_sibling.release_sibling.exit_crit_edge, label %if.end.i700

err_release_sibling.release_sibling.exit_crit_edge: ; preds = %err_release_sibling
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_sibling.exit

if.end.i700:                                      ; preds = %err_release_sibling
  %cmp.i699 = icmp eq ptr %278, %interface
  br i1 %cmp.i699, label %if.then3.i, label %if.end.i700.if.end5.i_crit_edge

if.end.i700.if.end5.i_crit_edge:                  ; preds = %if.end.i700
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i700
  call void @__sanitizer_cov_trace_pc() #13
  %279 = ptrtoint ptr %interface4.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %interface4.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i700.if.end5.i_crit_edge
  %sibling.0.i = phi ptr [ %280, %if.then3.i ], [ %278, %if.end.i700.if.end5.i_crit_edge ]
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %sibling.0.i, i32 0, i32 7, i32 8
  %281 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr null, ptr %driver_data.i.i.i, align 4
  tail call void @usb_driver_release_interface(ptr noundef %276, ptr noundef %sibling.0.i) #11
  br label %release_sibling.exit

release_sibling.exit:                             ; preds = %if.end5.i, %err_release_sibling.release_sibling.exit_crit_edge
  tail call void @usb_serial_put(ptr noundef %call7.i.i.i)
  br label %err_put_module

err_put_module:                                   ; preds = %release_sibling.exit, %if.end15.err_put_module_crit_edge
  %retval2.2 = phi i32 [ %retval2.1, %release_sibling.exit ], [ -12, %if.end15.err_put_module_crit_edge ]
  %282 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %283) #11
  br label %cleanup398

cleanup398:                                       ; preds = %err_put_module, %exit, %if.then11, %if.then8, %if.then
  %retval.0 = phi i32 [ %retval2.2, %err_put_module ], [ 0, %exit ], [ -5, %if.then11 ], [ -19, %if.then8 ], [ -19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_disconnect(ptr noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usb_serial_console_disconnect(ptr noundef nonnull %1) #11
  %disc_mutex = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #11
  %disconnected = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %disconnected, align 4
  tail call void @mutex_unlock(ptr noundef %disc_mutex) #11
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp50.not = icmp eq i8 %4, 0
  br i1 %cmp50.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.051 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_serial, ptr %1, i32 0, i32 12, i32 %i.051
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %port5 = getelementptr inbounds %struct.usb_serial_port, ptr %6, i32 0, i32 1
  %call6 = tail call ptr @tty_port_tty_get(ptr noundef %port5) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %for.body.if.end9_crit_edge, label %if.then8

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_vhangup(ptr noundef nonnull %call6) #11
  tail call void @tty_kref_put(ptr noundef nonnull %call6) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %for.body.if.end9_crit_edge
  %arrayidx.i = getelementptr %struct.usb_serial_port, ptr %6, i32 0, i32 17, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_poison_urb(ptr noundef %8) #11
  %arrayidx.1.i = getelementptr %struct.usb_serial_port, ptr %6, i32 0, i32 17, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @usb_poison_urb(ptr noundef %10) #11
  %arrayidx4.i = getelementptr %struct.usb_serial_port, ptr %6, i32 0, i32 24, i32 0
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4.i, align 4
  tail call void @usb_poison_urb(ptr noundef %12) #11
  %arrayidx4.1.i = getelementptr %struct.usb_serial_port, ptr %6, i32 0, i32 24, i32 1
  %13 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4.1.i, align 4
  tail call void @usb_poison_urb(ptr noundef %14) #11
  %interrupt_in_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %6, i32 0, i32 6
  %15 = ptrtoint ptr %interrupt_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interrupt_in_urb.i, align 4
  tail call void @usb_poison_urb(ptr noundef %16) #11
  %interrupt_out_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %6, i32 0, i32 10
  %17 = ptrtoint ptr %interrupt_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interrupt_out_urb.i, align 4
  tail call void @usb_poison_urb(ptr noundef %18) #11
  %delta_msr_wait = getelementptr inbounds %struct.usb_serial_port, ptr %6, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %work = getelementptr inbounds %struct.usb_serial_port, ptr %6, i32 0, i32 30
  %call11 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #11
  %state_in_sysfs.i = getelementptr inbounds %struct.usb_serial_port, ptr %6, i32 0, i32 32, i32 0, i32 8
  %19 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %20 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool14.not = icmp eq i8 %20, 0
  br i1 %tobool14.not, label %if.end9.for.inc_crit_edge, label %if.then15

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %dev12 = getelementptr inbounds %struct.usb_serial_port, ptr %6, i32 0, i32 32
  tail call void @device_del(ptr noundef %dev12) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.end9.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %21 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_ports, align 1
  %conv = zext i8 %22 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %type = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %type, align 4
  %disconnect = getelementptr inbounds %struct.usb_serial_driver, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disconnect, align 4
  %tobool18.not = icmp eq ptr %26, null
  br i1 %tobool18.not, label %for.end.if.end22_crit_edge, label %if.then19

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %26(ptr noundef nonnull %1) #11
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %for.end.if.end22_crit_edge
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %type, align 4
  %usb_driver.i = getelementptr inbounds %struct.usb_serial_driver, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %usb_driver.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_driver.i, align 4
  %sibling1.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %sibling1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sibling1.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end22.release_sibling.exit_crit_edge, label %if.end.i

if.end22.release_sibling.exit_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_sibling.exit

if.end.i:                                         ; preds = %if.end22
  %cmp.i = icmp eq ptr %32, %interface
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %interface.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %sibling.0.i = phi ptr [ %34, %if.then3.i ], [ %32, %if.end.i.if.end5.i_crit_edge ]
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %sibling.0.i, i32 0, i32 7, i32 8
  %35 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %driver_data.i.i.i, align 4
  tail call void @usb_driver_release_interface(ptr noundef %30, ptr noundef %sibling.0.i) #11
  br label %release_sibling.exit

release_sibling.exit:                             ; preds = %if.end5.i, %if.end22.release_sibling.exit_crit_edge
  tail call void @usb_serial_put(ptr noundef nonnull %1)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.93) #14
  br label %cleanup

cleanup:                                          ; preds = %release_sibling.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_reset_resume(ptr nocapture noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %suspend_count = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %suspend_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suspend_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %suspend_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @usb_serial_unpoison_port_urbs(ptr noundef %1)
  %type = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %reset_resume = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %reset_resume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_resume, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 %7(ptr noundef %1) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %needs_binding = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 6
  %8 = ptrtoint ptr %needs_binding to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %needs_binding, align 8
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %needs_binding, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call5, %if.then2 ], [ -95, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_serial_deregister_drivers(ptr nocapture noundef readonly %serial_drivers) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial_drivers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_drivers, align 4
  %usb_driver = getelementptr inbounds %struct.usb_serial_driver, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_driver, align 4
  %tobool.not5 = icmp eq ptr %1, null
  br i1 %tobool.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %usb_serial_deregister.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %serial_drivers.addr.06 = phi ptr [ %incdec.ptr, %usb_serial_deregister.exit.for.body_crit_edge ], [ %serial_drivers, %entry.for.body_crit_edge ]
  %4 = phi ptr [ %.pr, %usb_serial_deregister.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %6) #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #11
  %driver_list.i = getelementptr inbounds %struct.usb_serial_driver, ptr %4, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %driver_list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.usb_serial_deregister.exit_crit_edge

for.body.usb_serial_deregister.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_serial_deregister.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.usb_serial_driver, ptr %4, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %driver_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %usb_serial_deregister.exit

usb_serial_deregister.exit:                       ; preds = %if.end.i.i.i, %for.body.usb_serial_deregister.exit_crit_edge
  %13 = ptrtoint ptr %driver_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %driver_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.usb_serial_driver, ptr %4, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #11
  tail call void @usb_serial_bus_deregister(ptr noundef nonnull %4) #11
  %incdec.ptr = getelementptr ptr, ptr %serial_drivers.addr.06, i32 1
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %.pr, null
  br i1 %tobool.not, label %usb_serial_deregister.exit.for.end_crit_edge, label %usb_serial_deregister.exit.for.body_crit_edge

usb_serial_deregister.exit.for.body_crit_edge:    ; preds = %usb_serial_deregister.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

usb_serial_deregister.exit.for.end_crit_edge:     ; preds = %usb_serial_deregister.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %usb_serial_deregister.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @usb_deregister(ptr noundef %3) #11
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unpoison_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_register() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_install(ptr noundef %driver, ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call ptr @usb_serial_port_get_by_minor(i32 noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %owner = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  %call4 = tail call zeroext i1 @try_module_get(ptr noundef %7) #11
  br i1 %call4, label %if.end6, label %if.end.err_put_serial_crit_edge

if.end.err_put_serial_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_serial

if.end6:                                          ; preds = %if.end
  %termios = getelementptr inbounds %struct.tty_driver, ptr %driver, i32 0, i32 18
  %8 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %termios, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 @tty_standard_install(ptr noundef %driver, ptr noundef %tty) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %err_put_module

if.end10:                                         ; preds = %if.end6
  %cmp = icmp eq ptr %11, null
  %disc_mutex = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %disc_mutex) #11
  br i1 %cmp, label %land.lhs.true, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end10
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 4
  %init_termios13 = getelementptr inbounds %struct.usb_serial_driver, ptr %13, i32 0, i32 43
  %14 = ptrtoint ptr %init_termios13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_termios13, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %land.lhs.true.if.end18_crit_edge, label %if.then15

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %15(ptr noundef %tty) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %land.lhs.true.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %16 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %driver_data, align 4
  br label %cleanup

err_put_module:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type, align 4
  %owner21 = getelementptr inbounds %struct.usb_serial_driver, ptr %18, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %owner21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %owner21, align 4
  tail call void @module_put(ptr noundef %20) #11
  br label %err_put_serial

err_put_serial:                                   ; preds = %err_put_module, %if.end.err_put_serial_crit_edge
  %retval1.0 = phi i32 [ %call7, %err_put_module ], [ -19, %if.end.err_put_serial_crit_edge ]
  tail call void @usb_serial_put(ptr noundef %3)
  %disc_mutex22 = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %disc_mutex22) #11
  br label %cleanup

cleanup:                                          ; preds = %err_put_serial, %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %err_put_serial ], [ 0, %if.end18 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_open(ptr noundef %tty, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_open.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_open, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_open.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port3 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @tty_port_open(ptr noundef %port3, ptr noundef %tty, ptr noundef %filp) #11
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_close(ptr noundef %tty, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_close.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_close, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_close.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port3 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  tail call void @tty_port_close(ptr noundef %port3, ptr noundef %tty, ptr noundef %filp) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_cleanup(ptr nocapture noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_cleanup.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_cleanup, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_cleanup.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 12
  %2 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %driver_data, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %owner9 = getelementptr inbounds %struct.usb_serial_driver, ptr %7, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %owner9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner9, align 4
  tail call void @usb_serial_put(ptr noundef %5)
  tail call void @module_put(ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_write(ptr noundef %tty, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %state = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.exit_crit_edge, label %do.body

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_write.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_write, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !308

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev5 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_write.__UNIQUE_ID_ddebug243, ptr noundef %dev5, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %count) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 4
  %write = getelementptr inbounds %struct.usb_serial_driver, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  %call8 = tail call i32 %13(ptr noundef %tty, ptr noundef %1, ptr noundef %buf, i32 noundef %count) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %do.end.exit_crit_edge

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then10:                                        ; preds = %do.end
  %14 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call8, label %sw.default.i [
    i32 -95, label %if.then10.exit_crit_edge
    i32 -12, label %if.then10.exit_crit_edge22
    i32 -19, label %if.then10.exit_crit_edge23
  ]

if.then10.exit_crit_edge23:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then10.exit_crit_edge22:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then10.exit_crit_edge:                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

sw.default.i:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

exit:                                             ; preds = %sw.default.i, %if.then10.exit_crit_edge, %if.then10.exit_crit_edge22, %if.then10.exit_crit_edge23, %do.end.exit_crit_edge, %entry.exit_crit_edge
  %retval1.0 = phi i32 [ -19, %entry.exit_crit_edge ], [ %call8, %do.end.exit_crit_edge ], [ -5, %sw.default.i ], [ %call8, %if.then10.exit_crit_edge ], [ %call8, %if.then10.exit_crit_edge22 ], [ %call8, %if.then10.exit_crit_edge23 ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_write_room(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_write_room.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_write_room, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_write_room.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.27) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %write_room = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %write_room to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_room, align 4
  %call3 = tail call i32 %7(ptr noundef %tty) #11
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_chars_in_buffer(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_chars_in_buffer.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_chars_in_buffer, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_chars_in_buffer.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.28) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %disconnected = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %type, align 4
  %chars_in_buffer = getelementptr inbounds %struct.usb_serial_driver, ptr %6, i32 0, i32 32
  %7 = ptrtoint ptr %chars_in_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chars_in_buffer, align 4
  %call7 = tail call i32 %8(ptr noundef %tty) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_ioctl.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_ioctl, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_ioctl.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %cmd) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 21596, i32 %cmd)
  %cond = icmp eq i32 %cmd, 21596
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.end
  %tiocmiwait = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %tiocmiwait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tiocmiwait, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %sw.bb.sw.epilog_crit_edge, label %if.then5

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 %7(ptr noundef %tty, i32 noundef %arg) #11
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  %ioctl = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 27
  %8 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioctl, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %sw.default.sw.epilog_crit_edge, label %if.then14

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then14:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 %9(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then14, %sw.default.sw.epilog_crit_edge, %if.then5, %sw.bb.sw.epilog_crit_edge
  %retval1.0 = phi i32 [ %call9, %if.then5 ], [ -515, %sw.bb.sw.epilog_crit_edge ], [ %call18, %if.then14 ], [ -515, %sw.default.sw.epilog_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_set_termios(ptr noundef %tty, ptr noundef %old) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_set_termios.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_set_termios, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_set_termios.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.31) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %set_termios = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %set_termios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_termios, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7(ptr noundef %tty, ptr noundef %1, ptr noundef %old) #11
  br label %if.end8

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  tail call void @tty_termios_copy_hw(ptr noundef %termios, ptr noundef %old) #11
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_throttle(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_throttle.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_throttle, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_throttle.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.32) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %throttle = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %throttle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %throttle, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.end.if.end8_crit_edge, label %if.then4

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7(ptr noundef %tty) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %do.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_unthrottle(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_unthrottle.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_unthrottle, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_unthrottle.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %unthrottle = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %unthrottle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unthrottle, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.end.if.end8_crit_edge, label %if.then4

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7(ptr noundef %tty) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %do.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_hangup(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_hangup.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_hangup, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_hangup.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.34) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port3 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  tail call void @tty_port_hangup(ptr noundef %port3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_break(ptr noundef %tty, i32 noundef %break_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_break.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_break, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_break.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.35) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %break_ctl = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 31
  %6 = ptrtoint ptr %break_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %break_ctl, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.end.if.end8_crit_edge, label %if.then4

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7(ptr noundef %tty, i32 noundef %break_state) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %do.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_wait_until_sent(ptr noundef %tty, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_wait_until_sent.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_wait_until_sent, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_wait_until_sent.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.36) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %wait_until_sent = getelementptr inbounds %struct.usb_serial_driver, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %wait_until_sent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wait_until_sent, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %disc_mutex = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #11
  %disconnected = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %if.then9, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %type11 = getelementptr inbounds %struct.usb_serial, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type11, align 4
  %wait_until_sent12 = getelementptr inbounds %struct.usb_serial_driver, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %wait_until_sent12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wait_until_sent12, align 4
  tail call void %16(ptr noundef %tty, i32 noundef %timeout) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7.if.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %disc_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_tiocmget(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_tiocmget.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_tiocmget, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_tiocmget.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.37) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %tiocmget = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %tiocmget to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tiocmget, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.then4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 %7(ptr noundef %tty) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then4 ], [ -25, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_tiocmset(ptr noundef %tty, i32 noundef %set, i32 noundef %clear) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_tiocmset.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_tiocmset, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_tiocmset.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.38) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %tiocmset = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 38
  %6 = ptrtoint ptr %tiocmset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tiocmset, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.then4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 %7(ptr noundef %tty, i32 noundef %set, i32 noundef %clear) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then4 ], [ -25, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_get_icount(ptr noundef %tty, ptr noundef %icount) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_get_icount.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_get_icount, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_get_icount.__UNIQUE_ID_ddebug254, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.39) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %get_icount = getelementptr inbounds %struct.usb_serial_driver, ptr %5, i32 0, i32 40
  %6 = ptrtoint ptr %get_icount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_icount, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.then4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 %7(ptr noundef %tty, ptr noundef %icount) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then4 ], [ -25, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_get_serial(ptr noundef %tty, ptr noundef %ss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %mutex = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %close_delay2 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 16
  %2 = ptrtoint ptr %close_delay2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %close_delay2, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %3) #11
  %div = udiv i32 %call, 10
  %closing_wait3 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 17
  %4 = ptrtoint ptr %closing_wait3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %closing_wait3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp.not = icmp eq i32 %5, 65535
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @jiffies_to_msecs(i32 noundef %5) #11
  %div5 = udiv i32 %call4, 10
  %phi.cast = trunc i32 %div5 to i16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %closing_wait.0 = phi i16 [ %phi.cast, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %minor = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %minor, align 8
  %line = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 1
  %8 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %line, align 4
  %conv = trunc i32 %div to i16
  %close_delay6 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 8
  %9 = ptrtoint ptr %close_delay6 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %close_delay6, align 4
  %closing_wait8 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 12
  %10 = ptrtoint ptr %closing_wait8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %closing_wait.0, ptr %closing_wait8, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type, align 4
  %get_serial = getelementptr inbounds %struct.usb_serial_driver, ptr %14, i32 0, i32 28
  %15 = ptrtoint ptr %get_serial to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_serial, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %16(ptr noundef %tty, ptr noundef %ss) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_set_serial(ptr noundef %tty, ptr noundef %ss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %close_delay2 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 8
  %2 = ptrtoint ptr %close_delay2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %close_delay2, align 4
  %conv = zext i16 %3 to i32
  %mul = mul nuw nsw i32 %conv, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #11
  %closing_wait3 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 12
  %4 = ptrtoint ptr %closing_wait3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %closing_wait3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp.not = icmp eq i16 %5, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.else.i50

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else.i50:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv4 = zext i16 %5 to i32
  %mul6 = mul nuw nsw i32 %conv4, 10
  %call2.i49 = tail call i32 @__msecs_to_jiffies(i32 noundef %mul6) #11
  br label %if.end

if.end:                                           ; preds = %if.else.i50, %entry.if.end_crit_edge
  %closing_wait.0 = phi i32 [ 65535, %entry.if.end_crit_edge ], [ %call2.i49, %if.else.i50 ]
  %mutex = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %call8 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call8, label %if.end.if.end18_crit_edge, label %if.then9

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then9:                                         ; preds = %if.end
  %close_delay10 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 16
  %6 = ptrtoint ptr %close_delay10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %close_delay10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %7)
  %cmp11.not = icmp eq i32 %call2.i, %7
  br i1 %cmp11.not, label %lor.lhs.false, label %if.then9.out_unlock_crit_edge

if.then9.out_unlock_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

lor.lhs.false:                                    ; preds = %if.then9
  %closing_wait13 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 17
  %8 = ptrtoint ptr %closing_wait13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %closing_wait13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %closing_wait.0, i32 %9)
  %cmp14.not = icmp eq i32 %closing_wait.0, %9
  br i1 %cmp14.not, label %lor.lhs.false.if.end18_crit_edge, label %lor.lhs.false.out_unlock_crit_edge

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end18:                                         ; preds = %lor.lhs.false.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 4
  %set_serial = getelementptr inbounds %struct.usb_serial_driver, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %set_serial to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_serial, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end18.if.end27_crit_edge, label %if.then19

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then19:                                        ; preds = %if.end18
  %call23 = tail call i32 %15(ptr noundef %tty, ptr noundef %ss) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then19.if.end27_crit_edge, label %if.then19.out_unlock_crit_edge

if.then19.out_unlock_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end27:                                         ; preds = %if.then19.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %close_delay28 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 16
  %16 = ptrtoint ptr %close_delay28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call2.i, ptr %close_delay28, align 4
  %closing_wait29 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 17
  %17 = ptrtoint ptr %closing_wait29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %closing_wait.0, ptr %closing_wait29, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end27, %if.then19.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %if.then9.out_unlock_crit_edge
  %ret.1 = phi i32 [ %call23, %if.then19.out_unlock_crit_edge ], [ 0, %if.end27 ], [ -1, %lor.lhs.false.out_unlock_crit_edge ], [ -1, %if.then9.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %tmp = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp) #11
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 40)
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.40) #11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.042 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = call ptr @usb_serial_port_get_by_minor(i32 noundef %i.042)
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %i.042) #11
  %type = getelementptr inbounds %struct.usb_serial, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type, align 4
  %owner = getelementptr inbounds %struct.usb_serial_driver, ptr %4, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %cond.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

cond.end:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.module, ptr %6, i32 0, i32 2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, ptr noundef %name) #11
  br label %if.end9

if.end9:                                          ; preds = %cond.end, %if.end.if.end9_crit_edge
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, ptr noundef %10) #11
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 16, i32 7
  %13 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idVendor, align 8
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv = zext i16 %15 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 16, i32 8
  %16 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %idProduct, align 2
  %18 = call i16 @llvm.bswap.i16(i16 %17)
  %conv13 = zext i16 %18 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, i32 noundef %conv, i32 noundef %conv13) #11
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %2, i32 0, i32 6
  %19 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_ports, align 1
  %conv14 = zext i8 %20 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.46, i32 noundef %conv14) #11
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %call, i32 0, i32 4
  %21 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port_number, align 4
  %conv15 = zext i8 %22 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i32 noundef %conv15) #11
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 1
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 40, ptr noundef nonnull @.str.49, ptr noundef %28, ptr noundef %devpath.i) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, ptr noundef nonnull %tmp) #11
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #11
  call void @usb_serial_put(ptr noundef %2)
  %disc_mutex = getelementptr inbounds %struct.usb_serial, ptr %2, i32 0, i32 14
  call void @mutex_unlock(ptr noundef %disc_mutex) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_standard_install(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_copy_hw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_iface_id(ptr noundef %drv, ptr noundef %intf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id_table = getelementptr inbounds %struct.usb_serial_driver, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table, align 4
  %call = tail call ptr @usb_match_id(ptr noundef %intf, ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_iface_id.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_iface_id, %if.then5)) #11
          to label %exit [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_iface_id.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.81) #11
  br label %exit

if.end6:                                          ; preds = %entry
  %dynids.i = getelementptr inbounds %struct.usb_serial_driver, ptr %drv, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dynids.i) #11
  %list.i = getelementptr inbounds %struct.usb_serial_driver, ptr %drv, i32 0, i32 5, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end6
  %dynid.0.in.i = phi ptr [ %list.i, %if.end6 ], [ %dynid.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %dynid.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %dynid.0.i = load ptr, ptr %dynid.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %dynid.0.i, %list.i
  br i1 %cmp.not.i, label %match_dynamic_id.exit.thread, label %for.body.i

match_dynamic_id.exit.thread:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %dynids.i) #11
  br label %exit

for.body.i:                                       ; preds = %for.cond.i
  %id.i = getelementptr inbounds %struct.usb_dynid, ptr %dynid.0.i, i32 0, i32 1
  %call.i = tail call i32 @usb_match_one_id(ptr noundef %intf, ptr noundef %id.i) #11
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %match_dynamic_id.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

match_dynamic_id.exit:                            ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef %dynids.i) #11
  %tobool8.not = icmp eq ptr %id.i, null
  br i1 %tobool8.not, label %match_dynamic_id.exit.exit_crit_edge, label %do.body10

match_dynamic_id.exit.exit_crit_edge:             ; preds = %match_dynamic_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

do.body10:                                        ; preds = %match_dynamic_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_iface_id.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_iface_id, %if.then22)) #11
          to label %exit [label %if.then22], !srcloc !308

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %dev23 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_iface_id.__UNIQUE_ID_ddebug257, ptr noundef %dev23, ptr noundef nonnull @.str.82) #11
  br label %exit

exit:                                             ; preds = %if.then22, %do.body10, %match_dynamic_id.exit.exit_crit_edge, %match_dynamic_id.exit.thread, %if.then5, %do.body
  %id.0 = phi ptr [ %call, %if.then5 ], [ %id.i, %if.then22 ], [ null, %match_dynamic_id.exit.exit_crit_edge ], [ %call, %do.body ], [ null, %match_dynamic_id.exit.thread ], [ %id.i, %do.body10 ]
  ret ptr %id.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_port_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr i8, ptr %work, i32 -800
  tail call void @tty_port_tty_wakeup(ptr noundef %port1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_port_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_port_release.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_port_release, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_port_release.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.88) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %interrupt_in_urb = getelementptr i8, ptr %dev, i32 -220
  %0 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_free_urb(ptr noundef %1) #11
  %interrupt_out_urb = getelementptr i8, ptr %dev, i32 -204
  %2 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_out_urb, align 4
  tail call void @usb_free_urb(ptr noundef %3) #11
  %read_urbs = getelementptr i8, ptr %dev, i32 -172
  %bulk_in_buffers = getelementptr i8, ptr %dev, i32 -180
  %4 = ptrtoint ptr %read_urbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_urbs, align 4
  tail call void @usb_free_urb(ptr noundef %5) #11
  %6 = ptrtoint ptr %bulk_in_buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bulk_in_buffers, align 4
  tail call void @kfree(ptr noundef %7) #11
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 -168
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_free_urb(ptr noundef %9) #11
  %arrayidx4.1 = getelementptr i8, ptr %dev, i32 -176
  %10 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4.1, align 4
  tail call void @kfree(ptr noundef %11) #11
  %write_urbs = getelementptr i8, ptr %dev, i32 -120
  %bulk_out_buffers = getelementptr i8, ptr %dev, i32 -128
  %12 = ptrtoint ptr %write_urbs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_urbs, align 4
  tail call void @usb_free_urb(ptr noundef %13) #11
  %14 = ptrtoint ptr %bulk_out_buffers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bulk_out_buffers, align 4
  tail call void @kfree(ptr noundef %15) #11
  %arrayidx8.1 = getelementptr i8, ptr %dev, i32 -116
  %16 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx8.1, align 4
  tail call void @usb_free_urb(ptr noundef %17) #11
  %arrayidx9.1 = getelementptr i8, ptr %dev, i32 -124
  %18 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx9.1, align 4
  tail call void @kfree(ptr noundef %19) #11
  %add.ptr = getelementptr i8, ptr %dev, i32 -856
  %write_fifo = getelementptr i8, ptr %dev, i32 -148
  tail call void @__kfifo_free(ptr noundef %write_fifo) #11
  %interrupt_in_buffer = getelementptr i8, ptr %dev, i32 -224
  %20 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %interrupt_in_buffer, align 8
  tail call void @kfree(ptr noundef %21) #11
  %interrupt_out_buffer = getelementptr i8, ptr %dev, i32 -212
  %22 = ptrtoint ptr %interrupt_out_buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %interrupt_out_buffer, align 4
  tail call void @kfree(ptr noundef %23) #11
  %port13 = getelementptr i8, ptr %dev, i32 -852
  tail call void @tty_port_destroy(ptr noundef %port13) #11
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_port_interrupt_in(ptr noundef %port, ptr nocapture noundef readonly %epd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %type1 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %6 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %interrupt_in_urb, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %epd, i32 0, i32 4
  %7 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wMaxPacketSize.i, align 1
  %9 = and i16 %8, -249
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #11
  %and.i = zext i16 %10 to i32
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %epd, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress, align 1
  %interrupt_in_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 7
  %13 = ptrtoint ptr %interrupt_in_endpointAddress to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %interrupt_in_endpointAddress, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i, i32 noundef 3264) #16
  %interrupt_in_buffer = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 5
  %14 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i, ptr %interrupt_in_buffer, align 8
  %tobool7.not = icmp eq ptr %call9.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %15 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interrupt_in_urb, align 4
  %17 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %18 to i32
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 8
  %shl.i = shl i32 %20, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or13 = or i32 %or.i, 1073741952
  %read_int_callback = getelementptr inbounds %struct.usb_serial_driver, ptr %3, i32 0, i32 44
  %21 = ptrtoint ptr %read_int_callback to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_int_callback, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %epd, i32 0, i32 5
  %23 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bInterval, align 1
  %conv15 = zext i8 %24 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 8
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %5, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 10
  %26 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or13, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 19
  %28 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 28
  %29 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %22, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 27
  %30 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %port, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 4
  %31 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp.i = icmp eq i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp6.i = icmp ugt i32 %32, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i33, label %if.end9.usb_fill_int_urb.exit_crit_edge

if.end9.usb_fill_int_urb.exit_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit

if.then.i33:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %33 = tail call i32 @llvm.smax.i32(i32 %conv15, i32 1) #11
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 16) #11
  %sub.i = add nsw i32 %34, -1
  %shl.i32 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i33, %if.end9.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i32, %if.then.i33 ], [ %conv15, %if.end9.usb_fill_int_urb.exit_crit_edge ]
  %35 = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 25
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %interval.sink.i, ptr %35, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 23
  %37 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %start_frame.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %usb_fill_int_urb.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %usb_fill_int_urb.exit ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_port_interrupt_out(ptr noundef %port, ptr nocapture noundef readonly %epd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %type1 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %interrupt_out_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 10
  %6 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %interrupt_out_urb, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %epd, i32 0, i32 4
  %7 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wMaxPacketSize.i, align 1
  %9 = and i16 %8, -249
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #11
  %and.i = zext i16 %10 to i32
  %interrupt_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 9
  %11 = ptrtoint ptr %interrupt_out_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i, ptr %interrupt_out_size, align 8
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %epd, i32 0, i32 2
  %12 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bEndpointAddress, align 1
  %interrupt_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 11
  %14 = ptrtoint ptr %interrupt_out_endpointAddress to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %interrupt_out_endpointAddress, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i, i32 noundef 3264) #16
  %interrupt_out_buffer = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 8
  %15 = ptrtoint ptr %interrupt_out_buffer to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i, ptr %interrupt_out_buffer, align 4
  %tobool7.not = icmp eq ptr %call9.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %16 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interrupt_out_urb, align 4
  %18 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %19 to i32
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %5, align 8
  %shl.i = shl i32 %21, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, 1073741824
  %write_int_callback = getelementptr inbounds %struct.usb_serial_driver, ptr %3, i32 0, i32 45
  %22 = ptrtoint ptr %write_int_callback to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_int_callback, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %epd, i32 0, i32 5
  %24 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bInterval, align 1
  %conv14 = zext i8 %25 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 8
  %26 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %5, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 10
  %27 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 14
  %28 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 19
  %29 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 28
  %30 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %23, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 27
  %31 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %port, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 4
  %32 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i = icmp eq i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp6.i = icmp ugt i32 %33, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i34, label %if.end9.usb_fill_int_urb.exit_crit_edge

if.end9.usb_fill_int_urb.exit_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit

if.then.i34:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %34 = tail call i32 @llvm.smax.i32(i32 %conv14, i32 1) #11
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 16) #11
  %sub.i = add nsw i32 %35, -1
  %shl.i33 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i34, %if.end9.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i33, %if.then.i34 ], [ %conv14, %if.end9.usb_fill_int_urb.exit_crit_edge ]
  %36 = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 25
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %interval.sink.i, ptr %36, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 23
  %38 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %start_frame.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %usb_fill_int_urb.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %usb_fill_int_urb.exit ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @allocate_minors(ptr nocapture noundef %serial, i32 noundef %num_ports) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @allocate_minors.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@allocate_minors, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !308

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @allocate_minors.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, i32 noundef %num_ports) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_ports)
  %cmp39.not = icmp eq i32 %num_ports, 0
  br i1 %cmp39.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %if.end7.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 %i.040
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @idr_alloc(ptr noundef nonnull @serial_minors, ptr noundef %3, i32 noundef 0, i32 noundef 512, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %for.cond9.preheader, label %if.end7

for.cond9.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040)
  %cmp1041.not = icmp eq i32 %i.040, 0
  br i1 %cmp1041.not, label %for.cond9.preheader.cleanup_crit_edge, label %for.cond9.preheader.for.body12_crit_edge

for.cond9.preheader.for.body12_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body12

for.cond9.preheader.cleanup_crit_edge:            ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %for.body
  %minor8 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %minor8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call4, ptr %minor8, align 8
  %conv = trunc i32 %i.040 to i8
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %port_number to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %port_number, align 4
  %inc = add nuw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %num_ports
  br i1 %exitcond.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %do.end.for.end_crit_edge
  %minors_reserved = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 5
  %6 = ptrtoint ptr %minors_reserved to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %minors_reserved, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %minors_reserved, align 4
  br label %cleanup

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.cond9.preheader.for.body12_crit_edge
  %j.042 = phi i32 [ %inc18, %for.body12.for.body12_crit_edge ], [ 0, %for.cond9.preheader.for.body12_crit_edge ]
  %arrayidx14 = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 %j.042
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx14, align 4
  %minor15 = getelementptr inbounds %struct.usb_serial_port, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %minor15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %minor15, align 8
  %call16 = tail call ptr @idr_remove(ptr noundef nonnull @serial_minors, i32 noundef %10) #11
  %inc18 = add nuw i32 %j.042, 1
  %exitcond45.not = icmp eq i32 %inc18, %i.040
  br i1 %exitcond45.not, label %for.body12.cleanup_crit_edge, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12

for.body12.cleanup_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body12.cleanup_crit_edge, %for.end, %for.cond9.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call4, %for.cond9.preheader.cleanup_crit_edge ], [ %call4, %for.body12.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_console_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_match_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_match_one_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @store_endpoint(ptr nocapture noundef readonly %serial, ptr nocapture noundef %epds, ptr noundef %epd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %epd, i32 0, i32 2
  %2 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bEndpointAddress, align 1
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %epd, i32 0, i32 3
  %4 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bmAttributes.i.i, align 1
  %trunc = trunc i8 %5 to i2
  %6 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.124)
  switch i2 %trunc, label %entry.cleanup_crit_edge [
    i2 -2, label %usb_endpoint_is_bulk_in.exit
    i2 -1, label %usb_endpoint_is_int_in.exit
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

usb_endpoint_is_bulk_in.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  br i1 %tobool.not, label %if.then14, label %if.then

if.then:                                          ; preds = %usb_endpoint_is_bulk_in.exit
  %7 = ptrtoint ptr %epds to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %epds, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cmp = icmp eq i8 %8, 16
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @store_endpoint.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@store_endpoint, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !308

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv9 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @store_endpoint.__UNIQUE_ID_ddebug258, ptr noundef %dev1, ptr noundef nonnull @.str.84, i32 noundef %conv9) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %9 = ptrtoint ptr %epds to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %epds, align 4
  %inc = add i8 %10, 1
  store i8 %inc, ptr %epds, align 4
  %idxprom = zext i8 %10 to i32
  %arrayidx = getelementptr %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 4, i32 %idxprom
  br label %cleanup.sink.split

if.then14:                                        ; preds = %usb_endpoint_is_bulk_in.exit
  %num_bulk_out = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 1
  %11 = ptrtoint ptr %num_bulk_out to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_bulk_out, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %12)
  %cmp16 = icmp eq i8 %12, 16
  br i1 %cmp16, label %if.then14.cleanup_crit_edge, label %do.body20

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body20:                                        ; preds = %if.then14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @store_endpoint.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@store_endpoint, %if.then32)) #11
          to label %do.end36 [label %if.then32], !srcloc !308

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %conv33 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @store_endpoint.__UNIQUE_ID_ddebug259, ptr noundef %dev1, ptr noundef nonnull @.str.85, i32 noundef %conv33) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body20
  %13 = ptrtoint ptr %num_bulk_out to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_bulk_out, align 1
  %inc38 = add i8 %14, 1
  store i8 %inc38, ptr %num_bulk_out, align 1
  %idxprom39 = zext i8 %14 to i32
  %arrayidx40 = getelementptr %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 5, i32 %idxprom39
  br label %cleanup.sink.split

usb_endpoint_is_int_in.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool43.not = icmp sgt i8 %3, -1
  br i1 %tobool43.not, label %if.then74, label %if.then44

if.then44:                                        ; preds = %usb_endpoint_is_int_in.exit
  %num_interrupt_in = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 2
  %15 = ptrtoint ptr %num_interrupt_in to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_interrupt_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %16)
  %cmp46 = icmp eq i8 %16, 16
  br i1 %cmp46, label %if.then44.cleanup_crit_edge, label %do.body50

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body50:                                        ; preds = %if.then44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @store_endpoint.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@store_endpoint, %if.then62)) #11
          to label %do.end66 [label %if.then62], !srcloc !308

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  %conv63 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @store_endpoint.__UNIQUE_ID_ddebug260, ptr noundef %dev1, ptr noundef nonnull @.str.86, i32 noundef %conv63) #11
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %do.body50
  %17 = ptrtoint ptr %num_interrupt_in to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_interrupt_in, align 2
  %inc68 = add i8 %18, 1
  store i8 %inc68, ptr %num_interrupt_in, align 2
  %idxprom69 = zext i8 %18 to i32
  %arrayidx70 = getelementptr %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 6, i32 %idxprom69
  br label %cleanup.sink.split

if.then74:                                        ; preds = %usb_endpoint_is_int_in.exit
  %num_interrupt_out = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 3
  %19 = ptrtoint ptr %num_interrupt_out to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_interrupt_out, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %20)
  %cmp76 = icmp eq i8 %20, 16
  br i1 %cmp76, label %if.then74.cleanup_crit_edge, label %do.body80

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body80:                                        ; preds = %if.then74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @store_endpoint.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@store_endpoint, %if.then92)) #11
          to label %do.end96 [label %if.then92], !srcloc !308

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #13
  %conv93 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @store_endpoint.__UNIQUE_ID_ddebug261, ptr noundef %dev1, ptr noundef nonnull @.str.87, i32 noundef %conv93) #11
  br label %do.end96

do.end96:                                         ; preds = %if.then92, %do.body80
  %21 = ptrtoint ptr %num_interrupt_out to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_interrupt_out, align 1
  %inc98 = add i8 %22, 1
  store i8 %inc98, ptr %num_interrupt_out, align 1
  %idxprom99 = zext i8 %22 to i32
  %arrayidx100 = getelementptr %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 7, i32 %idxprom99
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end96, %do.end66, %do.end36, %do.end
  %arrayidx.sink = phi ptr [ %arrayidx, %do.end ], [ %arrayidx70, %do.end66 ], [ %arrayidx100, %do.end96 ], [ %arrayidx40, %do.end36 ]
  %23 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %epd, ptr %arrayidx.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then74.cleanup_crit_edge, %if.then44.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_port_carrier_raised(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %port, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %carrier_raised = getelementptr inbounds %struct.usb_serial_driver, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %carrier_raised to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %carrier_raised, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %5(ptr noundef %add.ptr) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_port_dtr_rts(ptr noundef %port, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %port, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %dtr_rts = getelementptr inbounds %struct.usb_serial_driver, ptr %3, i32 0, i32 41
  %4 = ptrtoint ptr %dtr_rts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dtr_rts, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %5(ptr noundef %add.ptr, i32 noundef %on) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_port_shutdown(ptr noundef %tport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %tport, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %close = getelementptr inbounds %struct.usb_serial_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %close, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %5(ptr noundef %add.ptr) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %interface = getelementptr inbounds %struct.usb_serial, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interface, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %9) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_port_activate(ptr noundef %tport, ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %tport, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %disc_mutex = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #11
  %disconnected = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %if.then13.thread

if.then13.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %disc_mutex) #11
  br label %if.end15

if.end:                                           ; preds = %entry
  %interface = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %interface, align 4
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %type = getelementptr inbounds %struct.usb_serial, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type, align 4
  %open = getelementptr inbounds %struct.usb_serial_driver, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %open, align 4
  %call7 = tail call i32 %10(ptr noundef %tty, ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %out_unlock.thread29, label %if.then9

out_unlock.thread29:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %disc_mutex) #11
  br label %if.end15

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interface, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %12) #11
  br label %out_unlock

out_unlock:                                       ; preds = %if.then9, %if.end.out_unlock_crit_edge
  %retval2.0 = phi i32 [ %call, %if.end.out_unlock_crit_edge ], [ %call7, %if.then9 ]
  tail call void @mutex_unlock(ptr noundef %disc_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.0)
  %cmp = icmp slt i32 %retval2.0, 0
  br i1 %cmp, label %if.then13, label %out_unlock.if.end15_crit_edge

out_unlock.if.end15_crit_edge:                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %out_unlock
  %13 = zext i32 %retval2.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %retval2.0, label %sw.default.i [
    i32 -95, label %if.then13.if.end15_crit_edge
    i32 -12, label %if.then13.if.end15_crit_edge33
    i32 -19, label %if.then13.if.end15_crit_edge34
  ]

if.then13.if.end15_crit_edge34:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13.if.end15_crit_edge33:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

sw.default.i:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %sw.default.i, %if.then13.if.end15_crit_edge, %if.then13.if.end15_crit_edge33, %if.then13.if.end15_crit_edge34, %out_unlock.if.end15_crit_edge, %out_unlock.thread29, %if.then13.thread
  %retval2.1 = phi i32 [ %retval2.0, %out_unlock.if.end15_crit_edge ], [ 0, %out_unlock.thread29 ], [ -5, %sw.default.i ], [ %retval2.0, %if.then13.if.end15_crit_edge ], [ %retval2.0, %if.then13.if.end15_crit_edge33 ], [ %retval2.0, %if.then13.if.end15_crit_edge34 ], [ -19, %if.then13.thread ]
  ret i32 %retval2.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_number_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port_number = getelementptr i8, ptr %dev, i32 -228
  %0 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_number, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.90, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_console_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_serial_operations_init(ptr noundef %device) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %open, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.do.body9_crit_edge

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @usb_serial_generic_open, ptr %open, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_operations_init, %if.then6)) #11
          to label %do.body9 [label %if.then6], !srcloc !308

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %driver = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 3
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_serial_operations_init.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.103, ptr noundef %4) #11
  br label %do.body9

do.body9:                                         ; preds = %if.then6, %if.then, %entry.do.body9_crit_edge
  %write = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 25
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %if.then11, label %do.body9.do.body32_crit_edge

do.body9.do.body32_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

if.then11:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @usb_serial_generic_write, ptr %write, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_operations_init, %if.then25)) #11
          to label %do.body32 [label %if.then25], !srcloc !308

if.then25:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %driver26 = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 3
  %8 = ptrtoint ptr %driver26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver26, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_serial_operations_init.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.105, ptr noundef %9) #11
  br label %do.body32

do.body32:                                        ; preds = %if.then25, %if.then11, %do.body9.do.body32_crit_edge
  %close = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 24
  %10 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %close, align 4
  %tobool33.not = icmp eq ptr %11, null
  br i1 %tobool33.not, label %if.then34, label %do.body32.do.body55_crit_edge

do.body32.do.body55_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

if.then34:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @usb_serial_generic_close, ptr %close, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_operations_init, %if.then48)) #11
          to label %do.body55 [label %if.then48], !srcloc !308

if.then48:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %driver49 = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 3
  %13 = ptrtoint ptr %driver49 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver49, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_serial_operations_init.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.107, ptr noundef %14) #11
  br label %do.body55

do.body55:                                        ; preds = %if.then48, %if.then34, %do.body32.do.body55_crit_edge
  %write_room = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 26
  %15 = ptrtoint ptr %write_room to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_room, align 4
  %tobool56.not = icmp eq ptr %16, null
  br i1 %tobool56.not, label %if.then57, label %do.body55.do.body78_crit_edge

do.body55.do.body78_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body78

if.then57:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %write_room to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @usb_serial_generic_write_room, ptr %write_room, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_operations_init, %if.then71)) #11
          to label %do.body78 [label %if.then71], !srcloc !308

if.then71:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %driver72 = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 3
  %18 = ptrtoint ptr %driver72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver72, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_serial_operations_init.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.109, ptr noundef %19) #11
  br label %do.body78

do.body78:                                        ; preds = %if.then71, %if.then57, %do.body55.do.body78_crit_edge
  %chars_in_buffer = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 32
  %20 = ptrtoint ptr %chars_in_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chars_in_buffer, align 4
  %tobool79.not = icmp eq ptr %21, null
  br i1 %tobool79.not, label %if.then80, label %do.body78.do.end100_crit_edge

do.body78.do.end100_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end100

if.then80:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %chars_in_buffer to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @usb_serial_generic_chars_in_buffer, ptr %chars_in_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_operations_init, %if.then94)) #11
          to label %do.end100 [label %if.then94], !srcloc !308

if.then94:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  %driver95 = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 3
  %23 = ptrtoint ptr %driver95 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver95, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_serial_operations_init.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.111, ptr noundef %24) #11
  br label %do.end100

do.end100:                                        ; preds = %if.then94, %if.then80, %do.body78.do.end100_crit_edge
  %tx_empty = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 34
  %25 = ptrtoint ptr %tx_empty to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_empty, align 4
  %tobool101.not = icmp eq ptr %26, null
  br i1 %tobool101.not, label %do.end100.do.body127_crit_edge, label %do.body103

do.end100.do.body127_crit_edge:                   ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127

do.body103:                                       ; preds = %do.end100
  %wait_until_sent = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 33
  %27 = ptrtoint ptr %wait_until_sent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wait_until_sent, align 4
  %tobool104.not = icmp eq ptr %28, null
  br i1 %tobool104.not, label %if.then105, label %do.body103.do.body127_crit_edge

do.body103.do.body127_crit_edge:                  ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127

if.then105:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %wait_until_sent to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @usb_serial_generic_wait_until_sent, ptr %wait_until_sent, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_operations_init, %if.then119)) #11
          to label %do.body127 [label %if.then119], !srcloc !308

if.then119:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #13
  %driver120 = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 3
  %30 = ptrtoint ptr %driver120 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver120, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_serial_operations_init.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.113, ptr noundef %31) #11
  br label %do.body127

do.body127:                                       ; preds = %if.then119, %if.then105, %do.body103.do.body127_crit_edge, %do.end100.do.body127_crit_edge
  %read_bulk_callback = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 46
  %32 = ptrtoint ptr %read_bulk_callback to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_bulk_callback, align 4
  %tobool128.not = icmp eq ptr %33, null
  br i1 %tobool128.not, label %if.then129, label %do.body127.do.body150_crit_edge

do.body127.do.body150_crit_edge:                  ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body150

if.then129:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %read_bulk_callback to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @usb_serial_generic_read_bulk_callback, ptr %read_bulk_callback, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_operations_init, %if.then143)) #11
          to label %do.body150 [label %if.then143], !srcloc !308

if.then143:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #13
  %driver144 = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 3
  %35 = ptrtoint ptr %driver144 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver144, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_serial_operations_init.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.115, ptr noundef %36) #11
  br label %do.body150

do.body150:                                       ; preds = %if.then143, %if.then129, %do.body127.do.body150_crit_edge
  %write_bulk_callback = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 47
  %37 = ptrtoint ptr %write_bulk_callback to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_bulk_callback, align 4
  %tobool151.not = icmp eq ptr %38, null
  br i1 %tobool151.not, label %if.then152, label %do.body150.do.body173_crit_edge

do.body150.do.body173_crit_edge:                  ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body173

if.then152:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %write_bulk_callback to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @usb_serial_generic_write_bulk_callback, ptr %write_bulk_callback, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_operations_init, %if.then166)) #11
          to label %do.body173 [label %if.then166], !srcloc !308

if.then166:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #13
  %driver167 = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 3
  %40 = ptrtoint ptr %driver167 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver167, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_serial_operations_init.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.117, ptr noundef %41) #11
  br label %do.body173

do.body173:                                       ; preds = %if.then166, %if.then152, %do.body150.do.body173_crit_edge
  %process_read_urb = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 48
  %42 = ptrtoint ptr %process_read_urb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %process_read_urb, align 4
  %tobool174.not = icmp eq ptr %43, null
  br i1 %tobool174.not, label %if.then175, label %do.body173.do.body196_crit_edge

do.body173.do.body196_crit_edge:                  ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body196

if.then175:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %process_read_urb to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @usb_serial_generic_process_read_urb, ptr %process_read_urb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_operations_init, %if.then189)) #11
          to label %do.body196 [label %if.then189], !srcloc !308

if.then189:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #13
  %driver190 = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 3
  %45 = ptrtoint ptr %driver190 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver190, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_serial_operations_init.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.119, ptr noundef %46) #11
  br label %do.body196

do.body196:                                       ; preds = %if.then189, %if.then175, %do.body173.do.body196_crit_edge
  %prepare_write_buffer = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 49
  %47 = ptrtoint ptr %prepare_write_buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prepare_write_buffer, align 4
  %tobool197.not = icmp eq ptr %48, null
  br i1 %tobool197.not, label %if.then198, label %do.body196.do.end218_crit_edge

do.body196.do.end218_crit_edge:                   ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end218

if.then198:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %prepare_write_buffer to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @usb_serial_generic_prepare_write_buffer, ptr %prepare_write_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_operations_init, %if.then212)) #11
          to label %do.end218 [label %if.then212], !srcloc !308

if.then212:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #13
  %driver213 = getelementptr inbounds %struct.usb_serial_driver, ptr %device, i32 0, i32 3
  %50 = ptrtoint ptr %driver213 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver213, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_serial_operations_init.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.121, ptr noundef %51) #11
  br label %do.end218

do.end218:                                        ; preds = %if.then212, %if.then198, %do.body196.do.end218_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_close(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_write_room(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_chars_in_buffer(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_wait_until_sent(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_read_bulk_callback(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_write_bulk_callback(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_process_read_urb(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_prepare_write_buffer(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_bus_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !178, !180, !182, !183, !185, !186, !187, !189, !191, !192, !194, !195, !196, !198, !199, !201, !202, !203, !205, !206, !208, !209, !211, !212, !214, !216, !217, !219, !220, !222, !224, !225, !227, !229, !230, !231, !233, !234, !235, !236, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292}
!llvm.module.flags = !{!293, !294, !295, !296, !297, !298, !299, !300}
!llvm.ident = !{!301}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/usb-serial.c", i32 134, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usb_serial_claim_interface._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @usb_serial_claim_interface._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_usb_serial_claim_interface, !9, !"__ksymtab_usb_serial_claim_interface", i1 false, i1 false}
!9 = !{!"../drivers/usb/serial/usb-serial.c", i32 143, i32 1}
!10 = !{ptr @__ksymtab_usb_serial_port_softint, !11, !"__ksymtab_usb_serial_port_softint", i1 false, i1 false}
!11 = !{!"../drivers/usb/serial/usb-serial.c", i32 625, i32 1}
!12 = !{ptr @__ksymtab_usb_serial_suspend, !13, !"__ksymtab_usb_serial_suspend", i1 false, i1 false}
!13 = !{!"../drivers/usb/serial/usb-serial.c", i32 1244, i32 1}
!14 = !{ptr @__ksymtab_usb_serial_resume, !15, !"__ksymtab_usb_serial_resume", i1 false, i1 false}
!15 = !{!"../drivers/usb/serial/usb-serial.c", i32 1272, i32 1}
!16 = !{ptr @__initcall__kmod_usbserial__278_1388_usb_serial_init6, !17, !"__initcall__kmod_usbserial__278_1388_usb_serial_init6", i1 false, i1 false}
!17 = !{!"../drivers/usb/serial/usb-serial.c", i32 1388, i32 1}
!18 = !{ptr @__exitcall_usb_serial_exit, !19, !"__exitcall_usb_serial_exit", i1 false, i1 false}
!19 = !{!"../drivers/usb/serial/usb-serial.c", i32 1389, i32 1}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/usb-serial.c", i32 1511, i32 7}
!22 = !{ptr @__ksymtab_usb_serial_register_drivers, !23, !"__ksymtab_usb_serial_register_drivers", i1 false, i1 false}
!23 = !{!"../drivers/usb/serial/usb-serial.c", i32 1535, i32 1}
!24 = !{ptr @__ksymtab_usb_serial_deregister_drivers, !25, !"__ksymtab_usb_serial_deregister_drivers", i1 false, i1 false}
!25 = !{!"../drivers/usb/serial/usb-serial.c", i32 1554, i32 1}
!26 = !{ptr @__UNIQUE_ID_author289, !27, !"__UNIQUE_ID_author289", i1 false, i1 false}
!27 = !{!"../drivers/usb/serial/usb-serial.c", i32 1556, i32 1}
!28 = !{ptr @__UNIQUE_ID_description290, !29, !"__UNIQUE_ID_description290", i1 false, i1 false}
!29 = !{!"../drivers/usb/serial/usb-serial.c", i32 1557, i32 1}
!30 = !{ptr @__UNIQUE_ID_file291, !31, !"__UNIQUE_ID_file291", i1 false, i1 false}
!31 = !{!"../drivers/usb/serial/usb-serial.c", i32 1558, i32 1}
!32 = !{ptr @__UNIQUE_ID_license292, !31, !"__UNIQUE_ID_license292", i1 false, i1 false}
!33 = !{ptr @usb_serial_tty_driver, !34, !"usb_serial_tty_driver", i1 false, i1 false}
!34 = !{!"../drivers/usb/serial/usb-serial.c", i32 1319, i32 20}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/usb-serial.c", i32 53, i32 8}
!37 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @table_lock, !36, !"table_lock", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/serial/usb-serial.c", i32 52, i32 8}
!41 = !{ptr @serial_minors, !40, !"serial_minors", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/serial/usb-serial.c", i32 1333, i32 3}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @usb_serial_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @usb_serial_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/usb-serial.c", i32 1338, i32 32}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/serial/usb-serial.c", i32 1351, i32 3}
!51 = !{ptr @usb_serial_init._entry.12, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @usb_serial_init._entry_ptr.14, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/serial/usb-serial.c", i32 1358, i32 3}
!55 = !{ptr @usb_serial_init._entry.15, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @usb_serial_init._entry_ptr.17, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/serial/usb-serial.c", i32 1369, i32 2}
!59 = !{ptr @usb_serial_init._entry.18, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @usb_serial_init._entry_ptr.20, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @serial_ops, !62, !"serial_ops", i1 false, i1 false}
!62 = !{!"../drivers/usb/serial/usb-serial.c", i32 1295, i32 36}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/serial/usb-serial.c", i32 287, i32 2}
!65 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @serial_open.__UNIQUE_ID_ddebug239, !64, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/serial/usb-serial.c", i32 327, i32 2}
!69 = !{ptr @serial_close.__UNIQUE_ID_ddebug241, !68, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/serial/usb-serial.c", i32 347, i32 2}
!72 = !{ptr @serial_cleanup.__UNIQUE_ID_ddebug242, !71, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/usb-serial.c", i32 373, i32 2}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @serial_write.__UNIQUE_ID_ddebug243, !74, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/serial/usb-serial.c", i32 386, i32 2}
!79 = !{ptr @serial_write_room.__UNIQUE_ID_ddebug244, !78, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/serial/usb-serial.c", i32 396, i32 2}
!82 = !{ptr @serial_chars_in_buffer.__UNIQUE_ID_ddebug245, !81, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/serial/usb-serial.c", i32 507, i32 2}
!85 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @serial_ioctl.__UNIQUE_ID_ddebug249, !84, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/serial/usb-serial.c", i32 526, i32 2}
!89 = !{ptr @serial_set_termios.__UNIQUE_ID_ddebug250, !88, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/serial/usb-serial.c", i32 424, i32 2}
!92 = !{ptr @serial_throttle.__UNIQUE_ID_ddebug247, !91, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/serial/usb-serial.c", i32 434, i32 2}
!95 = !{ptr @serial_unthrottle.__UNIQUE_ID_ddebug248, !94, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/serial/usb-serial.c", i32 318, i32 2}
!98 = !{ptr @serial_hangup.__UNIQUE_ID_ddebug240, !97, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/serial/usb-serial.c", i32 538, i32 2}
!101 = !{ptr @serial_break.__UNIQUE_ID_ddebug251, !100, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/serial/usb-serial.c", i32 409, i32 2}
!104 = !{ptr @serial_wait_until_sent.__UNIQUE_ID_ddebug246, !103, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/serial/usb-serial.c", i32 585, i32 2}
!107 = !{ptr @serial_tiocmget.__UNIQUE_ID_ddebug252, !106, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/serial/usb-serial.c", i32 597, i32 2}
!110 = !{ptr @serial_tiocmset.__UNIQUE_ID_ddebug253, !109, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/serial/usb-serial.c", i32 609, i32 2}
!113 = !{ptr @serial_get_icount.__UNIQUE_ID_ddebug254, !112, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!114 = !{ptr @.str.40, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/serial/usb-serial.c", i32 553, i32 14}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/serial/usb-serial.c", i32 560, i32 17}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/serial/usb-serial.c", i32 562, i32 18}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/serial/usb-serial.c", i32 563, i32 5}
!122 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/serial/usb-serial.c", i32 564, i32 17}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/serial/usb-serial.c", i32 566, i32 17}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/serial/usb-serial.c", i32 569, i32 17}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/serial/usb-serial.c", i32 570, i32 17}
!130 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/serial/usb-serial.c", i32 572, i32 17}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/linux/usb.h", i32 912, i32 31}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/serial/usb-serial.c", i32 979, i32 3}
!136 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @usb_serial_probe.__UNIQUE_ID_ddebug264, !135, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/serial/usb-serial.c", i32 985, i32 3}
!140 = !{ptr @usb_serial_probe._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @usb_serial_probe._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/serial/usb-serial.c", i32 1004, i32 4}
!144 = !{ptr @usb_serial_probe.__UNIQUE_ID_ddebug265, !143, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/serial/usb-serial.c", i32 1024, i32 3}
!147 = !{ptr @usb_serial_probe._entry.54, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @usb_serial_probe._entry_ptr.56, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/serial/usb-serial.c", i32 1040, i32 3}
!151 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @usb_serial_probe._entry.57, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @usb_serial_probe._entry_ptr.60, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/serial/usb-serial.c", i32 1051, i32 2}
!156 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @usb_serial_probe._entry.61, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @usb_serial_probe._entry_ptr.64, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/serial/usb-serial.c", i32 1062, i32 2}
!161 = !{ptr @usb_serial_probe.__UNIQUE_ID_ddebug274, !160, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!162 = !{ptr @usb_serial_probe.__key, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/usb/serial/usb-serial.c", i32 1072, i32 3}
!164 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @usb_serial_probe.__key.67, !166, !"__key", i1 false, i1 false}
!166 = !{!"../drivers/usb/serial/usb-serial.c", i32 1075, i32 3}
!167 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/serial/usb-serial.c", i32 1107, i32 3}
!170 = !{ptr @usb_serial_probe.__UNIQUE_ID_ddebug275, !169, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!171 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/serial/usb-serial.c", i32 1118, i32 3}
!173 = !{ptr @usb_serial_probe.__UNIQUE_ID_ddebug276, !172, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/serial/usb-serial.c", i32 1141, i32 3}
!176 = !{ptr @usb_serial_probe._entry.71, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @usb_serial_probe._entry_ptr.73, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/serial/usb-serial.c", i32 1148, i32 28}
!180 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/serial/usb-serial.c", i32 1149, i32 3}
!182 = !{ptr @usb_serial_probe.__UNIQUE_ID_ddebug277, !181, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!183 = !{ptr @.str.77, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/serial/usb-serial.c", i32 1154, i32 4}
!185 = !{ptr @usb_serial_probe._entry.76, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @usb_serial_probe._entry_ptr.78, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @usb_serial_driver_list, !188, !"usb_serial_driver_list", i1 false, i1 false}
!188 = !{!"../drivers/usb/serial/usb-serial.c", i32 54, i32 8}
!189 = !{ptr @create_serial.__key, !190, !"__key", i1 false, i1 false}
!190 = !{!"../drivers/usb/serial/usb-serial.c", i32 698, i32 2}
!191 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.80, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/serial/usb-serial.c", i32 727, i32 3}
!194 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @get_iface_id.__UNIQUE_ID_ddebug256, !193, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!196 = !{ptr @.str.82, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/serial/usb-serial.c", i32 732, i32 3}
!198 = !{ptr @get_iface_id.__UNIQUE_ID_ddebug257, !197, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!199 = !{ptr @.str.83, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/serial/usb-serial.c", i32 808, i32 3}
!201 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @store_endpoint.__UNIQUE_ID_ddebug258, !200, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!203 = !{ptr @.str.85, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/serial/usb-serial.c", i32 813, i32 3}
!205 = !{ptr @store_endpoint.__UNIQUE_ID_ddebug259, !204, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!206 = !{ptr @.str.86, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/serial/usb-serial.c", i32 818, i32 3}
!208 = !{ptr @store_endpoint.__UNIQUE_ID_ddebug260, !207, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!209 = !{ptr @.str.87, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/serial/usb-serial.c", i32 823, i32 3}
!211 = !{ptr @store_endpoint.__UNIQUE_ID_ddebug261, !210, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!212 = !{ptr @serial_port_ops, !213, !"serial_port_ops", i1 false, i1 false}
!213 = !{!"../drivers/usb/serial/usb-serial.c", i32 791, i32 41}
!214 = !{ptr @.str.88, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/serial/usb-serial.c", i32 666, i32 2}
!216 = !{ptr @usb_serial_port_release.__UNIQUE_ID_ddebug255, !215, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!217 = !{ptr @usb_serial_port_groups, !218, !"usb_serial_port_groups", i1 false, i1 false}
!218 = !{!"../drivers/usb/serial/usb-serial.c", i32 789, i32 1}
!219 = !{ptr @usb_serial_port_group, !218, !"usb_serial_port_group", i1 false, i1 false}
!220 = !{ptr @usb_serial_port_attrs, !221, !"usb_serial_port_attrs", i1 false, i1 false}
!221 = !{!"../drivers/usb/serial/usb-serial.c", i32 785, i32 26}
!222 = !{ptr @.str.89, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/serial/usb-serial.c", i32 783, i32 8}
!224 = !{ptr @dev_attr_port_number, !223, !"dev_attr_port_number", i1 false, i1 false}
!225 = !{ptr @.str.90, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/serial/usb-serial.c", i32 781, i32 22}
!227 = !{ptr @.str.91, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/usb/serial/usb-serial.c", i32 90, i32 2}
!229 = !{ptr @.str.92, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @allocate_minors.__UNIQUE_ID_ddebug238, !228, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!231 = !{ptr @.str.93, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/serial/usb-serial.c", i32 1214, i32 2}
!233 = !{ptr @.str.94, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @usb_serial_disconnect._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @usb_serial_disconnect._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.95, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/usb/serial/usb-serial.c", i32 1425, i32 3}
!238 = !{ptr @.str.96, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/usb/serial/usb-serial.c", i32 1441, i32 3}
!240 = !{ptr @.str.97, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @usb_serial_register._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @usb_serial_register._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.99, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/serial/usb-serial.c", i32 1444, i32 3}
!245 = !{ptr @usb_serial_register._entry.98, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @usb_serial_register._entry_ptr.100, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.101, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/usb/serial/usb-serial.c", i32 1402, i32 2}
!249 = !{ptr @.str.102, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug279, !248, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!251 = !{ptr @.str.103, !248, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.104, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/serial/usb-serial.c", i32 1403, i32 2}
!254 = !{ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug280, !253, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!255 = !{ptr @.str.105, !253, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.106, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/serial/usb-serial.c", i32 1404, i32 2}
!258 = !{ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug281, !257, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!259 = !{ptr @.str.107, !257, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.108, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/usb/serial/usb-serial.c", i32 1405, i32 2}
!262 = !{ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug282, !261, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!263 = !{ptr @.str.109, !261, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.110, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/usb/serial/usb-serial.c", i32 1406, i32 2}
!266 = !{ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug283, !265, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!267 = !{ptr @.str.111, !265, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.112, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/usb/serial/usb-serial.c", i32 1408, i32 3}
!270 = !{ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug284, !269, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!271 = !{ptr @.str.113, !269, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.114, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/usb/serial/usb-serial.c", i32 1409, i32 2}
!274 = !{ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug285, !273, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!275 = !{ptr @.str.115, !273, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.116, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/usb/serial/usb-serial.c", i32 1410, i32 2}
!278 = !{ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug286, !277, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!279 = !{ptr @.str.117, !277, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.118, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/serial/usb-serial.c", i32 1411, i32 2}
!282 = !{ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug287, !281, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!283 = !{ptr @.str.119, !281, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.120, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/usb/serial/usb-serial.c", i32 1412, i32 2}
!286 = !{ptr @usb_serial_operations_init.__UNIQUE_ID_ddebug288, !285, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!287 = !{ptr @.str.121, !285, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.122, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/usb/serial/usb-serial.c", i32 1452, i32 2}
!290 = !{ptr @.str.123, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @usb_serial_deregister._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @usb_serial_deregister._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{i32 1, !"wchar_size", i32 2}
!294 = !{i32 1, !"min_enum_size", i32 4}
!295 = !{i32 8, !"branch-target-enforcement", i32 0}
!296 = !{i32 8, !"sign-return-address", i32 0}
!297 = !{i32 8, !"sign-return-address-all", i32 0}
!298 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!299 = !{i32 7, !"uwtable", i32 1}
!300 = !{i32 7, !"frame-pointer", i32 2}
!301 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!302 = !{i64 2148251017, i64 2148251049, i64 2148251078, i64 2148251112, i64 2148251143, i64 2148251166}
!303 = !{!"branch_weights", i32 1, i32 2000}
!304 = !{!"branch_weights", i32 2000, i32 1}
!305 = !{i64 2148339018}
!306 = !{i64 2148253482, i64 2148253514, i64 2148253543, i64 2148253577, i64 2148253608, i64 2148253631}
!307 = !{i64 2149907607}
!308 = !{i64 2148731302, i64 2148731307, i64 2148731320, i64 2148731364, i64 2148731398, i64 2148731419}
