; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_core.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+serial8250_get_port\22, \22a\22\09"
module asm "\09.weak\09__crc_serial8250_get_port\09\09\09\09"
module asm "\09.long\09__crc_serial8250_get_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_get_port\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+serial8250_set_isa_configurator\22, \22a\22\09"
module asm "\09.weak\09__crc_serial8250_set_isa_configurator\09\09\09\09"
module asm "\09.long\09__crc_serial8250_set_isa_configurator\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_set_isa_configurator:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_set_isa_configurator\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_set_isa_configurator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+serial8250_suspend_port\22, \22a\22\09"
module asm "\09.weak\09__crc_serial8250_suspend_port\09\09\09\09"
module asm "\09.long\09__crc_serial8250_suspend_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_suspend_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_suspend_port\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_suspend_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+serial8250_resume_port\22, \22a\22\09"
module asm "\09.weak\09__crc_serial8250_resume_port\09\09\09\09"
module asm "\09.long\09__crc_serial8250_resume_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_resume_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_resume_port\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_resume_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+serial8250_register_8250_port\22, \22a\22\09"
module asm "\09.weak\09__crc_serial8250_register_8250_port\09\09\09\09"
module asm "\09.long\09__crc_serial8250_register_8250_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_register_8250_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_register_8250_port\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_register_8250_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+serial8250_unregister_port\22, \22a\22\09"
module asm "\09.weak\09__crc_serial8250_unregister_port\09\09\09\09"
module asm "\09.long\09__crc_serial8250_unregister_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serial8250_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serial8250_unregister_port\22\09\09\09\09\09"
module asm "__kstrtabns_serial8250_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_8250_ops = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.irq_info = type { %struct.hlist_node, i32, %struct.spinlock, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.2, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.2 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.plat_serial8250_port = type { i32, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@serial8250_ports = internal global { [4 x %struct.uart_8250_port], [576 x i8] } zeroinitializer, align 32
@__kstrtab_serial8250_get_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_get_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_get_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_get_port to i32), ptr @__kstrtab_serial8250_get_port, ptr @__kstrtabns_serial8250_get_port }, section "___ksymtab_gpl+serial8250_get_port", align 4
@serial8250_isa_config = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_serial8250_set_isa_configurator = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_set_isa_configurator = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_set_isa_configurator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_set_isa_configurator to i32), ptr @__kstrtab_serial8250_set_isa_configurator, ptr @__kstrtabns_serial8250_set_isa_configurator }, section "___ksymtab+serial8250_set_isa_configurator", align 4
@__initcall__kmod_8250__238_682_univ8250_console_initcon = internal global ptr @univ8250_console_init, section ".con_initcall.init", align 4
@nr_uarts = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@serial8250_reg = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.19, ptr @.str.20, i32 4, i32 64, i32 0, ptr @univ8250_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_serial8250_suspend_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_suspend_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_suspend_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_suspend_port to i32), ptr @__kstrtab_serial8250_suspend_port, ptr @__kstrtabns_serial8250_suspend_port }, section "___ksymtab+serial8250_suspend_port", align 4
@__kstrtab_serial8250_resume_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_resume_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_resume_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_resume_port to i32), ptr @__kstrtab_serial8250_resume_port, ptr @__kstrtabns_serial8250_resume_port }, section "___ksymtab+serial8250_resume_port", align 4
@serial_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @serial_mutex, i64 52), ptr getelementptr (i8, ptr @serial_mutex, i64 52) }, ptr @serial_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@serial8250_register_8250_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1093, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"skipping CIR port at 0x%lx / 0x%llx, IRQ %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"serial8250_register_8250_port\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/tty/serial/8250/8250_core.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@serial8250_register_8250_port._entry_ptr = internal global ptr @serial8250_register_8250_port._entry, section ".printk_index", align 4
@serial8250_register_8250_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&uart->overrun_backoff)->work)\00", [45 x i8] zeroinitializer }, align 32
@serial8250_register_8250_port.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&uart->overrun_backoff)->timer\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_serial8250_register_8250_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_register_8250_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_register_8250_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_register_8250_port to i32), ptr @__kstrtab_serial8250_register_8250_port, ptr @__kstrtabns_serial8250_register_8250_port }, section "___ksymtab+serial8250_register_8250_port", align 4
@serial8250_isa_devs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_serial8250_unregister_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serial8250_unregister_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serial8250_unregister_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serial8250_unregister_port to i32), ptr @__kstrtab_serial8250_unregister_port, ptr @__kstrtabns_serial8250_unregister_port }, section "___ksymtab+serial8250_unregister_port", align 4
@serial8250_isa_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @serial8250_probe, ptr @serial8250_remove, ptr null, ptr @serial8250_suspend, ptr @serial8250_resume, %struct.device_driver { ptr @.str.23, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_8250__239_1236_serial8250_init6 = internal global ptr @serial8250_init, section ".initcall6.init", align 4
@__exitcall_serial8250_exit = internal global ptr @serial8250_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [39 x i8] c"8250.file=drivers/tty/serial/8250/8250\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [17 x i8] c"8250.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [50 x i8] c"8250.description=Generic 8250/16x50 serial driver\00", section ".modinfo", align 1
@__param_str_share_irqs = internal constant [16 x i8] c"8250.share_irqs\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@share_irqs = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_share_irqs = internal constant %struct.kernel_param { ptr @__param_str_share_irqs, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 2, %union.anon.69 { ptr @share_irqs } }, section "__param", align 4
@__UNIQUE_ID_share_irqstype243 = internal constant [30 x i8] c"8250.parmtype=share_irqs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_share_irqs244 = internal constant [75 x i8] c"8250.parm=share_irqs:Share IRQs with other non-8250/16x50 devices (unsafe)\00", section ".modinfo", align 1
@__param_str_nr_uarts = internal constant [14 x i8] c"8250.nr_uarts\00", align 1
@__param_nr_uarts = internal constant %struct.kernel_param { ptr @__param_str_nr_uarts, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @nr_uarts } }, section "__param", align 4
@__UNIQUE_ID_nr_uartstype245 = internal constant [28 x i8] c"8250.parmtype=nr_uarts:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_nr_uarts246 = internal constant [60 x i8] c"8250.parm=nr_uarts:Maximum number of UARTs supported. (1-4)\00", section ".modinfo", align 1
@__param_str_skip_txen_test = internal constant [20 x i8] c"8250.skip_txen_test\00", align 1
@skip_txen_test = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_skip_txen_test = internal constant %struct.kernel_param { ptr @__param_str_skip_txen_test, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @skip_txen_test } }, section "__param", align 4
@__UNIQUE_ID_skip_txen_testtype247 = internal constant [34 x i8] c"8250.parmtype=skip_txen_test:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_skip_txen_test248 = internal constant [69 x i8] c"8250.parm=skip_txen_test:Skip checking for the TXEN bug at init time\00", section ".modinfo", align 1
@__param_str_probe_rsa = internal constant [15 x i8] c"8250.probe_rsa\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_probe_rsa = internal constant %struct.kparam_array { i32 4, i32 4, ptr @probe_rsa_count, ptr @param_ops_ulong, ptr @probe_rsa }, align 4
@__param_probe_rsa = internal constant %struct.kernel_param { ptr @__param_str_probe_rsa, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.69 { ptr @__param_arr_probe_rsa } }, section "__param", align 4
@__UNIQUE_ID_probe_rsatype249 = internal constant [39 x i8] c"8250.parmtype=probe_rsa:array of ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_probe_rsa250 = internal constant [44 x i8] c"8250.parm=probe_rsa:Probe I/O ports for RSA\00", section ".modinfo", align 1
@__UNIQUE_ID_alias251 = internal constant [26 x i8] c"8250.alias=char-major-4-*\00", section ".modinfo", align 1
@s8250_options.__param_str_share_irqs = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"8250_core.share_irqs\00", [43 x i8] zeroinitializer }, align 32
@s8250_options.__param_share_irqs = internal constant %struct.kernel_param { ptr @s8250_options.__param_str_share_irqs, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @share_irqs } }, section "__param", align 4
@s8250_options.__param_str_nr_uarts = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"8250_core.nr_uarts\00", [45 x i8] zeroinitializer }, align 32
@s8250_options.__param_nr_uarts = internal constant %struct.kernel_param { ptr @s8250_options.__param_str_nr_uarts, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @nr_uarts } }, section "__param", align 4
@s8250_options.__param_str_skip_txen_test = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"8250_core.skip_txen_test\00", [39 x i8] zeroinitializer }, align 32
@s8250_options.__param_skip_txen_test = internal constant %struct.kernel_param { ptr @s8250_options.__param_str_skip_txen_test, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @skip_txen_test } }, section "__param", align 4
@s8250_options.__param_str_probe_rsa = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"8250_core.probe_rsa\00", [44 x i8] zeroinitializer }, align 32
@s8250_options.__param_probe_rsa = internal constant %struct.kernel_param { ptr @s8250_options.__param_str_probe_rsa, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.69 { ptr @__param_arr_probe_rsa } }, section "__param", align 4
@univ8250_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyS\00\00\00\00\00\00\00\00\00\00\00\00", ptr @univ8250_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @univ8250_console_setup, ptr @univ8250_console_exit, ptr @univ8250_console_match, i16 17, i16 -1, i32 0, i32 0, i32 0, ptr @serial8250_reg, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.univ8250_console_match.match = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@serial8250_isa_init_ports.first = internal global { i1, [31 x i8] } zeroinitializer, align 32
@base_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@univ8250_port_ops = internal global { %struct.uart_ops, [56 x i8] } zeroinitializer, align 32
@serial8250_isa_init_ports.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&up->timer)\00", [19 x i8] zeroinitializer }, align 32
@univ8250_driver_ops = internal constant { %struct.uart_8250_ops, [24 x i8] } { %struct.uart_8250_ops { ptr @univ8250_setup_irq, ptr @univ8250_release_irq }, [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@univ8250_setup_irq.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8250\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"univ8250_setup_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - using backup timer\0A\00", [39 x i8] zeroinitializer }, align 32
@hash_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @hash_mutex, i64 52), ptr getelementptr (i8, ptr @hash_mutex, i64 52) }, ptr @hash_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@irq_lists = internal global { [32 x %struct.hlist_head], [32 x i8] } zeroinitializer, align 32
@serial_link_irq_chain.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&i->lock\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hash_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hash_mutex\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@serial8250_interrupt.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"serial8250_interrupt\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(%d): start\0A\00", [17 x i8] zeroinitializer }, align 32
@serial8250_interrupt.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(%d): end\0A\00", [19 x i8] zeroinitializer }, align 32
@probe_rsa_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@probe_rsa = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"serial-rsa\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ttyS\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"serial_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"serial_mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"serial8250\00", [21 x i8] zeroinitializer }, align 32
@serial8250_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 835, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"unable to register port at index %d (IO%lx MEM%llx IRQ%d): %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"serial8250_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@serial8250_probe._entry_ptr = internal global ptr @serial8250_probe._entry, section ".printk_index", align 4
@serial8250_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016Serial: 8250/16550 driver, %d ports, IRQ sharing %sabled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"serial8250_init\00", [16 x i8] zeroinitializer }, align 32
@serial8250_init._entry_ptr = internal global ptr @serial8250_init._entry, section ".printk_index", align 4
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 2, i64 3, i64 6, i64 7]
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"serial8250_ports\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 387, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"serial8250_isa_config\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 407, i32 15 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"nr_uarts\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 52, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"serial8250_reg\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 689, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"serial_mutex\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1089, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1102, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"serial8250_isa_devs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 899, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"serial8250_isa_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 885, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"share_irqs\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 50, i32 21 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"skip_txen_test\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 56, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant [23 x i8] c"__param_str_share_irqs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1274, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"__param_str_nr_uarts\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1275, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [27 x i8] c"__param_str_skip_txen_test\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1276, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"__param_str_probe_rsa\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1278, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"univ8250_console\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 661, i32 23 }
@___asan_gen_.103 = private unnamed_addr constant [32 x i8] c"serial8250_isa_init_ports.first\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [9 x i8] c"base_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 379, i32 31 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"univ8250_port_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 380, i32 24 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 508, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"univ8250_driver_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 382, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 312, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [11 x i8] c"hash_mutex\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"irq_lists\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 91, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 192, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 92, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 114, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 140, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"probe_rsa_count\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 80, i32 21 }
@___asan_gen_.158 = private unnamed_addr constant [10 x i8] c"probe_rsa\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 79, i32 22 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 354, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 691, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 692, i32 15 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 906, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 891, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 832, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [39 x i8] c"../drivers/tty/serial/8250/8250_core.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1165, i32 2 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_alias251, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_nr_uarts246, ptr @__UNIQUE_ID_nr_uartstype245, ptr @__UNIQUE_ID_probe_rsa250, ptr @__UNIQUE_ID_probe_rsatype249, ptr @__UNIQUE_ID_share_irqs244, ptr @__UNIQUE_ID_share_irqstype243, ptr @__UNIQUE_ID_skip_txen_test248, ptr @__UNIQUE_ID_skip_txen_testtype247, ptr @__exitcall_serial8250_exit, ptr @__initcall__kmod_8250__238_682_univ8250_console_initcon, ptr @__initcall__kmod_8250__239_1236_serial8250_init6, ptr @__ksymtab_serial8250_get_port, ptr @__ksymtab_serial8250_register_8250_port, ptr @__ksymtab_serial8250_resume_port, ptr @__ksymtab_serial8250_set_isa_configurator, ptr @__ksymtab_serial8250_suspend_port, ptr @__ksymtab_serial8250_unregister_port, ptr @__param_nr_uarts, ptr @__param_probe_rsa, ptr @__param_share_irqs, ptr @__param_skip_txen_test, ptr @s8250_options, ptr @s8250_options.__param_nr_uarts, ptr @s8250_options.__param_probe_rsa, ptr @s8250_options.__param_share_irqs, ptr @s8250_options.__param_skip_txen_test, ptr @serial8250_exit, ptr @serial8250_init._entry, ptr @serial8250_init._entry_ptr, ptr @serial8250_probe._entry, ptr @serial8250_probe._entry_ptr, ptr @serial8250_register_8250_port._entry, ptr @serial8250_register_8250_port._entry_ptr, ptr @serial8250_ports, ptr @serial8250_isa_config, ptr @nr_uarts, ptr @serial8250_reg, ptr @serial_mutex, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @serial8250_register_8250_port.__key, ptr @.str.5, ptr @serial8250_register_8250_port.__key.6, ptr @.str.7, ptr @serial8250_isa_devs, ptr @serial8250_isa_driver, ptr @share_irqs, ptr @skip_txen_test, ptr @s8250_options.__param_str_share_irqs, ptr @s8250_options.__param_str_nr_uarts, ptr @s8250_options.__param_str_skip_txen_test, ptr @s8250_options.__param_str_probe_rsa, ptr @univ8250_console, ptr @serial8250_isa_init_ports.first, ptr @base_ops, ptr @univ8250_port_ops, ptr @serial8250_isa_init_ports.__key, ptr @.str.8, ptr @univ8250_driver_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @hash_mutex, ptr @irq_lists, ptr @serial_link_irq_chain.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @probe_rsa_count, ptr @probe_rsa, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_ports to i32), i32 2336, i32 2912, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_isa_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_uarts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_reg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_register_8250_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_register_8250_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_register_8250_port.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_isa_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_isa_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_irqs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skip_txen_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s8250_options.__param_str_share_irqs to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s8250_options.__param_str_nr_uarts to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s8250_options.__param_str_skip_txen_test to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s8250_options.__param_str_probe_rsa to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @univ8250_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_isa_init_ports.first to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @univ8250_port_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_isa_init_ports.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @univ8250_driver_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_lists to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_link_irq_chain.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_rsa_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_rsa to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial8250_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @serial8250_get_port(i32 noundef %line) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %line
  ret ptr %arrayidx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @serial8250_set_isa_configurator(ptr noundef %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %v, ptr @serial8250_isa_config, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @univ8250_console_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_uarts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @serial8250_isa_init_ports() #12
  tail call void @register_console(ptr noundef nonnull @univ8250_console) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @early_serial_setup(ptr nocapture noundef readonly %port) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr @nr_uarts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call fastcc void @serial8250_isa_init_ports() #12
  %3 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %line, align 4
  %arrayidx = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %4
  %iobase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %iobase4 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 1
  %7 = ptrtoint ptr %iobase4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %iobase4, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %membase5 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %10 = ptrtoint ptr %membase5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %membase5, align 4
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %irq6 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 20
  %13 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %irq6, align 4
  %irqflags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 21
  %14 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irqflags, align 4
  %irqflags7 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 21
  %16 = ptrtoint ptr %irqflags7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %irqflags7, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %17 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uartclk, align 4
  %uartclk8 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 22
  %19 = ptrtoint ptr %uartclk8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %uartclk8, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %20 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fifosize, align 4
  %fifosize9 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 23
  %22 = ptrtoint ptr %fifosize9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %fifosize9, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %23 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %regshift, align 1
  %regshift10 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 25
  %25 = ptrtoint ptr %regshift10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %regshift10, align 1
  %iotype = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %26 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %iotype, align 2
  %iotype11 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 26
  %28 = ptrtoint ptr %iotype11 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %iotype11, align 2
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %flags12 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 33
  %31 = ptrtoint ptr %flags12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %flags12, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %32 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mapbase, align 4
  %mapbase13 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 43
  %34 = ptrtoint ptr %mapbase13 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %mapbase13, align 4
  %mapsize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 44
  %35 = ptrtoint ptr %mapsize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mapsize, align 4
  %mapsize14 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 44
  %37 = ptrtoint ptr %mapsize14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %mapsize14, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %38 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private_data, align 4
  %private_data15 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 59
  %40 = ptrtoint ptr %private_data15 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %private_data15, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type, align 4
  %type16 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 38
  %43 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %type16, align 4
  %44 = load i32, ptr %line, align 4
  %line18 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 41
  %45 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %line18, align 4
  tail call void @serial8250_set_defaults(ptr noundef %arrayidx) #9
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %46 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %serial_in, align 4
  %tobool.not = icmp eq ptr %47, null
  br i1 %tobool.not, label %if.end.if.end22_crit_edge, label %if.then19

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %serial_in21 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 3
  %48 = ptrtoint ptr %serial_in21 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %serial_in21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end.if.end22_crit_edge
  %serial_out = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %49 = ptrtoint ptr %serial_out to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %serial_out, align 4
  %tobool23.not = icmp eq ptr %50, null
  br i1 %tobool23.not, label %if.end22.if.end27_crit_edge, label %if.then24

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %serial_out26 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 4
  %51 = ptrtoint ptr %serial_out26 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %serial_out26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22.if.end27_crit_edge
  %handle_irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 15
  %52 = ptrtoint ptr %handle_irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %handle_irq, align 4
  %tobool28.not = icmp eq ptr %53, null
  br i1 %tobool28.not, label %if.end27.cleanup_crit_edge, label %if.then29

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %handle_irq31 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 15
  %54 = ptrtoint ptr %handle_irq31 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %handle_irq31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end27.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serial8250_isa_init_ports() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @serial8250_isa_init_ports.first, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  store i1 true, ptr @serial8250_isa_init_ports.first, align 4
  %0 = load i32, ptr @nr_uarts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp ugt i32 %0, 4
  br i1 %cmp, label %if.end2.thread, label %if.end2

if.end2.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store i32 4, ptr @nr_uarts, align 4
  br label %for.body.preheader

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp373.not = icmp eq i32 %0, 0
  br i1 %cmp373.not, label %if.end2.for.end_crit_edge, label %if.end2.for.body.preheader_crit_edge

if.end2.for.body.preheader_crit_edge:             ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end2.for.body.preheader_crit_edge, %if.end2.thread
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.preheader
  %i.074 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %i.074
  %line = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 41
  %1 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %i.074, ptr %line, align 4
  tail call void @serial8250_init_port(ptr noundef %arrayidx) #9
  %2 = load ptr, ptr @base_ops, align 4
  %tobool6.not = icmp eq ptr %2, null
  br i1 %tobool6.not, label %if.then7, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %ops = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 39
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  store ptr %4, ptr @base_ops, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.body.if.end8_crit_edge
  %ops9 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 39
  %5 = ptrtoint ptr %ops9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @univ8250_port_ops, ptr %ops9, align 4
  %timer = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %i.074, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @serial8250_timeout, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @serial8250_isa_init_ports.__key) #9
  %ops10 = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %i.074, i32 20
  %6 = ptrtoint ptr %ops10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @univ8250_driver_ops, ptr %ops10, align 4
  tail call void @serial8250_set_defaults(ptr noundef %arrayidx) #9
  %inc = add nuw i32 %i.074, 1
  %7 = load i32, ptr @nr_uarts, align 4
  %cmp3 = icmp ult i32 %inc, %7
  br i1 %cmp3, label %if.end8.for.body_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %if.end2.for.end_crit_edge
  %8 = load ptr, ptr @base_ops, align 4
  %9 = call ptr @memcpy(ptr @univ8250_port_ops, ptr %8, i32 104)
  store ptr @univ8250_config_port, ptr getelementptr inbounds (%struct.uart_ops, ptr @univ8250_port_ops, i32 0, i32 20), align 4
  store ptr @univ8250_request_port, ptr getelementptr inbounds (%struct.uart_ops, ptr @univ8250_port_ops, i32 0, i32 19), align 4
  store ptr @univ8250_release_port, ptr getelementptr inbounds (%struct.uart_ops, ptr @univ8250_port_ops, i32 0, i32 18), align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_set_defaults(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @serial8250_suspend_port(i32 noundef %line) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %line
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %0 = load i8, ptr @console_suspend_enabled, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %cons = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 32
  %1 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cons, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true3

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true3:                                   ; preds = %land.lhs.true
  %index = getelementptr inbounds %struct.console, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %index, align 2
  %conv = sext i16 %4 to i32
  %line5 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 41
  %5 = ptrtoint ptr %line5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %line5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp = icmp eq i32 %6, %conv
  br i1 %cmp, label %land.lhs.true7, label %land.lhs.true3.if.end16_crit_edge

land.lhs.true3.if.end16_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true7:                                   ; preds = %land.lhs.true3
  %type = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 38
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp8.not = icmp eq i32 %8, 1
  br i1 %cmp8.not, label %land.lhs.true7.if.end16_crit_edge, label %if.then

land.lhs.true7.if.end16_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true7
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 4
  %9 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial_out.i, align 4
  tail call void %10(ptr noundef %arrayidx, i32 noundef 7, i32 noundef 165) #9
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 3
  %11 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %12(ptr noundef %arrayidx, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 165, i32 %call.i)
  %cmp12 = icmp eq i32 %call.i, 165
  br i1 %cmp12, label %if.then14, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %canary15 = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %line, i32 14
  %13 = ptrtoint ptr %canary15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -91, ptr %canary15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then.if.end16_crit_edge, %land.lhs.true7.if.end16_crit_edge, %land.lhs.true3.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %call17 = tail call i32 @uart_suspend_port(ptr noundef nonnull @serial8250_reg, ptr noundef %arrayidx) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @serial8250_resume_port(i32 noundef %line) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %line
  %canary = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %line, i32 14
  %0 = ptrtoint ptr %canary to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %canary, align 4
  %capabilities = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %line, i32 3
  %1 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %capabilities, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 4
  %3 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial_out.i, align 4
  tail call void %4(ptr noundef %arrayidx, i32 noundef 3, i32 noundef 224) #9
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 3
  %5 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %arrayidx, i32 noundef 4) #9
  %and.i = and i32 %call.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 16
  br i1 %cmp.i, label %if.then.ns16550a_goto_highspeed.exit_crit_edge, label %if.else.i

