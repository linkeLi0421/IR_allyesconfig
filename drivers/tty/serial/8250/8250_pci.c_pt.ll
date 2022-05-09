; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_pci.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pciserial_init_ports\22, \22a\22\09"
module asm "\09.weak\09__crc_pciserial_init_ports\09\09\09\09"
module asm "\09.long\09__crc_pciserial_init_ports\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pciserial_init_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22pciserial_init_ports\22\09\09\09\09\09"
module asm "__kstrtabns_pciserial_init_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pciserial_remove_ports\22, \22a\22\09"
module asm "\09.weak\09__crc_pciserial_remove_ports\09\09\09\09"
module asm "\09.long\09__crc_pciserial_remove_ports\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pciserial_remove_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22pciserial_remove_ports\22\09\09\09\09\09"
module asm "__kstrtabns_pciserial_remove_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pciserial_suspend_ports\22, \22a\22\09"
module asm "\09.weak\09__crc_pciserial_suspend_ports\09\09\09\09"
module asm "\09.long\09__crc_pciserial_suspend_ports\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pciserial_suspend_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22pciserial_suspend_ports\22\09\09\09\09\09"
module asm "__kstrtabns_pciserial_suspend_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pciserial_resume_ports\22, \22a\22\09"
module asm "\09.weak\09__crc_pciserial_resume_ports\09\09\09\09"
module asm "\09.long\09__crc_pciserial_resume_ports\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pciserial_resume_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22pciserial_resume_ports\22\09\09\09\09\09"
module asm "__kstrtabns_pciserial_resume_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_serial_quirk = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.timedia_struct = type { i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pciserial_board = type { i32, i32, i32, i32, i32, i32 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.73, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.73 = type { ptr }
%struct.serial_private = type { ptr, i32, ptr, ptr, [0 x i32] }
%struct.pci_bus_region = type { i32, i32 }
%struct.f815xxa_data = type { %struct.spinlock, i32 }

