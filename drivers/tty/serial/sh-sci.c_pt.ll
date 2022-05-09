; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/sh-sci.c_pt.bc'
source_filename = "../drivers/tty/serial/sh-sci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sci_port = type { %struct.uart_port, ptr, ptr, i32, i32, ptr, [4 x ptr], [4 x i32], [6 x i32], [6 x ptr], ptr, ptr, ptr, ptr, i32, [2 x i32], i32, i32, i32, [2 x %struct.scatterlist], [2 x ptr], i32, %struct.work_struct, %struct.hrtimer, i32, i32, i32, %struct.timer_list, i32, i16, i8, i8 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sci_irq_desc = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.plat_sci_reg = type { i8, i8 }
%struct.sci_port_params = type { [20 x %struct.plat_sci_reg], i32, i32, i32, i32, i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.plat_sci_port = type { i32, i32, i32, i32, i8, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }

@sci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sci_probe, ptr @sci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_sci_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sci_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@sci_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.96, ptr @.str.122, i32 204, i32 8, i32 18, ptr @serial_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID___earlycon_sci291 = internal constant %struct.earlycon_id { [15 x i8] c"sci\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,sci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sci_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_scif292 = internal constant %struct.earlycon_id { [15 x i8] c"scif\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,scif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scif_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_scif293 = internal constant %struct.earlycon_id { [15 x i8] c"scif\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,scif-r7s9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rzscifa_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_scif294 = internal constant %struct.earlycon_id { [15 x i8] c"scif\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,scif-r9a07g044\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rzscifa_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_scifa295 = internal constant %struct.earlycon_id { [15 x i8] c"scifa\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,scifa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scifa_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_scifb296 = internal constant %struct.earlycon_id { [15 x i8] c"scifb\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,scifb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scifb_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_hscif297 = internal constant %struct.earlycon_id { [15 x i8] c"hscif\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,hscif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hscif_early_console_setup }, section "__earlycon_table", align 4
@__initcall__kmod_sh_sci__298_3482_sci_init6 = internal global ptr @sci_init, section ".initcall6.init", align 4
@__exitcall_sci_exit = internal global ptr @sci_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file299 = internal constant [38 x i8] c"sh_sci.file=drivers/tty/serial/sh-sci\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [19 x i8] c"sh_sci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias301 = internal constant [29 x i8] c"sh_sci.alias=platform:sh-sci\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [25 x i8] c"sh_sci.author=Paul Mundt\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [50 x i8] c"sh_sci.description=SuperH (H)SCI(F) serial driver\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh-sci\00", [25 x i8] zeroinitializer }, align 32
@of_sci_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,scif-r7s72100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473413 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,scif-r7s9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473421 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,scif-r9a07g044\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473421 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen1-scif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473416 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-scif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473416 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-scif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473416 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen4-scif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473416 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,scif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473415 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,scifa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5439491 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,scifb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6094852 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,hscif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6815756 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3407873 to ptr) }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@sci_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sci_suspend, ptr @sci_resume, ptr @sci_suspend, ptr @sci_resume, ptr @sci_suspend, ptr @sci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 3327, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no platform data supplied\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sci_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/tty/serial/sh-sci.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sci_probe._entry_ptr = internal global ptr @sci_probe._entry, section ".printk_index", align 4
@sci_ports = internal global { [18 x %struct.sci_port], [3232 x i8] } zeroinitializer, align 32
@dev_attr_rx_fifo_trigger = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_fifo_trigger_show, ptr @rx_fifo_trigger_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_fifo_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_fifo_timeout_show, ptr @rx_fifo_timeout_store }, [36 x i8] zeroinitializer }, align 32
@sci_ports_in_use = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get reset ctrl\0A\00", [38 x i8] zeroinitializer }, align 32
@sci_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 3210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to deassert reset %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sci_parse_dt\00", [19 x i8] zeroinitializer }, align 32
@sci_parse_dt._entry_ptr = internal global ptr @sci_parse_dt._entry, section ".printk_index", align 4
@sci_parse_dt._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 3217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to register assert devm action, %d\0A\00", [53 x i8] zeroinitializer }, align 32
@sci_parse_dt._entry_ptr.11 = internal global ptr @sci_parse_dt._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@sci_parse_dt._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.3, i32 3230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get alias id (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@sci_parse_dt._entry_ptr.15 = internal global ptr @sci_parse_dt._entry.13, section ".printk_index", align 4
@sci_parse_dt._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.3, i32 3234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"serial%d out of range\0A\00", [41 x i8] zeroinitializer }, align 32
@sci_parse_dt._entry_ptr.18 = internal global ptr @sci_parse_dt._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uart-has-rtscts\00", [16 x i8] zeroinitializer }, align 32
@sci_probe_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 3259, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Attempting to register port %d when only %d are available\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sci_probe_single\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@sci_probe_single._entry_ptr = internal global ptr @sci_probe_single._entry, section ".printk_index", align 4
@sci_probe_single._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.3, i32 3260, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Consider bumping CONFIG_SERIAL_SH_SCI_NR_UARTS!\0A\00", [47 x i8] zeroinitializer }, align 32
@sci_probe_single._entry_ptr.25 = internal global ptr @sci_probe_single._entry.23, section ".printk_index", align 4
@sci_uart_registration_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sci_uart_registration_lock, i64 52), ptr getelementptr (i8, ptr @sci_uart_registration_lock, i64 52) }, ptr @sci_uart_registration_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@sci_probe_single._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.3, i32 3288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Conflicting RTS/CTS config\0A\00", [36 x i8] zeroinitializer }, align 32
@sci_probe_single._entry_ptr.28 = internal global ptr @sci_probe_single._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sci_uart_registration_lock.wait_lock\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sci_uart_registration_lock\00", [37 x i8] zeroinitializer }, align 32
@sci_uart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @sci_tx_empty, ptr @sci_set_mctrl, ptr @sci_get_mctrl, ptr @sci_stop_tx, ptr @sci_start_tx, ptr null, ptr null, ptr null, ptr @sci_stop_rx, ptr @sci_enable_ms, ptr @sci_break_ctl, ptr @sci_startup, ptr @sci_shutdown, ptr @sci_flush_buffer, ptr @sci_set_termios, ptr null, ptr @sci_pm, ptr @sci_type, ptr @sci_release_port, ptr @sci_request_port, ptr @sci_config_port, ptr @sci_verify_port, ptr null, ptr null, ptr @sci_poll_put_char, ptr @sci_poll_get_char }, [56 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sci_startup.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 2, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh_sci\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sci_startup\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%d)\0A\00", [24 x i8] zeroinitializer }, align 32
@sci_request_dma.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 1, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sci_request_dma\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: port %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmas\00", [27 x i8] zeroinitializer }, align 32
@sci_request_dma.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.34, ptr @.str.3, ptr @.str.37, i8 1, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: TX: got channel %p\0A\00", [40 x i8] zeroinitializer }, align 32
@sci_request_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.3, i32 1593, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed mapping Tx DMA descriptor\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sci_request_dma._entry_ptr = internal global ptr @sci_request_dma._entry, section ".printk_index", align 4
@sci_request_dma.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.34, ptr @.str.3, ptr @.str.40, i8 1, i8 -113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: mapped %lu@%p to %pad\0A\00", [37 x i8] zeroinitializer }, align 32
@sci_request_dma.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&s->work_tx)\00", [33 x i8] zeroinitializer }, align 32
@sci_request_dma.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.34, ptr @.str.3, ptr @.str.42, i8 1, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: RX: got channel %p\0A\00", [40 x i8] zeroinitializer }, align 32
@sci_request_dma._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.34, ptr @.str.3, i32 1617, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to allocate Rx dma buffer, using PIO\0A\00", [51 x i8] zeroinitializer }, align 32
@sci_request_dma._entry_ptr.45 = internal global ptr @sci_request_dma._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@sci_request_dma_chan.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 1, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sci_request_dma_chan\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dma_request_slave_channel failed\0A\00", [62 x i8] zeroinitializer }, align 32
@sci_request_dma_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 1550, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dmaengine_slave_config failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sci_request_dma_chan._entry_ptr = internal global ptr @sci_request_dma_chan._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@sci_dma_tx_work_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 1425, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed preparing Tx DMA descriptor\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sci_dma_tx_work_fn\00", [45 x i8] zeroinitializer }, align 32
@sci_dma_tx_work_fn._entry_ptr = internal global ptr @sci_dma_tx_work_fn._entry, section ".printk_index", align 4
@sci_dma_tx_work_fn._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 1437, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed submitting Tx DMA descriptor\0A\00", [59 x i8] zeroinitializer }, align 32
@sci_dma_tx_work_fn._entry_ptr.57 = internal global ptr @sci_dma_tx_work_fn._entry.55, section ".printk_index", align 4
@sci_dma_tx_work_fn.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.54, ptr @.str.3, ptr @.str.58, i8 1, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: %p: %d...%d, cookie %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sci_dma_tx_complete.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.59, ptr @.str.3, ptr @.str.33, i8 1, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sci_dma_tx_complete\00", [44 x i8] zeroinitializer }, align 32
@sci_dma_rx_timer_fn.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 1, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sci_dma_rx_timer_fn\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DMA Rx timed out\0A\00", [46 x i8] zeroinitializer }, align 32
@sci_dma_rx_timer_fn.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.60, ptr @.str.3, ptr @.str.62, i8 1, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cookie %d #%d has already completed\0A\00", [59 x i8] zeroinitializer }, align 32
@sci_dma_rx_timer_fn.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.60, ptr @.str.3, ptr @.str.63, i8 1, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Transaction complete after DMA engine was stopped\00", [46 x i8] zeroinitializer }, align 32
@sci_dma_rx_complete.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 1, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sci_dma_rx_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(%d) active cookie %d\0A\00", [39 x i8] zeroinitializer }, align 32
@sci_dma_rx_complete.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.64, ptr @.str.3, ptr @.str.66, i8 1, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: cookie %d #%d, new active cookie %d\0A\00", [55 x i8] zeroinitializer }, align 32
@sci_dma_rx_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.64, ptr @.str.3, i32 1324, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed submitting Rx DMA descriptor\0A\00", [59 x i8] zeroinitializer }, align 32
@sci_dma_rx_complete._entry_ptr = internal global ptr @sci_dma_rx_complete._entry, section ".printk_index", align 4
@sci_irq_desc = internal constant { [7 x %struct.sci_irq_desc], [40 x i8] } { [7 x %struct.sci_irq_desc] [%struct.sci_irq_desc { ptr @.str.71, ptr @sci_er_interrupt }, %struct.sci_irq_desc { ptr @.str.72, ptr @sci_rx_interrupt }, %struct.sci_irq_desc { ptr @.str.73, ptr @sci_tx_interrupt }, %struct.sci_irq_desc { ptr @.str.74, ptr @sci_br_interrupt }, %struct.sci_irq_desc { ptr @.str.75, ptr @sci_rx_interrupt }, %struct.sci_irq_desc { ptr @.str.76, ptr @sci_tx_interrupt }, %struct.sci_irq_desc { ptr @.str.77, ptr @sci_mpxed_interrupt }], [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%s\00", [26 x i8] zeroinitializer }, align 32
@sci_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 1933, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't allocate %s IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sci_request_irq\00", [16 x i8] zeroinitializer }, align 32
@sci_request_irq._entry_ptr = internal global ptr @sci_request_irq._entry, section ".printk_index", align 4
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx err\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx full\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx empty\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"break\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx ready\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx end\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mux\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sci_rx_interrupt.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 1, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sci_rx_interrupt\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Rx IRQ %lu: setup t-out in %u us\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown FIFO configuration\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@sci_shutdown.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.82, ptr @.str.3, ptr @.str.33, i8 2, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sci_shutdown\00", [19 x i8] zeroinitializer }, align 32
@sci_shutdown.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 2, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(%d) deleting rx_timer\0A\00", [38 x i8] zeroinitializer }, align 32
@sci_set_termios.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.84, ptr @.str.3, ptr @.str.85, i8 2, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sci_set_termios\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Using clk %pC for %u%+d bps\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sci_sck_calc.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.86, ptr @.str.3, ptr @.str.87, i8 2, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sci_sck_calc\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SCK: %u%+d bps using SR %u\0A\00", [36 x i8] zeroinitializer }, align 32
@sci_brg_calc.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.88, ptr @.str.3, ptr @.str.89, i8 2, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sci_brg_calc\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"BRG: %u%+d bps using DL %u SR %u\0A\00", [62 x i8] zeroinitializer }, align 32
@sci_scbrr_calc.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.90, ptr @.str.3, ptr @.str.91, i8 2, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sci_scbrr_calc\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"BRR: %u%+d bps using N %u SR %u cks %u\0A\00", [56 x i8] zeroinitializer }, align 32
@sci_reset.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&s->rx_fifo_timer)\00", [44 x i8] zeroinitializer }, align 32
@rx_fifo_timer_fn.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.93, ptr @.str.3, ptr @.str.94, i8 1, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_fifo_timer_fn\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Rx timed out\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"irda\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sci\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"scif\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"scifa\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"scifb\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hscif\00", [26 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@sci_request_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 2698, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"request_mem_region failed.\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sci_request_port\00", [47 x i8] zeroinitializer }, align 32
@sci_request_port._entry_ptr = internal global ptr @sci_request_port._entry, section ".printk_index", align 4
@sci_remap_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 2662, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't remap port#%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sci_remap_port\00", [17 x i8] zeroinitializer }, align 32
@sci_remap_port._entry_ptr = internal global ptr @sci_remap_port._entry, section ".printk_index", align 4
@sci_probe_regmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.3, i32 2831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Can't probe register map for given port\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sci_probe_regmap\00", [47 x i8] zeroinitializer }, align 32
@sci_probe_regmap._entry_ptr = internal global ptr @sci_probe_regmap._entry, section ".printk_index", align 4
@sci_port_params = internal constant { <{ %struct.sci_port_params, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, %struct.sci_port_params, %struct.sci_port_params, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, %struct.sci_port_params, { <{ [9 x %struct.plat_sci_reg], [11 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, %struct.sci_port_params, %struct.sci_port_params }>, [224 x i8] } { <{ %struct.sci_port_params, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, %struct.sci_port_params, %struct.sci_port_params, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, %struct.sci_port_params, { <{ [9 x %struct.plat_sci_reg], [11 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, %struct.sci_port_params, %struct.sci_port_params }> <{ %struct.sci_port_params zeroinitializer, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }> <{ [8 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 8 }, %struct.plat_sci_reg { i8 1, i8 8 }, %struct.plat_sci_reg { i8 2, i8 8 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 3, i8 8 }, %struct.plat_sci_reg { i8 5, i8 8 }], [12 x %struct.plat_sci_reg] zeroinitializer }>, i32 1, i32 3, i32 32, i32 -2147483648, i32 56, i32 -60 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }> <{ [8 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 8 }, %struct.plat_sci_reg { i8 2, i8 8 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 14, i8 16 }, %struct.plat_sci_reg { i8 6, i8 8 }, %struct.plat_sci_reg { i8 10, i8 8 }], [12 x %struct.plat_sci_reg] zeroinitializer }>, i32 1, i32 3, i32 32, i32 -2147483648, i32 56, i32 -60 }, %struct.sci_port_params { [20 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 20, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 32, i8 8 }, %struct.plat_sci_reg { i8 36, i8 8 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 48, i8 16 }, %struct.plat_sci_reg { i8 52, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer], i32 64, i32 3, i32 512, i32 67474512, i32 668, i32 -653 }, %struct.sci_port_params { [20 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 20, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 64, i8 8 }, %struct.plat_sci_reg { i8 96, i8 8 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 56, i8 16 }, %struct.plat_sci_reg { i8 60, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 48, i8 16 }, %struct.plat_sci_reg { i8 52, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer], i32 256, i32 3, i32 512, i32 67474512, i32 668, i32 -653 }, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }> <{ [12 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 20, i8 8 }, %struct.plat_sci_reg { i8 36, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 32, i8 16 }], [8 x %struct.plat_sci_reg] zeroinitializer }>, i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }> <{ [8 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 8 }, %struct.plat_sci_reg { i8 2, i8 8 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 14, i8 16 }, %struct.plat_sci_reg { i8 6, i8 8 }, %struct.plat_sci_reg { i8 10, i8 8 }], [12 x %struct.plat_sci_reg] zeroinitializer }>, i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 }, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }> <{ [12 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 20, i8 8 }, %struct.plat_sci_reg { i8 36, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 32, i8 16 }], [8 x %struct.plat_sci_reg] zeroinitializer }>, i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 }, %struct.sci_port_params { [20 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 20, i8 8 }, %struct.plat_sci_reg { i8 36, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 32, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 48, i8 16 }, %struct.plat_sci_reg { i8 52, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer], i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 }, { <{ [9 x %struct.plat_sci_reg], [11 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [9 x %struct.plat_sci_reg], [11 x %struct.plat_sci_reg] }> <{ [9 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 20, i8 8 }, %struct.plat_sci_reg { i8 36, i8 16 }], [11 x %struct.plat_sci_reg] zeroinitializer }>, i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 }, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }> <{ [12 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 20, i8 8 }, %struct.plat_sci_reg { i8 40, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 32, i8 16 }, %struct.plat_sci_reg { i8 36, i8 16 }], [8 x %struct.plat_sci_reg] zeroinitializer }>, i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }> <{ [8 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 20, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 32, i8 8 }, %struct.plat_sci_reg { i8 36, i8 8 }], [12 x %struct.plat_sci_reg] zeroinitializer }>, i32 64, i32 3, i32 512, i32 32768, i32 668, i32 -653 }, %struct.sci_port_params { [20 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 20, i8 8 }, %struct.plat_sci_reg { i8 36, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 32, i8 16 }, %struct.plat_sci_reg { i8 64, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 48, i8 16 }, %struct.plat_sci_reg { i8 52, i8 16 }, %struct.plat_sci_reg { i8 84, i8 16 }, %struct.plat_sci_reg { i8 88, i8 16 }, %struct.plat_sci_reg zeroinitializer], i32 128, i32 8, i32 1, i32 -128, i32 156, i32 -141 }, %struct.sci_port_params { [20 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 2, i8 8 }, %struct.plat_sci_reg { i8 4, i8 16 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 12, i8 16 }, %struct.plat_sci_reg { i8 14, i8 16 }, %struct.plat_sci_reg { i8 6, i8 8 }, %struct.plat_sci_reg { i8 10, i8 8 }, %struct.plat_sci_reg { i8 18, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 20, i8 8 }], i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 } }>, [224 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sck\00", [28 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"brg_int\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scif_clk\00", [23 x i8] zeroinitializer }, align 32
@__const.sci_init_clocks.clk_names = private unnamed_addr constant [4 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], align 4
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hsck\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peripheral_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed to get %s\0A\00", [46 x i8] zeroinitializer }, align 32
@sci_init_clocks.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.115, ptr @.str.3, ptr @.str.114, i8 2, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sci_init_clocks\00", [16 x i8] zeroinitializer }, align 32
@sci_init_clocks.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.115, ptr @.str.3, ptr @.str.116, i8 2, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clk %s is %pC rate %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid register access\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_fifo_trigger\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_fifo_timeout\00", [16 x i8] zeroinitializer }, align 32
@rx_fifo_timeout_store.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&sci->rx_fifo_timer)\00", [42 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttySC\00", [26 x i8] zeroinitializer }, align 32
@serial_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttySC\00\00\00\00\00\00\00\00\00\00\00", ptr @serial_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @serial_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @sci_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@port_cfg = internal global %struct.plat_sci_port zeroinitializer, section ".init.data", align 4
@sci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 3400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sci_init\00", [23 x i8] zeroinitializer }, align 32
@sci_init._entry_ptr = internal global ptr @sci_init._entry, section ".printk_index", align 4
@banner = internal constant [36 x i8] c"SuperH (H)SCI(F) driver initialized\00", section ".init.rodata", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 53, i64 83, i64 93, i64 104]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 83, i64 93, i64 104]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 32, i64 83, i64 93, i64 104]
@__sancov_gen_cov_switch_values.127 = internal global [8 x i64] [i64 6, i64 32, i64 52, i64 53, i64 54, i64 83, i64 93, i64 104]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.143 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 4, i64 6, i64 7, i64 11]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.147 = internal global [8 x i64] [i64 6, i64 32, i64 52, i64 53, i64 54, i64 83, i64 93, i64 104]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 53, i64 104]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 32, i64 53, i64 83, i64 93]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 83, i64 93]
@___asan_gen_.159 = private unnamed_addr constant [11 x i8] c"sci_driver\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3388, i32 31 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"sci_uart_driver\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3100, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3392, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant [13 x i8] c"of_sci_match\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3133, i32 34 }
@___asan_gen_.171 = private unnamed_addr constant [15 x i8] c"sci_dev_pm_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3386, i32 8 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3327, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [10 x i8] c"sci_ports\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 164, i32 24 }
@___asan_gen_.195 = private unnamed_addr constant [25 x i8] c"dev_attr_rx_fifo_trigger\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [25 x i8] c"dev_attr_rx_fifo_timeout\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"sci_ports_in_use\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 165, i32 22 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3206, i32 11 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3210, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3216, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3226, i32 27 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3230, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3234, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3244, i32 45 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3258, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3260, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [27 x i8] c"sci_uart_registration_lock\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3288, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3099, i32 8 }
@___asan_gen_.273 = private unnamed_addr constant [13 x i8] c"sci_uart_ops\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2730, i32 30 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2158, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1563, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1581, i32 44 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1585, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1593, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1596, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1600, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1606, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1616, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1530, i32 31 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1530, i32 38 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1532, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1550, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 326, i32 6 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1425, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1437, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1442, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1180, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1467, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1480, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1498, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1287, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1318, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1324, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [13 x i8] c"sci_irq_desc\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1849, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1923, i32 43 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1933, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1854, i32 11 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1859, i32 11 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1864, i32 11 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1869, i32 11 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1874, i32 11 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1879, i32 11 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1887, i32 11 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1705, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1065, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1169, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2177, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2196, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2476, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2230, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2261, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2329, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2358, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1090, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2633, i32 10 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2635, i32 10 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2637, i32 10 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2639, i32 10 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2641, i32 10 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2643, i32 10 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2698, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2662, i32 4 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2831, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant [16 x i8] c"sci_port_params\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 174, i32 37 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2758, i32 15 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2759, i32 15 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2760, i32 19 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2761, i32 20 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2767, i32 24 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2780, i32 28 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2783, i32 12 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2788, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2790, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 514, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1123, i32 8 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1100, i32 22 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1169, i32 8 }
@___asan_gen_.573 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1163, i32 4 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3103, i32 14 }
@___asan_gen_.582 = private unnamed_addr constant [15 x i8] c"serial_console\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3044, i32 23 }
@___asan_gen_.585 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.592 = private constant [31 x i8] c"../drivers/tty/serial/sh-sci.c\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3400, i32 2 }
@llvm.compiler.used = appending global [179 x ptr] [ptr @__UNIQUE_ID___earlycon_hscif297, ptr @__UNIQUE_ID___earlycon_sci291, ptr @__UNIQUE_ID___earlycon_scif292, ptr @__UNIQUE_ID___earlycon_scif293, ptr @__UNIQUE_ID___earlycon_scif294, ptr @__UNIQUE_ID___earlycon_scifa295, ptr @__UNIQUE_ID___earlycon_scifb296, ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_sci_exit, ptr @__initcall__kmod_sh_sci__298_3482_sci_init6, ptr @sci_dma_rx_complete._entry, ptr @sci_dma_rx_complete._entry_ptr, ptr @sci_dma_tx_work_fn._entry, ptr @sci_dma_tx_work_fn._entry.55, ptr @sci_dma_tx_work_fn._entry_ptr, ptr @sci_dma_tx_work_fn._entry_ptr.57, ptr @sci_exit, ptr @sci_init._entry, ptr @sci_init._entry_ptr, ptr @sci_parse_dt._entry, ptr @sci_parse_dt._entry.13, ptr @sci_parse_dt._entry.16, ptr @sci_parse_dt._entry.9, ptr @sci_parse_dt._entry_ptr, ptr @sci_parse_dt._entry_ptr.11, ptr @sci_parse_dt._entry_ptr.15, ptr @sci_parse_dt._entry_ptr.18, ptr @sci_probe._entry, ptr @sci_probe._entry_ptr, ptr @sci_probe_regmap._entry, ptr @sci_probe_regmap._entry_ptr, ptr @sci_probe_single._entry, ptr @sci_probe_single._entry.23, ptr @sci_probe_single._entry.26, ptr @sci_probe_single._entry_ptr, ptr @sci_probe_single._entry_ptr.25, ptr @sci_probe_single._entry_ptr.28, ptr @sci_remap_port._entry, ptr @sci_remap_port._entry_ptr, ptr @sci_request_dma._entry, ptr @sci_request_dma._entry.43, ptr @sci_request_dma._entry_ptr, ptr @sci_request_dma._entry_ptr.45, ptr @sci_request_dma_chan._entry, ptr @sci_request_dma_chan._entry_ptr, ptr @sci_request_irq._entry, ptr @sci_request_irq._entry_ptr, ptr @sci_request_port._entry, ptr @sci_request_port._entry_ptr, ptr @sci_driver, ptr @sci_uart_driver, ptr @.str, ptr @of_sci_match, ptr @sci_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sci_ports, ptr @dev_attr_rx_fifo_trigger, ptr @dev_attr_rx_fifo_timeout, ptr @sci_ports_in_use, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @sci_uart_registration_lock, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @sci_uart_ops, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @sci_request_dma.__key, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @sci_irq_desc, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @sci_reset.__key, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @sci_port_params, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @rx_fifo_timeout_store.__key, ptr @.str.121, ptr @.str.122, ptr @serial_console, ptr @.str.123, ptr @.str.124], section "llvm.metadata"
@0 = internal global [145 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_sci_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_ports to i32), i32 12960, i32 16192, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_fifo_trigger to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_fifo_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_ports_in_use to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_parse_dt._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_parse_dt._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_parse_dt._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_probe_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_probe_single._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_uart_registration_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_probe_single._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_uart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_request_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_request_dma.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_request_dma._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_request_dma_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_dma_tx_work_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_dma_tx_work_fn._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_dma_rx_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_irq_desc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_reset.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_request_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_remap_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_probe_regmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_port_params to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_fifo_timeout_store.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sci_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sci_driver) #9
  %0 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @sci_uart_driver, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uart_unregister_driver(ptr noundef nonnull @sci_uart_driver) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_early_console_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @early_console_setup(ptr noundef %device, i32 noundef 52) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scif_early_console_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @early_console_setup(ptr noundef %device, i32 noundef 53) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rzscifa_early_console_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 13, ptr getelementptr inbounds (%struct.plat_sci_port, ptr @port_cfg, i32 0, i32 4), align 4
  %call = tail call fastcc i32 @early_console_setup(ptr noundef %device, i32 noundef 53) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scifa_early_console_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @early_console_setup(ptr noundef %device, i32 noundef 83) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scifb_early_console_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @early_console_setup(ptr noundef %device, i32 noundef 93) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hscif_early_console_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @early_console_setup(ptr noundef %device, i32 noundef 104) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @banner) #13
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sci_driver, ptr noundef null) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call2.i = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call.i.i to i32
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %2, ptr noundef nonnull @.str.6) #9
  %3 = inttoptr i32 %call9.i to ptr
  br label %sci_parse_dt.exit

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end17.i, label %do.end.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call12.i) #13
  %4 = inttoptr i32 %call12.i to ptr
  br label %sci_parse_dt.exit

if.end17.i:                                       ; preds = %if.end11.i
  %call.i92.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @sci_reset_control_assert, ptr noundef %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool.not.i.i = icmp eq i32 %call.i92.i, 0
  br i1 %tobool.not.i.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call.i92.i) #13
  %5 = inttoptr i32 %call.i92.i to ptr
  br label %sci_parse_dt.exit

if.end27.i:                                       ; preds = %if.end17.i
  %call.i93.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #9
  %tobool30.not.i = icmp eq ptr %call.i93.i, null
  br i1 %tobool30.not.i, label %if.end27.i.if.then3_crit_edge, label %if.end33.i

if.end27.i.if.then3_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end33.i:                                       ; preds = %if.end27.i
  %call34.i = tail call i32 @of_alias_get_id(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp.i = icmp slt i32 %call34.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end33.i.if.end47.i_crit_edge

if.end33.i.if.end47.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

land.lhs.true.i:                                  ; preds = %if.end33.i
  %6 = load i32, ptr @sci_ports_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool35.not.i = icmp eq i32 %6, -1
  br i1 %tobool35.not.i, label %do.end44.i, label %if.then36.i

if.then36.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i = xor i32 %6, -1
  %7 = tail call i32 @llvm.cttz.i32(i32 %neg.i, i1 false) #9, !range !320
  br label %if.end47.i

do.end44.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call34.i) #13
  br label %if.then3

if.end47.i:                                       ; preds = %if.then36.i, %if.end33.i.if.end47.i_crit_edge
  %id.0.ph.i = phi i32 [ %call34.i, %if.end33.i.if.end47.i_crit_edge ], [ %7, %if.then36.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %id.0.ph.i)
  %cmp48.i = icmp ugt i32 %id.0.ph.i, 17
  br i1 %cmp48.i, label %do.end52.i, label %if.end55.i

do.end52.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %id.0.ph.i) #13
  br label %if.then3

if.end55.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call2.i to i32
  %shr.i = lshr i32 %8, 16
  %9 = ptrtoint ptr %call.i93.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr.i, ptr %call.i93.i, align 4
  %conv.i = trunc i32 %8 to i8
  %regtype.i = getelementptr inbounds %struct.plat_sci_port, ptr %call.i93.i, i32 0, i32 4
  %10 = ptrtoint ptr %regtype.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %regtype.i, align 4
  %call.i94.i = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef null) #9
  %tobool.i.i = icmp ne ptr %call.i94.i, null
  %has_rtscts.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %id.0.ph.i, i32 30
  %frombool.i = zext i1 %tobool.i.i to i8
  %11 = ptrtoint ptr %has_rtscts.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool.i, ptr %has_rtscts.i, align 2
  br label %sci_parse_dt.exit

sci_parse_dt.exit:                                ; preds = %if.end55.i, %do.end24.i, %do.end.i, %if.then6.i
  %dev_id.0 = phi i32 [ -1, %if.then6.i ], [ %id.0.ph.i, %if.end55.i ], [ -1, %do.end24.i ], [ -1, %do.end.i ]
  %retval.0.i = phi ptr [ %3, %if.then6.i ], [ %call.i93.i, %if.end55.i ], [ %5, %do.end24.i ], [ %4, %do.end.i ]
  %cmp.i71 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %sci_parse_dt.exit.if.then3_crit_edge, label %sci_parse_dt.exit.if.end9_crit_edge

sci_parse_dt.exit.if.end9_crit_edge:              ; preds = %sci_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

sci_parse_dt.exit.if.then3_crit_edge:             ; preds = %sci_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then3:                                         ; preds = %sci_parse_dt.exit.if.then3_crit_edge, %do.end52.i, %do.end44.i, %if.end27.i.if.then3_crit_edge
  %retval.0.i85 = phi ptr [ %retval.0.i, %sci_parse_dt.exit.if.then3_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end27.i.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end52.i ], [ inttoptr (i32 -22 to ptr), %do.end44.i ]
  %12 = ptrtoint ptr %retval.0.i85 to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %13 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %14, null
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %sci_parse_dt.exit.if.end9_crit_edge
  %dev_id.1 = phi i32 [ %16, %if.end8 ], [ %dev_id.0, %sci_parse_dt.exit.if.end9_crit_edge ]
  %p.0 = phi ptr [ %14, %if.end8 ], [ %retval.0.i, %sci_parse_dt.exit.if.end9_crit_edge ]
  %arrayidx = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %dev_id.1)
  %cmp.i72 = icmp ugt i32 %dev_id.1, 17
  br i1 %cmp.i72, label %do.end.i73, label %do.end9.i, !prof !321

do.end.i73:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %dev_id.1, 1
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %add.i, i32 noundef 18) #13
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.24) #13
  br label %cleanup

do.end9.i:                                        ; preds = %if.end9
  %18 = load i32, ptr @sci_ports_in_use, align 4
  %shl.i = shl nuw nsw i32 1, %dev_id.1
  %and.i = and i32 %18, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %do.end9.i.cleanup_crit_edge

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i:                                       ; preds = %do.end9.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @sci_uart_registration_lock, i32 noundef 0) #9
  %19 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @sci_uart_driver, i32 0, i32 7), align 4
  %tobool13.not.i74 = icmp eq ptr %19, null
  br i1 %tobool13.not.i74, label %if.then14.i, label %if.end12.i.if.end18.i_crit_edge

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end12.i
  %call.i = tail call i32 @uart_register_driver(ptr noundef nonnull @sci_uart_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool15.not.i, label %if.then14.i.if.end18.i_crit_edge, label %if.then16.i

if.then14.i.if.end18.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @sci_uart_registration_lock) #9
  br label %cleanup

if.end18.i:                                       ; preds = %if.then14.i.if.end18.i_crit_edge, %if.end12.i.if.end18.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @sci_uart_registration_lock) #9
  %cfg.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 2
  %20 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %p.0, ptr %cfg.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 39
  %21 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sci_uart_ops, ptr %ops.i.i, align 8
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 26
  %22 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %iotype.i.i, align 2
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 41
  %23 = ptrtoint ptr %line.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dev_id.1, ptr %line.i.i, align 8
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 48
  %24 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %has_sysrq.i.i, align 4
  %call.i.i75 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #9
  %cmp.i.i76 = icmp eq ptr %call.i.i75, null
  br i1 %cmp.i.i76, label %if.end18.i.cleanup_crit_edge, label %for.inc.5.i.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.5.i.i:                                    ; preds = %if.end18.i
  %25 = ptrtoint ptr %call.i.i75 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call.i.i75, align 4
  %mapbase.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 43
  %27 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mapbase.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %call.i.i75, i32 0, i32 1
  %28 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i.i.i, align 4
  %30 = load i32, ptr %call.i.i75, align 4
  %sub.i.i.i = add i32 %29, 1
  %add.i.i.i = sub i32 %sub.i.i.i, %30
  %reg_size.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 4
  %31 = ptrtoint ptr %reg_size.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i.i.i, ptr %reg_size.i.i, align 4
  %irqs7.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 8
  %call6.i.i = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #9
  %32 = ptrtoint ptr %irqs7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call6.i.i, ptr %irqs7.i.i, align 4
  %call5.1.i.i = tail call i32 @platform_get_irq_optional(ptr noundef %dev, i32 noundef 1) #9
  %arrayidx.1.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 8, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call5.1.i.i, ptr %arrayidx.1.i.i, align 8
  %call5.2.i.i = tail call i32 @platform_get_irq_optional(ptr noundef %dev, i32 noundef 2) #9
  %arrayidx.2.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 8, i32 2
  %34 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call5.2.i.i, ptr %arrayidx.2.i.i, align 4
  %call5.3.i.i = tail call i32 @platform_get_irq_optional(ptr noundef %dev, i32 noundef 3) #9
  %arrayidx.3.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 8, i32 3
  %35 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call5.3.i.i, ptr %arrayidx.3.i.i, align 8
  %call5.4.i.i = tail call i32 @platform_get_irq_optional(ptr noundef %dev, i32 noundef 4) #9
  %arrayidx.4.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 8, i32 4
  %36 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call5.4.i.i, ptr %arrayidx.4.i.i, align 4
  %call5.5.i.i = tail call i32 @platform_get_irq_optional(ptr noundef %dev, i32 noundef 5) #9
  %arrayidx.5.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 8, i32 5
  %37 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call5.5.i.i, ptr %arrayidx.5.i.i, align 8
  %38 = ptrtoint ptr %irqs7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irqs7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp12.i.i = icmp slt i32 %39, 0
  br i1 %cmp12.i.i, label %for.inc.5.i.i.cleanup_crit_edge, label %if.end14.i.i

for.inc.5.i.i.cleanup_crit_edge:                  ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14.i.i:                                     ; preds = %for.inc.5.i.i
  %40 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp17.i.i = icmp slt i32 %41, 0
  br i1 %cmp17.i.i, label %for.body21.preheader.i.i, label %if.end14.i.i.if.end29.i.i_crit_edge

if.end14.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

for.body21.preheader.i.i:                         ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %arrayidx.1.i.i, align 8
  %43 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %39, ptr %arrayidx.2.i.i, align 4
  %44 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %39, ptr %arrayidx.3.i.i, align 8
  %45 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %39, ptr %arrayidx.4.i.i, align 4
  %46 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %39, ptr %arrayidx.5.i.i, align 8
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %for.body21.preheader.i.i, %if.end14.i.i.if.end29.i.i_crit_edge
  %call30.i.i = tail call fastcc ptr @sci_probe_regmap(ptr noundef %p.0) #9
  %params.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 1
  %47 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call30.i.i, ptr %params.i.i, align 8
  %cmp32.i.i = icmp eq ptr %call30.i.i, null
  br i1 %cmp32.i.i, label %if.end29.i.i.cleanup_crit_edge, label %if.end36.i.i, !prof !321

if.end29.i.i.cleanup_crit_edge:                   ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36.i.i:                                     ; preds = %if.end29.i.i
  %48 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %p.0, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %49, label %sw.default.i.i [
    i32 93, label %sw.bb.i.i
    i32 104, label %sw.bb37.i.i
    i32 83, label %sw.bb39.i.i
    i32 53, label %sw.bb41.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_trigger.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 26
  %51 = ptrtoint ptr %rx_trigger.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 48, ptr %rx_trigger.i.i, align 8
  br label %sw.epilog.i.i

sw.bb37.i.i:                                      ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_trigger38.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 26
  %52 = ptrtoint ptr %rx_trigger38.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 64, ptr %rx_trigger38.i.i, align 8
  br label %sw.epilog.i.i

sw.bb39.i.i:                                      ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_trigger40.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 26
  %53 = ptrtoint ptr %rx_trigger40.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 32, ptr %rx_trigger40.i.i, align 8
  br label %sw.epilog.i.i

sw.bb41.i.i:                                      ; preds = %if.end36.i.i
  %regtype.i.i = getelementptr inbounds %struct.plat_sci_port, ptr %p.0, i32 0, i32 4
  %54 = ptrtoint ptr %regtype.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %regtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %55)
  %cmp42.i.i = icmp eq i8 %55, 11
  %rx_trigger45.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 26
  br i1 %cmp42.i.i, label %if.then44.i.i, label %if.else46.i.i

if.then44.i.i:                                    ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %rx_trigger45.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %rx_trigger45.i.i, align 8
  br label %sw.epilog.i.i

if.else46.i.i:                                    ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %rx_trigger45.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8, ptr %rx_trigger45.i.i, align 8
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_trigger49.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 26
  %58 = ptrtoint ptr %rx_trigger49.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %rx_trigger49.i.i, align 8
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %if.else46.i.i, %if.then44.i.i, %sw.bb39.i.i, %sw.bb37.i.i, %sw.bb.i.i
  %rx_fifo_timeout.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 28
  %59 = ptrtoint ptr %rx_fifo_timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %rx_fifo_timeout.i.i, align 4
  %hscif_tot.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 29
  %60 = ptrtoint ptr %hscif_tot.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %hscif_tot.i.i, align 8
  %sampling_rate.i.i = getelementptr inbounds %struct.plat_sci_port, ptr %p.0, i32 0, i32 2
  %61 = ptrtoint ptr %sampling_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sampling_rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool50.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool50.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %62, -1
  %shl.i.i = shl nuw i32 1, %sub.i.i
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sampling_rate_mask.i.i = getelementptr inbounds %struct.sci_port_params, ptr %call30.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %sampling_rate_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sampling_rate_mask.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %shl.i.i, %cond.true.i.i ], [ %64, %cond.false.i.i ]
  %sampling_rate_mask53.i.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 3
  %65 = ptrtoint ptr %sampling_rate_mask53.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %cond.i.i, ptr %sampling_rate_mask53.i.i, align 8
  %call57.i.i = tail call fastcc i32 @sci_init_clocks(ptr noundef %arrayidx, ptr noundef %dev1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %cmp58.i.i = icmp slt i32 %call57.i.i, 0
  br i1 %cmp58.i.i, label %cond.end.i.i.cleanup_crit_edge, label %if.end61.i.i

cond.end.i.i.cleanup_crit_edge:                   ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61.i.i:                                     ; preds = %cond.end.i.i
  %dev63.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %66 = ptrtoint ptr %dev63.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %dev1, ptr %dev63.i.i, align 8
  tail call void @pm_runtime_enable(ptr noundef %dev1) #9
  %67 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %p.0, align 4
  %type67.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 38
  %69 = ptrtoint ptr %type67.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %type67.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.plat_sci_port, ptr %p.0, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %71, 805306368
  %flags68.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 33
  %72 = ptrtoint ptr %flags68.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or.i.i, ptr %flags68.i.i, align 8
  %73 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %params.i.i, align 8
  %fifosize.i.i = getelementptr inbounds %struct.sci_port_params, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %fifosize.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fifosize.i.i, align 4
  %fifosize70.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 23
  %77 = ptrtoint ptr %fifosize70.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %fifosize70.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %68)
  %cmp72.i.i = icmp eq i32 %68, 52
  br i1 %cmp72.i.i, label %if.then74.i.i, label %if.end61.i.i.if.end22.i_crit_edge

if.end61.i.i.if.end22.i_crit_edge:                ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then74.i.i:                                    ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %reg_size.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reg_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %79)
  %cmp76.i.i = icmp ugt i32 %79, 31
  %regshift.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 25
  %..i.i = select i1 %cmp76.i.i, i8 2, i8 1
  %80 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %..i.i, ptr %regshift.i.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then74.i.i, %if.end61.i.i.if.end22.i_crit_edge
  %81 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.1.i.i, align 8
  %irq.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 20
  %83 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %irq.i.i, align 8
  %irqflags.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 21
  %84 = ptrtoint ptr %irqflags.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %irqflags.i.i, align 4
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 3
  %85 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @sci_serial_in, ptr %serial_in.i.i, align 4
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 4
  %86 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @sci_serial_out, ptr %serial_out.i.i, align 8
  %call23.i = tail call ptr @mctrl_gpio_init(ptr noundef %arrayidx, i32 noundef 0) #9
  %gpios.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 5
  %87 = ptrtoint ptr %gpios.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call23.i, ptr %gpios.i, align 8
  %cmp.i72.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72.i, label %sci_probe_single.exit, label %if.end29.i

if.end29.i:                                       ; preds = %if.end22.i
  %has_rtscts.i77 = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %dev_id.1, i32 30
  %88 = ptrtoint ptr %has_rtscts.i77 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %has_rtscts.i77, align 2, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool30.not.i78 = icmp eq i8 %89, 0
  br i1 %tobool30.not.i78, label %if.end29.i.if.end45.i_crit_edge, label %if.then31.i

if.end29.i.if.end45.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then31.i:                                      ; preds = %if.end29.i
  %call33.i = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %call23.i, i32 noundef 0) #9
  %tobool34.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool34.not.i, label %lor.lhs.false.i, label %if.then31.i.do.end41.i_crit_edge

if.then31.i.do.end41.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41.i

lor.lhs.false.i:                                  ; preds = %if.then31.i
  %90 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %gpios.i, align 8
  %call36.i = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %91, i32 noundef 4) #9
  %tobool37.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool37.not.i, label %if.end43.i, label %lor.lhs.false.i.do.end41.i_crit_edge

lor.lhs.false.i.do.end41.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41.i

do.end41.i:                                       ; preds = %lor.lhs.false.i.do.end41.i_crit_edge, %if.then31.i.do.end41.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end43.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %flags68.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags68.i.i, align 8
  %or.i = or i32 %93, 3145728
  store i32 %or.i, ptr %flags68.i.i, align 8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end43.i, %if.end29.i.if.end45.i_crit_edge
  %call47.i = tail call i32 @uart_add_one_port(ptr noundef nonnull @sci_uart_driver, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end13, label %if.then49.i

if.then49.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %dev63.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev63.i.i, align 8
  tail call void @__pm_runtime_disable(ptr noundef %95, i1 noundef zeroext true) #9
  br label %cleanup

sci_probe_single.exit:                            ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %call23.i to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end45.i
  %97 = ptrtoint ptr %fifosize70.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %fifosize70.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp14 = icmp ugt i32 %98, 1
  br i1 %cmp14, label %if.then15, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then15:                                        ; preds = %if.end13
  %call17 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_rx_fifo_trigger) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then15.if.end21_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end21:                                         ; preds = %if.then15.if.end21_crit_edge, %if.end13.if.end21_crit_edge
  %99 = ptrtoint ptr %type67.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %type67.i.i, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %100, label %if.end21.if.end43_crit_edge [
    i32 83, label %if.end21.if.then31_crit_edge
    i32 93, label %if.end21.if.then31_crit_edge91
    i32 104, label %if.end21.if.then31_crit_edge92
  ]

if.end21.if.then31_crit_edge92:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.end21.if.then31_crit_edge91:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.end21.if.then31_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.end21.if.end43_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then31:                                        ; preds = %if.end21.if.then31_crit_edge, %if.end21.if.then31_crit_edge91, %if.end21.if.then31_crit_edge92
  %call33 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_rx_fifo_timeout) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then31.if.end43_crit_edge, label %if.then35

if.then31.if.end43_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then35:                                        ; preds = %if.then31
  %102 = ptrtoint ptr %fifosize70.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %fifosize70.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %103)
  %cmp38 = icmp ugt i32 %103, 1
  br i1 %cmp38, label %if.then39, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_rx_fifo_trigger) #9
  br label %cleanup

if.end43:                                         ; preds = %if.then31.if.end43_crit_edge, %if.end21.if.end43_crit_edge
  %104 = load i32, ptr @sci_ports_in_use, align 4
  %or = or i32 %104, %shl.i
  store i32 %or, ptr @sci_ports_in_use, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then39, %if.then35.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %sci_probe_single.exit, %if.then49.i, %do.end41.i, %cond.end.i.i.cleanup_crit_edge, %if.end29.i.i.cleanup_crit_edge, %for.inc.5.i.i.cleanup_crit_edge, %if.end18.i.cleanup_crit_edge, %if.then16.i, %do.end9.i.cleanup_crit_edge, %do.end.i73, %do.end, %if.then3
  %retval.0 = phi i32 [ %12, %if.then3 ], [ 0, %if.end43 ], [ -22, %do.end ], [ %96, %sci_probe_single.exit ], [ %call17, %if.then15.cleanup_crit_edge ], [ %call33, %if.then39 ], [ %call33, %if.then35.cleanup_crit_edge ], [ -12, %if.end18.i.cleanup_crit_edge ], [ -6, %for.inc.5.i.i.cleanup_crit_edge ], [ -22, %if.end29.i.i.cleanup_crit_edge ], [ %call57.i.i, %cond.end.i.i.cleanup_crit_edge ], [ -16, %do.end9.i.cleanup_crit_edge ], [ %call.i, %if.then16.i ], [ %call47.i, %if.then49.i ], [ -22, %do.end41.i ], [ -22, %do.end.i73 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type2 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type2, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 8
  %shl = shl nuw i32 1, %5
  %neg = xor i32 %shl, -1
  %6 = load i32, ptr @sci_ports_in_use, align 4
  %and = and i32 %6, %neg
  store i32 %and, ptr @sci_ports_in_use, align 4
  %call5 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @sci_uart_driver, ptr noundef %1) #9
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 45
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void @__pm_runtime_disable(ptr noundef %8, i1 noundef zeroext true) #9
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp ugt i32 %10, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev7, ptr noundef nonnull @dev_attr_rx_fifo_trigger) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %3, label %if.end.if.end14_crit_edge [
    i32 83, label %if.end.if.then12_crit_edge
    i32 93, label %if.end.if.then12_crit_edge23
    i32 104, label %if.end.if.then12_crit_edge24
  ]

if.end.if.then12_crit_edge24:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.end.if.then12_crit_edge23:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.end.if.then12_crit_edge, %if.end.if.then12_crit_edge23, %if.end.if.then12_crit_edge24
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev13, ptr noundef nonnull @dev_attr_rx_fifo_timeout) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_reset_control_assert(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @reset_control_assert(ptr noundef %data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_to_gpiod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sci_probe_regmap(ptr nocapture noundef readonly %cfg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regtype1 = getelementptr inbounds %struct.plat_sci_port, ptr %cfg, i32 0, i32 4
  %0 = ptrtoint ptr %regtype1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regtype1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr [14 x %struct.sci_port_params], ptr @sci_port_params, i32 0, i32 %conv
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %3, label %do.end [
    i32 52, label %if.end.sw.epilog_crit_edge
    i32 54, label %sw.bb4
    i32 83, label %sw.bb5
    i32 93, label %sw.bb6
    i32 53, label %sw.bb7
    i32 104, label %sw.bb8
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %if.end.sw.epilog_crit_edge
  %regtype.0 = phi i32 [ 12, %sw.bb8 ], [ 7, %sw.bb7 ], [ 4, %sw.bb6 ], [ 3, %sw.bb5 ], [ 2, %sw.bb4 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %arrayidx9 = getelementptr [14 x %struct.sci_port_params], ptr @sci_port_params, i32 0, i32 %regtype.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %if.then
  %retval.0 = phi ptr [ %arrayidx, %if.then ], [ null, %do.end ], [ %arrayidx9, %sw.epilog ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sci_init_clocks(ptr nocapture noundef %sci_port, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %clk_names = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clk_names) #9
  %0 = call ptr @memcpy(ptr %clk_names, ptr @__const.sci_init_clocks.clk_names, i32 16)
  %cfg = getelementptr inbounds %struct.sci_port, ptr %sci_port, i32 0, i32 2
  %1 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cfg, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %4)
  %cmp = icmp eq i32 %4, 104
  br i1 %cmp, label %if.then, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %clk_names, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.112, ptr %arrayidx, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %for.body.preheader
  %i.084 = phi i32 [ %inc, %if.end44.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx2 = getelementptr [4 x ptr], ptr %clk_names, i32 0, i32 %i.084
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %call = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef %7) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end6.do.body26_crit_edge

if.end6.do.body26_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

land.lhs.true:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.084)
  %cmp7 = icmp eq i32 %i.084, 0
  br i1 %cmp7, label %if.then8, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then8:                                         ; preds = %land.lhs.true
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.113) #9
  %cmp.i71 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call9 to i32
  %call14 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %9, ptr noundef nonnull @.str.114, ptr noundef %7) #9
  br label %cleanup

if.end16:                                         ; preds = %if.then8
  %tobool17.not = icmp eq ptr %call9, null
  br i1 %tobool17.not, label %if.end16.do.body_crit_edge, label %if.end16.do.body26_crit_edge

if.end16.do.body26_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %if.end16.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_init_clocks.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_init_clocks, %if.then23)) #9
          to label %if.end44 [label %if.then23], !srcloc !323

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_init_clocks.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.114, ptr noundef %7) #9
  br label %if.end44

do.body26:                                        ; preds = %if.end16.do.body26_crit_edge, %if.end6.do.body26_crit_edge
  %clk.079 = phi ptr [ %call9, %if.end16.do.body26_crit_edge ], [ %call, %if.end6.do.body26_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_init_clocks.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_init_clocks, %if.then38)) #9
          to label %if.end44 [label %if.then38], !srcloc !323

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = tail call i32 @clk_get_rate(ptr noundef nonnull %clk.079) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_init_clocks.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.116, ptr noundef %7, ptr noundef nonnull %clk.079, i32 noundef %call40) #9
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %do.body26, %if.then23, %do.body
  %clk.074 = phi ptr [ %clk.079, %if.then38 ], [ null, %if.then23 ], [ null, %do.body ], [ %clk.079, %do.body26 ]
  %arrayidx45 = getelementptr %struct.sci_port, ptr %sci_port, i32 0, i32 6, i32 %i.084
  %10 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %clk.074, ptr %arrayidx45, align 4
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end44.cleanup_crit_edge, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end44.cleanup_crit_edge, %if.then11, %if.then4
  %retval.0 = phi i32 [ %8, %if.then4 ], [ %call14, %if.then11 ], [ 0, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clk_names) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_serial_in(ptr nocapture noundef readonly %p, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.sci_port, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 8
  %arrayidx = getelementptr [20 x %struct.plat_sci_reg], ptr %1, i32 0, i32 %offset
  %size = getelementptr [20 x %struct.plat_sci_reg], ptr %1, i32 0, i32 %offset, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %size, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %3, label %do.end [
    i8 8, label %if.then
    i8 16, label %if.then11
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %8 to i32
  %regshift = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 25
  %9 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regshift, align 1
  %conv4 = zext i8 %10 to i32
  %shl = shl i32 %conv3, %conv4
  %add.ptr = getelementptr i8, ptr %6, i32 %shl
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !325
  %conv6 = zext i8 %11 to i32
  br label %cleanup

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %membase12 = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %12 = ptrtoint ptr %membase12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase12, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %15 to i32
  %regshift15 = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 25
  %16 = ptrtoint ptr %regshift15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %regshift15, align 1
  %conv16 = zext i8 %17 to i32
  %shl17 = shl i32 %conv14, %conv16
  %add.ptr18 = getelementptr i8, ptr %13, i32 %shl17
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18) #9, !srcloc !326
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !327
  %conv20 = zext i16 %19 to i32
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 514, i32 noundef 9, ptr noundef nonnull @.str.117) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then11, %if.then
  %retval.0 = phi i32 [ %conv6, %if.then ], [ %conv20, %if.then11 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_serial_out(ptr nocapture noundef readonly %p, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.sci_port, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 8
  %arrayidx = getelementptr [20 x %struct.plat_sci_reg], ptr %1, i32 0, i32 %offset
  %size = getelementptr [20 x %struct.plat_sci_reg], ptr %1, i32 0, i32 %offset, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %size, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %3, label %do.end [
    i8 8, label %if.then
    i8 16, label %if.then10
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv2 = trunc i32 %value to i8
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %8 to i32
  %regshift = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 25
  %9 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regshift, align 1
  %conv5 = zext i8 %10 to i32
  %shl = shl i32 %conv4, %conv5
  %add.ptr = getelementptr i8, ptr %6, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv2) #9, !srcloc !329
  br label %if.end36

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv11 = trunc i32 %value to i16
  %membase12 = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %11 = ptrtoint ptr %membase12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase12, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %14 to i32
  %regshift15 = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 25
  %15 = ptrtoint ptr %regshift15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %regshift15, align 1
  %conv16 = zext i8 %16 to i32
  %shl17 = shl i32 %conv14, %conv16
  %add.ptr18 = getelementptr i8, ptr %12, i32 %shl17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !330
  tail call void @arm_heavy_mb() #9
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv11) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18, i16 %17) #9, !srcloc !331
  br label %if.end36

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 528, i32 noundef 9, ptr noundef nonnull @.str.117) #9
  br label %if.end36

if.end36:                                         ; preds = %do.end, %if.then10, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_tx_empty(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %1(ptr noundef %port, i32 noundef 3) #9
  %params.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params.i, align 8
  %size.i = getelementptr [20 x %struct.plat_sci_reg], ptr %3, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fifosize.i = getelementptr inbounds %struct.sci_port_params, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifosize.i, align 4
  %shl.i = shl i32 %7, 1
  %sub.i = add i32 %shl.i, -1
  %8 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial_in.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %port, i32 noundef 9) #9
  %and.i = and i32 %call.i.i, %sub.i
  br label %sci_txfill.exit

if.end.i:                                         ; preds = %entry
  %size8.i = getelementptr [20 x %struct.plat_sci_reg], ptr %3, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %size8.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %size8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not.i = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_in.i, align 4
  br i1 %tobool9.not.i, label %if.end12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i25.i = tail call i32 %13(ptr noundef %port, i32 noundef 5) #9
  %shr.i = ashr i32 %call.i25.i, 8
  br label %sci_txfill.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i27.i = tail call i32 %13(ptr noundef %port, i32 noundef 3) #9
  %and14.i = lshr i32 %call.i27.i, 7
  %and14.lobit.i = and i32 %and14.i, 1
  %14 = xor i32 %and14.lobit.i, 1
  br label %sci_txfill.exit

sci_txfill.exit:                                  ; preds = %if.end12.i, %if.then10.i, %if.then.i
  %retval.0.i = phi i32 [ %and.i, %if.then.i ], [ %shr.i, %if.then10.i ], [ %14, %if.end12.i ]
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %16)
  %cmp = icmp eq i32 %16, 52
  %cond = select i1 %cmp, i32 4, i32 64
  %and = and i32 %cond, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %conv2 = trunc i32 %retval.0.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2)
  %tobool5.not = icmp eq i16 %conv2, 0
  %narrow = select i1 %tobool.not, i1 %tobool5.not, i1 false
  %17 = zext i1 %narrow to i32
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_set_mctrl(ptr noundef %port, i32 noundef %mctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mctrl, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %params = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 8
  %size = getelementptr [20 x %struct.plat_sci_reg], ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %4 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %5(ptr noundef %port, i32 noundef 4) #9
  %or = or i32 %call.i, 1
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %6 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial_out.i, align 4
  tail call void %7(ptr noundef %port, i32 noundef 4, i32 noundef %or) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %gpios = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 5
  %8 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpios, align 8
  tail call void @mctrl_gpio_set(ptr noundef %9, i32 noundef %mctrl) #9
  %has_rtscts = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 30
  %10 = ptrtoint ptr %has_rtscts to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_rtscts, align 2, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %and9 = and i32 %mctrl, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %serial_in.i44 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %12 = ptrtoint ptr %serial_in.i44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_in.i44, align 4
  %call.i45 = tail call i32 %13(ptr noundef %port, i32 noundef 4) #9
  %and13 = and i32 %call.i45, -9
  %serial_out.i46 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %14 = ptrtoint ptr %serial_out.i46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serial_out.i46, align 4
  tail call void %15(ptr noundef %port, i32 noundef 4, i32 noundef %and13) #9
  %type.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %17, label %if.else11.i [
    i32 83, label %if.then11.if.then.i_crit_edge
    i32 93, label %if.then11.if.then.i_crit_edge73
  ]

if.then11.if.then.i_crit_edge73:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then11.if.then.i_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then11.if.then.i_crit_edge, %if.then11.if.then.i_crit_edge73
  %19 = ptrtoint ptr %serial_in.i44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serial_in.i44, align 4
  %call.i.i = tail call i32 %20(ptr noundef %port, i32 noundef 14) #9
  %conv7.i = and i32 %call.i.i, 65519
  %conv8.i = or i32 %conv7.i, 16
  %21 = ptrtoint ptr %serial_out.i46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial_out.i46, align 4
  tail call void %22(ptr noundef %port, i32 noundef 14, i32 noundef %conv8.i) #9
  %23 = ptrtoint ptr %serial_in.i44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serial_in.i44, align 4
  %call.i44.i = tail call i32 %24(ptr noundef %port, i32 noundef 13) #9
  %or10.i = or i32 %call.i44.i, 16
  %25 = ptrtoint ptr %serial_out.i46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %serial_out.i46, align 4
  tail call void %26(ptr noundef %port, i32 noundef 13, i32 noundef %or10.i) #9
  br label %cleanup

if.else11.i:                                      ; preds = %if.then11
  %params.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %27 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %params.i, align 8
  %size.i = getelementptr [20 x %struct.plat_sci_reg], ptr %28, i32 0, i32 11, i32 1
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool13.not.i = icmp eq i8 %30, 0
  br i1 %tobool13.not.i, label %if.else11.i.cleanup_crit_edge, label %if.then14.i

if.else11.i.cleanup_crit_edge:                    ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %serial_in.i44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %serial_in.i44, align 4
  %call.i47.i = tail call i32 %32(ptr noundef %port, i32 noundef 11) #9
  %conv25.i = and i32 %call.i47.i, 65471
  %conv27.i = or i32 %conv25.i, 64
  %33 = ptrtoint ptr %serial_out.i46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %serial_out.i46, align 4
  tail call void %34(ptr noundef %port, i32 noundef 11, i32 noundef %conv27.i) #9
  br label %cleanup

if.else:                                          ; preds = %if.end8
  %autorts = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 31
  %35 = ptrtoint ptr %autorts to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %autorts, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool14.not = icmp eq i8 %36, 0
  %type.i53 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %37 = ptrtoint ptr %type.i53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type.i53, align 4
  br i1 %tobool14.not, label %if.else24, label %if.then15

if.then15:                                        ; preds = %if.else
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %38, label %if.then15.if.end21_crit_edge [
    i32 83, label %if.then15.if.then18_crit_edge
    i32 93, label %if.then15.if.then18_crit_edge74
  ]

if.then15.if.then18_crit_edge74:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then15.if.then18_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %if.then15.if.then18_crit_edge, %if.then15.if.then18_crit_edge74
  %serial_in.i47 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %40 = ptrtoint ptr %serial_in.i47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %serial_in.i47, align 4
  %call.i48 = tail call i32 %41(ptr noundef %port, i32 noundef 13) #9
  %and20 = and i32 %call.i48, -17
  %serial_out.i49 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %42 = ptrtoint ptr %serial_out.i49 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %serial_out.i49, align 4
  tail call void %43(ptr noundef %port, i32 noundef 13, i32 noundef %and20) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then15.if.end21_crit_edge
  %serial_in.i50 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %44 = ptrtoint ptr %serial_in.i50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %serial_in.i50, align 4
  %call.i51 = tail call i32 %45(ptr noundef %port, i32 noundef 4) #9
  %or23 = or i32 %call.i51, 8
  %serial_out.i52 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %46 = ptrtoint ptr %serial_out.i52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %serial_out.i52, align 4
  tail call void %47(ptr noundef %port, i32 noundef 4, i32 noundef %or23) #9
  br label %cleanup

if.else24:                                        ; preds = %if.else
  %48 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %38, label %if.else11.i65 [
    i32 83, label %if.else24.if.then.i61_crit_edge
    i32 93, label %if.else24.if.then.i61_crit_edge75
  ]

if.else24.if.then.i61_crit_edge75:                ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i61

if.else24.if.then.i61_crit_edge:                  ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i61

if.then.i61:                                      ; preds = %if.else24.if.then.i61_crit_edge, %if.else24.if.then.i61_crit_edge75
  %serial_in.i.i54 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %49 = ptrtoint ptr %serial_in.i.i54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %serial_in.i.i54, align 4
  %call.i.i55 = tail call i32 %50(ptr noundef %port, i32 noundef 14) #9
  %and.i56 = and i32 %call.i.i55, 65519
  %serial_out.i.i58 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %51 = ptrtoint ptr %serial_out.i.i58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %serial_out.i.i58, align 4
  tail call void %52(ptr noundef %port, i32 noundef 14, i32 noundef %and.i56) #9
  %53 = ptrtoint ptr %serial_in.i.i54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %serial_in.i.i54, align 4
  %call.i44.i59 = tail call i32 %54(ptr noundef %port, i32 noundef 13) #9
  %or10.i60 = or i32 %call.i44.i59, 16
  %55 = ptrtoint ptr %serial_out.i.i58 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %serial_out.i.i58, align 4
  tail call void %56(ptr noundef %port, i32 noundef 13, i32 noundef %or10.i60) #9
  br label %cleanup

if.else11.i65:                                    ; preds = %if.else24
  %params.i62 = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %57 = ptrtoint ptr %params.i62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %params.i62, align 8
  %size.i63 = getelementptr [20 x %struct.plat_sci_reg], ptr %58, i32 0, i32 11, i32 1
  %59 = ptrtoint ptr %size.i63 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %size.i63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool13.not.i64 = icmp eq i8 %60, 0
  br i1 %tobool13.not.i64, label %if.else11.i65.cleanup_crit_edge, label %if.then14.i71

if.else11.i65.cleanup_crit_edge:                  ; preds = %if.else11.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14.i71:                                    ; preds = %if.else11.i65
  call void @__sanitizer_cov_trace_pc() #11
  %serial_in.i46.i66 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %61 = ptrtoint ptr %serial_in.i46.i66 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %serial_in.i46.i66, align 4
  %call.i47.i67 = tail call i32 %62(ptr noundef %port, i32 noundef 11) #9
  %and20.i68 = and i32 %call.i47.i67, 65471
  %serial_out.i48.i70 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %63 = ptrtoint ptr %serial_out.i48.i70 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %serial_out.i48.i70, align 4
  tail call void %64(ptr noundef %port, i32 noundef 11, i32 noundef %and20.i68) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14.i71, %if.else11.i65.cleanup_crit_edge, %if.then.i61, %if.end21, %if.then14.i, %if.else11.i.cleanup_crit_edge, %if.then.i, %if.end5.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_get_mctrl(ptr noundef %port) #2 align 64 {
entry:
  %mctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpios1 = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %gpios1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpios1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mctrl) #9
  %2 = ptrtoint ptr %mctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mctrl, align 4
  %call2 = call i32 @mctrl_gpio_get(ptr noundef %1, ptr noundef nonnull %mctrl) #9
  %autorts = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 31
  %3 = ptrtoint ptr %autorts to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %autorts, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %type.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %6, label %if.else.i [
    i32 83, label %if.then.sci_get_cts.exit_crit_edge
    i32 93, label %if.then.sci_get_cts.exit_crit_edge27
  ]

if.then.sci_get_cts.exit_crit_edge27:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_get_cts.exit

if.then.sci_get_cts.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_get_cts.exit

if.else.i:                                        ; preds = %if.then
  %params.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %8 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params.i, align 8
  %size.i = getelementptr [20 x %struct.plat_sci_reg], ptr %9, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not.i = icmp eq i8 %11, 0
  br i1 %tobool4.not.i, label %if.else.i.if.then4_crit_edge, label %if.else.i.sci_get_cts.exit_crit_edge

if.else.i.sci_get_cts.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_get_cts.exit

if.else.i.if.then4_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

sci_get_cts.exit:                                 ; preds = %if.else.i.sci_get_cts.exit_crit_edge, %if.then.sci_get_cts.exit_crit_edge, %if.then.sci_get_cts.exit_crit_edge27
  %.sink17.i = phi i32 [ 14, %if.then.sci_get_cts.exit_crit_edge ], [ 14, %if.then.sci_get_cts.exit_crit_edge27 ], [ 11, %if.else.i.sci_get_cts.exit_crit_edge ]
  %.sink.i = phi i32 [ 8, %if.then.sci_get_cts.exit_crit_edge ], [ 8, %if.then.sci_get_cts.exit_crit_edge27 ], [ 16, %if.else.i.sci_get_cts.exit_crit_edge ]
  %serial_in.i15.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %12 = ptrtoint ptr %serial_in.i15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_in.i15.i, align 4
  %call.i16.i = call i32 %13(ptr noundef %port, i32 noundef %.sink17.i) #9
  %and7.i = and i32 %call.i16.i, %.sink.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %sci_get_cts.exit.if.then4_crit_edge, label %sci_get_cts.exit.if.end10_crit_edge

sci_get_cts.exit.if.end10_crit_edge:              ; preds = %sci_get_cts.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

sci_get_cts.exit.if.then4_crit_edge:              ; preds = %sci_get_cts.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %sci_get_cts.exit.if.then4_crit_edge, %if.else.i.if.then4_crit_edge
  %14 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mctrl, align 4
  %or = or i32 %15, 32
  store i32 %or, ptr %mctrl, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  %call5 = call ptr @mctrl_gpio_to_gpiod(ptr noundef %1, i32 noundef 0) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mctrl, align 4
  %or8 = or i32 %17, 32
  store i32 %or8, ptr %mctrl, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.else.if.end10_crit_edge, %if.then4, %sci_get_cts.exit.if.end10_crit_edge
  %call11 = call ptr @mctrl_gpio_to_gpiod(ptr noundef %1, i32 noundef 1) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mctrl, align 4
  %or14 = or i32 %19, 256
  store i32 %or14, ptr %mctrl, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %call16 = call ptr @mctrl_gpio_to_gpiod(ptr noundef %1, i32 noundef 2) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mctrl, align 4
  %or19 = or i32 %21, 64
  store i32 %or19, ptr %mctrl, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  %22 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mctrl, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mctrl) #9
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_stop_tx(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %1(ptr noundef %port, i32 noundef 2) #9
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 83, label %entry.if.then_crit_edge
    i32 93, label %entry.if.then_crit_edge32
  ]

entry.if.then_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge32
  %and = and i32 %call.i, 32767
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctrl.0 = phi i32 [ %and, %if.then ], [ %call.i, %entry.if.end_crit_edge ]
  %conv9 = and i32 %ctrl.0, 65407
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %5 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serial_out.i, align 4
  tail call void %6(ptr noundef %port, i32 noundef 2, i32 noundef %conv9) #9
  %chan_tx = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 10
  %7 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan_tx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.if.end21_crit_edge, label %land.lhs.true

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %cookie_tx = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 14
  %9 = ptrtoint ptr %cookie_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cookie_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool14.not = icmp sgt i32 %10, -1
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then15:                                        ; preds = %land.lhs.true
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 47
  %13 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then15.dmaengine_terminate_async.exit_crit_edge, label %if.then.i

if.then15.dmaengine_terminate_async.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_async.exit

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i31 = tail call i32 %14(ptr noundef nonnull %8) #9
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i, %if.then15.dmaengine_terminate_async.exit_crit_edge
  %15 = ptrtoint ptr %cookie_tx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -22, ptr %cookie_tx, align 4
  br label %if.end21

if.end21:                                         ; preds = %dmaengine_terminate_async.exit, %land.lhs.true.if.end21_crit_edge, %if.end.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_start_tx(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %1, label %entry.if.end16_crit_edge [
    i32 83, label %entry.if.then_crit_edge
    i32 93, label %entry.if.then_crit_edge71
  ]

entry.if.then_crit_edge71:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge71
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %3 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %4(ptr noundef %port, i32 noundef 2) #9
  %chan_tx = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 10
  %5 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan_tx, align 4
  %tobool.not = icmp eq ptr %6, null
  %conv5 = and i32 %call.i, 32767
  %or = or i32 %conv5, 32768
  %new.0 = select i1 %tobool.not, i32 %conv5, i32 %or
  %conv10 = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %new.0, i32 %conv10)
  %cmp11.not = icmp eq i32 %new.0, %conv10
  br i1 %cmp11.not, label %if.then.if.end16_crit_edge, label %if.then13

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %7 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial_out.i, align 4
  tail call void %8(ptr noundef %port, i32 noundef 2, i32 noundef %new.0) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %chan_tx17 = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 10
  %9 = ptrtoint ptr %chan_tx17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan_tx17, align 4
  %tobool18.not = icmp eq ptr %10, null
  br i1 %tobool18.not, label %if.end16.if.then42_crit_edge, label %land.lhs.true

if.end16.if.then42_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

land.lhs.true:                                    ; preds = %if.end16
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %12, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %12, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp23 = icmp eq i32 %14, %16
  br i1 %cmp23, label %land.lhs.true.if.end31_crit_edge, label %land.lhs.true25

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true25:                                  ; preds = %land.lhs.true
  %cookie_tx = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 14
  %17 = ptrtoint ptr %cookie_tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cookie_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool27.not = icmp sgt i32 %18, -1
  br i1 %tobool27.not, label %land.lhs.true25.if.end31_crit_edge, label %if.then28

land.lhs.true25.if.end31_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %cookie_tx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cookie_tx, align 4
  %work_tx = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work_tx) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %land.lhs.true25.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge
  %21 = ptrtoint ptr %chan_tx17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load ptr, ptr %chan_tx17, align 4
  %tobool33.not = icmp eq ptr %.pr, null
  br i1 %tobool33.not, label %if.end31.if.then42_crit_edge, label %lor.lhs.false34

if.end31.if.then42_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

lor.lhs.false34:                                  ; preds = %if.end31
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %23, label %lor.lhs.false34.if.end47_crit_edge [
    i32 83, label %lor.lhs.false34.if.then42_crit_edge
    i32 93, label %lor.lhs.false34.if.then42_crit_edge72
  ]

lor.lhs.false34.if.then42_crit_edge72:            ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

lor.lhs.false34.if.then42_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

lor.lhs.false34.if.end47_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then42:                                        ; preds = %lor.lhs.false34.if.then42_crit_edge, %lor.lhs.false34.if.then42_crit_edge72, %if.end31.if.then42_crit_edge, %if.end16.if.then42_crit_edge
  %serial_in.i67 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %25 = ptrtoint ptr %serial_in.i67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %serial_in.i67, align 4
  %call.i68 = tail call i32 %26(ptr noundef %port, i32 noundef 2) #9
  %conv45 = and i32 %call.i68, 65407
  %or46 = or i32 %conv45, 128
  %serial_out.i69 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %27 = ptrtoint ptr %serial_out.i69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %serial_out.i69, align 4
  tail call void %28(ptr noundef %port, i32 noundef 2, i32 noundef %or46) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %lor.lhs.false34.if.end47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_stop_rx(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %1(ptr noundef %port, i32 noundef 2) #9
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 83, label %entry.if.then_crit_edge
    i32 93, label %entry.if.then_crit_edge18
  ]

entry.if.then_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge18
  %and = and i32 %call.i, 49151
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctrl.0 = phi i32 [ %and, %if.then ], [ %call.i, %entry.if.end_crit_edge ]
  %cfg.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg.i, align 4
  %scscr.i = getelementptr inbounds %struct.plat_sci_port, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %scscr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scscr.i, align 4
  %and.i = and i32 %8, 8
  %neg = xor i32 %and.i, 65471
  %and9 = and i32 %neg, %ctrl.0
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %9 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial_out.i, align 4
  tail call void %10(ptr noundef %port, i32 noundef 2, i32 noundef %and9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_enable_ms(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpios = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpios, align 8
  tail call void @mctrl_gpio_enable_ms(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_break_ctl(ptr noundef %port, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 8
  %size = getelementptr [20 x %struct.plat_sci_reg], ptr %1, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %4 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %5(ptr noundef %port, i32 noundef 11) #9
  %6 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial_in.i, align 4
  %call.i42 = tail call i32 %7(ptr noundef %port, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp10 = icmp eq i32 %break_state, -1
  %conv13 = and i32 %call.i, 65532
  %and16 = and i32 %call.i42, 65503
  %conv24 = or i32 %call.i42, 32
  %scsptr.0.v = select i1 %cmp10, i32 2, i32 1
  %scsptr.0 = or i32 %conv13, %scsptr.0.v
  %scscr.0 = select i1 %cmp10, i32 %and16, i32 %conv24
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %8 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial_out.i, align 4
  tail call void %9(ptr noundef %port, i32 noundef 11, i32 noundef %scsptr.0) #9
  %conv27 = and i32 %scscr.0, 65535
  %10 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serial_out.i, align 4
  tail call void %11(ptr noundef %port, i32 noundef 2, i32 noundef %conv27) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_startup(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_startup.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_startup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !323

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_startup.__UNIQUE_ID_ddebug267, ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @sci_request_dma(ptr noundef %port)
  %irqs11.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 8
  %arrayidx14.i = getelementptr %struct.sci_port, ptr %port, i32 0, i32 8, i32 1
  %irq22.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %irqflags.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 21
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc54.i.for.cond2.preheader.i_crit_edge, %do.end
  %j.0135.i = phi i32 [ 0, %do.end ], [ %inc56.i, %for.inc54.i.for.cond2.preheader.i_crit_edge ]
  %i.0134.i = phi i32 [ 0, %do.end ], [ %inc55.i, %for.inc54.i.for.cond2.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0134.i)
  %cmp3132.i = icmp sgt i32 %i.0134.i, 0
  br i1 %cmp3132.i, label %for.body4.lr.ph.i, label %for.cond2.preheader.i.for.end.i_crit_edge

for.cond2.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %arrayidx6.i = getelementptr %struct.sci_port, ptr %port, i32 0, i32 8, i32 %i.0134.i
  %4 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6.i, align 4
  %add.i = add nuw nsw i32 %i.0134.i, 1
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %w.0133.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i, %for.body4.i.for.body4.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sci_port, ptr %port, i32 0, i32 8, i32 %w.0133.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp7.i = icmp eq i32 %7, %5
  %spec.select.i = select i1 %cmp7.i, i32 %add.i, i32 %w.0133.i
  %inc.i = add i32 %spec.select.i, 1
  %cmp3.i = icmp slt i32 %inc.i, %i.0134.i
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.for.end.i_crit_edge

for.body4.i.for.end.i_crit_edge:                  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4.i

for.end.i:                                        ; preds = %for.body4.i.for.end.i_crit_edge, %for.cond2.preheader.i.for.end.i_crit_edge
  %w.0.lcssa.i = phi i32 [ 0, %for.cond2.preheader.i.for.end.i_crit_edge ], [ %inc.i, %for.body4.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %w.0.lcssa.i, i32 %i.0134.i)
  %cmp8.i = icmp sgt i32 %w.0.lcssa.i, %i.0134.i
  br i1 %cmp8.i, label %for.end.i.for.inc54.i_crit_edge, label %if.end10.i

for.end.i.for.inc54.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc54.i

if.end10.i:                                       ; preds = %for.end.i
  %8 = ptrtoint ptr %irqs11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irqs11.i, align 4
  %10 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp15.i = icmp eq i32 %9, %11
  br i1 %cmp15.i, label %if.end10.i.if.then21.i_crit_edge, label %lor.lhs.false.i

if.end10.i.if.then21.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20.i = icmp slt i32 %11, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp20.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then21.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false.i.if.then21.i_crit_edge, %if.end10.i.if.then21.i_crit_edge
  %12 = ptrtoint ptr %irq22.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq22.i, align 4
  br label %if.end30.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %arrayidx24.i = getelementptr %struct.sci_port, ptr %port, i32 0, i32 8, i32 %i.0134.i
  %14 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp25.i = icmp slt i32 %15, 0
  br i1 %cmp25.i, label %if.else.i.for.inc54.i_crit_edge, label %if.else.i.if.end30.i_crit_edge, !prof !321

if.else.i.if.end30.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.else.i.for.inc54.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc54.i

if.end30.i:                                       ; preds = %if.else.i.if.end30.i_crit_edge, %if.then21.i
  %i.1.i = phi i32 [ 6, %if.then21.i ], [ %i.0134.i, %if.else.i.if.end30.i_crit_edge ]
  %irq.0.i = phi i32 [ %13, %if.then21.i ], [ %15, %if.else.i.if.end30.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.sci_irq_desc, ptr @sci_irq_desc, i32 %i.1.i
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end30.i.dev_name.exit.i_crit_edge

if.end30.i.dev_name.exit.i_crit_edge:             ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end30.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %if.end30.i.dev_name.exit.i_crit_edge ]
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %call32.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.68, ptr noundef %retval.0.i.i, ptr noundef %23) #9
  %arrayidx33.i = getelementptr %struct.sci_port, ptr %port, i32 0, i32 9, i32 %j.0135.i
  %24 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call32.i, ptr %arrayidx33.i, align 4
  %tobool36.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool36.not.i, label %dev_name.exit.i.out_nomem.i_crit_edge, label %if.end38.i

dev_name.exit.i.out_nomem.i_crit_edge:            ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_nomem.i

if.end38.i:                                       ; preds = %dev_name.exit.i
  %handler.i = getelementptr %struct.sci_irq_desc, ptr @sci_irq_desc, i32 %i.1.i, i32 1
  %25 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handler.i, align 4
  %27 = ptrtoint ptr %irqflags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irqflags.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %irq.0.i, ptr noundef %26, ptr noundef null, i32 noundef %28, ptr noundef nonnull %call32.i, ptr noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool42.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool42.not.i, label %if.end38.i.for.inc54.i_crit_edge, label %cleanup.i, !prof !332

if.end38.i.for.inc54.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc54.i

cleanup.i:                                        ; preds = %if.end38.i
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.69, ptr noundef %23) #13
  %dec137.i = add i32 %i.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec137.i)
  %cmp58138.i = icmp sgt i32 %dec137.i, -1
  br i1 %cmp58138.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.out_nomem.i_crit_edge

cleanup.i.out_nomem.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_nomem.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  br label %while.body.i

for.inc54.i:                                      ; preds = %if.end38.i.for.inc54.i_crit_edge, %if.else.i.for.inc54.i_crit_edge, %for.end.i.for.inc54.i_crit_edge
  %i.2.ph.i = phi i32 [ %i.1.i, %if.end38.i.for.inc54.i_crit_edge ], [ %i.0134.i, %if.else.i.for.inc54.i_crit_edge ], [ %i.0134.i, %for.end.i.for.inc54.i_crit_edge ]
  %inc55.i = add i32 %i.2.ph.i, 1
  %inc56.i = add i32 %j.0135.i, 1
  %cmp.i = icmp slt i32 %inc55.i, 6
  br i1 %cmp.i, label %for.inc54.i.for.cond2.preheader.i_crit_edge, label %for.inc54.i.cleanup_crit_edge

for.inc54.i.cleanup_crit_edge:                    ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc54.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %cleanup.i.while.body.i_crit_edge
  %dec139.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %dec137.i, %cleanup.i.while.body.i_crit_edge ]
  %arrayidx60.i = getelementptr %struct.sci_port, ptr %port, i32 0, i32 8, i32 %dec139.i
  %31 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx60.i, align 4
  %call61.i = tail call ptr @free_irq(i32 noundef %32, ptr noundef %port) #9
  %dec.i = add nsw i32 %dec139.i, -1
  %cmp58.i.not = icmp eq i32 %dec139.i, 0
  br i1 %cmp58.i.not, label %while.body.i.out_nomem.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.out_nomem.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_nomem.i

out_nomem.i:                                      ; preds = %while.body.i.out_nomem.i_crit_edge, %cleanup.i.out_nomem.i_crit_edge, %dev_name.exit.i.out_nomem.i_crit_edge
  %ret.1123.i = phi i32 [ %call.i.i, %cleanup.i.out_nomem.i_crit_edge ], [ %call.i.i, %while.body.i.out_nomem.i_crit_edge ], [ -12, %dev_name.exit.i.out_nomem.i_crit_edge ]
  %dec63140.i = add i32 %j.0135.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec63140.i)
  %cmp64141.i = icmp sgt i32 %dec63140.i, -1
  br i1 %cmp64141.i, label %out_nomem.i.while.body65.i_crit_edge, label %out_nomem.i.sci_request_irq.exit_crit_edge

out_nomem.i.sci_request_irq.exit_crit_edge:       ; preds = %out_nomem.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_request_irq.exit

out_nomem.i.while.body65.i_crit_edge:             ; preds = %out_nomem.i
  br label %while.body65.i

while.body65.i:                                   ; preds = %while.body65.i.while.body65.i_crit_edge, %out_nomem.i.while.body65.i_crit_edge
  %dec63142.i = phi i32 [ %dec63.i, %while.body65.i.while.body65.i_crit_edge ], [ %dec63140.i, %out_nomem.i.while.body65.i_crit_edge ]
  %arrayidx67.i = getelementptr %struct.sci_port, ptr %port, i32 0, i32 9, i32 %dec63142.i
  %33 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx67.i, align 4
  tail call void @kfree(ptr noundef %34) #9
  %dec63.i = add nsw i32 %dec63142.i, -1
  %cmp64.i.not = icmp eq i32 %dec63142.i, 0
  br i1 %cmp64.i.not, label %while.body65.i.sci_request_irq.exit_crit_edge, label %while.body65.i.while.body65.i_crit_edge

while.body65.i.while.body65.i_crit_edge:          ; preds = %while.body65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body65.i

while.body65.i.sci_request_irq.exit_crit_edge:    ; preds = %while.body65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_request_irq.exit

sci_request_irq.exit:                             ; preds = %while.body65.i.sci_request_irq.exit_crit_edge, %out_nomem.i.sci_request_irq.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1123.i)
  %cmp = icmp slt i32 %ret.1123.i, 0
  br i1 %cmp, label %if.then11, label %sci_request_irq.exit.cleanup_crit_edge, !prof !321

sci_request_irq.exit.cleanup_crit_edge:           ; preds = %sci_request_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %sci_request_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sci_free_dma(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %sci_request_irq.exit.cleanup_crit_edge, %for.inc54.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1123.i, %if.then11 ], [ 0, %sci_request_irq.exit.cleanup_crit_edge ], [ 0, %for.inc54.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_shutdown.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_shutdown, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !323

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_shutdown.__UNIQUE_ID_ddebug268, ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.82, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %autorts = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 31
  %4 = ptrtoint ptr %autorts to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %autorts, align 1
  %gpios = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 5
  %5 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpios, align 8
  tail call void @mctrl_gpio_disable_ms(ptr noundef %6) #9
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %7 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %port, i32 noundef 2) #9
  %type.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %10, label %do.end.sci_stop_rx.exit_crit_edge [
    i32 83, label %do.end.if.then.i_crit_edge
    i32 93, label %do.end.if.then.i_crit_edge80
  ]

do.end.if.then.i_crit_edge80:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

do.end.if.then.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

do.end.sci_stop_rx.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_stop_rx.exit

if.then.i:                                        ; preds = %do.end.if.then.i_crit_edge, %do.end.if.then.i_crit_edge80
  %and.i = and i32 %call.i.i, 49151
  br label %sci_stop_rx.exit

sci_stop_rx.exit:                                 ; preds = %if.then.i, %do.end.sci_stop_rx.exit_crit_edge
  %ctrl.0.i = phi i32 [ %and.i, %if.then.i ], [ %call.i.i, %do.end.sci_stop_rx.exit_crit_edge ]
  %cfg.i.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 2
  %12 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i.i, align 4
  %scscr.i.i = getelementptr inbounds %struct.plat_sci_port, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %scscr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scscr.i.i, align 4
  %and.i.i = and i32 %15, 8
  %neg.i = xor i32 %and.i.i, 65471
  %and9.i = and i32 %neg.i, %ctrl.0.i
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %16 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %17(ptr noundef %port, i32 noundef 2, i32 noundef %and9.i) #9
  %18 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i71 = tail call i32 %19(ptr noundef %port, i32 noundef 2) #9
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %21, label %sci_stop_rx.exit.if.end.i_crit_edge [
    i32 83, label %sci_stop_rx.exit.if.then.i74_crit_edge
    i32 93, label %sci_stop_rx.exit.if.then.i74_crit_edge81
  ]

sci_stop_rx.exit.if.then.i74_crit_edge81:         ; preds = %sci_stop_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i74

sci_stop_rx.exit.if.then.i74_crit_edge:           ; preds = %sci_stop_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i74

sci_stop_rx.exit.if.end.i_crit_edge:              ; preds = %sci_stop_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i74:                                      ; preds = %sci_stop_rx.exit.if.then.i74_crit_edge, %sci_stop_rx.exit.if.then.i74_crit_edge81
  %and.i73 = and i32 %call.i.i71, 32767
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i74, %sci_stop_rx.exit.if.end.i_crit_edge
  %ctrl.0.i75 = phi i32 [ %and.i73, %if.then.i74 ], [ %call.i.i71, %sci_stop_rx.exit.if.end.i_crit_edge ]
  %conv9.i = and i32 %ctrl.0.i75, 65407
  %23 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %24(ptr noundef %port, i32 noundef 2, i32 noundef %conv9.i) #9
  %chan_tx.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 10
  %25 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan_tx.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.i.sci_stop_tx.exit_crit_edge, label %land.lhs.true.i

if.end.i.sci_stop_tx.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_stop_tx.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %cookie_tx.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 14
  %27 = ptrtoint ptr %cookie_tx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cookie_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool14.not.i = icmp sgt i32 %28, -1
  br i1 %tobool14.not.i, label %if.then15.i, label %land.lhs.true.i.sci_stop_tx.exit_crit_edge

land.lhs.true.i.sci_stop_tx.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_stop_tx.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 47
  %31 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.then15.i.dmaengine_terminate_async.exit.i_crit_edge, label %if.then.i.i

if.then15.i.dmaengine_terminate_async.exit.i_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_async.exit.i

if.then.i.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i31.i = tail call i32 %32(ptr noundef nonnull %26) #9
  br label %dmaengine_terminate_async.exit.i

dmaengine_terminate_async.exit.i:                 ; preds = %if.then.i.i, %if.then15.i.dmaengine_terminate_async.exit.i_crit_edge
  %33 = ptrtoint ptr %cookie_tx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -22, ptr %cookie_tx.i, align 4
  br label %sci_stop_tx.exit

sci_stop_tx.exit:                                 ; preds = %dmaengine_terminate_async.exit.i, %land.lhs.true.i.sci_stop_tx.exit_crit_edge, %if.end.i.sci_stop_tx.exit_crit_edge
  %34 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %serial_in.i.i, align 4
  %call.i = tail call i32 %35(ptr noundef %port, i32 noundef 2) #9
  %hscif_tot = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 29
  %36 = ptrtoint ptr %hscif_tot to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hscif_tot, align 8
  %38 = or i16 %37, 3
  %or = zext i16 %38 to i32
  %and = and i32 %call.i, %or
  %39 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %40(ptr noundef %port, i32 noundef 2, i32 noundef %and) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call9) #9
  %chan_rx_saved = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 13
  %41 = ptrtoint ptr %chan_rx_saved to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chan_rx_saved, align 8
  %tobool19.not = icmp eq ptr %42, null
  br i1 %tobool19.not, label %sci_stop_tx.exit.if.end40_crit_edge, label %do.body21

sci_stop_tx.exit.if.end40_crit_edge:              ; preds = %sci_stop_tx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

do.body21:                                        ; preds = %sci_stop_tx.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_shutdown.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_shutdown, %if.then33)) #9
          to label %do.end38 [label %if.then33], !srcloc !323

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %dev34 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %43 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev34, align 4
  %line35 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %45 = ptrtoint ptr %line35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %line35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_shutdown.__UNIQUE_ID_ddebug269, ptr noundef %44, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, i32 noundef %46) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %do.body21
  %rx_timer = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 23
  %call39 = tail call i32 @hrtimer_cancel(ptr noundef %rx_timer) #9
  br label %if.end40

if.end40:                                         ; preds = %do.end38, %sci_stop_tx.exit.if.end40_crit_edge
  %rx_trigger = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 26
  %47 = ptrtoint ptr %rx_trigger to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_trigger, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp41 = icmp sgt i32 %48, 1
  br i1 %cmp41, label %land.lhs.true, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end40
  %rx_fifo_timeout = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 28
  %49 = ptrtoint ptr %rx_fifo_timeout to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_fifo_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp43 = icmp sgt i32 %50, 0
  br i1 %cmp43, label %if.then45, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %rx_fifo_timer = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 27
  %call46 = tail call i32 @del_timer_sync(ptr noundef %rx_fifo_timer) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %land.lhs.true.if.end47_crit_edge, %if.end40.if.end47_crit_edge
  %irqs.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 8
  %arrayidx20.i = getelementptr %struct.sci_port, ptr %port, i32 0, i32 8, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %if.end47
  %i.062.i = phi i32 [ 0, %if.end47 ], [ %i.062.i.be, %for.body.i.backedge ]
  %arrayidx.i = getelementptr %struct.sci_port, ptr %port, i32 0, i32 8, i32 %i.062.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp1.i = icmp slt i32 %52, 0
  br i1 %cmp1.i, label %for.body.i.for.inc30.i_crit_edge, label %for.cond3.preheader.i, !prof !321

for.body.i.for.inc30.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = add nuw nsw i32 %i.062.i, 1
  br label %for.inc30.i

for.cond3.preheader.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.062.i)
  %cmp460.not.i = icmp eq i32 %i.062.i, 0
  br i1 %cmp460.not.i, label %for.cond3.preheader.i.if.end13.i_crit_edge, label %for.body5.lr.ph.i

for.cond3.preheader.i.if.end13.i_crit_edge:       ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

for.body5.lr.ph.i:                                ; preds = %for.cond3.preheader.i
  %add.i = add nuw nsw i32 %i.062.i, 1
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %j.061.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %inc.i, %for.body5.i.for.body5.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.sci_port, ptr %port, i32 0, i32 8, i32 %j.061.i
  %53 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %52)
  %cmp8.i = icmp eq i32 %54, %52
  %spec.select.i = select i1 %cmp8.i, i32 %add.i, i32 %j.061.i
  %inc.i = add i32 %spec.select.i, 1
  %cmp4.i = icmp slt i32 %inc.i, %i.062.i
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.end.i

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

for.end.i:                                        ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %i.062.i)
  %cmp11.i = icmp sgt i32 %inc.i, %i.062.i
  br i1 %cmp11.i, label %for.end.i.for.inc30.i_crit_edge, label %for.end.i.if.end13.i_crit_edge

for.end.i.if.end13.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

for.end.i.for.inc30.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.i

if.end13.i:                                       ; preds = %for.end.i.if.end13.i_crit_edge, %for.cond3.preheader.i.if.end13.i_crit_edge
  %call.i77 = tail call ptr @free_irq(i32 noundef %52, ptr noundef %port) #9
  %arrayidx16.i = getelementptr %struct.sci_port, ptr %port, i32 0, i32 9, i32 %i.062.i
  %55 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx16.i, align 4
  tail call void @kfree(ptr noundef %56) #9
  %57 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irqs.i, align 4
  %59 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp21.i = icmp eq i32 %58, %60
  br i1 %cmp21.i, label %if.end13.i.sci_free_irq.exit_crit_edge, label %lor.lhs.false.i

if.end13.i.sci_free_irq.exit_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_free_irq.exit

lor.lhs.false.i:                                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool24.not.i = icmp ne i32 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp27.i = icmp slt i32 %60, 0
  %or.cond.i = select i1 %tobool24.not.i, i1 %cmp27.i, i1 false
  %inc31.i = add nuw nsw i32 %i.062.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc31.i)
  %exitcond.not.i = icmp eq i32 %inc31.i, 6
  %or.cond66.i = select i1 %or.cond.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond66.i, label %lor.lhs.false.i.sci_free_irq.exit_crit_edge, label %lor.lhs.false.i.for.body.i.backedge_crit_edge

lor.lhs.false.i.for.body.i.backedge_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.backedge

lor.lhs.false.i.sci_free_irq.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_free_irq.exit

for.body.i.backedge:                              ; preds = %for.inc30.i.for.body.i.backedge_crit_edge, %lor.lhs.false.i.for.body.i.backedge_crit_edge
  %i.062.i.be = phi i32 [ %inc31.old.i.pre-phi, %for.inc30.i.for.body.i.backedge_crit_edge ], [ %inc31.i, %lor.lhs.false.i.for.body.i.backedge_crit_edge ]
  br label %for.body.i

for.inc30.i:                                      ; preds = %for.end.i.for.inc30.i_crit_edge, %for.body.i.for.inc30.i_crit_edge
  %inc31.old.i.pre-phi = phi i32 [ %.pre, %for.body.i.for.inc30.i_crit_edge ], [ %add.i, %for.end.i.for.inc30.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc31.old.i.pre-phi)
  %exitcond.not.old.i = icmp eq i32 %inc31.old.i.pre-phi, 6
  br i1 %exitcond.not.old.i, label %for.inc30.i.sci_free_irq.exit_crit_edge, label %for.inc30.i.for.body.i.backedge_crit_edge

for.inc30.i.for.body.i.backedge_crit_edge:        ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.backedge

for.inc30.i.sci_free_irq.exit_crit_edge:          ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_free_irq.exit

sci_free_irq.exit:                                ; preds = %for.inc30.i.sci_free_irq.exit_crit_edge, %lor.lhs.false.i.sci_free_irq.exit_crit_edge, %if.end13.i.sci_free_irq.exit_crit_edge
  tail call fastcc void @sci_free_dma(ptr noundef %port)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_flush_buffer(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dma_len = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 18
  %0 = ptrtoint ptr %tx_dma_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tx_dma_len, align 8
  %chan_tx = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 10
  %1 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan_tx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.dmaengine_terminate_async.exit_crit_edge, label %if.then.i

if.then.dmaengine_terminate_async.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_async.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %6(ptr noundef nonnull %2) #9
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i, %if.then.dmaengine_terminate_async.exit_crit_edge
  %cookie_tx = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 14
  %7 = ptrtoint ptr %cookie_tx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -22, ptr %cookie_tx, align 4
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_async.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  %brr1 = alloca i32, align 4
  %cks1 = alloca i32, align 4
  %srr1 = alloca i32, align 4
  %dl1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %brr1) #9
  %0 = ptrtoint ptr %brr1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 255, ptr %brr1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cks1) #9
  %1 = ptrtoint ptr %cks1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cks1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srr1) #9
  %2 = ptrtoint ptr %srr1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 15, ptr %srr1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dl1) #9
  %3 = ptrtoint ptr %dl1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dl1, align 4
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %and = and i32 %5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and)
  %cmp = icmp eq i32 %and, 32
  %spec.select = select i1 %cmp, i32 64, i32 0
  %and2 = lshr i32 %5, 3
  %6 = and i32 %and2, 32
  %and7 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %smr_val.2.v = select i1 %tobool8.not, i32 %6, i32 48
  %7 = and i32 %and2, 8
  %smr_val.2 = or i32 %smr_val.2.v, %7
  %8 = or i32 %smr_val.2, %spec.select
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %9 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool18.not = icmp eq i32 %10, 0
  br i1 %tobool18.not, label %if.then19, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.sci_port, ptr %port, i32 0, i32 7, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.sci_port, ptr %port, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %12, i32 %14)
  %arrayidx.2 = getelementptr %struct.sci_port, ptr %port, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.2, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %15, i32 %17)
  %arrayidx.3 = getelementptr %struct.sci_port, ptr %port, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.3, align 4
  %21 = tail call i32 @llvm.umax.i32(i32 %18, i32 %20)
  %sampling_rate_mask = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 3
  %22 = ptrtoint ptr %sampling_rate_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sampling_rate_mask, align 8
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true), !range !320
  %25 = add nuw nsw i32 %24, 1
  %div = udiv i32 %21, %25
  %call24 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef %div) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.body.preheader.do.body184.critedge_crit_edge, label %if.end27

for.body.preheader.do.body184.critedge_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body184.critedge

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef 115200) #9
  br label %do.body184.critedge

if.end27:                                         ; preds = %for.body.preheader
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool30.not = icmp eq i32 %27, 0
  br i1 %tobool30.not, label %if.end27.if.end57_crit_edge, label %land.lhs.true

if.end27.if.end57_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end27
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %29, label %if.then35 [
    i32 83, label %land.lhs.true.if.end57_crit_edge
    i32 93, label %land.lhs.true.if.end57_crit_edge701
  ]

land.lhs.true.if.end57_crit_edge701:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then35:                                        ; preds = %land.lhs.true
  %call36 = call fastcc i32 @sci_sck_calc(ptr noundef %port, i32 noundef %call24, ptr noundef nonnull %srr1)
  %31 = tail call i32 @llvm.abs.i32(i32 %call36, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %31)
  %cmp51.not = icmp eq i32 %31, 2147483647
  br i1 %cmp51.not, label %if.then35.if.end57_crit_edge, label %if.then52

if.then35.if.end57_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then52:                                        ; preds = %if.then35
  %32 = ptrtoint ptr %srr1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %srr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool53.not = icmp eq i32 %call36, 0
  br i1 %tobool53.not, label %if.then52.do.body_crit_edge, label %if.then52.if.end57_crit_edge

if.then52.if.end57_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then52.do.body_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end57:                                         ; preds = %if.then52.if.end57_crit_edge, %if.then35.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge701, %if.end27.if.end57_crit_edge
  %best_clk.0 = phi i32 [ 1, %if.then52.if.end57_crit_edge ], [ -1, %if.then35.if.end57_crit_edge ], [ -1, %land.lhs.true.if.end57_crit_edge ], [ -1, %if.end27.if.end57_crit_edge ], [ -1, %land.lhs.true.if.end57_crit_edge701 ]
  %min_err.0 = phi i32 [ %call36, %if.then52.if.end57_crit_edge ], [ 2147483647, %if.then35.if.end57_crit_edge ], [ 2147483647, %land.lhs.true.if.end57_crit_edge ], [ 2147483647, %if.end27.if.end57_crit_edge ], [ 2147483647, %land.lhs.true.if.end57_crit_edge701 ]
  %sccks.0 = phi i32 [ 32768, %if.then52.if.end57_crit_edge ], [ 0, %if.then35.if.end57_crit_edge ], [ 0, %land.lhs.true.if.end57_crit_edge ], [ 0, %if.end27.if.end57_crit_edge ], [ 0, %land.lhs.true.if.end57_crit_edge701 ]
  %srr.0 = phi i32 [ %33, %if.then52.if.end57_crit_edge ], [ 15, %if.then35.if.end57_crit_edge ], [ 15, %land.lhs.true.if.end57_crit_edge ], [ 15, %if.end27.if.end57_crit_edge ], [ 15, %land.lhs.true.if.end57_crit_edge701 ]
  %scr_val.0 = phi i32 [ 2, %if.then52.if.end57_crit_edge ], [ 0, %if.then35.if.end57_crit_edge ], [ 0, %land.lhs.true.if.end57_crit_edge ], [ 0, %if.end27.if.end57_crit_edge ], [ 0, %land.lhs.true.if.end57_crit_edge701 ]
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool60.not = icmp eq i32 %35, 0
  br i1 %tobool60.not, label %if.end57.if.end94_crit_edge, label %land.lhs.true61

if.end57.if.end94_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

land.lhs.true61:                                  ; preds = %if.end57
  %params = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %36 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %params, align 8
  %size = getelementptr [20 x %struct.plat_sci_reg], ptr %37, i32 0, i32 15, i32 1
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool64.not = icmp eq i8 %39, 0
  br i1 %tobool64.not, label %land.lhs.true61.if.end94_crit_edge, label %if.then65

land.lhs.true61.if.end94_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then65:                                        ; preds = %land.lhs.true61
  %call68 = call fastcc i32 @sci_brg_calc(ptr noundef %port, i32 noundef %call24, i32 noundef %35, ptr noundef nonnull %dl1, ptr noundef nonnull %srr1)
  %40 = tail call i32 @llvm.abs.i32(i32 %call68, i1 false)
  %41 = tail call i32 @llvm.abs.i32(i32 %min_err.0, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %41)
  %cmp87 = icmp slt i32 %40, %41
  br i1 %cmp87, label %if.then89, label %if.then65.if.end94_crit_edge

if.then65.if.end94_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then89:                                        ; preds = %if.then65
  %42 = ptrtoint ptr %dl1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dl1, align 4
  %44 = ptrtoint ptr %srr1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %srr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool90.not = icmp eq i32 %call68, 0
  br i1 %tobool90.not, label %if.then89.do.body_crit_edge, label %if.then89.if.end94_crit_edge

if.then89.if.end94_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then89.do.body_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end94:                                         ; preds = %if.then89.if.end94_crit_edge, %if.then65.if.end94_crit_edge, %land.lhs.true61.if.end94_crit_edge, %if.end57.if.end94_crit_edge
  %best_clk.1 = phi i32 [ 3, %if.then89.if.end94_crit_edge ], [ %best_clk.0, %if.then65.if.end94_crit_edge ], [ %best_clk.0, %land.lhs.true61.if.end94_crit_edge ], [ %best_clk.0, %if.end57.if.end94_crit_edge ]
  %min_err.1 = phi i32 [ %call68, %if.then89.if.end94_crit_edge ], [ %min_err.0, %if.then65.if.end94_crit_edge ], [ %min_err.0, %land.lhs.true61.if.end94_crit_edge ], [ %min_err.0, %if.end57.if.end94_crit_edge ]
  %sccks.1 = phi i32 [ 0, %if.then89.if.end94_crit_edge ], [ %sccks.0, %if.then65.if.end94_crit_edge ], [ %sccks.0, %land.lhs.true61.if.end94_crit_edge ], [ %sccks.0, %if.end57.if.end94_crit_edge ]
  %dl.0 = phi i32 [ %43, %if.then89.if.end94_crit_edge ], [ 0, %if.then65.if.end94_crit_edge ], [ 0, %land.lhs.true61.if.end94_crit_edge ], [ 0, %if.end57.if.end94_crit_edge ]
  %srr.1 = phi i32 [ %45, %if.then89.if.end94_crit_edge ], [ %srr.0, %if.then65.if.end94_crit_edge ], [ %srr.0, %land.lhs.true61.if.end94_crit_edge ], [ %srr.0, %if.end57.if.end94_crit_edge ]
  %scr_val.1 = phi i32 [ 2, %if.then89.if.end94_crit_edge ], [ %scr_val.0, %if.then65.if.end94_crit_edge ], [ %scr_val.0, %land.lhs.true61.if.end94_crit_edge ], [ %scr_val.0, %if.end57.if.end94_crit_edge ]
  %46 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool97.not = icmp eq i32 %47, 0
  br i1 %tobool97.not, label %if.end94.if.end135_crit_edge, label %land.lhs.true98

if.end94.if.end135_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

land.lhs.true98:                                  ; preds = %if.end94
  %params100 = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %48 = ptrtoint ptr %params100 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %params100, align 8
  %size103 = getelementptr [20 x %struct.plat_sci_reg], ptr %49, i32 0, i32 15, i32 1
  %50 = ptrtoint ptr %size103 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %size103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool105.not = icmp eq i8 %51, 0
  br i1 %tobool105.not, label %land.lhs.true98.if.end135_crit_edge, label %if.then106

land.lhs.true98.if.end135_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.then106:                                       ; preds = %land.lhs.true98
  %call109 = call fastcc i32 @sci_brg_calc(ptr noundef %port, i32 noundef %call24, i32 noundef %47, ptr noundef nonnull %dl1, ptr noundef nonnull %srr1)
  %52 = tail call i32 @llvm.abs.i32(i32 %call109, i1 false)
  %53 = tail call i32 @llvm.abs.i32(i32 %min_err.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %53)
  %cmp128 = icmp slt i32 %52, %53
  br i1 %cmp128, label %if.then130, label %if.then106.if.end135_crit_edge

if.then106.if.end135_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.then130:                                       ; preds = %if.then106
  %54 = ptrtoint ptr %dl1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dl1, align 4
  %56 = ptrtoint ptr %srr1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %srr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool131.not = icmp eq i32 %call109, 0
  br i1 %tobool131.not, label %if.then130.do.body_crit_edge, label %if.then130.if.end135_crit_edge

if.then130.if.end135_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.then130.do.body_crit_edge:                     ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end135:                                        ; preds = %if.then130.if.end135_crit_edge, %if.then106.if.end135_crit_edge, %land.lhs.true98.if.end135_crit_edge, %if.end94.if.end135_crit_edge
  %best_clk.2 = phi i32 [ 2, %if.then130.if.end135_crit_edge ], [ %best_clk.1, %if.then106.if.end135_crit_edge ], [ %best_clk.1, %land.lhs.true98.if.end135_crit_edge ], [ %best_clk.1, %if.end94.if.end135_crit_edge ]
  %min_err.2 = phi i32 [ %call109, %if.then130.if.end135_crit_edge ], [ %min_err.1, %if.then106.if.end135_crit_edge ], [ %min_err.1, %land.lhs.true98.if.end135_crit_edge ], [ %min_err.1, %if.end94.if.end135_crit_edge ]
  %sccks.2 = phi i32 [ 16384, %if.then130.if.end135_crit_edge ], [ %sccks.1, %if.then106.if.end135_crit_edge ], [ %sccks.1, %land.lhs.true98.if.end135_crit_edge ], [ %sccks.1, %if.end94.if.end135_crit_edge ]
  %dl.1 = phi i32 [ %55, %if.then130.if.end135_crit_edge ], [ %dl.0, %if.then106.if.end135_crit_edge ], [ %dl.0, %land.lhs.true98.if.end135_crit_edge ], [ %dl.0, %if.end94.if.end135_crit_edge ]
  %srr.2 = phi i32 [ %57, %if.then130.if.end135_crit_edge ], [ %srr.1, %if.then106.if.end135_crit_edge ], [ %srr.1, %land.lhs.true98.if.end135_crit_edge ], [ %srr.1, %if.end94.if.end135_crit_edge ]
  %scr_val.2 = phi i32 [ 2, %if.then130.if.end135_crit_edge ], [ %scr_val.1, %if.then106.if.end135_crit_edge ], [ %scr_val.1, %land.lhs.true98.if.end135_crit_edge ], [ %scr_val.1, %if.end94.if.end135_crit_edge ]
  %call136 = call fastcc i32 @sci_scbrr_calc(ptr noundef %port, i32 noundef %call24, ptr noundef nonnull %brr1, ptr noundef nonnull %srr1, ptr noundef nonnull %cks1)
  %58 = tail call i32 @llvm.abs.i32(i32 %call136, i1 false)
  %59 = tail call i32 @llvm.abs.i32(i32 %min_err.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %59)
  %cmp155 = icmp slt i32 %58, %59
  br i1 %cmp155, label %if.then157, label %done

if.then157:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %brr1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %brr1, align 4
  %62 = ptrtoint ptr %srr1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %srr1, align 4
  %64 = ptrtoint ptr %cks1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cks1, align 4
  br label %do.body

done:                                             ; preds = %if.end135
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_clk.2)
  %cmp159 = icmp sgt i32 %best_clk.2, -1
  br i1 %cmp159, label %done.do.body_crit_edge, label %done.do.body184.critedge_crit_edge

done.do.body184.critedge_crit_edge:               ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body184.critedge

done.do.body_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %done.do.body_crit_edge, %if.then157, %if.then130.do.body_crit_edge, %if.then89.do.body_crit_edge, %if.then52.do.body_crit_edge
  %scr_val.3671 = phi i32 [ %scr_val.2, %done.do.body_crit_edge ], [ 2, %if.then52.do.body_crit_edge ], [ 2, %if.then89.do.body_crit_edge ], [ 2, %if.then130.do.body_crit_edge ], [ 0, %if.then157 ]
  %brr.0669 = phi i32 [ 255, %done.do.body_crit_edge ], [ 255, %if.then52.do.body_crit_edge ], [ 255, %if.then89.do.body_crit_edge ], [ 255, %if.then130.do.body_crit_edge ], [ %61, %if.then157 ]
  %cks.0667 = phi i32 [ 0, %done.do.body_crit_edge ], [ 0, %if.then52.do.body_crit_edge ], [ 0, %if.then89.do.body_crit_edge ], [ 0, %if.then130.do.body_crit_edge ], [ %65, %if.then157 ]
  %srr.3663 = phi i32 [ %srr.2, %done.do.body_crit_edge ], [ %33, %if.then52.do.body_crit_edge ], [ %45, %if.then89.do.body_crit_edge ], [ %57, %if.then130.do.body_crit_edge ], [ %63, %if.then157 ]
  %dl.2661 = phi i32 [ %dl.1, %done.do.body_crit_edge ], [ 0, %if.then52.do.body_crit_edge ], [ %43, %if.then89.do.body_crit_edge ], [ %55, %if.then130.do.body_crit_edge ], [ %dl.1, %if.then157 ]
  %sccks.3660 = phi i32 [ %sccks.2, %done.do.body_crit_edge ], [ 32768, %if.then52.do.body_crit_edge ], [ 0, %if.then89.do.body_crit_edge ], [ 16384, %if.then130.do.body_crit_edge ], [ %sccks.2, %if.then157 ]
  %min_err.3657 = phi i32 [ %min_err.2, %done.do.body_crit_edge ], [ 0, %if.then52.do.body_crit_edge ], [ 0, %if.then89.do.body_crit_edge ], [ 0, %if.then130.do.body_crit_edge ], [ %call136, %if.then157 ]
  %best_clk.3656 = phi i32 [ %best_clk.2, %done.do.body_crit_edge ], [ 1, %if.then52.do.body_crit_edge ], [ 3, %if.then89.do.body_crit_edge ], [ 2, %if.then130.do.body_crit_edge ], [ 0, %if.then157 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_set_termios.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_set_termios, %if.then167)) #9
          to label %land.lhs.true173 [label %if.then167], !srcloc !323

if.then167:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %arrayidx168 = getelementptr %struct.sci_port, ptr %port, i32 0, i32 6, i32 %best_clk.3656
  %68 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx168, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_set_termios.__UNIQUE_ID_ddebug283, ptr noundef %67, ptr noundef nonnull @.str.85, ptr noundef %69, i32 noundef %call24, i32 noundef %min_err.3657) #9
  br label %land.lhs.true173

land.lhs.true173:                                 ; preds = %if.then167, %do.body
  tail call fastcc void @sci_port_enable(ptr noundef %port)
  %params175 = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %70 = ptrtoint ptr %params175 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %params175, align 8
  %size178 = getelementptr [20 x %struct.plat_sci_reg], ptr %71, i32 0, i32 16, i32 1
  %72 = ptrtoint ptr %size178 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %size178, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool180.not = icmp eq i8 %73, 0
  br i1 %tobool180.not, label %land.lhs.true173.do.body184_crit_edge, label %if.then181

land.lhs.true173.do.body184_crit_edge:            ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body184

if.then181:                                       ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #11
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %74 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %serial_out.i, align 4
  tail call void %75(ptr noundef %port, i32 noundef 15, i32 noundef %dl.2661) #9
  %76 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %serial_out.i, align 4
  tail call void %77(ptr noundef %port, i32 noundef 16, i32 noundef %sccks.3660) #9
  br label %do.body184

do.body184.critedge:                              ; preds = %done.do.body184.critedge_crit_edge, %if.then19, %for.body.preheader.do.body184.critedge_crit_edge
  %baud.0696 = phi i32 [ %call24, %done.do.body184.critedge_crit_edge ], [ %call20, %if.then19 ], [ 0, %for.body.preheader.do.body184.critedge_crit_edge ]
  %scr_val.3695 = phi i32 [ %scr_val.2, %done.do.body184.critedge_crit_edge ], [ 0, %if.then19 ], [ 0, %for.body.preheader.do.body184.critedge_crit_edge ]
  %srr.3692 = phi i32 [ %srr.2, %done.do.body184.critedge_crit_edge ], [ 15, %if.then19 ], [ 15, %for.body.preheader.do.body184.critedge_crit_edge ]
  %min_err.3691 = phi i32 [ %min_err.2, %done.do.body184.critedge_crit_edge ], [ 2147483647, %if.then19 ], [ 2147483647, %for.body.preheader.do.body184.critedge_crit_edge ]
  tail call fastcc void @sci_port_enable(ptr noundef %port)
  br label %do.body184

do.body184:                                       ; preds = %do.body184.critedge, %if.then181, %land.lhs.true173.do.body184_crit_edge
  %cmp159677 = phi i1 [ false, %do.body184.critedge ], [ true, %if.then181 ], [ true, %land.lhs.true173.do.body184_crit_edge ]
  %baud.0673 = phi i32 [ %baud.0696, %do.body184.critedge ], [ %call24, %if.then181 ], [ %call24, %land.lhs.true173.do.body184_crit_edge ]
  %scr_val.3670 = phi i32 [ %scr_val.3695, %do.body184.critedge ], [ %scr_val.3671, %if.then181 ], [ %scr_val.3671, %land.lhs.true173.do.body184_crit_edge ]
  %brr.0668 = phi i32 [ 255, %do.body184.critedge ], [ %brr.0669, %if.then181 ], [ %brr.0669, %land.lhs.true173.do.body184_crit_edge ]
  %cks.0666 = phi i32 [ 0, %do.body184.critedge ], [ %cks.0667, %if.then181 ], [ %cks.0667, %land.lhs.true173.do.body184_crit_edge ]
  %srr.3662 = phi i32 [ %srr.3692, %do.body184.critedge ], [ %srr.3663, %if.then181 ], [ %srr.3663, %land.lhs.true173.do.body184_crit_edge ]
  %min_err.3658 = phi i32 [ %min_err.3691, %do.body184.critedge ], [ %min_err.3657, %if.then181 ], [ %min_err.3657, %land.lhs.true173.do.body184_crit_edge ]
  %call189 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %hscif_tot.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 29
  %78 = ptrtoint ptr %hscif_tot.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %hscif_tot.i, align 8
  %conv.i = zext i16 %79 to i32
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %80 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %81(ptr noundef %port, i32 noundef 2, i32 noundef %conv.i) #9
  %params.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %82 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %params.i, align 8
  %size.i = getelementptr [20 x %struct.plat_sci_reg], ptr %83, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i = icmp eq i8 %85, 0
  br i1 %tobool.not.i, label %do.body184.if.end.i_crit_edge, label %if.then.i

do.body184.if.end.i_crit_edge:                    ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %87(ptr noundef %port, i32 noundef 4, i32 noundef 6) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body184.if.end.i_crit_edge
  %type.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %88 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %89)
  %cmp.i = icmp eq i32 %89, 52
  %cond.i = select i1 %cmp.i, i32 -92, i32 -28
  %90 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %params.i, align 8
  %error_clear.i = getelementptr inbounds %struct.sci_port_params, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %error_clear.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %error_clear.i, align 4
  %and.i = and i32 %cond.i, %93
  %cond8.i = select i1 %cmp.i, i32 -60, i32 -29
  %and9.i = and i32 %and.i, %cond8.i
  br i1 %cmp.i, label %if.end.i.sci_clear_SCxSR.exit.i_crit_edge, label %if.else.i.i

if.end.i.sci_clear_SCxSR.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_clear_SCxSR.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  %overrun_mask.i.i = getelementptr inbounds %struct.sci_port_params, ptr %91, i32 0, i32 3
  %94 = ptrtoint ptr %overrun_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %overrun_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %95)
  %cmp1.i.i = icmp eq i32 %95, 512
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else4.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %serial_in.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %96 = ptrtoint ptr %serial_in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %serial_in.i.i.i, align 4
  %call.i.i.i = tail call i32 %97(ptr noundef %port, i32 noundef 3) #9
  %and.i.i = and i32 %call.i.i.i, %and9.i
  br label %sci_clear_SCxSR.exit.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i.i = and i32 %and9.i, -65308
  br label %sci_clear_SCxSR.exit.i

sci_clear_SCxSR.exit.i:                           ; preds = %if.else4.i.i, %if.then2.i.i, %if.end.i.sci_clear_SCxSR.exit.i_crit_edge
  %and.sink.i.i = phi i32 [ %and.i.i, %if.then2.i.i ], [ %and5.i.i, %if.else4.i.i ], [ %and9.i, %if.end.i.sci_clear_SCxSR.exit.i_crit_edge ]
  %98 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %99(ptr noundef %port, i32 noundef 3, i32 noundef %and.sink.i.i) #9
  %100 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %params.i, align 8
  %size14.i = getelementptr [20 x %struct.plat_sci_reg], ptr %101, i32 0, i32 8, i32 1
  %102 = ptrtoint ptr %size14.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %size14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool15.not.i = icmp eq i8 %103, 0
  br i1 %tobool15.not.i, label %sci_clear_SCxSR.exit.i.if.end19.i_crit_edge, label %if.then16.i

sci_clear_SCxSR.exit.i.if.end19.i_crit_edge:      ; preds = %sci_clear_SCxSR.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then16.i:                                      ; preds = %sci_clear_SCxSR.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %104 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %105(ptr noundef %port, i32 noundef 8) #9
  %and18.i = and i32 %call.i.i, -6
  %106 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %107(ptr noundef %port, i32 noundef 8, i32 noundef %and18.i) #9
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %sci_clear_SCxSR.exit.i.if.end19.i_crit_edge
  %rx_trigger.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 26
  %108 = ptrtoint ptr %rx_trigger.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rx_trigger.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp20.i = icmp sgt i32 %109, 1
  br i1 %cmp20.i, label %if.then22.i, label %if.end19.i.sci_reset.exit_crit_edge

if.end19.i.sci_reset.exit_crit_edge:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_reset.exit

if.then22.i:                                      ; preds = %if.end19.i
  %rx_fifo_timeout.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 28
  %110 = ptrtoint ptr %rx_fifo_timeout.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_fifo_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool23.not.i = icmp eq i32 %111, 0
  br i1 %tobool23.not.i, label %if.else.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  %call25.i = tail call fastcc i32 @scif_set_rtrg(ptr noundef %port, i32 noundef 1) #9
  %rx_fifo_timer.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 27
  tail call void @init_timer_key(ptr noundef %rx_fifo_timer.i, ptr noundef nonnull @rx_fifo_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.92, ptr noundef nonnull @sci_reset.__key) #9
  br label %sci_reset.exit

if.else.i:                                        ; preds = %if.then22.i
  %112 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %type.i, align 4
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %113, label %if.else34.i [
    i32 83, label %if.else.i.if.then32.i_crit_edge
    i32 93, label %if.else.i.if.then32.i_crit_edge702
  ]

if.else.i.if.then32.i_crit_edge702:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i

if.else.i.if.then32.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32.i

if.then32.i:                                      ; preds = %if.else.i.if.then32.i_crit_edge, %if.else.i.if.then32.i_crit_edge702
  %call33.i = tail call fastcc i32 @scif_set_rtrg(ptr noundef %port, i32 noundef 1) #9
  br label %sci_reset.exit

if.else34.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call36.i = tail call fastcc i32 @scif_set_rtrg(ptr noundef %port, i32 noundef %109) #9
  br label %sci_reset.exit

sci_reset.exit:                                   ; preds = %if.else34.i, %if.then32.i, %if.then24.i, %if.end19.i.sci_reset.exit_crit_edge
  %115 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %116, i32 noundef %baud.0673) #9
  %117 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %c_cflag, align 4
  %call196 = tail call zeroext i8 @tty_get_frame_size(i32 noundef %118) #9
  %conv197 = zext i8 %call196 to i32
  %119 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %params.i, align 8
  %size202 = getelementptr [20 x %struct.plat_sci_reg], ptr %120, i32 0, i32 19, i32 1
  %121 = ptrtoint ptr %size202 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %size202, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool203.not = icmp eq i8 %122, 0
  br i1 %tobool203.not, label %sci_reset.exit.if.end205_crit_edge, label %if.then204

sci_reset.exit.if.end205_crit_edge:               ; preds = %sci_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205

if.then204:                                       ; preds = %sci_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %124(ptr noundef %port, i32 noundef 19, i32 noundef 0) #9
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %sci_reset.exit.if.end205_crit_edge
  br i1 %cmp159677, label %if.then208, label %if.else

if.then208:                                       ; preds = %if.end205
  %125 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %type.i, align 4
  %127 = zext i32 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %126, label %if.then208.if.end231_crit_edge [
    i32 83, label %if.then208.if.then215_crit_edge
    i32 93, label %if.then208.if.then215_crit_edge703
  ]

if.then208.if.then215_crit_edge703:               ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then215

if.then208.if.then215_crit_edge:                  ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then215

if.then208.if.end231_crit_edge:                   ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231

if.then215:                                       ; preds = %if.then208.if.then215_crit_edge, %if.then208.if.then215_crit_edge703
  %128 = add i32 %srr.3662, -4
  %129 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 31)
  %130 = zext i32 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %129, label %if.then215.if.end231_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb217
    i32 3, label %sw.bb219
    i32 4, label %sw.bb221
    i32 11, label %sw.bb229
    i32 6, label %sw.bb225
    i32 7, label %sw.bb227
  ]

if.then215.if.end231_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231

sw.bb:                                            ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  %or216 = or i32 %8, 256
  br label %if.end231

sw.bb217:                                         ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  %or218 = or i32 %8, 512
  br label %if.end231

sw.bb219:                                         ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  %or220 = or i32 %8, 768
  br label %if.end231

sw.bb221:                                         ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  %or222 = or i32 %8, 1024
  br label %if.end231

sw.bb225:                                         ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  %or226 = or i32 %8, 1280
  br label %if.end231

sw.bb227:                                         ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  %or228 = or i32 %8, 1536
  br label %if.end231

sw.bb229:                                         ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  %or230 = or i32 %8, 1792
  br label %if.end231

if.end231:                                        ; preds = %sw.bb229, %sw.bb227, %sw.bb225, %sw.bb221, %sw.bb219, %sw.bb217, %sw.bb, %if.then215.if.end231_crit_edge, %if.then208.if.end231_crit_edge
  %smr_val.4 = phi i32 [ %or230, %sw.bb229 ], [ %or228, %sw.bb227 ], [ %or226, %sw.bb225 ], [ %or222, %sw.bb221 ], [ %or220, %sw.bb219 ], [ %or218, %sw.bb217 ], [ %or216, %sw.bb ], [ %8, %if.then208.if.end231_crit_edge ], [ %8, %if.then215.if.end231_crit_edge ]
  %or232 = or i32 %smr_val.4, %cks.0666
  %131 = ptrtoint ptr %hscif_tot.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %hscif_tot.i, align 8
  %conv233 = zext i16 %132 to i32
  %or234 = or i32 %scr_val.3670, %conv233
  %133 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %134(ptr noundef %port, i32 noundef 2, i32 noundef %or234) #9
  %135 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %136(ptr noundef %port, i32 noundef 0, i32 noundef %or232) #9
  %137 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %138(ptr noundef %port, i32 noundef 1, i32 noundef %brr.0668) #9
  %139 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %params.i, align 8
  %size239 = getelementptr [20 x %struct.plat_sci_reg], ptr %140, i32 0, i32 12, i32 1
  %141 = ptrtoint ptr %size239 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %size239, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool240.not = icmp eq i8 %142, 0
  br i1 %tobool240.not, label %if.end231.cond.false314_crit_edge, label %if.then241

if.end231.cond.false314_crit_edge:                ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false314

if.then241:                                       ; preds = %if.end231
  %or242 = or i32 %srr.3662, 32768
  %mul = shl nuw nsw i32 %conv197, 1
  %sub243 = add nsw i32 %mul, -1
  %add246 = add i32 %srr.3662, 1
  %mul245 = mul i32 %add246, %min_err.3658
  %mul247 = mul i32 %mul245, %sub243
  %mul248 = shl i32 %baud.0673, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul247)
  %cmp250 = icmp slt i32 %mul247, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul248)
  %cmp252 = icmp sgt i32 %mul248, 0
  %cmp254 = xor i1 %cmp252, %cmp250
  %add258.pn.v.v = select i1 %cmp254, i32 2, i32 -2
  %add258.pn.v = sdiv i32 %mul248, %add258.pn.v.v
  %add258.pn = add i32 %add258.pn.v, %mul247
  %cond265 = sdiv i32 %add258.pn, %mul248
  %143 = tail call i32 @llvm.abs.i32(i32 %cond265, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %143)
  %cmp275 = icmp sgt i32 %143, 1
  br i1 %cmp275, label %if.then277, label %if.then241.if.end296_crit_edge

if.then241.if.end296_crit_edge:                   ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end296

if.then277:                                       ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %cond265)
  %cmp280 = icmp sgt i32 %cond265, -16
  %div278 = sdiv i32 %cond265, 2
  %144 = tail call i32 @llvm.smin.i32(i32 %div278, i32 7)
  %.op = shl i32 %144, 8
  %.op.op = and i32 %.op, 3840
  %and293 = select i1 %cmp280, i32 %.op.op, i32 2048
  %or294 = or i32 %srr.3662, %and293
  %or295 = or i32 %or294, 49152
  br label %if.end296

if.end296:                                        ; preds = %if.then277, %if.then241.if.end296_crit_edge
  %hssrr.0 = phi i32 [ %or295, %if.then277 ], [ %or242, %if.then241.if.end296_crit_edge ]
  %145 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %146(ptr noundef %port, i32 noundef 12, i32 noundef %hssrr.0) #9
  br label %cond.false314

cond.false314:                                    ; preds = %if.end296, %if.end231.cond.false314_crit_edge
  %add299 = add i32 %baud.0673, 999999
  %div300 = udiv i32 %add299, %baud.0673
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %147(i32 noundef %div300) #9
  br label %if.end326

if.else:                                          ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  %cfg = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 2
  %148 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cfg, align 4
  %scscr = getelementptr inbounds %struct.plat_sci_port, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %scscr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %scscr, align 4
  %and319 = and i32 %151, 3
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %152 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %153(ptr noundef %port, i32 noundef 0) #9
  %and321 = and i32 %call.i, 5891
  %or322 = or i32 %and321, %8
  %154 = ptrtoint ptr %hscif_tot.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %hscif_tot.i, align 8
  %conv324 = zext i16 %155 to i32
  %or325 = or i32 %and319, %conv324
  %156 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %157(ptr noundef %port, i32 noundef 2, i32 noundef %or325) #9
  %158 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %159(ptr noundef %port, i32 noundef 0, i32 noundef %or322) #9
  br label %if.end326

if.end326:                                        ; preds = %if.else, %cond.false314
  %scr_val.4 = phi i32 [ %scr_val.3670, %cond.false314 ], [ %and319, %if.else ]
  %160 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %c_cflag, align 4
  %cfg.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 2
  %162 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cfg.i, align 4
  %ops.i = getelementptr inbounds %struct.plat_sci_port, ptr %163, i32 0, i32 5
  %164 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ops.i, align 4
  %tobool.not.i621 = icmp eq ptr %165, null
  br i1 %tobool.not.i621, label %if.end326.if.end.i624_crit_edge, label %land.lhs.true.i

if.end326.if.end.i624_crit_edge:                  ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i624

land.lhs.true.i:                                  ; preds = %if.end326
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %tobool3.not.i = icmp eq ptr %167, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i624_crit_edge, label %if.then.i622

land.lhs.true.i.if.end.i624_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i624

if.then.i622:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %167(ptr noundef %port, i32 noundef %161) #9
  br label %sci_init_pins.exit

if.end.i624:                                      ; preds = %land.lhs.true.i.if.end.i624_crit_edge, %if.end326.if.end.i624_crit_edge
  %168 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %type.i, align 4
  %170 = zext i32 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %169, label %if.else46.i [
    i32 83, label %if.end.i624.if.then9.i_crit_edge
    i32 93, label %if.end.i624.if.then9.i_crit_edge704
  ]

if.end.i624.if.then9.i_crit_edge704:              ; preds = %if.end.i624
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

if.end.i624.if.then9.i_crit_edge:                 ; preds = %if.end.i624
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i624.if.then9.i_crit_edge, %if.end.i624.if.then9.i_crit_edge704
  %serial_in.i.i625 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %171 = ptrtoint ptr %serial_in.i.i625 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %serial_in.i.i625, align 4
  %call.i.i626 = tail call i32 %172(ptr noundef %port, i32 noundef 14) #9
  %173 = ptrtoint ptr %serial_in.i.i625 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %serial_in.i.i625, align 4
  %call.i108.i = tail call i32 %174(ptr noundef %port, i32 noundef 13) #9
  %175 = trunc i32 %call.i108.i to i16
  %conv14.i = and i16 %175, -4
  %has_rtscts.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 30
  %176 = ptrtoint ptr %has_rtscts.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %has_rtscts.i, align 2, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool16.not.i = icmp eq i8 %177, 0
  br i1 %tobool16.not.i, label %if.then9.i.if.end43.i_crit_edge, label %if.then17.i

if.then9.i.if.end43.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then17.i:                                      ; preds = %if.then9.i
  %mctrl.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %178 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %mctrl.i, align 4
  %and18.i627 = and i32 %179, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i627)
  %tobool19.not.i = icmp eq i32 %and18.i627, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.else.i628

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %180 = or i16 %conv14.i, 16
  %conv23.i = and i32 %call.i.i626, 65519
  %or24.i = or i32 %conv23.i, 16
  br label %if.end39.i

if.else.i628:                                     ; preds = %if.then17.i
  %autorts.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 31
  %181 = ptrtoint ptr %autorts.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %autorts.i, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool26.not.i = icmp eq i8 %182, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.else34.i629

if.then27.i:                                      ; preds = %if.else.i628
  call void @__sanitizer_cov_trace_pc() #11
  %183 = or i16 %conv14.i, 16
  %and32.i = and i32 %call.i.i626, 65519
  br label %if.end39.i

if.else34.i629:                                   ; preds = %if.else.i628
  call void @__sanitizer_cov_trace_pc() #11
  %conv37.i = and i16 %175, -20
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else34.i629, %if.then27.i, %if.then20.i
  %data.0.i = phi i32 [ %call.i.i626, %if.else34.i629 ], [ %and32.i, %if.then27.i ], [ %or24.i, %if.then20.i ]
  %ctrl.0.i = phi i16 [ %conv37.i, %if.else34.i629 ], [ %183, %if.then27.i ], [ %180, %if.then20.i ]
  %184 = and i16 %ctrl.0.i, -9
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end39.i, %if.then9.i.if.end43.i_crit_edge
  %data.1.i = phi i32 [ %data.0.i, %if.end39.i ], [ %call.i.i626, %if.then9.i.if.end43.i_crit_edge ]
  %ctrl.1.i = phi i16 [ %184, %if.end39.i ], [ %conv14.i, %if.then9.i.if.end43.i_crit_edge ]
  %conv44.i = and i32 %data.1.i, 65535
  %185 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %186(ptr noundef %port, i32 noundef 14, i32 noundef %conv44.i) #9
  %conv45.i = zext i16 %ctrl.1.i to i32
  %187 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %188(ptr noundef %port, i32 noundef 13, i32 noundef %conv45.i) #9
  br label %sci_init_pins.exit

if.else46.i:                                      ; preds = %if.end.i624
  %189 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %params.i, align 8
  %size.i632 = getelementptr [20 x %struct.plat_sci_reg], ptr %190, i32 0, i32 11, i32 1
  %191 = ptrtoint ptr %size.i632 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %size.i632, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool48.not.i = icmp eq i8 %192, 0
  br i1 %tobool48.not.i, label %if.else46.i.sci_init_pins.exit_crit_edge, label %if.then49.i

if.else46.i.sci_init_pins.exit_crit_edge:         ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_init_pins.exit

if.then49.i:                                      ; preds = %if.else46.i
  %serial_in.i110.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %193 = ptrtoint ptr %serial_in.i110.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %serial_in.i110.i, align 4
  %call.i111.i = tail call i32 %194(ptr noundef %port, i32 noundef 11) #9
  %195 = trunc i32 %call.i111.i to i16
  %mctrl55.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %196 = ptrtoint ptr %mctrl55.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %mctrl55.i, align 4
  %and56.i = and i32 %197, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.then58.i, label %if.else62.i

if.then58.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  %198 = or i16 %195, 192
  br label %if.end70.i

if.else62.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv54.i = or i16 %195, 128
  %autorts63.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 31
  %199 = ptrtoint ptr %autorts63.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %autorts63.i, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool64.not.i = icmp eq i8 %200, 0
  %201 = and i16 %conv54.i, -65
  %spec.select.i = select i1 %tobool64.not.i, i16 %201, i16 %conv54.i
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.else62.i, %if.then58.i
  %status.0.i = phi i16 [ %198, %if.then58.i ], [ %spec.select.i, %if.else62.i ]
  %202 = and i16 %status.0.i, -41
  %conv74.i = zext i16 %202 to i32
  %203 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %204(ptr noundef %port, i32 noundef 11, i32 noundef %conv74.i) #9
  br label %sci_init_pins.exit

sci_init_pins.exit:                               ; preds = %if.end70.i, %if.else46.i.sci_init_pins.exit_crit_edge, %if.end43.i, %if.then.i622
  %status = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %205 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %status, align 4
  %and328 = and i32 %206, -9
  store i32 %and328, ptr %status, align 4
  %autorts = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 31
  %207 = ptrtoint ptr %autorts to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %autorts, align 1
  %208 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %params.i, align 8
  %size333 = getelementptr [20 x %struct.plat_sci_reg], ptr %209, i32 0, i32 4, i32 1
  %210 = ptrtoint ptr %size333 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %size333, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool334.not = icmp eq i8 %211, 0
  br i1 %tobool334.not, label %sci_init_pins.exit.if.end354_crit_edge, label %if.then335

sci_init_pins.exit.if.end354_crit_edge:           ; preds = %sci_init_pins.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end354

if.then335:                                       ; preds = %sci_init_pins.exit
  %serial_in.i633 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %212 = ptrtoint ptr %serial_in.i633 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %serial_in.i633, align 4
  %call.i634 = tail call i32 %213(ptr noundef %port, i32 noundef 4) #9
  %flags338 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %214 = ptrtoint ptr %flags338 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %flags338, align 4
  %and339 = and i32 %215, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339)
  %tobool340.not = icmp eq i32 %and339, 0
  br i1 %tobool340.not, label %if.then335.if.end349_crit_edge, label %land.lhs.true341

if.then335.if.end349_crit_edge:                   ; preds = %if.then335
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end349

land.lhs.true341:                                 ; preds = %if.then335
  %216 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %217)
  %tobool344.not = icmp sgt i32 %217, -1
  br i1 %tobool344.not, label %land.lhs.true341.if.end349_crit_edge, label %if.then345

land.lhs.true341.if.end349_crit_edge:             ; preds = %land.lhs.true341
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end349

if.then345:                                       ; preds = %land.lhs.true341
  call void @__sanitizer_cov_trace_pc() #11
  %218 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %status, align 4
  %or347 = or i32 %219, 8
  store i32 %or347, ptr %status, align 4
  %220 = ptrtoint ptr %autorts to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 1, ptr %autorts, align 1
  br label %if.end349

if.end349:                                        ; preds = %if.then345, %land.lhs.true341.if.end349_crit_edge, %if.then335.if.end349_crit_edge
  %conv352 = and i32 %call.i634, 65529
  %221 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %222(ptr noundef %port, i32 noundef 4, i32 noundef %conv352) #9
  br label %if.end354

if.end354:                                        ; preds = %if.end349, %sci_init_pins.exit.if.end354_crit_edge
  %flags355 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %223 = ptrtoint ptr %flags355 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %flags355, align 4
  %and356 = and i32 %224, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and356)
  %tobool357.not = icmp eq i32 %and356, 0
  br i1 %tobool357.not, label %if.end354.if.end359_crit_edge, label %if.then358

if.end354.if.end359_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end359

if.then358:                                       ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #11
  %mctrl = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 36
  %225 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %mctrl, align 4
  tail call void @sci_set_mctrl(ptr noundef %port, i32 noundef %226)
  br label %if.end359

if.end359:                                        ; preds = %if.then358, %if.end354.if.end359_crit_edge
  %227 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %cfg.i, align 4
  %scscr361 = getelementptr inbounds %struct.plat_sci_port, ptr %228, i32 0, i32 3
  %229 = ptrtoint ptr %scscr361 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %scscr361, align 4
  %and362 = and i32 %230, -52
  %231 = ptrtoint ptr %hscif_tot.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %hscif_tot.i, align 8
  %conv366 = zext i16 %232 to i32
  %or363 = or i32 %scr_val.4, %and362
  %or364 = or i32 %or363, %conv366
  %or367 = or i32 %or364, 48
  %233 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %234(ptr noundef %port, i32 noundef 2, i32 noundef %or367) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %srr.3662)
  %cmp369 = icmp eq i32 %srr.3662, 4
  br i1 %cmp369, label %land.lhs.true371, label %if.end359.if.end401_crit_edge

if.end359.if.end401_crit_edge:                    ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end401

land.lhs.true371:                                 ; preds = %if.end359
  %235 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %type.i, align 4
  %237 = zext i32 %236 to i64
  call void @__sanitizer_cov_trace_switch(i64 %237, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %236, label %land.lhs.true371.if.end401_crit_edge [
    i32 83, label %land.lhs.true371.cond.false396_crit_edge
    i32 93, label %land.lhs.true371.cond.false396_crit_edge705
  ]

land.lhs.true371.cond.false396_crit_edge705:      ; preds = %land.lhs.true371
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false396

land.lhs.true371.cond.false396_crit_edge:         ; preds = %land.lhs.true371
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false396

land.lhs.true371.if.end401_crit_edge:             ; preds = %land.lhs.true371
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end401

cond.false396:                                    ; preds = %land.lhs.true371.cond.false396_crit_edge, %land.lhs.true371.cond.false396_crit_edge705
  %sub381 = add i32 %baud.0673, 9999999
  %div382 = udiv i32 %sub381, %baud.0673
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %238(i32 noundef %div382) #9
  br label %if.end401

if.end401:                                        ; preds = %cond.false396, %land.lhs.true371.if.end401_crit_edge, %if.end359.if.end401_crit_edge
  %mul402 = mul nuw nsw i32 %conv197, 10000
  %div403 = udiv i32 %baud.0673, 100
  %div404 = udiv i32 %mul402, %div403
  %rx_frame = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 25
  %239 = ptrtoint ptr %rx_frame to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %div404, ptr %rx_frame, align 4
  %buf_len_rx = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 21
  %240 = ptrtoint ptr %buf_len_rx to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %buf_len_rx, align 4
  %mul405 = shl nuw nsw i32 %div404, 1
  %mul407 = mul i32 %mul405, %241
  %rx_timeout = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 24
  %242 = ptrtoint ptr %rx_timeout to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %mul407, ptr %rx_timeout, align 8
  %243 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %c_cflag, align 4
  %and409 = and i32 %244, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and409)
  %cmp410.not = icmp eq i32 %and409, 0
  br i1 %cmp410.not, label %if.end401.if.end413_crit_edge, label %if.then412

if.end401.if.end413_crit_edge:                    ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end413

if.then412:                                       ; preds = %if.end401
  %serial_in.i.i637 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %245 = ptrtoint ptr %serial_in.i.i637 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %serial_in.i.i637, align 4
  %call.i.i638 = tail call i32 %246(ptr noundef %port, i32 noundef 2) #9
  %247 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %cfg.i, align 4
  %scscr.i.i = getelementptr inbounds %struct.plat_sci_port, ptr %248, i32 0, i32 3
  %249 = ptrtoint ptr %scscr.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %scscr.i.i, align 4
  %and.i.i639 = and i32 %250, 8
  %or.i.i = or i32 %call.i.i638, %and.i.i639
  %or.i = or i32 %or.i.i, 64
  %251 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %type.i, align 4
  %253 = zext i32 %252 to i64
  call void @__sanitizer_cov_trace_switch(i64 %253, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %252, label %if.then412.sci_start_rx.exit_crit_edge [
    i32 83, label %if.then412.if.then.i642_crit_edge
    i32 93, label %if.then412.if.then.i642_crit_edge706
  ]

if.then412.if.then.i642_crit_edge706:             ; preds = %if.then412
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i642

if.then412.if.then.i642_crit_edge:                ; preds = %if.then412
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i642

if.then412.sci_start_rx.exit_crit_edge:           ; preds = %if.then412
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_start_rx.exit

if.then.i642:                                     ; preds = %if.then412.if.then.i642_crit_edge, %if.then412.if.then.i642_crit_edge706
  %and.i641 = and i32 %or.i, 49151
  br label %sci_start_rx.exit

sci_start_rx.exit:                                ; preds = %if.then.i642, %if.then412.sci_start_rx.exit_crit_edge
  %ctrl.0.i643 = phi i32 [ %and.i641, %if.then.i642 ], [ %or.i, %if.then412.sci_start_rx.exit_crit_edge ]
  %conv8.i = and i32 %ctrl.0.i643, 65535
  %254 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %255(ptr noundef %port, i32 noundef 2, i32 noundef %conv8.i) #9
  br label %if.end413

if.end413:                                        ; preds = %sci_start_rx.exit, %if.end401.if.end413_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call189) #9
  tail call fastcc void @sci_port_disable(ptr noundef %port)
  %256 = ptrtoint ptr %flags355 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %flags355, align 4
  %and416 = and i32 %257, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416)
  %tobool417.not = icmp eq i32 %and416, 0
  br i1 %tobool417.not, label %lor.lhs.false418, label %if.end413.if.then426_crit_edge

if.end413.if.then426_crit_edge:                   ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then426

lor.lhs.false418:                                 ; preds = %if.end413
  %258 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %c_cflag, align 4
  %260 = and i32 %259, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %260)
  %.not = icmp eq i32 %260, 2048
  br i1 %.not, label %lor.lhs.false418.if.end427_crit_edge, label %lor.lhs.false418.if.then426_crit_edge

lor.lhs.false418.if.then426_crit_edge:            ; preds = %lor.lhs.false418
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then426

lor.lhs.false418.if.end427_crit_edge:             ; preds = %lor.lhs.false418
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end427

if.then426:                                       ; preds = %lor.lhs.false418.if.then426_crit_edge, %if.end413.if.then426_crit_edge
  %gpios.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 5
  %261 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %gpios.i, align 8
  tail call void @mctrl_gpio_enable_ms(ptr noundef %262) #9
  br label %if.end427

if.end427:                                        ; preds = %if.then426, %lor.lhs.false418.if.end427_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dl1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srr1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cks1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %brr1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_pm(ptr nocapture noundef %port, i32 noundef %state, i32 noundef %oldstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cond = icmp eq i32 %state, 3
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sci_port_disable(ptr noundef %port)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sci_port_enable(ptr noundef %port)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sci_type(ptr nocapture noundef readonly %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %1, label %sw.epilog [
    i32 54, label %entry.return_crit_edge
    i32 52, label %sw.bb1
    i32 53, label %sw.bb2
    i32 83, label %sw.bb3
    i32 93, label %sw.bb4
    i32 104, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %sw.epilog ], [ @.str.100, %sw.bb5 ], [ @.str.99, %sw.bb4 ], [ @.str.98, %sw.bb3 ], [ @.str.97, %sw.bb2 ], [ @.str.96, %sw.bb1 ], [ @.str.95, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_release_port(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool1.not = icmp sgt i32 %5, -1
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %7) #9
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %membase, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %9 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mapbase, align 4
  %reg_size = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 4
  %11 = ptrtoint ptr %reg_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_size, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %12) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_request_port(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %0 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mapbase, align 4
  %reg_size = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 4
  %2 = ptrtoint ptr %reg_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_size, align 4
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef %3, ptr noundef %retval.0.i, i32 noundef 0) #9
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %do.end, label %if.end, !prof !321

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.101) #13
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %tobool.not.i24 = icmp eq ptr %13, null
  br i1 %tobool.not.i24, label %if.end.i25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i25:                                       ; preds = %if.end
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i25.if.then3.i_crit_edge

if.end.i25.if.then3.i_crit_edge:                  ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

lor.lhs.false.i:                                  ; preds = %if.end.i25
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool2.not.i = icmp sgt i32 %19, -1
  br i1 %tobool2.not.i, label %if.else.i, label %lor.lhs.false.i.if.then3.i_crit_edge

lor.lhs.false.i.if.then3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.then3.i:                                       ; preds = %lor.lhs.false.i.if.then3.i_crit_edge, %if.end.i25.if.then3.i_crit_edge
  %20 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mapbase, align 4
  %22 = ptrtoint ptr %reg_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_size, align 4
  %call4.i = tail call ptr @ioremap(i32 noundef %21, i32 noundef %23) #9
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call4.i, ptr %membase.i, align 4
  %tobool7.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool7.not.i, label %if.then13, label %if.then3.i.cleanup_crit_edge, !prof !321

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mapbase, align 4
  %27 = inttoptr i32 %26 to ptr
  %28 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %membase.i, align 4
  br label %cleanup

if.then13:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %line.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %31 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %line.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.103, i32 noundef %32) #13
  %call14 = tail call i32 @release_resource(ptr noundef nonnull %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.else.i, %if.then3.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ -6, %if.then13 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then3.i.cleanup_crit_edge ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_config_port(ptr nocapture noundef %port, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cfg = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %type1 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %4 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %type1, align 4
  %call2 = tail call i32 @sci_request_port(ptr noundef %port)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sci_verify_port(ptr nocapture noundef readnone %port, ptr nocapture noundef readonly %ser) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 7
  %0 = ptrtoint ptr %baud_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %baud_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2400, i32 %1)
  %cmp = icmp slt i32 %1, 2400
  %. = select i1 %cmp, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_poll_put_char(ptr noundef %port, i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %1(ptr noundef %port, i32 noundef 3) #9
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %3)
  %cmp = icmp eq i32 %3, 52
  %cond = select i1 %cmp, i32 128, i32 32
  %and = and i32 %cond, %call.i
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  %conv3 = zext i8 %c to i32
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_out.i, align 4
  tail call void %5(ptr noundef %port, i32 noundef 6, i32 noundef %conv3) #9
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %7)
  %cmp5 = icmp eq i32 %7, 52
  %and12 = select i1 %cmp5, i32 -136, i32 -97
  br i1 %cmp5, label %do.end.sci_clear_SCxSR.exit_crit_edge, label %if.else.i

do.end.sci_clear_SCxSR.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_clear_SCxSR.exit

if.else.i:                                        ; preds = %do.end
  %params.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %8 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params.i, align 8
  %overrun_mask.i = getelementptr inbounds %struct.sci_port_params, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %overrun_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %overrun_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %11)
  %cmp1.i = icmp eq i32 %11, 512
  br i1 %cmp1.i, label %if.then2.i, label %if.else4.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_in.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %port, i32 noundef 3) #9
  %and.i = and i32 %call.i.i, %and12
  br label %sci_clear_SCxSR.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i = and i32 %and12, -65281
  br label %sci_clear_SCxSR.exit

sci_clear_SCxSR.exit:                             ; preds = %if.else4.i, %if.then2.i, %do.end.sci_clear_SCxSR.exit_crit_edge
  %and.sink.i = phi i32 [ %and.i, %if.then2.i ], [ %and5.i, %if.else4.i ], [ -136, %do.end.sci_clear_SCxSR.exit_crit_edge ]
  %14 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serial_out.i, align 4
  tail call void %15(ptr noundef %port, i32 noundef 3, i32 noundef %and.sink.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_poll_get_char(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in.i, align 4
  %call.i46 = tail call i32 %1(ptr noundef %port, i32 noundef 3) #9
  %conv147 = and i32 %call.i46, 65535
  %params = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 8
  %error_mask48 = getelementptr inbounds %struct.sci_port_params, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %error_mask48 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_mask48, align 4
  %and49 = and i32 %conv147, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool.not50 = icmp eq i32 %and49, 0
  br i1 %tobool.not50, label %entry.do.end_crit_edge, label %if.then.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then.lr.ph:                                    ; preds = %entry
  %type.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %serial_out.i14.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  br label %if.then

if.then:                                          ; preds = %sci_clear_SCxSR.exit.if.then_crit_edge, %if.then.lr.ph
  %6 = phi ptr [ %3, %if.then.lr.ph ], [ %20, %sci_clear_SCxSR.exit.if.then_crit_edge ]
  %error_clear = getelementptr inbounds %struct.sci_port_params, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %error_clear to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error_clear, align 4
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %10)
  %cmp.i = icmp eq i32 %10, 52
  br i1 %cmp.i, label %if.then.sci_clear_SCxSR.exit_crit_edge, label %if.else.i

if.then.sci_clear_SCxSR.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_clear_SCxSR.exit

if.else.i:                                        ; preds = %if.then
  %overrun_mask.i = getelementptr inbounds %struct.sci_port_params, ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %overrun_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %overrun_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %12)
  %cmp1.i = icmp eq i32 %12, 512
  br i1 %cmp1.i, label %if.then2.i, label %if.else4.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial_in.i, align 4
  %call.i.i = tail call i32 %14(ptr noundef %port, i32 noundef 3) #9
  %and.i = and i32 %call.i.i, %8
  br label %sci_clear_SCxSR.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i = and i32 %8, -65281
  br label %sci_clear_SCxSR.exit

sci_clear_SCxSR.exit:                             ; preds = %if.else4.i, %if.then2.i, %if.then.sci_clear_SCxSR.exit_crit_edge
  %and.sink.i = phi i32 [ %and.i, %if.then2.i ], [ %and5.i, %if.else4.i ], [ %8, %if.then.sci_clear_SCxSR.exit_crit_edge ]
  %15 = ptrtoint ptr %serial_out.i14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial_out.i14.i, align 4
  tail call void %16(ptr noundef %port, i32 noundef 3, i32 noundef %and.sink.i) #9
  %17 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %18(ptr noundef %port, i32 noundef 3) #9
  %conv1 = and i32 %call.i, 65535
  %19 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %params, align 8
  %error_mask = getelementptr inbounds %struct.sci_port_params, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %error_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error_mask, align 4
  %and = and i32 %conv1, %22
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sci_clear_SCxSR.exit.do.end_crit_edge, label %sci_clear_SCxSR.exit.if.then_crit_edge

sci_clear_SCxSR.exit.if.then_crit_edge:           ; preds = %sci_clear_SCxSR.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sci_clear_SCxSR.exit.do.end_crit_edge:            ; preds = %sci_clear_SCxSR.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %sci_clear_SCxSR.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call.i.lcssa = phi i32 [ %call.i46, %entry.do.end_crit_edge ], [ %call.i, %sci_clear_SCxSR.exit.do.end_crit_edge ]
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %24)
  %cmp = icmp eq i32 %24, 52
  %cond = select i1 %cmp, i32 64, i32 3
  %and7 = and i32 %cond, %call.i.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %25 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %serial_in.i, align 4
  %call.i28 = tail call i32 %26(ptr noundef %port, i32 noundef 7) #9
  %27 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %serial_in.i, align 4
  %call.i30 = tail call i32 %28(ptr noundef %port, i32 noundef 3) #9
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %30)
  %cmp14 = icmp eq i32 %30, 52
  %cond16 = select i1 %cmp14, i32 -68, i32 -4
  br i1 %cmp14, label %if.end10.sci_clear_SCxSR.exit45_crit_edge, label %if.else.i36

if.end10.sci_clear_SCxSR.exit45_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_clear_SCxSR.exit45

if.else.i36:                                      ; preds = %if.end10
  %31 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %params, align 8
  %overrun_mask.i34 = getelementptr inbounds %struct.sci_port_params, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %overrun_mask.i34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %overrun_mask.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %34)
  %cmp1.i35 = icmp eq i32 %34, 512
  br i1 %cmp1.i35, label %if.then2.i40, label %if.else4.i42

if.then2.i40:                                     ; preds = %if.else.i36
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %serial_in.i, align 4
  %call.i.i38 = tail call i32 %36(ptr noundef %port, i32 noundef 3) #9
  %and.i39 = and i32 %call.i.i38, %cond16
  br label %sci_clear_SCxSR.exit45

if.else4.i42:                                     ; preds = %if.else.i36
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i41 = and i32 %cond16, -65284
  br label %sci_clear_SCxSR.exit45

sci_clear_SCxSR.exit45:                           ; preds = %if.else4.i42, %if.then2.i40, %if.end10.sci_clear_SCxSR.exit45_crit_edge
  %and.sink.i43 = phi i32 [ %and.i39, %if.then2.i40 ], [ %and5.i41, %if.else4.i42 ], [ -68, %if.end10.sci_clear_SCxSR.exit45_crit_edge ]
  %serial_out.i14.i44 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %37 = ptrtoint ptr %serial_out.i14.i44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %serial_out.i14.i44, align 4
  tail call void %38(ptr noundef %port, i32 noundef 3, i32 noundef %and.sink.i43) #9
  br label %cleanup

cleanup:                                          ; preds = %sci_clear_SCxSR.exit45, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i28, %sci_clear_SCxSR.exit45 ], [ 16711680, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctrl_gpio_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_enable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sci_request_dma(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_request_dma.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_request_dma, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !323

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_request_dma.__UNIQUE_ID_ddebug260, ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cons = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32
  %4 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cons, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end.if.end9_crit_edge, label %land.lhs.true

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %do.end
  %index = getelementptr inbounds %struct.console, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index, align 2
  %conv = sext i16 %7 to i32
  %line6 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %8 = ptrtoint ptr %line6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp = icmp eq i32 %9, %conv
  br i1 %cmp, label %land.lhs.true.cleanup137_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true.cleanup137_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup137

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %dev10 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev10, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.end9.cleanup137_crit_edge, label %if.end13

if.end9.cleanup137_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup137

if.end13:                                         ; preds = %if.end9
  %cookie_tx = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 14
  %14 = ptrtoint ptr %cookie_tx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -22, ptr %cookie_tx, align 4
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call16 = tail call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.36, ptr noundef null) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end13.cleanup137_crit_edge, label %if.end19

if.end13.cleanup137_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup137

if.end19:                                         ; preds = %if.end13
  %call20 = tail call fastcc ptr @sci_request_dma_chan(ptr noundef %port, i32 noundef 1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_request_dma.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_request_dma, %if.then33)) #9
          to label %do.end37 [label %if.then33], !srcloc !323

if.then33:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_request_dma.__UNIQUE_ID_ddebug261, ptr noundef %18, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.34, ptr noundef %call20) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %if.end19
  %tobool38.not = icmp eq ptr %call20, null
  br i1 %tobool38.not, label %do.end37.if.end82_crit_edge, label %if.then39

do.end37.if.end82_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then39:                                        ; preds = %do.end37
  %19 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call20, align 4
  %dev40 = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev40, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state, align 4
  %xmit = getelementptr inbounds %struct.uart_state, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xmit, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %26) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then39
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !332

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %22) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %22, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %22, ptr noundef %26, i32 noundef 4096) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %26 to i32
  %sub.i = add i32 %32, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %31, i32 %shr.i
  %and.i = and i32 %32, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %22, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i213 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %tx_dma_addr = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 17
  %33 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i213, ptr %tx_dma_addr, align 4
  %34 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call20, align 4
  %dev43 = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev43, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %37, i32 noundef %retval.0.i213) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i213)
  %cmp.i = icmp eq i32 %retval.0.i213, -1
  br i1 %cmp.i, label %do.end50, label %do.body52

do.end50:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.38) #13
  tail call void @dma_release_channel(ptr noundef nonnull %call20) #9
  br label %if.end82

do.body52:                                        ; preds = %dma_map_single_attrs.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_request_dma.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_request_dma, %if.then64)) #9
          to label %do.body73 [label %if.then64], !srcloc !323

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev10, align 4
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state, align 4
  %xmit67 = getelementptr inbounds %struct.uart_state, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %xmit67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xmit67, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_request_dma.__UNIQUE_ID_ddebug262, ptr noundef %41, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.34, i32 noundef 4096, ptr noundef %45, ptr noundef %tx_dma_addr) #9
  br label %do.body73

do.body73:                                        ; preds = %if.then64, %do.body52
  %work_tx = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 22
  tail call void @__init_work(ptr noundef %work_tx, i32 noundef 0) #9
  %46 = ptrtoint ptr %work_tx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -64, ptr %work_tx, align 8
  %lockdep_map = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 22, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.41, ptr noundef nonnull @sci_request_dma.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry77 = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 22, i32 1
  %47 = ptrtoint ptr %entry77 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry77, ptr %entry77, align 4
  %prev.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 22, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry77, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 22, i32 2
  %49 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @sci_dma_tx_work_fn, ptr %func, align 4
  %chan_tx = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 10
  %50 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call20, ptr %chan_tx, align 4
  %chan_tx_saved = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 12
  %51 = ptrtoint ptr %chan_tx_saved to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call20, ptr %chan_tx_saved, align 4
  br label %if.end82

if.end82:                                         ; preds = %do.body73, %do.end50, %do.end37.if.end82_crit_edge
  %call83 = tail call fastcc ptr @sci_request_dma_chan(ptr noundef %port, i32 noundef 2)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_request_dma.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_request_dma, %if.then96)) #9
          to label %do.end100 [label %if.then96], !srcloc !323

if.then96:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_request_dma.__UNIQUE_ID_ddebug263, ptr noundef %53, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34, ptr noundef %call83) #9
  br label %do.end100

do.end100:                                        ; preds = %if.then96, %if.end82
  %tobool101.not = icmp eq ptr %call83, null
  br i1 %tobool101.not, label %do.end100.cleanup137_crit_edge, label %if.then102

do.end100.cleanup137_crit_edge:                   ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup137

if.then102:                                       ; preds = %do.end100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #9
  %54 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %dma, align 4, !annotation !333
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %55 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %56)
  %cmp105 = icmp ult i32 %56, 16
  %phi.bo = shl i32 %56, 1
  %cond = select i1 %cmp105, i32 32, i32 %phi.bo
  %buf_len_rx = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 21
  %57 = ptrtoint ptr %buf_len_rx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cond, ptr %buf_len_rx, align 4
  %58 = ptrtoint ptr %call83 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call83, align 4
  %dev108 = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev108, align 4
  %mul110 = shl i32 %cond, 1
  %call.i214 = call ptr @dma_alloc_attrs(ptr noundef %61, i32 noundef %mul110, ptr noundef nonnull %dma, i32 noundef 3264, i32 noundef 0) #9
  %tobool112.not = icmp eq ptr %call.i214, null
  br i1 %tobool112.not, label %do.end116, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then102
  %arrayidx = getelementptr %struct.sci_port, ptr %port, i32 0, i32 19, i32 0
  call void @sg_init_table(ptr noundef %arrayidx, i32 noundef 1) #9
  %arrayidx121 = getelementptr %struct.sci_port, ptr %port, i32 0, i32 20, i32 0
  %62 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i214, ptr %arrayidx121, align 4
  %63 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma, align 4
  %dma_address = getelementptr %struct.sci_port, ptr %port, i32 0, i32 19, i32 0, i32 3
  %65 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %dma_address, align 4
  %66 = ptrtoint ptr %buf_len_rx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buf_len_rx, align 4
  %dma_length = getelementptr %struct.sci_port, ptr %port, i32 0, i32 19, i32 0, i32 4
  %68 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %dma_length, align 4
  %add.ptr = getelementptr i8, ptr %call.i214, i32 %67
  %add = add i32 %67, %64
  store i32 %add, ptr %dma, align 4
  %arrayidx.1 = getelementptr %struct.sci_port, ptr %port, i32 0, i32 19, i32 1
  call void @sg_init_table(ptr noundef %arrayidx.1, i32 noundef 1) #9
  %arrayidx121.1 = getelementptr %struct.sci_port, ptr %port, i32 0, i32 20, i32 1
  %69 = ptrtoint ptr %arrayidx121.1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr, ptr %arrayidx121.1, align 4
  %70 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma, align 4
  %dma_address.1 = getelementptr %struct.sci_port, ptr %port, i32 0, i32 19, i32 1, i32 3
  %72 = ptrtoint ptr %dma_address.1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %dma_address.1, align 4
  %73 = ptrtoint ptr %buf_len_rx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buf_len_rx, align 4
  %dma_length.1 = getelementptr %struct.sci_port, ptr %port, i32 0, i32 19, i32 1, i32 4
  %75 = ptrtoint ptr %dma_length.1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %dma_length.1, align 4
  %add.1 = add i32 %74, %71
  store i32 %add.1, ptr %dma, align 4
  %rx_timer = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 23
  call void @hrtimer_init(ptr noundef %rx_timer, i32 noundef 1, i32 noundef 1) #9
  %function = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 23, i32 2
  %76 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @sci_dma_rx_timer_fn, ptr %function, align 8
  %chan_rx = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 11
  %77 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call83, ptr %chan_rx, align 8
  %chan_rx_saved = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 13
  %78 = ptrtoint ptr %chan_rx_saved to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call83, ptr %chan_rx_saved, align 8
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %79 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %type, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %80, label %for.body.preheader.cleanup_crit_edge [
    i32 83, label %for.body.preheader.if.then131_crit_edge
    i32 93, label %for.body.preheader.if.then131_crit_edge222
  ]

for.body.preheader.if.then131_crit_edge222:       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then131

for.body.preheader.if.then131_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then131

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end116:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.44) #13
  call void @dma_release_channel(ptr noundef nonnull %call83) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #9
  br label %cleanup137

if.then131:                                       ; preds = %for.body.preheader.if.then131_crit_edge, %for.body.preheader.if.then131_crit_edge222
  %call132 = call fastcc i32 @sci_dma_rx_submit(ptr noundef %port, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then131, %for.body.preheader.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #9
  br label %cleanup137

cleanup137:                                       ; preds = %cleanup, %do.end116, %do.end100.cleanup137_crit_edge, %if.end13.cleanup137_crit_edge, %if.end9.cleanup137_crit_edge, %land.lhs.true.cleanup137_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sci_free_dma(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_tx_saved = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 12
  %0 = ptrtoint ptr %chan_tx_saved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_tx_saved, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %work_tx.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 22
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work_tx.i) #9
  %chan_tx.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 10
  %2 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %chan_tx.i, align 4
  %3 = ptrtoint ptr %chan_tx_saved to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %chan_tx_saved, align 4
  %cookie_tx.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 14
  %4 = ptrtoint ptr %cookie_tx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -22, ptr %cookie_tx.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 47
  %7 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.then.sci_dma_tx_release.exit_crit_edge, label %dmaengine_terminate_async.exit.i.i

if.then.sci_dma_tx_release.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_dma_tx_release.exit

dmaengine_terminate_async.exit.i.i:               ; preds = %if.then
  %call.i.i.i = tail call i32 %8(ptr noundef nonnull %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %dmaengine_terminate_async.exit.i.i.sci_dma_tx_release.exit_crit_edge

dmaengine_terminate_async.exit.i.i.sci_dma_tx_release.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_dma_tx_release.exit

if.end.i.i:                                       ; preds = %dmaengine_terminate_async.exit.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.81, i32 noundef 1169) #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 48
  %11 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.sci_dma_tx_release.exit_crit_edge, label %if.then.i2.i.i

if.end.i.i.sci_dma_tx_release.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_dma_tx_release.exit

if.then.i2.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %12(ptr noundef nonnull %1) #9
  br label %sci_dma_tx_release.exit

sci_dma_tx_release.exit:                          ; preds = %if.then.i2.i.i, %if.end.i.i.sci_dma_tx_release.exit_crit_edge, %dmaengine_terminate_async.exit.i.i.sci_dma_tx_release.exit_crit_edge, %if.then.sci_dma_tx_release.exit_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %tx_dma_addr.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 17
  %17 = ptrtoint ptr %tx_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_dma_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %18, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #9
  tail call void @dma_release_channel(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %sci_dma_tx_release.exit, %entry.if.end_crit_edge
  %chan_rx_saved = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 13
  %19 = ptrtoint ptr %chan_rx_saved to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chan_rx_saved, align 8
  %tobool1.not = icmp eq ptr %20, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %21 = ptrtoint ptr %chan_rx_saved to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %chan_rx_saved, align 8
  %chan_rx.i.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 11
  %22 = ptrtoint ptr %chan_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %chan_rx.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.sci_port, ptr %port, i32 0, i32 15, i32 0
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -22, ptr %arrayidx.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.sci_port, ptr %port, i32 0, i32 15, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -22, ptr %arrayidx.1.i.i, align 4
  %active_rx.i.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 16
  %25 = ptrtoint ptr %active_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %active_rx.i.i, align 8
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %20, align 4
  %device_terminate_all.i.i.i7 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 47
  %28 = ptrtoint ptr %device_terminate_all.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_terminate_all.i.i.i7, align 4
  %tobool.not.i.i.i8 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i8, label %if.then2.sci_dma_rx_release.exit_crit_edge, label %dmaengine_terminate_async.exit.i.i11

if.then2.sci_dma_rx_release.exit_crit_edge:       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_dma_rx_release.exit

dmaengine_terminate_async.exit.i.i11:             ; preds = %if.then2
  %call.i.i.i9 = tail call i32 %29(ptr noundef nonnull %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %call.i.i.i9, 0
  br i1 %tobool.not.i.i10, label %if.end.i.i14, label %dmaengine_terminate_async.exit.i.i11.sci_dma_rx_release.exit_crit_edge

dmaengine_terminate_async.exit.i.i11.sci_dma_rx_release.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_dma_rx_release.exit

if.end.i.i14:                                     ; preds = %dmaengine_terminate_async.exit.i.i11
  tail call void @__might_sleep(ptr noundef nonnull @.str.81, i32 noundef 1169) #9
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %20, align 4
  %device_synchronize.i.i.i12 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 48
  %32 = ptrtoint ptr %device_synchronize.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_synchronize.i.i.i12, align 4
  %tobool.not.i1.i.i13 = icmp eq ptr %33, null
  br i1 %tobool.not.i1.i.i13, label %if.end.i.i14.sci_dma_rx_release.exit_crit_edge, label %if.then.i2.i.i15

if.end.i.i14.sci_dma_rx_release.exit_crit_edge:   ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_dma_rx_release.exit

if.then.i2.i.i15:                                 ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %33(ptr noundef nonnull %20) #9
  br label %sci_dma_rx_release.exit

sci_dma_rx_release.exit:                          ; preds = %if.then.i2.i.i15, %if.end.i.i14.sci_dma_rx_release.exit_crit_edge, %dmaengine_terminate_async.exit.i.i11.sci_dma_rx_release.exit_crit_edge, %if.then2.sci_dma_rx_release.exit_crit_edge
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %20, align 4
  %dev.i16 = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i16, align 4
  %buf_len_rx.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 21
  %38 = ptrtoint ptr %buf_len_rx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_len_rx.i, align 4
  %mul.i = shl i32 %39, 1
  %rx_buf.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 20
  %40 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_buf.i, align 4
  %dma_address.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 19, i32 0, i32 3
  %42 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_address.i, align 4
  tail call void @dma_free_attrs(ptr noundef %37, i32 noundef %mul.i, ptr noundef %41, i32 noundef %43, i32 noundef 0) #9
  tail call void @dma_release_channel(ptr noundef nonnull %20) #9
  br label %if.end3

if.end3:                                          ; preds = %sci_dma_rx_release.exit, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sci_request_dma_chan(ptr nocapture noundef readonly %port, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #9
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %cond = select i1 %cmp, ptr @.str.46, ptr @.str.47
  %call.i = tail call ptr @dma_request_chan(ptr noundef %1, ptr noundef nonnull %cond) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %tobool.not54 = icmp eq ptr %call.i, null
  %tobool.not = or i1 %cmp.i.i, %tobool.not54
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_request_dma_chan.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_request_dma_chan, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !323

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_request_dma_chan.__UNIQUE_ID_ddebug259, ptr noundef %3, ptr noundef nonnull @.str.49) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %4 = getelementptr inbounds i8, ptr %cfg, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 44)
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dir, ptr %cfg, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %7 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mapbase, align 4
  %params = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %9 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %params, align 8
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [20 x %struct.plat_sci_reg], ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %12 to i32
  %regshift = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %13 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %regshift, align 1
  %conv11 = zext i8 %14 to i32
  %shl = shl i32 %conv, %conv11
  %add = add i32 %shl, %8
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %15 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  br label %if.end23

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16 = getelementptr [20 x %struct.plat_sci_reg], ptr %10, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx16, align 2
  %conv18 = zext i8 %17 to i32
  %regshift19 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %18 = ptrtoint ptr %regshift19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %regshift19, align 1
  %conv20 = zext i8 %19 to i32
  %shl21 = shl i32 %conv18, %conv20
  %add22 = add i32 %shl21, %8
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %20 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add22, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then9
  %src_addr_width.sink = phi ptr [ %src_addr_width, %if.else ], [ %dst_addr_width, %if.then9 ]
  %21 = ptrtoint ptr %src_addr_width.sink to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %src_addr_width.sink, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end23.do.end29_crit_edge, label %dmaengine_slave_config.exit

if.end23.do.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

dmaengine_slave_config.exit:                      ; preds = %if.end23
  %call.i48 = call i32 %25(ptr noundef nonnull %call.i, ptr noundef nonnull %cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool25.not = icmp eq i32 %call.i48, 0
  br i1 %tobool25.not, label %dmaengine_slave_config.exit.cleanup_crit_edge, label %dmaengine_slave_config.exit.do.end29_crit_edge

dmaengine_slave_config.exit.do.end29_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

dmaengine_slave_config.exit.cleanup_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end29:                                         ; preds = %dmaengine_slave_config.exit.do.end29_crit_edge, %if.end23.do.end29_crit_edge
  %retval.0.i4953 = phi i32 [ %call.i48, %dmaengine_slave_config.exit.do.end29_crit_edge ], [ -38, %if.end23.do.end29_crit_edge ]
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i4953) #13
  call void @dma_release_channel(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %dmaengine_slave_config.exit.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi ptr [ null, %do.end29 ], [ null, %if.then5 ], [ %call.i, %dmaengine_slave_config.exit.cleanup_crit_edge ], [ null, %do.body ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #9
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_dma_tx_work_fn(ptr noundef %work) #2 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -552
  %chan_tx = getelementptr i8, ptr %work, i32 -92
  %0 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_tx, align 4
  %state = getelementptr i8, ptr %work, i32 -404
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %xmit2 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr) #9
  %head3 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %head3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head3, align 4
  %tail4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %tail4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail4, align 4
  %tx_dma_addr = getelementptr i8, ptr %work, i32 -60
  %8 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_dma_addr, align 4
  %and = and i32 %7, 4095
  %add = add i32 %9, %and
  %sub = sub i32 %5, %7
  %and5 = and i32 %sub, 4095
  %sub6 = sub i32 4096, %7
  %add7 = add i32 %sub6, %5
  %and8 = and i32 %add7, 4095
  %10 = tail call i32 @llvm.smin.i32(i32 %and8, i32 %sub6)
  %11 = tail call i32 @llvm.umin.i32(i32 %and5, i32 %10)
  %tx_dma_len = getelementptr i8, ptr %work, i32 -56
  %12 = ptrtoint ptr %tx_dma_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tx_dma_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #9
  %13 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %15 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #9
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %13, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %11, ptr %14, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %21, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #9
  br label %if.then20

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i = call ptr %21(ptr noundef nonnull %1, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #9
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %dmaengine_prep_slave_single.exit.if.then20_crit_edge, label %if.end22

dmaengine_prep_slave_single.exit.if.then20_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then20:                                        ; preds = %dmaengine_prep_slave_single.exit.if.then20_crit_edge, %dmaengine_prep_slave_single.exit.thread
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #9
  br label %do.body51

if.end22:                                         ; preds = %dmaengine_prep_slave_single.exit
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %dev23 = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev23, align 4
  %26 = ptrtoint ptr %tx_dma_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_dma_len, align 8
  call void @dma_sync_single_for_device(ptr noundef %25, i32 noundef %add, i32 noundef %27, i32 noundef 1) #9
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @sci_dma_tx_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_submit.i, align 4
  %call.i112 = call i32 %31(ptr noundef nonnull %call.i) #9
  %cookie_tx = getelementptr i8, ptr %work, i32 -76
  %32 = ptrtoint ptr %cookie_tx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i112, ptr %cookie_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i112)
  %tobool28.not = icmp sgt i32 %call.i112, -1
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #9
  br i1 %tobool28.not, label %if.end35, label %if.end22.do.body51_crit_edge

if.end22.do.body51_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51

if.end35:                                         ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_dma_tx_work_fn.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_dma_tx_work_fn, %if.then43)) #9
          to label %do.end49 [label %if.then43], !srcloc !323

if.then43:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %dev44 = getelementptr i8, ptr %work, i32 -304
  %33 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev44, align 4
  %35 = ptrtoint ptr %xmit2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xmit2, align 4
  %37 = ptrtoint ptr %cookie_tx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cookie_tx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_dma_tx_work_fn.__UNIQUE_ID_ddebug255, ptr noundef %34, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.54, ptr noundef %36, i32 noundef %7, i32 noundef %5, i32 noundef %38) #9
  br label %do.end49

do.end49:                                         ; preds = %if.then43, %if.end35
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 50
  %41 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device_issue_pending.i, align 4
  call void %42(ptr noundef nonnull %1) #9
  br label %cleanup

do.body51:                                        ; preds = %if.end22.do.body51_crit_edge, %if.then20
  %.str.56.sink = phi ptr [ @.str.53, %if.then20 ], [ @.str.56, %if.end22.do.body51_crit_edge ]
  %dev34 = getelementptr i8, ptr %work, i32 -304
  %43 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev34, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull %.str.56.sink) #13
  %call56 = call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %45 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %chan_tx, align 4
  call void @sci_start_tx(ptr noundef %add.ptr)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call56) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body51, %do.end49, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_dma_rx_timer_fn(ptr noundef %t) #2 align 64 {
entry:
  %state = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -600
  %chan_rx = getelementptr i8, ptr %t, i32 -136
  %0 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_rx, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #9
  %2 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %3 = call ptr @memset(ptr %state, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_dma_rx_timer_fn.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_dma_rx_timer_fn, %if.then)) #9
          to label %do.body6 [label %if.then], !srcloc !323

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %t, i32 -352
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_dma_rx_timer_fn.__UNIQUE_ID_ddebug256, ptr noundef %5, ptr noundef nonnull @.str.61) #9
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %active_rx.i = getelementptr i8, ptr %t, i32 -112
  %6 = ptrtoint ptr %active_rx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_rx.i, align 8
  %arrayidx.i = getelementptr i8, ptr %t, i32 -120
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp1.i = icmp eq i32 %7, %9
  br i1 %cmp1.i, label %do.body6.if.end19_crit_edge, label %for.inc.i

do.body6.if.end19_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

for.inc.i:                                        ; preds = %do.body6
  %arrayidx.1.i = getelementptr i8, ptr %t, i32 -116
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp1.1.i = icmp eq i32 %7, %11
  br i1 %cmp1.1.i, label %for.inc.i.if.end19_crit_edge, label %if.then17

for.inc.i.if.end19_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call9) #9
  br label %cleanup

if.end19:                                         ; preds = %for.inc.i.if.end19_crit_edge, %do.body6.if.end19_crit_edge
  %retval.0.i137.ph = phi i32 [ 0, %do.body6.if.end19_crit_edge ], [ 1, %for.inc.i.if.end19_crit_edge ]
  %12 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan_rx, align 8
  %14 = ptrtoint ptr %active_rx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %active_rx.i, align 8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 49
  %18 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %19(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp eq i32 %call.i, 0
  br i1 %cmp22, label %if.then24, label %if.end44

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call9) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_dma_rx_timer_fn.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_dma_rx_timer_fn, %if.then38)) #9
          to label %cleanup [label %if.then38], !srcloc !323

if.then38:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %dev39 = getelementptr i8, ptr %t, i32 -352
  %20 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev39, align 4
  %22 = ptrtoint ptr %active_rx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active_rx.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_dma_rx_timer_fn.__UNIQUE_ID_ddebug257, ptr noundef %21, ptr noundef nonnull @.str.62, i32 noundef %23, i32 noundef %retval.0.i137.ph) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end19
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %device_pause.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 45
  %26 = ptrtoint ptr %device_pause.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_pause.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end44.dmaengine_pause.exit_crit_edge, label %if.then.i

if.end44.dmaengine_pause.exit_crit_edge:          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_pause.exit

if.then.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %call.i138 = call i32 %27(ptr noundef %1) #9
  br label %dmaengine_pause.exit

dmaengine_pause.exit:                             ; preds = %if.then.i, %if.end44.dmaengine_pause.exit_crit_edge
  %28 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan_rx, align 8
  %30 = ptrtoint ptr %active_rx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %active_rx.i, align 8
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %device_tx_status.i139 = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 49
  %34 = ptrtoint ptr %device_tx_status.i139 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_tx_status.i139, align 4
  %call.i140 = call i32 %35(ptr noundef %29, i32 noundef %31, ptr noundef nonnull %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %cmp49 = icmp eq i32 %call.i140, 0
  br i1 %cmp49, label %if.then51, label %if.end70

if.then51:                                        ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call9) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_dma_rx_timer_fn.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_dma_rx_timer_fn, %if.then65)) #9
          to label %cleanup [label %if.then65], !srcloc !323

if.then65:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  %dev66 = getelementptr i8, ptr %t, i32 -352
  %36 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev66, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_dma_rx_timer_fn.__UNIQUE_ID_ddebug258, ptr noundef %37, ptr noundef nonnull @.str.63) #9
  br label %cleanup

if.end70:                                         ; preds = %dmaengine_pause.exit
  %38 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chan_rx, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 47
  %42 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i141 = icmp eq ptr %43, null
  br i1 %tobool.not.i141, label %if.end70.dmaengine_terminate_async.exit_crit_edge, label %if.then.i143

if.end70.dmaengine_terminate_async.exit_crit_edge: ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_async.exit

if.then.i143:                                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %call.i142 = call i32 %43(ptr noundef %39) #9
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i143, %if.end70.dmaengine_terminate_async.exit_crit_edge
  %sg_rx = getelementptr i8, ptr %t, i32 -100
  %arrayidx = getelementptr [2 x %struct.scatterlist], ptr %sg_rx, i32 0, i32 %retval.0.i137.ph
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %arrayidx, i32 0, i32 4
  %44 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_length, align 4
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %tobool73.not = icmp eq i32 %45, %47
  br i1 %tobool73.not, label %dmaengine_terminate_async.exit.if.end82_crit_edge, label %if.then74

dmaengine_terminate_async.exit.if.end82_crit_edge: ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then74:                                        ; preds = %dmaengine_terminate_async.exit
  %sub = sub i32 %45, %47
  %rx_buf = getelementptr i8, ptr %t, i32 -60
  %arrayidx75 = getelementptr [2 x ptr], ptr %rx_buf, i32 0, i32 %retval.0.i137.ph
  %48 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx75, align 4
  %state.i = getelementptr i8, ptr %t, i32 -452
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %state.i, align 4
  %call.i.i = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %51, ptr noundef %49, i8 noundef zeroext 0, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %sub)
  %cmp.i = icmp ult i32 %call.i.i, %sub
  br i1 %cmp.i, label %if.then.i145, label %if.then74.sci_dma_rx_push.exit_crit_edge

if.then74.sci_dma_rx_push.exit_crit_edge:         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_dma_rx_push.exit

if.then.i145:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  %buf_overrun.i = getelementptr i8, ptr %t, i32 -408
  %52 = ptrtoint ptr %buf_overrun.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %buf_overrun.i, align 4
  %inc.i = add i32 %53, 1
  store i32 %inc.i, ptr %buf_overrun.i, align 4
  br label %sci_dma_rx_push.exit

sci_dma_rx_push.exit:                             ; preds = %if.then.i145, %if.then74.sci_dma_rx_push.exit_crit_edge
  %rx.i = getelementptr i8, ptr %t, i32 -432
  %54 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx.i, align 4
  %add.i = add i32 %55, %call.i.i
  store i32 %add.i, ptr %rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool77.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool77.not, label %sci_dma_rx_push.exit.if.end82_crit_edge, label %if.then78

sci_dma_rx_push.exit.if.end82_crit_edge:          ; preds = %sci_dma_rx_push.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then78:                                        ; preds = %sci_dma_rx_push.exit
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %state.i, align 4
  call void @tty_flip_buffer_push(ptr noundef %57) #9
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %sci_dma_rx_push.exit.if.end82_crit_edge, %dmaengine_terminate_async.exit.if.end82_crit_edge
  %type = getelementptr i8, ptr %t, i32 -380
  %58 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %59, label %if.end82.if.end90_crit_edge [
    i32 83, label %if.end82.if.then88_crit_edge
    i32 93, label %if.end82.if.then88_crit_edge155
  ]

if.end82.if.then88_crit_edge155:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then88

if.end82.if.then88_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then88

if.end82.if.end90_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then88:                                        ; preds = %if.end82.if.then88_crit_edge, %if.end82.if.then88_crit_edge155
  %call89 = call fastcc i32 @sci_dma_rx_submit(ptr noundef %add.ptr, i1 noundef zeroext true)
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end82.if.end90_crit_edge
  %serial_in.i.i = getelementptr i8, ptr %t, i32 -548
  %61 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i146 = call i32 %62(ptr noundef %add.ptr, i32 noundef 2) #9
  %63 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %type, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %64, label %if.end90.sci_dma_rx_reenable_irq.exit_crit_edge [
    i32 83, label %if.end90.if.then.i148_crit_edge
    i32 93, label %if.end90.if.then.i148_crit_edge156
  ]

if.end90.if.then.i148_crit_edge156:               ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i148

if.end90.if.then.i148_crit_edge:                  ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i148

if.end90.sci_dma_rx_reenable_irq.exit_crit_edge:  ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_dma_rx_reenable_irq.exit

if.then.i148:                                     ; preds = %if.end90.if.then.i148_crit_edge, %if.end90.if.then.i148_crit_edge156
  %and.i = and i32 %call.i.i146, 49151
  %arrayidx.i147 = getelementptr i8, ptr %t, i32 -184
  %66 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i147, align 4
  call void @enable_irq(i32 noundef %67) #9
  br label %sci_dma_rx_reenable_irq.exit

sci_dma_rx_reenable_irq.exit:                     ; preds = %if.then.i148, %if.end90.sci_dma_rx_reenable_irq.exit_crit_edge
  %scr.0.i = phi i32 [ %and.i, %if.then.i148 ], [ %call.i.i146, %if.end90.sci_dma_rx_reenable_irq.exit_crit_edge ]
  %conv8.i = and i32 %scr.0.i, 65471
  %or.i = or i32 %conv8.i, 64
  %serial_out.i.i = getelementptr i8, ptr %t, i32 -544
  %68 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %serial_out.i.i, align 4
  call void %69(ptr noundef %add.ptr, i32 noundef 2, i32 noundef %or.i) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %sci_dma_rx_reenable_irq.exit, %if.then65, %if.then51, %if.then38, %if.then24, %if.then17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sci_dma_rx_submit(ptr noundef %s, i1 noundef zeroext %port_lock_held) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_rx = getelementptr inbounds %struct.sci_port, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_rx, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %arrayidx = getelementptr %struct.sci_port, ptr %s, i32 0, i32 19, i32 0
  br i1 %tobool.not.i, label %entry.fail_crit_edge, label %lor.lhs.false.i

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.fail_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.fail_crit_edge:                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.fail_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.fail_crit_edge:                  ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %5(ptr noundef nonnull %1, ptr noundef %arrayidx, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_slave_sg.exit.fail_crit_edge, label %if.end

dmaengine_prep_slave_sg.exit.fail_crit_edge:      ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end:                                           ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sci_dma_rx_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %s, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_submit.i, align 4
  %call.i55 = tail call i32 %9(ptr noundef nonnull %call.i) #9
  %arrayidx3 = getelementptr %struct.sci_port, ptr %s, i32 0, i32 15, i32 0
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i55, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i55)
  %tobool7.not = icmp sgt i32 %call.i55, -1
  br i1 %tobool7.not, label %lor.lhs.false.i.1, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

lor.lhs.false.i.1:                                ; preds = %if.end
  %arrayidx.1 = getelementptr %struct.sci_port, ptr %s, i32 0, i32 19, i32 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %tobool1.not.i.1 = icmp eq ptr %12, null
  br i1 %tobool1.not.i.1, label %lor.lhs.false.i.1.fail_crit_edge, label %lor.lhs.false2.i.1

lor.lhs.false.i.1.fail_crit_edge:                 ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

lor.lhs.false2.i.1:                               ; preds = %lor.lhs.false.i.1
  %device_prep_slave_sg.i.1 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 39
  %13 = ptrtoint ptr %device_prep_slave_sg.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_prep_slave_sg.i.1, align 4
  %tobool4.not.i.1 = icmp eq ptr %14, null
  br i1 %tobool4.not.i.1, label %lor.lhs.false2.i.1.fail_crit_edge, label %dmaengine_prep_slave_sg.exit.1

lor.lhs.false2.i.1.fail_crit_edge:                ; preds = %lor.lhs.false2.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

dmaengine_prep_slave_sg.exit.1:                   ; preds = %lor.lhs.false2.i.1
  %call.i.1 = tail call ptr %14(ptr noundef nonnull %1, ptr noundef %arrayidx.1, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #9
  %tobool.not.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.1, label %dmaengine_prep_slave_sg.exit.1.fail_crit_edge, label %if.end.1

dmaengine_prep_slave_sg.exit.1.fail_crit_edge:    ; preds = %dmaengine_prep_slave_sg.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end.1:                                         ; preds = %dmaengine_prep_slave_sg.exit.1
  %callback.1 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.1, i32 0, i32 6
  %15 = ptrtoint ptr %callback.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sci_dma_rx_complete, ptr %callback.1, align 4
  %callback_param.1 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.1, i32 0, i32 8
  %16 = ptrtoint ptr %callback_param.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %s, ptr %callback_param.1, align 4
  %tx_submit.i.1 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.1, i32 0, i32 4
  %17 = ptrtoint ptr %tx_submit.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_submit.i.1, align 4
  %call.i55.1 = tail call i32 %18(ptr noundef nonnull %call.i.1) #9
  %arrayidx3.1 = getelementptr %struct.sci_port, ptr %s, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i55.1, ptr %arrayidx3.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i55.1)
  %tobool7.not.1 = icmp sgt i32 %call.i55.1, -1
  br i1 %tobool7.not.1, label %for.inc.1, label %if.end.1.fail_crit_edge

if.end.1.fail_crit_edge:                          ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

for.inc.1:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx3, align 8
  %active_rx = getelementptr inbounds %struct.sci_port, ptr %s, i32 0, i32 16
  %22 = ptrtoint ptr %active_rx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %active_rx, align 8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 50
  %25 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %26(ptr noundef nonnull %1) #9
  br label %cleanup30

fail:                                             ; preds = %if.end.1.fail_crit_edge, %dmaengine_prep_slave_sg.exit.1.fail_crit_edge, %lor.lhs.false2.i.1.fail_crit_edge, %lor.lhs.false.i.1.fail_crit_edge, %if.end.fail_crit_edge, %dmaengine_prep_slave_sg.exit.fail_crit_edge, %lor.lhs.false2.i.fail_crit_edge, %lor.lhs.false.i.fail_crit_edge, %entry.fail_crit_edge
  %tobool22.not = phi i1 [ false, %if.end.1.fail_crit_edge ], [ false, %dmaengine_prep_slave_sg.exit.1.fail_crit_edge ], [ false, %lor.lhs.false2.i.1.fail_crit_edge ], [ false, %lor.lhs.false.i.1.fail_crit_edge ], [ true, %entry.fail_crit_edge ], [ true, %lor.lhs.false.i.fail_crit_edge ], [ true, %lor.lhs.false2.i.fail_crit_edge ], [ true, %dmaengine_prep_slave_sg.exit.fail_crit_edge ], [ true, %if.end.fail_crit_edge ]
  br i1 %port_lock_held, label %fail.if.end21_crit_edge, label %do.body15

fail.if.end21_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.body15:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %s) #9
  br label %if.end21

if.end21:                                         ; preds = %do.body15, %fail.if.end21_crit_edge
  %flags.0 = phi i32 [ -1, %fail.if.end21_crit_edge ], [ %call18, %do.body15 ]
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 47
  %29 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i56 = icmp eq ptr %30, null
  br i1 %tobool.not.i56, label %if.then23.if.end25_crit_edge, label %if.then.i

if.then23.if.end25_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %call.i57 = tail call i32 %30(ptr noundef %1) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then.i, %if.then23.if.end25_crit_edge, %if.end21.if.end25_crit_edge
  %31 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %chan_rx, align 8
  %arrayidx.i = getelementptr %struct.sci_port, ptr %s, i32 0, i32 15, i32 0
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -22, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.sci_port, ptr %s, i32 0, i32 15, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -22, ptr %arrayidx.1.i, align 4
  %active_rx.i = getelementptr inbounds %struct.sci_port, ptr %s, i32 0, i32 16
  %34 = ptrtoint ptr %active_rx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %active_rx.i, align 8
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 3
  %35 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %36(ptr noundef %s, i32 noundef 2) #9
  %cfg.i.i = getelementptr inbounds %struct.sci_port, ptr %s, i32 0, i32 2
  %37 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i.i, align 4
  %scscr.i.i = getelementptr inbounds %struct.plat_sci_port, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %scscr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scscr.i.i, align 4
  %and.i.i = and i32 %40, 8
  %or.i.i = or i32 %call.i.i, %and.i.i
  %or.i = or i32 %or.i.i, 64
  %type.i = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 38
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %42, label %if.end25.sci_start_rx.exit_crit_edge [
    i32 83, label %if.end25.if.then.i59_crit_edge
    i32 93, label %if.end25.if.then.i59_crit_edge67
  ]

if.end25.if.then.i59_crit_edge67:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i59

if.end25.if.then.i59_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i59

if.end25.sci_start_rx.exit_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_start_rx.exit

if.then.i59:                                      ; preds = %if.end25.if.then.i59_crit_edge, %if.end25.if.then.i59_crit_edge67
  %and.i = and i32 %or.i, 49151
  br label %sci_start_rx.exit

sci_start_rx.exit:                                ; preds = %if.then.i59, %if.end25.sci_start_rx.exit_crit_edge
  %ctrl.0.i = phi i32 [ %and.i, %if.then.i59 ], [ %or.i, %if.end25.sci_start_rx.exit_crit_edge ]
  %conv8.i = and i32 %ctrl.0.i, 65535
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 4
  %44 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %45(ptr noundef %s, i32 noundef 2, i32 noundef %conv8.i) #9
  br i1 %port_lock_held, label %sci_start_rx.exit.cleanup30_crit_edge, label %if.then27

sci_start_rx.exit.cleanup30_crit_edge:            ; preds = %sci_start_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

if.then27:                                        ; preds = %sci_start_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %s, i32 noundef %flags.0) #9
  br label %cleanup30

cleanup30:                                        ; preds = %if.then27, %sci_start_rx.exit.cleanup30_crit_edge, %for.inc.1
  %retval.0 = phi i32 [ 0, %for.inc.1 ], [ -11, %if.then27 ], [ -11, %sci_start_rx.exit.cleanup30_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_dma_tx_complete(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_dma_tx_complete.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_dma_tx_complete, %if.then)) #9
          to label %do.body6 [label %if.then], !srcloc !323

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_dma_tx_complete.__UNIQUE_ID_ddebug250, ptr noundef %3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.59, i32 noundef %5) #9
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arg) #9
  %tx_dma_len = getelementptr inbounds %struct.sci_port, ptr %arg, i32 0, i32 18
  %6 = ptrtoint ptr %tx_dma_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_dma_len, align 8
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  %add = add i32 %9, %7
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %10 = load i32, ptr %tx_dma_len, align 8
  %tx = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 31, i32 5
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx, align 4
  %add16 = add i32 %12, %10
  store i32 %add16, ptr %tx, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head, align 4
  %15 = load i32, ptr %tail, align 4
  %sub = sub i32 %14, %15
  %and18 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %if.then21, label %do.body6.if.end22_crit_edge

do.body6.if.end22_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uart_write_wakeup(ptr noundef %arg) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.body6.if.end22_crit_edge
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %head, align 4
  %18 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp25 = icmp eq i32 %17, %19
  %cookie_tx29 = getelementptr inbounds %struct.sci_port, ptr %arg, i32 0, i32 14
  br i1 %cmp25, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %cookie_tx29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cookie_tx29, align 4
  %work_tx = getelementptr inbounds %struct.sci_port, ptr %arg, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %work_tx) #9
  br label %if.end41

if.else:                                          ; preds = %if.end22
  %22 = ptrtoint ptr %cookie_tx29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -22, ptr %cookie_tx29, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 38
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %24, label %if.else.if.end41_crit_edge [
    i32 83, label %if.else.if.then35_crit_edge
    i32 93, label %if.else.if.then35_crit_edge64
  ]

if.else.if.then35_crit_edge64:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.else.if.then35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then35:                                        ; preds = %if.else.if.then35_crit_edge, %if.else.if.then35_crit_edge64
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 3
  %26 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %27(ptr noundef %arg, i32 noundef 2) #9
  %and39 = and i32 %call.i, 65407
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 4
  %28 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %serial_out.i, align 4
  tail call void %29(ptr noundef %arg, i32 noundef 2, i32 noundef %and39) #9
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.else.if.end41_crit_edge, %if.then27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arg, i32 noundef %call9) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_dma_rx_complete(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_rx = getelementptr inbounds %struct.sci_port, ptr %arg, i32 0, i32 11
  %0 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_rx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_dma_rx_complete.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_dma_rx_complete, %if.then)) #9
          to label %do.body5 [label %if.then], !srcloc !323

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  %active_rx = getelementptr inbounds %struct.sci_port, ptr %arg, i32 0, i32 16
  %6 = ptrtoint ptr %active_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_rx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_dma_rx_complete.__UNIQUE_ID_ddebug251, ptr noundef %3, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i32 noundef %5, i32 noundef %7) #9
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arg) #9
  %active_rx.i = getelementptr inbounds %struct.sci_port, ptr %arg, i32 0, i32 16
  %8 = ptrtoint ptr %active_rx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active_rx.i, align 8
  %arrayidx.i = getelementptr %struct.sci_port, ptr %arg, i32 0, i32 15, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp1.i = icmp eq i32 %9, %11
  br i1 %cmp1.i, label %do.body5.if.then16_crit_edge, label %for.inc.i

do.body5.if.then16_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

for.inc.i:                                        ; preds = %do.body5
  %arrayidx.1.i = getelementptr %struct.sci_port, ptr %arg, i32 0, i32 15, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp1.1.i = icmp eq i32 %9, %13
  br i1 %cmp1.1.i, label %for.inc.i.if.then16_crit_edge, label %if.end22.critedge

for.inc.i.if.then16_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %for.inc.i.if.then16_crit_edge, %do.body5.if.then16_crit_edge
  %retval.0.i135.ph = phi i32 [ 0, %do.body5.if.then16_crit_edge ], [ 1, %for.inc.i.if.then16_crit_edge ]
  %arrayidx = getelementptr %struct.sci_port, ptr %arg, i32 0, i32 20, i32 %retval.0.i135.ph
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %buf_len_rx = getelementptr inbounds %struct.sci_port, ptr %arg, i32 0, i32 21
  %16 = ptrtoint ptr %buf_len_rx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_len_rx, align 4
  %state.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 30
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state.i, align 4
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %19, ptr noundef %15, i8 noundef zeroext 0, i32 noundef %17) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %17)
  %cmp.i = icmp ult i32 %call.i.i, %17
  br i1 %cmp.i, label %if.then.i, label %if.then16.sci_dma_rx_push.exit_crit_edge

if.then16.sci_dma_rx_push.exit_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_dma_rx_push.exit

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %buf_overrun.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 31, i32 10
  %20 = ptrtoint ptr %buf_overrun.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_overrun.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %buf_overrun.i, align 4
  br label %sci_dma_rx_push.exit

sci_dma_rx_push.exit:                             ; preds = %if.then.i, %if.then16.sci_dma_rx_push.exit_crit_edge
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 31, i32 4
  %22 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx.i, align 4
  %add.i = add i32 %23, %call.i.i
  store i32 %add.i, ptr %rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %phi.cmp = icmp eq i32 %call.i.i, 0
  %rx_timer = getelementptr inbounds %struct.sci_port, ptr %arg, i32 0, i32 23
  %rx_timeout = getelementptr inbounds %struct.sci_port, ptr %arg, i32 0, i32 24
  %24 = ptrtoint ptr %rx_timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_timeout, align 8
  %.frozen = freeze i32 %25
  %div.i = udiv i32 %.frozen, 1000000
  %26 = mul i32 %div.i, 1000000
  %rem.i.decomposed = sub i32 %.frozen, %26
  %mul.i = mul nuw nsw i32 %rem.i.decomposed, 1000
  %27 = zext i32 %div.i to i64
  %mul.i.i = mul nuw nsw i64 %27, 1000000000
  %conv.i.i = zext i32 %mul.i to i64
  %add.i.i = add nuw nsw i64 %mul.i.i, %conv.i.i
  tail call void @hrtimer_start_range_ns(ptr noundef %rx_timer, i64 noundef %add.i.i, i64 noundef 0, i32 noundef 1) #9
  br i1 %phi.cmp, label %sci_dma_rx_push.exit.if.end22_crit_edge, label %if.then20

sci_dma_rx_push.exit.if.end22_crit_edge:          ; preds = %sci_dma_rx_push.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %sci_dma_rx_push.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state.i, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %29) #9
  br label %if.end22

if.end22.critedge:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_timer.c = getelementptr inbounds %struct.sci_port, ptr %arg, i32 0, i32 23
  %rx_timeout.c = getelementptr inbounds %struct.sci_port, ptr %arg, i32 0, i32 24
  %30 = ptrtoint ptr %rx_timeout.c to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_timeout.c, align 8
  %.frozen163 = freeze i32 %31
  %div.i136 = udiv i32 %.frozen163, 1000000
  %32 = mul i32 %div.i136, 1000000
  %rem.i137.decomposed = sub i32 %.frozen163, %32
  %mul.i138 = mul nuw nsw i32 %rem.i137.decomposed, 1000
  %33 = zext i32 %div.i136 to i64
  %mul.i.i139 = mul nuw nsw i64 %33, 1000000000
  %conv.i.i140 = zext i32 %mul.i138 to i64
  %add.i.i141 = add nuw nsw i64 %mul.i.i139, %conv.i.i140
  tail call void @hrtimer_start_range_ns(ptr noundef %rx_timer.c, i64 noundef %add.i.i141, i64 noundef 0, i32 noundef 1) #9
  br label %if.end22

if.end22:                                         ; preds = %if.end22.critedge, %if.then20, %sci_dma_rx_push.exit.if.end22_crit_edge
  %retval.0.i135159 = phi i32 [ -1, %if.end22.critedge ], [ %retval.0.i135.ph, %if.then20 ], [ %retval.0.i135.ph, %sci_dma_rx_push.exit.if.end22_crit_edge ]
  %34 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chan_rx, align 8
  %arrayidx24 = getelementptr %struct.sci_port, ptr %arg, i32 0, i32 19, i32 %retval.0.i135159
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end22.fail_crit_edge, label %lor.lhs.false.i

if.end22.fail_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

lor.lhs.false.i:                                  ; preds = %if.end22
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool1.not.i = icmp eq ptr %37, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.fail_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.fail_crit_edge:                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 39
  %38 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %39, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.fail_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.fail_crit_edge:                  ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %39(ptr noundef nonnull %35, ptr noundef %arrayidx24, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #9
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %dmaengine_prep_slave_sg.exit.fail_crit_edge, label %if.end28

dmaengine_prep_slave_sg.exit.fail_crit_edge:      ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end28:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @sci_dma_rx_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %41 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arg, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %42 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_submit.i, align 4
  %call.i143 = tail call i32 %43(ptr noundef nonnull %call.i) #9
  %arrayidx30 = getelementptr %struct.sci_port, ptr %arg, i32 0, i32 15, i32 %retval.0.i135159
  %44 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call.i143, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i143)
  %tobool34.not = icmp sgt i32 %call.i143, -1
  br i1 %tobool34.not, label %if.end36, label %if.end28.fail_crit_edge

if.end28.fail_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i135159)
  %tobool38.not = icmp eq i32 %retval.0.i135159, 0
  %lnot.ext40 = zext i1 %tobool38.not to i32
  %arrayidx41 = getelementptr %struct.sci_port, ptr %arg, i32 0, i32 15, i32 %lnot.ext40
  %45 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx41, align 4
  %47 = ptrtoint ptr %active_rx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %active_rx.i, align 8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 50
  %50 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %51(ptr noundef %1) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arg, i32 noundef %call8) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_dma_rx_complete.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_dma_rx_complete, %if.then56)) #9
          to label %cleanup [label %if.then56], !srcloc !323

if.then56:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %dev57 = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 45
  %52 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev57, align 4
  %54 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx30, align 4
  %56 = ptrtoint ptr %active_rx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %active_rx.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_dma_rx_complete.__UNIQUE_ID_ddebug252, ptr noundef %53, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef %55, i32 noundef %retval.0.i135159, i32 noundef %57) #9
  br label %cleanup

fail:                                             ; preds = %if.end28.fail_crit_edge, %dmaengine_prep_slave_sg.exit.fail_crit_edge, %lor.lhs.false2.i.fail_crit_edge, %lor.lhs.false.i.fail_crit_edge, %if.end22.fail_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arg, i32 noundef %call8) #9
  %dev68 = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 45
  %58 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev68, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.67) #13
  %call78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arg) #9
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 47
  %62 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i144 = icmp eq ptr %63, null
  br i1 %tobool.not.i144, label %fail.dmaengine_terminate_async.exit_crit_edge, label %if.then.i146

fail.dmaengine_terminate_async.exit_crit_edge:    ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_async.exit

if.then.i146:                                     ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  %call.i145 = tail call i32 %63(ptr noundef %1) #9
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i146, %fail.dmaengine_terminate_async.exit_crit_edge
  %64 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %chan_rx, align 8
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -22, ptr %arrayidx.i, align 4
  %arrayidx.1.i149 = getelementptr %struct.sci_port, ptr %arg, i32 0, i32 15, i32 1
  %66 = ptrtoint ptr %arrayidx.1.i149 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -22, ptr %arrayidx.1.i149, align 4
  %67 = ptrtoint ptr %active_rx.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %active_rx.i, align 8
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 3
  %68 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i151 = tail call i32 %69(ptr noundef %arg, i32 noundef 2) #9
  %type.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 38
  %70 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type.i, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %71, label %dmaengine_terminate_async.exit.sci_dma_rx_reenable_irq.exit_crit_edge [
    i32 83, label %dmaengine_terminate_async.exit.if.then.i153_crit_edge
    i32 93, label %dmaengine_terminate_async.exit.if.then.i153_crit_edge164
  ]

dmaengine_terminate_async.exit.if.then.i153_crit_edge164: ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i153

dmaengine_terminate_async.exit.if.then.i153_crit_edge: ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i153

dmaengine_terminate_async.exit.sci_dma_rx_reenable_irq.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_dma_rx_reenable_irq.exit

if.then.i153:                                     ; preds = %dmaengine_terminate_async.exit.if.then.i153_crit_edge, %dmaengine_terminate_async.exit.if.then.i153_crit_edge164
  %and.i = and i32 %call.i.i151, 49151
  %arrayidx.i152 = getelementptr %struct.sci_port, ptr %arg, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i152, align 4
  tail call void @enable_irq(i32 noundef %74) #9
  br label %sci_dma_rx_reenable_irq.exit

sci_dma_rx_reenable_irq.exit:                     ; preds = %if.then.i153, %dmaengine_terminate_async.exit.sci_dma_rx_reenable_irq.exit_crit_edge
  %scr.0.i = phi i32 [ %and.i, %if.then.i153 ], [ %call.i.i151, %dmaengine_terminate_async.exit.sci_dma_rx_reenable_irq.exit_crit_edge ]
  %conv8.i = and i32 %scr.0.i, 65471
  %or.i = or i32 %conv8.i, 64
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 4
  %75 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %76(ptr noundef %arg, i32 noundef 2, i32 noundef %or.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arg, i32 noundef %call78) #9
  br label %cleanup

cleanup:                                          ; preds = %sci_dma_rx_reenable_irq.exit, %if.then56, %if.end36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_er_interrupt(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irqs = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 8
  %0 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irqs, align 4
  %arrayidx2 = getelementptr %struct.sci_port, ptr %ptr, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then:                                          ; preds = %entry
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 3
  %4 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %5(ptr noundef %ptr, i32 noundef 3) #9
  %conv4 = and i32 %call.i, 65535
  %type = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 38
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %7)
  %cmp5 = icmp eq i32 %7, 52
  %cond = select i1 %cmp5, i32 0, i32 16
  %and = and i32 %cond, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 @sci_br_interrupt(i32 noundef %irq, ptr noundef %ptr)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %params = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 1
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 8
  %error_mask = getelementptr inbounds %struct.sci_port_params, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %error_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error_mask, align 4
  %and11 = and i32 %conv4, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.cleanup40_crit_edge, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end.cleanup40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

if.end15:                                         ; preds = %if.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  %type16 = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 38
  %12 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %13)
  %cmp17 = icmp eq i32 %13, 52
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end15
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 3
  %14 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %ptr, i32 noundef 3) #9
  %state.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 30
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state.i, align 4
  %conv3.i = and i32 %call.i.i, 65535
  %params.i = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 1
  %18 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params.i, align 8
  %overrun_mask.i = getelementptr inbounds %struct.sci_port_params, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %overrun_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %overrun_mask.i, align 4
  %and.i = and i32 %conv3.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then19.if.end8.i_crit_edge, label %if.then.i

if.then19.if.end8.i_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then19
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 31, i32 7
  %22 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %overrun.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %overrun.i, align 4
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %17, i32 0, i32 8
  %24 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i.tty_insert_flip_char.exit.i_crit_edge

if.then.i.tty_insert_flip_char.exit.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_insert_flip_char.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 2
  %30 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp3.i.i = icmp slt i32 %29, %31
  br i1 %cmp3.i.i, label %tty_insert_flip_char.exit.thread.i, label %land.lhs.true.i.i.tty_insert_flip_char.exit.i_crit_edge

land.lhs.true.i.i.tty_insert_flip_char.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_insert_flip_char.exit.i

tty_insert_flip_char.exit.thread.i:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %29
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %31
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %add.ptr.i.i.i, align 1
  %33 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %34, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %34
  %35 = ptrtoint ptr %add.ptr.i26.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %add.ptr.i26.i.i, align 1
  br label %if.end8.i

tty_insert_flip_char.exit.i:                      ; preds = %land.lhs.true.i.i.tty_insert_flip_char.exit.i_crit_edge, %if.then.i.tty_insert_flip_char.exit.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %17, i8 noundef zeroext 0, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool5.not.i = icmp ne i32 %call13.i.i, 0
  %spec.select.i = zext i1 %tobool5.not.i to i32
  br label %if.end8.i

if.end8.i:                                        ; preds = %tty_insert_flip_char.exit.i, %tty_insert_flip_char.exit.thread.i, %if.then19.if.end8.i_crit_edge
  %copied.0.i = phi i32 [ 0, %if.then19.if.end8.i_crit_edge ], [ 1, %tty_insert_flip_char.exit.thread.i ], [ %spec.select.i, %tty_insert_flip_char.exit.i ]
  %36 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %37)
  %cmp.i = icmp eq i32 %37, 52
  %cond.i = select i1 %cmp.i, i32 16, i32 8
  %and11.i = and i32 %cond.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end8.i.if.end21.i_crit_edge, label %if.then13.i

if.end8.i.if.end21.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then13.i:                                      ; preds = %if.end8.i
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 31, i32 6
  %38 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %frame.i, align 4
  %inc15.i = add i32 %39, 1
  store i32 %inc15.i, ptr %frame.i, align 4
  %tail.i59.i = getelementptr inbounds %struct.tty_bufhead, ptr %17, i32 0, i32 8
  %40 = ptrtoint ptr %tail.i59.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i59.i, align 4
  %flags.i60.i = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %flags.i60.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i60.i, align 4
  %and.i61.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i)
  %tobool.not.i62.i = icmp eq i32 %and.i61.i, 0
  br i1 %tobool.not.i62.i, label %land.lhs.true.i66.i, label %if.then13.i.tty_insert_flip_char.exit79.i_crit_edge

if.then13.i.tty_insert_flip_char.exit79.i_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_insert_flip_char.exit79.i

land.lhs.true.i66.i:                              ; preds = %if.then13.i
  %used.i63.i = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %used.i63.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %used.i63.i, align 4
  %size.i64.i = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 2
  %46 = ptrtoint ptr %size.i64.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.i64.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp3.i65.i = icmp slt i32 %45, %47
  br i1 %cmp3.i65.i, label %if.end21.i.thread, label %land.lhs.true.i66.i.tty_insert_flip_char.exit79.i_crit_edge

land.lhs.true.i66.i.tty_insert_flip_char.exit79.i_crit_edge: ; preds = %land.lhs.true.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_insert_flip_char.exit79.i

tty_insert_flip_char.exit79.i:                    ; preds = %land.lhs.true.i66.i.tty_insert_flip_char.exit79.i_crit_edge, %if.then13.i.tty_insert_flip_char.exit79.i_crit_edge
  %call13.i76.i = tail call i32 @__tty_insert_flip_char(ptr noundef %17, i8 noundef zeroext 0, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i76.i)
  %tobool17.not.i = icmp ne i32 %call13.i76.i, 0
  %inc19.i = zext i1 %tobool17.not.i to i32
  %spec.select113.i = add nuw nsw i32 %copied.0.i, %inc19.i
  br label %if.end21.i

if.end21.i:                                       ; preds = %tty_insert_flip_char.exit79.i, %if.end8.i.if.end21.i_crit_edge
  %copied.1.i = phi i32 [ %copied.0.i, %if.end8.i.if.end21.i_crit_edge ], [ %spec.select113.i, %tty_insert_flip_char.exit79.i ]
  %48 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %49)
  %cmp24.i = icmp eq i32 %49, 52
  %cond26.i = select i1 %cmp24.i, i32 8, i32 4
  %and27.i = and i32 %cond26.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end37.i, label %if.end21.i.if.then29.i_crit_edge

if.end21.i.if.then29.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i

if.end21.i.thread:                                ; preds = %land.lhs.true.i66.i
  %data.i.i.i68.i = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 6
  %add.ptr.i.i.i69.i = getelementptr i8, ptr %data.i.i.i68.i, i32 %45
  %add.ptr.i.i70.i = getelementptr i8, ptr %add.ptr.i.i.i69.i, i32 %47
  %50 = ptrtoint ptr %add.ptr.i.i70.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %add.ptr.i.i70.i, align 1
  %51 = ptrtoint ptr %used.i63.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %used.i63.i, align 4
  %inc.i72.i = add i32 %52, 1
  store i32 %inc.i72.i, ptr %used.i63.i, align 4
  %add.ptr.i26.i74.i = getelementptr i8, ptr %data.i.i.i68.i, i32 %52
  %53 = ptrtoint ptr %add.ptr.i26.i74.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %add.ptr.i26.i74.i, align 1
  %54 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %55)
  %cmp24.i89 = icmp eq i32 %55, 52
  %cond26.i90 = select i1 %cmp24.i89, i32 8, i32 4
  %and27.i91 = and i32 %cond26.i90, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i91)
  %tobool28.not.i92 = icmp eq i32 %and27.i91, 0
  br i1 %tobool28.not.i92, label %if.end21.i.thread.if.then22_crit_edge, label %if.end21.i.thread.if.then29.i_crit_edge

if.end21.i.thread.if.then29.i_crit_edge:          ; preds = %if.end21.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i

if.end21.i.thread.if.then22_crit_edge:            ; preds = %if.end21.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then29.i:                                      ; preds = %if.end21.i.thread.if.then29.i_crit_edge, %if.end21.i.if.then29.i_crit_edge
  %copied.1.i94 = phi i32 [ 1, %if.end21.i.thread.if.then29.i_crit_edge ], [ %copied.1.i, %if.end21.i.if.then29.i_crit_edge ]
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 31, i32 8
  %56 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %parity.i, align 4
  %inc31.i = add i32 %57, 1
  store i32 %inc31.i, ptr %parity.i, align 4
  %tail.i80.i = getelementptr inbounds %struct.tty_bufhead, ptr %17, i32 0, i32 8
  %58 = ptrtoint ptr %tail.i80.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i80.i, align 4
  %flags.i81.i = getelementptr inbounds %struct.tty_buffer, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %flags.i81.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i81.i, align 4
  %and.i82.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82.i)
  %tobool.not.i83.i = icmp eq i32 %and.i82.i, 0
  br i1 %tobool.not.i83.i, label %land.lhs.true.i87.i, label %if.then29.i.tty_insert_flip_char.exit100.i_crit_edge

if.then29.i.tty_insert_flip_char.exit100.i_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_insert_flip_char.exit100.i

land.lhs.true.i87.i:                              ; preds = %if.then29.i
  %used.i84.i = getelementptr inbounds %struct.tty_buffer, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %used.i84.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %used.i84.i, align 4
  %size.i85.i = getelementptr inbounds %struct.tty_buffer, ptr %59, i32 0, i32 2
  %64 = ptrtoint ptr %size.i85.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size.i85.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp3.i86.i = icmp slt i32 %63, %65
  br i1 %cmp3.i86.i, label %tty_insert_flip_char.exit100.thread.i, label %land.lhs.true.i87.i.tty_insert_flip_char.exit100.i_crit_edge

land.lhs.true.i87.i.tty_insert_flip_char.exit100.i_crit_edge: ; preds = %land.lhs.true.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_insert_flip_char.exit100.i

tty_insert_flip_char.exit100.thread.i:            ; preds = %land.lhs.true.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i89.i = getelementptr inbounds %struct.tty_buffer, ptr %59, i32 0, i32 6
  %add.ptr.i.i.i90.i = getelementptr i8, ptr %data.i.i.i89.i, i32 %63
  %add.ptr.i.i91.i = getelementptr i8, ptr %add.ptr.i.i.i90.i, i32 %65
  %66 = ptrtoint ptr %add.ptr.i.i91.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 3, ptr %add.ptr.i.i91.i, align 1
  %67 = ptrtoint ptr %used.i84.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %used.i84.i, align 4
  %inc.i93.i = add i32 %68, 1
  store i32 %inc.i93.i, ptr %used.i84.i, align 4
  %add.ptr.i26.i95.i = getelementptr i8, ptr %data.i.i.i89.i, i32 %68
  %69 = ptrtoint ptr %add.ptr.i26.i95.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %add.ptr.i26.i95.i, align 1
  br label %if.then22

tty_insert_flip_char.exit100.i:                   ; preds = %land.lhs.true.i87.i.tty_insert_flip_char.exit100.i_crit_edge, %if.then29.i.tty_insert_flip_char.exit100.i_crit_edge
  %call13.i97.i = tail call i32 @__tty_insert_flip_char(ptr noundef %17, i8 noundef zeroext 0, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i97.i)
  %tobool33.not.i = icmp eq i32 %call13.i97.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.1.i94)
  %tobool38.not.i = icmp eq i32 %copied.1.i94, 0
  %or.cond = select i1 %tobool33.not.i, i1 %tobool38.not.i, i1 false
  br i1 %or.cond, label %tty_insert_flip_char.exit100.i.if.end33_crit_edge, label %tty_insert_flip_char.exit100.i.if.then22_crit_edge

tty_insert_flip_char.exit100.i.if.then22_crit_edge: ; preds = %tty_insert_flip_char.exit100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

tty_insert_flip_char.exit100.i.if.end33_crit_edge: ; preds = %tty_insert_flip_char.exit100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end37.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.1.i)
  %tobool38.not.i.old = icmp eq i32 %copied.1.i, 0
  br i1 %tobool38.not.i.old, label %if.end37.i.if.end33_crit_edge, label %if.end37.i.if.then22_crit_edge

if.end37.i.if.then22_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.end37.i.if.end33_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then22:                                        ; preds = %if.end37.i.if.then22_crit_edge, %tty_insert_flip_char.exit100.i.if.then22_crit_edge, %tty_insert_flip_char.exit100.thread.i, %if.end21.i.thread.if.then22_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %17) #9
  %70 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %serial_in.i.i, align 4
  %call.i63 = tail call i32 %71(ptr noundef %ptr, i32 noundef 3) #9
  %72 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %73)
  %cmp25 = icmp eq i32 %73, 52
  %cond27 = select i1 %cmp25, i32 -68, i32 -4
  br i1 %cmp25, label %if.then22.sci_clear_SCxSR.exit_crit_edge, label %if.else.i

if.then22.sci_clear_SCxSR.exit_crit_edge:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_clear_SCxSR.exit

if.else.i:                                        ; preds = %if.then22
  %74 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %params.i, align 8
  %overrun_mask.i67 = getelementptr inbounds %struct.sci_port_params, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %overrun_mask.i67 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %overrun_mask.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %77)
  %cmp1.i = icmp eq i32 %77, 512
  br i1 %cmp1.i, label %if.then2.i, label %if.else4.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i69 = tail call i32 %79(ptr noundef %ptr, i32 noundef 3) #9
  %and.i70 = and i32 %call.i.i69, %cond27
  br label %sci_clear_SCxSR.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i = and i32 %cond27, -65284
  br label %sci_clear_SCxSR.exit

sci_clear_SCxSR.exit:                             ; preds = %if.else4.i, %if.then2.i, %if.then22.sci_clear_SCxSR.exit_crit_edge
  %and.sink.i = phi i32 [ %and.i70, %if.then2.i ], [ %and5.i, %if.else4.i ], [ -68, %if.then22.sci_clear_SCxSR.exit_crit_edge ]
  %serial_out.i14.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 4
  %80 = ptrtoint ptr %serial_out.i14.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %serial_out.i14.i, align 4
  tail call void %81(ptr noundef %ptr, i32 noundef 3, i32 noundef %and.sink.i) #9
  br label %if.end33

if.else:                                          ; preds = %if.end15
  %call29 = tail call fastcc i32 @sci_handle_fifo_overrun(ptr noundef %ptr)
  %chan_rx = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 11
  %82 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chan_rx, align 8
  %tobool30.not = icmp eq ptr %83, null
  br i1 %tobool30.not, label %if.then31, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sci_receive_chars(ptr noundef %ptr)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.else.if.end33_crit_edge, %sci_clear_SCxSR.exit, %if.end37.i.if.end33_crit_edge, %tty_insert_flip_char.exit100.i.if.end33_crit_edge
  %params35 = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 1
  %84 = ptrtoint ptr %params35 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %params35, align 8
  %error_clear = getelementptr inbounds %struct.sci_port_params, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %error_clear to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %error_clear, align 4
  %88 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %89)
  %cmp.i72 = icmp eq i32 %89, 52
  br i1 %cmp.i72, label %if.end33.sci_clear_SCxSR.exit85_crit_edge, label %if.else.i76

if.end33.sci_clear_SCxSR.exit85_crit_edge:        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_clear_SCxSR.exit85

if.else.i76:                                      ; preds = %if.end33
  %overrun_mask.i74 = getelementptr inbounds %struct.sci_port_params, ptr %85, i32 0, i32 3
  %90 = ptrtoint ptr %overrun_mask.i74 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %overrun_mask.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %91)
  %cmp1.i75 = icmp eq i32 %91, 512
  br i1 %cmp1.i75, label %if.then2.i80, label %if.else4.i82

if.then2.i80:                                     ; preds = %if.else.i76
  call void @__sanitizer_cov_trace_pc() #11
  %serial_in.i.i77 = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 3
  %92 = ptrtoint ptr %serial_in.i.i77 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %serial_in.i.i77, align 4
  %call.i.i78 = tail call i32 %93(ptr noundef %ptr, i32 noundef 3) #9
  %and.i79 = and i32 %call.i.i78, %87
  br label %sci_clear_SCxSR.exit85

if.else4.i82:                                     ; preds = %if.else.i76
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i81 = and i32 %87, -65281
  br label %sci_clear_SCxSR.exit85

sci_clear_SCxSR.exit85:                           ; preds = %if.else4.i82, %if.then2.i80, %if.end33.sci_clear_SCxSR.exit85_crit_edge
  %and.sink.i83 = phi i32 [ %and.i79, %if.then2.i80 ], [ %and5.i81, %if.else4.i82 ], [ %87, %if.end33.sci_clear_SCxSR.exit85_crit_edge ]
  %serial_out.i14.i84 = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 4
  %94 = ptrtoint ptr %serial_out.i14.i84 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %serial_out.i14.i84, align 4
  tail call void %95(ptr noundef %ptr, i32 noundef 3, i32 noundef %and.sink.i83) #9
  %chan_tx = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 10
  %96 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %chan_tx, align 4
  %tobool36.not = icmp eq ptr %97, null
  br i1 %tobool36.not, label %if.then37, label %sci_clear_SCxSR.exit85.cleanup40_crit_edge

sci_clear_SCxSR.exit85.cleanup40_crit_edge:       ; preds = %sci_clear_SCxSR.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

if.then37:                                        ; preds = %sci_clear_SCxSR.exit85
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 @sci_tx_interrupt(i32 noundef %irq, ptr noundef %ptr)
  br label %cleanup40

cleanup40:                                        ; preds = %if.then37, %sci_clear_SCxSR.exit85.cleanup40_crit_edge, %if.end.cleanup40_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_rx_interrupt(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_rx = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 11
  %0 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_rx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.handle_pio_crit_edge, label %if.then

entry.handle_pio_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_pio

if.then:                                          ; preds = %entry
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 3
  %2 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ptr, i32 noundef 2) #9
  %4 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_in.i, align 4
  %call.i77 = tail call i32 %5(ptr noundef %ptr, i32 noundef 3) #9
  %type = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 38
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %7, label %if.else [
    i32 83, label %if.then.if.then8_crit_edge
    i32 93, label %if.then.if.then8_crit_edge81
  ]

if.then.if.then8_crit_edge81:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %if.then.if.then8_crit_edge, %if.then.if.then8_crit_edge81
  tail call void @disable_irq_nosync(i32 noundef %irq) #9
  %conv9 = and i32 %call.i, 49151
  %or = or i32 %conv9, 16384
  br label %if.end17

if.else:                                          ; preds = %if.then
  %call11 = tail call fastcc i32 @sci_dma_rx_submit(ptr noundef %ptr, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.else.handle_pio_crit_edge, label %if.end

if.else.handle_pio_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_pio

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv16 = and i32 %call.i, 65471
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then8
  %scr.0 = phi i32 [ %or, %if.then8 ], [ %conv16, %if.end ]
  %conv18 = and i32 %scr.0, 65535
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 4
  %9 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial_out.i, align 4
  tail call void %10(ptr noundef %ptr, i32 noundef 2, i32 noundef %conv18) #9
  %conv19 = and i32 %call.i77, 65534
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %12)
  %cmp21 = icmp eq i32 %12, 52
  %neg = select i1 %cmp21, i32 -66, i32 -4
  %and24 = and i32 %conv19, %neg
  %13 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial_out.i, align 4
  tail call void %14(ptr noundef %ptr, i32 noundef 3, i32 noundef %and24) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_rx_interrupt.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_rx_interrupt, %if.then29)) #9
          to label %do.end [label %if.then29], !srcloc !323

if.then29:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 45
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %rx_timeout = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 24
  %18 = ptrtoint ptr %rx_timeout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_timeout, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_rx_interrupt.__UNIQUE_ID_ddebug266, ptr noundef %16, ptr noundef nonnull @.str.79, i32 noundef %17, i32 noundef %19) #9
  br label %do.end

do.end:                                           ; preds = %if.then29, %if.end17
  %rx_timer = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 23
  %rx_timeout31 = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 24
  %20 = ptrtoint ptr %rx_timeout31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_timeout31, align 8
  %.frozen = freeze i32 %21
  %div.i = udiv i32 %.frozen, 1000000
  %22 = mul i32 %div.i, 1000000
  %rem.i.decomposed = sub i32 %.frozen, %22
  %mul.i = mul nuw nsw i32 %rem.i.decomposed, 1000
  %23 = zext i32 %div.i to i64
  %mul.i.i = mul nuw nsw i64 %23, 1000000000
  %conv.i.i = zext i32 %mul.i to i64
  %add.i.i = add nuw nsw i64 %mul.i.i, %conv.i.i
  tail call void @hrtimer_start_range_ns(ptr noundef %rx_timer, i64 noundef %add.i.i, i64 noundef 0, i32 noundef 1) #9
  br label %cleanup50

handle_pio:                                       ; preds = %if.else.handle_pio_crit_edge, %entry.handle_pio_crit_edge
  %rx_trigger = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 26
  %24 = ptrtoint ptr %rx_trigger to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_trigger, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp34 = icmp sgt i32 %25, 1
  br i1 %cmp34, label %land.lhs.true, label %handle_pio.if.end49_crit_edge

handle_pio.if.end49_crit_edge:                    ; preds = %handle_pio
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true:                                    ; preds = %handle_pio
  %rx_fifo_timeout = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 28
  %26 = ptrtoint ptr %rx_fifo_timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_fifo_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp36 = icmp sgt i32 %27, 0
  br i1 %cmp36, label %if.then38, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then38:                                        ; preds = %land.lhs.true
  %params.i = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 1
  %28 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %params.i, align 8
  %size.i = getelementptr [20 x %struct.plat_sci_reg], ptr %29, i32 0, i32 17, i32 1
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  %serial_in.i7.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 3
  %32 = ptrtoint ptr %serial_in.i7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %serial_in.i7.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %33(ptr noundef %ptr, i32 noundef 17) #9
  br label %scif_rtrg_enabled.exit

if.else.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %call.i8.i = tail call i32 %33(ptr noundef %ptr, i32 noundef 4) #9
  %and.i = and i32 %call.i8.i, 192
  br label %scif_rtrg_enabled.exit

scif_rtrg_enabled.exit:                           ; preds = %if.else.i, %if.then.i
  %retval.0.in.in.i = phi i32 [ %call.i.i, %if.then.i ], [ %and.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.in.i)
  %retval.0.in.i.not = icmp eq i32 %retval.0.in.in.i, 0
  br i1 %retval.0.in.i.not, label %if.then41, label %scif_rtrg_enabled.exit.if.end44_crit_edge

scif_rtrg_enabled.exit.if.end44_crit_edge:        ; preds = %scif_rtrg_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then41:                                        ; preds = %scif_rtrg_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %rx_trigger to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_trigger, align 8
  %call43 = tail call fastcc i32 @scif_set_rtrg(ptr noundef %ptr, i32 noundef %35)
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %scif_rtrg_enabled.exit.if.end44_crit_edge
  %rx_fifo_timer = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %rx_frame = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 25
  %37 = ptrtoint ptr %rx_frame to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_frame, align 4
  %mul = mul i32 %38, 100
  %39 = ptrtoint ptr %rx_fifo_timeout to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_fifo_timeout, align 4
  %mul46 = mul i32 %mul, %40
  %sub = add i32 %mul46, 999999
  %div = udiv i32 %sub, 1000000
  %add47 = add i32 %div, %36
  %call48 = tail call i32 @mod_timer(ptr noundef %rx_fifo_timer, i32 noundef %add47) #9
  br label %if.end49

if.end49:                                         ; preds = %if.end44, %land.lhs.true.if.end49_crit_edge, %handle_pio.if.end49_crit_edge
  tail call fastcc void @sci_receive_chars(ptr noundef %ptr)
  br label %cleanup50

cleanup50:                                        ; preds = %if.end49, %do.end
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_tx_interrupt(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptr) #9
  %state.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 30
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %xmit1.i = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.lor.lhs.false.i.i_crit_edge, label %land.lhs.true.i.i

entry.lor.lhs.false.i.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stopped.i.i, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge

land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit.i

land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge, %entry.lor.lhs.false.i.i_crit_edge
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 35
  %6 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i.i = icmp ne i32 %7, 0
  %spec.select.i.i = zext i1 %tobool4.not.i.i to i32
  br label %uart_tx_stopped.exit.i

uart_tx_stopped.exit.i:                           ; preds = %lor.lhs.false.i.i, %land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 3
  %8 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %ptr, i32 noundef 3) #9
  %type.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 38
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %11)
  %cmp.i = icmp eq i32 %11, 52
  %cond.i = select i1 %cmp.i, i32 128, i32 32
  %and.i = and i32 %cond.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end16.i

if.then.i:                                        ; preds = %uart_tx_stopped.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_in.i.i, align 4
  %call.i94.i = tail call i32 %13(ptr noundef %ptr, i32 noundef 2) #9
  %head.i = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp7.i = icmp eq i32 %15, %17
  %and11.i = and i32 %call.i94.i, 65407
  %conv14.i = or i32 %call.i94.i, 128
  %ctrl.0.i = select i1 %cmp7.i, i32 %and11.i, i32 %conv14.i
  %conv15.i = and i32 %ctrl.0.i, 65535
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 4
  %18 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %19(ptr noundef %ptr, i32 noundef 2, i32 noundef %conv15.i) #9
  br label %sci_transmit_chars.exit

if.end16.i:                                       ; preds = %uart_tx_stopped.exit.i
  %fifosize.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 23
  %20 = ptrtoint ptr %fifosize.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fifosize.i.i, align 4
  %params.i.i.i = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 1
  %22 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %params.i.i.i, align 8
  %size.i.i.i = getelementptr [20 x %struct.plat_sci_reg], ptr %23, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %size.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %fifosize.i.i.i = getelementptr inbounds %struct.sci_port_params, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %fifosize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fifosize.i.i.i, align 4
  %shl.i.i.i = shl i32 %27, 1
  %sub.i.i.i = add i32 %shl.i.i.i, -1
  %28 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i.i.i = tail call i32 %29(ptr noundef %ptr, i32 noundef 9) #9
  %and.i.i.i = and i32 %call.i.i.i.i, %sub.i.i.i
  br label %sci_txroom.exit.i

if.end.i.i.i:                                     ; preds = %if.end16.i
  %size8.i.i.i = getelementptr [20 x %struct.plat_sci_reg], ptr %23, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %size8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %size8.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool9.not.i.i.i = icmp eq i8 %31, 0
  %32 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %serial_in.i.i, align 4
  br i1 %tobool9.not.i.i.i, label %if.end12.i.i.i, label %if.then10.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i25.i.i.i = tail call i32 %33(ptr noundef %ptr, i32 noundef 5) #9
  %shr.i.i.i = ashr i32 %call.i25.i.i.i, 8
  br label %sci_txroom.exit.i

if.end12.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i27.i.i.i = tail call i32 %33(ptr noundef %ptr, i32 noundef 3) #9
  %and14.i.i.i = lshr i32 %call.i27.i.i.i, 7
  %and14.lobit.i.i.i = and i32 %and14.i.i.i, 1
  %34 = xor i32 %and14.lobit.i.i.i, 1
  br label %sci_txroom.exit.i

sci_txroom.exit.i:                                ; preds = %if.end12.i.i.i, %if.then10.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %and.i.i.i, %if.then.i.i.i ], [ %shr.i.i.i, %if.then10.i.i.i ], [ %34, %if.end12.i.i.i ]
  %sub.i.i = sub i32 %21, %retval.0.i.i.i
  %x_char.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 24
  %head23.i = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %tail24.i = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool27.not.i = icmp eq i32 %retval.0.i.i, 0
  %serial_out.i95.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 4
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 31, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %sci_txroom.exit.i
  %count.0.i = phi i32 [ %sub.i.i, %sci_txroom.exit.i ], [ %dec.i, %cleanup.i.do.body.i_crit_edge ]
  %35 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool18.not.i = icmp eq i8 %36, 0
  br i1 %tobool18.not.i, label %if.else22.i, label %if.then19.i

if.then19.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %x_char.i, align 4
  br label %cleanup.i

if.else22.i:                                      ; preds = %do.body.i
  %38 = ptrtoint ptr %head23.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %head23.i, align 4
  %40 = ptrtoint ptr %tail24.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tail24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp25.i = icmp ne i32 %39, %41
  %or.cond.i = select i1 %cmp25.i, i1 %tobool27.not.i, i1 false
  br i1 %or.cond.i, label %if.then28.i, label %if.else22.i.do.end.i_crit_edge

if.else22.i.do.end.i_crit_edge:                   ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then28.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %xmit1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xmit1.i, align 4
  %arrayidx.i = getelementptr i8, ptr %43, i32 %41
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 1
  %add.i = add i32 %41, 1
  %and31.i = and i32 %add.i, 4095
  %46 = ptrtoint ptr %tail24.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and31.i, ptr %tail24.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then28.i, %if.then19.i
  %c.0.i = phi i8 [ %36, %if.then19.i ], [ %45, %if.then28.i ]
  %conv36.i = zext i8 %c.0.i to i32
  %47 = ptrtoint ptr %serial_out.i95.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %serial_out.i95.i, align 4
  tail call void %48(ptr noundef %ptr, i32 noundef 6, i32 noundef %conv36.i) #9
  %49 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx.i, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %tx.i, align 4
  %dec.i = add i32 %count.0.i, -1
  %cmp37.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp37.i, label %cleanup.i.do.body.i_crit_edge, label %cleanup.i.do.end.i_crit_edge

cleanup.i.do.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %cleanup.i.do.end.i_crit_edge, %if.else22.i.do.end.i_crit_edge
  %51 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %52)
  %cmp40.i = icmp eq i32 %52, 52
  %cond42.i = select i1 %cmp40.i, i32 -136, i32 -33
  br i1 %cmp40.i, label %do.end.i.sci_clear_SCxSR.exit.i_crit_edge, label %if.else.i.i

do.end.i.sci_clear_SCxSR.exit.i_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_clear_SCxSR.exit.i

if.else.i.i:                                      ; preds = %do.end.i
  %53 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %params.i.i.i, align 8
  %overrun_mask.i.i = getelementptr inbounds %struct.sci_port_params, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %overrun_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %overrun_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %56)
  %cmp1.i.i = icmp eq i32 %56, 512
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else4.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i.i = tail call i32 %58(ptr noundef %ptr, i32 noundef 3) #9
  %and.i.i = and i32 %call.i.i.i, %cond42.i
  br label %sci_clear_SCxSR.exit.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i.i = and i32 %cond42.i, -65281
  br label %sci_clear_SCxSR.exit.i

sci_clear_SCxSR.exit.i:                           ; preds = %if.else4.i.i, %if.then2.i.i, %do.end.i.sci_clear_SCxSR.exit.i_crit_edge
  %and.sink.i.i = phi i32 [ %and.i.i, %if.then2.i.i ], [ %and5.i.i, %if.else4.i.i ], [ -136, %do.end.i.sci_clear_SCxSR.exit.i_crit_edge ]
  %59 = ptrtoint ptr %serial_out.i95.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %serial_out.i95.i, align 4
  tail call void %60(ptr noundef %ptr, i32 noundef 3, i32 noundef %and.sink.i.i) #9
  %61 = ptrtoint ptr %head23.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %head23.i, align 4
  %63 = ptrtoint ptr %tail24.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tail24.i, align 4
  %sub.i = sub i32 %62, %64
  %and45.i = and i32 %sub.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %cmp46.i = icmp eq i32 %and45.i, 0
  br i1 %cmp46.i, label %if.then48.i, label %sci_clear_SCxSR.exit.i.if.end49.i_crit_edge

sci_clear_SCxSR.exit.i.if.end49.i_crit_edge:      ; preds = %sci_clear_SCxSR.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then48.i:                                      ; preds = %sci_clear_SCxSR.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uart_write_wakeup(ptr noundef %ptr) #9
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then48.i, %sci_clear_SCxSR.exit.i.if.end49.i_crit_edge
  %65 = ptrtoint ptr %head23.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %head23.i, align 4
  %67 = ptrtoint ptr %tail24.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tail24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp52.i = icmp eq i32 %66, %68
  br i1 %cmp52.i, label %if.then54.i, label %if.end49.i.sci_transmit_chars.exit_crit_edge

if.end49.i.sci_transmit_chars.exit_crit_edge:     ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_transmit_chars.exit

if.then54.i:                                      ; preds = %if.end49.i
  %69 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i97.i = tail call i32 %70(ptr noundef %ptr, i32 noundef 2) #9
  %71 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %type.i, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %72, label %if.then54.i.if.end.i.i_crit_edge [
    i32 83, label %if.then54.i.if.then.i.i_crit_edge
    i32 93, label %if.then54.i.if.then.i.i_crit_edge8
  ]

if.then54.i.if.then.i.i_crit_edge8:               ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then54.i.if.then.i.i_crit_edge:                ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then54.i.if.end.i.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then54.i.if.then.i.i_crit_edge, %if.then54.i.if.then.i.i_crit_edge8
  %and.i99.i = and i32 %call.i.i97.i, 32767
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then54.i.if.end.i.i_crit_edge
  %ctrl.0.i.i = phi i32 [ %and.i99.i, %if.then.i.i ], [ %call.i.i97.i, %if.then54.i.if.end.i.i_crit_edge ]
  %conv9.i.i = and i32 %ctrl.0.i.i, 65407
  %74 = ptrtoint ptr %serial_out.i95.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %serial_out.i95.i, align 4
  tail call void %75(ptr noundef %ptr, i32 noundef 2, i32 noundef %conv9.i.i) #9
  %chan_tx.i.i = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 10
  %76 = ptrtoint ptr %chan_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chan_tx.i.i, align 4
  %tobool.not.i100.i = icmp eq ptr %77, null
  br i1 %tobool.not.i100.i, label %if.end.i.i.sci_transmit_chars.exit_crit_edge, label %land.lhs.true.i101.i

if.end.i.i.sci_transmit_chars.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_transmit_chars.exit

land.lhs.true.i101.i:                             ; preds = %if.end.i.i
  %cookie_tx.i.i = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 14
  %78 = ptrtoint ptr %cookie_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cookie_tx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %tobool14.not.i.i = icmp sgt i32 %79, -1
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %land.lhs.true.i101.i.sci_transmit_chars.exit_crit_edge

land.lhs.true.i101.i.sci_transmit_chars.exit_crit_edge: ; preds = %land.lhs.true.i101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_transmit_chars.exit

if.then15.i.i:                                    ; preds = %land.lhs.true.i101.i
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %77, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %81, i32 0, i32 47
  %82 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i102.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i102.i, label %if.then15.i.i.dmaengine_terminate_async.exit.i.i_crit_edge, label %if.then.i.i103.i

if.then15.i.i.dmaengine_terminate_async.exit.i.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_async.exit.i.i

if.then.i.i103.i:                                 ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i31.i.i = tail call i32 %83(ptr noundef nonnull %77) #9
  br label %dmaengine_terminate_async.exit.i.i

dmaengine_terminate_async.exit.i.i:               ; preds = %if.then.i.i103.i, %if.then15.i.i.dmaengine_terminate_async.exit.i.i_crit_edge
  %84 = ptrtoint ptr %cookie_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -22, ptr %cookie_tx.i.i, align 4
  br label %sci_transmit_chars.exit

sci_transmit_chars.exit:                          ; preds = %dmaengine_terminate_async.exit.i.i, %land.lhs.true.i101.i.sci_transmit_chars.exit_crit_edge, %if.end.i.i.sci_transmit_chars.exit_crit_edge, %if.end49.i.sci_transmit_chars.exit_crit_edge, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptr, i32 noundef %call2) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_br_interrupt(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 3
  %0 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %ptr, i32 noundef 3) #9
  %state.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 30
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state.i, align 4
  %handle_break.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 17
  %4 = ptrtoint ptr %handle_break.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle_break.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %if.then.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %ptr) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 48
  %6 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %cons.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 32
  %8 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cons.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end15.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %index.i.i = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %index.i.i, align 2
  %conv7.i.i = sext i16 %11 to i32
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 41
  %12 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv7.i.i)
  %cmp.i.i = icmp eq i32 %13, %conv7.i.i
  br i1 %cmp.i.i, label %if.then9.i.i, label %land.lhs.true5.i.i.if.end15.i.i_crit_edge

land.lhs.true5.i.i.if.end15.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 46
  %14 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool10.not.i.i, label %uart_handle_break.exit.i, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end13.i.i, %land.lhs.true5.i.i.if.end15.i.i_crit_edge, %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.end.i.i.if.end15.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 33
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end.i_crit_edge:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tty.i.i = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %tty.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tty.i.i, align 4
  tail call void @do_SAK(ptr noundef %20) #9
  br label %if.end.i

uart_handle_break.exit.i:                         ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %21, 500
  %22 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i.i, ptr %sysrq.i.i, align 4
  br label %sci_handle_breaks.exit

if.end.i:                                         ; preds = %if.then17.i.i, %if.end15.i.i.if.end.i_crit_edge
  %type.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 38
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %24)
  %cmp.i = icmp eq i32 %24, 52
  %cond.i = select i1 %cmp.i, i32 0, i32 16
  %and.i = and i32 %cond.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then6.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then6.i:                                       ; preds = %if.end.i
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 31, i32 9
  %25 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %brk.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %brk.i, align 4
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %3, i32 0, i32 8
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i, align 4
  %flags.i1.i = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %flags.i1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i1.i, align 4
  %and.i2.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i3.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i, label %if.then6.i.tty_insert_flip_char.exit.i_crit_edge

if.then6.i.tty_insert_flip_char.exit.i_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_insert_flip_char.exit.i

land.lhs.true.i4.i:                               ; preds = %if.then6.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 2
  %33 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp3.i.i = icmp slt i32 %32, %34
  br i1 %cmp3.i.i, label %tty_insert_flip_char.exit.thread.i, label %land.lhs.true.i4.i.tty_insert_flip_char.exit.i_crit_edge

land.lhs.true.i4.i.tty_insert_flip_char.exit.i_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_insert_flip_char.exit.i

tty_insert_flip_char.exit.thread.i:               ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %32
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %34
  %35 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %add.ptr.i.i.i, align 1
  %36 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %37, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %37
  %38 = ptrtoint ptr %add.ptr.i26.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %add.ptr.i26.i.i, align 1
  br label %if.then14.i

tty_insert_flip_char.exit.i:                      ; preds = %land.lhs.true.i4.i.tty_insert_flip_char.exit.i_crit_edge, %if.then6.i.tty_insert_flip_char.exit.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool8.not.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool8.not.i, label %tty_insert_flip_char.exit.i.if.end15.i_crit_edge, label %tty_insert_flip_char.exit.i.if.then14.i_crit_edge

tty_insert_flip_char.exit.i.if.then14.i_crit_edge: ; preds = %tty_insert_flip_char.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

tty_insert_flip_char.exit.i.if.end15.i_crit_edge: ; preds = %tty_insert_flip_char.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then14.i:                                      ; preds = %tty_insert_flip_char.exit.i.if.then14.i_crit_edge, %tty_insert_flip_char.exit.thread.i
  tail call void @tty_flip_buffer_push(ptr noundef %3) #9
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %tty_insert_flip_char.exit.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %call16.i = tail call fastcc i32 @sci_handle_fifo_overrun(ptr noundef %ptr) #9
  br label %sci_handle_breaks.exit

sci_handle_breaks.exit:                           ; preds = %if.end15.i, %uart_handle_break.exit.i
  %39 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %serial_in.i.i, align 4
  %call.i = tail call i32 %40(ptr noundef %ptr, i32 noundef 7) #9
  %type = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 38
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %42)
  %cmp = icmp eq i32 %42, 52
  %cond = select i1 %cmp, i32 -60, i32 -29
  br i1 %cmp, label %sci_handle_breaks.exit.sci_clear_SCxSR.exit_crit_edge, label %if.else.i

sci_handle_breaks.exit.sci_clear_SCxSR.exit_crit_edge: ; preds = %sci_handle_breaks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_clear_SCxSR.exit

if.else.i:                                        ; preds = %sci_handle_breaks.exit
  %params.i = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 1
  %43 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %params.i, align 8
  %overrun_mask.i = getelementptr inbounds %struct.sci_port_params, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %overrun_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %overrun_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %46)
  %cmp1.i = icmp eq i32 %46, 512
  br i1 %cmp1.i, label %if.then2.i, label %if.else4.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i8 = tail call i32 %48(ptr noundef %ptr, i32 noundef 3) #9
  %and.i9 = and i32 %call.i.i8, %cond
  br label %sci_clear_SCxSR.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i = and i32 %cond, -65305
  br label %sci_clear_SCxSR.exit

sci_clear_SCxSR.exit:                             ; preds = %if.else4.i, %if.then2.i, %sci_handle_breaks.exit.sci_clear_SCxSR.exit_crit_edge
  %and.sink.i = phi i32 [ %and.i9, %if.then2.i ], [ %and5.i, %if.else4.i ], [ -60, %sci_handle_breaks.exit.sci_clear_SCxSR.exit_crit_edge ]
  %serial_out.i14.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 4
  %49 = ptrtoint ptr %serial_out.i14.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %serial_out.i14.i, align 4
  tail call void %50(ptr noundef %ptr, i32 noundef 3, i32 noundef %and.sink.i) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_mpxed_interrupt(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 3
  %0 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %1(ptr noundef %ptr, i32 noundef 3) #9
  %2 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_in.i, align 4
  %call.i118 = tail call i32 %3(ptr noundef %ptr, i32 noundef 2) #9
  %params = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 1
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %params, align 8
  %overrun_reg = getelementptr inbounds %struct.sci_port_params, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %overrun_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %overrun_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %entry.if.end14_crit_edge, label %if.else

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.else:                                          ; preds = %entry
  %size = getelementptr [20 x %struct.plat_sci_reg], ptr %5, i32 0, i32 %7, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else.if.end14_crit_edge, label %if.then9

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serial_in.i, align 4
  %call.i120 = tail call i32 %11(ptr noundef %ptr, i32 noundef %7) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.else.if.end14_crit_edge, %entry.if.end14_crit_edge
  %orer_status.0 = phi i32 [ %call.i120, %if.then9 ], [ 0, %if.else.if.end14_crit_edge ], [ %call.i, %entry.if.end14_crit_edge ]
  %cfg.i = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 2
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 4
  %scscr.i = getelementptr inbounds %struct.plat_sci_port, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %scscr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scscr.i, align 4
  %and.i = and i32 %15, 8
  %or.i = or i32 %and.i, 64
  %and = and i32 %or.i, %call.i118
  %conv18 = and i32 %call.i, 65535
  %type = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 38
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %17)
  %cmp19 = icmp eq i32 %17, 52
  %cond = select i1 %cmp19, i32 128, i32 32
  %and21 = and i32 %cond, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %and24 = and i32 %call.i118, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool25.not
  br i1 %or.cond, label %if.end14.if.end30_crit_edge, label %land.lhs.true26

if.end14.if.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true26:                                  ; preds = %if.end14
  %chan_tx = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 10
  %18 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan_tx, align 4
  %tobool27.not = icmp eq ptr %19, null
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true26.if.end30_crit_edge

land.lhs.true26.if.end30_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 @sci_tx_interrupt(i32 noundef %irq, ptr noundef %ptr)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %land.lhs.true26.if.end30_crit_edge, %if.end14.if.end30_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true26.if.end30_crit_edge ], [ 1, %if.then28 ], [ 0, %if.end14.if.end30_crit_edge ]
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %21)
  %cmp33 = icmp eq i32 %21, 52
  %cond35 = select i1 %cmp33, i32 64, i32 3
  %and36 = and i32 %cond35, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %lor.lhs.false, label %land.lhs.true39

lor.lhs.false:                                    ; preds = %if.end30
  %chan_rx = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 11
  %22 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan_rx, align 8
  %tobool38.not = icmp eq ptr %23, null
  %and41 = and i32 %call.i118, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %or.cond114 = select i1 %tobool38.not, i1 true, i1 %tobool42.not
  br i1 %or.cond114, label %lor.lhs.false.if.end45_crit_edge, label %lor.lhs.false.if.then43_crit_edge

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true39:                                  ; preds = %if.end30
  %and41.old = and i32 %call.i118, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.old)
  %tobool42.not.old = icmp eq i32 %and41.old, 0
  br i1 %tobool42.not.old, label %land.lhs.true39.if.end45_crit_edge, label %land.lhs.true39.if.then43_crit_edge

land.lhs.true39.if.then43_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

land.lhs.true39.if.end45_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then43:                                        ; preds = %land.lhs.true39.if.then43_crit_edge, %lor.lhs.false.if.then43_crit_edge
  %call44 = tail call i32 @sci_rx_interrupt(i32 noundef %irq, ptr noundef %ptr)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %land.lhs.true39.if.end45_crit_edge, %lor.lhs.false.if.end45_crit_edge
  %ret.1 = phi i32 [ 1, %if.then43 ], [ %ret.0, %land.lhs.true39.if.end45_crit_edge ], [ %ret.0, %lor.lhs.false.if.end45_crit_edge ]
  %24 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %params, align 8
  %error_mask = getelementptr inbounds %struct.sci_port_params, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %error_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error_mask, align 4
  %and49 = and i32 %conv18, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  %or.cond115 = select i1 %tobool50.not, i1 true, i1 %tobool53.not
  br i1 %or.cond115, label %if.end45.if.end56_crit_edge, label %if.then54

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %call55 = tail call i32 @sci_er_interrupt(i32 noundef %irq, ptr noundef %ptr)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end45.if.end56_crit_edge
  %ret.2 = phi i32 [ 1, %if.then54 ], [ %ret.1, %if.end45.if.end56_crit_edge ]
  %irqs = getelementptr inbounds %struct.sci_port, ptr %ptr, i32 0, i32 8
  %28 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irqs, align 4
  %arrayidx59 = getelementptr %struct.sci_port, ptr %ptr, i32 0, i32 8, i32 3
  %30 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp60.not = icmp eq i32 %29, %31
  br i1 %cmp60.not, label %if.end56.if.end75_crit_edge, label %land.lhs.true62

if.end56.if.end75_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.lhs.true62:                                  ; preds = %if.end56
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %33)
  %cmp65 = icmp eq i32 %33, 52
  %cond67 = select i1 %cmp65, i32 0, i32 16
  %and68 = and i32 %cond67, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %or.cond116 = select i1 %tobool69.not, i1 true, i1 %tobool53.not
  br i1 %or.cond116, label %land.lhs.true62.if.end75_crit_edge, label %if.then73

land.lhs.true62.if.end75_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then73:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  %call74 = tail call i32 @sci_br_interrupt(i32 noundef %irq, ptr noundef %ptr)
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %land.lhs.true62.if.end75_crit_edge, %if.end56.if.end75_crit_edge
  %ret.3 = phi i32 [ 1, %if.then73 ], [ %ret.2, %land.lhs.true62.if.end75_crit_edge ], [ %ret.2, %if.end56.if.end75_crit_edge ]
  %conv76 = and i32 %orer_status.0, 65535
  %34 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %params, align 8
  %overrun_mask = getelementptr inbounds %struct.sci_port_params, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %overrun_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %overrun_mask, align 4
  %and78 = and i32 %conv76, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end75.if.end82_crit_edge, label %if.then80

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %call81 = tail call fastcc i32 @sci_handle_fifo_overrun(ptr noundef %ptr)
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end75.if.end82_crit_edge
  %ret.4 = phi i32 [ 1, %if.then80 ], [ %ret.3, %if.end75.if.end82_crit_edge ]
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sci_handle_fifo_overrun(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %params = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 8
  %overrun_reg = getelementptr inbounds %struct.sci_port_params, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %overrun_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %overrun_reg, align 4
  %size = getelementptr [20 x %struct.plat_sci_reg], ptr %3, i32 0, i32 %5, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %8 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %9(ptr noundef %port, i32 noundef %5) #9
  %conv7 = and i32 %call.i, 65535
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %params, align 8
  %overrun_mask = getelementptr inbounds %struct.sci_port_params, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %overrun_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %overrun_mask, align 4
  %and = and i32 %conv7, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.end
  %neg = xor i32 %13, -1
  %overrun_reg17 = getelementptr inbounds %struct.sci_port_params, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %overrun_reg17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %overrun_reg17, align 4
  %conv18 = and i32 %conv7, %neg
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %16 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serial_out.i, align 4
  tail call void %17(ptr noundef %port, i32 noundef %15, i32 noundef %conv18) #9
  %overrun = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 7
  %18 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %overrun, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %overrun, align 4
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then10.if.end12.i_crit_edge

if.then10.if.end12.i_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then10
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %21, i32 0, i32 2
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp3.i = icmp slt i32 %25, %27
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %21, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %25
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %27
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %add.ptr.i.i, align 1
  %29 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %data.i.i.i, i32 %30
  %31 = ptrtoint ptr %add.ptr.i26.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %add.ptr.i26.i, align 1
  br label %tty_insert_flip_char.exit

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then10.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 4) #9
  br label %tty_insert_flip_char.exit

tty_insert_flip_char.exit:                        ; preds = %if.end12.i, %if.end.i
  tail call void @tty_flip_buffer_push(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %tty_insert_flip_char.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %tty_insert_flip_char.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sci_receive_chars(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %2 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %3(ptr noundef %port, i32 noundef 3) #9
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %5)
  %cmp = icmp eq i32 %5, 52
  %cond = select i1 %cmp, i32 64, i32 3
  %and = and i32 %cond, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup91_crit_edge, label %while.cond.preheader

entry.cleanup91_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

while.cond.preheader:                             ; preds = %entry
  %params.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %sysrq.i161 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 46
  %frame = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 6
  %parity = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 8
  %tail.i178 = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 8
  %serial_out.i14.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %rx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 4
  br label %while.cond

while.cond:                                       ; preds = %sci_clear_SCxSR.exit, %while.cond.preheader
  %copied.0 = phi i32 [ %add, %sci_clear_SCxSR.exit ], [ 0, %while.cond.preheader ]
  %6 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %params.i, align 8
  %fifosize.i = getelementptr inbounds %struct.sci_port_params, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifosize.i, align 4
  %shl.i = shl i32 %9, 1
  %sub.i = add i32 %shl.i, -1
  %size.i = getelementptr [20 x %struct.plat_sci_reg], ptr %7, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_in.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %port, i32 noundef 10) #9
  %and.i = and i32 %call.i.i, %sub.i
  br label %sci_rxfill.exit

if.end.i:                                         ; preds = %while.cond
  %size8.i = getelementptr [20 x %struct.plat_sci_reg], ptr %7, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %size8.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %size8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not.i = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serial_in.i, align 4
  br i1 %tobool9.not.i, label %if.end13.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i28.i = tail call i32 %17(ptr noundef %port, i32 noundef 5) #9
  %and12.i = and i32 %call.i28.i, %sub.i
  br label %sci_rxfill.exit

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i30.i = tail call i32 %17(ptr noundef %port, i32 noundef 3) #9
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %19)
  %cmp.i = icmp eq i32 %19, 52
  %cond.i = select i1 %cmp.i, i32 64, i32 3
  %and15.i = and i32 %cond.i, %call.i30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %cmp16.i = icmp ne i32 %and15.i, 0
  %conv.i = zext i1 %cmp16.i to i32
  br label %sci_rxfill.exit

sci_rxfill.exit:                                  ; preds = %if.end13.i, %if.then10.i, %if.then.i
  %retval.0.i = phi i32 [ %and.i, %if.then.i ], [ %and12.i, %if.then10.i ], [ %conv.i, %if.end13.i ]
  %call5 = tail call i32 @tty_buffer_request_room(ptr noundef %1, i32 noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %while.end, label %if.end9

if.end9:                                          ; preds = %sci_rxfill.exit
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %21)
  %cmp11 = icmp eq i32 %21, 52
  br i1 %cmp11, label %if.then13, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp23252 = icmp sgt i32 %call5, 0
  br i1 %cmp23252, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end73_crit_edge

for.cond.preheader.if.end73_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then13:                                        ; preds = %if.end9
  %22 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %serial_in.i, align 4
  %call.i139 = tail call i32 %23(ptr noundef %port, i32 noundef 7) #9
  %conv16 = and i32 %call.i139, 255
  %24 = ptrtoint ptr %sysrq.i161 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sysrq.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i140 = icmp eq i32 %25, 0
  br i1 %tobool.not.i140, label %if.then13.if.else_crit_edge, label %if.end.i141

if.then13.if.else_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.i141:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16)
  %tobool1.not.i = icmp eq i32 %conv16, 0
  br i1 %tobool1.not.i, label %if.end.i141.uart_handle_sysrq_char.exit.thread232_crit_edge, label %land.lhs.true.i

if.end.i141.uart_handle_sysrq_char.exit.thread232_crit_edge: ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread232

land.lhs.true.i:                                  ; preds = %if.end.i141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub.i142 = sub i32 %26, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i142)
  %cmp.i143 = icmp slt i32 %sub.i142, 0
  br i1 %cmp.i143, label %if.then3.i, label %land.lhs.true.i.uart_handle_sysrq_char.exit.thread232_crit_edge

land.lhs.true.i.uart_handle_sysrq_char.exit.thread232_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread232

if.then3.i:                                       ; preds = %land.lhs.true.i
  %call.i144 = tail call i32 @sysrq_mask() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool4.not.i = icmp eq i32 %call.i144, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %uart_handle_sysrq_char.exit

if.end7.i:                                        ; preds = %if.then3.i
  %call8.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %port, i32 noundef %conv16) #9
  br i1 %call8.i, label %if.end7.i.if.end73_crit_edge, label %if.end7.i.uart_handle_sysrq_char.exit.thread232_crit_edge

if.end7.i.uart_handle_sysrq_char.exit.thread232_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread232

if.end7.i.if.end73_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

uart_handle_sysrq_char.exit.thread232:            ; preds = %if.end7.i.uart_handle_sysrq_char.exit.thread232_crit_edge, %land.lhs.true.i.uart_handle_sysrq_char.exit.thread232_crit_edge, %if.end.i141.uart_handle_sysrq_char.exit.thread232_crit_edge
  %27 = ptrtoint ptr %sysrq.i161 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %sysrq.i161, align 4
  br label %if.else

uart_handle_sysrq_char.exit:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @handle_sysrq(i32 noundef %conv16) #9
  %28 = ptrtoint ptr %sysrq.i161 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %sysrq.i161, align 4
  br label %if.end73

if.else:                                          ; preds = %uart_handle_sysrq_char.exit.thread232, %if.then13.if.else_crit_edge
  %conv15 = trunc i32 %call.i139 to i8
  %29 = ptrtoint ptr %tail.i178 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i178, align 4
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %used.i, align 4
  %size.i148 = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 2
  %33 = ptrtoint ptr %size.i148 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i148, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp3.i = icmp slt i32 %32, %34
  br i1 %cmp3.i, label %if.then.i150, label %if.end12.i

if.then.i150:                                     ; preds = %if.else
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 5
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and.i146 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i146)
  %tobool.not.i147 = icmp eq i32 %and.i146, 0
  br i1 %tobool.not.i147, label %if.then8.i, label %if.then.i150.if.end.i151_crit_edge

if.then.i150.if.end.i151_crit_edge:               ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i151

if.then8.i:                                       ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %34
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %add.ptr.i.i, align 1
  br label %if.end.i151

if.end.i151:                                      ; preds = %if.then8.i, %if.then.i150.if.end.i151_crit_edge
  %38 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 6
  %add.ptr.i26.i = getelementptr i8, ptr %data.i.i, i32 %39
  %40 = ptrtoint ptr %add.ptr.i26.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv15, ptr %add.ptr.i26.i, align 1
  br label %if.end73

if.end12.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext %conv15, i8 noundef zeroext 0) #9
  br label %if.end73

for.bodythread-pre-split:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr = load i32, ptr %type, align 4
  br label %for.body

for.body:                                         ; preds = %for.bodythread-pre-split, %for.cond.preheader.for.body_crit_edge
  %42 = phi i32 [ %.pr, %for.bodythread-pre-split ], [ %21, %for.cond.preheader.for.body_crit_edge ]
  %count.1255 = phi i32 [ %count.2, %for.bodythread-pre-split ], [ %call5, %for.cond.preheader.for.body_crit_edge ]
  %i.0253 = phi i32 [ %inc72, %for.bodythread-pre-split ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %42, label %if.else37 [
    i32 53, label %for.body.if.then32_crit_edge
    i32 104, label %for.body.if.then32_crit_edge272
  ]

for.body.if.then32_crit_edge272:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

for.body.if.then32_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %for.body.if.then32_crit_edge, %for.body.if.then32_crit_edge272
  %44 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %serial_in.i, align 4
  %call.i154 = tail call i32 %45(ptr noundef %port, i32 noundef 3) #9
  %46 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %serial_in.i, align 4
  %call.i156 = tail call i32 %47(ptr noundef %port, i32 noundef 7) #9
  br label %if.end42

if.else37:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %serial_in.i, align 4
  %call.i158 = tail call i32 %49(ptr noundef %port, i32 noundef 7) #9
  %50 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %serial_in.i, align 4
  %call.i160 = tail call i32 %51(ptr noundef %port, i32 noundef 3) #9
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %if.then32
  %status.0.in = phi i32 [ %call.i154, %if.then32 ], [ %call.i160, %if.else37 ]
  %c25.0.in = phi i32 [ %call.i156, %if.then32 ], [ %call.i158, %if.else37 ]
  %c25.0 = trunc i32 %c25.0.in to i8
  %conv43 = and i32 %c25.0.in, 255
  %52 = ptrtoint ptr %sysrq.i161 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sysrq.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i162 = icmp eq i32 %53, 0
  br i1 %tobool.not.i162, label %if.end42.if.end48_crit_edge, label %if.end.i164

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end.i164:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv43)
  %tobool1.not.i163 = icmp eq i32 %conv43, 0
  br i1 %tobool1.not.i163, label %if.end.i164.uart_handle_sysrq_char.exit177.thread240_crit_edge, label %land.lhs.true.i167

if.end.i164.uart_handle_sysrq_char.exit177.thread240_crit_edge: ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit177.thread240

land.lhs.true.i167:                               ; preds = %if.end.i164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %sub.i165 = sub i32 %54, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i165)
  %cmp.i166 = icmp slt i32 %sub.i165, 0
  br i1 %cmp.i166, label %if.then3.i170, label %land.lhs.true.i167.uart_handle_sysrq_char.exit177.thread240_crit_edge

land.lhs.true.i167.uart_handle_sysrq_char.exit177.thread240_crit_edge: ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit177.thread240

if.then3.i170:                                    ; preds = %land.lhs.true.i167
  %call.i168 = tail call i32 @sysrq_mask() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool4.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool4.not.i169, label %if.end7.i173, label %uart_handle_sysrq_char.exit177

if.end7.i173:                                     ; preds = %if.then3.i170
  %call8.i172 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %port, i32 noundef %conv43) #9
  br i1 %call8.i172, label %if.end7.i173.if.then46_crit_edge, label %if.end7.i173.uart_handle_sysrq_char.exit177.thread240_crit_edge

if.end7.i173.uart_handle_sysrq_char.exit177.thread240_crit_edge: ; preds = %if.end7.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit177.thread240

if.end7.i173.if.then46_crit_edge:                 ; preds = %if.end7.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

uart_handle_sysrq_char.exit177.thread240:         ; preds = %if.end7.i173.uart_handle_sysrq_char.exit177.thread240_crit_edge, %land.lhs.true.i167.uart_handle_sysrq_char.exit177.thread240_crit_edge, %if.end.i164.uart_handle_sysrq_char.exit177.thread240_crit_edge
  %55 = ptrtoint ptr %sysrq.i161 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %sysrq.i161, align 4
  br label %if.end48

uart_handle_sysrq_char.exit177:                   ; preds = %if.then3.i170
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @handle_sysrq(i32 noundef %conv43) #9
  %56 = ptrtoint ptr %sysrq.i161 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %sysrq.i161, align 4
  br label %if.then46

if.then46:                                        ; preds = %uart_handle_sysrq_char.exit177, %if.end7.i173.if.then46_crit_edge
  %dec = add nsw i32 %count.1255, -1
  %dec47 = add i32 %i.0253, -1
  br label %cleanup

if.end48:                                         ; preds = %uart_handle_sysrq_char.exit177.thread240, %if.end42.if.end48_crit_edge
  %57 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %58)
  %cmp51 = icmp eq i32 %58, 52
  %cond53 = select i1 %cmp51, i32 16, i32 8
  %and54 = and i32 %cond53, %status.0.in
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else57, label %if.end48.if.end70_crit_edge

if.end48.if.end70_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.else57:                                        ; preds = %if.end48
  %cond62 = select i1 %cmp51, i32 8, i32 4
  %and63 = and i32 %cond62, %status.0.in
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true.i186, label %if.else57.if.end70_crit_edge

if.else57.if.end70_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.end70:                                         ; preds = %if.else57.if.end70_crit_edge, %if.end48.if.end70_crit_edge
  %parity.sink271 = phi ptr [ %frame, %if.end48.if.end70_crit_edge ], [ %parity, %if.else57.if.end70_crit_edge ]
  %flag.0 = phi i8 [ 2, %if.end48.if.end70_crit_edge ], [ 3, %if.else57.if.end70_crit_edge ]
  %59 = ptrtoint ptr %parity.sink271 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %parity.sink271, align 4
  %inc67 = add i32 %60, 1
  store i32 %inc67, ptr %parity.sink271, align 4
  %61 = ptrtoint ptr %tail.i178 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tail.i178, align 4
  %flags.i179 = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %flags.i179 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i179, align 4
  %and.i180 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180)
  %tobool.not.i181 = icmp eq i32 %and.i180, 0
  br i1 %tobool.not.i181, label %land.lhs.true.i186.thread, label %if.end70.if.end12.i197_crit_edge

if.end70.if.end12.i197_crit_edge:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i197

land.lhs.true.i186:                               ; preds = %if.else57
  %65 = ptrtoint ptr %tail.i178 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tail.i178, align 4
  %used.i183 = getelementptr inbounds %struct.tty_buffer, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %used.i183 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %used.i183, align 4
  %size.i184 = getelementptr inbounds %struct.tty_buffer, ptr %66, i32 0, i32 2
  %69 = ptrtoint ptr %size.i184 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size.i184, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp3.i185 = icmp slt i32 %68, %70
  br i1 %cmp3.i185, label %if.then.i187, label %land.lhs.true.i186.if.end12.i197_crit_edge

land.lhs.true.i186.if.end12.i197_crit_edge:       ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i197

land.lhs.true.i186.thread:                        ; preds = %if.end70
  %used.i183259 = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 1
  %71 = ptrtoint ptr %used.i183259 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %used.i183259, align 4
  %size.i184260 = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 2
  %73 = ptrtoint ptr %size.i184260 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size.i184260, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp3.i185261 = icmp slt i32 %72, %74
  br i1 %cmp3.i185261, label %land.lhs.true.i186.thread.if.then8.i191_crit_edge, label %land.lhs.true.i186.thread.if.end12.i197_crit_edge

land.lhs.true.i186.thread.if.end12.i197_crit_edge: ; preds = %land.lhs.true.i186.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i197

land.lhs.true.i186.thread.if.then8.i191_crit_edge: ; preds = %land.lhs.true.i186.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i191

if.then.i187:                                     ; preds = %land.lhs.true.i186
  %flags.i179245 = getelementptr inbounds %struct.tty_buffer, ptr %66, i32 0, i32 5
  %75 = ptrtoint ptr %flags.i179245 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i179245, align 4
  %and.i180246 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180246)
  %tobool.not.i181247 = icmp eq i32 %and.i180246, 0
  br i1 %tobool.not.i181247, label %if.then.i187.if.then8.i191_crit_edge, label %if.then.i187.if.end.i195_crit_edge

if.then.i187.if.end.i195_crit_edge:               ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i195

if.then.i187.if.then8.i191_crit_edge:             ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i191

if.then8.i191:                                    ; preds = %if.then.i187.if.then8.i191_crit_edge, %land.lhs.true.i186.thread.if.then8.i191_crit_edge
  %77 = phi ptr [ %66, %if.then.i187.if.then8.i191_crit_edge ], [ %62, %land.lhs.true.i186.thread.if.then8.i191_crit_edge ]
  %flag.0250263270 = phi i8 [ 0, %if.then.i187.if.then8.i191_crit_edge ], [ %flag.0, %land.lhs.true.i186.thread.if.then8.i191_crit_edge ]
  %used.i183264269 = phi ptr [ %used.i183, %if.then.i187.if.then8.i191_crit_edge ], [ %used.i183259, %land.lhs.true.i186.thread.if.then8.i191_crit_edge ]
  %78 = phi i32 [ %68, %if.then.i187.if.then8.i191_crit_edge ], [ %72, %land.lhs.true.i186.thread.if.then8.i191_crit_edge ]
  %79 = phi i32 [ %70, %if.then.i187.if.then8.i191_crit_edge ], [ %74, %land.lhs.true.i186.thread.if.then8.i191_crit_edge ]
  %data.i.i.i188 = getelementptr inbounds %struct.tty_buffer, ptr %77, i32 0, i32 6
  %add.ptr.i.i.i189 = getelementptr i8, ptr %data.i.i.i188, i32 %78
  %add.ptr.i.i190 = getelementptr i8, ptr %add.ptr.i.i.i189, i32 %79
  %80 = ptrtoint ptr %add.ptr.i.i190 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %flag.0250263270, ptr %add.ptr.i.i190, align 1
  br label %if.end.i195

if.end.i195:                                      ; preds = %if.then8.i191, %if.then.i187.if.end.i195_crit_edge
  %81 = phi ptr [ %77, %if.then8.i191 ], [ %66, %if.then.i187.if.end.i195_crit_edge ]
  %used.i183264268 = phi ptr [ %used.i183264269, %if.then8.i191 ], [ %used.i183, %if.then.i187.if.end.i195_crit_edge ]
  %82 = ptrtoint ptr %used.i183264268 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %used.i183264268, align 4
  %inc.i192 = add i32 %83, 1
  store i32 %inc.i192, ptr %used.i183264268, align 4
  %data.i.i193 = getelementptr inbounds %struct.tty_buffer, ptr %81, i32 0, i32 6
  %add.ptr.i26.i194 = getelementptr i8, ptr %data.i.i193, i32 %83
  %84 = ptrtoint ptr %add.ptr.i26.i194 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %c25.0, ptr %add.ptr.i26.i194, align 1
  br label %cleanup

if.end12.i197:                                    ; preds = %land.lhs.true.i186.thread.if.end12.i197_crit_edge, %land.lhs.true.i186.if.end12.i197_crit_edge, %if.end70.if.end12.i197_crit_edge
  %flag.0249 = phi i8 [ 0, %land.lhs.true.i186.if.end12.i197_crit_edge ], [ %flag.0, %if.end70.if.end12.i197_crit_edge ], [ %flag.0, %land.lhs.true.i186.thread.if.end12.i197_crit_edge ]
  %call13.i196 = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext %c25.0, i8 noundef zeroext %flag.0249) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i197, %if.end.i195, %if.then46
  %i.1 = phi i32 [ %dec47, %if.then46 ], [ %i.0253, %if.end.i195 ], [ %i.0253, %if.end12.i197 ]
  %count.2 = phi i32 [ %dec, %if.then46 ], [ %count.1255, %if.end.i195 ], [ %count.1255, %if.end12.i197 ]
  %inc72 = add i32 %i.1, 1
  %cmp23 = icmp slt i32 %inc72, %count.2
  br i1 %cmp23, label %for.bodythread-pre-split, label %cleanup.if.end73_crit_edge

cleanup.if.end73_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.end73:                                         ; preds = %cleanup.if.end73_crit_edge, %if.end12.i, %if.end.i151, %uart_handle_sysrq_char.exit, %if.end7.i.if.end73_crit_edge, %for.cond.preheader.if.end73_crit_edge
  %count.3 = phi i32 [ 0, %uart_handle_sysrq_char.exit ], [ %call5, %if.end.i151 ], [ %call5, %if.end12.i ], [ 0, %if.end7.i.if.end73_crit_edge ], [ %call5, %for.cond.preheader.if.end73_crit_edge ], [ %count.2, %cleanup.if.end73_crit_edge ]
  %85 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %serial_in.i, align 4
  %call.i201 = tail call i32 %86(ptr noundef %port, i32 noundef 3) #9
  %87 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %88)
  %cmp76 = icmp eq i32 %88, 52
  %cond78 = select i1 %cmp76, i32 -68, i32 -4
  br i1 %cmp76, label %if.end73.sci_clear_SCxSR.exit_crit_edge, label %if.else.i

if.end73.sci_clear_SCxSR.exit_crit_edge:          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_clear_SCxSR.exit

if.else.i:                                        ; preds = %if.end73
  %89 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %params.i, align 8
  %overrun_mask.i = getelementptr inbounds %struct.sci_port_params, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %overrun_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %overrun_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %92)
  %cmp1.i = icmp eq i32 %92, 512
  br i1 %cmp1.i, label %if.then2.i, label %if.else4.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %serial_in.i, align 4
  %call.i.i206 = tail call i32 %94(ptr noundef %port, i32 noundef 3) #9
  %and.i207 = and i32 %call.i.i206, %cond78
  br label %sci_clear_SCxSR.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i = and i32 %cond78, -65284
  br label %sci_clear_SCxSR.exit

sci_clear_SCxSR.exit:                             ; preds = %if.else4.i, %if.then2.i, %if.end73.sci_clear_SCxSR.exit_crit_edge
  %and.sink.i = phi i32 [ %and.i207, %if.then2.i ], [ %and5.i, %if.else4.i ], [ -68, %if.end73.sci_clear_SCxSR.exit_crit_edge ]
  %95 = ptrtoint ptr %serial_out.i14.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %serial_out.i14.i, align 4
  tail call void %96(ptr noundef %port, i32 noundef 3, i32 noundef %and.sink.i) #9
  %add = add i32 %count.3, %copied.0
  %97 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rx, align 4
  %add80 = add i32 %98, %count.3
  store i32 %add80, ptr %rx, align 4
  br label %while.cond

while.end:                                        ; preds = %sci_rxfill.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool81.not = icmp eq i32 %copied.0, 0
  br i1 %tobool81.not, label %if.else83, label %if.then82

if.then82:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tty_flip_buffer_push(ptr noundef %1) #9
  br label %cleanup91

if.else83:                                        ; preds = %while.end
  %99 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %serial_in.i, align 4
  %call.i209 = tail call i32 %100(ptr noundef %port, i32 noundef 7) #9
  %101 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %serial_in.i, align 4
  %call.i211 = tail call i32 %102(ptr noundef %port, i32 noundef 3) #9
  %103 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %104)
  %cmp87 = icmp eq i32 %104, 52
  %cond89 = select i1 %cmp87, i32 -68, i32 -4
  br i1 %cmp87, label %if.else83.sci_clear_SCxSR.exit226_crit_edge, label %if.else.i217

if.else83.sci_clear_SCxSR.exit226_crit_edge:      ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_clear_SCxSR.exit226

if.else.i217:                                     ; preds = %if.else83
  %105 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %params.i, align 8
  %overrun_mask.i215 = getelementptr inbounds %struct.sci_port_params, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %overrun_mask.i215 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %overrun_mask.i215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %108)
  %cmp1.i216 = icmp eq i32 %108, 512
  br i1 %cmp1.i216, label %if.then2.i221, label %if.else4.i223

if.then2.i221:                                    ; preds = %if.else.i217
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %serial_in.i, align 4
  %call.i.i219 = tail call i32 %110(ptr noundef %port, i32 noundef 3) #9
  %and.i220 = and i32 %call.i.i219, %cond89
  br label %sci_clear_SCxSR.exit226

if.else4.i223:                                    ; preds = %if.else.i217
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i222 = and i32 %cond89, -65284
  br label %sci_clear_SCxSR.exit226

sci_clear_SCxSR.exit226:                          ; preds = %if.else4.i223, %if.then2.i221, %if.else83.sci_clear_SCxSR.exit226_crit_edge
  %and.sink.i224 = phi i32 [ %and.i220, %if.then2.i221 ], [ %and5.i222, %if.else4.i223 ], [ -68, %if.else83.sci_clear_SCxSR.exit226_crit_edge ]
  %111 = ptrtoint ptr %serial_out.i14.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %serial_out.i14.i, align 4
  tail call void %112(ptr noundef %port, i32 noundef 3, i32 noundef %and.sink.i224) #9
  br label %cleanup91

cleanup91:                                        ; preds = %sci_clear_SCxSR.exit226, %if.then82, %entry.cleanup91_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_request_room(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scif_set_rtrg(ptr noundef %port, i32 noundef %rx_trig) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %0 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rx_trig)
  %cmp.not = icmp ugt i32 %1, %rx_trig
  %sub = add i32 %1, -1
  %spec.select = select i1 %cmp.not, i32 %rx_trig, i32 %sub
  %2 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 1)
  %params = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %params, align 8
  %size = getelementptr [20 x %struct.plat_sci_reg], ptr %4, i32 0, i32 17, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %7 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial_out.i, align 4
  tail call void %8(ptr noundef %port, i32 noundef 17, i32 noundef %2) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %10, label %do.end [
    i32 53, label %sw.bb
    i32 83, label %if.end6.sw.bb18_crit_edge
    i32 93, label %if.end6.sw.bb18_crit_edge70
  ]

if.end6.sw.bb18_crit_edge70:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

if.end6.sw.bb18_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp7 = icmp ult i32 %2, 4
  br i1 %cmp7, label %sw.bb.sw.epilog_crit_edge, label %if.else

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp9 = icmp ult i32 %2, 8
  br i1 %cmp9, label %if.else.sw.epilog_crit_edge, label %if.else11

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %2)
  %cmp12 = icmp ult i32 %2, 14
  %. = select i1 %cmp12, i32 8, i32 14
  %.66 = select i1 %cmp12, i32 128, i32 192
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end6.sw.bb18_crit_edge, %if.end6.sw.bb18_crit_edge70
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp19 = icmp ult i32 %2, 16
  br i1 %cmp19, label %sw.bb18.sw.epilog_crit_edge, label %if.else21

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else21:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %cmp22 = icmp ult i32 %2, 32
  br i1 %cmp22, label %if.else21.sw.epilog_crit_edge, label %if.else24

if.else21.sw.epilog_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %2)
  %cmp25 = icmp ult i32 %2, 48
  %.67 = select i1 %cmp25, i32 32, i32 48
  %.68 = select i1 %cmp25, i32 128, i32 192
  br label %sw.epilog

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1065, i32 noundef 9, ptr noundef nonnull @.str.80) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.else24, %if.else21.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %if.else11, %if.else.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %rx_trig.addr.2 = phi i32 [ 1, %sw.bb.sw.epilog_crit_edge ], [ 4, %if.else.sw.epilog_crit_edge ], [ %., %if.else11 ], [ 1, %sw.bb18.sw.epilog_crit_edge ], [ 16, %if.else21.sw.epilog_crit_edge ], [ %.67, %if.else24 ]
  %bits.0 = phi i32 [ 0, %sw.bb.sw.epilog_crit_edge ], [ 64, %if.else.sw.epilog_crit_edge ], [ %.66, %if.else11 ], [ 0, %sw.bb18.sw.epilog_crit_edge ], [ 64, %if.else21.sw.epilog_crit_edge ], [ %.68, %if.else24 ]
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %12 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %13(ptr noundef %port, i32 noundef 4) #9
  %and = and i32 %call.i, -193
  %or = or i32 %and, %bits.0
  %serial_out.i69 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %14 = ptrtoint ptr %serial_out.i69 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serial_out.i69, align 4
  tail call void %15(ptr noundef %port, i32 noundef 4, i32 noundef %or) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %if.then5
  %retval.0 = phi i32 [ %2, %if.then5 ], [ 1, %do.end ], [ %rx_trig.addr.2, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_disable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sci_sck_calc(ptr nocapture noundef readonly %s, i32 noundef %bps, ptr nocapture noundef %srr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sci_port, ptr %s, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 38
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %3)
  %cmp.not = icmp ne i32 %3, 104
  %mul = zext i1 %cmp.not to i32
  %spec.select = shl i32 %1, %mul
  %sampling_rate_mask = getelementptr inbounds %struct.sci_port, ptr %s, i32 0, i32 3
  %4 = ptrtoint ptr %sampling_rate_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sampling_rate_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true) #9, !range !320
  %sub.i = sub nuw nsw i32 32, %6
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %7 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true), !range !320
  %8 = add nuw nsw i32 %7, 1
  %ffs60 = select i1 %tobool.not.i, i32 0, i32 %8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %ffs60)
  %cmp2.not61 = icmp ult i32 %cond.i, %ffs60
  br i1 %cmp2.not61, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %9 = phi i32 [ %14, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %min_err.063 = phi i32 [ %min_err.1, %for.inc.for.body_crit_edge ], [ 2147483647, %entry.for.body_crit_edge ]
  %sr.062 = phi i32 [ %sub, %for.inc.for.body_crit_edge ], [ %cond.i, %entry.for.body_crit_edge ]
  %sub = add i32 %sr.062, -1
  %shl = shl nuw i32 1, %sub
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %div57 = lshr i32 %sr.062, 1
  %add = add i32 %div57, %spec.select
  %div5 = udiv i32 %add, %sr.062
  %sub6 = sub i32 %div5, %bps
  %10 = tail call i32 @llvm.abs.i32(i32 %sub6, i1 false)
  %11 = tail call i32 @llvm.abs.i32(i32 %min_err.063, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp19.not = icmp slt i32 %10, %11
  br i1 %cmp19.not, label %if.end21, label %if.then4.for.inc_crit_edge

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end21:                                         ; preds = %if.then4
  %12 = ptrtoint ptr %srr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %srr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6)
  %tobool23.not = icmp eq i32 %sub6, 0
  br i1 %tobool23.not, label %if.end21.do.body_crit_edge, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end21.do.body_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc:                                          ; preds = %if.end21.for.inc_crit_edge, %if.then4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %min_err.1 = phi i32 [ %min_err.063, %if.then4.for.inc_crit_edge ], [ %sub6, %if.end21.for.inc_crit_edge ], [ %min_err.063, %for.body.for.inc_crit_edge ]
  %13 = ptrtoint ptr %sampling_rate_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sampling_rate_mask, align 8
  %15 = tail call i32 @llvm.cttz.i32(i32 %14, i1 true), !range !320
  %16 = add nuw nsw i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %iszero = icmp eq i32 %14, 0
  %ffs = select i1 %iszero, i32 0, i32 %16
  %cmp2.not = icmp ult i32 %sub, %ffs
  br i1 %cmp2.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end21.do.body_crit_edge, %entry.do.body_crit_edge
  %min_err.2 = phi i32 [ 2147483647, %entry.do.body_crit_edge ], [ %min_err.1, %for.inc.do.body_crit_edge ], [ 0, %if.end21.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_sck_calc.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_sck_calc, %if.then32)) #9
          to label %do.end [label %if.then32], !srcloc !323

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 45
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %19 = ptrtoint ptr %srr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %srr, align 4
  %add34 = add i32 %20, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_sck_calc.__UNIQUE_ID_ddebug270, ptr noundef %18, ptr noundef nonnull @.str.87, i32 noundef %bps, i32 noundef %min_err.2, i32 noundef %add34) #9
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  ret i32 %min_err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sci_brg_calc(ptr nocapture noundef readonly %s, i32 noundef %bps, i32 noundef %freq, ptr nocapture noundef %dlr, ptr nocapture noundef %srr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %1)
  %cmp.not = icmp ne i32 %1, 104
  %mul = zext i1 %cmp.not to i32
  %spec.select = shl i32 %freq, %mul
  %sampling_rate_mask = getelementptr inbounds %struct.sci_port, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %sampling_rate_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sampling_rate_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 true) #9, !range !320
  %sub.i = sub nuw nsw i32 32, %4
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %5 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true), !range !320
  %6 = add nuw nsw i32 %5, 1
  %ffs91 = select i1 %tobool.not.i, i32 0, i32 %6
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %ffs91)
  %cmp2.not92 = icmp ult i32 %cond.i, %ffs91
  br i1 %cmp2.not92, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %7 = phi i32 [ %15, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %min_err.094 = phi i32 [ %min_err.1, %for.inc.for.body_crit_edge ], [ 2147483647, %entry.for.body_crit_edge ]
  %sr.093 = phi i32 [ %sub, %for.inc.for.body_crit_edge ], [ %cond.i, %entry.for.body_crit_edge ]
  %sub = add i32 %sr.093, -1
  %shl = shl nuw i32 1, %sub
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %mul5 = mul i32 %sr.093, %bps
  %div87 = lshr i32 %mul5, 1
  %add = add i32 %div87, %spec.select
  %div6 = udiv i32 %add, %mul5
  %8 = tail call i32 @llvm.umax.i32(i32 %div6, i32 1)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 65535)
  %mul17 = mul i32 %9, %sr.093
  %div1988 = lshr i32 %mul17, 1
  %add20 = add i32 %div1988, %spec.select
  %div21 = udiv i32 %add20, %mul17
  %sub22 = sub i32 %div21, %bps
  %10 = tail call i32 @llvm.abs.i32(i32 %sub22, i1 false)
  %11 = tail call i32 @llvm.abs.i32(i32 %min_err.094, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp39.not = icmp slt i32 %10, %11
  br i1 %cmp39.not, label %if.end41, label %if.then4.for.inc_crit_edge

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end41:                                         ; preds = %if.then4
  %12 = ptrtoint ptr %dlr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %dlr, align 4
  %13 = ptrtoint ptr %srr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %srr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub22)
  %tobool43.not = icmp eq i32 %sub22, 0
  br i1 %tobool43.not, label %if.end41.do.body_crit_edge, label %if.end41.for.inc_crit_edge

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end41.do.body_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc:                                          ; preds = %if.end41.for.inc_crit_edge, %if.then4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %min_err.1 = phi i32 [ %min_err.094, %if.then4.for.inc_crit_edge ], [ %sub22, %if.end41.for.inc_crit_edge ], [ %min_err.094, %for.body.for.inc_crit_edge ]
  %14 = ptrtoint ptr %sampling_rate_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sampling_rate_mask, align 8
  %16 = tail call i32 @llvm.cttz.i32(i32 %15, i1 true), !range !320
  %17 = add nuw nsw i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %iszero = icmp eq i32 %15, 0
  %ffs = select i1 %iszero, i32 0, i32 %17
  %cmp2.not = icmp ult i32 %sub, %ffs
  br i1 %cmp2.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end41.do.body_crit_edge, %entry.do.body_crit_edge
  %min_err.2 = phi i32 [ 2147483647, %entry.do.body_crit_edge ], [ %min_err.1, %for.inc.do.body_crit_edge ], [ 0, %if.end41.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_brg_calc.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_brg_calc, %if.then52)) #9
          to label %do.end [label %if.then52], !srcloc !323

if.then52:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 45
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %20 = ptrtoint ptr %dlr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dlr, align 4
  %22 = ptrtoint ptr %srr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %srr, align 4
  %add54 = add i32 %23, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_brg_calc.__UNIQUE_ID_ddebug275, ptr noundef %19, ptr noundef nonnull @.str.89, i32 noundef %bps, i32 noundef %min_err.2, i32 noundef %21, i32 noundef %add54) #9
  br label %do.end

do.end:                                           ; preds = %if.then52, %do.body
  ret i32 %min_err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sci_scbrr_calc(ptr nocapture noundef readonly %s, i32 noundef %bps, ptr nocapture noundef %brr, ptr nocapture noundef %srr, ptr nocapture noundef %cks) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_rates = getelementptr inbounds %struct.sci_port, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %clk_rates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_rates, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 38
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %3)
  %cmp.not = icmp ne i32 %3, 104
  %mul = zext i1 %cmp.not to i32
  %spec.select = shl i32 %1, %mul
  %sampling_rate_mask = getelementptr inbounds %struct.sci_port, ptr %s, i32 0, i32 3
  %4 = ptrtoint ptr %sampling_rate_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sampling_rate_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true) #9, !range !320
  %sub.i = sub nuw nsw i32 32, %6
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %7 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true), !range !320
  %8 = add nuw nsw i32 %7, 1
  %ffs118 = select i1 %tobool.not.i, i32 0, i32 %8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %ffs118)
  %cmp2.not119 = icmp ult i32 %cond.i, %ffs118
  br i1 %cmp2.not119, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body:                                         ; preds = %for.inc59.for.body_crit_edge, %entry.for.body_crit_edge
  %9 = phi i32 [ %39, %for.inc59.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %sr.0121 = phi i32 [ %sub, %for.inc59.for.body_crit_edge ], [ %cond.i, %entry.for.body_crit_edge ]
  %min_err.0120 = phi i32 [ %min_err.3, %for.inc59.for.body_crit_edge ], [ 2147483647, %entry.for.body_crit_edge ]
  %sub = add i32 %sr.0121, -1
  %shl = shl nuw i32 1, %sub
  %and = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc59_crit_edge, label %for.body7.preheader

for.body.for.inc59_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

for.body7.preheader:                              ; preds = %for.body
  %mul10 = shl i32 %sr.0121, 1
  %mul108 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul10, i32 %bps)
  %mul.ov = extractvalue { i32, i1 } %mul108, 1
  br i1 %mul.ov, label %for.body7.preheader.for.inc59_crit_edge, label %if.end13

for.body7.preheader.for.inc59_crit_edge:          ; preds = %for.body7.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

if.end13:                                         ; preds = %for.body7.preheader
  %mul14 = mul i32 %mul10, %bps
  %div15109 = lshr exact i32 %mul14, 1
  %add16 = add i32 %div15109, %spec.select
  %div17 = udiv i32 %add16, %mul14
  %10 = tail call i32 @llvm.umax.i32(i32 %div17, i32 1)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 256)
  %mul28 = mul i32 %11, %mul10
  %div30110 = lshr exact i32 %mul28, 1
  %add31 = add i32 %div30110, %spec.select
  %div32 = udiv i32 %add31, %mul28
  %sub33 = sub i32 %div32, %bps
  %12 = tail call i32 @llvm.abs.i32(i32 %sub33, i1 false)
  %13 = tail call i32 @llvm.abs.i32(i32 %min_err.0120, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp50.not = icmp slt i32 %12, %13
  br i1 %cmp50.not, label %if.end52, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end52:                                         ; preds = %if.end13
  %sub53 = add nsw i32 %11, -1
  %14 = ptrtoint ptr %brr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub53, ptr %brr, align 4
  %15 = ptrtoint ptr %srr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %srr, align 4
  %16 = ptrtoint ptr %cks to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33)
  %tobool55.not = icmp eq i32 %sub33, 0
  br i1 %tobool55.not, label %if.end52.do.body_crit_edge, label %if.end52.for.inc_crit_edge

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end52.do.body_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc:                                          ; preds = %if.end52.for.inc_crit_edge, %if.end13.for.inc_crit_edge
  %min_err.2 = phi i32 [ %min_err.0120, %if.end13.for.inc_crit_edge ], [ %sub33, %if.end52.for.inc_crit_edge ]
  %mul10.1 = shl i32 %sr.0121, 3
  %mul108.1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul10.1, i32 %bps)
  %mul.ov.1 = extractvalue { i32, i1 } %mul108.1, 1
  br i1 %mul.ov.1, label %for.inc.for.inc59_crit_edge, label %if.end13.1

for.inc.for.inc59_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

if.end13.1:                                       ; preds = %for.inc
  %mul14.1 = mul i32 %mul10.1, %bps
  %div15109.1 = lshr exact i32 %mul14.1, 1
  %add16.1 = add i32 %div15109.1, %spec.select
  %div17.1 = udiv i32 %add16.1, %mul14.1
  %17 = tail call i32 @llvm.umax.i32(i32 %div17.1, i32 1)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 256)
  %mul28.1 = mul i32 %18, %mul10.1
  %div30110.1 = lshr exact i32 %mul28.1, 1
  %add31.1 = add i32 %div30110.1, %spec.select
  %div32.1 = udiv i32 %add31.1, %mul28.1
  %sub33.1 = sub i32 %div32.1, %bps
  %19 = tail call i32 @llvm.abs.i32(i32 %sub33.1, i1 false)
  %20 = tail call i32 @llvm.abs.i32(i32 %min_err.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp50.not.1 = icmp slt i32 %19, %20
  br i1 %cmp50.not.1, label %if.end52.1, label %if.end13.1.for.inc.1_crit_edge

if.end13.1.for.inc.1_crit_edge:                   ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end52.1:                                       ; preds = %if.end13.1
  %sub53.1 = add nsw i32 %18, -1
  %21 = ptrtoint ptr %brr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub53.1, ptr %brr, align 4
  %22 = ptrtoint ptr %srr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %srr, align 4
  %23 = ptrtoint ptr %cks to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %cks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33.1)
  %tobool55.not.1 = icmp eq i32 %sub33.1, 0
  br i1 %tobool55.not.1, label %if.end52.1.do.body_crit_edge, label %if.end52.1.for.inc.1_crit_edge

if.end52.1.for.inc.1_crit_edge:                   ; preds = %if.end52.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end52.1.do.body_crit_edge:                     ; preds = %if.end52.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.1:                                        ; preds = %if.end52.1.for.inc.1_crit_edge, %if.end13.1.for.inc.1_crit_edge
  %min_err.2.1 = phi i32 [ %min_err.2, %if.end13.1.for.inc.1_crit_edge ], [ %sub33.1, %if.end52.1.for.inc.1_crit_edge ]
  %mul10.2 = shl i32 %sr.0121, 5
  %mul108.2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul10.2, i32 %bps)
  %mul.ov.2 = extractvalue { i32, i1 } %mul108.2, 1
  br i1 %mul.ov.2, label %for.inc.1.for.inc59_crit_edge, label %if.end13.2

for.inc.1.for.inc59_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

if.end13.2:                                       ; preds = %for.inc.1
  %mul14.2 = mul i32 %mul10.2, %bps
  %div15109.2 = lshr exact i32 %mul14.2, 1
  %add16.2 = add i32 %div15109.2, %spec.select
  %div17.2 = udiv i32 %add16.2, %mul14.2
  %24 = tail call i32 @llvm.umax.i32(i32 %div17.2, i32 1)
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 256)
  %mul28.2 = mul i32 %25, %mul10.2
  %div30110.2 = lshr exact i32 %mul28.2, 1
  %add31.2 = add i32 %div30110.2, %spec.select
  %div32.2 = udiv i32 %add31.2, %mul28.2
  %sub33.2 = sub i32 %div32.2, %bps
  %26 = tail call i32 @llvm.abs.i32(i32 %sub33.2, i1 false)
  %27 = tail call i32 @llvm.abs.i32(i32 %min_err.2.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %27)
  %cmp50.not.2 = icmp slt i32 %26, %27
  br i1 %cmp50.not.2, label %if.end52.2, label %if.end13.2.for.inc.2_crit_edge

if.end13.2.for.inc.2_crit_edge:                   ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end52.2:                                       ; preds = %if.end13.2
  %sub53.2 = add nsw i32 %25, -1
  %28 = ptrtoint ptr %brr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub53.2, ptr %brr, align 4
  %29 = ptrtoint ptr %srr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %srr, align 4
  %30 = ptrtoint ptr %cks to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %cks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33.2)
  %tobool55.not.2 = icmp eq i32 %sub33.2, 0
  br i1 %tobool55.not.2, label %if.end52.2.do.body_crit_edge, label %if.end52.2.for.inc.2_crit_edge

if.end52.2.for.inc.2_crit_edge:                   ; preds = %if.end52.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end52.2.do.body_crit_edge:                     ; preds = %if.end52.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.2:                                        ; preds = %if.end52.2.for.inc.2_crit_edge, %if.end13.2.for.inc.2_crit_edge
  %min_err.2.2 = phi i32 [ %min_err.2.1, %if.end13.2.for.inc.2_crit_edge ], [ %sub33.2, %if.end52.2.for.inc.2_crit_edge ]
  %mul10.3 = shl i32 %sr.0121, 7
  %mul108.3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul10.3, i32 %bps)
  %mul.ov.3 = extractvalue { i32, i1 } %mul108.3, 1
  br i1 %mul.ov.3, label %for.inc.2.for.inc59_crit_edge, label %if.end13.3

for.inc.2.for.inc59_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

if.end13.3:                                       ; preds = %for.inc.2
  %mul14.3 = mul i32 %mul10.3, %bps
  %div15109.3 = lshr exact i32 %mul14.3, 1
  %add16.3 = add i32 %div15109.3, %spec.select
  %div17.3 = udiv i32 %add16.3, %mul14.3
  %31 = tail call i32 @llvm.umax.i32(i32 %div17.3, i32 1)
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 256)
  %mul28.3 = mul i32 %32, %mul10.3
  %div30110.3 = lshr exact i32 %mul28.3, 1
  %add31.3 = add i32 %div30110.3, %spec.select
  %div32.3 = udiv i32 %add31.3, %mul28.3
  %sub33.3 = sub i32 %div32.3, %bps
  %33 = tail call i32 @llvm.abs.i32(i32 %sub33.3, i1 false)
  %34 = tail call i32 @llvm.abs.i32(i32 %min_err.2.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %34)
  %cmp50.not.3 = icmp slt i32 %33, %34
  br i1 %cmp50.not.3, label %if.end52.3, label %if.end13.3.for.inc59_crit_edge

if.end13.3.for.inc59_crit_edge:                   ; preds = %if.end13.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

if.end52.3:                                       ; preds = %if.end13.3
  %sub53.3 = add nsw i32 %32, -1
  %35 = ptrtoint ptr %brr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub53.3, ptr %brr, align 4
  %36 = ptrtoint ptr %srr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub, ptr %srr, align 4
  %37 = ptrtoint ptr %cks to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %cks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33.3)
  %tobool55.not.3 = icmp eq i32 %sub33.3, 0
  br i1 %tobool55.not.3, label %if.end52.3.do.body_crit_edge, label %if.end52.3.for.inc59_crit_edge

if.end52.3.for.inc59_crit_edge:                   ; preds = %if.end52.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

if.end52.3.do.body_crit_edge:                     ; preds = %if.end52.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc59:                                        ; preds = %if.end52.3.for.inc59_crit_edge, %if.end13.3.for.inc59_crit_edge, %for.inc.2.for.inc59_crit_edge, %for.inc.1.for.inc59_crit_edge, %for.inc.for.inc59_crit_edge, %for.body7.preheader.for.inc59_crit_edge, %for.body.for.inc59_crit_edge
  %min_err.3 = phi i32 [ %min_err.0120, %for.body.for.inc59_crit_edge ], [ %min_err.0120, %for.body7.preheader.for.inc59_crit_edge ], [ %min_err.2, %for.inc.for.inc59_crit_edge ], [ %min_err.2.1, %for.inc.1.for.inc59_crit_edge ], [ %min_err.2.2, %for.inc.2.for.inc59_crit_edge ], [ %min_err.2.2, %if.end13.3.for.inc59_crit_edge ], [ %sub33.3, %if.end52.3.for.inc59_crit_edge ]
  %38 = ptrtoint ptr %sampling_rate_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sampling_rate_mask, align 8
  %40 = tail call i32 @llvm.cttz.i32(i32 %39, i1 true), !range !320
  %41 = add nuw nsw i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %iszero = icmp eq i32 %39, 0
  %ffs = select i1 %iszero, i32 0, i32 %41
  %cmp2.not = icmp ult i32 %sub, %ffs
  br i1 %cmp2.not, label %for.inc59.do.body_crit_edge, label %for.inc59.for.body_crit_edge

for.inc59.for.body_crit_edge:                     ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc59.do.body_crit_edge:                      ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %for.inc59.do.body_crit_edge, %if.end52.3.do.body_crit_edge, %if.end52.2.do.body_crit_edge, %if.end52.1.do.body_crit_edge, %if.end52.do.body_crit_edge, %entry.do.body_crit_edge
  %min_err.4 = phi i32 [ 2147483647, %entry.do.body_crit_edge ], [ %min_err.3, %for.inc59.do.body_crit_edge ], [ 0, %if.end52.do.body_crit_edge ], [ 0, %if.end52.1.do.body_crit_edge ], [ 0, %if.end52.2.do.body_crit_edge ], [ 0, %if.end52.3.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sci_scbrr_calc.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sci_scbrr_calc, %if.then66)) #9
          to label %do.end [label %if.then66], !srcloc !323

if.then66:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 45
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 8
  %44 = ptrtoint ptr %brr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %brr, align 4
  %46 = ptrtoint ptr %srr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %srr, align 4
  %add68 = add i32 %47, 1
  %48 = ptrtoint ptr %cks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cks, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sci_scbrr_calc.__UNIQUE_ID_ddebug280, ptr noundef %43, ptr noundef nonnull @.str.91, i32 noundef %bps, i32 noundef %min_err.4, i32 noundef %45, i32 noundef %add68, i32 noundef %49) #9
  br label %do.end

do.end:                                           ; preds = %if.then66, %do.body
  ret i32 %min_err.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sci_port_enable(ptr nocapture noundef %sci_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %sci_port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %1, i32 noundef 4) #9
  %arrayidx = getelementptr %struct.sci_port, ptr %sci_port, i32 0, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call.i21 = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 @clk_get_rate(ptr noundef %5) #9
  %arrayidx7 = getelementptr %struct.sci_port, ptr %sci_port, i32 0, i32 7, i32 0
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call6, ptr %arrayidx7, align 4
  %arrayidx.1 = getelementptr %struct.sci_port, ptr %sci_port, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  %call.i21.1 = tail call i32 @clk_prepare(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.1)
  %tobool.not.i.1 = icmp eq i32 %call.i21.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %clk_prepare_enable.exit.clk_prepare_enable.exit.1_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit.1_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.1

if.end.i.1:                                       ; preds = %clk_prepare_enable.exit
  %call1.i.1 = tail call i32 @clk_enable(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %if.end.i.1.clk_prepare_enable.exit.1_crit_edge, label %if.then3.i.1

if.end.i.1.clk_prepare_enable.exit.1_crit_edge:   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.1

if.then3.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %8) #9
  br label %clk_prepare_enable.exit.1

clk_prepare_enable.exit.1:                        ; preds = %if.then3.i.1, %if.end.i.1.clk_prepare_enable.exit.1_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit.1_crit_edge
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %call6.1 = tail call i32 @clk_get_rate(ptr noundef %10) #9
  %arrayidx7.1 = getelementptr %struct.sci_port, ptr %sci_port, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call6.1, ptr %arrayidx7.1, align 4
  %arrayidx.2 = getelementptr %struct.sci_port, ptr %sci_port, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %call.i21.2 = tail call i32 @clk_prepare(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.2)
  %tobool.not.i.2 = icmp eq i32 %call.i21.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %clk_prepare_enable.exit.1.clk_prepare_enable.exit.2_crit_edge

clk_prepare_enable.exit.1.clk_prepare_enable.exit.2_crit_edge: ; preds = %clk_prepare_enable.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.2

if.end.i.2:                                       ; preds = %clk_prepare_enable.exit.1
  %call1.i.2 = tail call i32 @clk_enable(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool2.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool2.not.i.2, label %if.end.i.2.clk_prepare_enable.exit.2_crit_edge, label %if.then3.i.2

if.end.i.2.clk_prepare_enable.exit.2_crit_edge:   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.2

if.then3.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %13) #9
  br label %clk_prepare_enable.exit.2

clk_prepare_enable.exit.2:                        ; preds = %if.then3.i.2, %if.end.i.2.clk_prepare_enable.exit.2_crit_edge, %clk_prepare_enable.exit.1.clk_prepare_enable.exit.2_crit_edge
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %call6.2 = tail call i32 @clk_get_rate(ptr noundef %15) #9
  %arrayidx7.2 = getelementptr %struct.sci_port, ptr %sci_port, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call6.2, ptr %arrayidx7.2, align 4
  %arrayidx.3 = getelementptr %struct.sci_port, ptr %sci_port, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.3, align 4
  %call.i21.3 = tail call i32 @clk_prepare(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.3)
  %tobool.not.i.3 = icmp eq i32 %call.i21.3, 0
  br i1 %tobool.not.i.3, label %if.end.i.3, label %clk_prepare_enable.exit.2.clk_prepare_enable.exit.3_crit_edge

clk_prepare_enable.exit.2.clk_prepare_enable.exit.3_crit_edge: ; preds = %clk_prepare_enable.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.3

if.end.i.3:                                       ; preds = %clk_prepare_enable.exit.2
  %call1.i.3 = tail call i32 @clk_enable(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %tobool2.not.i.3 = icmp eq i32 %call1.i.3, 0
  br i1 %tobool2.not.i.3, label %if.end.i.3.clk_prepare_enable.exit.3_crit_edge, label %if.then3.i.3

if.end.i.3.clk_prepare_enable.exit.3_crit_edge:   ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.3

if.then3.i.3:                                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %18) #9
  br label %clk_prepare_enable.exit.3

clk_prepare_enable.exit.3:                        ; preds = %if.then3.i.3, %if.end.i.3.clk_prepare_enable.exit.3_crit_edge, %clk_prepare_enable.exit.2.clk_prepare_enable.exit.3_crit_edge
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.3, align 4
  %call6.3 = tail call i32 @clk_get_rate(ptr noundef %20) #9
  %arrayidx7.3 = getelementptr %struct.sci_port, ptr %sci_port, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call6.3, ptr %arrayidx7.3, align 4
  %22 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %sci_port, i32 0, i32 22
  %24 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %uartclk, align 8
  br label %cleanup

cleanup:                                          ; preds = %clk_prepare_enable.exit.3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_frame_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sci_port_disable(ptr nocapture noundef readonly %sci_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %sci_port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.sci_port, ptr %sci_port, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %arrayidx.1 = getelementptr %struct.sci_port, ptr %sci_port, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %arrayidx.2 = getelementptr %struct.sci_port, ptr %sci_port, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %arrayidx.3 = getelementptr %struct.sci_port, ptr %sci_port, i32 0, i32 6, i32 0
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_fifo_timer_fn(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_fifo_timer_fn.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_fifo_timer_fn, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !323

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %t, i32 -412
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx_fifo_timer_fn.__UNIQUE_ID_ddebug249, ptr noundef %1, ptr noundef nonnull @.str.94) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %t, i32 -660
  %call5 = tail call fastcc i32 @scif_set_rtrg(ptr noundef %add.ptr, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_fifo_trigger_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rx_trigger = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %rx_trigger to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_trigger, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.119, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_fifo_trigger_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %r = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #9
  %2 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %r, align 4, !annotation !333
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %r) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %r, align 4
  %call3 = call fastcc i32 @scif_set_rtrg(ptr noundef %1, i32 noundef %4)
  %rx_trigger = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %rx_trigger to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3, ptr %rx_trigger, align 8
  %type = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 83, label %if.end.if.then6_crit_edge
    i32 93, label %if.end.if.then6_crit_edge17
  ]

if.end.if.then6_crit_edge17:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge17
  %call7 = call fastcc i32 @scif_set_rtrg(ptr noundef %1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_fifo_timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %3)
  %cmp = icmp eq i32 %3, 104
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hscif_tot = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %hscif_tot to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hscif_tot, align 8
  %6 = lshr i16 %5, 14
  %7 = zext i16 %6 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_fifo_timeout = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %rx_fifo_timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_fifo_timeout, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %v.0 = phi i32 [ %7, %if.then ], [ %9, %if.else ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.119, i32 noundef %v.0)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_fifo_timeout_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %r = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #9
  %2 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %r, align 4, !annotation !333
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %r) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %4)
  %cmp = icmp eq i32 %4, 104
  %5 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %r, align 4
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %7 = icmp ugt i32 %6, 3
  br i1 %7, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %.tr = trunc i32 %6 to i16
  %conv = shl nuw i16 %.tr, 14
  %hscif_tot = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 29
  %8 = ptrtoint ptr %hscif_tot to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %hscif_tot, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %rx_fifo_timeout = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %rx_fifo_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %rx_fifo_timeout, align 4
  %call8 = call fastcc i32 @scif_set_rtrg(ptr noundef %1, i32 noundef 1)
  %10 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9 = icmp sgt i32 %11, 0
  br i1 %cmp9, label %do.body, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rx_fifo_timer = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 27
  call void @init_timer_key(ptr noundef %rx_fifo_timer, ptr noundef nonnull @rx_fifo_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.121, ptr noundef nonnull @rx_fifo_timeout_store.__key) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.else.cleanup_crit_edge, %if.end7, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ], [ %count, %if.else.cleanup_crit_edge ], [ %count, %do.body ], [ %count, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @sci_uart_driver, ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @uart_resume_port(ptr noundef nonnull @sci_uart_driver, ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %idxprom
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 46
  %2 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end69_crit_edge

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %4 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %do.body55, label %do.body4

do.body4:                                         ; preds = %if.else
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !334
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not = icmp eq i32 %and.i, 0
  br i1 %tobool13.not, label %do.end16, label %do.end16.thread

do.end16:                                         ; preds = %do.body4
  tail call void @trace_hardirqs_off() #9
  %call19 = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then30, label %do.end16.if.end69_crit_edge

do.end16.if.end69_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

do.end16.thread:                                  ; preds = %do.body4
  %call19129 = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19129)
  %tobool20.not130 = icmp eq i32 %call19129, 0
  br i1 %tobool20.not130, label %do.end16.thread.do.body32_crit_edge, label %do.end16.thread.if.end69_crit_edge

do.end16.thread.if.end69_crit_edge:               ; preds = %do.end16.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

do.end16.thread.do.body32_crit_edge:              ; preds = %do.end16.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.then30:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body32

do.body32:                                        ; preds = %if.then30, %do.end16.thread.do.body32_crit_edge
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !335
  %and.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool40.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool40.not, label %if.then44, label %do.body32.do.end47_crit_edge, !prof !321

do.body32.do.end47_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.body32.do.end47_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #9, !srcloc !336
  br label %if.end69

do.body55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx) #9
  br label %if.end69

if.end69:                                         ; preds = %do.body55, %do.end47, %do.end16.thread.if.end69_crit_edge, %do.end16.if.end69_crit_edge, %entry.if.end69_crit_edge
  %tobool104.not = phi i1 [ false, %do.end16.thread.if.end69_crit_edge ], [ true, %do.end47 ], [ false, %do.end16.if.end69_crit_edge ], [ true, %entry.if.end69_crit_edge ], [ false, %do.body55 ]
  %flags.0 = phi i32 [ %5, %do.end16.thread.if.end69_crit_edge ], [ %5, %do.end47 ], [ %5, %do.end16.if.end69_crit_edge ], [ -1, %entry.if.end69_crit_edge ], [ %call63, %do.body55 ]
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 3
  %7 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %8(ptr noundef %arrayidx, i32 noundef 2) #9
  %cfg = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %idxprom, i32 2
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg, align 4
  %scscr = getelementptr inbounds %struct.plat_sci_port, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %scscr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scscr, align 4
  %and = and i32 %12, 65484
  %conv72 = and i32 %call.i, 65535
  %and73 = and i32 %call.i, 3
  %hscif_tot = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %idxprom, i32 29
  %13 = ptrtoint ptr %hscif_tot to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hscif_tot, align 8
  %conv77 = zext i16 %14 to i32
  %or = or i32 %and73, %and
  %conv75 = or i32 %or, %conv77
  %or78 = or i32 %conv75, 48
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 4
  %15 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial_out.i, align 8
  tail call void %16(ptr noundef %arrayidx, i32 noundef 2, i32 noundef %or78) #9
  tail call void @uart_console_write(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @serial_console_putchar) #9
  %type = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 38
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %18)
  %cmp79 = icmp eq i32 %18, 52
  %19 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serial_in.i, align 4
  %call.i127131 = tail call i32 %20(ptr noundef %arrayidx, i32 noundef 3) #9
  %conv89 = select i1 %cmp79, i32 132, i32 96
  %and90132 = and i32 %call.i127131, %conv89
  call void @__sanitizer_cov_trace_cmp4(i32 %and90132, i32 %conv89)
  %cmp92.not133 = icmp eq i32 %and90132, %conv89
  br i1 %cmp92.not133, label %if.end69.while.end_crit_edge, label %if.end69.do.end98_crit_edge

if.end69.do.end98_crit_edge:                      ; preds = %if.end69
  br label %do.end98

if.end69.while.end_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end98:                                         ; preds = %do.end98.do.end98_crit_edge, %if.end69.do.end98_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !338
  %21 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial_in.i, align 4
  %call.i127 = tail call i32 %22(ptr noundef %arrayidx, i32 noundef 3) #9
  %and90 = and i32 %call.i127, %conv89
  %cmp92.not = icmp eq i32 %and90, %conv89
  br i1 %cmp92.not, label %do.end98.while.end_crit_edge, label %do.end98.do.end98_crit_edge

do.end98.do.end98_crit_edge:                      ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end98

do.end98.while.end_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end98.while.end_crit_edge, %if.end69.while.end_crit_edge
  %23 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serial_out.i, align 8
  tail call void %24(ptr noundef %arrayidx, i32 noundef 2, i32 noundef %conv72) #9
  br i1 %tobool104.not, label %while.end.if.end107_crit_edge, label %if.then105

while.end.if.end107_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then105:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %flags.0) #9
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %while.end.if.end107_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_console_setup(ptr noundef %co, ptr noundef %options) #2 align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #9
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 115200, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #9
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #9
  %2 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #9
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %flow, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %5)
  %6 = icmp ugt i16 %5, 17
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv35 = zext i16 %5 to i32
  %arrayidx = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %conv35
  %ops = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 39
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end.i:                                         ; preds = %if.end9
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i.if.then3.i_crit_edge

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 33
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool2.not.i = icmp sgt i32 %16, -1
  br i1 %tobool2.not.i, label %if.else.i, label %lor.lhs.false.i.if.then3.i_crit_edge

lor.lhs.false.i.if.then3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.then3.i:                                       ; preds = %lor.lhs.false.i.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 43
  %17 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mapbase.i, align 8
  %reg_size.i = getelementptr [18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %conv35, i32 4
  %19 = ptrtoint ptr %reg_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_size.i, align 4
  %call4.i = tail call ptr @ioremap(i32 noundef %18, i32 noundef %20) #9
  %21 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call4.i, ptr %membase.i, align 8
  %tobool7.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool7.not.i, label %sci_remap_port.exit, label %if.then3.i.if.end15_crit_edge, !prof !321

if.then3.i.if.end15_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %mapbase14.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 43
  %22 = ptrtoint ptr %mapbase14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mapbase14.i, align 8
  %24 = inttoptr i32 %23 to ptr
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %membase.i, align 8
  br label %if.end15

sci_remap_port.exit:                              ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  %line.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 41
  %28 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %line.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.103, i32 noundef %29) #13
  br label %cleanup

if.end15:                                         ; preds = %if.else.i, %if.then3.i.if.end15_crit_edge, %if.end9.if.end15_crit_edge
  %tobool16.not = icmp eq ptr %options, null
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  %30 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %baud, align 4
  %32 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %parity, align 4
  %34 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bits, align 4
  %36 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flow, align 4
  %call19 = call i32 @uart_set_options(ptr noundef %arrayidx, ptr noundef %co, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %sci_remap_port.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end18 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -6, %sci_remap_port.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_console_putchar(ptr noundef %port, i32 noundef %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %type.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %port, i32 noundef 3) #9
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %3)
  %cmp.i = icmp eq i32 %3, 52
  %cond.i = select i1 %cmp.i, i32 128, i32 32
  %and.i = and i32 %cond.i, %call.i.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %conv3.i = and i32 %ch, 255
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %5(ptr noundef %port, i32 noundef 6, i32 noundef %conv3.i) #9
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %7)
  %cmp5.i = icmp eq i32 %7, 52
  %and12.i = select i1 %cmp5.i, i32 -136, i32 -97
  br i1 %cmp5.i, label %do.end.i.sci_poll_put_char.exit_crit_edge, label %if.else.i.i

do.end.i.sci_poll_put_char.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sci_poll_put_char.exit

if.else.i.i:                                      ; preds = %do.end.i
  %params.i.i = getelementptr inbounds %struct.sci_port, ptr %port, i32 0, i32 1
  %8 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params.i.i, align 8
  %overrun_mask.i.i = getelementptr inbounds %struct.sci_port_params, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %overrun_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %overrun_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %11)
  %cmp1.i.i = icmp eq i32 %11, 512
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else4.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i.i = tail call i32 %13(ptr noundef %port, i32 noundef 3) #9
  %and.i.i = and i32 %call.i.i.i, %and12.i
  br label %sci_poll_put_char.exit

if.else4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i.i = and i32 %and12.i, -65281
  br label %sci_poll_put_char.exit

sci_poll_put_char.exit:                           ; preds = %if.else4.i.i, %if.then2.i.i, %do.end.i.sci_poll_put_char.exit_crit_edge
  %and.sink.i.i = phi i32 [ %and.i.i, %if.then2.i.i ], [ %and5.i.i, %if.else4.i.i ], [ -136, %do.end.i.sci_poll_put_char.exit_crit_edge ]
  %14 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %15(ptr noundef %port, i32 noundef 3, i32 noundef %and.sink.i.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @early_console_setup(ptr nocapture noundef %device, i32 noundef %type) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %port = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1
  %serial_in = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %serial_in to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sci_serial_in, ptr %serial_in, align 4
  %serial_out = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %serial_out to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sci_serial_out, ptr %serial_out, align 4
  %type4 = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 38
  %4 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %type4, align 4
  %5 = call ptr @memcpy(ptr @sci_ports, ptr %port, i32 360)
  store i32 %type, ptr @port_cfg, align 4
  store ptr @port_cfg, ptr getelementptr inbounds ([18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 0, i32 2), align 4
  %call = tail call fastcc ptr @sci_probe_regmap(ptr noundef nonnull @port_cfg)
  store ptr %call, ptr getelementptr inbounds ([18 x %struct.sci_port], ptr @sci_ports, i32 0, i32 0, i32 1), align 8
  %call6 = tail call i32 @sci_serial_in(ptr noundef nonnull @sci_ports, i32 noundef 2)
  store i32 %call6, ptr getelementptr inbounds (%struct.plat_sci_port, ptr @port_cfg, i32 0, i32 3), align 4
  %or = or i32 %call6, 48
  tail call void @sci_serial_out(ptr noundef nonnull @sci_ports, i32 noundef 2, i32 noundef %or)
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @serial_console_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !98, !100, !101, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !116, !118, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !146, !147, !149, !150, !151, !153, !154, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !170, !172, !173, !174, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !197, !199, !201, !202, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !226, !227, !228, !230, !232, !234, !236, !238, !240, !242, !243, !244, !245, !247, !248, !249, !250, !252, !253, !254, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !274, !276, !277, !279, !281, !282, !284, !286, !287, !289, !290, !292, !294, !296, !298, !300, !302, !304, !306, !307, !308, !309}
!llvm.module.flags = !{!311, !312, !313, !314, !315, !316, !317, !318}
!llvm.ident = !{!319}

!0 = !{ptr @__UNIQUE_ID___earlycon_sci291, !1, !"__UNIQUE_ID___earlycon_sci291", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/sh-sci.c", i32 3473, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_scif292, !3, !"__UNIQUE_ID___earlycon_scif292", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/sh-sci.c", i32 3474, i32 1}
!4 = !{ptr @__UNIQUE_ID___earlycon_scif293, !5, !"__UNIQUE_ID___earlycon_scif293", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/sh-sci.c", i32 3475, i32 1}
!6 = !{ptr @__UNIQUE_ID___earlycon_scif294, !7, !"__UNIQUE_ID___earlycon_scif294", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/sh-sci.c", i32 3476, i32 1}
!8 = !{ptr @__UNIQUE_ID___earlycon_scifa295, !9, !"__UNIQUE_ID___earlycon_scifa295", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/sh-sci.c", i32 3477, i32 1}
!10 = !{ptr @__UNIQUE_ID___earlycon_scifb296, !11, !"__UNIQUE_ID___earlycon_scifb296", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/sh-sci.c", i32 3478, i32 1}
!12 = !{ptr @__UNIQUE_ID___earlycon_hscif297, !13, !"__UNIQUE_ID___earlycon_hscif297", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/sh-sci.c", i32 3479, i32 1}
!14 = !{ptr @__initcall__kmod_sh_sci__298_3482_sci_init6, !15, !"__initcall__kmod_sh_sci__298_3482_sci_init6", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/sh-sci.c", i32 3482, i32 1}
!16 = !{ptr @__exitcall_sci_exit, !17, !"__exitcall_sci_exit", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/sh-sci.c", i32 3483, i32 1}
!18 = !{ptr @__UNIQUE_ID_file299, !19, !"__UNIQUE_ID_file299", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/sh-sci.c", i32 3485, i32 1}
!20 = !{ptr @__UNIQUE_ID_license300, !19, !"__UNIQUE_ID_license300", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_alias301, !22, !"__UNIQUE_ID_alias301", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/sh-sci.c", i32 3486, i32 1}
!23 = !{ptr @__UNIQUE_ID_author302, !24, !"__UNIQUE_ID_author302", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/sh-sci.c", i32 3487, i32 1}
!25 = !{ptr @__UNIQUE_ID_description303, !26, !"__UNIQUE_ID_description303", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/sh-sci.c", i32 3488, i32 1}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/sh-sci.c", i32 3392, i32 11}
!29 = !{ptr @sci_driver, !30, !"sci_driver", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/sh-sci.c", i32 3388, i32 31}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/sh-sci.c", i32 3327, i32 4}
!33 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sci_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @sci_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/sh-sci.c", i32 3206, i32 11}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/sh-sci.c", i32 3210, i32 3}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sci_parse_dt._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @sci_parse_dt._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/sh-sci.c", i32 3216, i32 3}
!48 = !{ptr @sci_parse_dt._entry.9, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sci_parse_dt._entry_ptr.11, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/serial/sh-sci.c", i32 3226, i32 27}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/tty/serial/sh-sci.c", i32 3230, i32 3}
!54 = !{ptr @sci_parse_dt._entry.13, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sci_parse_dt._entry_ptr.15, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/sh-sci.c", i32 3234, i32 3}
!58 = !{ptr @sci_parse_dt._entry.16, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @sci_parse_dt._entry_ptr.18, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/sh-sci.c", i32 3244, i32 45}
!62 = !{ptr @sci_ports, !63, !"sci_ports", i1 false, i1 false}
!63 = !{!"../drivers/tty/serial/sh-sci.c", i32 164, i32 24}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/sh-sci.c", i32 3258, i32 3}
!66 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sci_probe_single._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @sci_probe_single._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/tty/serial/sh-sci.c", i32 3260, i32 3}
!72 = !{ptr @sci_probe_single._entry.23, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @sci_probe_single._entry_ptr.25, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/tty/serial/sh-sci.c", i32 3288, i32 4}
!76 = !{ptr @sci_probe_single._entry.26, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @sci_probe_single._entry_ptr.28, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/tty/serial/sh-sci.c", i32 3099, i32 8}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @sci_uart_registration_lock, !79, !"sci_uart_registration_lock", i1 false, i1 false}
!82 = !{ptr @sci_uart_ops, !83, !"sci_uart_ops", i1 false, i1 false}
!83 = !{!"../drivers/tty/serial/sh-sci.c", i32 2730, i32 30}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/sh-sci.c", i32 2158, i32 2}
!86 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @sci_startup.__UNIQUE_ID_ddebug267, !85, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/tty/serial/sh-sci.c", i32 1563, i32 2}
!91 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @sci_request_dma.__UNIQUE_ID_ddebug260, !90, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/tty/serial/sh-sci.c", i32 1581, i32 44}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/tty/serial/sh-sci.c", i32 1585, i32 2}
!97 = !{ptr @sci_request_dma.__UNIQUE_ID_ddebug261, !96, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/tty/serial/sh-sci.c", i32 1593, i32 4}
!100 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sci_request_dma._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @sci_request_dma._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/tty/serial/sh-sci.c", i32 1596, i32 4}
!105 = !{ptr @sci_request_dma.__UNIQUE_ID_ddebug262, !104, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!106 = !{ptr @sci_request_dma.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/tty/serial/sh-sci.c", i32 1600, i32 4}
!108 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/tty/serial/sh-sci.c", i32 1606, i32 2}
!111 = !{ptr @sci_request_dma.__UNIQUE_ID_ddebug263, !110, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/tty/serial/sh-sci.c", i32 1616, i32 4}
!114 = !{ptr @sci_request_dma._entry.43, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @sci_request_dma._entry_ptr.45, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/tty/serial/sh-sci.c", i32 1530, i32 31}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/tty/serial/sh-sci.c", i32 1530, i32 38}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/tty/serial/sh-sci.c", i32 1532, i32 3}
!122 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @sci_request_dma_chan.__UNIQUE_ID_ddebug259, !121, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/tty/serial/sh-sci.c", i32 1550, i32 3}
!126 = !{ptr @sci_request_dma_chan._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @sci_request_dma_chan._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!130 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/tty/serial/sh-sci.c", i32 1425, i32 3}
!134 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @sci_dma_tx_work_fn._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @sci_dma_tx_work_fn._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/tty/serial/sh-sci.c", i32 1437, i32 3}
!139 = !{ptr @sci_dma_tx_work_fn._entry.55, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @sci_dma_tx_work_fn._entry_ptr.57, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/tty/serial/sh-sci.c", i32 1442, i32 2}
!143 = !{ptr @sci_dma_tx_work_fn.__UNIQUE_ID_ddebug255, !142, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/tty/serial/sh-sci.c", i32 1180, i32 2}
!146 = !{ptr @sci_dma_tx_complete.__UNIQUE_ID_ddebug250, !145, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/tty/serial/sh-sci.c", i32 1467, i32 2}
!149 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @sci_dma_rx_timer_fn.__UNIQUE_ID_ddebug256, !148, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/tty/serial/sh-sci.c", i32 1480, i32 3}
!153 = !{ptr @sci_dma_rx_timer_fn.__UNIQUE_ID_ddebug257, !152, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!154 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/tty/serial/sh-sci.c", i32 1498, i32 3}
!156 = !{ptr @sci_dma_rx_timer_fn.__UNIQUE_ID_ddebug258, !155, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!157 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/tty/serial/sh-sci.c", i32 1287, i32 2}
!159 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @sci_dma_rx_complete.__UNIQUE_ID_ddebug251, !158, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!161 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/tty/serial/sh-sci.c", i32 1318, i32 2}
!163 = !{ptr @sci_dma_rx_complete.__UNIQUE_ID_ddebug252, !162, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!164 = !{ptr @.str.67, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/tty/serial/sh-sci.c", i32 1324, i32 2}
!166 = !{ptr @sci_dma_rx_complete._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @sci_dma_rx_complete._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/tty/serial/sh-sci.c", i32 1923, i32 43}
!170 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/tty/serial/sh-sci.c", i32 1933, i32 4}
!172 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @sci_request_irq._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @sci_request_irq._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.71, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/tty/serial/sh-sci.c", i32 1854, i32 11}
!177 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/tty/serial/sh-sci.c", i32 1859, i32 11}
!179 = !{ptr @.str.73, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/tty/serial/sh-sci.c", i32 1864, i32 11}
!181 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/tty/serial/sh-sci.c", i32 1869, i32 11}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/tty/serial/sh-sci.c", i32 1874, i32 11}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/tty/serial/sh-sci.c", i32 1879, i32 11}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/tty/serial/sh-sci.c", i32 1887, i32 11}
!189 = !{ptr @sci_irq_desc, !190, !"sci_irq_desc", i1 false, i1 false}
!190 = !{!"../drivers/tty/serial/sh-sci.c", i32 1849, i32 3}
!191 = !{ptr @.str.78, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/tty/serial/sh-sci.c", i32 1705, i32 3}
!193 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @sci_rx_interrupt.__UNIQUE_ID_ddebug266, !192, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!195 = !{ptr @.str.80, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/tty/serial/sh-sci.c", i32 1065, i32 3}
!197 = !{ptr @.str.81, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!199 = !{ptr @.str.82, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/tty/serial/sh-sci.c", i32 2177, i32 2}
!201 = !{ptr @sci_shutdown.__UNIQUE_ID_ddebug268, !200, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!202 = !{ptr @.str.83, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/tty/serial/sh-sci.c", i32 2196, i32 3}
!204 = !{ptr @sci_shutdown.__UNIQUE_ID_ddebug269, !203, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!205 = !{ptr @.str.84, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/tty/serial/sh-sci.c", i32 2476, i32 3}
!207 = !{ptr @.str.85, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @sci_set_termios.__UNIQUE_ID_ddebug283, !206, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!209 = !{ptr @.str.86, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/tty/serial/sh-sci.c", i32 2230, i32 2}
!211 = !{ptr @.str.87, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @sci_sck_calc.__UNIQUE_ID_ddebug270, !210, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!213 = !{ptr @.str.88, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/tty/serial/sh-sci.c", i32 2261, i32 2}
!215 = !{ptr @.str.89, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @sci_brg_calc.__UNIQUE_ID_ddebug275, !214, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!217 = !{ptr @.str.90, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/tty/serial/sh-sci.c", i32 2329, i32 2}
!219 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @sci_scbrr_calc.__UNIQUE_ID_ddebug280, !218, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!221 = !{ptr @sci_reset.__key, !222, !"__key", i1 false, i1 false}
!222 = !{!"../drivers/tty/serial/sh-sci.c", i32 2358, i32 4}
!223 = !{ptr @.str.92, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.93, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/tty/serial/sh-sci.c", i32 1090, i32 2}
!226 = !{ptr @.str.94, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @rx_fifo_timer_fn.__UNIQUE_ID_ddebug249, !225, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!228 = !{ptr @.str.95, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/tty/serial/sh-sci.c", i32 2633, i32 10}
!230 = !{ptr @.str.96, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/tty/serial/sh-sci.c", i32 2635, i32 10}
!232 = !{ptr @.str.97, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/tty/serial/sh-sci.c", i32 2637, i32 10}
!234 = !{ptr @.str.98, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/tty/serial/sh-sci.c", i32 2639, i32 10}
!236 = !{ptr @.str.99, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/tty/serial/sh-sci.c", i32 2641, i32 10}
!238 = !{ptr @.str.100, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/tty/serial/sh-sci.c", i32 2643, i32 10}
!240 = !{ptr @.str.101, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/tty/serial/sh-sci.c", i32 2698, i32 3}
!242 = !{ptr @.str.102, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @sci_request_port._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @sci_request_port._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.103, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/tty/serial/sh-sci.c", i32 2662, i32 4}
!247 = !{ptr @.str.104, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @sci_remap_port._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @sci_remap_port._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.105, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/tty/serial/sh-sci.c", i32 2831, i32 3}
!252 = !{ptr @.str.106, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @sci_probe_regmap._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @sci_probe_regmap._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @sci_port_params, !256, !"sci_port_params", i1 false, i1 false}
!256 = !{!"../drivers/tty/serial/sh-sci.c", i32 174, i32 37}
!257 = !{ptr @.str.108, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/tty/serial/sh-sci.c", i32 2758, i32 15}
!259 = !{ptr @.str.109, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/tty/serial/sh-sci.c", i32 2759, i32 15}
!261 = !{ptr @.str.110, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/tty/serial/sh-sci.c", i32 2760, i32 19}
!263 = !{ptr @.str.111, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/tty/serial/sh-sci.c", i32 2761, i32 20}
!265 = !{ptr @.str.112, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/tty/serial/sh-sci.c", i32 2767, i32 24}
!267 = !{ptr @.str.113, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/tty/serial/sh-sci.c", i32 2780, i32 28}
!269 = !{ptr @.str.114, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/tty/serial/sh-sci.c", i32 2783, i32 12}
!271 = !{ptr @.str.115, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/tty/serial/sh-sci.c", i32 2788, i32 4}
!273 = !{ptr @sci_init_clocks.__UNIQUE_ID_ddebug288, !272, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!274 = !{ptr @.str.116, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/tty/serial/sh-sci.c", i32 2790, i32 4}
!276 = !{ptr @sci_init_clocks.__UNIQUE_ID_ddebug289, !275, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!277 = !{ptr @.str.117, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/tty/serial/sh-sci.c", i32 514, i32 3}
!279 = !{ptr @.str.118, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/tty/serial/sh-sci.c", i32 1123, i32 8}
!281 = !{ptr @dev_attr_rx_fifo_trigger, !280, !"dev_attr_rx_fifo_trigger", i1 false, i1 false}
!282 = !{ptr @.str.119, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/tty/serial/sh-sci.c", i32 1100, i32 22}
!284 = !{ptr @.str.120, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/tty/serial/sh-sci.c", i32 1169, i32 8}
!286 = !{ptr @dev_attr_rx_fifo_timeout, !285, !"dev_attr_rx_fifo_timeout", i1 false, i1 false}
!287 = !{ptr @rx_fifo_timeout_store.__key, !288, !"__key", i1 false, i1 false}
!288 = !{!"../drivers/tty/serial/sh-sci.c", i32 1163, i32 4}
!289 = !{ptr @.str.121, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @sci_ports_in_use, !291, !"sci_ports_in_use", i1 false, i1 false}
!291 = !{!"../drivers/tty/serial/sh-sci.c", i32 165, i32 22}
!292 = !{ptr @of_sci_match, !293, !"of_sci_match", i1 false, i1 false}
!293 = !{!"../drivers/tty/serial/sh-sci.c", i32 3133, i32 34}
!294 = !{ptr @sci_dev_pm_ops, !295, !"sci_dev_pm_ops", i1 false, i1 false}
!295 = !{!"../drivers/tty/serial/sh-sci.c", i32 3386, i32 8}
!296 = !{ptr @.str.122, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/tty/serial/sh-sci.c", i32 3103, i32 14}
!298 = !{ptr @sci_uart_driver, !299, !"sci_uart_driver", i1 false, i1 false}
!299 = !{!"../drivers/tty/serial/sh-sci.c", i32 3100, i32 27}
!300 = !{ptr @serial_console, !301, !"serial_console", i1 false, i1 false}
!301 = !{!"../drivers/tty/serial/sh-sci.c", i32 3044, i32 23}
!302 = !{ptr @port_cfg, !303, !"port_cfg", i1 false, i1 false}
!303 = !{!"../drivers/tty/serial/sh-sci.c", i32 3418, i32 29}
!304 = !{ptr @.str.123, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/tty/serial/sh-sci.c", i32 3400, i32 2}
!306 = !{ptr @.str.124, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @sci_init._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @sci_init._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @banner, !310, !"banner", i1 false, i1 false}
!310 = !{!"../drivers/tty/serial/sh-sci.c", i32 3097, i32 19}
!311 = !{i32 1, !"wchar_size", i32 2}
!312 = !{i32 1, !"min_enum_size", i32 4}
!313 = !{i32 8, !"branch-target-enforcement", i32 0}
!314 = !{i32 8, !"sign-return-address", i32 0}
!315 = !{i32 8, !"sign-return-address-all", i32 0}
!316 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!317 = !{i32 7, !"uwtable", i32 1}
!318 = !{i32 7, !"frame-pointer", i32 2}
!319 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!320 = !{i32 0, i32 33}
!321 = !{!"branch_weights", i32 1, i32 2000}
!322 = !{i8 0, i8 2}
!323 = !{i64 2148806029, i64 2148806034, i64 2148806047, i64 2148806091, i64 2148806125, i64 2148806146}
!324 = !{i64 6698167}
!325 = !{i64 2154230022}
!326 = !{i64 6697549}
!327 = !{i64 2154230634}
!328 = !{i64 2154231627}
!329 = !{i64 6697772}
!330 = !{i64 2154232051}
!331 = !{i64 6697349}
!332 = !{!"branch_weights", i32 2000, i32 1}
!333 = !{!"auto-init"}
!334 = !{i64 716695, i64 716756}
!335 = !{i64 719427}
!336 = !{i64 719712}
!337 = !{i64 2155201130}
!338 = !{i64 2155200972}