if.then.ns16550a_goto_highspeed.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %ns16550a_goto_highspeed.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = and i32 %call.i.i, 79
  %conv7.i = or i32 %7, 16
  %8 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial_out.i, align 4
  tail call void %9(ptr noundef %arrayidx, i32 noundef 4, i32 noundef %conv7.i) #9
  br label %ns16550a_goto_highspeed.exit

ns16550a_goto_highspeed.exit:                     ; preds = %if.else.i, %if.then.ns16550a_goto_highspeed.exit_crit_edge
  %10 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serial_out.i, align 4
  tail call void %11(ptr noundef %arrayidx, i32 noundef 3, i32 noundef 0) #9
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 22
  %12 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 14745600, ptr %uartclk, align 4
  br label %if.end

if.end:                                           ; preds = %ns16550a_goto_highspeed.exit, %entry.if.end_crit_edge
  %call2 = tail call i32 @uart_resume_port(ptr noundef nonnull @serial8250_reg, ptr noundef %arrayidx) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @serial8250_register_8250_port(ptr noundef %up) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup281_crit_edge, label %if.end

entry.cleanup281_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup281

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @serial_mutex, i32 noundef 0) #9
  %2 = load i32, ptr @nr_uarts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp66.not.i = icmp eq i32 %2, 0
  br i1 %cmp66.not.i, label %if.end.cleanup281.sink.split_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup281.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup281.sink.split

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.067.i, 1
  %3 = load i32, ptr @nr_uarts, align 4
  %cmp.i = icmp ult i32 %inc.i, %3
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.067.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %i.067.i
  %call.i = tail call zeroext i1 @uart_match_port(ptr noundef %arrayidx.i, ptr noundef %up) #9
  br i1 %call.i, label %for.body.i.serial8250_find_match_or_unused.exit_crit_edge, label %for.cond.i

for.body.i.serial8250_find_match_or_unused.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial8250_find_match_or_unused.exit