@pci_use_msi = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 38672, i32 39168, i32 40960, i32 4096, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 38672, i32 39186, i32 40960, i32 4096, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 38672, i32 39202, i32 40960, i32 4096, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5520, i32 894, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pciserial_init_ports.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 3, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"8250_pci\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pciserial_init_ports\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/tty/serial/8250/8250_pci.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Using MSI(-X) interrupts\0A\00", [38 x i8] zeroinitializer }, align 32
@pciserial_init_ports.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 3, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Using legacy interrupts\0A\00", [39 x i8] zeroinitializer }, align 32
@pciserial_init_ports.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 3, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Setup PCI port: port %lx, irq %d, type %d\0A\00", [53 x i8] zeroinitializer }, align 32
@pciserial_init_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 3743, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Couldn't register serial port %lx, irq %d, type %d, error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pciserial_init_ports._entry_ptr = internal global ptr @pciserial_init_ports._entry, section ".printk_index", align 4
@__kstrtab_pciserial_init_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_pciserial_init_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_pciserial_init_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pciserial_init_ports to i32), ptr @__kstrtab_pciserial_init_ports, ptr @__kstrtabns_pciserial_init_ports }, section "___ksymtab_gpl+pciserial_init_ports", align 4
@__kstrtab_pciserial_remove_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_pciserial_remove_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_pciserial_remove_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pciserial_remove_ports to i32), ptr @__kstrtab_pciserial_remove_ports, ptr @__kstrtabns_pciserial_remove_ports }, section "___ksymtab_gpl+pciserial_remove_ports", align 4
@__kstrtab_pciserial_suspend_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_pciserial_suspend_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_pciserial_suspend_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pciserial_suspend_ports to i32), ptr @__kstrtab_pciserial_suspend_ports, ptr @__kstrtabns_pciserial_suspend_ports }, section "___ksymtab_gpl+pciserial_suspend_ports", align 4
@__kstrtab_pciserial_resume_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_pciserial_resume_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_pciserial_resume_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pciserial_resume_ports to i32), ptr @__kstrtab_pciserial_resume_ports, ptr @__kstrtabns_pciserial_resume_ports }, section "___ksymtab_gpl+pciserial_resume_ports", align 4
@__initcall__kmod_8250_pci__246_5468_serial_pci_driver_init6 = internal global ptr @serial_pci_driver_init, section ".initcall6.init", align 4
@serial_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.41, ptr @serial_pci_tbl, ptr @pciserial_init_one, ptr @pciserial_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @serial8250_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pciserial_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_serial_pci_driver_exit = internal global ptr @serial_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file247 = internal constant [47 x i8] c"8250_pci.file=drivers/tty/serial/8250/8250_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [21 x i8] c"8250_pci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [64 x i8] c"8250_pci.description=Generic 8250/16x50 PCI serial probe module\00", section ".modinfo", align 1
@pci_serial_quirks = internal global { [76 x %struct.pci_serial_quirk], [608 x i8] } { [76 x %struct.pci_serial_quirk] [%struct.pci_serial_quirk { i32 4328, i32 33166, i32 -1, i32 -1, ptr null, ptr null, ptr @addidata_apci7800_setup, ptr null }, %struct.pci_serial_quirk { i32 5339, i32 -1, i32 -1, i32 -1, ptr null, ptr null, ptr @afavlab_setup, ptr null }, %struct.pci_serial_quirk { i32 4156, i32 4168, i32 -1, i32 -1, ptr null, ptr @pci_hp_diva_init, ptr @pci_hp_diva_setup, ptr null }, %struct.pci_serial_quirk { i32 5520, i32 894, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_hp_diva_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 6496, i32 58559, i32 -1, ptr null, ptr @pci_inteli960ni_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 4194, i32 -1, i32 -1, ptr null, ptr null, ptr @skip_tx_en_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 4239, i32 -1, i32 -1, ptr null, ptr null, ptr @skip_tx_en_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 4229, i32 -1, i32 -1, ptr null, ptr null, ptr @skip_tx_en_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 11878, i32 -1, i32 -1, ptr null, ptr null, ptr @ce4100_serial_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 7485, i32 -1, i32 -1, ptr null, ptr null, ptr @kt_serial_setup, ptr null }, %struct.pci_serial_quirk { i32 4739, i32 34930, i32 -1, i32 -1, ptr null, ptr @pci_ite887x_init, ptr @pci_default_setup, ptr @pci_ite887x_exit }, %struct.pci_serial_quirk { i32 4243, i32 53936, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53584, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53568, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53552, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53872, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53840, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53745, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53744, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53728, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53712, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53664, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53648, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_ni8430_init, ptr @pci_ni8430_setup, ptr @pci_ni8430_exit }, %struct.pci_serial_quirk { i32 4956, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_quatech_init, ptr @pci_quatech_setup, ptr null }, %struct.pci_serial_quirk { i32 5332, i32 1024, i32 -1, i32 -1, ptr null, ptr @pci_plx9050_init, ptr @pci_default_setup, ptr @pci_plx9050_exit }, %struct.pci_serial_quirk { i32 5332, i32 1026, i32 -1, i32 -1, ptr null, ptr @pci_plx9050_init, ptr @pci_default_setup, ptr @pci_plx9050_exit }, %struct.pci_serial_quirk { i32 4277, i32 36944, i32 55373, i32 16469, ptr null, ptr @pci_plx9050_init, ptr @pci_default_setup, ptr @pci_plx9050_exit }, %struct.pci_serial_quirk { i32 4277, i32 36944, i32 4521, i32 21300, ptr null, ptr @pci_plx9050_init, ptr @pci_default_setup, ptr @pci_plx9050_exit }, %struct.pci_serial_quirk { i32 4277, i32 4202, i32 4277, i32 4202, ptr null, ptr @pci_plx9050_init, ptr @pci_default_setup, ptr @pci_plx9050_exit }, %struct.pci_serial_quirk { i32 4683, i32 1, i32 4683, i32 264, ptr null, ptr @sbs_init, ptr @sbs_setup, ptr @sbs_exit }, %struct.pci_serial_quirk { i32 4683, i32 1, i32 4683, i32 520, ptr null, ptr @sbs_init, ptr @sbs_setup, ptr @sbs_exit }, %struct.pci_serial_quirk { i32 4683, i32 1, i32 4683, i32 776, ptr null, ptr @sbs_init, ptr @sbs_setup, ptr @sbs_exit }, %struct.pci_serial_quirk { i32 4683, i32 1, i32 4683, i32 1032, ptr null, ptr @sbs_init, ptr @sbs_setup, ptr @sbs_exit }, %struct.pci_serial_quirk { i32 4895, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_siig_init, ptr @pci_siig_setup, ptr null }, %struct.pci_serial_quirk { i32 5330, i32 32832, i32 -1, i32 -1, ptr null, ptr null, ptr @titan_400l_800l_setup, ptr null }, %struct.pci_serial_quirk { i32 5330, i32 32896, i32 -1, i32 -1, ptr null, ptr null, ptr @titan_400l_800l_setup, ptr null }, %struct.pci_serial_quirk { i32 5129, i32 29032, i32 5129, i32 -1, ptr @pci_timedia_probe, ptr @pci_timedia_init, ptr @pci_timedia_setup, ptr null }, %struct.pci_serial_quirk { i32 5129, i32 -1, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_timedia_setup, ptr null }, %struct.pci_serial_quirk { i32 8148, i32 6553, i32 8148, i32 -1, ptr null, ptr null, ptr @pci_sunix_setup, ptr null }, %struct.pci_serial_quirk { i32 4445, i32 259, i32 -1, i32 -1, ptr null, ptr @pci_xircom_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 38672, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_netmos_init, ptr @pci_netmos_9900_setup, ptr null }, %struct.pci_serial_quirk { i32 29697, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_endrun_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 5141, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_oxsemi_tornado_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 5410, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_oxsemi_tornado_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4431, i32 246, i32 4116, i32 -1, ptr null, ptr @pci_oxsemi_tornado_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 34833, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 34834, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 34835, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 34836, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4315, i32 32807, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4315, i32 32808, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4315, i32 32809, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4315, i32 32780, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4315, i32 32781, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4277, i32 49153, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_omegapci_setup, ptr null }, %struct.pci_serial_quirk { i32 17224, i32 20563, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch353_setup, ptr null }, %struct.pci_serial_quirk { i32 17224, i32 28755, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch353_setup, ptr null }, %struct.pci_serial_quirk { i32 17224, i32 13395, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch353_setup, ptr null }, %struct.pci_serial_quirk { i32 17224, i32 20550, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch353_setup, ptr null }, %struct.pci_serial_quirk { i32 17224, i32 12883, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch353_setup, ptr null }, %struct.pci_serial_quirk { i32 17224, i32 29043, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch355_setup, ptr null }, %struct.pci_serial_quirk { i32 7168, i32 12883, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch38x_setup, ptr null }, %struct.pci_serial_quirk { i32 7168, i32 12880, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch38x_setup, ptr null }, %struct.pci_serial_quirk { i32 7168, i32 13424, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch38x_setup, ptr null }, %struct.pci_serial_quirk { i32 7168, i32 14419, i32 -1, i32 -1, ptr null, ptr @pci_wch_ch38x_init, ptr @pci_wch_ch38x_setup, ptr @pci_wch_ch38x_exit }, %struct.pci_serial_quirk { i32 38672, i32 -1, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_asix_setup, ptr null }, %struct.pci_serial_quirk { i32 5348, i32 5642, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_brcm_trumanage_setup, ptr null }, %struct.pci_serial_quirk { i32 7209, i32 4356, i32 -1, i32 -1, ptr null, ptr @pci_fintek_init, ptr @pci_fintek_setup, ptr null }, %struct.pci_serial_quirk { i32 7209, i32 4360, i32 -1, i32 -1, ptr null, ptr @pci_fintek_init, ptr @pci_fintek_setup, ptr null }, %struct.pci_serial_quirk { i32 7209, i32 4370, i32 -1, i32 -1, ptr null, ptr @pci_fintek_init, ptr @pci_fintek_setup, ptr null }, %struct.pci_serial_quirk { i32 5011, i32 -1, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_moxa_setup, ptr null }, %struct.pci_serial_quirk { i32 7209, i32 4612, i32 -1, i32 -1, ptr null, ptr @pci_fintek_f815xxa_init, ptr @pci_fintek_f815xxa_setup, ptr null }, %struct.pci_serial_quirk { i32 7209, i32 4616, i32 -1, i32 -1, ptr null, ptr @pci_fintek_f815xxa_init, ptr @pci_fintek_f815xxa_setup, ptr null }, %struct.pci_serial_quirk { i32 7209, i32 4626, i32 -1, i32 -1, ptr null, ptr @pci_fintek_f815xxa_init, ptr @pci_fintek_f815xxa_setup, ptr null }, %struct.pci_serial_quirk { i32 -1, i32 -1, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_default_setup, ptr null }], [608 x i8] zeroinitializer }, align 32
@pci_inteli960ni_init.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pci_inteli960ni_init\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Local i960 firmware missing\0A\00", [35 x i8] zeroinitializer }, align 32
@skip_tx_en_setup.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 1, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"skip_tx_en_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"serial8250: skipping TxEn test for device [%04x:%04x] subsystem [%04x:%04x]\0A\00", [51 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@inta_addr = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 672, i16 704, i16 544, i16 576, i16 480, i16 512, i16 640], [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ite887x\00", [24 x i8] zeroinitializer }, align 32
@pci_ite887x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 927, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not find iobase\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_ite887x_init\00", [47 x i8] zeroinitializer }, align 32
@pci_ite887x_init._entry_ptr = internal global ptr @pci_ite887x_init._entry, section ".printk_index", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unknown ITE887x\00", [16 x i8] zeroinitializer }, align 32
@moan_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 84, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [177 x i8], [47 x i8] } { [177 x i8] c"%s\0APlease send the output of lspci -vv, this\0Amessage (0x%04x,0x%04x,0x%04x,0x%04x), the\0Amanufacturer and name of serial board or\0Amodem board to <linux-serial@vger.kernel.org>.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"moan_device\00", [20 x i8] zeroinitializer }, align 32
@moan_device._entry_ptr = internal global ptr @moan_device._entry, section ".printk_index", align 4
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no memory in bar\00", [47 x i8] zeroinitializer }, align 32
@quatech_cards = internal global { [20 x %struct.pci_device_id], [160 x i8] } { [20 x %struct.pci_device_id] [%struct.pci_device_id { i32 4956, i32 16, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 32, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 385, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 48, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 433, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 80, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 96, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 288, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 304, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 320, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 336, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 480, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 368, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 384, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 400, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 416, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 432, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 448, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 632, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [160 x i8] zeroinitializer }, align 32
@pci_quatech_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1271, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown port type '0x%04X'.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_quatech_init\00", [47 x i8] zeroinitializer }, align 32
@pci_quatech_init._entry_ptr = internal global ptr @pci_quatech_init._entry, section ".printk_index", align 4
@pci_quatech_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1297, ptr @.str.24, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"software control of RS422 features not currently supported.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_quatech_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pci_quatech_setup._entry_ptr = internal global ptr @pci_quatech_setup._entry, section ".printk_index", align 4
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no memory in bar 0\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown SIIG card\00", [46 x i8] zeroinitializer }, align 32
@pci_timedia_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 591, ptr @.str.29, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ignoring Timedia subdevice %04x for parport_serial\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_timedia_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pci_timedia_probe._entry_ptr = internal global ptr @pci_timedia_probe._entry, section ".printk_index", align 4
@timedia_data = internal constant { [4 x %struct.timedia_struct], [32 x i8] } { [4 x %struct.timedia_struct] [%struct.timedia_struct { i32 1, ptr @timedia_single_port }, %struct.timedia_struct { i32 2, ptr @timedia_dual_port }, %struct.timedia_struct { i32 4, ptr @timedia_quad_port }, %struct.timedia_struct { i32 8, ptr @timedia_eight_port }], [32 x i8] zeroinitializer }, align 32
@timedia_single_port = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 16421, i16 16423, i16 16424, i16 20517, i16 20519, i16 0], [20 x i8] zeroinitializer }, align 32
@timedia_dual_port = internal constant { [30 x i16], [36 x i8] } { [30 x i16] [i16 2, i16 16438, i16 16439, i16 16440, i16 16504, i16 16505, i16 16517, i16 16520, i16 16521, i16 20535, i16 20600, i16 20601, i16 20613, i16 24697, i16 28793, i16 -32647, i16 -32457, i16 -32456, i16 -32201, i16 -32200, i16 -28551, i16 -28361, i16 -28360, i16 -28105, i16 -28104, i16 -24455, i16 -20359, i16 -16263, i16 -12167, i16 0], [36 x i8] zeroinitializer }, align 32
@timedia_quad_port = internal constant { [23 x i16], [50 x i8] } { [23 x i16] [i16 16469, i16 16470, i16 16533, i16 16534, i16 20566, i16 -32426, i16 -32425, i16 -32170, i16 -32169, i16 -28586, i16 -28330, i16 -28329, i16 -28328, i16 -28327, i16 -28074, i16 -28073, i16 -24490, i16 -24233, i16 -24232, i16 -24231, i16 -20394, i16 -20137, i16 0], [50 x i8] zeroinitializer }, align 32
@timedia_eight_port = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 16485, i16 16486, i16 20581, i16 20582, i16 -32410, i16 -28570, i16 -28314, i16 -28313, i16 -28312, i16 -24474, i16 -24217, i16 -24216, i16 0], [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown NetMos/Mostech device\00", [34 x i8] zeroinitializer }, align 32
@pci_netmos_9900_numports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 828, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"NetMos/Mostech serial driver ignoring port on ambiguous config.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci_netmos_9900_numports\00", [39 x i8] zeroinitializer }, align 32
@pci_netmos_9900_numports._entry_ptr = internal global ptr @pci_netmos_9900_numports._entry, section ".printk_index", align 4
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unknown NetMos/Mostech program interface\00", [55 x i8] zeroinitializer }, align 32
@pci_endrun_init.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci_endrun_init\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%d ports detected on EndRun PCI Express device\0A\00", [48 x i8] zeroinitializer }, align 32
@pci_oxsemi_tornado_init.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pci_oxsemi_tornado_init\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%d ports detected on Oxford PCI Express device\0A\00", [48 x i8] zeroinitializer }, align 32
@pci_fintek_setup.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_fintek_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"idx=%d iobase=0x%x\00", [45 x i8] zeroinitializer }, align 32
@pci_fintek_f815xxa_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@serial_pci_tbl = internal constant { [359 x %struct.pci_device_id], [2848 x i8] } { [359 x %struct.pci_device_id] [%struct.pci_device_id { i32 5118, i32 13856, i32 13856, i32 1, i32 0, i32 0, i32 54, i32 0 }, %struct.pci_device_id { i32 5118, i32 13848, i32 13848, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5118, i32 63000, i32 13848, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4528, i32 1, i32 4804, i32 1, i32 0, i32 0, i32 43, i32 0 }, %struct.pci_device_id { i32 4528, i32 1, i32 4804, i32 2, i32 0, i32 0, i32 42, i32 0 }, %struct.pci_device_id { i32 4528, i32 1, i32 4804, i32 3, i32 0, i32 0, i32 41, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 1, i32 0, i32 0, i32 43, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 2, i32 0, i32 0, i32 42, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 3, i32 0, i32 0, i32 41, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 4, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 5, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 6, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 7, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 8, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 9, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 10, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 11, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 12, i32 0, i32 0, i32 35, i32 0 }, %struct.pci_device_id { i32 5141, i32 38145, i32 4804, i32 513, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 5141, i32 38145, i32 4804, i32 514, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 5141, i32 38145, i32 5339, i32 8528, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4958, i32 28929, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 4958, i32 29185, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 4958, i32 29698, i32 -1, i32 -1, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 4958, i32 29186, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 4958, i32 29697, i32 -1, i32 -1, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 4958, i32 30721, i32 -1, i32 -1, i32 0, i32 0, i32 47, i32 0 }, %struct.pci_device_id { i32 4958, i32 30723, i32 -1, i32 -1, i32 0, i32 0, i32 50, i32 0 }, %struct.pci_device_id { i32 4958, i32 30724, i32 -1, i32 -1, i32 0, i32 0, i32 47, i32 0 }, %struct.pci_device_id { i32 4277, i32 40961, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 4277, i32 4355, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 4277, i32 4214, i32 -1, i32 -1, i32 0, i32 0, i32 54, i32 0 }, %struct.pci_device_id { i32 4277, i32 4215, i32 -1, i32 -1, i32 0, i32 0, i32 53, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4277, i32 5508, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4277, i32 5512, i32 0, i32 0, i32 47, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4521, i32 21300, i32 0, i32 0, i32 67, i32 0 }, %struct.pci_device_id { i32 5332, i32 1024, i32 -1, i32 -1, i32 0, i32 0, i32 69, i32 0 }, %struct.pci_device_id { i32 5332, i32 1026, i32 -1, i32 -1, i32 0, i32 0, i32 68, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 4862, i32 273, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4832, i32 49, i32 0, i32 0, i32 49, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4832, i32 33, i32 0, i32 0, i32 50, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4832, i32 17, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4832, i32 65, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4685, i32 61441, i32 0, i32 0, i32 49, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4685, i32 61456, i32 0, i32 0, i32 50, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 55373, i32 16469, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4277, i32 4202, i32 4277, i32 4202, i32 0, i32 0, i32 70, i32 0 }, %struct.pci_device_id { i32 29697, i32 57600, i32 -1, i32 -1, i32 0, i32 0, i32 71, i32 0 }, %struct.pci_device_id { i32 4956, i32 16, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 4956, i32 32, i32 -1, i32 -1, i32 0, i32 0, i32 27, i32 0 }, %struct.pci_device_id { i32 4956, i32 385, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4956, i32 48, i32 -1, i32 -1, i32 0, i32 0, i32 27, i32 0 }, %struct.pci_device_id { i32 4956, i32 433, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4956, i32 64, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 4956, i32 80, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 4956, i32 96, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 4956, i32 288, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 4956, i32 304, i32 -1, i32 -1, i32 0, i32 0, i32 27, i32 0 }, %struct.pci_device_id { i32 4956, i32 320, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 4956, i32 336, i32 -1, i32 -1, i32 0, i32 0, i32 27, i32 0 }, %struct.pci_device_id { i32 4956, i32 368, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4956, i32 384, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4956, i32 400, i32 -1, i32 -1, i32 0, i32 0, i32 44, i32 0 }, %struct.pci_device_id { i32 4956, i32 416, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4956, i32 432, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4956, i32 448, i32 -1, i32 -1, i32 0, i32 0, i32 44, i32 0 }, %struct.pci_device_id { i32 4956, i32 480, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4555, i32 38145, i32 4555, i32 40964, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5141, i32 38145, i32 4895, i32 8272, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5141, i32 38149, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 5141, i32 38154, i32 4895, i32 9472, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5141, i32 38154, i32 4895, i32 9520, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5141, i32 38154, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 5141, i32 38155, i32 5141, i32 1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 5141, i32 38145, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5141, i32 38177, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 5141, i32 38200, i32 -1, i32 -1, i32 0, i32 0, i32 55, i32 0 }, %struct.pci_device_id { i32 5141, i32 49409, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49413, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49435, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 49439, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 49440, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49444, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49464, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 49469, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 49472, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49473, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49476, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49477, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49496, i32 -1, i32 -1, i32 0, i32 0, i32 74, i32 0 }, %struct.pci_device_id { i32 5141, i32 49501, i32 -1, i32 -1, i32 0, i32 0, i32 74, i32 0 }, %struct.pci_device_id { i32 5141, i32 49672, i32 -1, i32 -1, i32 0, i32 0, i32 75, i32 0 }, %struct.pci_device_id { i32 5141, i32 49677, i32 -1, i32 -1, i32 0, i32 0, i32 75, i32 0 }, %struct.pci_device_id { i32 5141, i32 49928, i32 -1, i32 -1, i32 0, i32 0, i32 76, i32 0 }, %struct.pci_device_id { i32 5141, i32 49933, i32 -1, i32 -1, i32 0, i32 0, i32 76, i32 0 }, %struct.pci_device_id { i32 5141, i32 50187, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50191, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50203, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50207, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50219, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50223, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50235, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50239, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50251, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50255, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50267, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50271, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50283, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50287, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50299, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50303, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50315, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50319, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50331, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50335, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50347, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50351, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50363, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50367, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50379, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50383, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5410, i32 16384, i32 5410, i32 16385, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5410, i32 16384, i32 5410, i32 16386, i32 0, i32 0, i32 74, i32 0 }, %struct.pci_device_id { i32 5410, i32 16384, i32 5410, i32 16388, i32 0, i32 0, i32 75, i32 0 }, %struct.pci_device_id { i32 5410, i32 16384, i32 5410, i32 16392, i32 0, i32 0, i32 76, i32 0 }, %struct.pci_device_id { i32 4431, i32 246, i32 4116, i32 -1, i32 0, i32 0, i32 74, i32 0 }, %struct.pci_device_id { i32 4683, i32 1, i32 4683, i32 264, i32 0, i32 0, i32 82, i32 0 }, %struct.pci_device_id { i32 4683, i32 1, i32 4683, i32 520, i32 0, i32 0, i32 82, i32 0 }, %struct.pci_device_id { i32 4683, i32 1, i32 4683, i32 776, i32 0, i32 0, i32 82, i32 0 }, %struct.pci_device_id { i32 4683, i32 1, i32 4683, i32 1032, i32 0, i32 0, i32 82, i32 0 }, %struct.pci_device_id { i32 4545, i32 1152, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 5330, i32 40961, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 5330, i32 40965, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 5330, i32 40963, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 40964, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 32784, i32 -1, i32 -1, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 5330, i32 32800, i32 -1, i32 -1, i32 0, i32 0, i32 39, i32 0 }, %struct.pci_device_id { i32 5330, i32 32832, i32 -1, i32 -1, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 5330, i32 32896, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 5330, i32 32808, i32 -1, i32 -1, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id { i32 5330, i32 32840, i32 -1, i32 -1, i32 0, i32 0, i32 65, i32 0 }, %struct.pci_device_id { i32 5330, i32 32904, i32 -1, i32 -1, i32 0, i32 0, i32 66, i32 0 }, %struct.pci_device_id { i32 5330, i32 40969, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 40967, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 40968, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 40976, i32 -1, i32 -1, i32 0, i32 0, i32 110, i32 0 }, %struct.pci_device_id { i32 5330, i32 40978, i32 -1, i32 -1, i32 0, i32 0, i32 111, i32 0 }, %struct.pci_device_id { i32 5330, i32 40979, i32 -1, i32 -1, i32 0, i32 0, i32 112, i32 0 }, %struct.pci_device_id { i32 5330, i32 40980, i32 -1, i32 -1, i32 0, i32 0, i32 113, i32 0 }, %struct.pci_device_id { i32 5330, i32 40982, i32 -1, i32 -1, i32 0, i32 0, i32 111, i32 0 }, %struct.pci_device_id { i32 5330, i32 40983, i32 -1, i32 -1, i32 0, i32 0, i32 111, i32 0 }, %struct.pci_device_id { i32 5330, i32 41734, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 5330, i32 41744, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 41746, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 41748, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 41749, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4895, i32 4096, i32 -1, i32 -1, i32 0, i32 0, i32 48, i32 0 }, %struct.pci_device_id { i32 4895, i32 4097, i32 -1, i32 -1, i32 0, i32 0, i32 48, i32 0 }, %struct.pci_device_id { i32 4895, i32 4098, i32 -1, i32 -1, i32 0, i32 0, i32 48, i32 0 }, %struct.pci_device_id { i32 4895, i32 4144, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 4895, i32 4145, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 4895, i32 4146, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 4895, i32 4176, i32 -1, i32 -1, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 4895, i32 4177, i32 -1, i32 -1, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 4895, i32 4178, i32 -1, i32 -1, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 4895, i32 8192, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4895, i32 8193, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4895, i32 8194, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4895, i32 8240, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 4895, i32 8241, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 4895, i32 8242, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 4895, i32 8272, i32 -1, i32 -1, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 4895, i32 8273, i32 -1, i32 -1, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 4895, i32 8274, i32 -1, i32 -1, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 4895, i32 8320, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 4895, i32 8321, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 4895, i32 8322, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 36366, i32 770, i32 36366, i32 1, i32 0, i32 0, i32 79, i32 0 }, %struct.pci_device_id { i32 36366, i32 770, i32 36366, i32 2, i32 0, i32 0, i32 81, i32 0 }, %struct.pci_device_id { i32 36366, i32 770, i32 36366, i32 3, i32 0, i32 0, i32 80, i32 0 }, %struct.pci_device_id { i32 5141, i32 38161, i32 -1, i32 -1, i32 0, i32 0, i32 72, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 -1, i32 0, i32 0, i32 22, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 1, i32 0, i32 0, i32 105, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 2, i32 0, i32 0, i32 106, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 4, i32 0, i32 0, i32 107, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 132, i32 0, i32 0, i32 107, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 8, i32 0, i32 0, i32 108, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 136, i32 0, i32 0, i32 108, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 16, i32 0, i32 0, i32 109, i32 0 }, %struct.pci_device_id { i32 5339, i32 8576, i32 -1, i32 -1, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 5339, i32 8578, i32 -1, i32 -1, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 5127, i32 256, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5127, i32 257, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5127, i32 258, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5127, i32 288, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5127, i32 289, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5127, i32 384, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 5127, i32 385, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 5127, i32 512, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 5127, i32 513, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 5127, i32 514, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 5127, i32 1280, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 5127, i32 1536, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 6530, i32 5632, i32 4612, i32 4, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 6530, i32 5632, i32 4616, i32 4, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 6530, i32 5887, i32 4616, i32 4, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 6530, i32 5888, i32 4612, i32 4, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 6530, i32 5888, i32 4616, i32 4, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 6530, i32 6143, i32 4616, i32 4, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4136, i32 18, i32 -1, i32 -1, i32 0, i32 0, i32 40, i32 0 }, %struct.pci_device_id { i32 4136, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 40, i32 0 }, %struct.pci_device_id { i32 5546, i32 8192, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 6496, i32 58559, i32 -1, i32 0, i32 0, i32 77, i32 0 }, %struct.pci_device_id { i32 4445, i32 259, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4445, i32 257, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4730, i32 4100, i32 4168, i32 5376, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4265, i32 3, i32 65280, i32 0, i32 0, i32 0, i32 78, i32 0 }, %struct.pci_device_id { i32 4156, i32 4168, i32 4156, i32 4865, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4156, i32 4168, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4156, i32 4752, i32 -1, i32 -1, i32 0, i32 0, i32 44, i32 0 }, %struct.pci_device_id { i32 5520, i32 894, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 26214, i32 4, i32 -1, i32 -1, i32 0, i32 0, i32 61, i32 0 }, %struct.pci_device_id { i32 26214, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 62, i32 0 }, %struct.pci_device_id { i32 26214, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 5407, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4739, i32 34930, i32 -1, i32 -1, i32 0, i32 0, i32 36, i32 0 }, %struct.pci_device_id { i32 4954, i32 3456, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 3520, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4954, i32 2977, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 2721, i32 -1, i32 -1, i32 0, i32 0, i32 44, i32 0 }, %struct.pci_device_id { i32 4954, i32 2145, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 3361, i32 -1, i32 -1, i32 459264, i32 16776960, i32 46, i32 0 }, %struct.pci_device_id { i32 4954, i32 3636, i32 -1, i32 -1, i32 459264, i32 16776960, i32 46, i32 0 }, %struct.pci_device_id { i32 4954, i32 2113, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4954, i32 2177, i32 -1, i32 -1, i32 0, i32 0, i32 47, i32 0 }, %struct.pci_device_id { i32 4954, i32 2273, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 2241, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 2211, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 2657, i32 -1, i32 -1, i32 0, i32 0, i32 44, i32 0 }, %struct.pci_device_id { i32 4954, i32 2818, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4954, i32 2689, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 2691, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 3137, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4954, i32 2337, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 5471, i32 61441, i32 0, i32 0, i32 53, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 5471, i32 61456, i32 0, i32 0, i32 54, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 512, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 768, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 1024, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 1280, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 1536, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 1792, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 2048, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 3072, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 3328, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 7424, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 8192, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 8448, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 8704, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 8960, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 9216, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 9472, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 9728, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 9984, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 12288, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 12544, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 12800, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 13056, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 13312, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 13568, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 15360, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 15616, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 6489, i32 40964, i32 -1, i32 -1, i32 0, i32 0, i32 83, i32 0 }, %struct.pci_device_id { i32 4243, i32 53936, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4243, i32 53584, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 4243, i32 53568, i32 -1, i32 -1, i32 0, i32 0, i32 38, i32 0 }, %struct.pci_device_id { i32 4243, i32 53552, i32 -1, i32 -1, i32 0, i32 0, i32 37, i32 0 }, %struct.pci_device_id { i32 4243, i32 53872, i32 -1, i32 -1, i32 0, i32 0, i32 38, i32 0 }, %struct.pci_device_id { i32 4243, i32 53840, i32 -1, i32 -1, i32 0, i32 0, i32 37, i32 0 }, %struct.pci_device_id { i32 4243, i32 53745, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4243, i32 53744, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 4243, i32 53728, i32 -1, i32 -1, i32 0, i32 0, i32 38, i32 0 }, %struct.pci_device_id { i32 4243, i32 53712, i32 -1, i32 -1, i32 0, i32 0, i32 37, i32 0 }, %struct.pci_device_id { i32 4243, i32 53664, i32 -1, i32 -1, i32 0, i32 0, i32 38, i32 0 }, %struct.pci_device_id { i32 4243, i32 53648, i32 -1, i32 -1, i32 0, i32 0, i32 37, i32 0 }, %struct.pci_device_id { i32 4243, i32 28800, i32 -1, i32 -1, i32 0, i32 0, i32 84, i32 0 }, %struct.pci_device_id { i32 4243, i32 28891, i32 -1, i32 -1, i32 0, i32 0, i32 84, i32 0 }, %struct.pci_device_id { i32 4243, i32 28893, i32 -1, i32 -1, i32 0, i32 0, i32 85, i32 0 }, %struct.pci_device_id { i32 4243, i32 28895, i32 -1, i32 -1, i32 0, i32 0, i32 85, i32 0 }, %struct.pci_device_id { i32 4243, i32 28898, i32 -1, i32 -1, i32 0, i32 0, i32 86, i32 0 }, %struct.pci_device_id { i32 4243, i32 28900, i32 -1, i32 -1, i32 0, i32 0, i32 86, i32 0 }, %struct.pci_device_id { i32 4243, i32 28902, i32 -1, i32 -1, i32 0, i32 0, i32 87, i32 0 }, %struct.pci_device_id { i32 4243, i32 28903, i32 -1, i32 -1, i32 0, i32 0, i32 87, i32 0 }, %struct.pci_device_id { i32 4243, i32 28904, i32 -1, i32 -1, i32 0, i32 0, i32 84, i32 0 }, %struct.pci_device_id { i32 4243, i32 28906, i32 -1, i32 -1, i32 0, i32 0, i32 84, i32 0 }, %struct.pci_device_id { i32 4243, i32 28908, i32 -1, i32 -1, i32 0, i32 0, i32 85, i32 0 }, %struct.pci_device_id { i32 4243, i32 28910, i32 -1, i32 -1, i32 0, i32 0, i32 85, i32 0 }, %struct.pci_device_id { i32 5011, i32 4132, i32 -1, i32 -1, i32 0, i32 0, i32 114, i32 0 }, %struct.pci_device_id { i32 5011, i32 4133, i32 -1, i32 -1, i32 0, i32 0, i32 114, i32 0 }, %struct.pci_device_id { i32 5011, i32 4165, i32 -1, i32 -1, i32 0, i32 0, i32 115, i32 0 }, %struct.pci_device_id { i32 5011, i32 4420, i32 -1, i32 -1, i32 0, i32 0, i32 115, i32 0 }, %struct.pci_device_id { i32 5011, i32 4448, i32 -1, i32 -1, i32 0, i32 0, i32 116, i32 0 }, %struct.pci_device_id { i32 5011, i32 4449, i32 -1, i32 -1, i32 0, i32 0, i32 116, i32 0 }, %struct.pci_device_id { i32 5011, i32 4482, i32 -1, i32 -1, i32 0, i32 0, i32 116, i32 0 }, %struct.pci_device_id { i32 5011, i32 4483, i32 -1, i32 -1, i32 0, i32 0, i32 116, i32 0 }, %struct.pci_device_id { i32 5011, i32 4898, i32 -1, i32 -1, i32 0, i32 0, i32 114, i32 0 }, %struct.pci_device_id { i32 5011, i32 4930, i32 -1, i32 -1, i32 0, i32 0, i32 115, i32 0 }, %struct.pci_device_id { i32 5011, i32 4993, i32 -1, i32 -1, i32 0, i32 0, i32 116, i32 0 }, %struct.pci_device_id { i32 5011, i32 5763, i32 -1, i32 -1, i32 0, i32 0, i32 116, i32 0 }, %struct.pci_device_id { i32 5560, i32 28672, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5560, i32 28673, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5560, i32 28674, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4328, i32 33166, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 5560, i32 28681, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5560, i32 28682, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5560, i32 28683, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5560, i32 28684, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5560, i32 28685, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5560, i32 28686, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5560, i32 28687, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5560, i32 28690, i32 -1, i32 -1, i32 0, i32 0, i32 90, i32 0 }, %struct.pci_device_id { i32 5560, i32 28689, i32 -1, i32 -1, i32 0, i32 0, i32 89, i32 0 }, %struct.pci_device_id { i32 5560, i32 28688, i32 -1, i32 -1, i32 0, i32 0, i32 88, i32 0 }, %struct.pci_device_id { i32 5560, i32 28691, i32 -1, i32 -1, i32 0, i32 0, i32 91, i32 0 }, %struct.pci_device_id { i32 38672, i32 38965, i32 4116, i32 665, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 38672, i32 39169, i32 40960, i32 4096, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 38672, i32 39186, i32 40960, i32 4096, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 38672, i32 39202, i32 40960, i32 4096, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 38672, i32 39172, i32 40960, i32 4096, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 38672, i32 39168, i32 40960, i32 4096, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 38672, i32 39168, i32 40960, i32 12290, i32 0, i32 0, i32 94, i32 0 }, %struct.pci_device_id { i32 38672, i32 39013, i32 40960, i32 4096, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 38672, i32 39013, i32 40960, i32 12290, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 38672, i32 39013, i32 40960, i32 12292, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 11878, i32 -1, i32 -1, i32 0, i32 0, i32 92, i32 0 }, %struct.pci_device_id { i32 4277, i32 49153, i32 -1, i32 -1, i32 0, i32 0, i32 93, i32 0 }, %struct.pci_device_id { i32 5348, i32 5642, i32 -1, i32 -1, i32 0, i32 0, i32 95, i32 0 }, %struct.pci_device_id { i32 21362, i32 26738, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 17224, i32 13395, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 17224, i32 20550, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 17224, i32 29043, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 7168, i32 12883, i32 -1, i32 -1, i32 0, i32 0, i32 102, i32 0 }, %struct.pci_device_id { i32 7168, i32 13424, i32 -1, i32 -1, i32 0, i32 0, i32 103, i32 0 }, %struct.pci_device_id { i32 7168, i32 14419, i32 -1, i32 -1, i32 0, i32 0, i32 104, i32 0 }, %struct.pci_device_id { i32 4332, i32 33130, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4332, i32 33131, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 7209, i32 4356, i32 -1, i32 -1, i32 0, i32 0, i32 96, i32 0 }, %struct.pci_device_id { i32 7209, i32 4360, i32 -1, i32 -1, i32 0, i32 0, i32 97, i32 0 }, %struct.pci_device_id { i32 7209, i32 4370, i32 -1, i32 -1, i32 0, i32 0, i32 98, i32 0 }, %struct.pci_device_id { i32 7209, i32 4612, i32 -1, i32 -1, i32 0, i32 0, i32 99, i32 0 }, %struct.pci_device_id { i32 7209, i32 4616, i32 -1, i32 -1, i32 0, i32 0, i32 100, i32 0 }, %struct.pci_device_id { i32 7209, i32 4626, i32 -1, i32 -1, i32 0, i32 0, i32 101, i32 0 }, %struct.pci_device_id { i32 5633, i32 2048, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 5633, i32 43009, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 7439, i32 33360, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 458752, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 459520, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 459264, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [2848 x i8] zeroinitializer }, align 32
@serial8250_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @serial8250_io_error_detected, ptr null, ptr @serial8250_io_slot_reset, ptr null, ptr null, ptr @serial8250_io_resume }, [40 x i8] zeroinitializer }, align 32
@pciserial_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pciserial_suspend_one, ptr @pciserial_resume_one, ptr @pciserial_suspend_one, ptr @pciserial_resume_one, ptr @pciserial_suspend_one, ptr @pciserial_resume_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pciserial_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 3836, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid driver_data: %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pciserial_init_one\00", [45 x i8] zeroinitializer }, align 32
@pciserial_init_one._entry_ptr = internal global ptr @pciserial_init_one._entry, section ".printk_index", align 4
@pci_boards = internal global { [117 x %struct.pciserial_board], [680 x i8] } { [117 x %struct.pciserial_board] [%struct.pciserial_board { i32 0, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 5, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 1130000, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 1152000, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 1250000, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 1843200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 1843200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 3906250, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 2, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 4, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 8, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 16, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 8, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 2, i32 1250000, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 9, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 9, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 9, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 9, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 1, i32 1382400, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 2, i32 1382400, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 4, i32 1382400, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 8, i32 1382400, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 1, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 4, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 8, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 16, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 8, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 8, i32 1152000, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 10, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 10, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 10, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 10, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 10, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 3, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 3, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 3, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 4, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 4, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 4, i32 8, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 2, i32 921600, i32 1024, i32 7, i32 0 }, %struct.pciserial_board { i32 10, i32 2, i32 921600, i32 1024, i32 7, i32 0 }, %struct.pciserial_board { i32 10, i32 4, i32 921600, i32 1024, i32 7, i32 0 }, %struct.pciserial_board { i32 2, i32 4, i32 921600, i32 32, i32 2, i32 3 }, %struct.pciserial_board { i32 0, i32 2, i32 4000000, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 256, i32 32, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 2, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 4, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 8, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 32, i32 921600, i32 32, i32 2, i32 65536 }, %struct.pciserial_board { i32 128, i32 1, i32 458333, i32 8, i32 0, i32 131448 }, %struct.pciserial_board { i32 0, i32 4, i32 921600, i32 64, i32 2, i32 512 }, %struct.pciserial_board { i32 0, i32 6, i32 921600, i32 64, i32 2, i32 512 }, %struct.pciserial_board { i32 0, i32 8, i32 921600, i32 64, i32 2, i32 512 }, %struct.pciserial_board { i32 0, i32 8, i32 460800, i32 256, i32 4, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 8333333, i32 0, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 3686400, i32 16, i32 0, i32 2048 }, %struct.pciserial_board { i32 0, i32 4, i32 3686400, i32 16, i32 0, i32 2048 }, %struct.pciserial_board { i32 0, i32 8, i32 3686400, i32 16, i32 0, i32 2048 }, %struct.pciserial_board { i32 0, i32 16, i32 3686400, i32 16, i32 0, i32 2048 }, %struct.pciserial_board { i32 0, i32 1, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 2, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 4, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 8, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 8, i32 2, i32 921600, i32 0, i32 2, i32 0 }, %struct.pciserial_board { i32 0, i32 8, i32 115200, i32 512, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 115200, i32 0, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 115200, i32 0, i32 2, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 115200, i32 8, i32 0, i32 64 }, %struct.pciserial_board { i32 0, i32 8, i32 115200, i32 8, i32 0, i32 64 }, %struct.pciserial_board { i32 0, i32 12, i32 115200, i32 8, i32 0, i32 64 }, %struct.pciserial_board { i32 0, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 12, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 115200, i32 8, i32 0, i32 192 }, %struct.pciserial_board { i32 0, i32 4, i32 115200, i32 8, i32 0, i32 192 }, %struct.pciserial_board { i32 0, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 8, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 16, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 4000000, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 2, i32 4000000, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 4, i32 4000000, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 8, i32 4000000, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 1, i32 2, i32 921600, i32 512, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 4, i32 921600, i32 512, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 8, i32 921600, i32 512, i32 0, i32 0 }], [680 x i8] zeroinitializer }, align 32
@blacklist = internal constant { [30 x %struct.pci_device_id], [224 x i8] } { [30 x %struct.pci_device_id] [%struct.pci_device_id { i32 4281, i32 21591, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4183, i32 12370, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5443, i32 12370, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 17224, i32 28755, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 17224, i32 20563, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7168, i32 12880, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2075, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2076, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2077, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4497, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 6360, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 6616, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2358, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 3850, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 3852, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 8842, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 8844, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 19350, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 19351, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 19352, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 19353, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 19354, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 19355, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 40163, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 40164, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5032, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6391, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4824, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [224 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Redundant entry in serial pci_table.\00", [59 x i8] zeroinitializer }, align 32
@pciserial_resume_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 3919, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to re-enable ports, trying to continue.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pciserial_resume_one\00", [43 x i8] zeroinitializer }, align 32
@pciserial_resume_one._entry_ptr = internal global ptr @pciserial_resume_one._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 16, i64 4169, i64 4170, i64 4171, i64 4643, i64 4646, i64 4647, i64 4738, i64 4906]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 4171, i64 4738]
@__sancov_gen_cov_switch_values.48 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 16, i64 8240, i64 8288]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 16, i64 16421, i64 16423, i64 16424, i64 20517, i64 20519]
@__sancov_gen_cov_switch_values.54 = internal global [31 x i64] [i64 29, i64 16, i64 2, i64 16438, i64 16439, i64 16440, i64 16504, i64 16505, i64 16517, i64 16520, i64 16521, i64 20535, i64 20600, i64 20601, i64 20613, i64 24697, i64 28793, i64 32889, i64 33079, i64 33080, i64 33335, i64 33336, i64 36985, i64 37175, i64 37176, i64 37431, i64 37432, i64 41081, i64 45177, i64 49273, i64 53369]
@__sancov_gen_cov_switch_values.55 = internal global [24 x i64] [i64 22, i64 16, i64 16469, i64 16470, i64 16533, i64 16534, i64 20566, i64 33110, i64 33111, i64 33366, i64 33367, i64 36950, i64 37206, i64 37207, i64 37208, i64 37209, i64 37462, i64 37463, i64 41046, i64 41303, i64 41304, i64 41305, i64 45142, i64 45399]
@__sancov_gen_cov_switch_values.56 = internal global [14 x i64] [i64 12, i64 16, i64 16485, i64 16486, i64 20581, i64 20582, i64 33126, i64 36966, i64 37222, i64 37223, i64 37224, i64 41062, i64 41319, i64 41320]
@__sancov_gen_cov_switch_values.57 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 39013, i64 39169]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 16, i64 39168, i64 39172, i64 39186, i64 39202]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 16, i64 4356, i64 4360, i64 4370]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 16, i64 4612, i64 4616, i64 4626]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 1792, i64 1794, i64 1795]
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"pci_use_msi\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 61, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3712, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3717, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3735, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3740, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"serial_pci_driver\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 5457, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"pci_serial_quirks\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1831, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 240, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1588, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [10 x i8] c"inta_addr\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 898, i32 20 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 907, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 927, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 949, i32 15 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 78, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 684, i32 15 }
@___asan_gen_.145 = private unnamed_addr constant [14 x i8] c"quatech_cards\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1082, i32 29 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1271, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1297, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 258, i32 15 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 520, i32 14 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 590, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [13 x i8] c"timedia_data\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 570, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [20 x i8] c"timedia_single_port\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 543, i32 29 }
@___asan_gen_.193 = private unnamed_addr constant [18 x i8] c"timedia_dual_port\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 547, i32 29 }
@___asan_gen_.196 = private unnamed_addr constant [18 x i8] c"timedia_quad_port\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 555, i32 29 }
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"timedia_eight_port\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 562, i32 29 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 862, i32 15 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 828, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 832, i32 14 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1022, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1052, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1424, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1535, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 5458, i32 11 }
@___asan_gen_.244 = private unnamed_addr constant [15 x i8] c"serial_pci_tbl\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3929, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant [23 x i8] c"serial8250_err_handler\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 5451, i32 40 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"pciserial_pm_ops\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3926, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3836, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [11 x i8] c"pci_boards\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 2728, i32 31 }
@___asan_gen_.265 = private unnamed_addr constant [10 x i8] c"blacklist\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3521, i32 35 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3876, i32 16 }
@___asan_gen_.271 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [38 x i8] c"../drivers/tty/serial/8250/8250_pci.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 3919, i32 4 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_serial_pci_driver_exit, ptr @__initcall__kmod_8250_pci__246_5468_serial_pci_driver_init6, ptr @__ksymtab_pciserial_init_ports, ptr @__ksymtab_pciserial_remove_ports, ptr @__ksymtab_pciserial_resume_ports, ptr @__ksymtab_pciserial_suspend_ports, ptr @moan_device._entry, ptr @moan_device._entry_ptr, ptr @pci_ite887x_init._entry, ptr @pci_ite887x_init._entry_ptr, ptr @pci_netmos_9900_numports._entry, ptr @pci_netmos_9900_numports._entry_ptr, ptr @pci_quatech_init._entry, ptr @pci_quatech_init._entry_ptr, ptr @pci_quatech_setup._entry, ptr @pci_quatech_setup._entry_ptr, ptr @pci_timedia_probe._entry, ptr @pci_timedia_probe._entry_ptr, ptr @pciserial_init_one._entry, ptr @pciserial_init_one._entry_ptr, ptr @pciserial_init_ports._entry, ptr @pciserial_init_ports._entry_ptr, ptr @pciserial_resume_one._entry, ptr @pciserial_resume_one._entry_ptr, ptr @serial_pci_driver_exit, ptr @pci_use_msi, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @serial_pci_driver, ptr @pci_serial_quirks, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @inta_addr, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @quatech_cards, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @timedia_data, ptr @timedia_single_port, ptr @timedia_dual_port, ptr @timedia_quad_port, ptr @timedia_eight_port, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @pci_fintek_f815xxa_setup.__key, ptr @.str.40, ptr @.str.41, ptr @serial_pci_tbl, ptr @serial8250_err_handler, ptr @pciserial_pm_ops, ptr @.str.42, ptr @.str.43, ptr @pci_boards, ptr @blacklist, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_use_msi to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciserial_init_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_serial_quirks to i32), i32 2432, i32 3040, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inta_addr to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ite887x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moan_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 177, i32 224, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quatech_cards to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_quatech_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_quatech_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_timedia_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timedia_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timedia_single_port to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timedia_dual_port to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timedia_quad_port to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timedia_eight_port to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_netmos_9900_numports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_fintek_f815xxa_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_pci_tbl to i32), i32 11488, i32 14336, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciserial_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciserial_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_boards to i32), i32 2808, i32 3488, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blacklist to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciserial_resume_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pciserial_init_ports(ptr noundef %dev, ptr noundef %board) #0 align 64 {
entry:
  %uart = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart) #11
  %num_ports = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 1
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ports, align 4
  %vendor1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %vendor1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor1.i, align 8
  %conv.i = zext i16 %3 to i32
  %device2.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %entry
  %quirk.0.i = phi ptr [ @pci_serial_quirks, %entry ], [ %incdec.ptr.i, %for.inc.i ]
  %4 = ptrtoint ptr %quirk.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirk.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.i = icmp ne i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp1.i.i = icmp ne i32 %5, %conv.i
  %tobool.not.i = and i1 %cmp.i.i, %cmp1.i.i
  br i1 %tobool.not.i, label %for.cond.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.cond.i.for.inc.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %device.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device.i, align 4
  %8 = ptrtoint ptr %device2.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device2.i, align 2
  %conv3.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i22.i = icmp ne i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv3.i)
  %cmp1.i23.i = icmp ne i32 %7, %conv3.i
  %tobool5.not.i = and i1 %cmp.i22.i, %cmp1.i23.i
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %subvendor.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %subvendor.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %subvendor.i, align 4
  %12 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %subsystem_vendor.i, align 4
  %conv7.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i25.i = icmp ne i32 %11, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv7.i)
  %cmp1.i26.i = icmp ne i32 %11, %conv7.i
  %tobool9.not.i = and i1 %cmp.i25.i, %cmp1.i26.i
  br i1 %tobool9.not.i, label %land.lhs.true6.i.for.inc.i_crit_edge, label %land.lhs.true10.i

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %land.lhs.true6.i
  %subdevice.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i, i32 0, i32 3
  %14 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %subdevice.i, align 4
  %16 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsystem_device.i, align 2
  %conv11.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i28.i = icmp ne i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv11.i)
  %cmp1.i29.i = icmp ne i32 %15, %conv11.i
  %tobool13.not.i = and i1 %cmp.i28.i, %cmp1.i29.i
  br i1 %tobool13.not.i, label %land.lhs.true10.i.for.inc.i_crit_edge, label %find_quirk.exit

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true10.i.for.inc.i_crit_edge, %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.cond.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.pci_serial_quirk, ptr %quirk.0.i, i32 1
  br label %for.cond.i

find_quirk.exit:                                  ; preds = %land.lhs.true10.i
  %init = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i, i32 0, i32 5
  %18 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %find_quirk.exit.if.end8.i.i_crit_edge, label %if.then

find_quirk.exit.if.end8.i.i_crit_edge:            ; preds = %find_quirk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.then:                                          ; preds = %find_quirk.exit
  %call2 = tail call i32 %19(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %20 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool5.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool5.not, i32 %1, i32 %call2
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end, %find_quirk.exit.if.end8.i.i_crit_edge
  %nr_ports.0 = phi i32 [ %1, %find_quirk.exit.if.end8.i.i_crit_edge ], [ %spec.select, %if.end ]
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_ports.0, i32 4) #11
  %22 = extractvalue { i32, i1 } %21, 1
  %23 = extractvalue { i32, i1 } %21, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %23, i32 16) #11
  %retval.0.i175 = select i1 %22, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i175, i32 noundef 3520) #14
  %tobool11.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool11.not, label %if.end8.i.i.err_deinit_crit_edge, label %if.end14

if.end8.i.i.err_deinit_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_deinit

if.end14:                                         ; preds = %if.end8.i.i
  %24 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %call9.i.i, align 128
  %quirk16 = getelementptr inbounds %struct.serial_private, ptr %call9.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %quirk16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %quirk.0.i, ptr %quirk16, align 8
  %26 = call ptr @memset(ptr %uart, i32 0, i32 584)
  %flags = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 33
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 285212736, ptr %flags, align 4
  %base_baud = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 2
  %28 = ptrtoint ptr %base_baud to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base_baud, align 4
  %mul = shl i32 %29, 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 22
  %30 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %uartclk, align 4
  %31 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %board, align 4
  %and = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.else, label %if.end14.if.end63_crit_edge

if.end14.if.end63_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.else:                                          ; preds = %if.end14
  %call22 = tail call ptr @pci_match_id(ptr noundef nonnull @pci_use_msi, ptr noundef %dev) #11
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.body37, label %do.body

do.body:                                          ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciserial_init_ports.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pciserial_init_ports, %if.then29)) #11
          to label %do.end [label %if.then29], !srcloc !156

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciserial_init_ports.__UNIQUE_ID_ddebug243, ptr noundef %dev30, ptr noundef nonnull @.str.3) #11
  br label %do.end

do.end:                                           ; preds = %if.then29, %do.body
  tail call void @pci_set_master(ptr noundef %dev) #11
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %and34 = and i32 %34, -16777217
  store i32 %and34, ptr %flags, align 4
  br label %if.end55

do.body37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciserial_init_ports.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pciserial_init_ports, %if.then49)) #11
          to label %if.end55 [label %if.then49], !srcloc !156

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciserial_init_ports.__UNIQUE_ID_ddebug244, ptr noundef %dev50, ptr noundef nonnull @.str.4) #11
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %do.body37, %do.end
  %.sink = phi i32 [ 7, %do.end ], [ 1, %do.body37 ], [ 1, %if.then49 ]
  %call.i177 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %dev, i32 noundef 1, i32 noundef 1, i32 noundef %.sink, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %cmp56 = icmp slt i32 %call.i177, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  %35 = inttoptr i32 %call.i177 to ptr
  br label %err_deinit

if.end59:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %call60 = tail call i32 @pci_irq_vector(ptr noundef %dev, i32 noundef 0) #11
  %irq62 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 20
  %36 = ptrtoint ptr %irq62 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call60, ptr %irq62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end59, %if.end14.if.end63_crit_edge
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %dev66 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 45
  %37 = ptrtoint ptr %dev66 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev64, ptr %dev66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_ports.0)
  %cmp67183 = icmp sgt i32 %nr_ports.0, 0
  br i1 %cmp67183, label %for.body.lr.ph, label %if.end63.for.end_crit_edge

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end63
  %setup = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i, i32 0, i32 6
  %iobase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 1
  %irq88 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 20
  %iotype = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0184 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %38 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %setup, align 4
  %call68 = call i32 %39(ptr noundef nonnull %call9.i.i, ptr noundef %board, ptr noundef nonnull %uart, i32 noundef %i.0184) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.body72, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body72:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciserial_init_ports.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pciserial_init_ports, %if.then84)) #11
          to label %do.end92 [label %if.then84], !srcloc !156

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase, align 4
  %42 = ptrtoint ptr %irq88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq88, align 4
  %44 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %iotype, align 2
  %conv = zext i8 %45 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciserial_init_ports.__UNIQUE_ID_ddebug245, ptr noundef %dev64, ptr noundef nonnull @.str.5, i32 noundef %41, i32 noundef %43, i32 noundef %conv) #11
  br label %do.end92

do.end92:                                         ; preds = %if.then84, %do.body72
  %call93 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart) #11
  %arrayidx = getelementptr %struct.serial_private, ptr %call9.i.i, i32 0, i32 4, i32 %i.0184
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call93, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp96 = icmp slt i32 %call93, 0
  br i1 %cmp96, label %do.end101, label %for.inc

do.end101:                                        ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iobase, align 4
  %49 = ptrtoint ptr %irq88 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq88, align 4
  %51 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %iotype, align 2
  %conv109 = zext i8 %52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.6, i32 noundef %48, i32 noundef %50, i32 noundef %conv109, i32 noundef %call93) #15
  br label %for.end

for.inc:                                          ; preds = %do.end92
  %inc = add nuw nsw i32 %i.0184, 1
  %exitcond.not = icmp eq i32 %inc, %nr_ports.0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end101, %for.body.for.end_crit_edge, %if.end63.for.end_crit_edge
  %i.0182 = phi i32 [ %i.0184, %do.end101 ], [ 0, %if.end63.for.end_crit_edge ], [ %nr_ports.0, %for.inc.for.end_crit_edge ], [ %i.0184, %for.body.for.end_crit_edge ]
  %nr = getelementptr inbounds %struct.serial_private, ptr %call9.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %i.0182, ptr %nr, align 4
  %board113 = getelementptr inbounds %struct.serial_private, ptr %call9.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %board113 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %board, ptr %board113, align 4
  br label %cleanup

err_deinit:                                       ; preds = %if.then57, %if.end8.i.i.err_deinit_crit_edge
  %priv.0 = phi ptr [ %35, %if.then57 ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.err_deinit_crit_edge ]
  %exit = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i, i32 0, i32 7
  %55 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %exit, align 4
  %tobool114.not = icmp eq ptr %56, null
  br i1 %tobool114.not, label %err_deinit.cleanup_crit_edge, label %if.then115

err_deinit.cleanup_crit_edge:                     ; preds = %err_deinit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then115:                                       ; preds = %err_deinit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %56(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then115, %err_deinit.cleanup_crit_edge, %for.end, %if.then3
  %retval.0 = phi ptr [ %call9.i.i, %for.end ], [ %20, %if.then3 ], [ %priv.0, %if.then115 ], [ %priv.0, %err_deinit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart) #11
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pciserial_remove_ports(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr.i = getelementptr inbounds %struct.serial_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not.i = icmp eq i32 %1, 0
  br i1 %cmp9.not.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.serial_private, ptr %priv, i32 0, i32 4, i32 %i.010.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  tail call void @serial8250_unregister_port(i32 noundef %3) #11
  %inc.i = add nuw i32 %i.010.i, 1
  %4 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %5
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %vendor1.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %vendor1.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vendor1.i.i, align 8
  %conv.i.i = zext i16 %9 to i32
  %device2.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %subsystem_vendor.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 9
  %subsystem_device.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 10
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %for.end.i
  %quirk.0.i.i = phi ptr [ @pci_serial_quirks, %for.end.i ], [ %incdec.ptr.i.i, %for.inc.i.i ]
  %10 = ptrtoint ptr %quirk.0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirk.0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.i.i = icmp ne i32 %11, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i.i)
  %cmp1.i.i.i = icmp ne i32 %11, %conv.i.i
  %tobool.not.i.i = and i1 %cmp.i.i.i, %cmp1.i.i.i
  br i1 %tobool.not.i.i, label %for.cond.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.cond.i.i.for.inc.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.cond.i.i
  %device.i.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device.i.i, align 4
  %14 = ptrtoint ptr %device2.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device2.i.i, align 2
  %conv3.i.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i22.i.i = icmp ne i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv3.i.i)
  %cmp1.i23.i.i = icmp ne i32 %13, %conv3.i.i
  %tobool5.not.i.i = and i1 %cmp.i22.i.i, %cmp1.i23.i.i
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %subvendor.i.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %subvendor.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %subvendor.i.i, align 4
  %18 = ptrtoint ptr %subsystem_vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_vendor.i.i, align 4
  %conv7.i.i = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i25.i.i = icmp ne i32 %17, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv7.i.i)
  %cmp1.i26.i.i = icmp ne i32 %17, %conv7.i.i
  %tobool9.not.i.i = and i1 %cmp.i25.i.i, %cmp1.i26.i.i
  br i1 %tobool9.not.i.i, label %land.lhs.true6.i.i.for.inc.i.i_crit_edge, label %land.lhs.true10.i.i

land.lhs.true6.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true10.i.i:                              ; preds = %land.lhs.true6.i.i
  %subdevice.i.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %subdevice.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %subdevice.i.i, align 4
  %22 = ptrtoint ptr %subsystem_device.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %subsystem_device.i.i, align 2
  %conv11.i.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i28.i.i = icmp ne i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv11.i.i)
  %cmp1.i29.i.i = icmp ne i32 %21, %conv11.i.i
  %tobool13.not.i.i = and i1 %cmp.i28.i.i, %cmp1.i29.i.i
  br i1 %tobool13.not.i.i, label %land.lhs.true10.i.i.for.inc.i.i_crit_edge, label %find_quirk.exit.i

land.lhs.true10.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true10.i.i.for.inc.i.i_crit_edge, %land.lhs.true6.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.cond.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.pci_serial_quirk, ptr %quirk.0.i.i, i32 1
  br label %for.cond.i.i

find_quirk.exit.i:                                ; preds = %land.lhs.true10.i.i
  %exit.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %exit.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %exit.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %find_quirk.exit.i.pciserial_detach_ports.exit_crit_edge, label %if.then.i

find_quirk.exit.i.pciserial_detach_ports.exit_crit_edge: ; preds = %find_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pciserial_detach_ports.exit

if.then.i:                                        ; preds = %find_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %25(ptr noundef %7) #11
  br label %pciserial_detach_ports.exit

pciserial_detach_ports.exit:                      ; preds = %if.then.i, %find_quirk.exit.i.pciserial_detach_ports.exit_crit_edge
  tail call void @kfree(ptr noundef %priv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pciserial_suspend_ports(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr = getelementptr inbounds %struct.serial_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not = icmp eq i32 %1, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.serial_private, ptr %priv, i32 0, i32 4, i32 %i.018
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1 = icmp sgt i32 %3, -1
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @serial8250_suspend_port(i32 noundef %3) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.018, 1
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %quirk = getelementptr inbounds %struct.serial_private, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %quirk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %quirk, align 4
  %exit = getelementptr inbounds %struct.pci_serial_quirk, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.end.if.end7_crit_edge, label %if.then4

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void %9(ptr noundef %11) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %for.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pciserial_resume_ports(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %quirk = getelementptr inbounds %struct.serial_private, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %quirk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %quirk, align 4
  %init = getelementptr inbounds %struct.pci_serial_quirk, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %call = tail call i32 %3(ptr noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nr = getelementptr inbounds %struct.serial_private, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp17.not = icmp eq i32 %7, 0
  br i1 %cmp17.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.serial_private, ptr %priv, i32 0, i32 4, i32 %i.018
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp3 = icmp sgt i32 %9, -1
  br i1 %cmp3, label %if.then4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @serial8250_resume_port(i32 noundef %9) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.018, 1
  %10 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_pci_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @serial_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @serial_pci_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @serial_pci_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @addidata_apci7800_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef writeonly %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %first_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 5
  %0 = ptrtoint ptr %first_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_offset, align 4
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %idx)
  %cmp = icmp slt i32 %idx, 2
  br i1 %cmp, label %entry.if.end28_crit_edge, label %land.lhs.true

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp2 = icmp ult i32 %idx, 4
  br i1 %cmp2, label %if.then3, label %land.lhs.true10

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %add4 = add nuw nsw i32 %and, 1
  %sub = add nsw i32 %idx, -2
  br label %if.end28

land.lhs.true10:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %idx)
  %cmp11 = icmp ult i32 %idx, 6
  br i1 %cmp11, label %if.then12, label %if.then20

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  %add13 = add nuw nsw i32 %and, 2
  %sub14 = add nsw i32 %idx, -4
  br label %if.end28

if.then20:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  %add21 = add nuw nsw i32 %and, 3
  %sub22 = add nsw i32 %idx, -6
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.then12, %if.then3, %entry.if.end28_crit_edge
  %sub.sink = phi i32 [ %sub, %if.then3 ], [ %sub22, %if.then20 ], [ %sub14, %if.then12 ], [ %idx, %entry.if.end28_crit_edge ]
  %bar.0 = phi i32 [ %add4, %if.then3 ], [ %add21, %if.then20 ], [ %add13, %if.then12 ], [ %and, %entry.if.end28_crit_edge ]
  %uart_offset5 = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 3
  %4 = ptrtoint ptr %uart_offset5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uart_offset5, align 4
  %mul6 = mul i32 %5, %sub.sink
  %offset.0 = add i32 %mul6, %1
  %conv = trunc i32 %bar.0 to i8
  %reg_shift = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 4
  %6 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_shift, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv)
  %cmp.i = icmp ugt i8 %conv, 5
  br i1 %cmp.i, label %if.end28.setup_port.exit_crit_edge, label %if.end.i

if.end28.setup_port.exit_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end.i:                                         ; preds = %if.end28
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 %bar.0
  %flags.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 %bar.0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @pcim_iomap(ptr noundef %9, i32 noundef %bar.0, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = tail call ptr @pcim_iomap_table(ptr noundef %9) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.setup_port.exit_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.setup_port.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %12 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %iobase.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %15, %offset.0
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %16 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %mapbase.i, align 4
  %call16.i = tail call ptr @pcim_iomap_table(ptr noundef %9) #11
  %arrayidx18.i = getelementptr ptr, ptr %call16.i, i32 %bar.0
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %offset.0
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %membase.i, align 4
  %conv20.i = trunc i32 %7 to i8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %20 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %iotype24.i, align 2
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 8
  %add29.i = add i32 %22, %offset.0
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %23 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add29.i, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %24 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %mapbase33.i, align 4
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %25 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %membase35.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %conv20.sink.i = phi i8 [ %conv20.i, %if.end9.i ], [ 0, %if.else.i ]
  %regshift22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %26 = ptrtoint ptr %regshift22.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv20.sink.i, ptr %regshift22.i, align 1
  br label %setup_port.exit

setup_port.exit:                                  ; preds = %cleanup.sink.split.i, %land.lhs.true.i.setup_port.exit_crit_edge, %if.end28.setup_port.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end28.setup_port.exit_crit_edge ], [ -12, %land.lhs.true.i.setup_port.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afavlab_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef writeonly %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %first_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 5
  %0 = ptrtoint ptr %first_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp = icmp slt i32 %idx, 4
  br i1 %cmp, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add nsw i32 %idx, -4
  %uart_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 3
  %2 = ptrtoint ptr %uart_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uart_offset, align 4
  %mul = mul i32 %3, %sub
  %add1 = add i32 %mul, %1
  br label %if.end.i

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %board, align 4
  %and = and i32 %5, 7
  %add = add nsw i32 %and, %idx
  %phi.cast = trunc i32 %add to i8
  %conv.i = and i32 %add, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %phi.cast)
  %cmp.i = icmp ugt i8 %phi.cast, 5
  br i1 %cmp.i, label %if.end.setup_port.exit_crit_edge, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.setup_port.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end.i:                                         ; preds = %if.end.if.end.i_crit_edge, %if.end.thread
  %conv.i15 = phi i32 [ 4, %if.end.thread ], [ %conv.i, %if.end.if.end.i_crit_edge ]
  %offset.014 = phi i32 [ %add1, %if.end.thread ], [ %1, %if.end.if.end.i_crit_edge ]
  %.in = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 4
  %6 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %.in, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 %conv.i15
  %flags.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 %conv.i15, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @pcim_iomap(ptr noundef %9, i32 noundef %conv.i15, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = tail call ptr @pcim_iomap_table(ptr noundef %9) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.setup_port.exit_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.setup_port.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %12 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %iobase.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %15, %offset.014
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %16 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %mapbase.i, align 4
  %call16.i = tail call ptr @pcim_iomap_table(ptr noundef %9) #11
  %arrayidx18.i = getelementptr ptr, ptr %call16.i, i32 %conv.i15
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %offset.014
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %membase.i, align 4
  %conv20.i = trunc i32 %7 to i8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %20 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %iotype24.i, align 2
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 8
  %add29.i = add i32 %22, %offset.014
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %23 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add29.i, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %24 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %mapbase33.i, align 4
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %25 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %membase35.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %conv20.sink.i = phi i8 [ %conv20.i, %if.end9.i ], [ 0, %if.else.i ]
  %regshift22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %26 = ptrtoint ptr %regshift22.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv20.sink.i, ptr %regshift22.i, align 1
  br label %setup_port.exit

setup_port.exit:                                  ; preds = %cleanup.sink.split.i, %land.lhs.true.i.setup_port.exit_crit_edge, %if.end.setup_port.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end.setup_port.exit_crit_edge ], [ -12, %land.lhs.true.i.setup_port.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pci_hp_diva_init(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %subsystem_device, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 4169, label %entry.sw.bb_crit_edge
    i16 4643, label %entry.sw.bb_crit_edge4
    i16 4646, label %entry.sw.bb_crit_edge5
    i16 4738, label %entry.sw.bb_crit_edge6
    i16 4170, label %sw.bb1
    i16 4171, label %sw.bb2
    i16 4647, label %entry.sw.bb3_crit_edge
    i16 4906, label %entry.sw.bb3_crit_edge7
  ]

entry.sw.bb3_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge4:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge4, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 1, %sw.bb3 ], [ 4, %sw.bb2 ], [ 2, %sw.bb1 ], [ 3, %sw.bb ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_hp_diva_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef writeonly %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %first_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 5
  %0 = ptrtoint ptr %first_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_offset, align 4
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_device, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %7, label %entry.sw.epilog_crit_edge [
    i16 4171, label %sw.bb
    i16 4738, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %idx)
  %cmp = icmp eq i32 %idx, 3
  %spec.select = select i1 %cmp, i32 4, i32 %idx
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp3 = icmp sgt i32 %idx, 0
  %inc6 = zext i1 %cmp3 to i32
  %spec.select30 = add i32 %inc6, %idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select30)
  %cmp8 = icmp sgt i32 %spec.select30, 2
  %inc11 = zext i1 %cmp8 to i32
  %spec.select32 = add i32 %spec.select30, %inc11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %idx.addr.1 = phi i32 [ %idx, %entry.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select32, %sw.bb2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %idx.addr.1)
  %cmp13 = icmp sgt i32 %idx.addr.1, 2
  %spec.select31 = select i1 %cmp13, i32 24, i32 %1
  %uart_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 3
  %9 = ptrtoint ptr %uart_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uart_offset, align 4
  %mul = mul i32 %10, %idx.addr.1
  %add = add i32 %spec.select31, %mul
  %11 = trunc i32 %3 to i8
  %conv17 = and i8 %11, 7
  %reg_shift = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 4
  %12 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_shift, align 4
  %conv.i = zext i8 %conv17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv17)
  %cmp.i = icmp ugt i8 %conv17, 5
  br i1 %cmp.i, label %sw.epilog.setup_port.exit_crit_edge, label %if.end.i

sw.epilog.setup_port.exit_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end.i:                                         ; preds = %sw.epilog
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %conv.i
  %flags.i = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %conv.i, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @pcim_iomap(ptr noundef %5, i32 noundef %conv.i, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = tail call ptr @pcim_iomap_table(ptr noundef %5) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.setup_port.exit_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.setup_port.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %16 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %iobase.i, align 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %19, %add
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %20 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i, ptr %mapbase.i, align 4
  %call16.i = tail call ptr @pcim_iomap_table(ptr noundef %5) #11
  %arrayidx18.i = getelementptr ptr, ptr %call16.i, i32 %conv.i
  %21 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx18.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %add
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %23 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %membase.i, align 4
  %conv20.i = trunc i32 %13 to i8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %24 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %iotype24.i, align 2
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 8
  %add29.i = add i32 %26, %add
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %27 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add29.i, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %28 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %mapbase33.i, align 4
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %29 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %membase35.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %conv20.sink.i = phi i8 [ %conv20.i, %if.end9.i ], [ 0, %if.else.i ]
  %regshift22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %30 = ptrtoint ptr %regshift22.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv20.sink.i, ptr %regshift22.i, align 1
  br label %setup_port.exit

setup_port.exit:                                  ; preds = %cleanup.sink.split.i, %land.lhs.true.i.setup_port.exit_crit_edge, %sw.epilog.setup_port.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %sw.epilog.setup_port.exit_crit_edge ], [ -12, %land.lhs.true.i.setup_port.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_inteli960ni_init(ptr noundef %dev) #0 align 64 {
entry:
  %oldval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldval) #11
  %0 = ptrtoint ptr %oldval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oldval, align 4, !annotation !157
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %subsystem_device, align 2
  %3 = and i16 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 68, ptr noundef nonnull %oldval) #11
  %4 = ptrtoint ptr %oldval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oldval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp = icmp eq i32 %5, 4096
  br i1 %cmp, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_inteli960ni_init.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pci_inteli960ni_init, %if.then7)) #11
          to label %cleanup [label %if.then7], !srcloc !156

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_inteli960ni_init.__UNIQUE_ID_ddebug238, ptr noundef %dev8, ptr noundef nonnull @.str.10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then7 ], [ 0, %if.end.cleanup_crit_edge ], [ -19, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldval) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_default_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef writeonly %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %first_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 5
  %0 = ptrtoint ptr %first_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_offset, align 4
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 4
  %and = and i32 %3, 7
  %and2 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %and, %idx
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %uart_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 3
  %4 = ptrtoint ptr %uart_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uart_offset, align 4
  %mul = mul i32 %5, %idx
  %add3 = add i32 %mul, %1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bar.0 = phi i32 [ %add, %if.then ], [ %and, %if.else ]
  %offset.0 = phi i32 [ %1, %if.then ], [ %add3, %if.else ]
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %end = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 %bar.0, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 %bar.0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %9, 1
  %add11 = sub i32 %sub, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %add11, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %reg_shift = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 4
  %and16 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %cond.end.if.end20_crit_edge, label %land.lhs.true

cond.end.if.end20_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %cond.end
  %sub13 = sub i32 %cond, %1
  %12 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_shift, align 4
  %add14 = add i32 %13, 3
  %shr = lshr i32 %sub13, %add14
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %idx)
  %cmp18.not = icmp ugt i32 %shr, %idx
  br i1 %cmp18.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %cond.end.if.end20_crit_edge
  %conv = trunc i32 %bar.0 to i8
  %14 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_shift, align 4
  %conv.i = and i32 %bar.0, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv)
  %cmp.i = icmp ugt i8 %conv, 5
  br i1 %cmp.i, label %if.end20.cleanup_crit_edge, label %if.end.i

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end20
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 %conv.i
  %flags.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 %conv.i, i32 3
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @pcim_iomap(ptr noundef %7, i32 noundef %conv.i, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = tail call ptr @pcim_iomap_table(ptr noundef %7) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %18 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %iobase.i, align 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %21, %offset.0
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %22 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %mapbase.i, align 4
  %call16.i = tail call ptr @pcim_iomap_table(ptr noundef %7) #11
  %arrayidx18.i = getelementptr ptr, ptr %call16.i, i32 %conv.i
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx18.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 %offset.0
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %membase.i, align 4
  %conv20.i = trunc i32 %15 to i8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %26 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %iotype24.i, align 2
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 8
  %add29.i = add i32 %28, %offset.0
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %29 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add29.i, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %30 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %mapbase33.i, align 4
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %31 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %membase35.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %conv20.sink.i = phi i8 [ %conv20.i, %if.end9.i ], [ 0, %if.else.i ]
  %regshift22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %32 = ptrtoint ptr %regshift22.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv20.sink.i, ptr %regshift22.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %land.lhs.true.i.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -12, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skip_tx_en_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 27
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %quirks, align 1
  %2 = or i8 %1, 1
  store i8 %2, ptr %quirks, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skip_tx_en_setup.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skip_tx_en_setup, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !156

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor, align 8
  %conv7 = zext i16 %6 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %conv9 = zext i16 %8 to i32
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 9
  %9 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %subsystem_vendor, align 4
  %conv11 = zext i16 %10 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 10
  %11 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %subsystem_device, align 2
  %conv13 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @skip_tx_en_setup.__UNIQUE_ID_ddebug242, ptr noundef %dev5, ptr noundef nonnull @.str.12, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv13) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call14 = tail call i32 @pci_default_setup(ptr noundef %priv, ptr noundef %board, ptr noundef %port, i32 noundef %idx)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ce4100_serial_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %idx to i8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %conv.i = and i32 %idx, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv)
  %cmp.i = icmp ugt i8 %conv, 5
  br i1 %cmp.i, label %entry.setup_port.exit_crit_edge, label %if.end.i

entry.setup_port.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %conv.i
  %flags.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %conv.i, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @pcim_iomap(ptr noundef %1, i32 noundef %conv.i, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = tail call ptr @pcim_iomap_table(ptr noundef %1) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.setup_port.exit_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.setup_port.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %4 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %iobase.i, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 8
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %8 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mapbase.i, align 4
  %call16.i = tail call ptr @pcim_iomap_table(ptr noundef %1) #11
  %arrayidx18.i = getelementptr ptr, ptr %call16.i, i32 %conv.i
  %9 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx18.i, align 4
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %11 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %iotype24.i, align 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 8
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %14 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %15 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %mapbase33.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %.sink = phi ptr [ null, %if.else.i ], [ %10, %if.end9.i ]
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.sink, ptr %membase35.i, align 4
  br label %setup_port.exit

setup_port.exit:                                  ; preds = %cleanup.sink.split.i, %land.lhs.true.i.setup_port.exit_crit_edge, %entry.setup_port.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.setup_port.exit_crit_edge ], [ -12, %land.lhs.true.i.setup_port.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  %iotype = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %17 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %iotype, align 2
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 15, ptr %type, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %or4 = or i32 %20, 671088640
  store i32 %or4, ptr %flags, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %21 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %regshift, align 1
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kt_serial_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 67108864
  store i32 %or, ptr %flags, align 4
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %2 = ptrtoint ptr %serial_in to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kt_serial_in, ptr %serial_in, align 4
  %handle_break = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 17
  %3 = ptrtoint ptr %handle_break to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @kt_handle_break, ptr %handle_break, align 4
  %quirks.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 27
  %4 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %quirks.i, align 1
  %6 = or i8 %5, 1
  store i8 %6, ptr %quirks.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skip_tx_en_setup.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kt_serial_setup, %if.then.i)) #11
          to label %skip_tx_en_setup.exit [label %if.then.i], !srcloc !156

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vendor.i, align 8
  %conv7.i = zext i16 %10 to i32
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 8
  %11 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device.i, align 2
  %conv9.i = zext i16 %12 to i32
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 9
  %13 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %subsystem_vendor.i, align 4
  %conv11.i = zext i16 %14 to i32
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 10
  %15 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsystem_device.i, align 2
  %conv13.i = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @skip_tx_en_setup.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.12, i32 noundef %conv7.i, i32 noundef %conv9.i, i32 noundef %conv11.i, i32 noundef %conv13.i) #11
  br label %skip_tx_en_setup.exit