for.end.i:                                        ; preds = %for.cond.i
  %line.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 41
  %4 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp3.i = icmp ult i32 %5, %3
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end13.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %arrayidx4.i = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %5
  %type.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx4.i, i32 0, i32 38
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.i = icmp eq i32 %7, 0
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true.i.for.body16.i.preheader_crit_edge

land.lhs.true.i.for.body16.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.i.preheader

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx4.i, i32 0, i32 1
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10.i = icmp eq i32 %9, 0
  br i1 %cmp10.i, label %land.lhs.true7.i.serial8250_find_match_or_unused.exit_crit_edge, label %land.lhs.true7.i.for.body16.i.preheader_crit_edge

land.lhs.true7.i.for.body16.i.preheader_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.i.preheader

land.lhs.true7.i.serial8250_find_match_or_unused.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial8250_find_match_or_unused.exit

if.end13.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1568.not.i = icmp eq i32 %3, 0
  br i1 %cmp1568.not.i, label %if.end13.i.cleanup281.sink.split_crit_edge, label %if.end13.i.for.body16.i.preheader_crit_edge

if.end13.i.for.body16.i.preheader_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.i.preheader

if.end13.i.cleanup281.sink.split_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup281.sink.split

for.body16.i.preheader:                           ; preds = %if.end13.i.for.body16.i.preheader_crit_edge, %land.lhs.true7.i.for.body16.i.preheader_crit_edge, %land.lhs.true.i.for.body16.i.preheader_crit_edge
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.inc29.i.for.body16.i_crit_edge, %for.body16.i.preheader
  %i.169.i = phi i32 [ %inc30.i, %for.inc29.i.for.body16.i_crit_edge ], [ 0, %for.body16.i.preheader ]
  %arrayidx17.i = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %i.169.i
  %type19.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx17.i, i32 0, i32 38
  %10 = ptrtoint ptr %type19.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20.i = icmp eq i32 %11, 0
  br i1 %cmp20.i, label %land.lhs.true21.i, label %for.body16.i.for.inc29.i_crit_edge

for.body16.i.for.inc29.i_crit_edge:               ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29.i

land.lhs.true21.i:                                ; preds = %for.body16.i
  %iobase24.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx17.i, i32 0, i32 1
  %12 = ptrtoint ptr %iobase24.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp25.i = icmp eq i32 %13, 0
  br i1 %cmp25.i, label %land.lhs.true21.i.serial8250_find_match_or_unused.exit_crit_edge, label %land.lhs.true21.i.for.inc29.i_crit_edge

land.lhs.true21.i.for.inc29.i_crit_edge:          ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29.i

land.lhs.true21.i.serial8250_find_match_or_unused.exit_crit_edge: ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial8250_find_match_or_unused.exit

for.inc29.i:                                      ; preds = %land.lhs.true21.i.for.inc29.i_crit_edge, %for.body16.i.for.inc29.i_crit_edge
  %inc30.i = add nuw i32 %i.169.i, 1
  %exitcond.not.i = icmp eq i32 %inc30.i, %3
  br i1 %exitcond.not.i, label %for.inc29.i.for.body34.i_crit_edge, label %for.inc29.i.for.body16.i_crit_edge

for.inc29.i.for.body16.i_crit_edge:               ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.i

for.inc29.i.for.body34.i_crit_edge:               ; preds = %for.inc29.i
  br label %for.body34.i

for.cond32.i:                                     ; preds = %for.body34.i
  %inc43.i = add nuw i32 %i.271.i, 1
  %exitcond79.not.i = icmp eq i32 %inc43.i, %3
  br i1 %exitcond79.not.i, label %for.cond32.i.cleanup281.sink.split_crit_edge, label %for.cond32.i.for.body34.i_crit_edge

for.cond32.i.for.body34.i_crit_edge:              ; preds = %for.cond32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.i

for.cond32.i.cleanup281.sink.split_crit_edge:     ; preds = %for.cond32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup281.sink.split

for.body34.i:                                     ; preds = %for.cond32.i.for.body34.i_crit_edge, %for.inc29.i.for.body34.i_crit_edge
  %i.271.i = phi i32 [ %inc43.i, %for.cond32.i.for.body34.i_crit_edge ], [ 0, %for.inc29.i.for.body34.i_crit_edge ]
  %arrayidx35.i = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %i.271.i
  %type37.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx35.i, i32 0, i32 38
  %14 = ptrtoint ptr %type37.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp38.i = icmp eq i32 %15, 0
  br i1 %cmp38.i, label %for.body34.i.serial8250_find_match_or_unused.exit_crit_edge, label %for.cond32.i

for.body34.i.serial8250_find_match_or_unused.exit_crit_edge: ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial8250_find_match_or_unused.exit

serial8250_find_match_or_unused.exit:             ; preds = %for.body34.i.serial8250_find_match_or_unused.exit_crit_edge, %land.lhs.true21.i.serial8250_find_match_or_unused.exit_crit_edge, %land.lhs.true7.i.serial8250_find_match_or_unused.exit_crit_edge, %for.body.i.serial8250_find_match_or_unused.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx4.i, %land.lhs.true7.i.serial8250_find_match_or_unused.exit_crit_edge ], [ %arrayidx35.i, %for.body34.i.serial8250_find_match_or_unused.exit_crit_edge ], [ %arrayidx17.i, %land.lhs.true21.i.serial8250_find_match_or_unused.exit_crit_edge ], [ %arrayidx.i, %for.body.i.serial8250_find_match_or_unused.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %serial8250_find_match_or_unused.exit.cleanup281.sink.split_crit_edge, label %land.lhs.true

serial8250_find_match_or_unused.exit.cleanup281.sink.split_crit_edge: ; preds = %serial8250_find_match_or_unused.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup281.sink.split

land.lhs.true:                                    ; preds = %serial8250_find_match_or_unused.exit
  %type = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 38
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %17)
  %cmp3.not = icmp eq i32 %17, 23
  br i1 %cmp3.not, label %land.lhs.true.cleanup281.sink.split_crit_edge, label %if.then4

land.lhs.true.cleanup281.sink.split_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup281.sink.split

if.then4:                                         ; preds = %land.lhs.true
  %dev = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 45
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %if.then4.if.end10_crit_edge, label %if.then7

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @serial8250_reg, ptr noundef nonnull %retval.0.i) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then4.if.end10_crit_edge
  %iobase = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 1
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %iobase13 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %iobase13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %iobase13, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 2
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %membase16 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %membase16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %membase16, align 4
  %irq = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 20
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %irq19 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 20
  %28 = ptrtoint ptr %irq19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %irq19, align 4
  %irqflags = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 21
  %29 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irqflags, align 4
  %irqflags22 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 21
  %31 = ptrtoint ptr %irqflags22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %irqflags22, align 4
  %32 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %uartclk, align 4
  %uartclk26 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 22
  %34 = ptrtoint ptr %uartclk26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %uartclk26, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 23
  %35 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fifosize, align 4
  %fifosize29 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 23
  %37 = ptrtoint ptr %fifosize29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %fifosize29, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 25
  %38 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %regshift, align 1
  %regshift32 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 25
  %40 = ptrtoint ptr %regshift32 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %regshift32, align 1
  %iotype = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 26
  %41 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %iotype, align 2
  %iotype35 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 26
  %43 = ptrtoint ptr %iotype35 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %iotype35, align 2
  %flags = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 33
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %or = or i32 %45, 268435456
  %flags38 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 33
  %46 = ptrtoint ptr %flags38 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or, ptr %flags38, align 4
  %bugs = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 4
  %47 = ptrtoint ptr %bugs to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %bugs, align 4
  %bugs39 = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 4
  %49 = ptrtoint ptr %bugs39 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %bugs39, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 43
  %50 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mapbase, align 4
  %mapbase42 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 43
  %52 = ptrtoint ptr %mapbase42 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %mapbase42, align 4
  %mapsize = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 44
  %53 = ptrtoint ptr %mapsize to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mapsize, align 4
  %mapsize45 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 44
  %55 = ptrtoint ptr %mapsize45 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %mapsize45, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 59
  %56 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %private_data, align 4
  %private_data48 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 59
  %58 = ptrtoint ptr %private_data48 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %private_data48, align 4
  %tx_loadsz = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 6
  %59 = ptrtoint ptr %tx_loadsz to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_loadsz, align 4
  %tx_loadsz49 = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 6
  %61 = ptrtoint ptr %tx_loadsz49 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %tx_loadsz49, align 4
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 3
  %62 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %capabilities, align 4
  %capabilities50 = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 3
  %64 = ptrtoint ptr %capabilities50 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %capabilities50, align 4
  %throttle = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 13
  %65 = ptrtoint ptr %throttle to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %throttle, align 4
  %throttle53 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 13
  %67 = ptrtoint ptr %throttle53 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %throttle53, align 4
  %unthrottle = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 14
  %68 = ptrtoint ptr %unthrottle to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %unthrottle, align 4
  %unthrottle56 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 14
  %70 = ptrtoint ptr %unthrottle56 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %unthrottle56, align 4
  %rs485_config = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 18
  %71 = ptrtoint ptr %rs485_config to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rs485_config, align 4
  %rs485_config59 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 18
  %73 = ptrtoint ptr %rs485_config59 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %rs485_config59, align 4
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 56
  %rs48562 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 56
  %74 = call ptr @memcpy(ptr %rs485, ptr %rs48562, i32 32)
  %rs485_start_tx = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 24
  %75 = ptrtoint ptr %rs485_start_tx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rs485_start_tx, align 4
  %rs485_start_tx63 = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 24
  %77 = ptrtoint ptr %rs485_start_tx63 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %rs485_start_tx63, align 4
  %rs485_stop_tx = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 25
  %78 = ptrtoint ptr %rs485_stop_tx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rs485_stop_tx, align 4
  %rs485_stop_tx64 = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 25
  %80 = ptrtoint ptr %rs485_stop_tx64 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %rs485_stop_tx64, align 4
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 19
  %81 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma, align 4
  %dma65 = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 19
  %83 = ptrtoint ptr %dma65 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %dma65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool68.not = icmp ne i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool71.not = icmp eq i32 %60, 0
  %or.cond = select i1 %tobool68.not, i1 %tobool71.not, i1 false
  br i1 %or.cond, label %if.then72, label %if.end10.if.end76_crit_edge

if.end10.if.end76_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then72:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %tx_loadsz49 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %36, ptr %tx_loadsz49, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end10.if.end76_crit_edge
  %dev78 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 45
  %85 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev78, align 4
  %tobool79.not = icmp eq ptr %86, null
  br i1 %tobool79.not, label %if.end76.if.end90_crit_edge, label %if.then80

if.end76.if.end90_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then80:                                        ; preds = %if.end76
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %dev, align 4
  %call86 = tail call i32 @uart_get_rs485_mode(ptr noundef nonnull %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then80.if.end90_crit_edge, label %if.then80.err_crit_edge

if.then80.err_crit_edge:                          ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then80.if.end90_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.end90:                                         ; preds = %if.then80.if.end90_crit_edge, %if.end76.if.end90_crit_edge
  %88 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags, align 4
  %and = and i32 %89, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool93.not = icmp eq i32 %and, 0
  br i1 %tobool93.not, label %if.end90.if.end99_crit_edge, label %if.then94

if.end90.if.end99_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %type96 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 38
  %90 = ptrtoint ptr %type96 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %type96, align 4
  %92 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %type, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %if.end90.if.end99_crit_edge
  %call105 = tail call ptr @mctrl_gpio_init(ptr noundef nonnull %retval.0.i, i32 noundef 0) #9
  %cmp.i436 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i436, label %if.then107, label %if.else

if.then107:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %call105 to i32
  br label %err

if.else:                                          ; preds = %if.end99
  %gpios109 = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 16
  %94 = ptrtoint ptr %gpios109 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call105, ptr %gpios109, align 4
  tail call void @serial8250_set_defaults(ptr noundef nonnull %retval.0.i) #9
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 3
  %95 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %serial_in, align 4
  %tobool113.not = icmp eq ptr %96, null
  br i1 %tobool113.not, label %if.else.if.end119_crit_edge, label %if.then114

if.else.if.end119_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then114:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %serial_in118 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 3
  %97 = ptrtoint ptr %serial_in118 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %serial_in118, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.else.if.end119_crit_edge
  %serial_out = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 4
  %98 = ptrtoint ptr %serial_out to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %serial_out, align 4
  %tobool121.not = icmp eq ptr %99, null
  br i1 %tobool121.not, label %if.end119.if.end127_crit_edge, label %if.then122

if.end119.if.end127_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %serial_out126 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 4
  %100 = ptrtoint ptr %serial_out126 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %serial_out126, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then122, %if.end119.if.end127_crit_edge
  %handle_irq = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 15
  %101 = ptrtoint ptr %handle_irq to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %handle_irq, align 4
  %tobool129.not = icmp eq ptr %102, null
  br i1 %tobool129.not, label %if.end127.if.end135_crit_edge, label %if.then130

if.end127.if.end135_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %handle_irq134 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 15
  %103 = ptrtoint ptr %handle_irq134 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %handle_irq134, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then130, %if.end127.if.end135_crit_edge
  %set_termios = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 5
  %104 = ptrtoint ptr %set_termios to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %set_termios, align 4
  %tobool137.not = icmp eq ptr %105, null
  br i1 %tobool137.not, label %if.end135.if.end143_crit_edge, label %if.then138

if.end135.if.end143_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  %set_termios142 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 5
  %106 = ptrtoint ptr %set_termios142 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %set_termios142, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %if.end135.if.end143_crit_edge
  %set_ldisc = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 6
  %107 = ptrtoint ptr %set_ldisc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %set_ldisc, align 4
  %tobool145.not = icmp eq ptr %108, null
  br i1 %tobool145.not, label %if.end143.if.end151_crit_edge, label %if.then146

if.end143.if.end151_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.then146:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  %set_ldisc150 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 6
  %109 = ptrtoint ptr %set_ldisc150 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %set_ldisc150, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then146, %if.end143.if.end151_crit_edge
  %get_mctrl = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 7
  %110 = ptrtoint ptr %get_mctrl to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %get_mctrl, align 4
  %tobool153.not = icmp eq ptr %111, null
  br i1 %tobool153.not, label %if.end151.if.end159_crit_edge, label %if.then154

if.end151.if.end159_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

if.then154:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  %get_mctrl158 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 7
  %112 = ptrtoint ptr %get_mctrl158 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %get_mctrl158, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then154, %if.end151.if.end159_crit_edge
  %set_mctrl = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 8
  %113 = ptrtoint ptr %set_mctrl to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %set_mctrl, align 4
  %tobool161.not = icmp eq ptr %114, null
  br i1 %tobool161.not, label %if.end159.if.end167_crit_edge, label %if.then162

if.end159.if.end167_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

if.then162:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  %set_mctrl166 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 8
  %115 = ptrtoint ptr %set_mctrl166 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %set_mctrl166, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then162, %if.end159.if.end167_crit_edge
  %get_divisor = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 9
  %116 = ptrtoint ptr %get_divisor to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %get_divisor, align 4
  %tobool169.not = icmp eq ptr %117, null
  br i1 %tobool169.not, label %if.end167.if.end175_crit_edge, label %if.then170

if.end167.if.end175_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175

if.then170:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %get_divisor174 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 9
  %118 = ptrtoint ptr %get_divisor174 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %get_divisor174, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then170, %if.end167.if.end175_crit_edge
  %set_divisor = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 10
  %119 = ptrtoint ptr %set_divisor to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %set_divisor, align 4
  %tobool177.not = icmp eq ptr %120, null
  br i1 %tobool177.not, label %if.end175.if.end183_crit_edge, label %if.then178

if.end175.if.end183_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.then178:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  %set_divisor182 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 10
  %121 = ptrtoint ptr %set_divisor182 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %set_divisor182, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.then178, %if.end175.if.end183_crit_edge
  %startup = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 11
  %122 = ptrtoint ptr %startup to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %startup, align 4
  %tobool185.not = icmp eq ptr %123, null
  br i1 %tobool185.not, label %if.end183.if.end191_crit_edge, label %if.then186

if.end183.if.end191_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then186:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  %startup190 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 11
  %124 = ptrtoint ptr %startup190 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %startup190, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.then186, %if.end183.if.end191_crit_edge
  %shutdown = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 12
  %125 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %shutdown, align 4
  %tobool193.not = icmp eq ptr %126, null
  br i1 %tobool193.not, label %if.end191.if.end199_crit_edge, label %if.then194

if.end191.if.end199_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

if.then194:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  %shutdown198 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 12
  %127 = ptrtoint ptr %shutdown198 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %126, ptr %shutdown198, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.then194, %if.end191.if.end199_crit_edge
  %pm = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 16
  %128 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pm, align 4
  %tobool201.not = icmp eq ptr %129, null
  br i1 %tobool201.not, label %if.end199.if.end207_crit_edge, label %if.then202

if.end199.if.end207_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207

if.then202:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  %pm206 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 16
  %130 = ptrtoint ptr %pm206 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %pm206, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.then202, %if.end199.if.end207_crit_edge
  %handle_break = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 17
  %131 = ptrtoint ptr %handle_break to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %handle_break, align 4
  %tobool209.not = icmp eq ptr %132, null
  br i1 %tobool209.not, label %if.end207.if.end215_crit_edge, label %if.then210

if.end207.if.end215_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end215

if.then210:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #11
  %handle_break214 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 17
  %133 = ptrtoint ptr %handle_break214 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %132, ptr %handle_break214, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then210, %if.end207.if.end215_crit_edge
  %dl_read = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 21
  %134 = ptrtoint ptr %dl_read to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dl_read, align 4
  %tobool216.not = icmp eq ptr %135, null
  br i1 %tobool216.not, label %if.end215.if.end220_crit_edge, label %if.then217

if.end215.if.end220_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end220

if.then217:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #11
  %dl_read219 = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 21
  %136 = ptrtoint ptr %dl_read219 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %135, ptr %dl_read219, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.then217, %if.end215.if.end220_crit_edge
  %dl_write = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 22
  %137 = ptrtoint ptr %dl_write to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dl_write, align 4
  %tobool221.not = icmp eq ptr %138, null
  br i1 %tobool221.not, label %if.end220.if.end225_crit_edge, label %if.then222

if.end220.if.end225_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end225

if.then222:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  %dl_write224 = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 22
  %139 = ptrtoint ptr %dl_write224 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %dl_write224, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then222, %if.end220.if.end225_crit_edge
  %140 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %141)
  %cmp228.not = icmp eq i32 %141, 23
  br i1 %cmp228.not, label %do.end, label %if.then229

if.then229:                                       ; preds = %if.end225
  %142 = load ptr, ptr @serial8250_isa_config, align 4
  %cmp230.not = icmp eq ptr %142, null
  br i1 %cmp230.not, label %if.then229.if.end234_crit_edge, label %if.then231

if.then229.if.end234_crit_edge:                   ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end234

if.then231:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %142(i32 noundef 0, ptr noundef nonnull %retval.0.i, ptr noundef %capabilities50) #9
  br label %if.end234

if.end234:                                        ; preds = %if.then231, %if.then229.if.end234_crit_edge
  %143 = load i32, ptr @skip_txen_test, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i = icmp ne i32 %143, 0
  %cond.i = zext i1 %tobool.not.i to i8
  %quirks.i = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 27
  %144 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %quirks.i, align 1
  %or.i = or i8 %145, %cond.i
  store i8 %or.i, ptr %quirks.i, align 1
  %call236 = tail call i32 @uart_add_one_port(ptr noundef nonnull @serial8250_reg, ptr noundef nonnull %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %if.end239, label %if.end234.err_crit_edge

if.end234.err_crit_edge:                          ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end239:                                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  %line = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 41
  %146 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %line, align 4
  br label %if.end250

do.end:                                           ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  %148 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev, align 4
  %150 = ptrtoint ptr %iobase13 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %iobase13, align 4
  %152 = ptrtoint ptr %mapbase42 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %mapbase42, align 4
  %conv = zext i32 %153 to i64
  %154 = ptrtoint ptr %irq19 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %irq19, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %149, ptr noundef nonnull @.str, i32 noundef %151, i64 noundef %conv, i32 noundef %155) #13
  br label %if.end250

if.end250:                                        ; preds = %do.end, %if.end239
  %ret.0 = phi i32 [ %147, %if.end239 ], [ 0, %do.end ]
  %overrun_backoff_time_ms = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 27
  %156 = ptrtoint ptr %overrun_backoff_time_ms to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %overrun_backoff_time_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp251.not = icmp eq i32 %157, 0
  %overrun_backoff_time_ms276 = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 27
  br i1 %cmp251.not, label %if.else275, label %if.then253

if.then253:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #11
  %158 = ptrtoint ptr %overrun_backoff_time_ms276 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %overrun_backoff_time_ms276, align 4
  %overrun_backoff = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 26
  tail call void @__init_work(ptr noundef %overrun_backoff, i32 noundef 0) #9
  %159 = ptrtoint ptr %overrun_backoff to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -64, ptr %overrun_backoff, align 4
  %lockdep_map = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 26, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @serial8250_register_8250_port.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry264 = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 26, i32 0, i32 1
  %160 = ptrtoint ptr %entry264 to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %entry264, ptr %entry264, align 4
  %prev.i = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 26, i32 0, i32 1, i32 1
  %161 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %entry264, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 26, i32 0, i32 2
  %162 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @serial_8250_overrun_backoff_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.uart_8250_port, ptr %retval.0.i, i32 0, i32 26, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @serial8250_register_8250_port.__key.6) #9
  br label %cleanup281.sink.split

if.else275:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %overrun_backoff_time_ms276 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %overrun_backoff_time_ms276, align 4
  br label %cleanup281.sink.split

err:                                              ; preds = %if.end234.err_crit_edge, %if.then107, %if.then80.err_crit_edge
  %ret.1.ph = phi i32 [ %call236, %if.end234.err_crit_edge ], [ %call86, %if.then80.err_crit_edge ], [ %93, %if.then107 ]
  %164 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %dev, align 4
  br label %cleanup281.sink.split

cleanup281.sink.split:                            ; preds = %err, %if.else275, %if.then253, %land.lhs.true.cleanup281.sink.split_crit_edge, %serial8250_find_match_or_unused.exit.cleanup281.sink.split_crit_edge, %for.cond32.i.cleanup281.sink.split_crit_edge, %if.end13.i.cleanup281.sink.split_crit_edge, %if.end.cleanup281.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.1.ph, %err ], [ -28, %land.lhs.true.cleanup281.sink.split_crit_edge ], [ -28, %serial8250_find_match_or_unused.exit.cleanup281.sink.split_crit_edge ], [ %ret.0, %if.else275 ], [ %ret.0, %if.then253 ], [ -28, %if.end13.i.cleanup281.sink.split_crit_edge ], [ -28, %if.end.cleanup281.sink.split_crit_edge ], [ -28, %for.cond32.i.cleanup281.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @serial_mutex) #9
  br label %cleanup281