skip_tx_en_setup.exit:                            ; preds = %if.then.i, %entry
  %call14.i = tail call i32 @pci_default_setup(ptr noundef %priv, ptr noundef %board, ptr noundef %port, i32 noundef %idx) #11
  ret i32 %call14.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_ite887x_init(ptr noundef %dev) #0 align 64 {
entry:
  %miscr = alloca i32, align 4
  %uartbar = alloca i32, align 4
  %ioport = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %miscr) #11
  %0 = ptrtoint ptr %miscr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %miscr, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uartbar) #11
  %1 = ptrtoint ptr %uartbar to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %uartbar, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioport) #11
  %2 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ioport, align 4, !annotation !157
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0113 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x i16], ptr @inta_addr, i32 0, i32 %i.0113
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %call = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef 0) #11
  %cmp1.not = icmp eq ptr %call, null
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %or = or i32 %conv, -452984832
  %call5 = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 96, i32 noundef %or) #11
  %call8 = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 120, i32 noundef %conv) #11
  %and = and i32 %conv, 1048575
  %add = or i32 %and, -18874368
  %5 = inttoptr i32 %add to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp14.not = icmp eq i8 %6, -1
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  br i1 %cmp14.not, label %if.end, label %if.end22

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %8, i32 noundef 32) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.14) #15
  br label %cleanup

if.end22:                                         ; preds = %if.then
  %add25 = add i32 %8, 24
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %9 = inttoptr i32 %add27 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  %11 = and i8 %10, 15
  %and32 = zext i8 %11 to i32
  %12 = add nsw i32 %and32, -2
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 31)
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %13, label %sw.default [
    i32 0, label %if.end22.if.then70_crit_edge
    i32 4, label %if.end22.if.then70_crit_edge133
    i32 6, label %if.end22.for.body39_crit_edge
    i32 2, label %sw.bb34
    i32 3, label %if.end22.for.body39_crit_edge134
  ]

if.end22.for.body39_crit_edge134:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39

if.end22.for.body39_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39

if.end22.if.then70_crit_edge133:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then70

if.end22.if.then70_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then70

sw.bb34:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39

sw.default:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %15 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %16 to i32
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device.i, align 2
  %conv2.i = zext i16 %18 to i32
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %19 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %subsystem_vendor.i, align 4
  %conv3.i = zext i16 %20 to i32
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %21 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %subsystem_device.i, align 2
  %conv4.i = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %conv4.i) #15
  br label %if.then70

for.body39:                                       ; preds = %sw.bb34, %if.end22.for.body39_crit_edge, %if.end22.for.body39_crit_edge134
  %exitcond118.not = phi i1 [ false, %if.end22.for.body39_crit_edge ], [ false, %if.end22.for.body39_crit_edge134 ], [ true, %sw.bb34 ]
  %ret.0.ph = phi i32 [ 2, %if.end22.for.body39_crit_edge ], [ 2, %if.end22.for.body39_crit_edge134 ], [ 1, %sw.bb34 ]
  %call42 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 20, ptr noundef nonnull %ioport) #11
  %23 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ioport, align 4
  %and43 = and i32 %24, 65280
  store i32 %and43, ptr %ioport, align 4
  %or47 = or i32 %and43, -486539264
  %call48 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 100, i32 noundef %or47) #11
  %call49 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 124, ptr noundef nonnull %uartbar) #11
  %25 = ptrtoint ptr %uartbar to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uartbar, align 4
  %and51 = and i32 %26, -65536
  %27 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ioport, align 4
  %or54 = or i32 %28, %and51
  store i32 %or54, ptr %uartbar, align 4
  %call55 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 124, i32 noundef %or54) #11
  %call56 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 156, ptr noundef nonnull %miscr) #11
  %29 = ptrtoint ptr %miscr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %miscr, align 4
  %and60 = and i32 %30, -8450049
  %or63 = or i32 %and60, 8388608
  store i32 %or63, ptr %miscr, align 4
  %call64 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 156, i32 noundef %or63) #11
  br i1 %exitcond118.not, label %for.body39.cleanup_crit_edge, label %for.body39.1

for.body39.cleanup_crit_edge:                     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body39.1:                                     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #13
  %call42.1 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 24, ptr noundef nonnull %ioport) #11
  %31 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ioport, align 4
  %and43.1 = and i32 %32, 65280
  store i32 %and43.1, ptr %ioport, align 4
  %or47.1 = or i32 %and43.1, -486539264
  %call48.1 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 104, i32 noundef %or47.1) #11
  %call49.1 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 124, ptr noundef nonnull %uartbar) #11
  %33 = ptrtoint ptr %uartbar to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %uartbar, align 4
  %and51.1 = and i32 %34, 65535
  %35 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ioport, align 4
  %shl53.1 = shl i32 %36, 16
  %or54.1 = or i32 %shl53.1, %and51.1
  store i32 %or54.1, ptr %uartbar, align 4
  %call55.1 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 124, i32 noundef %or54.1) #11
  %call56.1 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 156, ptr noundef nonnull %miscr) #11
  %37 = ptrtoint ptr %miscr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %miscr, align 4
  %and60.1 = and i32 %38, -4198145
  %or63.1 = or i32 %and60.1, 4194304
  store i32 %or63.1, ptr %miscr, align 4
  %call64.1 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 156, i32 noundef %or63.1) #11
  br label %cleanup

if.then70:                                        ; preds = %sw.default, %if.end22.if.then70_crit_edge, %if.end22.if.then70_crit_edge133
  %ret.0124.ph = phi i32 [ 0, %if.end22.if.then70_crit_edge ], [ 0, %if.end22.if.then70_crit_edge133 ], [ -19, %sw.default ]
  %39 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call, align 4
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %40, i32 noundef 32) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %for.body39.1, %for.body39.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %ret.0124.ph, %if.then70 ], [ %ret.0.ph, %for.body39.1 ], [ %ret.0.ph, %for.body39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioport) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uartbar) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %miscr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_ite887x_exit(ptr noundef %dev) #0 align 64 {
entry:
  %ioport = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioport) #11
  %0 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ioport, align 4, !annotation !157
  %call = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 96, ptr noundef nonnull %ioport) #11
  %1 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ioport, align 4
  %and = and i32 %2, 65535
  store i32 %and, ptr %ioport, align 4
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %and, i32 noundef 32) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioport) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_ni8420_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %3 to i32
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device.i, align 2
  %conv2.i = zext i16 %5 to i32
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_vendor.i, align 4
  %conv3.i = zext i16 %7 to i32
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %8 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device.i, align 2
  %conv4.i = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %conv4.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 0) #11
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !161
  tail call void @arm_heavy_mb() #11
  %add.ptr = getelementptr i8, ptr %call, i32 56
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !163
  %11 = or i32 %10, 2097152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #11, !srcloc !164
  tail call void @iounmap(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %do.body ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_ni8420_exit(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %3 to i32
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device.i, align 2
  %conv2.i = zext i16 %5 to i32
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_vendor.i, align 4
  %conv3.i = zext i16 %7 to i32
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %8 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device.i, align 2
  %conv4.i = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %conv4.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 0) #11
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  tail call void @arm_heavy_mb() #11
  %add.ptr = getelementptr i8, ptr %call, i32 56
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  %11 = and i32 %10, -2097153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #11, !srcloc !164
  tail call void @iounmap(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_ni8430_init(ptr noundef %dev) #0 align 64 {
entry:
  %region = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #11
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %region, align 4, !annotation !157
  %1 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !157
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %5 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %6 to i32
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device.i, align 2
  %conv2.i = zext i16 %8 to i32
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %9 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %subsystem_vendor.i, align 4
  %conv3.i = zext i16 %10 to i32
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %11 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %subsystem_device.i, align 2
  %conv4.i = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %conv4.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 0) #11
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 8
  call void @pcibios_resource_to_bus(ptr noundef %14, ptr noundef nonnull %region, ptr noundef %resource) #11
  %15 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %region, align 4
  %add = add i32 %16, 2048
  %and6 = and i32 %add, -256
  %or7 = or i32 %and6, 138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !167
  call void @arm_heavy_mb() #11
  %17 = call i32 @llvm.bswap.i32(i32 %or7)
  %add.ptr = getelementptr i8, ptr %call, i32 196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #11, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !168
  call void @arm_heavy_mb() #11
  %add.ptr11 = getelementptr i8, ptr %call, i32 244
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #11, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  %19 = and i32 %18, -16777217
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %19) #11, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !170
  call void @arm_heavy_mb() #11
  %add.ptr19 = getelementptr i8, ptr %call, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 1) #11, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  call void @arm_heavy_mb() #11
  %add.ptr23 = getelementptr i8, ptr %call, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 128) #11, !srcloc !164
  call void @iounmap(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end3 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_ni8430_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef writeonly %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_ports = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 1
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp.not = icmp ugt i32 %1, %idx
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %first_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 5
  %2 = ptrtoint ptr %first_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first_offset, align 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %6 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %board, align 4
  %and = and i32 %7, 7
  %uart_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 3
  %8 = ptrtoint ptr %uart_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uart_offset, align 4
  %call = tail call ptr @pci_ioremap_bar(ptr noundef %5, i32 noundef %and) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  %mul = mul i32 %9, %idx
  %add = add i32 %mul, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %add.ptr = getelementptr i8, ptr %call, i32 %add
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 15
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  %11 = or i8 %10, 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %11) #11, !srcloc !174
  tail call void @iounmap(ptr noundef nonnull %call) #11
  %conv10 = trunc i32 %and to i8
  %reg_shift = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 4
  %12 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_shift, align 4
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv10)
  %cmp.i = icmp ugt i8 %conv10, 5
  br i1 %cmp.i, label %do.body.cleanup_crit_edge, label %if.end.i

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %do.body
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %15, i32 0, i32 47, i32 %and
  %flags.i = getelementptr %struct.pci_dev, ptr %15, i32 0, i32 47, i32 %and, i32 3
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @pcim_iomap(ptr noundef %15, i32 noundef %and, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = tail call ptr @pcim_iomap_table(ptr noundef %15) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %18 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %iobase.i, align 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %21, %add
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %22 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %mapbase.i, align 4
  %call16.i = tail call ptr @pcim_iomap_table(ptr noundef %15) #11
  %arrayidx18.i = getelementptr ptr, ptr %call16.i, i32 %and
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx18.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 %add
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %membase.i, align 4
  %conv20.i = trunc i32 %13 to i8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %26 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %iotype24.i, align 2
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 8
  %add29.i = add i32 %28, %add
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %29 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add29.i, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %30 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %mapbase33.i, align 4
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %31 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %membase35.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %conv20.sink.i = phi i8 [ %conv20.i, %if.end9.i ], [ 0, %if.else.i ]
  %regshift22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %32 = ptrtoint ptr %regshift22.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv20.sink.i, ptr %regshift22.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %land.lhs.true.i.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_ni8430_exit(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %3 to i32
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device.i, align 2
  %conv2.i = zext i16 %5 to i32
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_vendor.i, align 4
  %conv3.i = zext i16 %7 to i32
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %8 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device.i, align 2
  %conv4.i = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %conv4.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 0) #11
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %add.ptr = getelementptr i8, ptr %call, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 64) #11, !srcloc !164
  tail call void @iounmap(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_quatech_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pci_match_id(ptr noundef nonnull @quatech_cards, ptr noundef %dev) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.then.if.end42_crit_edge, label %if.then4

if.then.if.end42_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.20, i32 noundef %conv) #15
  br label %if.end42

if.then4:                                         ; preds = %if.then
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.then4.if.end42_crit_edge, label %if.then6

if.then4.if.end42_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @arm_heavy_mb() #11
  %add = add i32 %5, 56
  %and = and i32 %add, 1048575
  %add10 = or i32 %and, -18874368
  %6 = inttoptr i32 %add10 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #11, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !177
  %8 = or i32 %7, 2097152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 %8) #11, !srcloc !164
  %add19 = add i32 %5, 60
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %9 = inttoptr i32 %add21 to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #11, !srcloc !162
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !179
  tail call void @arm_heavy_mb() #11
  %or28 = or i32 %11, 16777216
  %12 = tail call i32 @llvm.bswap.i32(i32 %or28)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %12) #11, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %and36 = and i32 %11, -16777217
  %13 = tail call i32 @llvm.bswap.i32(i32 %and36)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %13) #11, !srcloc !164
  br label %if.end42

if.end42:                                         ; preds = %if.then6, %if.then4.if.end42_crit_edge, %do.end, %if.then.if.end42_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_quatech_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 4
  %and = and i32 %3, 7
  %arrayidx = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %iobase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %iobase, align 4
  %add.i.i.i = add i32 %5, 3
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add2.i.i.i = or i32 %and.i.i.i, -18874368
  %7 = inttoptr i32 %add2.i.i.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -65) #11, !srcloc !174
  %add9.i.i.i = add i32 %5, 7
  %and10.i.i.i = and i32 %add9.i.i.i, 1048575
  %add11.i.i.i = or i32 %and10.i.i.i, -18874368
  %9 = inttoptr i32 %add11.i.i.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %8) #11, !srcloc !174
  %11 = and i8 %10, 63
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %add.i61.i.i = add i32 %13, 3
  %and.i62.i.i = and i32 %add.i61.i.i, 1048575
  %add2.i63.i.i = or i32 %and.i62.i.i, -18874368
  %14 = inttoptr i32 %add2.i63.i.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -65) #11, !srcloc !174
  %add9.i64.i.i = add i32 %13, 7
  %and10.i65.i.i = and i32 %add9.i64.i.i, 1048575
  %add11.i66.i.i = or i32 %and10.i65.i.i, -18874368
  %16 = inttoptr i32 %add11.i66.i.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %11) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %15) #11, !srcloc !174
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add.i68.i.i = add i32 %19, 3
  %and.i69.i.i = and i32 %add.i68.i.i, 1048575
  %add2.i70.i.i = or i32 %and.i69.i.i, -18874368
  %20 = inttoptr i32 %add2.i70.i.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 -65) #11, !srcloc !174
  %add9.i71.i.i = add i32 %19, 7
  %and10.i72.i.i = and i32 %add9.i71.i.i, 1048575
  %add11.i73.i.i = or i32 %and10.i72.i.i, -18874368
  %22 = inttoptr i32 %add11.i73.i.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %21) #11, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %23)
  %cmp.not.i.i = icmp ult i8 %23, 64
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.pci_quatech_clock.exit_crit_edge

entry.pci_quatech_clock.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_quatech_clock.exit

if.end.i.i:                                       ; preds = %entry
  %conv10.i.i = or i8 %11, 64
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase, align 4
  %add.i76.i.i = add i32 %25, 3
  %and.i77.i.i = and i32 %add.i76.i.i, 1048575
  %add2.i78.i.i = or i32 %and.i77.i.i, -18874368
  %26 = inttoptr i32 %add2.i78.i.i to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 -65) #11, !srcloc !174
  %add9.i79.i.i = add i32 %25, 7
  %and10.i80.i.i = and i32 %add9.i79.i.i, 1048575
  %add11.i81.i.i = or i32 %and10.i80.i.i, -18874368
  %28 = inttoptr i32 %add11.i81.i.i to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv10.i.i) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %27) #11, !srcloc !174
  %30 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase, align 4
  %add.i83.i.i = add i32 %31, 3
  %and.i84.i.i = and i32 %add.i83.i.i, 1048575
  %add2.i85.i.i = or i32 %and.i84.i.i, -18874368
  %32 = inttoptr i32 %add2.i85.i.i to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 -65) #11, !srcloc !174
  %add9.i86.i.i = add i32 %31, 7
  %and10.i87.i.i = and i32 %add9.i86.i.i, 1048575
  %add11.i88.i.i = or i32 %and10.i87.i.i, -18874368
  %34 = inttoptr i32 %add11.i88.i.i to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %33) #11, !srcloc !174
  %36 = and i8 %35, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %36)
  %cmp15.not.i.i = icmp eq i8 %36, 64
  br i1 %cmp15.not.i.i, label %if.end18.i.i, label %if.end.i.i.pci_quatech_clock.exit_crit_edge

if.end.i.i.pci_quatech_clock.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_quatech_clock.exit

if.end18.i.i:                                     ; preds = %if.end.i.i
  %conv22.i.i = or i8 %11, -128
  %37 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase, align 4
  %add.i91.i.i = add i32 %38, 3
  %and.i92.i.i = and i32 %add.i91.i.i, 1048575
  %add2.i93.i.i = or i32 %and.i92.i.i, -18874368
  %39 = inttoptr i32 %add2.i93.i.i to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 -65) #11, !srcloc !174
  %add9.i94.i.i = add i32 %38, 7
  %and10.i95.i.i = and i32 %add9.i94.i.i, 1048575
  %add11.i96.i.i = or i32 %and10.i95.i.i, -18874368
  %41 = inttoptr i32 %add11.i96.i.i to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv22.i.i) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %40) #11, !srcloc !174
  %43 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase, align 4
  %add.i98.i.i = add i32 %44, 3
  %and.i99.i.i = and i32 %add.i98.i.i, 1048575
  %add2.i100.i.i = or i32 %and.i99.i.i, -18874368
  %45 = inttoptr i32 %add2.i100.i.i to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 -65) #11, !srcloc !174
  %add9.i101.i.i = add i32 %44, 7
  %and10.i102.i.i = and i32 %add9.i101.i.i, 1048575
  %add11.i103.i.i = or i32 %and10.i102.i.i, -18874368
  %47 = inttoptr i32 %add11.i103.i.i to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 %46) #11, !srcloc !174
  %49 = and i8 %48, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %49)
  %cmp27.not.i.i = icmp eq i8 %49, 64
  br i1 %cmp27.not.i.i, label %if.end30.i.i, label %if.end18.i.i.pci_quatech_clock.exit_crit_edge

if.end18.i.i.pci_quatech_clock.exit_crit_edge:    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_quatech_clock.exit

if.end30.i.i:                                     ; preds = %if.end18.i.i
  %conv34.i.i = or i8 %10, -64
  %50 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iobase, align 4
  %add.i106.i.i = add i32 %51, 3
  %and.i107.i.i = and i32 %add.i106.i.i, 1048575
  %add2.i108.i.i = or i32 %and.i107.i.i, -18874368
  %52 = inttoptr i32 %add2.i108.i.i to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 -65) #11, !srcloc !174
  %add9.i109.i.i = add i32 %51, 7
  %and10.i110.i.i = and i32 %add9.i109.i.i, 1048575
  %add11.i111.i.i = or i32 %and10.i110.i.i, -18874368
  %54 = inttoptr i32 %add11.i111.i.i to ptr
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %conv34.i.i) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %53) #11, !srcloc !174
  %56 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iobase, align 4
  %add.i113.i.i = add i32 %57, 3
  %and.i114.i.i = and i32 %add.i113.i.i, 1048575
  %add2.i115.i.i = or i32 %and.i114.i.i, -18874368
  %58 = inttoptr i32 %add2.i115.i.i to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 -65) #11, !srcloc !174
  %add9.i116.i.i = add i32 %57, 7
  %and10.i117.i.i = and i32 %add9.i116.i.i, 1048575
  %add11.i118.i.i = or i32 %and10.i117.i.i, -18874368
  %60 = inttoptr i32 %add11.i118.i.i to ptr
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %59) #11, !srcloc !174
  %62 = and i8 %61, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %62)
  %cmp39.not.i.i = icmp eq i8 %62, -128
  br i1 %cmp39.not.i.i, label %if.end.i, label %if.end30.i.i.pci_quatech_clock.exit_crit_edge

if.end30.i.i.pci_quatech_clock.exit_crit_edge:    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_quatech_clock.exit

if.end.i:                                         ; preds = %if.end30.i.i
  %63 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iobase, align 4
  %add.i121.i.i = add i32 %64, 3
  %and.i122.i.i = and i32 %add.i121.i.i, 1048575
  %add2.i123.i.i = or i32 %and.i122.i.i, -18874368
  %65 = inttoptr i32 %add2.i123.i.i to ptr
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 -65) #11, !srcloc !174
  %add9.i124.i.i = add i32 %64, 7
  %and10.i125.i.i = and i32 %add9.i124.i.i, 1048575
  %add11.i126.i.i = or i32 %and10.i125.i.i, -18874368
  %67 = inttoptr i32 %add11.i126.i.i to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 %10) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 %66) #11, !srcloc !174
  %69 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iobase, align 4
  %add.i.i = add i32 %70, 3
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %71 = inttoptr i32 %add2.i.i to ptr
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %71) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 -65) #11, !srcloc !174
  %add9.i.i = add i32 %70, 7
  %and10.i.i = and i32 %add9.i.i, 1048575
  %add11.i.i = or i32 %and10.i.i, -18874368
  %73 = inttoptr i32 %add11.i.i to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 %72) #11, !srcloc !174
  %conv3.i = and i8 %74, -4
  %75 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %iobase, align 4
  %add.i65.i = add i32 %76, 3
  %and.i66.i = and i32 %add.i65.i, 1048575
  %add2.i67.i = or i32 %and.i66.i, -18874368
  %77 = inttoptr i32 %add2.i67.i to ptr
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 -65) #11, !srcloc !174
  %add9.i68.i = add i32 %76, 7
  %and10.i69.i = and i32 %add9.i68.i, 1048575
  %add11.i70.i = or i32 %and10.i69.i, -18874368
  %79 = inttoptr i32 %add11.i70.i to ptr
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 %conv3.i) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 %78) #11, !srcloc !174
  %81 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iobase, align 4
  %add.i72.i = add i32 %82, 3
  %and.i73.i = and i32 %add.i72.i, 1048575
  %add2.i74.i = or i32 %and.i73.i, -18874368
  %83 = inttoptr i32 %add2.i74.i to ptr
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %83) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 -65) #11, !srcloc !174
  %add9.i75.i = add i32 %82, 7
  %and10.i76.i = and i32 %add9.i75.i, 1048575
  %add11.i77.i = or i32 %and10.i76.i, -18874368
  %85 = inttoptr i32 %add11.i77.i to ptr
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %84) #11, !srcloc !174
  %87 = and i8 %86, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end9.i:                                        ; preds = %if.end.i
  %conv11.i = or i8 %74, 3
  %88 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %iobase, align 4
  %add.i80.i = add i32 %89, 3
  %and.i81.i = and i32 %add.i80.i, 1048575
  %add2.i82.i = or i32 %and.i81.i, -18874368
  %90 = inttoptr i32 %add2.i82.i to ptr
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %90) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 -65) #11, !srcloc !174
  %add9.i83.i = add i32 %89, 7
  %and10.i84.i = and i32 %add9.i83.i, 1048575
  %add11.i85.i = or i32 %and10.i84.i, -18874368
  %92 = inttoptr i32 %add11.i85.i to ptr
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %92) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 %conv11.i) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 %91) #11, !srcloc !174
  %94 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %iobase, align 4
  %add.i87.i = add i32 %95, 3
  %and.i88.i = and i32 %add.i87.i, 1048575
  %add2.i89.i = or i32 %and.i88.i, -18874368
  %96 = inttoptr i32 %add2.i89.i to ptr
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %96) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 -65) #11, !srcloc !174
  %add9.i90.i = add i32 %95, 7
  %and10.i91.i = and i32 %add9.i90.i, 1048575
  %add11.i92.i = or i32 %and10.i91.i, -18874368
  %98 = inttoptr i32 %add11.i92.i to ptr
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %98) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 %97) #11, !srcloc !174
  %100 = and i8 %99, 3
  %and15.i = zext i8 %100 to i32
  %101 = zext i32 %and15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %and15.i, label %if.then34.i [
    i32 0, label %if.end9.i.out.i_crit_edge
    i32 1, label %if.end9.i.if.end38.i_crit_edge
    i32 2, label %if.then29.i
  ]

if.end9.i.if.end38.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.end9.i.out.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then29.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then34.i, %if.then29.i, %if.end9.i.if.end38.i_crit_edge
  %set.0.i = phi i8 [ 2, %if.then29.i ], [ 3, %if.then34.i ], [ 1, %if.end9.i.if.end38.i_crit_edge ]
  %clock.0.i = phi i32 [ 7372800, %if.then29.i ], [ 14745600, %if.then34.i ], [ 3685400, %if.end9.i.if.end38.i_crit_edge ]
  %or44.i = or i8 %set.0.i, %conv3.i
  br label %out.i

out.i:                                            ; preds = %if.end38.i, %if.end9.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %qopr.0.in.i = phi i8 [ %or44.i, %if.end38.i ], [ %74, %if.end.i.out.i_crit_edge ], [ %74, %if.end9.i.out.i_crit_edge ]
  %clock.1.i = phi i32 [ %clock.0.i, %if.end38.i ], [ 1843200, %if.end.i.out.i_crit_edge ], [ 1843200, %if.end9.i.out.i_crit_edge ]
  %102 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %iobase, align 4
  %add.i95.i = add i32 %103, 3
  %and.i96.i = and i32 %add.i95.i, 1048575
  %add2.i97.i = or i32 %and.i96.i, -18874368
  %104 = inttoptr i32 %add2.i97.i to ptr
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %104) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 -65) #11, !srcloc !174
  %add9.i98.i = add i32 %103, 7
  %and10.i99.i = and i32 %add9.i98.i, 1048575
  %add11.i100.i = or i32 %and10.i99.i, -18874368
  %106 = inttoptr i32 %add11.i100.i to ptr
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %106) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 %qopr.0.in.i) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 %105) #11, !srcloc !174
  br label %pci_quatech_clock.exit

pci_quatech_clock.exit:                           ; preds = %out.i, %if.end30.i.i.pci_quatech_clock.exit_crit_edge, %if.end18.i.i.pci_quatech_clock.exit_crit_edge, %if.end.i.i.pci_quatech_clock.exit_crit_edge, %entry.pci_quatech_clock.exit_crit_edge
  %retval.0.i = phi i32 [ %clock.1.i, %out.i ], [ 1843200, %entry.pci_quatech_clock.exit_crit_edge ], [ 1843200, %if.end.i.i.pci_quatech_clock.exit_crit_edge ], [ 1843200, %if.end18.i.i.pci_quatech_clock.exit_crit_edge ], [ 1843200, %if.end30.i.i.pci_quatech_clock.exit_crit_edge ]
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %108 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %retval.0.i, ptr %uartclk, align 4
  %109 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %iobase, align 4
  %add.i.i14 = add i32 %110, 3
  %and.i.i15 = and i32 %add.i.i14, 1048575
  %add2.i.i16 = or i32 %and.i.i15, -18874368
  %111 = inttoptr i32 %add2.i.i16 to ptr
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %111) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !191
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %111, i8 -65) #11, !srcloc !174
  %add9.i.i17 = add i32 %110, 7
  %and10.i.i18 = and i32 %add9.i.i17, 1048575
  %add11.i.i19 = or i32 %and10.i.i18, -18874368
  %113 = inttoptr i32 %add11.i.i19 to ptr
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %113) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !192
  %115 = and i8 %114, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i.i = icmp eq i8 %115, 0
  br i1 %tobool.not.i.i, label %pci_quatech_clock.exit.if.end_crit_edge, label %do.body16.i.i