cleanup281:                                       ; preds = %cleanup281.sink.split, %entry.cleanup281_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup281_crit_edge ], [ %retval.0.ph, %cleanup281.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_rs485_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_8250_overrun_backoff_work(ptr noundef %work) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -480
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %ier = getelementptr i8, ptr %work, i32 -50
  %0 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ier, align 2
  %2 = or i8 %1, 5
  store i8 %2, ptr %ier, align 2
  %read_status_mask = getelementptr i8, ptr %work, i32 -340
  %3 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_status_mask, align 4
  %or11 = or i32 %4, 1
  store i32 %or11, ptr %read_status_mask, align 4
  %conv13 = zext i8 %2 to i32
  %serial_out.i = getelementptr i8, ptr %work, i32 -424
  %5 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serial_out.i, align 4
  tail call void %6(ptr noundef %add.ptr, i32 noundef 1, i32 noundef %conv13) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @serial8250_unregister_port(i32 noundef %line) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %line
  tail call void @mutex_lock_nested(ptr noundef nonnull @serial_mutex, i32 noundef 0) #9
  %em485 = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %line, i32 23
  %0 = ptrtoint ptr %em485 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %em485, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx) #9
  tail call void @serial8250_em485_destroy(ptr noundef %arrayidx) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %call2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call8 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @serial8250_reg, ptr noundef %arrayidx) #9
  %2 = load ptr, ptr @serial8250_isa_devs, align 4
  %tobool9.not = icmp eq ptr %2, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %flags12 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 33
  %3 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags12, align 4
  %and = and i32 %4, -268435457
  store i32 %and, ptr %flags12, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 38
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %type, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %dev15 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %6 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev15, align 4
  %capabilities = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %line, i32 3
  %7 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %capabilities, align 4
  %8 = load i32, ptr @skip_txen_test, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp ne i32 %8, 0
  %cond.i = zext i1 %tobool.not.i to i8
  %quirks.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 27
  %9 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %quirks.i, align 1
  %or.i = or i8 %10, %cond.i
  store i8 %or.i, ptr %quirks.i, align 1
  %call17 = tail call i32 @uart_add_one_port(ptr noundef nonnull @serial8250_reg, ptr noundef %arrayidx) #9
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev19 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %11 = ptrtoint ptr %dev19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dev19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then10
  tail call void @mutex_unlock(ptr noundef nonnull @serial_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_em485_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @serial8250_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @serial8250_isa_devs, align 4
  store ptr null, ptr @serial8250_isa_devs, align 4
  tail call void @platform_driver_unregister(ptr noundef nonnull @serial8250_isa_driver) #9
  tail call void @platform_device_unregister(ptr noundef %0) #9
  tail call void @uart_unregister_driver(ptr noundef nonnull @serial8250_reg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @serial8250_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_uarts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @serial8250_isa_init_ports() #12
  %1 = load i32, ptr @nr_uarts, align 4
  %2 = load i32, ptr @share_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %cond = select i1 %tobool.not, ptr @.str.30, ptr @.str.29
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %1, ptr noundef nonnull %cond) #13
  store i32 4, ptr getelementptr inbounds (%struct.uart_driver, ptr @serial8250_reg, i32 0, i32 5), align 4
  %call1 = tail call i32 @uart_register_driver(ptr noundef nonnull @serial8250_reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call9 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.23, i32 noundef -1) #9
  store ptr %call9, ptr @serial8250_isa_devs, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end4.unreg_pnp_crit_edge, label %if.end12

if.end4.unreg_pnp_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %unreg_pnp

if.end12:                                         ; preds = %if.end4
  %call13 = tail call i32 @platform_device_add(ptr noundef nonnull %call9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.put_dev_crit_edge

if.end12.put_dev_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev

if.end16:                                         ; preds = %if.end12
  %3 = load ptr, ptr @serial8250_isa_devs, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call fastcc void @serial8250_register_ports(ptr noundef %dev) #12
  %call17 = tail call i32 @__platform_driver_register(ptr noundef nonnull @serial8250_isa_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %4 = load ptr, ptr @serial8250_isa_devs, align 4
  tail call void @platform_device_del(ptr noundef %4) #9
  br label %put_dev

put_dev:                                          ; preds = %if.end20, %if.end12.put_dev_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end12.put_dev_crit_edge ], [ %call17, %if.end20 ]
  %5 = load ptr, ptr @serial8250_isa_devs, align 4
  tail call void @platform_device_put(ptr noundef %5) #9
  br label %unreg_pnp

unreg_pnp:                                        ; preds = %put_dev, %if.end4.unreg_pnp_crit_edge
  %ret.1 = phi i32 [ %ret.0, %put_dev ], [ -12, %if.end4.unreg_pnp_crit_edge ]
  tail call void @uart_unregister_driver(ptr noundef nonnull @serial8250_reg) #9
  br label %cleanup

cleanup:                                          ; preds = %unreg_pnp, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %ret.1, %unreg_pnp ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @s8250_options() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @univ8250_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %idxprom
  tail call void @serial8250_console_write(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %count) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @univ8250_console_setup(ptr noundef %co, ptr noundef %options) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %conv = sext i16 %1 to i32
  %2 = load i32, ptr @nr_uarts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp.not = icmp ugt i32 %2, %conv
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  %idxprom = sext i16 %5 to i32
  %arrayidx = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %idxprom
  %cons = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 32
  %6 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %co, ptr %cons, align 4
  %call = tail call i32 @serial8250_console_setup(ptr noundef %arrayidx, ptr noundef %options, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6.not = icmp eq i32 %call, 0
  br i1 %cmp6.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %cons, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @univ8250_console_exit(ptr nocapture noundef readonly %co) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %idxprom
  %call = tail call i32 @serial8250_console_exit(ptr noundef %arrayidx) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @univ8250_console_match(ptr noundef %co, ptr nocapture noundef readonly %name, i32 noundef %idx, ptr noundef %options) #5 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %iotype = alloca i8, align 1
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %iotype) #9
  %1 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %iotype, align 1, !annotation !166
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #9
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %addr, align 4, !annotation !166
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @__const.univ8250_console_match.match, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup40_crit_edge

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

if.end:                                           ; preds = %entry
  %call1 = call i32 @uart_parse_earlycon(ptr noundef %options, ptr noundef nonnull %iotype, ptr noundef nonnull %addr, ptr noundef nonnull %options.addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.end.cleanup40_crit_edge

if.end.cleanup40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

for.cond.preheader:                               ; preds = %if.end
  %3 = load i32, ptr @nr_uarts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp457.not = icmp eq i32 %3, 0
  br i1 %cmp457.not, label %for.cond.preheader.cleanup40_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup40_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %4 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iotype, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %i.058
  %iotype6 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 26
  %6 = ptrtoint ptr %iotype6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype6, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %5)
  %cmp8.not = icmp eq i8 %7, %5
  br i1 %cmp8.not, label %if.end11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %8 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.end11.cleanup_crit_edge [
    i8 2, label %if.end11.land.lhs.true_crit_edge
    i8 7, label %if.end11.land.lhs.true_crit_edge70
    i8 3, label %if.end11.land.lhs.true_crit_edge71
    i8 6, label %if.end11.land.lhs.true_crit_edge72
    i8 0, label %land.lhs.true33
  ]

if.end11.land.lhs.true_crit_edge72:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end11.land.lhs.true_crit_edge71:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end11.land.lhs.true_crit_edge70:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end11.land.lhs.true_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end11.land.lhs.true_crit_edge, %if.end11.land.lhs.true_crit_edge70, %if.end11.land.lhs.true_crit_edge71, %if.end11.land.lhs.true_crit_edge72
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 43
  %9 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mapbase, align 4
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp26.not = icmp eq i32 %10, %12
  br i1 %cmp26.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true33:                                  ; preds = %if.end11
  %iobase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp34.not = icmp eq i32 %14, %16
  br i1 %cmp34.not, label %land.lhs.true33.cleanup_crit_edge, label %land.lhs.true33.for.inc_crit_edge

land.lhs.true33.for.inc_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true33.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  %conv38 = trunc i32 %i.058 to i16
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %17 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv38, ptr %index, align 2
  %cons = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 32
  %18 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %co, ptr %cons, align 4
  %19 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %options.addr, align 4
  %call39 = call i32 @serial8250_console_setup(ptr noundef %arrayidx, ptr noundef %20, i1 noundef zeroext true) #9
  br label %cleanup40

for.inc:                                          ; preds = %land.lhs.true33.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup40_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

cleanup40:                                        ; preds = %for.inc.cleanup40_crit_edge, %cleanup, %for.cond.preheader.cleanup40_crit_edge, %if.end.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.2 = phi i32 [ %call39, %cleanup ], [ -19, %entry.cleanup40_crit_edge ], [ -19, %if.end.cleanup40_crit_edge ], [ -19, %for.cond.preheader.cleanup40_crit_edge ], [ -19, %for.inc.cleanup40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %iotype) #9
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_console_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_console_setup(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_console_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_parse_earlycon(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_init_port(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial8250_timeout(ptr noundef %t) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -360
  %handle_irq = getelementptr i8, ptr %t, i32 -260
  %0 = ptrtoint ptr %handle_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle_irq, align 4
  %call = tail call i32 %1(ptr noundef %add.ptr) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %timeout1.i = getelementptr i8, ptr %t, i32 -144
  %3 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.i = icmp sgt i32 %4, 6
  %div.i = sdiv i32 %4, 2
  %sub.i = add nsw i32 %div.i, -2
  %cond.i = select i1 %cmp.i, i32 %sub.i, i32 1
  %add = add i32 %cond.i, %2
  %call4 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @univ8250_setup_irq(ptr noundef %up) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bugs = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 4
  %0 = ptrtoint ptr %bugs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bugs, align 4
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @univ8250_setup_irq.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@univ8250_setup_irq, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !167

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 53
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @univ8250_setup_irq.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.11, ptr noundef %4) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %timer = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 1
  %function = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @serial8250_backup_timeout, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %timeout1.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 37
  %7 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp.i = icmp sgt i32 %8, 6
  %div.i = sdiv i32 %8, 2
  %sub.i = add nsw i32 %div.i, -2
  %cond.i = select i1 %cmp.i, i32 %sub.i, i32 1
  %add = add i32 %6, 20
  %add9 = add i32 %add, %cond.i
  %call10 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add9) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  %irq = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 20
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %timer14 = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %timeout1.i28 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 37
  %12 = ptrtoint ptr %timeout1.i28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout1.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp.i29 = icmp sgt i32 %13, 6
  %div.i30 = sdiv i32 %13, 2
  %sub.i31 = add nsw i32 %div.i30, -2
  %cond.i32 = select i1 %cmp.i29, i32 %sub.i31, i32 1
  %add16 = add i32 %cond.i32, %11
  %call17 = tail call i32 @mod_timer(ptr noundef %timer14, i32 noundef %add16) #9
  br label %if.end19

if.else:                                          ; preds = %if.end11
  tail call void @mutex_lock_nested(ptr noundef nonnull @hash_mutex, i32 noundef 0) #9
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %rem.i = and i32 %15, 31
  %arrayidx.i = getelementptr [32 x %struct.hlist_head], ptr @irq_lists, i32 0, i32 %rem.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.else
  %i.0.in.i = phi ptr [ %arrayidx.i, %if.else ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %i.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %i.0.i = load ptr, ptr %i.0.in.i, align 4
  %cond.i33 = icmp eq ptr %i.0.i, null
  br i1 %cond.i33, label %if.then17.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %irq3.i = getelementptr inbounds %struct.irq_info, ptr %i.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %irq3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq3.i, align 4
  %cmp.i34 = icmp eq i32 %18, %15
  br i1 %cmp.i34, label %for.body.i.if.end26.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.if.end26.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then17.i:                                      ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 60) #14
  %cmp18.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp18.i, label %if.then19.i, label %do.body.i

if.then19.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @hash_mutex) #9
  br label %if.end19

do.body.i:                                        ; preds = %if.then17.i
  %lock.i = getelementptr inbounds %struct.irq_info, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @serial_link_irq_chain.__key, i16 noundef signext 3) #9
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %irq24.i = getelementptr inbounds %struct.irq_info, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %irq24.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %irq24.i, align 8
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %call7.i.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %do.body.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

do.body.i.hlist_add_head.exit.i_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call7.i.i.i, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %do.body.i.hlist_add_head.exit.i_crit_edge
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx.i, ptr %pprev34.i.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %hlist_add_head.exit.i, %for.body.i.if.end26.i_crit_edge
  %i.1.i = phi ptr [ %call7.i.i.i, %hlist_add_head.exit.i ], [ %i.0.i, %for.body.i.if.end26.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @hash_mutex) #9
  %lock27.i = getelementptr inbounds %struct.irq_info, ptr %i.1.i, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock27.i) #9
  %head.i = getelementptr inbounds %struct.irq_info, ptr %i.1.i, i32 0, i32 3
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i, align 4
  %tobool28.not.i = icmp eq ptr %30, null
  %list32.i = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 2
  br i1 %tobool28.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end26.i
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list32.i, ptr noundef nonnull %30, ptr noundef %32) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then29.i.list_add.exit.i_crit_edge

if.then29.i.list_add.exit.i_crit_edge:            ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list32.i, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %list32.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %list32.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %30, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list32.i, ptr %30, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.then29.i.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock27.i) #9
  br label %if.end19

if.else.i:                                        ; preds = %if.end26.i
  %37 = ptrtoint ptr %list32.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list32.i, ptr %list32.i, align 4
  %prev.i.i = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %list32.i, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %list32.i, ptr %head.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock27.i) #9
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 4
  %irqflags.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 21
  %42 = ptrtoint ptr %irqflags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irqflags.i, align 4
  %name.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 53
  %44 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %41, ptr noundef nonnull @serial8250_interrupt, ptr noundef null, i32 noundef %43, ptr noundef %45, ptr noundef nonnull %i.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp41.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp41.i, label %if.then42.i, label %if.else.i.if.end19_crit_edge

if.else.i.if.end19_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then42.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @serial_do_unlink(ptr noundef nonnull %i.1.i, ptr noundef %up) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then42.i, %if.else.i.if.end19_crit_edge, %list_add.exit.i, %if.then19.i, %if.then13
  %retval2.0 = phi i32 [ 0, %if.then13 ], [ -12, %if.then19.i ], [ 0, %list_add.exit.i ], [ %call.i.i, %if.then42.i ], [ %call.i.i, %if.else.i.if.end19_crit_edge ]
  ret i32 %retval2.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @univ8250_release_irq(ptr noundef %up) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 1
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  %function = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @serial8250_timeout, ptr %function, align 4
  %irq = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 20
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @hash_mutex, i32 noundef 0) #9
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %rem.i = and i32 %4, 31
  %arrayidx.i = getelementptr [32 x %struct.hlist_head], ptr @irq_lists, i32 0, i32 %rem.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then
  %i.0.in.i = phi ptr [ %arrayidx.i, %if.then ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %i.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %i.0.i = load ptr, ptr %i.0.in.i, align 4
  %cond.i = icmp eq ptr %i.0.i, null
  br i1 %cond.i, label %do.body20.i, label %for.body.i, !prof !168

for.body.i:                                       ; preds = %for.cond.i
  %irq3.i = getelementptr inbounds %struct.irq_info, ptr %i.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %irq3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq3.i, align 4
  %cmp.i = icmp eq i32 %7, %4
  br i1 %cmp.i, label %do.body27.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

do.body20.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/8250/8250_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #9, !srcloc !169
  unreachable

do.body27.i:                                      ; preds = %for.body.i
  %head.i = getelementptr inbounds %struct.irq_info, ptr %i.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 4
  %cmp28.i = icmp eq ptr %9, null
  br i1 %cmp28.i, label %do.body36.i, label %do.end44.i, !prof !170

do.body36.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/8250/8250_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 232, 0\0A.popsection", ""() #9, !srcloc !171
  unreachable

do.end44.i:                                       ; preds = %do.body27.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %9, align 4
  %cmp.i.not.i = icmp eq ptr %11, %9
  br i1 %cmp.i.not.i, label %if.then47.i, label %do.end44.i.serial_unlink_irq_chain.exit_crit_edge

do.end44.i.serial_unlink_irq_chain.exit_crit_edge: ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial_unlink_irq_chain.exit

if.then47.i:                                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %call50.i = tail call ptr @free_irq(i32 noundef %4, ptr noundef nonnull %i.0.i) #9
  br label %serial_unlink_irq_chain.exit

serial_unlink_irq_chain.exit:                     ; preds = %if.then47.i, %do.end44.i.serial_unlink_irq_chain.exit_crit_edge
  tail call fastcc void @serial_do_unlink(ptr noundef nonnull %i.0.i, ptr noundef %up) #9
  tail call void @mutex_unlock(ptr noundef nonnull @hash_mutex) #9
  br label %if.end

if.end:                                           ; preds = %serial_unlink_irq_chain.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial8250_backup_timeout(ptr noundef %t) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -360
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %irq = getelementptr i8, ptr %t, i32 -240
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %serial_in.i = getelementptr i8, ptr %t, i32 -308
  %2 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %3(ptr noundef %add.ptr, i32 noundef 1) #9
  %serial_out.i = getelementptr i8, ptr %t, i32 -304
  %4 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_out.i, align 4
  tail call void %5(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ier.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %serial_in.i70 = getelementptr i8, ptr %t, i32 -308
  %6 = ptrtoint ptr %serial_in.i70 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial_in.i70, align 4
  %call.i71 = tail call i32 %7(ptr noundef %add.ptr, i32 noundef 2) #9
  %8 = ptrtoint ptr %serial_in.i70 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial_in.i70, align 4
  %call.i73 = tail call i32 %9(ptr noundef %add.ptr, i32 noundef 5) #9
  %lsr_saved_flags = getelementptr i8, ptr %t, i32 88
  %10 = ptrtoint ptr %lsr_saved_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lsr_saved_flags, align 4
  %12 = trunc i32 %call.i73 to i8
  %13 = and i8 %12, 30
  %conv11 = or i8 %13, %11
  store i8 %conv11, ptr %lsr_saved_flags, align 4
  %and12 = and i32 %call.i71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end34_crit_edge, label %land.lhs.true

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end
  %ier14 = getelementptr i8, ptr %t, i32 70
  %14 = ptrtoint ptr %ier14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ier14, align 2
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end34_crit_edge, label %land.lhs.true18

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true18:                                  ; preds = %land.lhs.true
  %state = getelementptr i8, ptr %t, i32 -212
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %18, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %18, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp23 = icmp eq i32 %20, %22
  br i1 %cmp23, label %lor.lhs.false, label %land.lhs.true28

lor.lhs.false:                                    ; preds = %land.lhs.true18
  %x_char = getelementptr i8, ptr %t, i32 -224
  %23 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool27.not = icmp eq i8 %24, 0
  %and29 = and i32 %call.i73, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %or.cond = select i1 %tobool27.not, i1 true, i1 %tobool30.not
  br i1 %or.cond, label %lor.lhs.false.if.end34_crit_edge, label %lor.lhs.false.if.then37_crit_edge

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

lor.lhs.false.if.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true28:                                  ; preds = %land.lhs.true18
  %and29.old = and i32 %call.i73, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.old)
  %tobool30.not.old = icmp eq i32 %and29.old, 0
  br i1 %tobool30.not.old, label %land.lhs.true28.if.end34_crit_edge, label %land.lhs.true28.if.then37_crit_edge

land.lhs.true28.if.then37_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

land.lhs.true28.if.end34_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true28.if.end34_crit_edge, %lor.lhs.false.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %and35 = and i32 %call.i71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.then37_crit_edge, label %if.end34.if.end38_crit_edge

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end34.if.then37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

if.then37:                                        ; preds = %if.end34.if.then37_crit_edge, %land.lhs.true28.if.then37_crit_edge, %lor.lhs.false.if.then37_crit_edge
  tail call void @serial8250_tx_chars(ptr noundef %add.ptr) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34.if.end38_crit_edge
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool41.not = icmp eq i32 %26, 0
  br i1 %tobool41.not, label %if.end38.if.end43_crit_edge, label %if.then42

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %serial_out.i74 = getelementptr i8, ptr %t, i32 -304
  %27 = ptrtoint ptr %serial_out.i74 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %serial_out.i74, align 4
  tail call void %28(ptr noundef %add.ptr, i32 noundef 1, i32 noundef %ier.0) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end38.if.end43_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %timeout1.i = getelementptr i8, ptr %t, i32 -144
  %30 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %cmp.i = icmp sgt i32 %31, 6
  %div.i = sdiv i32 %31, 2
  %sub.i = add nsw i32 %div.i, -2
  %cond.i = select i1 %cmp.i, i32 %sub.i, i32 1
  %add = add i32 %29, 20
  %add48 = add i32 %add, %cond.i
  %call49 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add48) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_tx_chars(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial8250_interrupt(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial8250_interrupt.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial8250_interrupt, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @serial8250_interrupt.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %irq) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.irq_info, ptr %dev_id, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %head = getelementptr inbounds %struct.irq_info, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  br label %do.body3

do.body3:                                         ; preds = %cleanup.do.body3_crit_edge, %do.end
  %handled.0 = phi i32 [ 0, %do.end ], [ %handled.1, %cleanup.do.body3_crit_edge ]
  %pass_counter.0 = phi i32 [ 0, %do.end ], [ %pass_counter.1, %cleanup.do.body3_crit_edge ]
  %end.0 = phi ptr [ null, %do.end ], [ %end.1, %cleanup.do.body3_crit_edge ]
  %l.0 = phi ptr [ %1, %do.end ], [ %5, %cleanup.do.body3_crit_edge ]
  %add.ptr = getelementptr i8, ptr %l.0, i32 -408
  %handle_irq = getelementptr i8, ptr %l.0, i32 -308
  %2 = ptrtoint ptr %handle_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle_irq, align 4
  %call6 = tail call i32 %3(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %cmp = icmp eq ptr %end.0, null
  %spec.select = select i1 %cmp, ptr %l.0, ptr %end.0
  %handled.1 = select i1 %tobool7.not, i32 %handled.0, i32 1
  %end.1 = select i1 %tobool7.not, ptr %spec.select, ptr null
  %4 = ptrtoint ptr %l.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %l.0, align 4
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 4
  %cmp13 = icmp eq ptr %5, %7
  br i1 %cmp13, label %land.lhs.true, label %do.body3.cleanup_crit_edge

do.body3.cleanup_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.body3
  %inc = add i32 %pass_counter.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %pass_counter.0)
  %cmp14 = icmp sgt i32 %pass_counter.0, 512
  br i1 %cmp14, label %land.lhs.true.do.end20_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %do.body3.cleanup_crit_edge
  %pass_counter.1 = phi i32 [ %inc, %land.lhs.true.cleanup_crit_edge ], [ %pass_counter.0, %do.body3.cleanup_crit_edge ]
  %cmp19.not = icmp eq ptr %5, %end.1
  br i1 %cmp19.not, label %cleanup.do.end20_crit_edge, label %cleanup.do.body3_crit_edge

cleanup.do.body3_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

cleanup.do.end20_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

do.end20:                                         ; preds = %cleanup.do.end20_crit_edge, %land.lhs.true.do.end20_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial8250_interrupt.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial8250_interrupt, %if.then34)) #9
          to label %do.end37 [label %if.then34], !srcloc !167

if.then34:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @serial8250_interrupt.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %irq) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1)
  %tobool38.not = icmp ne i32 %handled.1, 0
  %cond = zext i1 %tobool38.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serial_do_unlink(ptr noundef %i, ptr noundef %up) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.irq_info, ptr %i, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %head = getelementptr inbounds %struct.irq_info, ptr %i, i32 0, i32 3
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %cmp.i.not = icmp eq ptr %3, %1
  %list7 = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 2
  %cmp8.not = icmp eq ptr %1, %list7
  br i1 %cmp.i.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp8.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %head, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list7) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %list7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %list7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %list7, align 4
  %prev.i = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end18

do.body:                                          ; preds = %entry
  br i1 %cmp8.not, label %do.end16, label %do.body12, !prof !172

do.body12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/8250/8250_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 161, 0\0A.popsection", ""() #9, !srcloc !173
  unreachable

do.end16:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %head, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %list_del.exit
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head, align 4
  %cmp21 = icmp eq ptr %15, null
  br i1 %cmp21, label %if.then22, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  %16 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %i, i32 0, i32 1
  %18 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev2.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %17, ptr %19, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then22.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then22.hlist_del.exit_crit_edge:               ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then22.hlist_del.exit_crit_edge
  %22 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %i, align 4
  %23 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @kfree(ptr noundef %i) #9
  br label %if.end23

if.end23:                                         ; preds = %hlist_del.exit, %if.end18.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @univ8250_config_port(ptr noundef %port, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %probe = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 15
  %0 = ptrtoint ptr %probe to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %probe, align 1
  %2 = and i8 %1, -2
  store i8 %2, ptr %probe, align 1
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %4)
  %cmp = icmp eq i32 %4, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %5 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch.i = icmp ult i8 %6, 2
  br i1 %switch.i, label %sw.bb.i, label %if.then.if.end29_crit_edge

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

sw.bb.i:                                          ; preds = %if.then
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %7 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl4.i = shl i32 8, %conv.i
  %shl.i = shl i32 -8, %conv.i
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %shl.i, %10
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %add.i, i32 noundef %shl4.i, ptr noundef nonnull @.str.18, i32 noundef 0) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.i.if.end29_crit_edge, label %sw.bb.i.if.end29.sink.split_crit_edge

sw.bb.i.if.end29.sink.split_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.sink.split

sw.bb.i.if.end29_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.else:                                          ; preds = %entry
  %and10 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.else.if.end29_crit_edge, label %for.cond.preheader

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

for.cond.preheader:                               ; preds = %if.else
  %11 = load i32, ptr @probe_rsa_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1280.not = icmp eq i32 %11, 0
  br i1 %cmp1280.not, label %for.cond.preheader.if.end29_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end29_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %iobase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.cond.if.end29_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.if.end29_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @probe_rsa, i32 0, i32 %i.081
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp15 = icmp eq i32 %15, %13
  br i1 %cmp15, label %if.then17, label %for.cond

if.then17:                                        ; preds = %for.body
  %iotype.i52 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %16 = ptrtoint ptr %iotype.i52 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iotype.i52, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %switch.i53 = icmp ult i8 %17, 2
  br i1 %switch.i53, label %sw.bb.i63, label %if.then17.if.end29_crit_edge

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

sw.bb.i63:                                        ; preds = %if.then17
  %regshift.i54 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %18 = ptrtoint ptr %regshift.i54 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %regshift.i54, align 1
  %conv.i55 = zext i8 %19 to i32
  %shl4.i56 = shl i32 8, %conv.i55
  %shl.i57 = shl i32 -8, %conv.i55
  %add.i59 = add i32 %shl.i57, %13
  %call.i60 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %add.i59, i32 noundef %shl4.i56, ptr noundef nonnull @.str.18, i32 noundef 0) #9
  %tobool.not.i61 = icmp eq ptr %call.i60, null
  br i1 %tobool.not.i61, label %sw.bb.i63.if.end29_crit_edge, label %sw.bb.i63.if.end29.sink.split_crit_edge

sw.bb.i63.if.end29.sink.split_crit_edge:          ; preds = %sw.bb.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.sink.split