pci_quatech_clock.exit.if.end_crit_edge:          ; preds = %pci_quatech_clock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body16.i.i:                                    ; preds = %pci_quatech_clock.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !193
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874365 to ptr), i8 -128) #11, !srcloc !174
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874361 to ptr)) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  %117 = and i8 %116, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool26.not.i.i = icmp eq i8 %117, 0
  br i1 %tobool26.not.i.i, label %pci_quatech_rs422.exit, label %do.body16.i.i.if.end_crit_edge

do.body16.i.i.if.end_crit_edge:                   ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

pci_quatech_rs422.exit:                           ; preds = %do.body16.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !195
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %111, i8 %112) #11, !srcloc !174
  %118 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %iobase, align 4
  %add.i12.i = add i32 %119, 3
  %and.i13.i = and i32 %add.i12.i, 1048575
  %add2.i14.i = or i32 %and.i13.i, -18874368
  %120 = inttoptr i32 %add2.i14.i to ptr
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %120) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 -65) #11, !srcloc !174
  %add9.i15.i = add i32 %119, 7
  %and10.i16.i = and i32 %add9.i15.i, 1048575
  %add11.i17.i = or i32 %and10.i16.i, -18874368
  %122 = inttoptr i32 %add11.i17.i to ptr
  %123 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %122) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !199
  tail call void @arm_heavy_mb() #11
  %124 = or i8 %123, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 %124) #11, !srcloc !174
  %add24.i.i = add i32 %119, 4
  %and25.i.i = and i32 %add24.i.i, 1048575
  %add26.i.i = or i32 %and25.i.i, -18874368
  %125 = inttoptr i32 %add26.i.i to ptr
  %126 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %125) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 %123) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !202
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 %121) #11, !srcloc !174
  %127 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %iobase, align 4
  %add.i19.i = add i32 %128, 3
  %and.i20.i = and i32 %add.i19.i, 1048575
  %add2.i21.i = or i32 %and.i20.i, -18874368
  %129 = inttoptr i32 %add2.i21.i to ptr
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %129) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !204
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %129, i8 -65) #11, !srcloc !174
  %add9.i22.i = add i32 %128, 7
  %and10.i23.i = and i32 %add9.i22.i, 1048575
  %add11.i24.i = or i32 %and10.i23.i, -18874368
  %131 = inttoptr i32 %add11.i24.i to ptr
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %131) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !206
  tail call void @arm_heavy_mb() #11
  %133 = or i8 %132, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %131, i8 %133) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !207
  tail call void @arm_heavy_mb() #11
  %add26.i25.i = add i32 %128, 4
  %and27.i.i = and i32 %add26.i25.i, 1048575
  %add28.i.i = or i32 %and27.i.i, -18874368
  %134 = inttoptr i32 %add28.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 -1) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !208
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %131, i8 %132) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %129, i8 %130) #11, !srcloc !174
  %135 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %iobase, align 4
  %add.i27.i = add i32 %136, 3
  %and.i28.i = and i32 %add.i27.i, 1048575
  %add2.i29.i = or i32 %and.i28.i, -18874368
  %137 = inttoptr i32 %add2.i29.i to ptr
  %138 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %137) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 -65) #11, !srcloc !174
  %add9.i30.i = add i32 %136, 7
  %and10.i31.i = and i32 %add9.i30.i, 1048575
  %add11.i32.i = or i32 %and10.i31.i, -18874368
  %139 = inttoptr i32 %add11.i32.i to ptr
  %140 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %139) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !199
  tail call void @arm_heavy_mb() #11
  %141 = or i8 %140, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 %141) #11, !srcloc !174
  %add24.i33.i = add i32 %136, 4
  %and25.i34.i = and i32 %add24.i33.i, 1048575
  %add26.i35.i = or i32 %and25.i34.i, -18874368
  %142 = inttoptr i32 %add26.i35.i to ptr
  %143 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %142) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 %140) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !202
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 %138) #11, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool3.not.i.not = icmp eq i8 %143, 0
  %144 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %iobase, align 4
  %add.i38.i = add i32 %145, 3
  %and.i39.i = and i32 %add.i38.i, 1048575
  %add2.i40.i = or i32 %and.i39.i, -18874368
  %146 = inttoptr i32 %add2.i40.i to ptr
  %147 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %146) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !204
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 -65) #11, !srcloc !174
  %add9.i41.i = add i32 %145, 7
  %and10.i42.i = and i32 %add9.i41.i, 1048575
  %add11.i43.i = or i32 %and10.i42.i, -18874368
  %148 = inttoptr i32 %add11.i43.i to ptr
  %149 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %148) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !206
  tail call void @arm_heavy_mb() #11
  %150 = or i8 %149, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 %150) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !207
  tail call void @arm_heavy_mb() #11
  %add26.i44.i = add i32 %145, 4
  %and27.i45.i = and i32 %add26.i44.i, 1048575
  %add28.i46.i = or i32 %and27.i45.i, -18874368
  %151 = inttoptr i32 %add28.i46.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 %126) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !208
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 %149) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 %147) #11, !srcloc !174
  br i1 %tobool3.not.i.not, label %pci_quatech_rs422.exit.if.end_crit_edge, label %do.end

pci_quatech_rs422.exit.if.end_crit_edge:          ; preds = %pci_quatech_rs422.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %pci_quatech_rs422.exit
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %priv, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.22) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %pci_quatech_rs422.exit.if.end_crit_edge, %do.body16.i.i.if.end_crit_edge, %pci_quatech_clock.exit.if.end_crit_edge
  %call6 = tail call i32 @pci_default_setup(ptr noundef %priv, ptr noundef %board, ptr noundef %port, i32 noundef %idx)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_plx9050_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %3 to i32
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device.i, align 2
  %conv2.i = zext i16 %5 to i32
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_vendor.i, align 4
  %conv3.i = zext i16 %7 to i32
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %8 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device.i, align 2
  %conv4.i = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.25, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %conv4.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %10 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5332, i16 %11)
  %cmp1 = icmp eq i16 %11, 5332
  br i1 %cmp1, label %if.end.if.then6_crit_edge, label %lor.lhs.false

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %12 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -10163, i16 %13)
  %cmp4 = icmp eq i16 %13, -10163
  br i1 %cmp4, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false.if.end7_crit_edge

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %lor.lhs.false.if.end7_crit_edge
  %irq_config.0 = phi i8 [ 67, %if.then6 ], [ 65, %lor.lhs.false.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4277, i16 %11)
  %cmp10 = icmp eq i16 %11, 4277
  br i1 %cmp10, label %land.lhs.true, label %if.end7.if.end16_crit_edge

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4202, i16 %15)
  %cmp13 = icmp eq i16 %15, 4202
  %spec.select = select i1 %cmp13, i8 91, i8 %irq_config.0
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true, %if.end7.if.end16_crit_edge
  %irq_config.1 = phi i8 [ %irq_config.0, %if.end7.if.end16_crit_edge ], [ %spec.select, %land.lhs.true ]
  %16 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource, align 8
  %call = tail call ptr @ioremap(i32 noundef %17, i32 noundef 128) #11
  %cmp19 = icmp eq ptr %call, null
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %do.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !210
  tail call void @arm_heavy_mb() #11
  %conv23 = zext i8 %irq_config.1 to i32
  %18 = shl nuw nsw i32 %conv23, 24
  %add.ptr = getelementptr i8, ptr %call, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #11, !srcloc !164
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !211
  tail call void @iounmap(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end16.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %do.body ], [ -12, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_plx9050_exit(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  %call = tail call ptr @ioremap(i32 noundef %3, i32 noundef 128) #11
  %cmp3.not = icmp eq ptr %call, null
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !212
  tail call void @arm_heavy_mb() #11
  %add.ptr = getelementptr i8, ptr %call, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !164
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !213
  tail call void @iounmap(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbs_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 0) #11
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  tail call void @arm_heavy_mb() #11
  %add.ptr = getelementptr i8, ptr %call, i32 1280
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 16) #11, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 10737400) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !216
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 4) #11, !srcloc !174
  tail call void @iounmap(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbs_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef writeonly %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %first_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 5
  %0 = ptrtoint ptr %first_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp = icmp slt i32 %idx, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %uart_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 3
  %2 = ptrtoint ptr %uart_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uart_offset, align 4
  %mul = mul i32 %3, %idx
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %idx)
  %cmp1 = icmp ult i32 %idx, 8
  br i1 %cmp1, label %if.then2, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %uart_offset3 = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 3
  %4 = ptrtoint ptr %uart_offset3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uart_offset3, align 4
  %mul4 = mul i32 %5, %idx
  %add5 = add i32 %mul4, 3072
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.then
  %mul.pn = phi i32 [ %mul, %if.then ], [ %add5, %if.then2 ]
  %offset.0 = add i32 %mul.pn, %1
  %reg_shift = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 4
  %6 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_shift, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 0
  %flags.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end8
  %call.i = tail call ptr @pcim_iomap(ptr noundef %9, i32 noundef 0, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = tail call ptr @pcim_iomap_table(ptr noundef %9) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %12 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %iobase.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %15, %offset.0
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %16 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %mapbase.i, align 4
  %call16.i = tail call ptr @pcim_iomap_table(ptr noundef %9) #11
  %17 = ptrtoint ptr %call16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call16.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %offset.0
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %membase.i, align 4
  %conv20.i = trunc i32 %7 to i8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %20 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %iotype24.i, align 2
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 8
  %add29.i = add i32 %22, %offset.0
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %23 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add29.i, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %24 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %mapbase33.i, align 4
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %25 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %membase35.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %conv20.sink.i = phi i8 [ %conv20.i, %if.end9.i ], [ 0, %if.else.i ]
  %regshift22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %26 = ptrtoint ptr %regshift22.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv20.sink.i, ptr %regshift22.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %land.lhs.true.i.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.else.cleanup_crit_edge ], [ -12, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbs_exit(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 0) #11
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %add.ptr = getelementptr i8, ptr %call, i32 1280
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #11, !srcloc !174
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  tail call void @iounmap(ptr noundef %call) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_siig_init(ptr noundef %dev) #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  %2 = and i16 %1, -256
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %2, label %if.end6 [
    i16 4096, label %if.then
    i16 8192, label %if.then4
  ]

if.then:                                          ; preds = %entry
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %4 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource.i, align 8
  %call.i = tail call ptr @ioremap(i32 noundef %5, i32 noundef 128) #11
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %do.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = and i16 %1, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %6)
  %switch.selectcmp22.i = icmp eq i16 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4144, i16 %6)
  %switch.selectcmp.i = icmp eq i16 %6, 4144
  %switch.select.i = select i1 %switch.selectcmp.i, i16 -2049, i16 -5
  %switch.select23.i = select i1 %switch.selectcmp22.i, i16 -33, i16 %switch.select.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !218
  tail call void @arm_heavy_mb() #11
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 40
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !219
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !220
  %and7.i = and i16 %8, %switch.select23.i
  %9 = tail call i16 @llvm.bswap.i16(i16 %and7.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %9) #11, !srcloc !221
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !222
  tail call void @iounmap(ptr noundef nonnull %call.i) #11
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #11
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %data.i, align 1, !annotation !157
  %call.i11 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 111, ptr noundef nonnull %data.i) #11
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data.i, align 1
  %14 = and i8 %13, -17
  %call2.i = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 111, i8 noundef zeroext %14) #11
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device, align 2
  %17 = and i16 %16, -4
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %17, label %if.then4.pci_siig20x_init.exit_crit_edge [
    i16 8240, label %if.then4.if.then.i_crit_edge
    i16 8288, label %if.then4.if.then.i_crit_edge14
  ]

if.then4.if.then.i_crit_edge14:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then4.if.then.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then4.pci_siig20x_init.exit_crit_edge:         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_siig20x_init.exit

if.then.i:                                        ; preds = %if.then4.if.then.i_crit_edge, %if.then4.if.then.i_crit_edge14
  %call11.i = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 115, ptr noundef nonnull %data.i) #11
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data.i, align 1
  %21 = and i8 %20, -17
  %call15.i = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 115, i8 noundef zeroext %21) #11
  br label %pci_siig20x_init.exit

pci_siig20x_init.exit:                            ; preds = %if.then.i, %if.then4.pci_siig20x_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #11
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %22 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %23 to i32
  %conv2.i = zext i16 %1 to i32
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %24 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %subsystem_vendor.i, align 4
  %conv3.i = zext i16 %25 to i32
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %26 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %subsystem_device.i, align 2
  %conv4.i = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.26, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %conv4.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %pci_siig20x_init.exit, %do.body.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pci_siig20x_init.exit ], [ -19, %if.end6 ], [ 0, %do.body.i ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_siig_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef writeonly %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %board, align 4
  %and = and i32 %1, 7
  %add = add i32 %and, %idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %idx)
  %cmp = icmp sgt i32 %idx, 3
  %sub = shl i32 %idx, 3
  %mul = add i32 %sub, -32
  %offset.0 = select i1 %cmp, i32 %mul, i32 0
  %2 = trunc i32 %add to i8
  %conv = select i1 %cmp, i8 4, i8 %2
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %conv.i = zext i8 %conv to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv)
  %cmp.i = icmp ugt i8 %conv, 5
  br i1 %cmp.i, label %entry.setup_port.exit_crit_edge, label %if.end.i

entry.setup_port.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %4, i32 0, i32 47, i32 %conv.i
  %flags.i = getelementptr %struct.pci_dev, ptr %4, i32 0, i32 47, i32 %conv.i, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @pcim_iomap(ptr noundef %4, i32 noundef %conv.i, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = tail call ptr @pcim_iomap_table(ptr noundef %4) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.setup_port.exit_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.setup_port.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %7 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %iobase.i, align 4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %10, %offset.0
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %11 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %mapbase.i, align 4
  %call16.i = tail call ptr @pcim_iomap_table(ptr noundef %4) #11
  %arrayidx18.i = getelementptr ptr, ptr %call16.i, i32 %conv.i
  %12 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx18.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %offset.0
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %14 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %iotype24.i, align 2
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 8
  %add29.i = add i32 %16, %offset.0
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %17 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add29.i, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %18 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %mapbase33.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %.sink = phi ptr [ null, %if.else.i ], [ %add.ptr.i, %if.end9.i ]
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.sink, ptr %membase35.i, align 4
  %regshift22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %20 = ptrtoint ptr %regshift22.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %regshift22.i, align 1
  br label %setup_port.exit

setup_port.exit:                                  ; preds = %cleanup.sink.split.i, %land.lhs.true.i.setup_port.exit_crit_edge, %entry.setup_port.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.setup_port.exit_crit_edge ], [ -12, %land.lhs.true.i.setup_port.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @titan_400l_800l_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef writeonly %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %first_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 5
  %0 = ptrtoint ptr %first_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_offset, align 4
  %2 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %idx, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %idx, -2
  %uart_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 3
  %3 = ptrtoint ptr %uart_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uart_offset, align 4
  %mul = mul i32 %4, %sub
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %entry.sw.epilog_crit_edge
  %bar.0 = phi i32 [ 4, %sw.default ], [ 2, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %offset.0 = phi i32 [ %mul, %sw.default ], [ %1, %sw.bb1 ], [ %1, %entry.sw.epilog_crit_edge ]
  %reg_shift = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 4
  %5 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_shift, align 4
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %8, i32 0, i32 47, i32 %bar.0
  %flags.i = getelementptr %struct.pci_dev, ptr %8, i32 0, i32 47, i32 %bar.0, i32 3
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %sw.epilog
  %call.i = tail call ptr @pcim_iomap(ptr noundef %8, i32 noundef %bar.0, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = tail call ptr @pcim_iomap_table(ptr noundef %8) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.setup_port.exit_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.setup_port.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %11 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %iobase.i, align 4
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %14, %offset.0
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %15 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %mapbase.i, align 4
  %call16.i = tail call ptr @pcim_iomap_table(ptr noundef %8) #11
  %arrayidx18.i = getelementptr ptr, ptr %call16.i, i32 %bar.0
  %16 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %offset.0
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %18 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %membase.i, align 4
  %conv20.i = trunc i32 %6 to i8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %19 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %iotype24.i, align 2
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 8
  %add29.i = add i32 %21, %offset.0
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %22 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add29.i, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %23 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mapbase33.i, align 4
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %24 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %membase35.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %conv20.sink.i = phi i8 [ %conv20.i, %if.end9.i ], [ 0, %if.else.i ]
  %regshift22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %25 = ptrtoint ptr %regshift22.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv20.sink.i, ptr %regshift22.i, align 1
  br label %setup_port.exit

setup_port.exit:                                  ; preds = %cleanup.sink.split.i, %land.lhs.true.i.setup_port.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %land.lhs.true.i.setup_port.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_timedia_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %subsystem_device, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %and)
  %cmp = icmp ugt i32 %and, 111
  br i1 %cmp, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.27, i32 noundef %conv) #15
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_timedia_init(ptr nocapture noundef readonly %dev) #6 align 64 {
for.body4.lr.ph:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %subsystem_device, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %1, label %for.body4.lr.ph.1 [
    i16 16421, label %for.body4.lr.ph.if.then_crit_edge
    i16 16423, label %for.body4.lr.ph.if.then_crit_edge42
    i16 16424, label %for.body4.lr.ph.if.then_crit_edge43
    i16 20517, label %for.body4.lr.ph.if.then_crit_edge44
    i16 20519, label %for.body4.lr.ph.if.then_crit_edge45
  ]

for.body4.lr.ph.if.then_crit_edge45:              ; preds = %for.body4.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.if.then_crit_edge44:              ; preds = %for.body4.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.if.then_crit_edge43:              ; preds = %for.body4.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.if.then_crit_edge42:              ; preds = %for.body4.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.if.then_crit_edge:                ; preds = %for.body4.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %for.body4.lr.ph.3.if.then_crit_edge, %for.body4.lr.ph.3.if.then_crit_edge95, %for.body4.lr.ph.3.if.then_crit_edge96, %for.body4.lr.ph.3.if.then_crit_edge97, %for.body4.lr.ph.3.if.then_crit_edge98, %for.body4.lr.ph.3.if.then_crit_edge99, %for.body4.lr.ph.3.if.then_crit_edge100, %for.body4.lr.ph.3.if.then_crit_edge101, %for.body4.lr.ph.3.if.then_crit_edge102, %for.body4.lr.ph.3.if.then_crit_edge103, %for.body4.lr.ph.3.if.then_crit_edge104, %for.body4.lr.ph.3.if.then_crit_edge105, %for.body4.lr.ph.2.if.then_crit_edge, %for.body4.lr.ph.2.if.then_crit_edge74, %for.body4.lr.ph.2.if.then_crit_edge75, %for.body4.lr.ph.2.if.then_crit_edge76, %for.body4.lr.ph.2.if.then_crit_edge77, %for.body4.lr.ph.2.if.then_crit_edge78, %for.body4.lr.ph.2.if.then_crit_edge79, %for.body4.lr.ph.2.if.then_crit_edge80, %for.body4.lr.ph.2.if.then_crit_edge81, %for.body4.lr.ph.2.if.then_crit_edge82, %for.body4.lr.ph.2.if.then_crit_edge83, %for.body4.lr.ph.2.if.then_crit_edge84, %for.body4.lr.ph.2.if.then_crit_edge85, %for.body4.lr.ph.2.if.then_crit_edge86, %for.body4.lr.ph.2.if.then_crit_edge87, %for.body4.lr.ph.2.if.then_crit_edge88, %for.body4.lr.ph.2.if.then_crit_edge89, %for.body4.lr.ph.2.if.then_crit_edge90, %for.body4.lr.ph.2.if.then_crit_edge91, %for.body4.lr.ph.2.if.then_crit_edge92, %for.body4.lr.ph.2.if.then_crit_edge93, %for.body4.lr.ph.2.if.then_crit_edge94, %for.body4.lr.ph.1.if.then_crit_edge, %for.body4.lr.ph.1.if.then_crit_edge46, %for.body4.lr.ph.1.if.then_crit_edge47, %for.body4.lr.ph.1.if.then_crit_edge48, %for.body4.lr.ph.1.if.then_crit_edge49, %for.body4.lr.ph.1.if.then_crit_edge50, %for.body4.lr.ph.1.if.then_crit_edge51, %for.body4.lr.ph.1.if.then_crit_edge52, %for.body4.lr.ph.1.if.then_crit_edge53, %for.body4.lr.ph.1.if.then_crit_edge54, %for.body4.lr.ph.1.if.then_crit_edge55, %for.body4.lr.ph.1.if.then_crit_edge56, %for.body4.lr.ph.1.if.then_crit_edge57, %for.body4.lr.ph.1.if.then_crit_edge58, %for.body4.lr.ph.1.if.then_crit_edge59, %for.body4.lr.ph.1.if.then_crit_edge60, %for.body4.lr.ph.1.if.then_crit_edge61, %for.body4.lr.ph.1.if.then_crit_edge62, %for.body4.lr.ph.1.if.then_crit_edge63, %for.body4.lr.ph.1.if.then_crit_edge64, %for.body4.lr.ph.1.if.then_crit_edge65, %for.body4.lr.ph.1.if.then_crit_edge66, %for.body4.lr.ph.1.if.then_crit_edge67, %for.body4.lr.ph.1.if.then_crit_edge68, %for.body4.lr.ph.1.if.then_crit_edge69, %for.body4.lr.ph.1.if.then_crit_edge70, %for.body4.lr.ph.1.if.then_crit_edge71, %for.body4.lr.ph.1.if.then_crit_edge72, %for.body4.lr.ph.1.if.then_crit_edge73, %for.body4.lr.ph.if.then_crit_edge, %for.body4.lr.ph.if.then_crit_edge42, %for.body4.lr.ph.if.then_crit_edge43, %for.body4.lr.ph.if.then_crit_edge44, %for.body4.lr.ph.if.then_crit_edge45
  %i.024.lcssa = phi i32 [ 0, %for.body4.lr.ph.if.then_crit_edge ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge ], [ 3, %for.body4.lr.ph.3.if.then_crit_edge ], [ 0, %for.body4.lr.ph.if.then_crit_edge42 ], [ 0, %for.body4.lr.ph.if.then_crit_edge43 ], [ 0, %for.body4.lr.ph.if.then_crit_edge44 ], [ 0, %for.body4.lr.ph.if.then_crit_edge45 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge46 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge47 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge48 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge49 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge50 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge51 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge52 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge53 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge54 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge55 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge56 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge57 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge58 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge59 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge60 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge61 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge62 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge63 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge64 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge65 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge66 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge67 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge68 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge69 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge70 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge71 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge72 ], [ 1, %for.body4.lr.ph.1.if.then_crit_edge73 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge74 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge75 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge76 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge77 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge78 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge79 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge80 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge81 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge82 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge83 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge84 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge85 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge86 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge87 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge88 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge89 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge90 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge91 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge92 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge93 ], [ 2, %for.body4.lr.ph.2.if.then_crit_edge94 ], [ 3, %for.body4.lr.ph.3.if.then_crit_edge95 ], [ 3, %for.body4.lr.ph.3.if.then_crit_edge96 ], [ 3, %for.body4.lr.ph.3.if.then_crit_edge97 ], [ 3, %for.body4.lr.ph.3.if.then_crit_edge98 ], [ 3, %for.body4.lr.ph.3.if.then_crit_edge99 ], [ 3, %for.body4.lr.ph.3.if.then_crit_edge100 ], [ 3, %for.body4.lr.ph.3.if.then_crit_edge101 ], [ 3, %for.body4.lr.ph.3.if.then_crit_edge102 ], [ 3, %for.body4.lr.ph.3.if.then_crit_edge103 ], [ 3, %for.body4.lr.ph.3.if.then_crit_edge104 ], [ 3, %for.body4.lr.ph.3.if.then_crit_edge105 ]
  %arrayidx.le = getelementptr [4 x %struct.timedia_struct], ptr @timedia_data, i32 0, i32 %i.024.lcssa
  %3 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.le, align 4
  br label %cleanup

for.body4.lr.ph.1:                                ; preds = %for.body4.lr.ph
  %5 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %subsystem_device, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %6, label %for.body4.lr.ph.2 [
    i16 2, label %for.body4.lr.ph.1.if.then_crit_edge
    i16 16438, label %for.body4.lr.ph.1.if.then_crit_edge46
    i16 16439, label %for.body4.lr.ph.1.if.then_crit_edge47
    i16 16440, label %for.body4.lr.ph.1.if.then_crit_edge48
    i16 16504, label %for.body4.lr.ph.1.if.then_crit_edge49
    i16 16505, label %for.body4.lr.ph.1.if.then_crit_edge50
    i16 16517, label %for.body4.lr.ph.1.if.then_crit_edge51
    i16 16520, label %for.body4.lr.ph.1.if.then_crit_edge52
    i16 16521, label %for.body4.lr.ph.1.if.then_crit_edge53
    i16 20535, label %for.body4.lr.ph.1.if.then_crit_edge54
    i16 20600, label %for.body4.lr.ph.1.if.then_crit_edge55
    i16 20601, label %for.body4.lr.ph.1.if.then_crit_edge56
    i16 20613, label %for.body4.lr.ph.1.if.then_crit_edge57
    i16 24697, label %for.body4.lr.ph.1.if.then_crit_edge58
    i16 28793, label %for.body4.lr.ph.1.if.then_crit_edge59
    i16 -32647, label %for.body4.lr.ph.1.if.then_crit_edge60
    i16 -32457, label %for.body4.lr.ph.1.if.then_crit_edge61
    i16 -32456, label %for.body4.lr.ph.1.if.then_crit_edge62
    i16 -32201, label %for.body4.lr.ph.1.if.then_crit_edge63
    i16 -32200, label %for.body4.lr.ph.1.if.then_crit_edge64
    i16 -28551, label %for.body4.lr.ph.1.if.then_crit_edge65
    i16 -28361, label %for.body4.lr.ph.1.if.then_crit_edge66
    i16 -28360, label %for.body4.lr.ph.1.if.then_crit_edge67
    i16 -28105, label %for.body4.lr.ph.1.if.then_crit_edge68
    i16 -28104, label %for.body4.lr.ph.1.if.then_crit_edge69
    i16 -24455, label %for.body4.lr.ph.1.if.then_crit_edge70
    i16 -20359, label %for.body4.lr.ph.1.if.then_crit_edge71
    i16 -16263, label %for.body4.lr.ph.1.if.then_crit_edge72
    i16 -12167, label %for.body4.lr.ph.1.if.then_crit_edge73
  ]

for.body4.lr.ph.1.if.then_crit_edge73:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge72:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge71:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge70:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge69:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge68:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge67:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge66:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge65:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge64:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge63:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge62:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge61:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge60:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge59:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge58:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge57:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge56:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge55:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge54:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge53:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge52:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge51:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge50:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge49:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge48:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge47:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge46:            ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.1.if.then_crit_edge:              ; preds = %for.body4.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2:                                ; preds = %for.body4.lr.ph.1
  %8 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %9, label %for.body4.lr.ph.3 [
    i16 16469, label %for.body4.lr.ph.2.if.then_crit_edge
    i16 16470, label %for.body4.lr.ph.2.if.then_crit_edge74
    i16 16533, label %for.body4.lr.ph.2.if.then_crit_edge75
    i16 16534, label %for.body4.lr.ph.2.if.then_crit_edge76
    i16 20566, label %for.body4.lr.ph.2.if.then_crit_edge77
    i16 -32426, label %for.body4.lr.ph.2.if.then_crit_edge78
    i16 -32425, label %for.body4.lr.ph.2.if.then_crit_edge79
    i16 -32170, label %for.body4.lr.ph.2.if.then_crit_edge80
    i16 -32169, label %for.body4.lr.ph.2.if.then_crit_edge81
    i16 -28586, label %for.body4.lr.ph.2.if.then_crit_edge82
    i16 -28330, label %for.body4.lr.ph.2.if.then_crit_edge83
    i16 -28329, label %for.body4.lr.ph.2.if.then_crit_edge84
    i16 -28328, label %for.body4.lr.ph.2.if.then_crit_edge85
    i16 -28327, label %for.body4.lr.ph.2.if.then_crit_edge86
    i16 -28074, label %for.body4.lr.ph.2.if.then_crit_edge87
    i16 -28073, label %for.body4.lr.ph.2.if.then_crit_edge88
    i16 -24490, label %for.body4.lr.ph.2.if.then_crit_edge89
    i16 -24233, label %for.body4.lr.ph.2.if.then_crit_edge90
    i16 -24232, label %for.body4.lr.ph.2.if.then_crit_edge91
    i16 -24231, label %for.body4.lr.ph.2.if.then_crit_edge92
    i16 -20394, label %for.body4.lr.ph.2.if.then_crit_edge93
    i16 -20137, label %for.body4.lr.ph.2.if.then_crit_edge94
  ]

for.body4.lr.ph.2.if.then_crit_edge94:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge93:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge92:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge91:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge90:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge89:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge88:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge87:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge86:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge85:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge84:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge83:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge82:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge81:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge80:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge79:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge78:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge77:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge76:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge75:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge74:            ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.2.if.then_crit_edge:              ; preds = %for.body4.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.3:                                ; preds = %for.body4.lr.ph.2
  %11 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %subsystem_device, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %12, label %for.body4.lr.ph.3.cleanup_crit_edge [
    i16 16485, label %for.body4.lr.ph.3.if.then_crit_edge
    i16 16486, label %for.body4.lr.ph.3.if.then_crit_edge95
    i16 20581, label %for.body4.lr.ph.3.if.then_crit_edge96
    i16 20582, label %for.body4.lr.ph.3.if.then_crit_edge97
    i16 -32410, label %for.body4.lr.ph.3.if.then_crit_edge98
    i16 -28570, label %for.body4.lr.ph.3.if.then_crit_edge99
    i16 -28314, label %for.body4.lr.ph.3.if.then_crit_edge100
    i16 -28313, label %for.body4.lr.ph.3.if.then_crit_edge101
    i16 -28312, label %for.body4.lr.ph.3.if.then_crit_edge102
    i16 -24474, label %for.body4.lr.ph.3.if.then_crit_edge103
    i16 -24217, label %for.body4.lr.ph.3.if.then_crit_edge104
    i16 -24216, label %for.body4.lr.ph.3.if.then_crit_edge105
  ]

for.body4.lr.ph.3.if.then_crit_edge105:           ; preds = %for.body4.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.3.if.then_crit_edge104:           ; preds = %for.body4.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.3.if.then_crit_edge103:           ; preds = %for.body4.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.3.if.then_crit_edge102:           ; preds = %for.body4.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.3.if.then_crit_edge101:           ; preds = %for.body4.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.3.if.then_crit_edge100:           ; preds = %for.body4.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.3.if.then_crit_edge99:            ; preds = %for.body4.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.3.if.then_crit_edge98:            ; preds = %for.body4.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.3.if.then_crit_edge97:            ; preds = %for.body4.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.3.if.then_crit_edge96:            ; preds = %for.body4.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.3.if.then_crit_edge95:            ; preds = %for.body4.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.3.if.then_crit_edge:              ; preds = %for.body4.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body4.lr.ph.3.cleanup_crit_edge:              ; preds = %for.body4.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body4.lr.ph.3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %for.body4.lr.ph.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_timedia_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef writeonly %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %first_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 5
  %0 = ptrtoint ptr %first_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_offset, align 4
  %2 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %idx, label %entry.if.end.i_crit_edge [
    i32 7, label %entry.sw.bb5_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %entry.sw.bb5_crit_edge11
    i32 5, label %entry.sw.bb5_crit_edge12
    i32 6, label %entry.sw.bb5_crit_edge13
  ]

entry.sw.bb5_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.bb5_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.bb5_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %uart_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 3
  %3 = ptrtoint ptr %uart_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uart_offset, align 4
  br label %if.end.i

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %uart_offset4 = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 3
  %5 = ptrtoint ptr %uart_offset4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %uart_offset4, align 4
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb3, %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge11, %entry.sw.bb5_crit_edge12, %entry.sw.bb5_crit_edge13
  %offset.0 = phi i32 [ %1, %entry.sw.bb5_crit_edge ], [ %1, %entry.sw.bb5_crit_edge11 ], [ %1, %entry.sw.bb5_crit_edge12 ], [ %1, %entry.sw.bb5_crit_edge13 ], [ %6, %sw.bb3 ]
  %phi.cast = add nuw nsw i32 %idx, 254
  %phi.cast10 = and i32 %phi.cast, 255
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb5, %sw.bb2, %sw.bb1, %entry.if.end.i_crit_edge
  %bar.0 = phi i32 [ %phi.cast10, %sw.bb5 ], [ 1, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %entry.if.end.i_crit_edge ]
  %offset.1 = phi i32 [ %offset.0, %sw.bb5 ], [ %1, %sw.bb2 ], [ %4, %sw.bb1 ], [ %1, %entry.if.end.i_crit_edge ]
  %reg_shift = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 4
  %7 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_shift, align 4
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 %bar.0
  %flags.i = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 %bar.0, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @pcim_iomap(ptr noundef %10, i32 noundef %bar.0, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = tail call ptr @pcim_iomap_table(ptr noundef %10) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.setup_port.exit_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.setup_port.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %13 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %iobase.i, align 4
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %16, %offset.1
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %17 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %mapbase.i, align 4
  %call16.i = tail call ptr @pcim_iomap_table(ptr noundef %10) #11
  %arrayidx18.i = getelementptr ptr, ptr %call16.i, i32 %bar.0
  %18 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx18.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %offset.1
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %20 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %membase.i, align 4
  %conv20.i = trunc i32 %8 to i8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %21 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %iotype24.i, align 2
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 8
  %add29.i = add i32 %23, %offset.1
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %24 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add29.i, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %25 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %mapbase33.i, align 4
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %26 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %membase35.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %conv20.sink.i = phi i8 [ %conv20.i, %if.end9.i ], [ 0, %if.else.i ]
  %regshift22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %27 = ptrtoint ptr %regshift22.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv20.sink.i, ptr %regshift22.i, align 1
  br label %setup_port.exit

setup_port.exit:                                  ; preds = %cleanup.sink.split.i, %land.lhs.true.i.setup_port.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %land.lhs.true.i.setup_port.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_sunix_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef %port, i32 noundef %idx) #0 align 64 {
entry:
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #11
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %offset, align 4, !annotation !157
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %or = or i32 %2, 134217728
  store i32 %or, ptr %flags, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 121, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp = icmp slt i32 %idx, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %uart_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 3
  %4 = ptrtoint ptr %uart_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uart_offset, align 4
  %mul = mul i32 %5, %idx
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add nsw i32 %idx, -4
  %6 = zext i32 %sub to i64
  %call = call i64 @div_s64_rem(i64 noundef %6, i32 noundef 4, ptr noundef nonnull %offset) #11
  %conv3 = trunc i64 %call to i32
  %mul4 = shl i32 %conv3, 6
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %uart_offset5 = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 3
  %9 = ptrtoint ptr %uart_offset5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uart_offset5, align 4
  %mul6 = mul i32 %10, %8
  %add = add i32 %mul6, %mul4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %add, %if.else ], [ %mul, %if.then ]
  %bar.0 = phi i32 [ 1, %if.else ], [ 0, %if.then ]
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %offset, align 4
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %13, i32 0, i32 47, i32 %bar.0
  %flags.i = getelementptr %struct.pci_dev, ptr %13, i32 0, i32 47, i32 %bar.0, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end
  %call.i = call ptr @pcim_iomap(ptr noundef %13, i32 noundef %bar.0, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = call ptr @pcim_iomap_table(ptr noundef %13) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.setup_port.exit_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.setup_port.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %16 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %iobase.i, align 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %19, %storemerge
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %20 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i, ptr %mapbase.i, align 4
  %call16.i = call ptr @pcim_iomap_table(ptr noundef %13) #11
  %arrayidx18.i = getelementptr ptr, ptr %call16.i, i32 %bar.0
  %21 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx18.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %storemerge
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %23 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %iotype24.i, align 2
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 8
  %add29.i = add i32 %25, %storemerge
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %26 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add29.i, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %27 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %mapbase33.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %.sink = phi ptr [ null, %if.else.i ], [ %add.ptr.i, %if.end9.i ]
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %28 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %.sink, ptr %membase35.i, align 4
  %regshift22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %29 = ptrtoint ptr %regshift22.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %regshift22.i, align 1
  br label %setup_port.exit

setup_port.exit:                                  ; preds = %cleanup.sink.split.i, %land.lhs.true.i.setup_port.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %land.lhs.true.i.setup_port.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_xircom_init(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 100) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_netmos_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %subsystem_device, align 2
  %2 = and i16 %1, 15
  %and = zext i16 %2 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %4, label %if.end [
    i16 -26367, label %entry.cleanup_crit_edge
    i16 -26523, label %entry.cleanup_crit_edge37
  ]

entry.cleanup_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4116, i16 %7)
  %cmp8 = icmp eq i16 %7, 4116
  call void @__sanitizer_cov_trace_const_cmp2(i16 665, i16 %1)
  %cmp12 = icmp eq i16 %1, 665
  %or.cond = select i1 %cmp8, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %8 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %4, label %sw.epilog [
    i16 -26364, label %if.end15.sw.bb_crit_edge
    i16 -26350, label %if.end15.sw.bb_crit_edge38
    i16 -26334, label %if.end15.sw.bb_crit_edge39
    i16 -26368, label %if.end15.sw.bb_crit_edge40
  ]

if.end15.sw.bb_crit_edge40:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end15.sw.bb_crit_edge39:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end15.sw.bb_crit_edge38:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end15.sw.bb_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end15.sw.bb_crit_edge, %if.end15.sw.bb_crit_edge38, %if.end15.sw.bb_crit_edge39, %if.end15.sw.bb_crit_edge40
  %class.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %9 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %class.i, align 8
  %trunc.i = trunc i32 %10 to i8
  %11 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %trunc.i, label %sw.bb.if.end15.i_crit_edge [
    i8 2, label %sw.bb.cleanup_crit_edge
    i8 0, label %land.lhs.true.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.if.end15.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26368, i16 %4)
  %cmp2.i = icmp eq i16 %4, -26368
  br i1 %cmp2.i, label %if.then4.i, label %land.lhs.true.i.if.end15.i_crit_edge

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cond = icmp eq i16 %2, 0
  br i1 %cond, label %do.end.i, label %if.then4.i.cleanup_crit_edge

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.31) #15
  br label %if.then20

if.end15.i:                                       ; preds = %land.lhs.true.i.if.end15.i_crit_edge, %sw.bb.if.end15.i_crit_edge
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %vendor.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %12 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vendor.i.i, align 8
  %conv.i.i = zext i16 %13 to i32
  %conv2.i.i = zext i16 %4 to i32
  %conv3.i.i = zext i16 %7 to i32
  %conv4.i.i = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.33, i32 noundef %conv.i.i, i32 noundef %conv2.i.i, i32 noundef %conv3.i.i, i32 noundef %conv4.i.i) #15
  br label %if.then20

sw.epilog:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp18 = icmp eq i16 %2, 0
  br i1 %cmp18, label %sw.epilog.if.then20_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog.if.then20_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then20:                                        ; preds = %sw.epilog.if.then20_crit_edge, %if.end15.i, %do.end.i
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %14 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device, align 2
  %conv2.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_vendor, align 4
  %conv3.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %subsystem_device, align 2
  %conv4.i = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.30, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %conv4.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %sw.epilog.cleanup_crit_edge, %if.then4.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge37
  %retval.0 = phi i32 [ -19, %if.then20 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge37 ], [ 0, %if.end.cleanup_crit_edge ], [ %and, %sw.epilog.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ %and, %if.then4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_netmos_9900_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef writeonly %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26523, i16 %3)
  %cmp.not = icmp eq i16 %3, -26523
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_device, align 2
  %6 = and i16 %5, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %6)
  %cmp4 = icmp eq i16 %6, 12288
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = trunc i32 %idx to i8
  %conv6 = mul i8 %7, 3
  %reg_shift = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 4
  %8 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_shift, align 4
  %conv.i = zext i8 %conv6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv6)
  %cmp.i = icmp ugt i8 %conv6, 5
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %conv.i
  %flags.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %conv.i, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @pcim_iomap(ptr noundef %1, i32 noundef %conv.i, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = tail call ptr @pcim_iomap_table(ptr noundef %1) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %12 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %iobase.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 8
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %16 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mapbase.i, align 4
  %call16.i = tail call ptr @pcim_iomap_table(ptr noundef %1) #11
  %arrayidx18.i = getelementptr ptr, ptr %call16.i, i32 %conv.i
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18.i, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %membase.i, align 4
  %conv20.i = trunc i32 %9 to i8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %20 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %iotype24.i, align 2
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 8
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %23 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %24 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %mapbase33.i, align 4
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %25 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %membase35.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %conv20.sink.i = phi i8 [ %conv20.i, %if.end9.i ], [ 0, %if.else.i ]
  %regshift22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %26 = ptrtoint ptr %regshift22.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv20.sink.i, ptr %regshift22.i, align 1
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call7 = tail call i32 @pci_default_setup(ptr noundef %priv, ptr noundef %board, ptr noundef %port, i32 noundef %idx)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cleanup.sink.split.i, %land.lhs.true.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -22, %if.then.cleanup_crit_edge ], [ -12, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_endrun_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 29697, i16 %1)
  %cmp = icmp eq i16 %1, 29697
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8192, i16 %4)
  %cmp3.not = icmp eq i16 %4, -8192
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call ptr @pci_iomap(ptr noundef %dev, i32 noundef 0, i32 noundef 5) #11
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call) #11, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  call void @__sanitizer_cov_trace_const_cmp4(i32 131079, i32 %5)
  %cmp10 = icmp eq i32 %5, 131079
  br i1 %cmp10, label %if.then12, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %call, i32 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !224
  %conv14 = zext i8 %6 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_endrun_init.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pci_endrun_init, %if.then18)) #11
          to label %if.end21 [label %if.then18], !srcloc !156

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_endrun_init.__UNIQUE_ID_ddebug239, ptr noundef %dev19, ptr noundef nonnull @.str.35, i32 noundef %conv14) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then12, %if.end8.if.end21_crit_edge
  %number_uarts.0 = phi i32 [ %conv14, %if.then18 ], [ 0, %if.end8.if.end21_crit_edge ], [ %conv14, %if.then12 ]
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %number_uarts.0, %if.end21 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_oxsemi_tornado_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5141, i16 %1)
  %cmp = icmp eq i16 %1, 5141
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %4)
  %cmp3.not = icmp eq i16 %4, -16384
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call ptr @pci_iomap(ptr noundef %dev, i32 noundef 0, i32 noundef 5) #11
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call) #11, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  call void @__sanitizer_cov_trace_const_cmp4(i32 131079, i32 %5)
  %cmp10 = icmp eq i32 %5, 131079
  br i1 %cmp10, label %if.then12, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %call, i32 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !224
  %conv14 = zext i8 %6 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_oxsemi_tornado_init.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pci_oxsemi_tornado_init, %if.then18)) #11
          to label %if.end21 [label %if.then18], !srcloc !156

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_oxsemi_tornado_init.__UNIQUE_ID_ddebug240, ptr noundef %dev19, ptr noundef nonnull @.str.37, i32 noundef %conv14) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then12, %if.end8.if.end21_crit_edge
  %number_uarts.0 = phi i32 [ %conv14, %if.then18 ], [ 0, %if.end8.if.end21_crit_edge ], [ %conv14, %if.then12 ]
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %number_uarts.0, %if.end21 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pci_eg20t_init(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_omegapci_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readnone %board, ptr nocapture noundef writeonly %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 2
  %flags.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 2, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %call.i = tail call ptr @pcim_iomap(ptr noundef %1, i32 noundef 2, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = tail call ptr @pcim_iomap_table(ptr noundef %1) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.setup_port.exit_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.setup_port.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %4 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %iobase.i, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %7, %mul
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %8 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %mapbase.i, align 4
  %call16.i = tail call ptr @pcim_iomap_table(ptr noundef %1) #11
  %arrayidx18.i = getelementptr ptr, ptr %call16.i, i32 2
  %9 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx18.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %11 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %iotype24.i, align 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 8
  %add29.i = add i32 %13, %mul
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %14 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add29.i, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %15 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %mapbase33.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %.sink = phi ptr [ null, %if.else.i ], [ %add.ptr.i, %if.end9.i ]
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.sink, ptr %membase35.i, align 4
  %regshift22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %17 = ptrtoint ptr %regshift22.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %regshift22.i, align 1
  br label %setup_port.exit

setup_port.exit:                                  ; preds = %cleanup.sink.split.i, %land.lhs.true.i.setup_port.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %land.lhs.true.i.setup_port.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_wch_ch353_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 134217728
  store i32 %or, ptr %flags, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %type, align 4
  %call = tail call i32 @pci_default_setup(ptr noundef %priv, ptr noundef %board, ptr noundef %port, i32 noundef %idx)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_wch_ch355_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 134217728
  store i32 %or, ptr %flags, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %type, align 4
  %call = tail call i32 @pci_default_setup(ptr noundef %priv, ptr noundef %board, ptr noundef %port, i32 noundef %idx)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_wch_ch38x_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 134217728
  store i32 %or, ptr %flags, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %type, align 4
  %call = tail call i32 @pci_default_setup(ptr noundef %priv, ptr noundef %board, ptr noundef %port, i32 noundef %idx)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_wch_ch38x_init(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14419, i16 %1)
  %cond = icmp eq i16 %1, 14419
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  tail call void @arm_heavy_mb() #11
  %add = add i32 %3, 235
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 2) #11, !srcloc !174
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_wch_ch38x_exit(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !226
  tail call void @arm_heavy_mb() #11
  %add = add i32 %1, 235
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #11, !srcloc !174
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_asix_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bugs = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %bugs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bugs, align 4
  %2 = or i16 %1, 16
  store i16 %2, ptr %bugs, align 4
  %call = tail call i32 @pci_default_setup(ptr noundef %priv, ptr noundef %board, ptr noundef %port, i32 noundef %idx)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_brcm_trumanage_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_default_setup(ptr noundef %priv, ptr noundef %board, ptr noundef %port, i32 noundef %idx)
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 25, ptr %type, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %or3 = or i32 %2, 671088640
  store i32 %or3, ptr %flags, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_fintek_init(ptr noundef %dev) #0 align 64 {
entry:
  %setting.i = alloca i8, align 1
  %bar_data = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bar_data) #11
  %0 = getelementptr inbounds [3 x i32], ptr %bar_data, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %bar_data, i32 0, i32 2
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 5
  %flags = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 5, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4
  %flags3 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4, i32 3
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags3, align 4
  %and4 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %arrayidx8 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3
  %flags9 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3, i32 3
  %8 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags9, align 4
  %and10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %11, label %if.end.cleanup_crit_edge [
    i16 4356, label %if.end.sw.bb_crit_edge
    i16 4360, label %if.end.sw.bb_crit_edge101
    i16 4370, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.bb_crit_edge101:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge101
  %13 = and i16 %11, 255
  %and14 = zext i16 %13 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %max_port.0 = phi i32 [ %and14, %sw.bb ], [ 12, %if.end.sw.epilog_crit_edge ]
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 8
  %16 = ptrtoint ptr %bar_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %bar_data, align 4
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2, align 8
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %0, align 4
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8, align 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_port.0)
  %cmp98.not = icmp eq i32 %max_port.0, 0
  br i1 %cmp98.not, label %sw.epilog.cleanup_crit_edge, label %for.body.lr.ph

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %sw.epilog
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %tobool53.not = icmp eq ptr %3, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %23 = shl i32 %i.099, 3
  %conv28 = add nuw nsw i32 %23, 64
  %div97 = lshr i32 %i.099, 2
  %arrayidx29 = getelementptr [3 x i32], ptr %bar_data, i32 0, i32 %div97
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx29, align 4
  %and30 = and i32 %25, 224
  %mul31 = and i32 %23, 24
  %add32 = or i32 %and30, %mul31
  %conv33 = and i32 %conv28, 248
  %call35 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %conv33, i8 noundef zeroext 1) #11
  %add37 = or i32 %conv33, 1
  %call38 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %add37, i8 noundef zeroext 51) #11
  %add40 = or i32 %conv33, 4
  %conv42 = trunc i32 %add32 to i8
  %call43 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %add40, i8 noundef zeroext %conv42) #11
  %add45 = or i32 %conv33, 5
  %and46 = lshr i32 %25, 8
  %conv47 = trunc i32 %and46 to i8
  %call48 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %add45, i8 noundef zeroext %conv47) #11
  %add50 = or i32 %conv33, 6
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %conv51 = trunc i32 %27 to i8
  %call52 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %add50, i8 noundef zeroext %conv51) #11
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %for.body
  %arrayidx55 = getelementptr %struct.serial_private, ptr %3, i32 0, i32 4, i32 %i.099
  %28 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx55, align 4
  %call56 = call ptr @serial8250_get_port(i32 noundef %29) #11
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %call56, i32 0, i32 45
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %setting.i) #11
  %32 = ptrtoint ptr %setting.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %setting.i, align 1, !annotation !157
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %call56, i32 0, i32 59
  %33 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private_data.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %conv.i = zext i8 %36 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %add1.i = add nuw nsw i32 %mul.i, 71
  %call.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr.i, i32 noundef %add1.i, ptr noundef nonnull %setting.i) #11
  %rs4852.i = getelementptr inbounds %struct.uart_port, ptr %call56, i32 0, i32 56
  %37 = ptrtoint ptr %rs4852.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rs4852.i, align 4
  %and8.i = and i32 %38, 3
  store i32 %and8.i, ptr %rs4852.i, align 4
  %and10.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %39 = ptrtoint ptr %setting.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %setting.i, align 1
  br i1 %tobool11.not.i, label %if.else27.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %and16.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %41 = or i8 %40, 48
  %42 = and i8 %40, -49
  %43 = or i8 %42, 16
  %storemerge.i = select i1 %tobool17.not.i, i8 %41, i8 %43
  %44 = ptrtoint ptr %setting.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %storemerge.i, ptr %setting.i, align 1
  %delay_rts_after_send.i = getelementptr inbounds %struct.uart_port, ptr %call56, i32 0, i32 56, i32 2
  %45 = ptrtoint ptr %delay_rts_after_send.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %delay_rts_after_send.i, align 4
  %delay_rts_before_send.i = getelementptr inbounds %struct.uart_port, ptr %call56, i32 0, i32 56, i32 1
  %46 = ptrtoint ptr %delay_rts_before_send.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %delay_rts_before_send.i, align 4
  br label %pci_fintek_rs485_config.exit

if.else27.i:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %47 = and i8 %40, -49
  %48 = ptrtoint ptr %setting.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %setting.i, align 1
  br label %pci_fintek_rs485_config.exit

pci_fintek_rs485_config.exit:                     ; preds = %if.else27.i, %if.then12.i
  %49 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %34, align 1
  %conv32.i = zext i8 %50 to i32
  %mul33.i = shl nuw nsw i32 %conv32.i, 3
  %add35.i = add nuw nsw i32 %mul33.i, 71
  %51 = ptrtoint ptr %setting.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %setting.i, align 1
  %call36.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef %add35.i, i8 noundef zeroext %52) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %setting.i) #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %add60 = or i32 %conv33, 7
  %call61 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %add60, i8 noundef zeroext 1) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %pci_fintek_rs485_config.exit
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, %max_port.0
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false6.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %max_port.0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bar_data) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_fintek_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readnone %board, ptr nocapture noundef writeonly %port, i32 noundef %idx) #0 align 64 {
entry:
  %iobase = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %iobase) #11
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %iobase, align 2, !annotation !157
  %3 = shl i32 %idx, 3
  %conv = add i32 %3, 64
  %conv1 = and i32 %conv, 248
  %add2 = or i32 %conv1, 4
  %call = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef %add2, ptr noundef nonnull %iobase) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_fintek_setup.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pci_fintek_setup, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !156

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %iobase, align 2
  %conv7 = zext i16 %5 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_fintek_setup.__UNIQUE_ID_ddebug241, ptr noundef %dev6, ptr noundef nonnull @.str.39, i32 noundef %idx, i32 noundef %conv7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %iotype = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %6 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %iotype, align 2
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %iobase, align 2
  %conv9 = zext i16 %8 to i32
  %iobase11 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %9 = ptrtoint ptr %iobase11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv9, ptr %iobase11, align 4
  %rs485_config = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 18
  %10 = ptrtoint ptr %rs485_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pci_fintek_rs485_config, ptr %rs485_config, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev13, i32 noundef 1, i32 noundef 3520) #11
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %do.end.cleanup_crit_edge, label %if.end17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv18 = trunc i32 %idx to i8
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv18, ptr %call.i, align 1
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %iobase) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_moxa_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %board, ptr nocapture noundef writeonly %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %board, align 4
  %num_ports = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 1
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %idx)
  %cmp1 = icmp eq i32 %idx, 3
  %or.cond = and i1 %cmp1, %cmp
  %uart_offset = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 3
  %4 = ptrtoint ptr %uart_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uart_offset, align 4
  %.idx = select i1 %or.cond, i32 7, i32 %idx
  %mul3 = mul i32 %5, %.idx
  %6 = trunc i32 %1 to i8
  %conv = and i8 %6, 7
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %conv.i = zext i8 %conv to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv)
  %cmp.i = icmp ugt i8 %conv, 5
  br i1 %cmp.i, label %entry.setup_port.exit_crit_edge, label %if.end.i