sw.bb.i63.if.end29_crit_edge:                     ; preds = %sw.bb.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.end29.sink.split:                              ; preds = %sw.bb.i63.if.end29.sink.split_crit_edge, %sw.bb.i.if.end29.sink.split_crit_edge
  %20 = ptrtoint ptr %probe to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %probe, align 1
  %22 = or i8 %21, 1
  store i8 %22, ptr %probe, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %sw.bb.i63.if.end29_crit_edge, %if.then17.if.end29_crit_edge, %for.cond.if.end29_crit_edge, %for.cond.preheader.if.end29_crit_edge, %if.else.if.end29_crit_edge, %sw.bb.i.if.end29_crit_edge, %if.then.if.end29_crit_edge
  %23 = load ptr, ptr @base_ops, align 4
  %config_port = getelementptr inbounds %struct.uart_ops, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %config_port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config_port, align 4
  tail call void %25(ptr noundef %port, i32 noundef %flags) #9
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %27)
  %cmp31.not = icmp eq i32 %27, 13
  br i1 %cmp31.not, label %if.end29.if.end38_crit_edge, label %land.lhs.true

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end29
  %28 = ptrtoint ptr %probe to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %probe, align 1
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool36.not = icmp eq i8 %30, 0
  br i1 %tobool36.not, label %land.lhs.true.if.end38_crit_edge, label %if.then37

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then37:                                        ; preds = %land.lhs.true
  %iotype.i66 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %31 = ptrtoint ptr %iotype.i66 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %iotype.i66, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %switch.i67 = icmp ult i8 %32, 2
  br i1 %switch.i67, label %sw.bb.i74, label %if.then37.if.end38_crit_edge

if.then37.if.end38_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

sw.bb.i74:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %regshift.i68 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %33 = ptrtoint ptr %regshift.i68 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %regshift.i68, align 1
  %conv.i69 = zext i8 %34 to i32
  %shl4.i70 = shl i32 8, %conv.i69
  %shl.i71 = shl i32 -8, %conv.i69
  %iobase.i72 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %35 = ptrtoint ptr %iobase.i72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i72, align 4
  %add.i73 = add i32 %shl.i71, %36
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %add.i73, i32 noundef %shl4.i70) #9
  br label %if.end38

if.end38:                                         ; preds = %sw.bb.i74, %if.then37.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @univ8250_request_port(ptr noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @base_ops, align 4
  %request_port = getelementptr inbounds %struct.uart_ops, ptr %0, i32 0, i32 19
  %1 = ptrtoint ptr %request_port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %request_port, align 4
  %call1 = tail call i32 %2(ptr noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %4)
  %cmp2 = icmp eq i32 %4, 13
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %5 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch.i = icmp ult i8 %6, 2
  br i1 %switch.i, label %sw.bb.i, label %if.then.if.then5_crit_edge

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

sw.bb.i:                                          ; preds = %if.then
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %7 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl4.i = shl i32 8, %conv.i
  %shl.i = shl i32 -8, %conv.i
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %shl.i, %10
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %add.i, i32 noundef %shl4.i, ptr noundef nonnull @.str.18, i32 noundef 0) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.i.if.then5_crit_edge, label %sw.bb.i.if.end6_crit_edge

sw.bb.i.if.end6_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

sw.bb.i.if.then5_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %sw.bb.i.if.then5_crit_edge, %if.then.if.then5_crit_edge
  %ret.0.i.ph = phi i32 [ -22, %if.then.if.then5_crit_edge ], [ -16, %sw.bb.i.if.then5_crit_edge ]
  %11 = load ptr, ptr @base_ops, align 4
  %release_port = getelementptr inbounds %struct.uart_ops, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %release_port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release_port, align 4
  tail call void %13(ptr noundef %port) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %sw.bb.i.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ %ret.0.i.ph, %if.then5 ], [ 0, %land.lhs.true.if.end6_crit_edge ], [ %call1, %entry.if.end6_crit_edge ], [ 0, %sw.bb.i.if.end6_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @univ8250_release_port(ptr noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp = icmp eq i32 %1, 13
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %2 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %switch.i = icmp ult i8 %3, 2
  br i1 %switch.i, label %sw.bb.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %4 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl4.i = shl i32 8, %conv.i
  %shl.i = shl i32 -8, %conv.i
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %shl.i, %7
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %add.i, i32 noundef %shl4.i) #9
  br label %if.end

if.end:                                           ; preds = %sw.bb.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = load ptr, ptr @base_ops, align 4
  %release_port = getelementptr inbounds %struct.uart_ops, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %release_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %release_port, align 4
  tail call void %10(ptr noundef %port) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_match_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial8250_probe(ptr noundef %dev) #5 align 64 {
entry:
  %uart = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart) #9
  %2 = call ptr @memset(ptr %uart, i32 0, i32 584)
  %3 = load i32, ptr @share_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 128
  %tobool2.not88 = icmp eq ptr %1, null
  br i1 %tobool2.not88, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %iobase3 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 1
  %membase5 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 2
  %irq7 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 20
  %irqflags9 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 21
  %uartclk11 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 22
  %regshift13 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 25
  %iotype15 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 26
  %flags18 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 33
  %mapbase20 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 43
  %hub622 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 50
  %has_sysrq24 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 48
  %private_data26 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 59
  %type28 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 38
  %serial_in30 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 3
  %serial_out32 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 4
  %handle_irq34 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 15
  %handle_break36 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 17
  %set_termios38 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 5
  %set_ldisc40 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 6
  %get_mctrl42 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 7
  %pm44 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 16
  %dev47 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 45
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.091 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %p.089 = phi ptr [ %1, %land.rhs.lr.ph ], [ %incdec.ptr, %for.inc.land.rhs_crit_edge ]
  %flags = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %6 = ptrtoint ptr %p.089 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p.089, align 4
  %8 = ptrtoint ptr %iobase3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %iobase3, align 4
  %membase = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 1
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %11 = ptrtoint ptr %membase5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %membase5, align 4
  %irq = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 3
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %14 = ptrtoint ptr %irq7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %irq7, align 4
  %irqflags = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 4
  %15 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irqflags, align 4
  %17 = ptrtoint ptr %irqflags9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %irqflags9, align 4
  %uartclk = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 5
  %18 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uartclk, align 4
  %20 = ptrtoint ptr %uartclk11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %uartclk11, align 4
  %regshift = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 7
  %21 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %regshift, align 4
  %23 = ptrtoint ptr %regshift13 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %regshift13, align 1
  %iotype = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 8
  %24 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %iotype, align 1
  %26 = ptrtoint ptr %iotype15 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %iotype15, align 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %29 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %flags18, align 4
  %mapbase = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 2
  %30 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mapbase, align 4
  %32 = ptrtoint ptr %mapbase20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %mapbase20, align 4
  %hub6 = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 9
  %33 = ptrtoint ptr %hub6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hub6, align 2
  %35 = ptrtoint ptr %hub622 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %hub622, align 2
  %has_sysrq = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 10
  %36 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %has_sysrq, align 1
  %38 = ptrtoint ptr %has_sysrq24 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %has_sysrq24, align 4
  %private_data = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 6
  %39 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private_data, align 4
  %41 = ptrtoint ptr %private_data26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %private_data26, align 4
  %type = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 12
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type, align 4
  %44 = ptrtoint ptr %type28 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %type28, align 4
  %serial_in = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 13
  %45 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %serial_in, align 4
  %47 = ptrtoint ptr %serial_in30 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %serial_in30, align 4
  %serial_out = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 14
  %48 = ptrtoint ptr %serial_out to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %serial_out, align 4
  %50 = ptrtoint ptr %serial_out32 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %serial_out32, align 4
  %handle_irq = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 18
  %51 = ptrtoint ptr %handle_irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %handle_irq, align 4
  %53 = ptrtoint ptr %handle_irq34 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %handle_irq34, align 4
  %handle_break = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 20
  %54 = ptrtoint ptr %handle_break to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %handle_break, align 4
  %56 = ptrtoint ptr %handle_break36 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %handle_break36, align 4
  %set_termios = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 15
  %57 = ptrtoint ptr %set_termios to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_termios, align 4
  %59 = ptrtoint ptr %set_termios38 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %set_termios38, align 4
  %set_ldisc = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 16
  %60 = ptrtoint ptr %set_ldisc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_ldisc, align 4
  %62 = ptrtoint ptr %set_ldisc40 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %set_ldisc40, align 4
  %get_mctrl = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 17
  %63 = ptrtoint ptr %get_mctrl to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %get_mctrl, align 4
  %65 = ptrtoint ptr %get_mctrl42 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %get_mctrl42, align 4
  %pm = getelementptr inbounds %struct.plat_serial8250_port, ptr %p.089, i32 0, i32 19
  %66 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pm, align 4
  %68 = ptrtoint ptr %pm44 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %pm44, align 4
  %69 = ptrtoint ptr %dev47 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %dev1, ptr %dev47, align 4
  %or = or i32 %16, %spec.select
  store i32 %or, ptr %irqflags9, align 4
  %call50 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %p.089 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %p.089, align 4
  %72 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mapbase, align 4
  %conv = zext i32 %73 to i64
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %i.091, i32 noundef %71, i64 noundef %conv, i32 noundef %75, i32 noundef %call50) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.plat_serial8250_port, ptr %p.089, i32 1
  %inc = add i32 %i.091, 1
  %tobool2.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial8250_remove(ptr noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_uarts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp7.not = icmp eq i32 %0, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %dev1 = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %i.08, i32 0, i32 45
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %cmp3 = icmp eq ptr %2, %dev2
  br i1 %cmp3, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @serial8250_unregister_port(i32 noundef %i.08)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.08, 1
  %3 = load i32, ptr @nr_uarts, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial8250_suspend(ptr noundef readnone %dev, [1 x i32] %state.coerce) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %0 = load i32, ptr getelementptr inbounds ([4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 0, i32 0, i32 38), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1.not = icmp eq i32 %0, 0
  br i1 %cmp1.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds ([4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 0, i32 0, i32 45), align 4
  %cmp5 = icmp eq ptr %1, %dev4
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @uart_suspend_port(ptr noundef nonnull @serial8250_reg, ptr noundef nonnull @serial8250_ports) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = load i32, ptr getelementptr inbounds ([4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 1, i32 0, i32 38), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.not.1 = icmp eq i32 %2, 0
  br i1 %cmp1.not.1, label %if.end.if.end.1_crit_edge, label %land.lhs.true.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

land.lhs.true.1:                                  ; preds = %if.end
  %3 = load ptr, ptr getelementptr inbounds ([4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 1, i32 0, i32 45), align 4
  %cmp5.1 = icmp eq ptr %3, %dev4
  br i1 %cmp5.1, label %if.then.1, label %land.lhs.true.1.if.end.1_crit_edge

land.lhs.true.1.if.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  %call.1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @serial8250_reg, ptr noundef getelementptr inbounds ([4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 1)) #9
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %land.lhs.true.1.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %4 = load i32, ptr getelementptr inbounds ([4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 2, i32 0, i32 38), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not.2 = icmp eq i32 %4, 0
  br i1 %cmp1.not.2, label %if.end.1.if.end.2_crit_edge, label %land.lhs.true.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2

land.lhs.true.2:                                  ; preds = %if.end.1
  %5 = load ptr, ptr getelementptr inbounds ([4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 2, i32 0, i32 45), align 4
  %cmp5.2 = icmp eq ptr %5, %dev4
  br i1 %cmp5.2, label %if.then.2, label %land.lhs.true.2.if.end.2_crit_edge

land.lhs.true.2.if.end.2_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2

if.then.2:                                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  %call.2 = tail call i32 @uart_suspend_port(ptr noundef nonnull @serial8250_reg, ptr noundef getelementptr inbounds ([4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 2)) #9
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %land.lhs.true.2.if.end.2_crit_edge, %if.end.1.if.end.2_crit_edge
  %6 = load i32, ptr getelementptr inbounds ([4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 3, i32 0, i32 38), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.3 = icmp eq i32 %6, 0
  br i1 %cmp1.not.3, label %if.end.2.if.end.3_crit_edge, label %land.lhs.true.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.3

land.lhs.true.3:                                  ; preds = %if.end.2
  %7 = load ptr, ptr getelementptr inbounds ([4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 3, i32 0, i32 45), align 4
  %cmp5.3 = icmp eq ptr %7, %dev4
  br i1 %cmp5.3, label %if.then.3, label %land.lhs.true.3.if.end.3_crit_edge

land.lhs.true.3.if.end.3_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.3

if.then.3:                                        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  %call.3 = tail call i32 @uart_suspend_port(ptr noundef nonnull @serial8250_reg, ptr noundef getelementptr inbounds ([4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 3)) #9
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %land.lhs.true.3.if.end.3_crit_edge, %if.end.2.if.end.3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial8250_resume(ptr noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %i.010
  %type = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %dev3 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %cmp5 = icmp eq ptr %3, %dev4
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %canary.i = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %i.010, i32 14
  %4 = ptrtoint ptr %canary.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %canary.i, align 4
  %capabilities.i = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %i.010, i32 3
  %5 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %capabilities.i, align 4
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.serial8250_resume_port.exit_crit_edge, label %if.then.i

if.then.serial8250_resume_port.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial8250_resume_port.exit

if.then.i:                                        ; preds = %if.then
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 4
  %7 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %8(ptr noundef %arrayidx, i32 noundef 3, i32 noundef 224) #9
  %serial_in.i.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 3
  %9 = ptrtoint ptr %serial_in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial_in.i.i.i, align 4
  %call.i.i.i = tail call i32 %10(ptr noundef %arrayidx, i32 noundef 4) #9
  %and.i.i = and i32 %call.i.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 16
  br i1 %cmp.i.i, label %if.then.i.ns16550a_goto_highspeed.exit.i_crit_edge, label %if.else.i.i

if.then.i.ns16550a_goto_highspeed.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ns16550a_goto_highspeed.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = and i32 %call.i.i.i, 79
  %conv7.i.i = or i32 %11, 16
  %12 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %13(ptr noundef %arrayidx, i32 noundef 4, i32 noundef %conv7.i.i) #9
  br label %ns16550a_goto_highspeed.exit.i

ns16550a_goto_highspeed.exit.i:                   ; preds = %if.else.i.i, %if.then.i.ns16550a_goto_highspeed.exit.i_crit_edge
  %14 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %15(ptr noundef %arrayidx, i32 noundef 3, i32 noundef 0) #9
  %uartclk.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 22
  %16 = ptrtoint ptr %uartclk.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 14745600, ptr %uartclk.i, align 4
  br label %serial8250_resume_port.exit

serial8250_resume_port.exit:                      ; preds = %ns16550a_goto_highspeed.exit.i, %if.then.serial8250_resume_port.exit_crit_edge
  %call2.i = tail call i32 @uart_resume_port(ptr noundef nonnull @serial8250_reg, ptr noundef %arrayidx) #9
  br label %if.end

if.end:                                           ; preds = %serial8250_resume_port.exit, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serial8250_register_ports(ptr noundef %dev) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_uarts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp2.not = icmp eq i32 %0, 0
  br i1 %cmp2.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.uart_8250_port], ptr @serial8250_ports, i32 0, i32 %i.03
  %type = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 38
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %2)
  %cmp1 = icmp eq i32 %2, 23
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %dev3 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev3, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev3, align 4
  %6 = load i32, ptr @skip_txen_test, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp ne i32 %6, 0
  %cond.i = zext i1 %tobool.not.i to i8
  %quirks.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 27
  %7 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %quirks.i, align 1
  %or.i = or i8 %8, %cond.i
  store i8 %or.i, ptr %quirks.i, align 1
  %call = tail call i32 @uart_add_one_port(ptr noundef nonnull @serial8250_reg, ptr noundef %arrayidx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.03, 1
  %9 = load i32, ptr @nr_uarts, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !34, !36, !38, !39, !41, !43, !44, !46, !48, !49, !51, !53, !54, !56, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !89, !91, !93, !95, !96, !97, !98, !100, !101, !103, !104, !105, !107, !109, !110, !111, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !134, !136, !138, !139, !140, !141, !142, !144, !145, !146, !147, !148, !149, !150, !152, !153, !154, !155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__ksymtab_serial8250_get_port, !1, !"__ksymtab_serial8250_get_port", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 405, i32 1}
!2 = !{ptr @__ksymtab_serial8250_set_isa_configurator, !3, !"__ksymtab_serial8250_set_isa_configurator", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 415, i32 1}
!4 = !{ptr @__initcall__kmod_8250__238_682_univ8250_console_initcon, !5, !"__initcall__kmod_8250__238_682_univ8250_console_initcon", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 682, i32 1}
!6 = !{ptr @__ksymtab_serial8250_suspend_port, !7, !"__ksymtab_serial8250_suspend_port", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 762, i32 1}
!8 = !{ptr @__ksymtab_serial8250_resume_port, !9, !"__ksymtab_serial8250_resume_port", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 788, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1089, i32 4}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @serial8250_register_8250_port._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @serial8250_register_8250_port._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @serial8250_register_8250_port.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1102, i32 4}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @serial8250_register_8250_port.__key.6, !19, !"__key", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__ksymtab_serial8250_register_8250_port, !24, !"__ksymtab_serial8250_register_8250_port", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1118, i32 1}
!25 = !{ptr @__ksymtab_serial8250_unregister_port, !26, !"__ksymtab_serial8250_unregister_port", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1154, i32 1}
!27 = !{ptr @__initcall__kmod_8250__239_1236_serial8250_init6, !28, !"__initcall__kmod_8250__239_1236_serial8250_init6", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1236, i32 1}
!29 = !{ptr @__exitcall_serial8250_exit, !30, !"__exitcall_serial8250_exit", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1237, i32 1}
!31 = !{ptr @__UNIQUE_ID_file240, !32, !"__UNIQUE_ID_file240", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1239, i32 1}
!33 = !{ptr @__UNIQUE_ID_license241, !32, !"__UNIQUE_ID_license241", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_description242, !35, !"__UNIQUE_ID_description242", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1240, i32 1}
!36 = !{ptr @__param_share_irqs, !37, !"__param_share_irqs", i1 false, i1 false}
!37 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1242, i32 1}
!38 = !{ptr @__UNIQUE_ID_share_irqstype243, !37, !"__UNIQUE_ID_share_irqstype243", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_share_irqs244, !40, !"__UNIQUE_ID_share_irqs244", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1243, i32 1}
!41 = !{ptr @__param_nr_uarts, !42, !"__param_nr_uarts", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1245, i32 1}
!43 = !{ptr @__UNIQUE_ID_nr_uartstype245, !42, !"__UNIQUE_ID_nr_uartstype245", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_nr_uarts246, !45, !"__UNIQUE_ID_nr_uarts246", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1246, i32 1}
!46 = !{ptr @__param_skip_txen_test, !47, !"__param_skip_txen_test", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1248, i32 1}
!48 = !{ptr @__UNIQUE_ID_skip_txen_testtype247, !47, !"__UNIQUE_ID_skip_txen_testtype247", i1 false, i1 false}
!49 = !{ptr @__UNIQUE_ID_skip_txen_test248, !50, !"__UNIQUE_ID_skip_txen_test248", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1249, i32 1}
!51 = !{ptr @__param_probe_rsa, !52, !"__param_probe_rsa", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1252, i32 1}
!53 = !{ptr @__UNIQUE_ID_probe_rsatype249, !52, !"__UNIQUE_ID_probe_rsatype249", i1 false, i1 false}
!54 = !{ptr @__UNIQUE_ID_probe_rsa250, !55, !"__UNIQUE_ID_probe_rsa250", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1253, i32 1}
!56 = !{ptr @__UNIQUE_ID_alias251, !57, !"__UNIQUE_ID_alias251", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1255, i32 1}
!58 = !{ptr @s8250_options.__param_str_share_irqs, !59, !"__param_str_share_irqs", i1 false, i1 false}
!59 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1274, i32 2}
!60 = !{ptr @s8250_options.__param_share_irqs, !59, !"__param_share_irqs", i1 false, i1 false}
!61 = !{ptr @s8250_options.__param_str_nr_uarts, !62, !"__param_str_nr_uarts", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1275, i32 2}
!63 = !{ptr @s8250_options.__param_nr_uarts, !62, !"__param_nr_uarts", i1 false, i1 false}
!64 = !{ptr @s8250_options.__param_str_skip_txen_test, !65, !"__param_str_skip_txen_test", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1276, i32 2}
!66 = !{ptr @s8250_options.__param_skip_txen_test, !65, !"__param_skip_txen_test", i1 false, i1 false}
!67 = !{ptr @s8250_options.__param_str_probe_rsa, !68, !"__param_str_probe_rsa", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1278, i32 2}
!69 = !{ptr @s8250_options.__param_probe_rsa, !68, !"__param_probe_rsa", i1 false, i1 false}
!70 = !{ptr @skip_txen_test, !71, !"skip_txen_test", i1 false, i1 false}
!71 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 56, i32 21}
!72 = !{ptr @serial8250_ports, !73, !"serial8250_ports", i1 false, i1 false}
!73 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 387, i32 30}
!74 = !{ptr @serial8250_isa_config, !75, !"serial8250_isa_config", i1 false, i1 false}
!75 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 407, i32 15}
!76 = !{ptr @serial8250_isa_devs, !77, !"serial8250_isa_devs", i1 false, i1 false}
!77 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 899, i32 32}
!78 = !{ptr @univ8250_console, !79, !"univ8250_console", i1 false, i1 false}
!79 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 661, i32 23}
!80 = !{ptr @nr_uarts, !81, !"nr_uarts", i1 false, i1 false}
!81 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 52, i32 21}
!82 = distinct !{null, !83, !"first", i1 false, i1 false}
!83 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 488, i32 13}
!84 = !{ptr @serial8250_isa_init_ports.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 508, i32 3}
!86 = !{ptr @.str.8, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @base_ops, !88, !"base_ops", i1 false, i1 false}
!88 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 379, i32 31}
!89 = !{ptr @univ8250_port_ops, !90, !"univ8250_port_ops", i1 false, i1 false}
!90 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 380, i32 24}
!91 = !{ptr @univ8250_driver_ops, !92, !"univ8250_driver_ops", i1 false, i1 false}
!92 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 382, i32 35}
!93 = !{ptr @.str.9, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 312, i32 3}
!95 = !{ptr @.str.10, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.11, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @univ8250_setup_irq.__UNIQUE_ID_ddebug237, !94, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!98 = !{ptr @serial_link_irq_chain.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 192, i32 3}
!100 = !{ptr @.str.12, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.13, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 92, i32 8}
!103 = !{ptr @.str.14, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @hash_mutex, !102, !"hash_mutex", i1 false, i1 false}
!105 = !{ptr @irq_lists, !106, !"irq_lists", i1 false, i1 false}
!106 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 91, i32 26}
!107 = !{ptr @.str.15, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 114, i32 2}
!109 = !{ptr @.str.16, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @serial8250_interrupt.__UNIQUE_ID_ddebug235, !108, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!111 = !{ptr @.str.17, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 140, i32 2}
!113 = !{ptr @serial8250_interrupt.__UNIQUE_ID_ddebug236, !112, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!114 = !{ptr @.str.18, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 354, i32 7}
!116 = !{ptr @probe_rsa_count, !117, !"probe_rsa_count", i1 false, i1 false}
!117 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 80, i32 21}
!118 = !{ptr @probe_rsa, !119, !"probe_rsa", i1 false, i1 false}
!119 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 79, i32 22}
!120 = distinct !{null, !121, !"old_serial_port", i1 false, i1 false}
!121 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 70, i32 37}
!122 = !{ptr @.str.19, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 691, i32 18}
!124 = !{ptr @.str.20, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 692, i32 15}
!126 = !{ptr @serial8250_reg, !127, !"serial8250_reg", i1 false, i1 false}
!127 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 689, i32 27}
!128 = !{ptr @.str.21, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 906, i32 8}
!130 = !{ptr @.str.22, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @serial_mutex, !129, !"serial_mutex", i1 false, i1 false}
!132 = !{ptr @.str.23, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 891, i32 11}
!134 = !{ptr @serial8250_isa_driver, !135, !"serial8250_isa_driver", i1 false, i1 false}
!135 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 885, i32 31}
!136 = !{ptr @.str.24, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 832, i32 4}
!138 = !{ptr @.str.25, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.26, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @serial8250_probe._entry, !137, !"_entry", i1 false, i1 false}
!141 = !{ptr @serial8250_probe._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.27, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 1165, i32 2}
!144 = !{ptr @.str.28, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @serial8250_init._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @serial8250_init._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.29, !143, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.30, !143, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @__param_str_share_irqs, !37, !"__param_str_share_irqs", i1 false, i1 false}
!150 = !{ptr @share_irqs, !151, !"share_irqs", i1 false, i1 false}
!151 = !{!"../drivers/tty/serial/8250/8250_core.c", i32 50, i32 21}
!152 = !{ptr @__param_str_nr_uarts, !42, !"__param_str_nr_uarts", i1 false, i1 false}
!153 = !{ptr @__param_str_skip_txen_test, !47, !"__param_str_skip_txen_test", i1 false, i1 false}
!154 = !{ptr @__param_str_probe_rsa, !52, !"__param_str_probe_rsa", i1 false, i1 false}
!155 = !{ptr @__param_arr_probe_rsa, !52, !"__param_arr_probe_rsa", i1 false, i1 false}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{i8 0, i8 2}
!166 = !{!"auto-init"}
!167 = !{i64 2148979260, i64 2148979265, i64 2148979278, i64 2148979322, i64 2148979356, i64 2148979377}
!168 = !{!"branch_weights", i32 1, i32 1}
!169 = !{i64 2155173157, i64 2155173657, i64 2155173194, i64 2155173250, i64 2155173284, i64 2155173308, i64 2155173349, i64 2155173370, i64 2155173398, i64 2155173432}
!170 = !{!"branch_weights", i32 1, i32 2000}
!171 = !{i64 2155174817, i64 2155175317, i64 2155174854, i64 2155174910, i64 2155174944, i64 2155174968, i64 2155175009, i64 2155175030, i64 2155175058, i64 2155175092}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 2155165103, i64 2155165603, i64 2155165140, i64 2155165196, i64 2155165230, i64 2155165254, i64 2155165295, i64 2155165316, i64 2155165344, i64 2155165378}