entry.setup_port.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %8, i32 0, i32 47, i32 %conv.i
  %flags.i = getelementptr %struct.pci_dev, ptr %8, i32 0, i32 47, i32 %conv.i, i32 3
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @pcim_iomap(ptr noundef %8, i32 noundef %conv.i, i32 noundef 0) #11
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %call6.i = tail call ptr @pcim_iomap_table(ptr noundef %8) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.setup_port.exit_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i.setup_port.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %11 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %iotype.i, align 2
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %iobase.i, align 4
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %14, %mul3
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %15 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %mapbase.i, align 4
  %call16.i = tail call ptr @pcim_iomap_table(ptr noundef %8) #11
  %arrayidx18.i = getelementptr ptr, ptr %call16.i, i32 %conv.i
  %16 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %mul3
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %iotype24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %18 = ptrtoint ptr %iotype24.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %iotype24.i, align 2
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 8
  %add29.i = add i32 %20, %mul3
  %iobase31.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %21 = ptrtoint ptr %iobase31.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add29.i, ptr %iobase31.i, align 4
  %mapbase33.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %22 = ptrtoint ptr %mapbase33.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %mapbase33.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end9.i
  %.sink = phi ptr [ null, %if.else.i ], [ %add.ptr.i, %if.end9.i ]
  %membase35.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %23 = ptrtoint ptr %membase35.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.sink, ptr %membase35.i, align 4
  %regshift22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %24 = ptrtoint ptr %regshift22.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %regshift22.i, align 1
  br label %setup_port.exit

setup_port.exit:                                  ; preds = %cleanup.sink.split.i, %land.lhs.true.i.setup_port.exit_crit_edge, %entry.setup_port.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.setup_port.exit_crit_edge ], [ -12, %land.lhs.true.i.setup_port.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_fintek_f815xxa_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %3, label %if.end.cleanup_crit_edge [
    i16 4612, label %if.end.sw.epilog_crit_edge
    i16 4616, label %if.end.sw.epilog_crit_edge27
    i16 4626, label %sw.epilog.thread
  ]

if.end.sw.epilog_crit_edge27:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 521, i8 noundef zeroext 64) #11
  br label %for.body.preheader

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge27
  %5 = and i16 %3, 255
  %and3 = zext i16 %5 to i32
  %call = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 521, i8 noundef zeroext 64) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp21.not = icmp eq i16 %5, 0
  br i1 %cmp21.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.body.preheader_crit_edge

sw.epilog.for.body.preheader_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %sw.epilog.for.body.preheader_crit_edge, %sw.epilog.thread
  %max_port.026 = phi i32 [ 12, %sw.epilog.thread ], [ %and3, %sw.epilog.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.022, 3
  %add = add nuw nsw i32 %mul, 672
  %add6 = add nuw nsw i32 %mul, 673
  %call7 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %add6, i8 noundef zeroext 51) #11
  %call9 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %add, i8 noundef zeroext 1) #11
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %max_port.026
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %max_port.026, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_fintek_f815xxa_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readnone %board, ptr nocapture noundef %port, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %idx2 = getelementptr inbounds %struct.f815xxa_data, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %idx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %idx, ptr %idx2, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @pci_fintek_f815xxa_setup.__key, i16 noundef signext 3) #11
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %private_data, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %4 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %iotype, align 2
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, -2147483648
  store i32 %or, ptr %flags, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %mul = shl i32 %idx, 3
  %add = add i32 %8, %mul
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %9 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %mapbase, align 4
  %serial_out = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %10 = ptrtoint ptr %serial_out to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @f815xxa_mem_serial_out, ptr %serial_out, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kt_serial_in(ptr nocapture noundef readonly %p, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, %offset
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %offset)
  %cmp = icmp eq i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5 = icmp eq i8 %3, 0
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.then7, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 9
  %4 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ier, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %entry.if.end9_crit_edge
  %val.0.in = phi i8 [ %5, %if.then7 ], [ %3, %entry.if.end9_crit_edge ]
  %val.0 = zext i8 %val.0.in to i32
  ret i32 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kt_handle_break(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @serial8250_clear_and_reinit_fifos(ptr noundef %p) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_clear_and_reinit_fifos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @moan_device(ptr noundef %str, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  %conv = zext i16 %1 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %conv2 = zext i16 %3 to i32
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_vendor, align 4
  %conv3 = zext i16 %5 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_device, align 2
  %conv4 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef %str, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_fintek_rs485_config(ptr noundef %port, ptr noundef %rs485) #0 align 64 {
entry:
  %setting = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %setting) #11
  %2 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %setting, align 1, !annotation !157
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %conv = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %add1 = add nuw nsw i32 %mul, 71
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add1, ptr noundef nonnull %setting) #11
  %tobool.not = icmp eq ptr %rs485, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rs4852 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  br label %if.end6

if.else:                                          ; preds = %entry
  %7 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rs485, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %padding = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 3
  %9 = call ptr @memset(ptr %padding, i32 0, i32 20)
  br label %if.end6

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %10 = call ptr @memset(ptr %rs485, i32 0, i32 32)
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.then4, %if.then
  %rs485.addr.0 = phi ptr [ %rs485, %if.then4 ], [ %rs485, %if.else5 ], [ %rs4852, %if.then ]
  %11 = ptrtoint ptr %rs485.addr.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rs485.addr.0, align 4
  %and8 = and i32 %12, 3
  store i32 %and8, ptr %rs485.addr.0, align 4
  %and10 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %13 = ptrtoint ptr %setting to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %setting, align 1
  br i1 %tobool11.not, label %if.else27, label %if.then12

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %and16 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %15 = or i8 %14, 48
  %16 = and i8 %14, -49
  %17 = or i8 %16, 16
  %storemerge = select i1 %tobool17.not, i8 %15, i8 %17
  %18 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %storemerge, ptr %setting, align 1
  %delay_rts_after_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485.addr.0, i32 0, i32 2
  %19 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %delay_rts_after_send, align 4
  %delay_rts_before_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485.addr.0, i32 0, i32 1
  %20 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %delay_rts_before_send, align 4
  br label %if.end31

if.else27:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %21 = and i8 %14, -49
  %22 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %setting, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.else27, %if.then12
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %4, align 1
  %conv32 = zext i8 %24 to i32
  %mul33 = shl nuw nsw i32 %conv32, 3
  %add35 = add nuw nsw i32 %mul33, 71
  %25 = ptrtoint ptr %setting to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %setting, align 1
  %call36 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add35, i8 noundef zeroext %26) #11
  %rs48537 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %cmp.not = icmp eq ptr %rs485.addr.0, %rs48537
  br i1 %cmp.not, label %if.end31.if.end41_crit_edge, label %if.then39

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %27 = call ptr @memcpy(ptr %rs48537, ptr %rs485.addr.0, i32 32)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end31.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %setting) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f815xxa_mem_serial_out(ptr nocapture noundef readonly %p, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  tail call void @arm_heavy_mb() #11
  %conv8 = trunc i32 %value to i8
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv8) #11, !srcloc !174
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 7
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciserial_init_one(ptr noundef %dev, ptr nocapture noundef readonly %ent) #0 align 64 {
entry:
  %tmp = alloca %struct.pciserial_board, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #11
  %0 = getelementptr inbounds %struct.pciserial_board, ptr %tmp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pciserial_board, ptr %tmp, i32 0, i32 2
  %2 = getelementptr inbounds %struct.pciserial_board, ptr %tmp, i32 0, i32 3
  %3 = getelementptr inbounds %struct.pciserial_board, ptr %tmp, i32 0, i32 4
  %4 = getelementptr inbounds %struct.pciserial_board, ptr %tmp, i32 0, i32 5
  %vendor1.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %5 = ptrtoint ptr %vendor1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor1.i, align 8
  %conv.i = zext i16 %6 to i32
  %device2.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %entry
  %quirk.0.i = phi ptr [ @pci_serial_quirks, %entry ], [ %incdec.ptr.i, %for.inc.i ]
  %7 = ptrtoint ptr %quirk.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %quirk.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.i = icmp ne i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv.i)
  %cmp1.i.i = icmp ne i32 %8, %conv.i
  %tobool.not.i = and i1 %cmp.i.i, %cmp1.i.i
  br i1 %tobool.not.i, label %for.cond.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.cond.i.for.inc.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %device.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device.i, align 4
  %11 = ptrtoint ptr %device2.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device2.i, align 2
  %conv3.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i22.i = icmp ne i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv3.i)
  %cmp1.i23.i = icmp ne i32 %10, %conv3.i
  %tobool5.not.i = and i1 %cmp.i22.i, %cmp1.i23.i
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %subvendor.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %subvendor.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %subvendor.i, align 4
  %15 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsystem_vendor.i, align 4
  %conv7.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i25.i = icmp ne i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv7.i)
  %cmp1.i26.i = icmp ne i32 %14, %conv7.i
  %tobool9.not.i = and i1 %cmp.i25.i, %cmp1.i26.i
  br i1 %tobool9.not.i, label %land.lhs.true6.i.for.inc.i_crit_edge, label %land.lhs.true10.i

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %land.lhs.true6.i
  %subdevice.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %subdevice.i, align 4
  %19 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %subsystem_device.i, align 2
  %conv11.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i28.i = icmp ne i32 %18, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv11.i)
  %cmp1.i29.i = icmp ne i32 %18, %conv11.i
  %tobool13.not.i = and i1 %cmp.i28.i, %cmp1.i29.i
  br i1 %tobool13.not.i, label %land.lhs.true10.i.for.inc.i_crit_edge, label %find_quirk.exit

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true10.i.for.inc.i_crit_edge, %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.cond.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.pci_serial_quirk, ptr %quirk.0.i, i32 1
  br label %for.cond.i

find_quirk.exit:                                  ; preds = %land.lhs.true10.i
  %probe = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i, i32 0, i32 4
  %21 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %probe, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %find_quirk.exit.if.end5_crit_edge, label %if.then

find_quirk.exit.if.end5_crit_edge:                ; preds = %find_quirk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %find_quirk.exit
  %call2 = tail call i32 %22(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %find_quirk.exit.if.end5_crit_edge
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %23 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 116, i32 %24)
  %cmp = icmp ugt i32 %24, 116
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.42, i32 noundef %24) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %arrayidx = getelementptr [117 x %struct.pciserial_board], ptr @pci_boards, i32 0, i32 %24
  %call11 = tail call ptr @pci_match_id(ptr noundef nonnull @blacklist, ptr noundef %dev) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = tail call i32 @pcim_enable_device(ptr noundef %dev) #11
  %call16 = tail call i32 @pci_save_state(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %25 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp21 = icmp eq i32 %26, 0
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  %27 = call ptr @memcpy(ptr %tmp, ptr %arrayidx, i32 24)
  %call23 = call fastcc i32 @serial_pci_guess_board(ptr noundef %dev, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end33_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then22.if.end33_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.else:                                          ; preds = %if.end19
  %28 = call ptr @memcpy(ptr %tmp, ptr @pci_boards, i32 24)
  %call27 = call fastcc i32 @serial_pci_guess_board(ptr noundef %dev, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %land.lhs.true, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true:                                    ; preds = %if.else
  %num_ports.i = getelementptr [117 x %struct.pciserial_board], ptr @pci_boards, i32 0, i32 %24, i32 1
  %29 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_ports.i, align 4
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.i = icmp eq i32 %30, %32
  br i1 %cmp.i, label %land.lhs.true.i69, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true.i69:                                ; preds = %land.lhs.true
  %base_baud.i = getelementptr [117 x %struct.pciserial_board], ptr @pci_boards, i32 0, i32 %24, i32 2
  %33 = ptrtoint ptr %base_baud.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_baud.i, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp3.i = icmp eq i32 %34, %36
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i69.if.end33_crit_edge

land.lhs.true.i69.if.end33_crit_edge:             ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i69
  %uart_offset.i = getelementptr [117 x %struct.pciserial_board], ptr @pci_boards, i32 0, i32 %24, i32 3
  %37 = ptrtoint ptr %uart_offset.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %uart_offset.i, align 4
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp6.i = icmp eq i32 %38, %40
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.if.end33_crit_edge

land.lhs.true4.i.if.end33_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %reg_shift.i = getelementptr [117 x %struct.pciserial_board], ptr @pci_boards, i32 0, i32 %24, i32 4
  %41 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg_shift.i, align 4
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp9.i = icmp eq i32 %42, %44
  br i1 %cmp9.i, label %serial_pci_matches.exit, label %land.lhs.true7.i.if.end33_crit_edge

land.lhs.true7.i.if.end33_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

serial_pci_matches.exit:                          ; preds = %land.lhs.true7.i
  %first_offset.i = getelementptr [117 x %struct.pciserial_board], ptr @pci_boards, i32 0, i32 %24, i32 5
  %45 = ptrtoint ptr %first_offset.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %first_offset.i, align 4
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp11.i.not = icmp eq i32 %46, %48
  br i1 %cmp11.i.not, label %if.then31, label %serial_pci_matches.exit.if.end33_crit_edge

serial_pci_matches.exit.if.end33_crit_edge:       ; preds = %serial_pci_matches.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then31:                                        ; preds = %serial_pci_matches.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @moan_device(ptr noundef nonnull @.str.44, ptr noundef %dev)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %serial_pci_matches.exit.if.end33_crit_edge, %land.lhs.true7.i.if.end33_crit_edge, %land.lhs.true4.i.if.end33_crit_edge, %land.lhs.true.i69.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %if.else.if.end33_crit_edge, %if.then22.if.end33_crit_edge
  %board.0 = phi ptr [ %tmp, %if.then22.if.end33_crit_edge ], [ %arrayidx, %if.then31 ], [ %arrayidx, %serial_pci_matches.exit.if.end33_crit_edge ], [ %arrayidx, %if.else.if.end33_crit_edge ], [ %arrayidx, %land.lhs.true7.i.if.end33_crit_edge ], [ %arrayidx, %land.lhs.true4.i.if.end33_crit_edge ], [ %arrayidx, %land.lhs.true.i69.if.end33_crit_edge ], [ %arrayidx, %land.lhs.true.if.end33_crit_edge ]
  %call34 = call ptr @pciserial_init_ports(ptr noundef %dev, ptr noundef %board.0)
  %cmp.i70 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call34, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then36, %if.then22.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %49, %if.then36 ], [ 0, %if.end38 ], [ %call2, %if.then.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call23, %if.then22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pciserial_remove_one(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pciserial_remove_ports(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @serial_pci_guess_board(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %board) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %class.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class.i, align 8
  %shr.i = lshr i32 %1, 8
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %shr.i, label %entry.cleanup_crit_edge [
    i32 1792, label %entry.lor.lhs.false.i_crit_edge
    i32 1794, label %entry.lor.lhs.false.i_crit_edge138
    i32 1795, label %entry.lor.lhs.false.i_crit_edge139
  ]

entry.lor.lhs.false.i_crit_edge139:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge138:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry.lor.lhs.false.i_crit_edge, %entry.lor.lhs.false.i_crit_edge138, %entry.lor.lhs.false.i_crit_edge139
  %and.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %cmp9.i = icmp ugt i32 %and.i, 6
  %shr.mask = and i32 %1, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 459264, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 459264
  %or.cond129 = or i1 %cmp9.i, %cmp
  br i1 %or.cond129, label %lor.lhs.false.i.cleanup_crit_edge, label %for.body.preheader

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false.i
  %flags = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %not.tobool4.not = xor i1 %tobool4.not, true
  %inc = zext i1 %not.tobool4.not to i32
  %first_port.1 = sext i1 %tobool4.not to i32
  %and13 = lshr i32 %4, 9
  %and13.lobit = and i32 %and13, 1
  %flags.1 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 3
  %5 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.1, align 4
  %and.1 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool4.not.1 = icmp eq i32 %and.1, 0
  %and.lobit = lshr exact i32 %and, 8
  %7 = xor i32 %and.lobit, 1
  %not.tobool4.not.1 = xor i1 %tobool4.not.1, true
  %inc.1 = zext i1 %not.tobool4.not.1 to i32
  %num_port.1.1 = add nuw nsw i32 %inc, %inc.1
  %first_port.1.1 = select i1 %tobool4.not.1, i32 %first_port.1, i32 %7
  %and13.1 = lshr i32 %6, 9
  %and13.lobit.1 = and i32 %and13.1, 1
  %spec.select122.1 = add nuw nsw i32 %and13.lobit.1, %and13.lobit
  %flags.2 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2, i32 3
  %8 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.2, align 4
  %and.2 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool4.not.2 = icmp eq i32 %and.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_port.1.1)
  %cmp6.2 = icmp eq i32 %first_port.1.1, -1
  %spec.select.2 = select i1 %cmp6.2, i32 2, i32 %first_port.1.1
  %not.tobool4.not.2 = xor i1 %tobool4.not.2, true
  %inc.2 = zext i1 %not.tobool4.not.2 to i32
  %num_port.1.2 = add nuw nsw i32 %num_port.1.1, %inc.2
  %first_port.1.2 = select i1 %tobool4.not.2, i32 %first_port.1.1, i32 %spec.select.2
  %and13.2 = lshr i32 %9, 9
  %and13.lobit.2 = and i32 %and13.2, 1
  %spec.select122.2 = add nuw nsw i32 %and13.lobit.2, %spec.select122.1
  %flags.3 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3, i32 3
  %10 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.3, align 4
  %and.3 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool4.not.3 = icmp eq i32 %and.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_port.1.2)
  %cmp6.3 = icmp eq i32 %first_port.1.2, -1
  %spec.select.3 = select i1 %cmp6.3, i32 3, i32 %first_port.1.2
  %not.tobool4.not.3 = xor i1 %tobool4.not.3, true
  %inc.3 = zext i1 %not.tobool4.not.3 to i32
  %num_port.1.3 = add nuw nsw i32 %num_port.1.2, %inc.3
  %first_port.1.3 = select i1 %tobool4.not.3, i32 %first_port.1.2, i32 %spec.select.3
  %and13.3 = lshr i32 %11, 9
  %and13.lobit.3 = and i32 %and13.3, 1
  %spec.select122.3 = add nuw nsw i32 %and13.lobit.3, %spec.select122.2
  %flags.4 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4, i32 3
  %12 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.4, align 4
  %and.4 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool4.not.4 = icmp eq i32 %and.4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_port.1.3)
  %cmp6.4 = icmp eq i32 %first_port.1.3, -1
  %spec.select.4 = select i1 %cmp6.4, i32 4, i32 %first_port.1.3
  %not.tobool4.not.4 = xor i1 %tobool4.not.4, true
  %inc.4 = zext i1 %not.tobool4.not.4 to i32
  %num_port.1.4 = add nuw nsw i32 %num_port.1.3, %inc.4
  %first_port.1.4 = select i1 %tobool4.not.4, i32 %first_port.1.3, i32 %spec.select.4
  %and13.4 = lshr i32 %13, 9
  %and13.lobit.4 = and i32 %and13.4, 1
  %spec.select122.4 = add nuw nsw i32 %and13.lobit.4, %spec.select122.3
  %flags.5 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 5, i32 3
  %14 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.5, align 4
  %and.5 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool4.not.5 = icmp eq i32 %and.5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_port.1.4)
  %cmp6.5 = icmp eq i32 %first_port.1.4, -1
  %spec.select.5 = select i1 %cmp6.5, i32 5, i32 %first_port.1.4
  %not.tobool4.not.5 = xor i1 %tobool4.not.5, true
  %inc.5 = zext i1 %not.tobool4.not.5 to i32
  %num_port.1.5 = add nuw nsw i32 %num_port.1.4, %inc.5
  %first_port.1.5 = select i1 %tobool4.not.5, i32 %first_port.1.4, i32 %spec.select.5
  %and13.5 = lshr i32 %15, 9
  %and13.lobit.5 = and i32 %and13.5, 1
  %spec.select122.5 = add nuw nsw i32 %and13.lobit.5, %spec.select122.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select122.5)
  %cmp19 = icmp ult i32 %spec.select122.5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_port.1.5)
  %cmp20 = icmp eq i32 %num_port.1.5, 1
  %or.cond = select i1 %cmp19, i1 %cmp20, i1 false
  br i1 %or.cond, label %if.then21, label %for.body34.preheader

for.body34.preheader:                             ; preds = %for.body.preheader
  %arrayidx36 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and38 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %for.body34.preheader.for.inc68_crit_edge, label %land.lhs.true40

for.body34.preheader.for.inc68_crit_edge:         ; preds = %for.body34.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68

if.then21:                                        ; preds = %for.body.preheader
  %18 = ptrtoint ptr %board to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %first_port.1.5, ptr %board, align 4
  %end = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %first_port.1.5, i32 1
  %19 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp25 = icmp eq i32 %20, 0
  br i1 %cmp25, label %if.then21.cleanup.sink.split_crit_edge, label %cond.false

if.then21.cleanup.sink.split_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cond.false:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx24 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %first_port.1.5
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx24, align 8
  %sub = add i32 %20, 1
  %add = sub i32 %sub, %22
  %phi.bo121 = lshr i32 %add, 3
  br label %cleanup.sink.split

land.lhs.true40:                                  ; preds = %for.body34.preheader
  %end43 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %23 = ptrtoint ptr %end43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp44 = icmp eq i32 %24, 0
  br i1 %cmp44, label %land.lhs.true40.for.inc68_crit_edge, label %cond.end55

land.lhs.true40.for.inc68_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68

cond.end55:                                       ; preds = %land.lhs.true40
  %25 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx36, align 8
  %sub53 = sub i32 %24, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub53)
  %cmp57 = icmp eq i32 %sub53, 7
  br i1 %cmp57, label %if.then62, label %cond.end55.for.inc68_crit_edge

cond.end55.for.inc68_crit_edge:                   ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68

if.then62:                                        ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68

for.inc68:                                        ; preds = %if.then62, %cond.end55.for.inc68_crit_edge, %land.lhs.true40.for.inc68_crit_edge, %for.body34.preheader.for.inc68_crit_edge
  %num_port.3 = phi i32 [ 0, %cond.end55.for.inc68_crit_edge ], [ 0, %for.body34.preheader.for.inc68_crit_edge ], [ 1, %if.then62 ], [ 0, %land.lhs.true40.for.inc68_crit_edge ]
  %cmp59.1 = phi i1 [ true, %cond.end55.for.inc68_crit_edge ], [ true, %for.body34.preheader.for.inc68_crit_edge ], [ false, %if.then62 ], [ true, %land.lhs.true40.for.inc68_crit_edge ]
  %first_port.3 = phi i32 [ -1, %cond.end55.for.inc68_crit_edge ], [ -1, %for.body34.preheader.for.inc68_crit_edge ], [ 0, %if.then62 ], [ -1, %land.lhs.true40.for.inc68_crit_edge ]
  %arrayidx36.1 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %27 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.1, align 4
  %and38.1 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.1)
  %tobool39.not.1 = icmp eq i32 %and38.1, 0
  br i1 %tobool39.not.1, label %for.inc68.for.inc68.1_crit_edge, label %land.lhs.true40.1

for.inc68.for.inc68.1_crit_edge:                  ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.1

land.lhs.true40.1:                                ; preds = %for.inc68
  %end43.1 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 1
  %29 = ptrtoint ptr %end43.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end43.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp44.1 = icmp eq i32 %30, 0
  br i1 %cmp44.1, label %land.lhs.true40.1.for.inc68.1_crit_edge, label %cond.end55.1

land.lhs.true40.1.for.inc68.1_crit_edge:          ; preds = %land.lhs.true40.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.1

cond.end55.1:                                     ; preds = %land.lhs.true40.1
  %31 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx36.1, align 8
  %sub53.1 = sub i32 %30, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub53.1)
  %cmp57.1 = icmp eq i32 %sub53.1, 7
  br i1 %cmp57.1, label %land.lhs.true58.1, label %cond.end55.1.for.inc68.1_crit_edge

cond.end55.1.for.inc68.1_crit_edge:               ; preds = %cond.end55.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.1

land.lhs.true58.1:                                ; preds = %cond.end55.1
  %add60.1 = add nsw i32 %first_port.3, %num_port.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add60.1)
  %cmp61.1 = icmp eq i32 %add60.1, 1
  %or.cond123.1 = select i1 %cmp59.1, i1 true, i1 %cmp61.1
  br i1 %or.cond123.1, label %if.then62.1, label %land.lhs.true58.1.for.inc68.1_crit_edge

land.lhs.true58.1.for.inc68.1_crit_edge:          ; preds = %land.lhs.true58.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.1

if.then62.1:                                      ; preds = %land.lhs.true58.1
  call void @__sanitizer_cov_trace_pc() #13
  %inc63.1 = add nuw nsw i32 %num_port.3, 1
  %spec.select124.1 = select i1 %cmp59.1, i32 1, i32 %first_port.3
  br label %for.inc68.1

for.inc68.1:                                      ; preds = %if.then62.1, %land.lhs.true58.1.for.inc68.1_crit_edge, %cond.end55.1.for.inc68.1_crit_edge, %land.lhs.true40.1.for.inc68.1_crit_edge, %for.inc68.for.inc68.1_crit_edge
  %num_port.3.1 = phi i32 [ %num_port.3, %cond.end55.1.for.inc68.1_crit_edge ], [ %num_port.3, %for.inc68.for.inc68.1_crit_edge ], [ %num_port.3, %land.lhs.true58.1.for.inc68.1_crit_edge ], [ %inc63.1, %if.then62.1 ], [ %num_port.3, %land.lhs.true40.1.for.inc68.1_crit_edge ]
  %first_port.3.1 = phi i32 [ %first_port.3, %cond.end55.1.for.inc68.1_crit_edge ], [ %first_port.3, %for.inc68.for.inc68.1_crit_edge ], [ %first_port.3, %land.lhs.true58.1.for.inc68.1_crit_edge ], [ %spec.select124.1, %if.then62.1 ], [ %first_port.3, %land.lhs.true40.1.for.inc68.1_crit_edge ]
  %arrayidx36.2 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2
  %33 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.2, align 4
  %and38.2 = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.2)
  %tobool39.not.2 = icmp eq i32 %and38.2, 0
  br i1 %tobool39.not.2, label %for.inc68.1.for.inc68.2_crit_edge, label %land.lhs.true40.2

for.inc68.1.for.inc68.2_crit_edge:                ; preds = %for.inc68.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.2

land.lhs.true40.2:                                ; preds = %for.inc68.1
  %end43.2 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2, i32 1
  %35 = ptrtoint ptr %end43.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end43.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp44.2 = icmp eq i32 %36, 0
  br i1 %cmp44.2, label %land.lhs.true40.2.for.inc68.2_crit_edge, label %cond.end55.2

land.lhs.true40.2.for.inc68.2_crit_edge:          ; preds = %land.lhs.true40.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.2

cond.end55.2:                                     ; preds = %land.lhs.true40.2
  %37 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx36.2, align 8
  %sub53.2 = sub i32 %36, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub53.2)
  %cmp57.2 = icmp eq i32 %sub53.2, 7
  br i1 %cmp57.2, label %land.lhs.true58.2, label %cond.end55.2.for.inc68.2_crit_edge

cond.end55.2.for.inc68.2_crit_edge:               ; preds = %cond.end55.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.2

land.lhs.true58.2:                                ; preds = %cond.end55.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_port.3.1)
  %cmp59.2 = icmp eq i32 %first_port.3.1, -1
  %add60.2 = add nsw i32 %first_port.3.1, %num_port.3.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add60.2)
  %cmp61.2 = icmp eq i32 %add60.2, 2
  %or.cond123.2 = select i1 %cmp59.2, i1 true, i1 %cmp61.2
  br i1 %or.cond123.2, label %if.then62.2, label %land.lhs.true58.2.for.inc68.2_crit_edge

land.lhs.true58.2.for.inc68.2_crit_edge:          ; preds = %land.lhs.true58.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.2

if.then62.2:                                      ; preds = %land.lhs.true58.2
  call void @__sanitizer_cov_trace_pc() #13
  %inc63.2 = add nuw nsw i32 %num_port.3.1, 1
  %spec.select124.2 = select i1 %cmp59.2, i32 2, i32 %first_port.3.1
  br label %for.inc68.2

for.inc68.2:                                      ; preds = %if.then62.2, %land.lhs.true58.2.for.inc68.2_crit_edge, %cond.end55.2.for.inc68.2_crit_edge, %land.lhs.true40.2.for.inc68.2_crit_edge, %for.inc68.1.for.inc68.2_crit_edge
  %num_port.3.2 = phi i32 [ %num_port.3.1, %cond.end55.2.for.inc68.2_crit_edge ], [ %num_port.3.1, %for.inc68.1.for.inc68.2_crit_edge ], [ %num_port.3.1, %land.lhs.true58.2.for.inc68.2_crit_edge ], [ %inc63.2, %if.then62.2 ], [ %num_port.3.1, %land.lhs.true40.2.for.inc68.2_crit_edge ]
  %first_port.3.2 = phi i32 [ %first_port.3.1, %cond.end55.2.for.inc68.2_crit_edge ], [ %first_port.3.1, %for.inc68.1.for.inc68.2_crit_edge ], [ %first_port.3.1, %land.lhs.true58.2.for.inc68.2_crit_edge ], [ %spec.select124.2, %if.then62.2 ], [ %first_port.3.1, %land.lhs.true40.2.for.inc68.2_crit_edge ]
  %arrayidx36.3 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3
  %39 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.3, align 4
  %and38.3 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.3)
  %tobool39.not.3 = icmp eq i32 %and38.3, 0
  br i1 %tobool39.not.3, label %for.inc68.2.for.inc68.3_crit_edge, label %land.lhs.true40.3

for.inc68.2.for.inc68.3_crit_edge:                ; preds = %for.inc68.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.3

land.lhs.true40.3:                                ; preds = %for.inc68.2
  %end43.3 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3, i32 1
  %41 = ptrtoint ptr %end43.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %end43.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp44.3 = icmp eq i32 %42, 0
  br i1 %cmp44.3, label %land.lhs.true40.3.for.inc68.3_crit_edge, label %cond.end55.3

land.lhs.true40.3.for.inc68.3_crit_edge:          ; preds = %land.lhs.true40.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.3

cond.end55.3:                                     ; preds = %land.lhs.true40.3
  %43 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx36.3, align 8
  %sub53.3 = sub i32 %42, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub53.3)
  %cmp57.3 = icmp eq i32 %sub53.3, 7
  br i1 %cmp57.3, label %land.lhs.true58.3, label %cond.end55.3.for.inc68.3_crit_edge

cond.end55.3.for.inc68.3_crit_edge:               ; preds = %cond.end55.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.3

land.lhs.true58.3:                                ; preds = %cond.end55.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_port.3.2)
  %cmp59.3 = icmp eq i32 %first_port.3.2, -1
  %add60.3 = add nsw i32 %first_port.3.2, %num_port.3.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add60.3)
  %cmp61.3 = icmp eq i32 %add60.3, 3
  %or.cond123.3 = select i1 %cmp59.3, i1 true, i1 %cmp61.3
  br i1 %or.cond123.3, label %if.then62.3, label %land.lhs.true58.3.for.inc68.3_crit_edge

land.lhs.true58.3.for.inc68.3_crit_edge:          ; preds = %land.lhs.true58.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.3

if.then62.3:                                      ; preds = %land.lhs.true58.3
  call void @__sanitizer_cov_trace_pc() #13
  %inc63.3 = add nuw nsw i32 %num_port.3.2, 1
  %spec.select124.3 = select i1 %cmp59.3, i32 3, i32 %first_port.3.2
  br label %for.inc68.3

for.inc68.3:                                      ; preds = %if.then62.3, %land.lhs.true58.3.for.inc68.3_crit_edge, %cond.end55.3.for.inc68.3_crit_edge, %land.lhs.true40.3.for.inc68.3_crit_edge, %for.inc68.2.for.inc68.3_crit_edge
  %num_port.3.3 = phi i32 [ %num_port.3.2, %cond.end55.3.for.inc68.3_crit_edge ], [ %num_port.3.2, %for.inc68.2.for.inc68.3_crit_edge ], [ %num_port.3.2, %land.lhs.true58.3.for.inc68.3_crit_edge ], [ %inc63.3, %if.then62.3 ], [ %num_port.3.2, %land.lhs.true40.3.for.inc68.3_crit_edge ]
  %first_port.3.3 = phi i32 [ %first_port.3.2, %cond.end55.3.for.inc68.3_crit_edge ], [ %first_port.3.2, %for.inc68.2.for.inc68.3_crit_edge ], [ %first_port.3.2, %land.lhs.true58.3.for.inc68.3_crit_edge ], [ %spec.select124.3, %if.then62.3 ], [ %first_port.3.2, %land.lhs.true40.3.for.inc68.3_crit_edge ]
  %arrayidx36.4 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4
  %45 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.4, align 4
  %and38.4 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.4)
  %tobool39.not.4 = icmp eq i32 %and38.4, 0
  br i1 %tobool39.not.4, label %for.inc68.3.for.inc68.4_crit_edge, label %land.lhs.true40.4

for.inc68.3.for.inc68.4_crit_edge:                ; preds = %for.inc68.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.4

land.lhs.true40.4:                                ; preds = %for.inc68.3
  %end43.4 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4, i32 1
  %47 = ptrtoint ptr %end43.4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %end43.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp44.4 = icmp eq i32 %48, 0
  br i1 %cmp44.4, label %land.lhs.true40.4.for.inc68.4_crit_edge, label %cond.end55.4

land.lhs.true40.4.for.inc68.4_crit_edge:          ; preds = %land.lhs.true40.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.4

cond.end55.4:                                     ; preds = %land.lhs.true40.4
  %49 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx36.4, align 8
  %sub53.4 = sub i32 %48, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub53.4)
  %cmp57.4 = icmp eq i32 %sub53.4, 7
  br i1 %cmp57.4, label %land.lhs.true58.4, label %cond.end55.4.for.inc68.4_crit_edge

cond.end55.4.for.inc68.4_crit_edge:               ; preds = %cond.end55.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.4

land.lhs.true58.4:                                ; preds = %cond.end55.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_port.3.3)
  %cmp59.4 = icmp eq i32 %first_port.3.3, -1
  %add60.4 = add nsw i32 %first_port.3.3, %num_port.3.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add60.4)
  %cmp61.4 = icmp eq i32 %add60.4, 4
  %or.cond123.4 = select i1 %cmp59.4, i1 true, i1 %cmp61.4
  br i1 %or.cond123.4, label %if.then62.4, label %land.lhs.true58.4.for.inc68.4_crit_edge

land.lhs.true58.4.for.inc68.4_crit_edge:          ; preds = %land.lhs.true58.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.4

if.then62.4:                                      ; preds = %land.lhs.true58.4
  call void @__sanitizer_cov_trace_pc() #13
  %inc63.4 = add nuw nsw i32 %num_port.3.3, 1
  %spec.select124.4 = select i1 %cmp59.4, i32 4, i32 %first_port.3.3
  br label %for.inc68.4

for.inc68.4:                                      ; preds = %if.then62.4, %land.lhs.true58.4.for.inc68.4_crit_edge, %cond.end55.4.for.inc68.4_crit_edge, %land.lhs.true40.4.for.inc68.4_crit_edge, %for.inc68.3.for.inc68.4_crit_edge
  %num_port.3.4 = phi i32 [ %num_port.3.3, %cond.end55.4.for.inc68.4_crit_edge ], [ %num_port.3.3, %for.inc68.3.for.inc68.4_crit_edge ], [ %num_port.3.3, %land.lhs.true58.4.for.inc68.4_crit_edge ], [ %inc63.4, %if.then62.4 ], [ %num_port.3.3, %land.lhs.true40.4.for.inc68.4_crit_edge ]
  %first_port.3.4 = phi i32 [ %first_port.3.3, %cond.end55.4.for.inc68.4_crit_edge ], [ %first_port.3.3, %for.inc68.3.for.inc68.4_crit_edge ], [ %first_port.3.3, %land.lhs.true58.4.for.inc68.4_crit_edge ], [ %spec.select124.4, %if.then62.4 ], [ %first_port.3.3, %land.lhs.true40.4.for.inc68.4_crit_edge ]
  %arrayidx36.5 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 5
  %51 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.5, align 4
  %and38.5 = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.5)
  %tobool39.not.5 = icmp eq i32 %and38.5, 0
  br i1 %tobool39.not.5, label %for.inc68.4.for.inc68.5_crit_edge, label %land.lhs.true40.5

for.inc68.4.for.inc68.5_crit_edge:                ; preds = %for.inc68.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.5

land.lhs.true40.5:                                ; preds = %for.inc68.4
  %end43.5 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 5, i32 1
  %53 = ptrtoint ptr %end43.5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %end43.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp44.5 = icmp eq i32 %54, 0
  br i1 %cmp44.5, label %land.lhs.true40.5.for.inc68.5_crit_edge, label %cond.end55.5

land.lhs.true40.5.for.inc68.5_crit_edge:          ; preds = %land.lhs.true40.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.5

cond.end55.5:                                     ; preds = %land.lhs.true40.5
  %55 = ptrtoint ptr %arrayidx36.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx36.5, align 8
  %sub53.5 = sub i32 %54, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub53.5)
  %cmp57.5 = icmp eq i32 %sub53.5, 7
  br i1 %cmp57.5, label %land.lhs.true58.5, label %cond.end55.5.for.inc68.5_crit_edge

cond.end55.5.for.inc68.5_crit_edge:               ; preds = %cond.end55.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.5

land.lhs.true58.5:                                ; preds = %cond.end55.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_port.3.4)
  %cmp59.5 = icmp eq i32 %first_port.3.4, -1
  %add60.5 = add nsw i32 %first_port.3.4, %num_port.3.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %add60.5)
  %cmp61.5 = icmp eq i32 %add60.5, 5
  %or.cond123.5 = select i1 %cmp59.5, i1 true, i1 %cmp61.5
  br i1 %or.cond123.5, label %if.then62.5, label %land.lhs.true58.5.for.inc68.5_crit_edge

land.lhs.true58.5.for.inc68.5_crit_edge:          ; preds = %land.lhs.true58.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.5

if.then62.5:                                      ; preds = %land.lhs.true58.5
  call void @__sanitizer_cov_trace_pc() #13
  %inc63.5 = add nuw nsw i32 %num_port.3.4, 1
  %spec.select124.5 = select i1 %cmp59.5, i32 5, i32 %first_port.3.4
  br label %for.inc68.5

for.inc68.5:                                      ; preds = %if.then62.5, %land.lhs.true58.5.for.inc68.5_crit_edge, %cond.end55.5.for.inc68.5_crit_edge, %land.lhs.true40.5.for.inc68.5_crit_edge, %for.inc68.4.for.inc68.5_crit_edge
  %num_port.3.5 = phi i32 [ %num_port.3.4, %cond.end55.5.for.inc68.5_crit_edge ], [ %num_port.3.4, %for.inc68.4.for.inc68.5_crit_edge ], [ %num_port.3.4, %land.lhs.true58.5.for.inc68.5_crit_edge ], [ %inc63.5, %if.then62.5 ], [ %num_port.3.4, %land.lhs.true40.5.for.inc68.5_crit_edge ]
  %first_port.3.5 = phi i32 [ %first_port.3.4, %cond.end55.5.for.inc68.5_crit_edge ], [ %first_port.3.4, %for.inc68.4.for.inc68.5_crit_edge ], [ %first_port.3.4, %land.lhs.true58.5.for.inc68.5_crit_edge ], [ %spec.select124.5, %if.then62.5 ], [ %first_port.3.4, %land.lhs.true40.5.for.inc68.5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_port.3.5)
  %cmp71 = icmp ugt i32 %num_port.3.5, 1
  br i1 %cmp71, label %if.then72, label %for.inc68.5.cleanup_crit_edge

for.inc68.5.cleanup_crit_edge:                    ; preds = %for.inc68.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then72:                                        ; preds = %for.inc68.5
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %first_port.3.5, 8
  %57 = ptrtoint ptr %board to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or, ptr %board, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then72, %cond.false, %if.then21.cleanup.sink.split_crit_edge
  %num_port.3.5.sink = phi i32 [ %num_port.3.5, %if.then72 ], [ %phi.bo121, %cond.false ], [ 0, %if.then21.cleanup.sink.split_crit_edge ]
  %num_ports74 = getelementptr inbounds %struct.pciserial_board, ptr %board, i32 0, i32 1
  %58 = ptrtoint ptr %num_ports74 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %num_port.3.5.sink, ptr %num_ports74, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc68.5.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %for.inc68.5.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial8250_io_error_detected(ptr noundef %dev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then1:                                         ; preds = %if.end
  %nr.i = getelementptr inbounds %struct.serial_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not.i = icmp eq i32 %3, 0
  br i1 %cmp9.not.i, label %if.then1.for.end.i_crit_edge, label %if.then1.for.body.i_crit_edge

if.then1.for.body.i_crit_edge:                    ; preds = %if.then1
  br label %for.body.i

if.then1.for.end.i_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then1.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then1.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.serial_private, ptr %1, i32 0, i32 4, i32 %i.010.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  tail call void @serial8250_unregister_port(i32 noundef %5) #11
  %inc.i = add nuw i32 %i.010.i, 1
  %6 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then1.for.end.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %vendor1.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %vendor1.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vendor1.i.i, align 8
  %conv.i.i = zext i16 %11 to i32
  %device2.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %subsystem_vendor.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 9
  %subsystem_device.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 10
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %for.end.i
  %quirk.0.i.i = phi ptr [ @pci_serial_quirks, %for.end.i ], [ %incdec.ptr.i.i, %for.inc.i.i ]
  %12 = ptrtoint ptr %quirk.0.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirk.0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.i.i = icmp ne i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i.i)
  %cmp1.i.i.i = icmp ne i32 %13, %conv.i.i
  %tobool.not.i.i = and i1 %cmp.i.i.i, %cmp1.i.i.i
  br i1 %tobool.not.i.i, label %for.cond.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.cond.i.i.for.inc.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.cond.i.i
  %device.i.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device.i.i, align 4
  %16 = ptrtoint ptr %device2.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device2.i.i, align 2
  %conv3.i.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i22.i.i = icmp ne i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv3.i.i)
  %cmp1.i23.i.i = icmp ne i32 %15, %conv3.i.i
  %tobool5.not.i.i = and i1 %cmp.i22.i.i, %cmp1.i23.i.i
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %subvendor.i.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %subvendor.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %subvendor.i.i, align 4
  %20 = ptrtoint ptr %subsystem_vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %subsystem_vendor.i.i, align 4
  %conv7.i.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i25.i.i = icmp ne i32 %19, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv7.i.i)
  %cmp1.i26.i.i = icmp ne i32 %19, %conv7.i.i
  %tobool9.not.i.i = and i1 %cmp.i25.i.i, %cmp1.i26.i.i
  br i1 %tobool9.not.i.i, label %land.lhs.true6.i.i.for.inc.i.i_crit_edge, label %land.lhs.true10.i.i

land.lhs.true6.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true10.i.i:                              ; preds = %land.lhs.true6.i.i
  %subdevice.i.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %subdevice.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %subdevice.i.i, align 4
  %24 = ptrtoint ptr %subsystem_device.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %subsystem_device.i.i, align 2
  %conv11.i.i = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i28.i.i = icmp ne i32 %23, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv11.i.i)
  %cmp1.i29.i.i = icmp ne i32 %23, %conv11.i.i
  %tobool13.not.i.i = and i1 %cmp.i28.i.i, %cmp1.i29.i.i
  br i1 %tobool13.not.i.i, label %land.lhs.true10.i.i.for.inc.i.i_crit_edge, label %find_quirk.exit.i

land.lhs.true10.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true10.i.i.for.inc.i.i_crit_edge, %land.lhs.true6.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.cond.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.pci_serial_quirk, ptr %quirk.0.i.i, i32 1
  br label %for.cond.i.i

find_quirk.exit.i:                                ; preds = %land.lhs.true10.i.i
  %exit.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %quirk.0.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %exit.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %exit.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %find_quirk.exit.i.if.end2_crit_edge, label %if.then.i

find_quirk.exit.i.if.end2_crit_edge:              ; preds = %find_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then.i:                                        ; preds = %find_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %27(ptr noundef %9) #11
  br label %if.end2

if.end2:                                          ; preds = %if.then.i, %find_quirk.exit.i.if.end2_crit_edge, %if.end.if.end2_crit_edge
  tail call void @pci_disable_device(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end2 ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial8250_io_slot_reset(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_restore_state(ptr noundef %dev) #11
  %call1 = tail call i32 @pci_save_state(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %if.end ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial8250_io_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %board = getelementptr inbounds %struct.serial_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board, align 4
  %call1 = tail call ptr @pciserial_init_ports(ptr noundef %dev, ptr noundef %3)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciserial_suspend_one(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %nr.i = getelementptr inbounds %struct.serial_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not.i = icmp eq i32 %3, 0
  br i1 %cmp17.not.i, label %if.then.for.end.i_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.serial_private, ptr %1, i32 0, i32 4, i32 %i.018.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp1.i = icmp sgt i32 %5, -1
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @serial8250_suspend_port(i32 noundef %5) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.018.i, 1
  %6 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %quirk.i = getelementptr inbounds %struct.serial_private, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %quirk.i, align 4
  %exit.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %exit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %exit.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.end.i.if.end_crit_edge, label %if.then4.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then4.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void %11(ptr noundef %13) #11
  br label %if.end

if.end:                                           ; preds = %if.then4.i, %for.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciserial_resume_one(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call1 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %quirk.i = getelementptr inbounds %struct.serial_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %quirk.i, align 4
  %init.i = getelementptr inbounds %struct.pci_serial_quirk, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %5(ptr noundef %7) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %nr.i = getelementptr inbounds %struct.serial_private, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp17.not.i = icmp eq i32 %9, 0
  br i1 %cmp17.not.i, label %if.end.i.if.end5_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.serial_private, ptr %1, i32 0, i32 4, i32 %i.018.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp3.i = icmp sgt i32 %11, -1
  br i1 %cmp3.i, label %if.then4.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @serial8250_resume_port(i32 noundef %11) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.018.i, 1
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end5_crit_edge

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end5:                                          ; preds = %for.inc.i.if.end5_crit_edge, %if.end.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !29, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !64, !65, !66, !67, !69, !71, !72, !73, !74, !75, !77, !79, !81, !82, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !123, !125, !127, !129, !130, !131, !132, !134, !136, !138, !140, !142, !144, !145, !146}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3712, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @pciserial_init_ports.__UNIQUE_ID_ddebug243, !1, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3717, i32 4}
!8 = !{ptr @pciserial_init_ports.__UNIQUE_ID_ddebug244, !7, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3735, i32 3}
!11 = !{ptr @pciserial_init_ports.__UNIQUE_ID_ddebug245, !10, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3740, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @pciserial_init_ports._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @pciserial_init_ports._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_pciserial_init_ports, !19, !"__ksymtab_pciserial_init_ports", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3757, i32 1}
!20 = !{ptr @__ksymtab_pciserial_remove_ports, !21, !"__ksymtab_pciserial_remove_ports", i1 false, i1 false}
!21 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3780, i32 1}
!22 = !{ptr @__ksymtab_pciserial_suspend_ports, !23, !"__ksymtab_pciserial_suspend_ports", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3796, i32 1}
!24 = !{ptr @__ksymtab_pciserial_resume_ports, !25, !"__ksymtab_pciserial_resume_ports", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3812, i32 1}
!26 = !{ptr @__initcall__kmod_8250_pci__246_5468_serial_pci_driver_init6, !27, !"__initcall__kmod_8250_pci__246_5468_serial_pci_driver_init6", i1 false, i1 false}
!27 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 5468, i32 1}
!28 = !{ptr @__exitcall_serial_pci_driver_exit, !27, !"__exitcall_serial_pci_driver_exit", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_file247, !30, !"__UNIQUE_ID_file247", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 5470, i32 1}
!31 = !{ptr @__UNIQUE_ID_license248, !30, !"__UNIQUE_ID_license248", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_description249, !33, !"__UNIQUE_ID_description249", i1 false, i1 false}
!33 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 5471, i32 1}
!34 = !{ptr @pci_serial_quirks, !35, !"pci_serial_quirks", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 1831, i32 32}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 240, i32 3}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pci_inteli960ni_init.__UNIQUE_ID_ddebug238, !37, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 1588, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @skip_tx_en_setup.__UNIQUE_ID_ddebug242, !41, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 907, i32 12}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 927, i32 3}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pci_ite887x_init._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @pci_ite887x_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 949, i32 15}
!53 = !{ptr @inta_addr, !54, !"inta_addr", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 898, i32 20}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 78, i32 2}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @moan_device._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @moan_device._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 684, i32 15}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 1271, i32 3}
!64 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @pci_quatech_init._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @pci_quatech_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @quatech_cards, !68, !"quatech_cards", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 1082, i32 29}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 1297, i32 3}
!71 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pci_quatech_setup._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @pci_quatech_setup._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 258, i32 15}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 520, i32 14}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 590, i32 3}
!81 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @pci_timedia_probe._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @pci_timedia_probe._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @timedia_data, !86, !"timedia_data", i1 false, i1 false}
!86 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 570, i32 3}
!87 = !{ptr @timedia_single_port, !88, !"timedia_single_port", i1 false, i1 false}
!88 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 543, i32 29}
!89 = !{ptr @timedia_dual_port, !90, !"timedia_dual_port", i1 false, i1 false}
!90 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 547, i32 29}
!91 = !{ptr @timedia_quad_port, !92, !"timedia_quad_port", i1 false, i1 false}
!92 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 555, i32 29}
!93 = !{ptr @timedia_eight_port, !94, !"timedia_eight_port", i1 false, i1 false}
!94 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 562, i32 29}
!95 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 862, i32 15}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 828, i32 3}
!99 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @pci_netmos_9900_numports._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @pci_netmos_9900_numports._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 832, i32 14}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 1022, i32 3}
!106 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @pci_endrun_init.__UNIQUE_ID_ddebug239, !105, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 1052, i32 3}
!110 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @pci_oxsemi_tornado_init.__UNIQUE_ID_ddebug240, !109, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 1424, i32 2}
!114 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @pci_fintek_setup.__UNIQUE_ID_ddebug241, !113, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!116 = !{ptr @pci_fintek_f815xxa_setup.__key, !117, !"__key", i1 false, i1 false}
!117 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 1535, i32 2}
!118 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @pci_use_msi, !120, !"pci_use_msi", i1 false, i1 false}
!120 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 61, i32 35}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 5458, i32 11}
!123 = !{ptr @serial_pci_driver, !124, !"serial_pci_driver", i1 false, i1 false}
!124 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 5457, i32 26}
!125 = !{ptr @serial_pci_tbl, !126, !"serial_pci_tbl", i1 false, i1 false}
!126 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3929, i32 35}
!127 = !{ptr @.str.42, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3836, i32 3}
!129 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @pciserial_init_one._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @pciserial_init_one._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3876, i32 16}
!134 = !{ptr @pci_boards, !135, !"pci_boards", i1 false, i1 false}
!135 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 2728, i32 31}
!136 = !{ptr @blacklist, !137, !"blacklist", i1 false, i1 false}
!137 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3521, i32 35}
!138 = !{ptr @serial8250_err_handler, !139, !"serial8250_err_handler", i1 false, i1 false}
!139 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 5451, i32 40}
!140 = !{ptr @pciserial_pm_ops, !141, !"pciserial_pm_ops", i1 false, i1 false}
!141 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3926, i32 8}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/tty/serial/8250/8250_pci.c", i32 3919, i32 4}
!144 = !{ptr @.str.46, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @pciserial_resume_one._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @pciserial_resume_one._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{i64 2149091555, i64 2149091560, i64 2149091573, i64 2149091617, i64 2149091651, i64 2149091672}
!157 = !{!"auto-init"}
!158 = !{i64 5118183}
!159 = !{i64 2155017689}
!160 = !{i64 2155020084}
!161 = !{i64 2155009745}
!162 = !{i64 5118403}
!163 = !{i64 2155010622}
!164 = !{i64 5117985}
!165 = !{i64 2155000764}
!166 = !{i64 2155001651}
!167 = !{i64 2155010955}
!168 = !{i64 2155012079}
!169 = !{i64 2155012974}
!170 = !{i64 2155013227}
!171 = !{i64 2155013637}
!172 = !{i64 2155014509}
!173 = !{i64 2155014683}
!174 = !{i64 5117788}
!175 = !{i64 2155001973}
!176 = !{i64 2155047114}
!177 = !{i64 2155047787}
!178 = !{i64 2155048573}
!179 = !{i64 2155048834}
!180 = !{i64 2155049337}
!181 = !{i64 2155035323}
!182 = !{i64 2155035535}
!183 = !{i64 2155035931}
!184 = !{i64 2155036142}
!185 = !{i64 2155036538}
!186 = !{i64 2155036750}
!187 = !{i64 2155037146}
!188 = !{i64 2155037358}
!189 = !{i64 2155037686}
!190 = !{i64 2155042446}
!191 = !{i64 2155042658}
!192 = !{i64 2155043054}
!193 = !{i64 2155043259}
!194 = !{i64 2155043634}
!195 = !{i64 2155043845}
!196 = !{i64 2155038082}
!197 = !{i64 2155038294}
!198 = !{i64 2155038690}
!199 = !{i64 2155038908}
!200 = !{i64 2155039304}
!201 = !{i64 2155039515}
!202 = !{i64 2155039843}
!203 = !{i64 2155040239}
!204 = !{i64 2155040451}
!205 = !{i64 2155040847}
!206 = !{i64 2155041065}
!207 = !{i64 2155041394}
!208 = !{i64 2155041722}
!209 = !{i64 2155042050}
!210 = !{i64 2154998210}
!211 = !{i64 2154998847}
!212 = !{i64 2154999163}
!213 = !{i64 2154999773}
!214 = !{i64 2155002393}
!215 = !{i64 2155003193}
!216 = !{i64 2155003450}
!217 = !{i64 2155003725}
!218 = !{i64 2155004829}
!219 = !{i64 5117565}
!220 = !{i64 2155005702}
!221 = !{i64 5117365}
!222 = !{i64 2155006171}
!223 = !{i64 2152658752}
!224 = !{i64 2152657528}
!225 = !{i64 2155062314}
!226 = !{i64 2155062692}
!227 = !{i64 2155061925}
!228 = !{i64 2155057356}
!229 = !{i64 2155057641}
