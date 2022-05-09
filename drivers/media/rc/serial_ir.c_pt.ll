; ModuleID = '/llk/IR_all_yes/drivers/media/rc/serial_ir.c_pt.bc'
source_filename = "../drivers/media/rc/serial_ir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serial_ir = type { i64, ptr, ptr, %struct.timer_list, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serial_ir_hw = type { i32, i32, i8, i8, i8, ptr, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ir_raw_event = type { %union.anon.73, i8, i8 }
%union.anon.73 = type { i32 }

@serial_ir = internal global { %struct.serial_ir, [56 x i8] } zeroinitializer, align 32
@__initcall__kmod_serial_ir__234_804_serial_ir_init_module6 = internal global ptr @serial_ir_init_module, section ".initcall6.init", align 4
@__exitcall_serial_ir_exit_module = internal global ptr @serial_ir_exit_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [66 x i8] c"serial_ir.description=Infra-red receiver driver for serial ports.\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [91 x i8] c"serial_ir.author=Ralph Metzler, Trent Piepho, Ben Pfaff, Christoph Bartelmus, Andrei Tanas\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [42 x i8] c"serial_ir.file=drivers/media/rc/serial_ir\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [22 x i8] c"serial_ir.license=GPL\00", section ".modinfo", align 1
@__param_str_type = internal constant [15 x i8] c"serial_ir.type\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_type = internal constant %struct.kernel_param { ptr @__param_str_type, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @type } }, section "__param", align 4
@__UNIQUE_ID_typetype239 = internal constant [28 x i8] c"serial_ir.parmtype=type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_type240 = internal constant [104 x i8] c"serial_ir.parm=type:Hardware type (0 = home-brew, 1 = IRdeo, 2 = IRdeo Remote, 3 = AnimaX, 4 = IgorPlug\00", section ".modinfo", align 1
@__param_str_io = internal constant [13 x i8] c"serial_ir.io\00", align 1
@io = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_io = internal constant %struct.kernel_param { ptr @__param_str_io, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @io } }, section "__param", align 4
@__UNIQUE_ID_iotype241 = internal constant [26 x i8] c"serial_ir.parmtype=io:int\00", section ".modinfo", align 1
@__UNIQUE_ID_io242 = internal constant [52 x i8] c"serial_ir.parm=io:I/O address base (0x3f8 or 0x2f8)\00", section ".modinfo", align 1
@__param_str_iommap = internal constant [17 x i8] c"serial_ir.iommap\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@iommap = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_iommap = internal constant %struct.kernel_param { ptr @__param_str_iommap, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @iommap } }, section "__param", align 4
@__UNIQUE_ID_iommaptype243 = internal constant [32 x i8] c"serial_ir.parmtype=iommap:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_iommap244 = internal constant [84 x i8] c"serial_ir.parm=iommap:physical base for memory mapped I/O (0 = no memory mapped io)\00", section ".modinfo", align 1
@__param_str_ioshift = internal constant [18 x i8] c"serial_ir.ioshift\00", align 1
@ioshift = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ioshift = internal constant %struct.kernel_param { ptr @__param_str_ioshift, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @ioshift } }, section "__param", align 4
@__UNIQUE_ID_ioshifttype245 = internal constant [31 x i8] c"serial_ir.parmtype=ioshift:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ioshift246 = internal constant [64 x i8] c"serial_ir.parm=ioshift:shift I/O register offset (0 = no shift)\00", section ".modinfo", align 1
@__param_str_irq = internal constant [14 x i8] c"serial_ir.irq\00", align 1
@irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_irq = internal constant %struct.kernel_param { ptr @__param_str_irq, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @irq } }, section "__param", align 4
@__UNIQUE_ID_irqtype247 = internal constant [27 x i8] c"serial_ir.parmtype=irq:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq248 = internal constant [38 x i8] c"serial_ir.parm=irq:Interrupt (4 or 3)\00", section ".modinfo", align 1
@__param_str_share_irq = internal constant [20 x i8] c"serial_ir.share_irq\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@share_irq = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_share_irq = internal constant %struct.kernel_param { ptr @__param_str_share_irq, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @share_irq } }, section "__param", align 4
@__UNIQUE_ID_share_irqtype249 = internal constant [34 x i8] c"serial_ir.parmtype=share_irq:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_share_irq250 = internal constant [60 x i8] c"serial_ir.parm=share_irq:Share interrupts (0 = off, 1 = on)\00", section ".modinfo", align 1
@__param_str_sense = internal constant [16 x i8] c"serial_ir.sense\00", align 1
@sense = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_sense = internal constant %struct.kernel_param { ptr @__param_str_sense, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @sense } }, section "__param", align 4
@__UNIQUE_ID_sensetype251 = internal constant [29 x i8] c"serial_ir.parmtype=sense:int\00", section ".modinfo", align 1
@__UNIQUE_ID_sense252 = internal constant [102 x i8] c"serial_ir.parm=sense:Override autodetection of IR receiver circuit (0 = active high, 1 = active low )\00", section ".modinfo", align 1
@__param_str_txsense = internal constant [18 x i8] c"serial_ir.txsense\00", align 1
@txsense = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_txsense = internal constant %struct.kernel_param { ptr @__param_str_txsense, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @txsense } }, section "__param", align 4
@__UNIQUE_ID_txsensetype253 = internal constant [32 x i8] c"serial_ir.parmtype=txsense:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_txsense254 = internal constant [87 x i8] c"serial_ir.parm=txsense:Sense of transmitter circuit (0 = active high, 1 = active low )\00", section ".modinfo", align 1
@__param_str_softcarrier = internal constant [22 x i8] c"serial_ir.softcarrier\00", align 1
@softcarrier = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_softcarrier = internal constant %struct.kernel_param { ptr @__param_str_softcarrier, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @softcarrier } }, section "__param", align 4
@__UNIQUE_ID_softcarriertype255 = internal constant [36 x i8] c"serial_ir.parmtype=softcarrier:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_softcarrier256 = internal constant [74 x i8] c"serial_ir.parm=softcarrier:Software carrier (0 = off, 1 = on, default on)\00", section ".modinfo", align 1
@serial_ir_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @serial_ir_probe, ptr null, ptr null, ptr @serial_ir_suspend, ptr @serial_ir_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"serial_ir\00", [22 x i8] zeroinitializer }, align 32
@hardware = internal global { [5 x %struct.serial_ir_hw], [64 x i8] } { [5 x %struct.serial_ir_hw] [%struct.serial_ir_hw { i32 128, i32 8, i8 11, i8 10, i8 -64, ptr @send_pulse_homebrew, ptr @send_space_homebrew, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, %struct.serial_ir_hw { i32 32, i32 2, i8 8, i8 11, i8 64, ptr @send_pulse_irdeo, ptr @send_space_irdeo, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, %struct.serial_ir_hw { i32 32, i32 2, i8 11, i8 11, i8 64, ptr @send_pulse_irdeo, ptr @send_space_irdeo, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, %struct.serial_ir_hw { i32 128, i32 8, i8 0, i8 11, i8 0, ptr null, ptr null, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, %struct.serial_ir_hw { i32 32, i32 2, i8 11, i8 10, i8 -64, ptr @send_pulse_homebrew, ptr @send_space_homebrew, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.44, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }], [64 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Serial IR type home-brew\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Serial IR type IRdeo\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Serial IR type IRdeo remote\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Serial IR type AnimaX\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Serial IR type IgorPlug\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"serial_ir/input0\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-rc6-mce\00", [21 x i8] zeroinitializer }, align 32
@serial_ir_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&serial_ir.timeout_timer)\00", [37 x i8] zeroinitializer }, align 32
@serial_ir_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 542, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQ %d busy\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"serial_ir_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/media/rc/serial_ir.c\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@serial_ir_probe._entry_ptr = internal global ptr @serial_ir_probe._entry, section ".printk_index", align 4
@serial_ir_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.11, i32 544, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Bad irq number or handler\0A\00", [37 x i8] zeroinitializer }, align 32
@serial_ir_probe._entry_ptr.16 = internal global ptr @serial_ir_probe._entry.14, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@serial_ir_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.11, i32 554, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"port %04x already in use\0A\00", [38 x i8] zeroinitializer }, align 32
@serial_ir_probe._entry_ptr.19 = internal global ptr @serial_ir_probe._entry.17, section ".printk_index", align 4
@serial_ir_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.11, i32 555, ptr @.str.22, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"use 'setserial /dev/ttySX uart none'\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@serial_ir_probe._entry_ptr.23 = internal global ptr @serial_ir_probe._entry.20, section ".printk_index", align 4
@serial_ir_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str.11, i32 557, ptr @.str.22, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"or compile the serial port driver as module and\0A\00", [47 x i8] zeroinitializer }, align 32
@serial_ir_probe._entry_ptr.26 = internal global ptr @serial_ir_probe._entry.24, section ".printk_index", align 4
@serial_ir_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.11, i32 558, ptr @.str.22, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"make sure this module is loaded first\0A\00", [57 x i8] zeroinitializer }, align 32
@serial_ir_probe._entry_ptr.29 = internal global ptr @serial_ir_probe._entry.27, section ".printk_index", align 4
@serial_ir_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.10, ptr @.str.11, i32 590, ptr @.str.32, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"auto-detected active %s receiver\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@serial_ir_probe._entry_ptr.33 = internal global ptr @serial_ir_probe._entry.30, section ".printk_index", align 4
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@serial_ir_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.10, ptr @.str.11, i32 593, ptr @.str.32, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Manually using active %s receiver\0A\00", [61 x i8] zeroinitializer }, align 32
@serial_ir_probe._entry_ptr.38 = internal global ptr @serial_ir_probe._entry.36, section ".printk_index", align 4
@serial_ir_probe.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.11, ptr @.str.39, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Interrupt %d, port %04x obtained\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hardware[0].lock\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hardware[1].lock\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hardware[2].lock\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hardware[3].lock\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hardware[4].lock\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@serial_ir_irq_handler.last_dcd = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@serial_ir_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.11, i32 338, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Trapped in interrupt\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"serial_ir_irq_handler\00", [42 x i8] zeroinitializer }, align 32
@serial_ir_irq_handler._entry_ptr = internal global ptr @serial_ir_irq_handler._entry, section ".printk_index", align 4
@serial_ir_irq_handler.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.11, ptr @.str.47, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ignoring spike: %d %d %lldns %lldns\0A\00", [59 x i8] zeroinitializer }, align 32
@serial_ir_irq_handler._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.11, i32 371, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dcd unexpected: %d %d %lldns %lldns\0A\00", [59 x i8] zeroinitializer }, align 32
@serial_ir_irq_handler._entry_ptr.50 = internal global ptr @serial_ir_irq_handler._entry.48, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@frbwrite.ptr = internal global { i1, [31 x i8] } zeroinitializer, align 32
@frbwrite.pulse = internal global { i32, [28 x i8] } zeroinitializer, align 32
@frbwrite.space = internal global { i32, [28 x i8] } zeroinitializer, align 32
@hardware_init_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.11, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013serial_ir: port existence test failed, cannot continue\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hardware_init_port\00", [45 x i8] zeroinitializer }, align 32
@hardware_init_port._entry_ptr = internal global ptr @hardware_init_port._entry, section ".printk_index", align 4
@switch.table.serial_ir_probe = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967280]
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"serial_ir\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 138, i32 25 }
@___asan_gen_.57 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 48, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 49, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"iommap\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 51, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant [8 x i8] c"ioshift\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 52, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 50, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"share_irq\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 54, i32 13 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"sense\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 55, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [8 x i8] c"txsense\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 56, i32 13 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"softcarrier\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 53, i32 13 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"serial_ir_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 724, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 729, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [9 x i8] c"hardware\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 66, i32 28 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 501, i32 24 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 504, i32 24 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 507, i32 24 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 510, i32 24 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 513, i32 24 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 517, i32 22 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 527, i32 20 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 535, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 542, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 544, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 554, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 555, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 556, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 558, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 589, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 592, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 595, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 68, i32 11 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 82, i32 11 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 93, i32 11 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 104, i32 11 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 112, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant [9 x i8] c"last_dcd\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 326, i32 13 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 338, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 356, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 368, i32 6 }
@___asan_gen_.231 = private unnamed_addr constant [13 x i8] c"frbwrite.ptr\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 267, i32 27 }
@___asan_gen_.235 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 267, i32 34 }
@___asan_gen_.238 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [32 x i8] c"../drivers/media/rc/serial_ir.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 417, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [29 x i8] c"switch.table.serial_ir_probe\00", align 1
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_io242, ptr @__UNIQUE_ID_iommap244, ptr @__UNIQUE_ID_iommaptype243, ptr @__UNIQUE_ID_ioshift246, ptr @__UNIQUE_ID_ioshifttype245, ptr @__UNIQUE_ID_iotype241, ptr @__UNIQUE_ID_irq248, ptr @__UNIQUE_ID_irqtype247, ptr @__UNIQUE_ID_license238, ptr @__UNIQUE_ID_sense252, ptr @__UNIQUE_ID_sensetype251, ptr @__UNIQUE_ID_share_irq250, ptr @__UNIQUE_ID_share_irqtype249, ptr @__UNIQUE_ID_softcarrier256, ptr @__UNIQUE_ID_softcarriertype255, ptr @__UNIQUE_ID_txsense254, ptr @__UNIQUE_ID_txsensetype253, ptr @__UNIQUE_ID_type240, ptr @__UNIQUE_ID_typetype239, ptr @__exitcall_serial_ir_exit_module, ptr @__initcall__kmod_serial_ir__234_804_serial_ir_init_module6, ptr @__param_io, ptr @__param_iommap, ptr @__param_ioshift, ptr @__param_irq, ptr @__param_sense, ptr @__param_share_irq, ptr @__param_softcarrier, ptr @__param_txsense, ptr @__param_type, ptr @hardware_init_port._entry, ptr @hardware_init_port._entry_ptr, ptr @serial_ir_exit_module, ptr @serial_ir_irq_handler._entry, ptr @serial_ir_irq_handler._entry.48, ptr @serial_ir_irq_handler._entry_ptr, ptr @serial_ir_irq_handler._entry_ptr.50, ptr @serial_ir_probe._entry, ptr @serial_ir_probe._entry.14, ptr @serial_ir_probe._entry.17, ptr @serial_ir_probe._entry.20, ptr @serial_ir_probe._entry.24, ptr @serial_ir_probe._entry.27, ptr @serial_ir_probe._entry.30, ptr @serial_ir_probe._entry.36, ptr @serial_ir_probe._entry_ptr, ptr @serial_ir_probe._entry_ptr.16, ptr @serial_ir_probe._entry_ptr.19, ptr @serial_ir_probe._entry_ptr.23, ptr @serial_ir_probe._entry_ptr.26, ptr @serial_ir_probe._entry_ptr.29, ptr @serial_ir_probe._entry_ptr.33, ptr @serial_ir_probe._entry_ptr.38, ptr @serial_ir, ptr @type, ptr @io, ptr @iommap, ptr @ioshift, ptr @irq, ptr @share_irq, ptr @sense, ptr @txsense, ptr @softcarrier, ptr @serial_ir_driver, ptr @.str, ptr @hardware, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @serial_ir_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @serial_ir_irq_handler.last_dcd, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @frbwrite.ptr, ptr @frbwrite.pulse, ptr @frbwrite.space, ptr @.str.51, ptr @.str.52, ptr @switch.table.serial_ir_probe], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioshift to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_irq to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sense to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txsense to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softcarrier to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hardware to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir_irq_handler.last_dcd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ir_irq_handler._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frbwrite.ptr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frbwrite.pulse to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frbwrite.space to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hardware_init_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.serial_ir_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @serial_ir_exit_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @del_timer_sync(ptr noundef getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 3)) #8
  %0 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 2), align 4
  tail call void @platform_device_unregister(ptr noundef %0) #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @serial_ir_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_ir_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %switch = icmp ult i32 %0, 5
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr @io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %spec.select = select i1 %tobool.not, i32 1016, i32 %1
  store i32 %spec.select, ptr @io, align 4
  %2 = load i32, ptr @irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  %cond5 = select i1 %tobool1.not, i32 4, i32 %2
  store i32 %cond5, ptr @irq, align 4
  %3 = load i8, ptr @softcarrier, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %if.then.if.end_crit_edge [
    i32 0, label %if.then.sw.bb7_crit_edge
    i32 4, label %if.then.sw.bb7_crit_edge19
  ]

if.then.sw.bb7_crit_edge19:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

if.then.sw.bb7_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb7:                                           ; preds = %if.then.sw.bb7_crit_edge, %if.then.sw.bb7_crit_edge19
  %set_send_carrier = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %0, i32 4
  %5 = ptrtoint ptr %set_send_carrier to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %set_send_carrier, align 2
  %bf.clear10 = and i8 %bf.load, 63
  store i8 %bf.clear10, ptr %set_send_carrier, align 2
  br label %if.end

if.end:                                           ; preds = %sw.bb7, %if.then.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %6 = load i32, ptr @sense, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not = icmp eq i32 %6, -1
  br i1 %cmp.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool14 = icmp ne i32 %6, 0
  %lnot.ext = zext i1 %tobool14 to i32
  store i32 %lnot.ext, ptr @sense, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %call = tail call fastcc i32 @serial_ir_init() #11
  br label %return

return:                                           ; preds = %if.end16, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end16 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_ir_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call = tail call ptr @devm_rc_allocate_device(ptr noundef %dev1, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @type, align 4
  %send_pulse = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %0, i32 5
  %1 = ptrtoint ptr %send_pulse to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %send_pulse, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %send_space = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %0, i32 6
  %3 = ptrtoint ptr %send_space to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %send_space, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 54
  %5 = ptrtoint ptr %tx_ir to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @serial_ir_tx, ptr %tx_ir, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %set_send_carrier = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %0, i32 4
  %6 = ptrtoint ptr %set_send_carrier to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %set_send_carrier, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 51
  %7 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @serial_ir_tx_carrier, ptr %s_tx_carrier, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %8 = ptrtoint ptr %set_send_carrier to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load12 = load i8, ptr %set_send_carrier, align 2
  %9 = and i8 %bf.load12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not = icmp eq i8 %9, 0
  br i1 %tobool15.not, label %if.end10.if.end17_crit_edge, label %if.then16

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %s_tx_duty_cycle = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 52
  %10 = ptrtoint ptr %s_tx_duty_cycle to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @serial_ir_tx_duty_cycle, ptr %s_tx_duty_cycle, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end10.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %11 = icmp ult i32 %0, 5
  br i1 %11, label %switch.lookup, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.serial_ir_probe, i32 0, i32 %0
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %device_name25 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %device_name25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %switch.load, ptr %device_name25, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end17.sw.epilog_crit_edge
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.6, ptr %input_phys, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 25, ptr %input_id, align 8
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 3
  %18 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 256, ptr %version, align 2
  %open = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 48
  %19 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @serial_ir_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 49
  %20 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @serial_ir_close, ptr %close, align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 2), align 4
  %dev29 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev29, ptr %parent, align 8
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 16
  %23 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 130023420, ptr %allowed_protocols, align 8
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 6
  %24 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str, ptr %driver_name, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 7
  %25 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.7, ptr %map_name, align 4
  %min_timeout = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 35
  %26 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %min_timeout, align 8
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 34
  %27 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 125000, ptr %timeout, align 4
  %max_timeout = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 36
  %28 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1250000, ptr %max_timeout, align 4
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 37
  %29 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 250, ptr %rx_resolution, align 8
  store ptr %call, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 1), align 8
  tail call void @init_timer_key(ptr noundef getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 3), ptr noundef nonnull @serial_ir_timeout, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @serial_ir_probe.__key) #8
  %30 = load i32, ptr @irq, align 4
  %31 = load i8, ptr @share_irq, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool32.not = icmp eq i8 %31, 0
  %cond = select i1 %tobool32.not, i32 0, i32 128
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %30, ptr noundef nonnull @serial_ir_irq_handler, ptr noundef null, i32 noundef %cond, ptr noundef nonnull @.str, ptr noundef nonnull @hardware) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then34, label %if.end49

if.then34:                                        ; preds = %sw.epilog
  %32 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call.i, label %if.then34.cleanup_crit_edge [
    i32 -16, label %do.end39
    i32 -22, label %do.end45
  ]

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end39:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %33 = load i32, ptr @irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %33) #12
  br label %cleanup

do.end45:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end49:                                         ; preds = %sw.epilog
  %34 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool50.not = icmp eq i32 %34, 0
  br i1 %tobool50.not, label %if.end49.land.lhs.true56_crit_edge, label %land.lhs.true51

if.end49.land.lhs.true56_crit_edge:               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true56

land.lhs.true51:                                  ; preds = %if.end49
  %35 = load i32, ptr @ioshift, align 4
  %shl = shl i32 8, %35
  %call53 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @iomem_resource, i32 noundef %34, i32 noundef %shl, ptr noundef nonnull @.str) #8
  %cmp54 = icmp eq ptr %call53, null
  br i1 %cmp54, label %land.lhs.true51.do.end63_crit_edge, label %lor.lhs.false

land.lhs.true51.do.end63_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

lor.lhs.false:                                    ; preds = %land.lhs.true51
  %.pr = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool55.not = icmp eq i32 %.pr, 0
  br i1 %tobool55.not, label %lor.lhs.false.land.lhs.true56_crit_edge, label %lor.lhs.false.if.end77_crit_edge

lor.lhs.false.if.end77_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

lor.lhs.false.land.lhs.true56_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true56

land.lhs.true56:                                  ; preds = %lor.lhs.false.land.lhs.true56_crit_edge, %if.end49.land.lhs.true56_crit_edge
  %36 = load i32, ptr @io, align 4
  %call58 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @ioport_resource, i32 noundef %36, i32 noundef 8, ptr noundef nonnull @.str) #8
  %cmp59 = icmp eq ptr %call58, null
  br i1 %cmp59, label %land.lhs.true56.do.end63_crit_edge, label %land.lhs.true56.if.end77_crit_edge

land.lhs.true56.if.end77_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

land.lhs.true56.do.end63_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

do.end63:                                         ; preds = %land.lhs.true56.do.end63_crit_edge, %land.lhs.true51.do.end63_crit_edge
  %37 = load i32, ptr @io, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %37) #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.21) #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.25) #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end77:                                         ; preds = %land.lhs.true56.if.end77_crit_edge, %lor.lhs.false.if.end77_crit_edge
  %call78 = tail call fastcc i32 @hardware_init_port()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end77.cleanup_crit_edge, label %if.end81

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end81:                                         ; preds = %if.end77
  store i32 50, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 5), align 4
  store i32 38000, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 4), align 8
  %38 = load i32, ptr @sense, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp82 = icmp eq i32 %38, -1
  br i1 %cmp82, label %if.then83, label %do.end105

if.then83:                                        ; preds = %if.end81
  tail call void @msleep(i32 noundef 500) #8
  br label %for.body

for.body:                                         ; preds = %sinp.exit.for.body_crit_edge, %if.then83
  %nhigh.0177 = phi i32 [ 0, %if.then83 ], [ %nhigh.1, %sinp.exit.for.body_crit_edge ]
  %nlow.0176 = phi i32 [ 0, %if.then83 ], [ %nlow.1, %sinp.exit.for.body_crit_edge ]
  %i.0175 = phi i32 [ 0, %if.then83 ], [ %inc92, %sinp.exit.for.body_crit_edge ]
  %39 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %for.body.sinp.exit_crit_edge, label %if.then.i

for.body.sinp.exit_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %40 = load i32, ptr @ioshift, align 4
  %shl.i = shl i32 6, %40
  br label %sinp.exit

sinp.exit:                                        ; preds = %if.then.i, %for.body.sinp.exit_crit_edge
  %offset.addr.0.i = phi i32 [ %shl.i, %if.then.i ], [ 6, %for.body.sinp.exit_crit_edge ]
  %41 = load i32, ptr @io, align 4
  %add.i = add i32 %41, %offset.addr.0.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %42 = inttoptr i32 %add1.i to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %conv = zext i8 %43 to i32
  %44 = load i32, ptr @type, align 4
  %arrayidx86 = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx86, align 4
  %and = and i32 %46, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool87.not = icmp eq i32 %and, 0
  %not.tobool87.not = xor i1 %tobool87.not, true
  %inc = zext i1 %not.tobool87.not to i32
  %nlow.1 = add i32 %nlow.0176, %inc
  %inc90 = zext i1 %tobool87.not to i32
  %nhigh.1 = add i32 %nhigh.0177, %inc90
  tail call void @msleep(i32 noundef 40) #8
  %inc92 = add nuw nsw i32 %i.0175, 1
  %exitcond.not = icmp eq i32 %inc92, 9
  br i1 %exitcond.not, label %for.end, label %sinp.exit.for.body_crit_edge

sinp.exit.for.body_crit_edge:                     ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %nlow.1, i32 %nhigh.1)
  %cmp93.not = icmp slt i32 %nlow.1, %nhigh.1
  %not.cmp93.not = xor i1 %cmp93.not, true
  %cond95 = zext i1 %not.cmp93.not to i32
  store i32 %cond95, ptr @sense, align 4
  br label %do.body110

do.end105:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool107.not = icmp eq i32 %38, 0
  br label %do.body110

do.body110:                                       ; preds = %do.end105, %for.end
  %cmp93.not.sink = phi i1 [ %cmp93.not, %for.end ], [ %tobool107.not, %do.end105 ]
  %.str.31.sink = phi ptr [ @.str.31, %for.end ], [ @.str.37, %do.end105 ]
  %cond101 = select i1 %cmp93.not.sink, ptr @.str.35, ptr @.str.34
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull %.str.31.sink, ptr noundef nonnull %cond101) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_ir_probe.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_ir_probe, %if.then115)) #8
          to label %do.end119 [label %if.then115], !srcloc !198

if.then115:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  %47 = load i32, ptr @irq, align 4
  %48 = load i32, ptr @io, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_ir_probe.__UNIQUE_ID_ddebug233, ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %47, i32 noundef %48) #8
  br label %do.end119

do.end119:                                        ; preds = %if.then115, %do.body110
  %call121 = tail call i32 @devm_rc_register_device(ptr noundef %dev1, ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end119, %if.end77.cleanup_crit_edge, %do.end63, %do.end45, %do.end39, %if.then34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end63 ], [ %call121, %do.end119 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %if.then34.cleanup_crit_edge ], [ -22, %do.end45 ], [ -16, %do.end39 ], [ %call78, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_ir_suspend(ptr nocapture noundef readnone %dev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.sinp.exit_crit_edge, label %if.then.i

entry.sinp.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @ioshift, align 4
  %shl.i = shl i32 3, %1
  br label %sinp.exit

sinp.exit:                                        ; preds = %if.then.i, %entry.sinp.exit_crit_edge
  %offset.addr.0.i = phi i32 [ %shl.i, %if.then.i ], [ 3, %entry.sinp.exit_crit_edge ]
  %2 = load i32, ptr @io, align 4
  %add.i = add i32 %2, %offset.addr.0.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add1.i to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %5 = and i8 %4, 127
  %6 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i10 = icmp eq i32 %6, 0
  br i1 %tobool.not.i10, label %sinp.exit.soutp.exit_crit_edge, label %if.then.i12

sinp.exit.soutp.exit_crit_edge:                   ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit

if.then.i12:                                      ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @ioshift, align 4
  %shl.i11 = shl i32 3, %7
  br label %soutp.exit

soutp.exit:                                       ; preds = %if.then.i12, %sinp.exit.soutp.exit_crit_edge
  %offset.addr.0.i13 = phi i32 [ %shl.i11, %if.then.i12 ], [ 3, %sinp.exit.soutp.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %8 = load i32, ptr @io, align 4
  %add.i14 = add i32 %8, %offset.addr.0.i13
  %and.i15 = and i32 %add.i14, 1048575
  %add1.i16 = or i32 %and.i15, -18874368
  %9 = inttoptr i32 %add1.i16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %5) #8, !srcloc !200
  %10 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i17 = icmp eq i32 %10, 0
  br i1 %tobool.not.i17, label %soutp.exit.sinp.exit24_crit_edge, label %if.then.i19

soutp.exit.sinp.exit24_crit_edge:                 ; preds = %soutp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit24

if.then.i19:                                      ; preds = %soutp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @ioshift, align 4
  %shl.i18 = shl nuw i32 1, %11
  br label %sinp.exit24

sinp.exit24:                                      ; preds = %if.then.i19, %soutp.exit.sinp.exit24_crit_edge
  %offset.addr.0.i20 = phi i32 [ %shl.i18, %if.then.i19 ], [ 1, %soutp.exit.sinp.exit24_crit_edge ]
  %12 = load i32, ptr @io, align 4
  %add.i21 = add i32 %12, %offset.addr.0.i20
  %and.i22 = and i32 %add.i21, 1048575
  %add1.i23 = or i32 %and.i22, -18874368
  %13 = inttoptr i32 %add1.i23 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %15 = and i8 %14, -16
  %16 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i25 = icmp eq i32 %16, 0
  br i1 %tobool.not.i25, label %sinp.exit24.soutp.exit32_crit_edge, label %if.then.i27

sinp.exit24.soutp.exit32_crit_edge:               ; preds = %sinp.exit24
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit32

if.then.i27:                                      ; preds = %sinp.exit24
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load i32, ptr @ioshift, align 4
  %shl.i26 = shl nuw i32 1, %17
  br label %soutp.exit32

soutp.exit32:                                     ; preds = %if.then.i27, %sinp.exit24.soutp.exit32_crit_edge
  %offset.addr.0.i28 = phi i32 [ %shl.i26, %if.then.i27 ], [ 1, %sinp.exit24.soutp.exit32_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %18 = load i32, ptr @io, align 4
  %add.i29 = add i32 %18, %offset.addr.0.i28
  %and.i30 = and i32 %add.i29, 1048575
  %add1.i31 = or i32 %and.i30, -18874368
  %19 = inttoptr i32 %add1.i31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %15) #8, !srcloc !200
  %20 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i33 = icmp eq i32 %20, 0
  br i1 %tobool.not.i33, label %soutp.exit32.sinp.exit40_crit_edge, label %if.then.i35

soutp.exit32.sinp.exit40_crit_edge:               ; preds = %soutp.exit32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit40

if.then.i35:                                      ; preds = %soutp.exit32
  call void @__sanitizer_cov_trace_pc() #10
  %21 = load i32, ptr @ioshift, align 4
  %shl.i34 = shl i32 5, %21
  br label %sinp.exit40

sinp.exit40:                                      ; preds = %if.then.i35, %soutp.exit32.sinp.exit40_crit_edge
  %offset.addr.0.i36 = phi i32 [ %shl.i34, %if.then.i35 ], [ 5, %soutp.exit32.sinp.exit40_crit_edge ]
  %22 = load i32, ptr @io, align 4
  %add.i37 = add i32 %22, %offset.addr.0.i36
  %and.i38 = and i32 %add.i37, 1048575
  %add1.i39 = or i32 %and.i38, -18874368
  %23 = inttoptr i32 %add1.i39 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %25 = load i32, ptr @io, align 4
  %and.i45 = and i32 %25, 1048575
  %add1.i46 = or i32 %and.i45, -18874368
  %26 = inttoptr i32 %add1.i46 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %28 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i48 = icmp eq i32 %28, 0
  br i1 %tobool.not.i48, label %sinp.exit40.sinp.exit55_crit_edge, label %if.then.i50

sinp.exit40.sinp.exit55_crit_edge:                ; preds = %sinp.exit40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit55

if.then.i50:                                      ; preds = %sinp.exit40
  call void @__sanitizer_cov_trace_pc() #10
  %29 = load i32, ptr @ioshift, align 4
  %shl.i49 = shl i32 2, %29
  br label %sinp.exit55

sinp.exit55:                                      ; preds = %if.then.i50, %sinp.exit40.sinp.exit55_crit_edge
  %offset.addr.0.i51 = phi i32 [ %shl.i49, %if.then.i50 ], [ 2, %sinp.exit40.sinp.exit55_crit_edge ]
  %30 = load i32, ptr @io, align 4
  %add.i52 = add i32 %30, %offset.addr.0.i51
  %and.i53 = and i32 %add.i52, 1048575
  %add1.i54 = or i32 %and.i53, -18874368
  %31 = inttoptr i32 %add1.i54 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %33 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i56 = icmp eq i32 %33, 0
  br i1 %tobool.not.i56, label %sinp.exit55.sinp.exit63_crit_edge, label %if.then.i58

sinp.exit55.sinp.exit63_crit_edge:                ; preds = %sinp.exit55
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit63

if.then.i58:                                      ; preds = %sinp.exit55
  call void @__sanitizer_cov_trace_pc() #10
  %34 = load i32, ptr @ioshift, align 4
  %shl.i57 = shl i32 6, %34
  br label %sinp.exit63

sinp.exit63:                                      ; preds = %if.then.i58, %sinp.exit55.sinp.exit63_crit_edge
  %offset.addr.0.i59 = phi i32 [ %shl.i57, %if.then.i58 ], [ 6, %sinp.exit55.sinp.exit63_crit_edge ]
  %35 = load i32, ptr @io, align 4
  %add.i60 = add i32 %35, %offset.addr.0.i59
  %and.i61 = and i32 %add.i60, 1048575
  %add1.i62 = or i32 %and.i61, -18874368
  %36 = inttoptr i32 %add1.i62 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_ir_resume(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hardware_init_port()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %0 = load i32, ptr @type, align 4
  %lock = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call7 = tail call i64 @ktime_get() #8
  store i64 %call7, ptr @serial_ir, align 8
  %1 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body1.sinp.exit_crit_edge, label %if.then.i

do.body1.sinp.exit_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit

if.then.i:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @ioshift, align 4
  %shl.i = shl nuw i32 1, %2
  br label %sinp.exit

sinp.exit:                                        ; preds = %if.then.i, %do.body1.sinp.exit_crit_edge
  %offset.addr.0.i = phi i32 [ %shl.i, %if.then.i ], [ 1, %do.body1.sinp.exit_crit_edge ]
  %3 = load i32, ptr @io, align 4
  %add.i = add i32 %3, %offset.addr.0.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %6 = or i8 %5, 8
  %7 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i15 = icmp eq i32 %7, 0
  br i1 %tobool.not.i15, label %sinp.exit.soutp.exit_crit_edge, label %if.then.i17

sinp.exit.soutp.exit_crit_edge:                   ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit

if.then.i17:                                      ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @ioshift, align 4
  %shl.i16 = shl nuw i32 1, %8
  br label %soutp.exit

soutp.exit:                                       ; preds = %if.then.i17, %sinp.exit.soutp.exit_crit_edge
  %offset.addr.0.i18 = phi i32 [ %shl.i16, %if.then.i17 ], [ 1, %sinp.exit.soutp.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %9 = load i32, ptr @io, align 4
  %add.i19 = add i32 %9, %offset.addr.0.i18
  %and.i20 = and i32 %add.i19, 1048575
  %add1.i21 = or i32 %and.i20, -18874368
  %10 = inttoptr i32 %add1.i21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %6) #8, !srcloc !200
  %11 = load i8, ptr @txsense, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i22 = icmp eq i8 %11, 0
  %12 = load i32, ptr @type, align 4
  br i1 %tobool.not.i22, label %if.else.i, label %if.then.i23

if.then.i23:                                      ; preds = %soutp.exit
  %on.i = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %12, i32 2
  %13 = ptrtoint ptr %on.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %on.i, align 4
  %15 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.then.i23.soutp.exit.i_crit_edge, label %if.then.i.i

if.then.i23.soutp.exit.i_crit_edge:               ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit.i

if.then.i.i:                                      ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load i32, ptr @ioshift, align 4
  %shl.i.i = shl i32 4, %16
  br label %soutp.exit.i

soutp.exit.i:                                     ; preds = %if.then.i.i, %if.then.i23.soutp.exit.i_crit_edge
  %offset.addr.0.i.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ 4, %if.then.i23.soutp.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %17 = load i32, ptr @io, align 4
  %add.i.i = add i32 %17, %offset.addr.0.i.i
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %18 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %14) #8, !srcloc !200
  br label %off.exit

if.else.i:                                        ; preds = %soutp.exit
  %off.i = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %12, i32 3
  %19 = ptrtoint ptr %off.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %off.i, align 1
  %21 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i2.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i2.i, label %if.else.i.soutp.exit9.i_crit_edge, label %if.then.i4.i

if.else.i.soutp.exit9.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit9.i

if.then.i4.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = load i32, ptr @ioshift, align 4
  %shl.i3.i = shl i32 4, %22
  br label %soutp.exit9.i

soutp.exit9.i:                                    ; preds = %if.then.i4.i, %if.else.i.soutp.exit9.i_crit_edge
  %offset.addr.0.i5.i = phi i32 [ %shl.i3.i, %if.then.i4.i ], [ 4, %if.else.i.soutp.exit9.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %23 = load i32, ptr @io, align 4
  %add.i6.i = add i32 %23, %offset.addr.0.i5.i
  %and.i7.i = and i32 %add.i6.i, 1048575
  %add1.i8.i = or i32 %and.i7.i, -18874368
  %24 = inttoptr i32 %add1.i8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %20) #8, !srcloc !200
  br label %off.exit

off.exit:                                         ; preds = %soutp.exit9.i, %soutp.exit.i
  %25 = load i32, ptr @type, align 4
  %lock12 = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %25, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock12, i32 noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %off.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %off.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rc_allocate_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_ir_tx(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %txbuf, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @type, align 4
  %lock = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %1 = load i32, ptr @type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp5 = icmp eq i32 %1, 1
  br i1 %cmp5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, ptr @txsense, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %3 = load i8, ptr getelementptr inbounds ([5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 1, i32 3), align 1
  %4 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %if.then.i.soutp.exit.i_crit_edge, label %if.then.i.i

if.then.i.soutp.exit.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @ioshift, align 4
  %shl.i.i = shl i32 4, %5
  br label %soutp.exit.i

soutp.exit.i:                                     ; preds = %if.then.i.i, %if.then.i.soutp.exit.i_crit_edge
  %offset.addr.0.i.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ 4, %if.then.i.soutp.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %6 = load i32, ptr @io, align 4
  %add.i.i = add i32 %6, %offset.addr.0.i.i
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %7 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %3) #8, !srcloc !200
  br label %if.end

if.else.i:                                        ; preds = %if.then
  %8 = load i8, ptr getelementptr inbounds ([5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 1, i32 2), align 4
  %9 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i2.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i2.i, label %if.else.i.soutp.exit9.i_crit_edge, label %if.then.i4.i

if.else.i.soutp.exit9.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit9.i

if.then.i4.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @ioshift, align 4
  %shl.i3.i = shl i32 4, %10
  br label %soutp.exit9.i

soutp.exit9.i:                                    ; preds = %if.then.i4.i, %if.else.i.soutp.exit9.i_crit_edge
  %offset.addr.0.i5.i = phi i32 [ %shl.i3.i, %if.then.i4.i ], [ 4, %if.else.i.soutp.exit9.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %11 = load i32, ptr @io, align 4
  %add.i6.i = add i32 %11, %offset.addr.0.i5.i
  %and.i7.i = and i32 %add.i6.i, 1048575
  %add1.i8.i = or i32 %and.i7.i, -18874368
  %12 = inttoptr i32 %add1.i8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %8) #8, !srcloc !200
  br label %if.end

if.end:                                           ; preds = %soutp.exit9.i, %soutp.exit.i, %entry.if.end_crit_edge
  %call7 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp894.not = icmp eq i32 %count, 0
  br i1 %cmp894.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %flags.097 = phi i32 [ %flags.1, %for.inc.for.body_crit_edge ], [ %call2, %if.end.for.body_crit_edge ]
  %edge.096 = phi i64 [ %add.i, %for.inc.for.body_crit_edge ], [ %call7, %if.end.for.body_crit_edge ]
  %i.095 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %13 = and i32 %i.095, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %14 = load i32, ptr @type, align 4
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %send_space = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %14, i32 6
  %15 = ptrtoint ptr %send_space to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %send_space, align 4
  tail call void %16() #8
  br label %if.end14

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %send_pulse = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %14, i32 5
  %17 = ptrtoint ptr %send_pulse to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_pulse, align 4
  %arrayidx13 = getelementptr i32, ptr %txbuf, i32 %i.095
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx13, align 4
  tail call void %18(i32 noundef %20, i64 noundef %edge.096) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %arrayidx15 = getelementptr i32, ptr %txbuf, i32 %i.095
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx15, align 4
  %conv16 = zext i32 %22 to i64
  %mul.i = mul nuw nsw i64 %conv16, 1000
  %add.i = add i64 %mul.i, %edge.096
  %call18 = tail call i64 @ktime_get() #8
  %sub.i = sub i64 %add.i, %call18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %23 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %23, i32 0) #13, !srcloc !201
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %24, 1
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %23, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !202
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %25, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 25, i64 %cond213.i.i.i)
  %cmp20 = icmp sgt i64 %cond213.i.i.i, 25
  br i1 %cmp20, label %if.then22, label %if.else42

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %26 = load i32, ptr @type, align 4
  %lock24 = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %26, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock24, i32 noundef %flags.097) #8
  %27 = trunc i64 %cond213.i.i.i to i32
  %conv25 = add i32 %27, -25
  %conv26 = add i32 %27, 25
  tail call void @usleep_range_state(i32 noundef %conv25, i32 noundef %conv26, i32 noundef 2) #8
  %28 = load i32, ptr @type, align 4
  %lock35 = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %28, i32 7
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock35) #8
  br label %for.inc

if.else42:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond213.i.i.i)
  %cmp43 = icmp sgt i64 %cond213.i.i.i, 0
  br i1 %cmp43, label %cond.false50, label %if.else42.for.inc_crit_edge

if.else42.for.inc_crit_edge:                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cond.false50:                                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv51 = trunc i64 %cond213.i.i.i to i32
  tail call void %29(i32 noundef %conv51) #8
  br label %for.inc

for.inc:                                          ; preds = %cond.false50, %if.else42.for.inc_crit_edge, %if.then22
  %flags.1 = phi i32 [ %call37, %if.then22 ], [ %flags.097, %cond.false50 ], [ %flags.097, %if.else42.for.inc_crit_edge ]
  %inc = add nuw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %if.end.for.end_crit_edge ], [ %flags.1, %for.inc.for.end_crit_edge ]
  %30 = load i8, ptr @txsense, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i73 = icmp eq i8 %30, 0
  %31 = load i32, ptr @type, align 4
  br i1 %tobool.not.i73, label %if.else.i86, label %if.then.i76

if.then.i76:                                      ; preds = %for.end
  %on.i74 = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %31, i32 2
  %32 = ptrtoint ptr %on.i74 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %on.i74, align 4
  %34 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i75 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i75, label %if.then.i76.soutp.exit.i83_crit_edge, label %if.then.i.i78

if.then.i76.soutp.exit.i83_crit_edge:             ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit.i83

if.then.i.i78:                                    ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #10
  %35 = load i32, ptr @ioshift, align 4
  %shl.i.i77 = shl i32 4, %35
  br label %soutp.exit.i83

soutp.exit.i83:                                   ; preds = %if.then.i.i78, %if.then.i76.soutp.exit.i83_crit_edge
  %offset.addr.0.i.i79 = phi i32 [ %shl.i.i77, %if.then.i.i78 ], [ 4, %if.then.i76.soutp.exit.i83_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %36 = load i32, ptr @io, align 4
  %add.i.i80 = add i32 %36, %offset.addr.0.i.i79
  %and.i.i81 = and i32 %add.i.i80, 1048575
  %add1.i.i82 = or i32 %and.i.i81, -18874368
  %37 = inttoptr i32 %add1.i.i82 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %33) #8, !srcloc !200
  br label %off.exit

if.else.i86:                                      ; preds = %for.end
  %off.i84 = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %31, i32 3
  %38 = ptrtoint ptr %off.i84 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %off.i84, align 1
  %40 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i2.i85 = icmp eq i32 %40, 0
  br i1 %tobool.not.i2.i85, label %if.else.i86.soutp.exit9.i93_crit_edge, label %if.then.i4.i88

if.else.i86.soutp.exit9.i93_crit_edge:            ; preds = %if.else.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit9.i93

if.then.i4.i88:                                   ; preds = %if.else.i86
  call void @__sanitizer_cov_trace_pc() #10
  %41 = load i32, ptr @ioshift, align 4
  %shl.i3.i87 = shl i32 4, %41
  br label %soutp.exit9.i93

soutp.exit9.i93:                                  ; preds = %if.then.i4.i88, %if.else.i86.soutp.exit9.i93_crit_edge
  %offset.addr.0.i5.i89 = phi i32 [ %shl.i3.i87, %if.then.i4.i88 ], [ 4, %if.else.i86.soutp.exit9.i93_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %42 = load i32, ptr @io, align 4
  %add.i6.i90 = add i32 %42, %offset.addr.0.i5.i89
  %and.i7.i91 = and i32 %add.i6.i90, 1048575
  %add1.i8.i92 = or i32 %and.i7.i91, -18874368
  %43 = inttoptr i32 %add1.i8.i92 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %39) #8, !srcloc !200
  br label %off.exit

off.exit:                                         ; preds = %soutp.exit9.i93, %soutp.exit.i83
  %44 = load i32, ptr @type, align 4
  %lock56 = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %44, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock56, i32 noundef %flags.0.lcssa) #8
  ret i32 %count
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @serial_ir_tx_carrier(ptr nocapture noundef readnone %dev, i32 noundef %carrier) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %carrier, -500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -480001, i32 %0)
  %1 = icmp ult i32 %0, -480001
  br i1 %1, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %carrier, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 4), align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @serial_ir_tx_duty_cycle(ptr nocapture noundef readnone %dev, i32 noundef %cycle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %cycle, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 5), align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_ir_open(ptr nocapture noundef readnone %rcdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #8
  store i64 %call, ptr @serial_ir, align 8
  %0 = load i32, ptr @type, align 4
  %lock = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %1 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.sinp.exit_crit_edge, label %if.then.i

entry.sinp.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @ioshift, align 4
  %shl.i = shl i32 3, %2
  br label %sinp.exit

sinp.exit:                                        ; preds = %if.then.i, %entry.sinp.exit_crit_edge
  %offset.addr.0.i = phi i32 [ %shl.i, %if.then.i ], [ 3, %entry.sinp.exit_crit_edge ]
  %3 = load i32, ptr @io, align 4
  %add.i = add i32 %3, %offset.addr.0.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %6 = and i8 %5, 127
  %7 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i14 = icmp eq i32 %7, 0
  br i1 %tobool.not.i14, label %sinp.exit.soutp.exit_crit_edge, label %if.then.i16

sinp.exit.soutp.exit_crit_edge:                   ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit

if.then.i16:                                      ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @ioshift, align 4
  %shl.i15 = shl i32 3, %8
  br label %soutp.exit

soutp.exit:                                       ; preds = %if.then.i16, %sinp.exit.soutp.exit_crit_edge
  %offset.addr.0.i17 = phi i32 [ %shl.i15, %if.then.i16 ], [ 3, %sinp.exit.soutp.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %9 = load i32, ptr @io, align 4
  %add.i18 = add i32 %9, %offset.addr.0.i17
  %and.i19 = and i32 %add.i18, 1048575
  %add1.i20 = or i32 %and.i19, -18874368
  %10 = inttoptr i32 %add1.i20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %6) #8, !srcloc !200
  %11 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i21 = icmp eq i32 %11, 0
  br i1 %tobool.not.i21, label %soutp.exit.sinp.exit28_crit_edge, label %if.then.i23

soutp.exit.sinp.exit28_crit_edge:                 ; preds = %soutp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit28

if.then.i23:                                      ; preds = %soutp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load i32, ptr @ioshift, align 4
  %shl.i22 = shl nuw i32 1, %12
  br label %sinp.exit28

sinp.exit28:                                      ; preds = %if.then.i23, %soutp.exit.sinp.exit28_crit_edge
  %offset.addr.0.i24 = phi i32 [ %shl.i22, %if.then.i23 ], [ 1, %soutp.exit.sinp.exit28_crit_edge ]
  %13 = load i32, ptr @io, align 4
  %add.i25 = add i32 %13, %offset.addr.0.i24
  %and.i26 = and i32 %add.i25, 1048575
  %add1.i27 = or i32 %and.i26, -18874368
  %14 = inttoptr i32 %add1.i27 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %16 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i29 = icmp eq i32 %16, 0
  br i1 %tobool.not.i29, label %sinp.exit28.soutp.exit36_crit_edge, label %if.then.i31

sinp.exit28.soutp.exit36_crit_edge:               ; preds = %sinp.exit28
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit36

if.then.i31:                                      ; preds = %sinp.exit28
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load i32, ptr @ioshift, align 4
  %shl.i30 = shl nuw i32 1, %17
  br label %soutp.exit36

soutp.exit36:                                     ; preds = %if.then.i31, %sinp.exit28.soutp.exit36_crit_edge
  %offset.addr.0.i32 = phi i32 [ %shl.i30, %if.then.i31 ], [ 1, %sinp.exit28.soutp.exit36_crit_edge ]
  %18 = or i8 %15, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %19 = load i32, ptr @io, align 4
  %add.i33 = add i32 %19, %offset.addr.0.i32
  %and.i34 = and i32 %add.i33, 1048575
  %add1.i35 = or i32 %and.i34, -18874368
  %20 = inttoptr i32 %add1.i35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %18) #8, !srcloc !200
  %21 = load i32, ptr @type, align 4
  %lock13 = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %21, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock13, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_ir_close(ptr nocapture noundef readnone %rcdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @type, align 4
  %lock = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %1 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.sinp.exit_crit_edge, label %if.then.i

entry.sinp.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @ioshift, align 4
  %shl.i = shl i32 3, %2
  br label %sinp.exit

sinp.exit:                                        ; preds = %if.then.i, %entry.sinp.exit_crit_edge
  %offset.addr.0.i = phi i32 [ %shl.i, %if.then.i ], [ 3, %entry.sinp.exit_crit_edge ]
  %3 = load i32, ptr @io, align 4
  %add.i = add i32 %3, %offset.addr.0.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %6 = and i8 %5, 127
  %7 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i14 = icmp eq i32 %7, 0
  br i1 %tobool.not.i14, label %sinp.exit.soutp.exit_crit_edge, label %if.then.i16

sinp.exit.soutp.exit_crit_edge:                   ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit

if.then.i16:                                      ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @ioshift, align 4
  %shl.i15 = shl i32 3, %8
  br label %soutp.exit

soutp.exit:                                       ; preds = %if.then.i16, %sinp.exit.soutp.exit_crit_edge
  %offset.addr.0.i17 = phi i32 [ %shl.i15, %if.then.i16 ], [ 3, %sinp.exit.soutp.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %9 = load i32, ptr @io, align 4
  %add.i18 = add i32 %9, %offset.addr.0.i17
  %and.i19 = and i32 %add.i18, 1048575
  %add1.i20 = or i32 %and.i19, -18874368
  %10 = inttoptr i32 %add1.i20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %6) #8, !srcloc !200
  %11 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i21 = icmp eq i32 %11, 0
  br i1 %tobool.not.i21, label %soutp.exit.sinp.exit28_crit_edge, label %if.then.i23

soutp.exit.sinp.exit28_crit_edge:                 ; preds = %soutp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit28

if.then.i23:                                      ; preds = %soutp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load i32, ptr @ioshift, align 4
  %shl.i22 = shl nuw i32 1, %12
  br label %sinp.exit28

sinp.exit28:                                      ; preds = %if.then.i23, %soutp.exit.sinp.exit28_crit_edge
  %offset.addr.0.i24 = phi i32 [ %shl.i22, %if.then.i23 ], [ 1, %soutp.exit.sinp.exit28_crit_edge ]
  %13 = load i32, ptr @io, align 4
  %add.i25 = add i32 %13, %offset.addr.0.i24
  %and.i26 = and i32 %add.i25, 1048575
  %add1.i27 = or i32 %and.i26, -18874368
  %14 = inttoptr i32 %add1.i27 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %16 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i29 = icmp eq i32 %16, 0
  br i1 %tobool.not.i29, label %sinp.exit28.soutp.exit36_crit_edge, label %if.then.i31

sinp.exit28.soutp.exit36_crit_edge:               ; preds = %sinp.exit28
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit36

if.then.i31:                                      ; preds = %sinp.exit28
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load i32, ptr @ioshift, align 4
  %shl.i30 = shl nuw i32 1, %17
  br label %soutp.exit36

soutp.exit36:                                     ; preds = %if.then.i31, %sinp.exit28.soutp.exit36_crit_edge
  %offset.addr.0.i32 = phi i32 [ %shl.i30, %if.then.i31 ], [ 1, %sinp.exit28.soutp.exit36_crit_edge ]
  %18 = and i8 %15, -16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %19 = load i32, ptr @io, align 4
  %add.i33 = add i32 %19, %offset.addr.0.i32
  %and.i34 = and i32 %add.i33, 1048575
  %add1.i35 = or i32 %and.i34, -18874368
  %20 = inttoptr i32 %add1.i35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %18) #8, !srcloc !200
  %21 = load i32, ptr @type, align 4
  %lock13 = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %21, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock13, i32 noundef %call2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_ir_timeout(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  %ev = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev) #8
  %0 = ptrtoint ptr %ev to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -4291821569, ptr %ev, align 8, !annotation !203
  %1 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 1), align 8
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  store i32 %3, ptr %ev, align 8
  %call = call i32 @ir_raw_event_store_with_filter(ptr noundef %1, ptr noundef nonnull %ev) #8
  %4 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 1), align 8
  call void @ir_raw_event_handle(ptr noundef %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_ir_irq_handler(i32 noundef %i, ptr nocapture noundef readnone %blah) #2 align 64 {
entry:
  %ev.i = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.sinp.exit_crit_edge, label %if.then.i84

entry.sinp.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit

if.then.i84:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @ioshift, align 4
  %shl.i = shl i32 2, %1
  br label %sinp.exit

sinp.exit:                                        ; preds = %if.then.i84, %entry.sinp.exit_crit_edge
  %offset.addr.0.i = phi i32 [ %shl.i, %if.then.i84 ], [ 2, %entry.sinp.exit_crit_edge ]
  %2 = load i32, ptr @io, align 4
  %add.i = add i32 %2, %offset.addr.0.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add1.i to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body.preheader, label %sinp.exit.cleanup_crit_edge

sinp.exit.cleanup_crit_edge:                      ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.preheader:                                ; preds = %sinp.exit
  %pulse.i = getelementptr inbounds %struct.ir_raw_event, ptr %ev.i, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %sinp.exit109.do.body_crit_edge, %do.body.preheader
  %counter.0 = phi i32 [ %inc, %sinp.exit109.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %inc = add nuw nsw i32 %counter.0, 1
  %6 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i86 = icmp eq i32 %6, 0
  br i1 %tobool.not.i86, label %do.body.sinp.exit94_crit_edge, label %if.then.i88

do.body.sinp.exit94_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit94

if.then.i88:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @ioshift, align 4
  %shl.i87 = shl i32 6, %7
  br label %sinp.exit94

sinp.exit94:                                      ; preds = %if.then.i88, %do.body.sinp.exit94_crit_edge
  %offset.addr.0.i89 = phi i32 [ %shl.i87, %if.then.i88 ], [ 6, %do.body.sinp.exit94_crit_edge ]
  %8 = load i32, ptr @io, align 4
  %add.i90 = add i32 %8, %offset.addr.0.i89
  %and.i91 = and i32 %add.i90, 1048575
  %add1.i92 = or i32 %and.i91, -18874368
  %9 = inttoptr i32 %add1.i92 to ptr
  %10 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #8, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %counter.0)
  %exitcond = icmp eq i32 %counter.0, 256
  br i1 %exitcond, label %do.end, label %if.end5

do.end:                                           ; preds = %sinp.exit94
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 2), align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #12
  br label %do.end64

if.end5:                                          ; preds = %sinp.exit94
  %conv6 = zext i8 %10 to i32
  %12 = load i32, ptr @type, align 4
  %signal_pin_change = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %12, i32 1
  %13 = ptrtoint ptr %signal_pin_change to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %signal_pin_change, align 4
  %and7 = and i32 %14, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.do.cond57_crit_edge, label %land.lhs.true

if.end5.do.cond57_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond57

land.lhs.true:                                    ; preds = %if.end5
  %15 = load i32, ptr @sense, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp9.not = icmp eq i32 %15, -1
  br i1 %cmp9.not, label %land.lhs.true.do.cond57_crit_edge, label %if.then11

land.lhs.true.do.cond57_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond57

if.then11:                                        ; preds = %land.lhs.true
  %call12 = call i64 @ktime_get() #8
  %16 = load i32, ptr @type, align 4
  %arrayidx14 = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx14, align 4
  %and15 = and i32 %18, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp ne i32 %and15, 0
  %cond = zext i1 %tobool16.not to i32
  %19 = load i32, ptr @serial_ir_irq_handler.last_dcd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %cond)
  %cmp17 = icmp eq i32 %19, %cond
  br i1 %cmp17, label %do.body20, label %if.end32

do.body20:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_ir_irq_handler.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_ir_irq_handler, %if.then25)) #8
          to label %do.cond57 [label %if.then25], !srcloc !198

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %20 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 2), align 4
  %dev26 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %21 = load i32, ptr @sense, align 4
  %22 = load i64, ptr @serial_ir, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_ir_irq_handler.__UNIQUE_ID_ddebug232, ptr noundef %dev26, ptr noundef nonnull @.str.47, i32 noundef %cond, i32 noundef %21, i64 noundef %call12, i64 noundef %22) #8
  br label %do.cond57

if.end32:                                         ; preds = %if.then11
  %23 = load i64, ptr @serial_ir, align 8
  %sub = sub i64 %call12, %23
  call void @__sanitizer_cov_trace_const_cmp8(i64 15000000000, i64 %sub)
  %cmp3.i = icmp sgt i64 %sub, 15000000000
  br i1 %cmp3.i, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end32
  %24 = load i32, ptr @sense, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %cond)
  %tobool38.not = icmp eq i32 %24, %cond
  br i1 %tobool38.not, label %do.end42, label %if.then37.if.end51_crit_edge

if.then37.if.end51_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end42:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %25 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 2), align 4
  %dev43 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.49, i32 noundef %cond, i32 noundef %cond, i64 noundef %call12, i64 noundef %23) #12
  %26 = load i32, ptr @sense, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool46.not = icmp eq i32 %26, 0
  %cond47 = zext i1 %tobool46.not to i32
  store i32 %cond47, ptr @sense, align 4
  br label %if.end51

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %27 = call i64 @llvm.abs.i64(i64 %sub, i1 false) #8
  %28 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %27, i32 0) #13, !srcloc !201
  %asmresult.i.i.i = extractvalue { i64, i32 } %28, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %28, 1
  %29 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %27, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #13, !srcloc !202
  %asmresult10.i.i.i = extractvalue { i64, i32 } %29, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %conv50 = trunc i64 %cond213.i.i to i32
  br label %if.end51

if.end51:                                         ; preds = %if.else, %do.end42, %if.then37.if.end51_crit_edge
  %data.0 = phi i32 [ 500000, %if.then37.if.end51_crit_edge ], [ 500000, %do.end42 ], [ %conv50, %if.else ]
  %30 = load i32, ptr @sense, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %cond)
  %tobool53.not = icmp eq i32 %30, %cond
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev.i) #8
  %31 = ptrtoint ptr %ev.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %ev.i, align 8
  %.b = load i1, ptr @frbwrite.ptr, align 4
  %32 = and i1 %.b, %tobool53.not
  br i1 %32, label %if.then.i98, label %if.end8.i

if.then.i98:                                      ; preds = %if.end51
  %33 = load i32, ptr @frbwrite.pulse, align 4
  %add.i97 = add i32 %33, %data.0
  store i32 %add.i97, ptr @frbwrite.pulse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %add.i97)
  %cmp1.i = icmp ugt i32 %add.i97, 250
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i98.frbwrite.exit_crit_edge

if.then.i98.frbwrite.exit_crit_edge:              ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %frbwrite.exit

if.then2.i:                                       ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #10
  %34 = load i32, ptr @frbwrite.space, align 4
  %35 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ev.i, align 8
  %36 = ptrtoint ptr %pulse.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i = load i8, ptr %pulse.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %pulse.i, align 1
  %37 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 1), align 8
  %call.i99 = call i32 @ir_raw_event_store_with_filter(ptr noundef %37, ptr noundef nonnull %ev.i) #8
  %38 = load i32, ptr @frbwrite.pulse, align 4
  %39 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %ev.i, align 8
  %40 = ptrtoint ptr %pulse.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load4.i = load i8, ptr %pulse.i, align 1
  %bf.set6.i = or i8 %bf.load4.i, -128
  store i8 %bf.set6.i, ptr %pulse.i, align 1
  %41 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 1), align 8
  %call7.i = call i32 @ir_raw_event_store_with_filter(ptr noundef %41, ptr noundef nonnull %ev.i) #8
  store i1 false, ptr @frbwrite.ptr, align 4
  store i32 0, ptr @frbwrite.pulse, align 4
  br label %frbwrite.exit

if.end8.i:                                        ; preds = %if.end51
  br i1 %tobool53.not, label %if.end8.i.if.end38.i_crit_edge, label %if.then10.i

if.end8.i.if.end38.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %data.0)
  %cmp13.i = icmp ugt i32 %data.0, 20000
  br i1 %.b, label %if.else.i100, label %if.then12.i

if.then12.i:                                      ; preds = %if.then10.i
  br i1 %cmp13.i, label %if.then14.i, label %if.then12.i.if.end38.i_crit_edge

if.then12.i.if.end38.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then14.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %data.0, ptr @frbwrite.space, align 4
  store i1 true, ptr @frbwrite.ptr, align 4
  br label %frbwrite.exit

if.else.i100:                                     ; preds = %if.then10.i
  br i1 %cmp13.i, label %if.then17.i, label %if.end26.i

if.then17.i:                                      ; preds = %if.else.i100
  call void @__sanitizer_cov_trace_pc() #10
  %42 = load i32, ptr @frbwrite.pulse, align 4
  %43 = load i32, ptr @frbwrite.space, align 4
  %add18.i = add i32 %43, %42
  %44 = call i32 @llvm.umin.i32(i32 %add18.i, i32 500000) #8
  %add22.i = add i32 %44, %data.0
  %45 = call i32 @llvm.umin.i32(i32 %add22.i, i32 500000) #8
  store i32 %45, ptr @frbwrite.space, align 4
  store i32 0, ptr @frbwrite.pulse, align 4
  br label %frbwrite.exit

if.end26.i:                                       ; preds = %if.else.i100
  call void @__sanitizer_cov_trace_pc() #10
  %46 = load i32, ptr @frbwrite.space, align 4
  %47 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %ev.i, align 8
  %48 = ptrtoint ptr %pulse.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load28.i = load i8, ptr %pulse.i, align 1
  %bf.clear29.i = and i8 %bf.load28.i, 127
  store i8 %bf.clear29.i, ptr %pulse.i, align 1
  %49 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 1), align 8
  %call31.i = call i32 @ir_raw_event_store_with_filter(ptr noundef %49, ptr noundef nonnull %ev.i) #8
  %50 = load i32, ptr @frbwrite.pulse, align 4
  %51 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %ev.i, align 8
  %52 = ptrtoint ptr %pulse.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load33.i = load i8, ptr %pulse.i, align 1
  %bf.set35.i = or i8 %bf.load33.i, -128
  store i8 %bf.set35.i, ptr %pulse.i, align 1
  %53 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 1), align 8
  %call36.i = call i32 @ir_raw_event_store_with_filter(ptr noundef %53, ptr noundef nonnull %ev.i) #8
  store i1 false, ptr @frbwrite.ptr, align 4
  store i32 0, ptr @frbwrite.pulse, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end26.i, %if.then12.i.if.end38.i_crit_edge, %if.end8.i.if.end38.i_crit_edge
  %bf.shl.i = phi i8 [ 0, %if.end26.i ], [ 0, %if.then12.i.if.end38.i_crit_edge ], [ -128, %if.end8.i.if.end38.i_crit_edge ]
  %54 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %data.0, ptr %ev.i, align 8
  %55 = ptrtoint ptr %pulse.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load41.i = load i8, ptr %pulse.i, align 1
  %bf.clear42.i = and i8 %bf.load41.i, 127
  %bf.set43.i = or i8 %bf.clear42.i, %bf.shl.i
  store i8 %bf.set43.i, ptr %pulse.i, align 1
  %56 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 1), align 8
  %call44.i = call i32 @ir_raw_event_store_with_filter(ptr noundef %56, ptr noundef nonnull %ev.i) #8
  br label %frbwrite.exit

frbwrite.exit:                                    ; preds = %if.end38.i, %if.then17.i, %if.then14.i, %if.then2.i, %if.then.i98.frbwrite.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev.i) #8
  store i64 %call12, ptr @serial_ir, align 8
  store i32 %cond, ptr @serial_ir_irq_handler.last_dcd, align 4
  br label %do.cond57

do.cond57:                                        ; preds = %frbwrite.exit, %if.then25, %do.body20, %land.lhs.true.do.cond57_crit_edge, %if.end5.do.cond57_crit_edge
  %57 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i101 = icmp eq i32 %57, 0
  br i1 %tobool.not.i101, label %do.cond57.sinp.exit109_crit_edge, label %if.then.i103

do.cond57.sinp.exit109_crit_edge:                 ; preds = %do.cond57
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit109

if.then.i103:                                     ; preds = %do.cond57
  call void @__sanitizer_cov_trace_pc() #10
  %58 = load i32, ptr @ioshift, align 4
  %shl.i102 = shl i32 2, %58
  br label %sinp.exit109

sinp.exit109:                                     ; preds = %if.then.i103, %do.cond57.sinp.exit109_crit_edge
  %offset.addr.0.i104 = phi i32 [ %shl.i102, %if.then.i103 ], [ 2, %do.cond57.sinp.exit109_crit_edge ]
  %59 = load i32, ptr @io, align 4
  %add.i105 = add i32 %59, %offset.addr.0.i104
  %and.i106 = and i32 %add.i105, 1048575
  %add1.i107 = or i32 %and.i106, -18874368
  %60 = inttoptr i32 %add1.i107 to ptr
  %61 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #8, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %62 = and i8 %61, 1
  %tobool61.not = icmp eq i8 %62, 0
  br i1 %tobool61.not, label %sinp.exit109.do.body_crit_edge, label %sinp.exit109.do.end64_crit_edge

sinp.exit109.do.end64_crit_edge:                  ; preds = %sinp.exit109
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end64

sinp.exit109.do.body_crit_edge:                   ; preds = %sinp.exit109
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end64:                                         ; preds = %sinp.exit109.do.end64_crit_edge, %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %64 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 1), align 8
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %64, i32 0, i32 34
  %65 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %timeout, align 4
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %66) #8
  %add = add i32 %call3.i, %63
  %call66 = call i32 @mod_timer(ptr noundef getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 3), i32 noundef %add) #8
  %67 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 1), align 8
  call void @ir_raw_event_handle(ptr noundef %67) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %sinp.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end64 ], [ 0, %sinp.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hardware_init_port() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.sinp.exit_crit_edge, label %if.then.i

entry.sinp.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @ioshift, align 4
  %shl.i = shl nuw i32 1, %1
  br label %sinp.exit

sinp.exit:                                        ; preds = %if.then.i, %entry.sinp.exit_crit_edge
  %offset.addr.0.i = phi i32 [ %shl.i, %if.then.i ], [ 1, %entry.sinp.exit_crit_edge ]
  %2 = load i32, ptr @io, align 4
  %add.i = add i32 %2, %offset.addr.0.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add1.i to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %5 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i34 = icmp eq i32 %5, 0
  br i1 %tobool.not.i34, label %sinp.exit.soutp.exit_crit_edge, label %if.then.i36

sinp.exit.soutp.exit_crit_edge:                   ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit

if.then.i36:                                      ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @ioshift, align 4
  %shl.i35 = shl nuw i32 1, %6
  br label %soutp.exit

soutp.exit:                                       ; preds = %if.then.i36, %sinp.exit.soutp.exit_crit_edge
  %offset.addr.0.i37 = phi i32 [ %shl.i35, %if.then.i36 ], [ 1, %sinp.exit.soutp.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %7 = load i32, ptr @io, align 4
  %add.i38 = add i32 %7, %offset.addr.0.i37
  %and.i39 = and i32 %add.i38, 1048575
  %add1.i40 = or i32 %and.i39, -18874368
  %8 = inttoptr i32 %add1.i40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #8, !srcloc !200
  %9 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i41 = icmp eq i32 %9, 0
  br i1 %tobool.not.i41, label %soutp.exit.sinp.exit48_crit_edge, label %if.then.i43

soutp.exit.sinp.exit48_crit_edge:                 ; preds = %soutp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit48

if.then.i43:                                      ; preds = %soutp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @ioshift, align 4
  %shl.i42 = shl nuw i32 1, %10
  br label %sinp.exit48

sinp.exit48:                                      ; preds = %if.then.i43, %soutp.exit.sinp.exit48_crit_edge
  %offset.addr.0.i44 = phi i32 [ %shl.i42, %if.then.i43 ], [ 1, %soutp.exit.sinp.exit48_crit_edge ]
  %11 = load i32, ptr @io, align 4
  %add.i45 = add i32 %11, %offset.addr.0.i44
  %and.i46 = and i32 %add.i45, 1048575
  %add1.i47 = or i32 %and.i46, -18874368
  %12 = inttoptr i32 %add1.i47 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %14 = and i8 %13, 15
  %15 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i49 = icmp eq i32 %15, 0
  br i1 %tobool.not.i49, label %sinp.exit48.soutp.exit56_crit_edge, label %if.then.i51

sinp.exit48.soutp.exit56_crit_edge:               ; preds = %sinp.exit48
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit56

if.then.i51:                                      ; preds = %sinp.exit48
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load i32, ptr @ioshift, align 4
  %shl.i50 = shl nuw i32 1, %16
  br label %soutp.exit56

soutp.exit56:                                     ; preds = %if.then.i51, %sinp.exit48.soutp.exit56_crit_edge
  %offset.addr.0.i52 = phi i32 [ %shl.i50, %if.then.i51 ], [ 1, %sinp.exit48.soutp.exit56_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %17 = load i32, ptr @io, align 4
  %add.i53 = add i32 %17, %offset.addr.0.i52
  %and.i54 = and i32 %add.i53, 1048575
  %add1.i55 = or i32 %and.i54, -18874368
  %18 = inttoptr i32 %add1.i55 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 15) #8, !srcloc !200
  %19 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i57 = icmp eq i32 %19, 0
  br i1 %tobool.not.i57, label %soutp.exit56.sinp.exit64_crit_edge, label %if.then.i59

soutp.exit56.sinp.exit64_crit_edge:               ; preds = %soutp.exit56
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit64

if.then.i59:                                      ; preds = %soutp.exit56
  call void @__sanitizer_cov_trace_pc() #10
  %20 = load i32, ptr @ioshift, align 4
  %shl.i58 = shl nuw i32 1, %20
  br label %sinp.exit64

sinp.exit64:                                      ; preds = %if.then.i59, %soutp.exit56.sinp.exit64_crit_edge
  %offset.addr.0.i60 = phi i32 [ %shl.i58, %if.then.i59 ], [ 1, %soutp.exit56.sinp.exit64_crit_edge ]
  %21 = load i32, ptr @io, align 4
  %add.i61 = add i32 %21, %offset.addr.0.i60
  %and.i62 = and i32 %add.i61, 1048575
  %add1.i63 = or i32 %and.i62, -18874368
  %22 = inttoptr i32 %add1.i63 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %24 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i65 = icmp eq i32 %24, 0
  br i1 %tobool.not.i65, label %sinp.exit64.soutp.exit72_crit_edge, label %if.then.i67

sinp.exit64.soutp.exit72_crit_edge:               ; preds = %sinp.exit64
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit72

if.then.i67:                                      ; preds = %sinp.exit64
  call void @__sanitizer_cov_trace_pc() #10
  %25 = load i32, ptr @ioshift, align 4
  %shl.i66 = shl nuw i32 1, %25
  br label %soutp.exit72

soutp.exit72:                                     ; preds = %if.then.i67, %sinp.exit64.soutp.exit72_crit_edge
  %offset.addr.0.i68 = phi i32 [ %shl.i66, %if.then.i67 ], [ 1, %sinp.exit64.soutp.exit72_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %26 = load i32, ptr @io, align 4
  %add.i69 = add i32 %26, %offset.addr.0.i68
  %and.i70 = and i32 %add.i69, 1048575
  %add1.i71 = or i32 %and.i70, -18874368
  %27 = inttoptr i32 %add1.i71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %4) #8, !srcloc !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not = icmp eq i8 %14, 0
  %28 = and i8 %23, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %28)
  %cmp10.not = icmp eq i8 %28, 15
  %or.cond = select i1 %cmp.not, i1 %cmp10.not, i1 false
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %soutp.exit72
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end:                                           ; preds = %soutp.exit72
  %29 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i73 = icmp eq i32 %29, 0
  br i1 %tobool.not.i73, label %if.end.sinp.exit80_crit_edge, label %if.then.i75

if.end.sinp.exit80_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit80

if.then.i75:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = load i32, ptr @ioshift, align 4
  %shl.i74 = shl i32 3, %30
  br label %sinp.exit80

sinp.exit80:                                      ; preds = %if.then.i75, %if.end.sinp.exit80_crit_edge
  %offset.addr.0.i76 = phi i32 [ %shl.i74, %if.then.i75 ], [ 3, %if.end.sinp.exit80_crit_edge ]
  %31 = load i32, ptr @io, align 4
  %add.i77 = add i32 %31, %offset.addr.0.i76
  %and.i78 = and i32 %add.i77, 1048575
  %add1.i79 = or i32 %and.i78, -18874368
  %32 = inttoptr i32 %add1.i79 to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %34 = and i8 %33, 127
  %35 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i81 = icmp eq i32 %35, 0
  br i1 %tobool.not.i81, label %sinp.exit80.soutp.exit88_crit_edge, label %if.then.i83

sinp.exit80.soutp.exit88_crit_edge:               ; preds = %sinp.exit80
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit88

if.then.i83:                                      ; preds = %sinp.exit80
  call void @__sanitizer_cov_trace_pc() #10
  %36 = load i32, ptr @ioshift, align 4
  %shl.i82 = shl i32 3, %36
  br label %soutp.exit88

soutp.exit88:                                     ; preds = %if.then.i83, %sinp.exit80.soutp.exit88_crit_edge
  %offset.addr.0.i84 = phi i32 [ %shl.i82, %if.then.i83 ], [ 3, %sinp.exit80.soutp.exit88_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %37 = load i32, ptr @io, align 4
  %add.i85 = add i32 %37, %offset.addr.0.i84
  %and.i86 = and i32 %add.i85, 1048575
  %add1.i87 = or i32 %and.i86, -18874368
  %38 = inttoptr i32 %add1.i87 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %34) #8, !srcloc !200
  %39 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i89 = icmp eq i32 %39, 0
  br i1 %tobool.not.i89, label %soutp.exit88.sinp.exit96_crit_edge, label %if.then.i91

soutp.exit88.sinp.exit96_crit_edge:               ; preds = %soutp.exit88
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit96

if.then.i91:                                      ; preds = %soutp.exit88
  call void @__sanitizer_cov_trace_pc() #10
  %40 = load i32, ptr @ioshift, align 4
  %shl.i90 = shl nuw i32 1, %40
  br label %sinp.exit96

sinp.exit96:                                      ; preds = %if.then.i91, %soutp.exit88.sinp.exit96_crit_edge
  %offset.addr.0.i92 = phi i32 [ %shl.i90, %if.then.i91 ], [ 1, %soutp.exit88.sinp.exit96_crit_edge ]
  %41 = load i32, ptr @io, align 4
  %add.i93 = add i32 %41, %offset.addr.0.i92
  %and.i94 = and i32 %add.i93, 1048575
  %add1.i95 = or i32 %and.i94, -18874368
  %42 = inttoptr i32 %add1.i95 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %44 = and i8 %43, -16
  %45 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i97 = icmp eq i32 %45, 0
  br i1 %tobool.not.i97, label %sinp.exit96.soutp.exit104_crit_edge, label %if.then.i99

sinp.exit96.soutp.exit104_crit_edge:              ; preds = %sinp.exit96
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit104

if.then.i99:                                      ; preds = %sinp.exit96
  call void @__sanitizer_cov_trace_pc() #10
  %46 = load i32, ptr @ioshift, align 4
  %shl.i98 = shl nuw i32 1, %46
  br label %soutp.exit104

soutp.exit104:                                    ; preds = %if.then.i99, %sinp.exit96.soutp.exit104_crit_edge
  %offset.addr.0.i100 = phi i32 [ %shl.i98, %if.then.i99 ], [ 1, %sinp.exit96.soutp.exit104_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %47 = load i32, ptr @io, align 4
  %add.i101 = add i32 %47, %offset.addr.0.i100
  %and.i102 = and i32 %add.i101, 1048575
  %add1.i103 = or i32 %and.i102, -18874368
  %48 = inttoptr i32 %add1.i103 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %44) #8, !srcloc !200
  %49 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i105 = icmp eq i32 %49, 0
  br i1 %tobool.not.i105, label %soutp.exit104.sinp.exit112_crit_edge, label %if.then.i107

soutp.exit104.sinp.exit112_crit_edge:             ; preds = %soutp.exit104
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit112

if.then.i107:                                     ; preds = %soutp.exit104
  call void @__sanitizer_cov_trace_pc() #10
  %50 = load i32, ptr @ioshift, align 4
  %shl.i106 = shl i32 5, %50
  br label %sinp.exit112

sinp.exit112:                                     ; preds = %if.then.i107, %soutp.exit104.sinp.exit112_crit_edge
  %offset.addr.0.i108 = phi i32 [ %shl.i106, %if.then.i107 ], [ 5, %soutp.exit104.sinp.exit112_crit_edge ]
  %51 = load i32, ptr @io, align 4
  %add.i109 = add i32 %51, %offset.addr.0.i108
  %and.i110 = and i32 %add.i109, 1048575
  %add1.i111 = or i32 %and.i110, -18874368
  %52 = inttoptr i32 %add1.i111 to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %54 = load i32, ptr @io, align 4
  %and.i117 = and i32 %54, 1048575
  %add1.i118 = or i32 %and.i117, -18874368
  %55 = inttoptr i32 %add1.i118 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %57 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i120 = icmp eq i32 %57, 0
  br i1 %tobool.not.i120, label %sinp.exit112.sinp.exit127_crit_edge, label %if.then.i122

sinp.exit112.sinp.exit127_crit_edge:              ; preds = %sinp.exit112
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit127

if.then.i122:                                     ; preds = %sinp.exit112
  call void @__sanitizer_cov_trace_pc() #10
  %58 = load i32, ptr @ioshift, align 4
  %shl.i121 = shl i32 2, %58
  br label %sinp.exit127

sinp.exit127:                                     ; preds = %if.then.i122, %sinp.exit112.sinp.exit127_crit_edge
  %offset.addr.0.i123 = phi i32 [ %shl.i121, %if.then.i122 ], [ 2, %sinp.exit112.sinp.exit127_crit_edge ]
  %59 = load i32, ptr @io, align 4
  %add.i124 = add i32 %59, %offset.addr.0.i123
  %and.i125 = and i32 %add.i124, 1048575
  %add1.i126 = or i32 %and.i125, -18874368
  %60 = inttoptr i32 %add1.i126 to ptr
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %62 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i128 = icmp eq i32 %62, 0
  br i1 %tobool.not.i128, label %sinp.exit127.sinp.exit135_crit_edge, label %if.then.i130

sinp.exit127.sinp.exit135_crit_edge:              ; preds = %sinp.exit127
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit135

if.then.i130:                                     ; preds = %sinp.exit127
  call void @__sanitizer_cov_trace_pc() #10
  %63 = load i32, ptr @ioshift, align 4
  %shl.i129 = shl i32 6, %63
  br label %sinp.exit135

sinp.exit135:                                     ; preds = %if.then.i130, %sinp.exit127.sinp.exit135_crit_edge
  %offset.addr.0.i131 = phi i32 [ %shl.i129, %if.then.i130 ], [ 6, %sinp.exit127.sinp.exit135_crit_edge ]
  %64 = load i32, ptr @io, align 4
  %add.i132 = add i32 %64, %offset.addr.0.i131
  %and.i133 = and i32 %add.i132, 1048575
  %add1.i134 = or i32 %and.i133, -18874368
  %65 = inttoptr i32 %add1.i134 to ptr
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %67 = load i8, ptr @txsense, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i136 = icmp eq i8 %67, 0
  %68 = load i32, ptr @type, align 4
  br i1 %tobool.not.i136, label %if.else.i, label %if.then.i137

if.then.i137:                                     ; preds = %sinp.exit135
  %on.i = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %68, i32 2
  %69 = ptrtoint ptr %on.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %on.i, align 4
  %71 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i, label %if.then.i137.soutp.exit.i_crit_edge, label %if.then.i.i

if.then.i137.soutp.exit.i_crit_edge:              ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit.i

if.then.i.i:                                      ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #10
  %72 = load i32, ptr @ioshift, align 4
  %shl.i.i = shl i32 4, %72
  br label %soutp.exit.i

soutp.exit.i:                                     ; preds = %if.then.i.i, %if.then.i137.soutp.exit.i_crit_edge
  %offset.addr.0.i.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ 4, %if.then.i137.soutp.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %73 = load i32, ptr @io, align 4
  %add.i.i = add i32 %73, %offset.addr.0.i.i
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %74 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 %70) #8, !srcloc !200
  br label %off.exit

if.else.i:                                        ; preds = %sinp.exit135
  %off.i = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %68, i32 3
  %75 = ptrtoint ptr %off.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %off.i, align 1
  %77 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i2.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i2.i, label %if.else.i.soutp.exit9.i_crit_edge, label %if.then.i4.i

if.else.i.soutp.exit9.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit9.i

if.then.i4.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = load i32, ptr @ioshift, align 4
  %shl.i3.i = shl i32 4, %78
  br label %soutp.exit9.i

soutp.exit9.i:                                    ; preds = %if.then.i4.i, %if.else.i.soutp.exit9.i_crit_edge
  %offset.addr.0.i5.i = phi i32 [ %shl.i3.i, %if.then.i4.i ], [ 4, %if.else.i.soutp.exit9.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %79 = load i32, ptr @io, align 4
  %add.i6.i = add i32 %79, %offset.addr.0.i5.i
  %and.i7.i = and i32 %add.i6.i, 1048575
  %add1.i8.i = or i32 %and.i7.i, -18874368
  %80 = inttoptr i32 %add1.i8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 %76) #8, !srcloc !200
  br label %off.exit

off.exit:                                         ; preds = %soutp.exit9.i, %soutp.exit.i
  %81 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i138 = icmp eq i32 %81, 0
  br i1 %tobool.not.i138, label %off.exit.sinp.exit145_crit_edge, label %if.then.i140

off.exit.sinp.exit145_crit_edge:                  ; preds = %off.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit145

if.then.i140:                                     ; preds = %off.exit
  call void @__sanitizer_cov_trace_pc() #10
  %82 = load i32, ptr @ioshift, align 4
  %shl.i139 = shl i32 5, %82
  br label %sinp.exit145

sinp.exit145:                                     ; preds = %if.then.i140, %off.exit.sinp.exit145_crit_edge
  %offset.addr.0.i141 = phi i32 [ %shl.i139, %if.then.i140 ], [ 5, %off.exit.sinp.exit145_crit_edge ]
  %83 = load i32, ptr @io, align 4
  %add.i142 = add i32 %83, %offset.addr.0.i141
  %and.i143 = and i32 %add.i142, 1048575
  %add1.i144 = or i32 %and.i143, -18874368
  %84 = inttoptr i32 %add1.i144 to ptr
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %84) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %86 = load i32, ptr @io, align 4
  %and.i150 = and i32 %86, 1048575
  %add1.i151 = or i32 %and.i150, -18874368
  %87 = inttoptr i32 %add1.i151 to ptr
  %88 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %87) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %89 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i153 = icmp eq i32 %89, 0
  br i1 %tobool.not.i153, label %sinp.exit145.sinp.exit160_crit_edge, label %if.then.i155

sinp.exit145.sinp.exit160_crit_edge:              ; preds = %sinp.exit145
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit160

if.then.i155:                                     ; preds = %sinp.exit145
  call void @__sanitizer_cov_trace_pc() #10
  %90 = load i32, ptr @ioshift, align 4
  %shl.i154 = shl i32 2, %90
  br label %sinp.exit160

sinp.exit160:                                     ; preds = %if.then.i155, %sinp.exit145.sinp.exit160_crit_edge
  %offset.addr.0.i156 = phi i32 [ %shl.i154, %if.then.i155 ], [ 2, %sinp.exit145.sinp.exit160_crit_edge ]
  %91 = load i32, ptr @io, align 4
  %add.i157 = add i32 %91, %offset.addr.0.i156
  %and.i158 = and i32 %add.i157, 1048575
  %add1.i159 = or i32 %and.i158, -18874368
  %92 = inttoptr i32 %add1.i159 to ptr
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %92) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %94 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i161 = icmp eq i32 %94, 0
  br i1 %tobool.not.i161, label %sinp.exit160.sinp.exit168_crit_edge, label %if.then.i163

sinp.exit160.sinp.exit168_crit_edge:              ; preds = %sinp.exit160
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit168

if.then.i163:                                     ; preds = %sinp.exit160
  call void @__sanitizer_cov_trace_pc() #10
  %95 = load i32, ptr @ioshift, align 4
  %shl.i162 = shl i32 6, %95
  br label %sinp.exit168

sinp.exit168:                                     ; preds = %if.then.i163, %sinp.exit160.sinp.exit168_crit_edge
  %offset.addr.0.i164 = phi i32 [ %shl.i162, %if.then.i163 ], [ 6, %sinp.exit160.sinp.exit168_crit_edge ]
  %96 = load i32, ptr @io, align 4
  %add.i165 = add i32 %96, %offset.addr.0.i164
  %and.i166 = and i32 %add.i165, 1048575
  %add1.i167 = or i32 %and.i166, -18874368
  %97 = inttoptr i32 %add1.i167 to ptr
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %97) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %99 = load i32, ptr @type, align 4
  %.off = add i32 %99, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %sinp.exit168.cleanup_crit_edge

sinp.exit168.cleanup_crit_edge:                   ; preds = %sinp.exit168
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %sinp.exit168
  %100 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i169 = icmp eq i32 %100, 0
  br i1 %tobool.not.i169, label %sw.bb.sinp.exit176_crit_edge, label %if.then.i171

sw.bb.sinp.exit176_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit176

if.then.i171:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %101 = load i32, ptr @ioshift, align 4
  %shl.i170 = shl i32 3, %101
  br label %sinp.exit176

sinp.exit176:                                     ; preds = %if.then.i171, %sw.bb.sinp.exit176_crit_edge
  %offset.addr.0.i172 = phi i32 [ %shl.i170, %if.then.i171 ], [ 3, %sw.bb.sinp.exit176_crit_edge ]
  %102 = load i32, ptr @io, align 4
  %add.i173 = add i32 %102, %offset.addr.0.i172
  %and.i174 = and i32 %add.i173, 1048575
  %add1.i175 = or i32 %and.i174, -18874368
  %103 = inttoptr i32 %add1.i175 to ptr
  %104 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %103) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %105 = or i8 %104, -128
  %106 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i177 = icmp eq i32 %106, 0
  br i1 %tobool.not.i177, label %sinp.exit176.soutp.exit184_crit_edge, label %if.then.i179

sinp.exit176.soutp.exit184_crit_edge:             ; preds = %sinp.exit176
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit184

if.then.i179:                                     ; preds = %sinp.exit176
  call void @__sanitizer_cov_trace_pc() #10
  %107 = load i32, ptr @ioshift, align 4
  %shl.i178 = shl i32 3, %107
  br label %soutp.exit184

soutp.exit184:                                    ; preds = %if.then.i179, %sinp.exit176.soutp.exit184_crit_edge
  %offset.addr.0.i180 = phi i32 [ %shl.i178, %if.then.i179 ], [ 3, %sinp.exit176.soutp.exit184_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %108 = load i32, ptr @io, align 4
  %add.i181 = add i32 %108, %offset.addr.0.i180
  %and.i182 = and i32 %add.i181, 1048575
  %add1.i183 = or i32 %and.i182, -18874368
  %109 = inttoptr i32 %add1.i183 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 %105) #8, !srcloc !200
  %110 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i185 = icmp eq i32 %110, 0
  br i1 %tobool.not.i185, label %soutp.exit184.soutp.exit192_crit_edge, label %if.then.i187

soutp.exit184.soutp.exit192_crit_edge:            ; preds = %soutp.exit184
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit192

if.then.i187:                                     ; preds = %soutp.exit184
  call void @__sanitizer_cov_trace_pc() #10
  %111 = load i32, ptr @ioshift, align 4
  %shl.i186 = shl nuw i32 1, %111
  br label %soutp.exit192

soutp.exit192:                                    ; preds = %if.then.i187, %soutp.exit184.soutp.exit192_crit_edge
  %offset.addr.0.i188 = phi i32 [ %shl.i186, %if.then.i187 ], [ 1, %soutp.exit184.soutp.exit192_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %112 = load i32, ptr @io, align 4
  %add.i189 = add i32 %112, %offset.addr.0.i188
  %and.i190 = and i32 %add.i189, 1048575
  %add1.i191 = or i32 %and.i190, -18874368
  %113 = inttoptr i32 %add1.i191 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 0) #8, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %114 = load i32, ptr @io, align 4
  %and.i197 = and i32 %114, 1048575
  %add1.i198 = or i32 %and.i197, -18874368
  %115 = inttoptr i32 %add1.i198 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 1) #8, !srcloc !200
  %116 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i200 = icmp eq i32 %116, 0
  br i1 %tobool.not.i200, label %soutp.exit192.soutp.exit207_crit_edge, label %if.then.i202

soutp.exit192.soutp.exit207_crit_edge:            ; preds = %soutp.exit192
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit207

if.then.i202:                                     ; preds = %soutp.exit192
  call void @__sanitizer_cov_trace_pc() #10
  %117 = load i32, ptr @ioshift, align 4
  %shl.i201 = shl i32 3, %117
  br label %soutp.exit207

soutp.exit207:                                    ; preds = %if.then.i202, %soutp.exit192.soutp.exit207_crit_edge
  %offset.addr.0.i203 = phi i32 [ %shl.i201, %if.then.i202 ], [ 3, %soutp.exit192.soutp.exit207_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %118 = load i32, ptr @io, align 4
  %add.i204 = add i32 %118, %offset.addr.0.i203
  %and.i205 = and i32 %add.i204, 1048575
  %add1.i206 = or i32 %and.i205, -18874368
  %119 = inttoptr i32 %add1.i206 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 2) #8, !srcloc !200
  br label %cleanup

cleanup:                                          ; preds = %soutp.exit207, %sinp.exit168.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %sinp.exit168.cleanup_crit_edge ], [ 0, %soutp.exit207 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_pulse_homebrew(i32 noundef %length, i64 noundef %edge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @softcarrier, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv.i = zext i32 %length to i64
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000
  %add.i.i = add i64 %mul.i.i, %edge
  %1 = load i32, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 5), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 4), align 8
  %call986.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call986.i, i64 %add.i.i)
  %cmp.i.not87.i = icmp slt i64 %call986.i, %add.i.i
  br i1 %cmp.i.not87.i, label %if.end.lr.ph.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.lr.ph.i:                                   ; preds = %if.then
  %sub.i = sub i32 100, %1
  %mul3.i = mul i32 %sub.i, 10000000
  %div49.i = lshr i32 %2, 1
  %add7.i = add i32 %mul3.i, %div49.i
  %div8.i = udiv i32 %add7.i, %2
  %mul.i = mul i32 %1, 10000000
  %add.i = add i32 %div49.i, %mul.i
  %div1.i = udiv i32 %add.i, %2
  %conv12.i = zext i32 %div1.i to i64
  %conv27.i = zext i32 %div8.i to i64
  br label %if.end.i

if.end.i:                                         ; preds = %if.end35.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %call989.i = phi i64 [ %call986.i, %if.end.lr.ph.i ], [ %call9.i, %if.end35.i.if.end.i_crit_edge ]
  %edge.addr.088.i = phi i64 [ %edge, %if.end.lr.ph.i ], [ %add28.i, %if.end35.i.if.end.i_crit_edge ]
  %3 = load i8, ptr @txsense, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  %4 = load i32, ptr @type, align 4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %off.i.i = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %4, i32 3
  %5 = ptrtoint ptr %off.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %off.i.i, align 1
  %7 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.soutp.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.soutp.exit.i.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @ioshift, align 4
  %shl.i.i.i = shl i32 4, %8
  br label %soutp.exit.i.i

soutp.exit.i.i:                                   ; preds = %if.then.i.i.i, %if.then.i.i.soutp.exit.i.i_crit_edge
  %offset.addr.0.i.i.i = phi i32 [ %shl.i.i.i, %if.then.i.i.i ], [ 4, %if.then.i.i.soutp.exit.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %9 = load i32, ptr @io, align 4
  %add.i.i.i = add i32 %9, %offset.addr.0.i.i.i
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %10 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %6) #8, !srcloc !200
  br label %on.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  %on.i.i = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %4, i32 2
  %11 = ptrtoint ptr %on.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %on.i.i, align 4
  %13 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i2.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i2.i.i, label %if.else.i.i.soutp.exit9.i.i_crit_edge, label %if.then.i4.i.i

if.else.i.i.soutp.exit9.i.i_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit9.i.i

if.then.i4.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load i32, ptr @ioshift, align 4
  %shl.i3.i.i = shl i32 4, %14
  br label %soutp.exit9.i.i

soutp.exit9.i.i:                                  ; preds = %if.then.i4.i.i, %if.else.i.i.soutp.exit9.i.i_crit_edge
  %offset.addr.0.i5.i.i = phi i32 [ %shl.i3.i.i, %if.then.i4.i.i ], [ 4, %if.else.i.i.soutp.exit9.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %15 = load i32, ptr @io, align 4
  %add.i6.i.i = add i32 %15, %offset.addr.0.i5.i.i
  %and.i7.i.i = and i32 %add.i6.i.i, 1048575
  %add1.i8.i.i = or i32 %and.i7.i.i, -18874368
  %16 = inttoptr i32 %add1.i8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %12) #8, !srcloc !200
  br label %on.exit.i

on.exit.i:                                        ; preds = %soutp.exit9.i.i, %soutp.exit.i.i
  %add13.i = add i64 %edge.addr.088.i, %conv12.i
  %sub14.i = sub i64 %add13.i, %call989.i
  %conv16.i = trunc i64 %sub14.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16.i)
  %cmp17.i = icmp sgt i32 %conv16.i, 0
  br i1 %cmp17.i, label %cond.false8.i.i, label %on.exit.i.if.end20.i_crit_edge

on.exit.i.if.end20.i_crit_edge:                   ; preds = %on.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

cond.false8.i.i:                                  ; preds = %on.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add nuw i32 %conv16.i, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %div.i.i) #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %cond.false8.i.i, %on.exit.i.if.end20.i_crit_edge
  %call21.i = tail call i64 @ktime_get() #8
  %18 = load i8, ptr @txsense, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i52.i = icmp eq i8 %18, 0
  %19 = load i32, ptr @type, align 4
  br i1 %tobool.not.i52.i, label %if.else.i65.i, label %if.then.i55.i

if.then.i55.i:                                    ; preds = %if.end20.i
  %on.i53.i = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %19, i32 2
  %20 = ptrtoint ptr %on.i53.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %on.i53.i, align 4
  %22 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i54.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i54.i, label %if.then.i55.i.soutp.exit.i62.i_crit_edge, label %if.then.i.i57.i

if.then.i55.i.soutp.exit.i62.i_crit_edge:         ; preds = %if.then.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit.i62.i

if.then.i.i57.i:                                  ; preds = %if.then.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = load i32, ptr @ioshift, align 4
  %shl.i.i56.i = shl i32 4, %23
  br label %soutp.exit.i62.i

soutp.exit.i62.i:                                 ; preds = %if.then.i.i57.i, %if.then.i55.i.soutp.exit.i62.i_crit_edge
  %offset.addr.0.i.i58.i = phi i32 [ %shl.i.i56.i, %if.then.i.i57.i ], [ 4, %if.then.i55.i.soutp.exit.i62.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %24 = load i32, ptr @io, align 4
  %add.i.i59.i = add i32 %24, %offset.addr.0.i.i58.i
  %and.i.i60.i = and i32 %add.i.i59.i, 1048575
  %add1.i.i61.i = or i32 %and.i.i60.i, -18874368
  %25 = inttoptr i32 %add1.i.i61.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %21) #8, !srcloc !200
  br label %off.exit.i

if.else.i65.i:                                    ; preds = %if.end20.i
  %off.i63.i = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %19, i32 3
  %26 = ptrtoint ptr %off.i63.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %off.i63.i, align 1
  %28 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i2.i64.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i2.i64.i, label %if.else.i65.i.soutp.exit9.i72.i_crit_edge, label %if.then.i4.i67.i

if.else.i65.i.soutp.exit9.i72.i_crit_edge:        ; preds = %if.else.i65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit9.i72.i

if.then.i4.i67.i:                                 ; preds = %if.else.i65.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = load i32, ptr @ioshift, align 4
  %shl.i3.i66.i = shl i32 4, %29
  br label %soutp.exit9.i72.i

soutp.exit9.i72.i:                                ; preds = %if.then.i4.i67.i, %if.else.i65.i.soutp.exit9.i72.i_crit_edge
  %offset.addr.0.i5.i68.i = phi i32 [ %shl.i3.i66.i, %if.then.i4.i67.i ], [ 4, %if.else.i65.i.soutp.exit9.i72.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %30 = load i32, ptr @io, align 4
  %add.i6.i69.i = add i32 %30, %offset.addr.0.i5.i68.i
  %and.i7.i70.i = and i32 %add.i6.i69.i, 1048575
  %add1.i8.i71.i = or i32 %and.i7.i70.i, -18874368
  %31 = inttoptr i32 %add1.i8.i71.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %27) #8, !srcloc !200
  br label %off.exit.i

off.exit.i:                                       ; preds = %soutp.exit9.i72.i, %soutp.exit.i62.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call21.i, i64 %add.i.i)
  %cmp.i73.not.i = icmp slt i64 %call21.i, %add.i.i
  br i1 %cmp.i73.not.i, label %if.end26.i, label %off.exit.i.if.end_crit_edge

off.exit.i.if.end_crit_edge:                      ; preds = %off.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end26.i:                                       ; preds = %off.exit.i
  %add28.i = add i64 %add13.i, %conv27.i
  %sub29.i = sub i64 %add28.i, %call21.i
  %conv31.i = trunc i64 %sub29.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv31.i)
  %cmp32.i = icmp sgt i32 %conv31.i, 0
  br i1 %cmp32.i, label %cond.false8.i84.i, label %if.end26.i.if.end35.i_crit_edge

if.end26.i.if.end35.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

cond.false8.i84.i:                                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i77.i = add nuw i32 %conv31.i, 999
  %div.i78.i = udiv i32 %sub.i77.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %div.i78.i) #8
  br label %if.end35.i

if.end35.i:                                       ; preds = %cond.false8.i84.i, %if.end26.i.if.end35.i_crit_edge
  %call9.i = tail call i64 @ktime_get() #8
  %cmp.i.not.i = icmp slt i64 %call9.i, %add.i.i
  br i1 %cmp.i.not.i, label %if.end35.i.if.end.i_crit_edge, label %if.end35.i.if.end_crit_edge

if.end35.i.if.end_crit_edge:                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end35.i.if.end.i_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else:                                          ; preds = %entry
  %33 = load i8, ptr @txsense, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  %34 = load i32, ptr @type, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %off.i = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %34, i32 3
  %35 = ptrtoint ptr %off.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %off.i, align 1
  %37 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i1 = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i1, label %if.then.i.soutp.exit.i_crit_edge, label %if.then.i.i2

if.then.i.soutp.exit.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit.i

if.then.i.i2:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = load i32, ptr @ioshift, align 4
  %shl.i.i = shl i32 4, %38
  br label %soutp.exit.i

soutp.exit.i:                                     ; preds = %if.then.i.i2, %if.then.i.soutp.exit.i_crit_edge
  %offset.addr.0.i.i = phi i32 [ %shl.i.i, %if.then.i.i2 ], [ 4, %if.then.i.soutp.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %39 = load i32, ptr @io, align 4
  %add.i.i3 = add i32 %39, %offset.addr.0.i.i
  %and.i.i = and i32 %add.i.i3, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %40 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %36) #8, !srcloc !200
  br label %if.end

if.else.i:                                        ; preds = %if.else
  %on.i = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %34, i32 2
  %41 = ptrtoint ptr %on.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %on.i, align 4
  %43 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i2.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i2.i, label %if.else.i.soutp.exit9.i_crit_edge, label %if.then.i4.i

if.else.i.soutp.exit9.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit9.i

if.then.i4.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = load i32, ptr @ioshift, align 4
  %shl.i3.i = shl i32 4, %44
  br label %soutp.exit9.i

soutp.exit9.i:                                    ; preds = %if.then.i4.i, %if.else.i.soutp.exit9.i_crit_edge
  %offset.addr.0.i5.i = phi i32 [ %shl.i3.i, %if.then.i4.i ], [ 4, %if.else.i.soutp.exit9.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %45 = load i32, ptr @io, align 4
  %add.i6.i = add i32 %45, %offset.addr.0.i5.i
  %and.i7.i = and i32 %add.i6.i, 1048575
  %add1.i8.i = or i32 %and.i7.i, -18874368
  %46 = inttoptr i32 %add1.i8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %42) #8, !srcloc !200
  br label %if.end

if.end:                                           ; preds = %soutp.exit9.i, %soutp.exit.i, %if.end35.i.if.end_crit_edge, %off.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_space_homebrew() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @txsense, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  %1 = load i32, ptr @type, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %on.i = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %1, i32 2
  %2 = ptrtoint ptr %on.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %on.i, align 4
  %4 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %if.then.i.soutp.exit.i_crit_edge, label %if.then.i.i

if.then.i.soutp.exit.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @ioshift, align 4
  %shl.i.i = shl i32 4, %5
  br label %soutp.exit.i

soutp.exit.i:                                     ; preds = %if.then.i.i, %if.then.i.soutp.exit.i_crit_edge
  %offset.addr.0.i.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ 4, %if.then.i.soutp.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %6 = load i32, ptr @io, align 4
  %add.i.i = add i32 %6, %offset.addr.0.i.i
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %7 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %3) #8, !srcloc !200
  br label %off.exit

if.else.i:                                        ; preds = %entry
  %off.i = getelementptr [5 x %struct.serial_ir_hw], ptr @hardware, i32 0, i32 %1, i32 3
  %8 = ptrtoint ptr %off.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %off.i, align 1
  %10 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i2.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i2.i, label %if.else.i.soutp.exit9.i_crit_edge, label %if.then.i4.i

if.else.i.soutp.exit9.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %soutp.exit9.i

if.then.i4.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @ioshift, align 4
  %shl.i3.i = shl i32 4, %11
  br label %soutp.exit9.i

soutp.exit9.i:                                    ; preds = %if.then.i4.i, %if.else.i.soutp.exit9.i_crit_edge
  %offset.addr.0.i5.i = phi i32 [ %shl.i3.i, %if.then.i4.i ], [ 4, %if.else.i.soutp.exit9.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %12 = load i32, ptr @io, align 4
  %add.i6.i = add i32 %12, %offset.addr.0.i5.i
  %and.i7.i = and i32 %add.i6.i, 1048575
  %add1.i8.i = or i32 %and.i7.i, -18874368
  %13 = inttoptr i32 %add1.i8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %9) #8, !srcloc !200
  br label %off.exit

off.exit:                                         ; preds = %soutp.exit9.i, %soutp.exit.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_pulse_irdeo(i32 noundef %length, i64 noundef %target) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %length, 1152
  %0 = load i32, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %0)
  %cmp = icmp ugt i32 %0, 50
  %. = select i1 %cmp, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %mul)
  %1 = icmp ult i32 %mul, 10000
  br i1 %1, label %entry.if.end26_crit_edge, label %for.body.preheader

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.body.preheader:                               ; preds = %entry
  %div = udiv i32 %mul, 10000
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %output.056 = phi i8 [ %output.1, %for.inc.for.body_crit_edge ], [ 127, %for.body.preheader ]
  %i.055 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %rawbits.054 = phi i32 [ %sub, %for.inc.for.body_crit_edge ], [ %div, %for.body.preheader ]
  %mul2 = mul i32 %i.055, 3
  %shl = shl i32 %., %mul2
  %2 = trunc i32 %shl to i8
  %3 = lshr i8 %2, 1
  %4 = xor i8 %3, -1
  %conv8 = and i8 %output.056, %4
  %inc = add i32 %i.055, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp9 = icmp eq i32 %inc, 3
  br i1 %cmp9, label %soutp.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

soutp.exit:                                       ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %5 = load i32, ptr @io, align 4
  %and.i = and i32 %5, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv8) #8, !srcloc !200
  br label %while.cond

while.cond:                                       ; preds = %sinp.exit.while.cond_crit_edge, %soutp.exit
  %7 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i34 = icmp eq i32 %7, 0
  br i1 %tobool.not.i34, label %while.cond.sinp.exit_crit_edge, label %if.then.i35

while.cond.sinp.exit_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit

if.then.i35:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @ioshift, align 4
  %shl.i = shl i32 5, %8
  br label %sinp.exit

sinp.exit:                                        ; preds = %if.then.i35, %while.cond.sinp.exit_crit_edge
  %offset.addr.0.i = phi i32 [ %shl.i, %if.then.i35 ], [ 5, %while.cond.sinp.exit_crit_edge ]
  %9 = load i32, ptr @io, align 4
  %add.i = add i32 %9, %offset.addr.0.i
  %and.i36 = and i32 %add.i, 1048575
  %add1.i37 = or i32 %and.i36, -18874368
  %10 = inttoptr i32 %add1.i37 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %12 = and i8 %11, 32
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %sinp.exit.while.cond_crit_edge, label %sinp.exit.for.inc_crit_edge

sinp.exit.for.inc_crit_edge:                      ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sinp.exit.while.cond_crit_edge:                   ; preds = %sinp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

for.inc:                                          ; preds = %sinp.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %sinp.exit.for.inc_crit_edge ]
  %output.1 = phi i8 [ %conv8, %for.body.for.inc_crit_edge ], [ 127, %sinp.exit.for.inc_crit_edge ]
  %sub = add nsw i32 %rawbits.054, -3
  %cmp1 = icmp sgt i32 %rawbits.054, 3
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp15.not = icmp eq i32 %i.1, 0
  br i1 %cmp15.not, label %for.end.if.end26_crit_edge, label %soutp.exit44

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

soutp.exit44:                                     ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %13 = load i32, ptr @io, align 4
  %and.i42 = and i32 %13, 1048575
  %add1.i43 = or i32 %and.i42, -18874368
  %14 = inttoptr i32 %add1.i43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %output.1) #8, !srcloc !200
  br label %while.cond18

while.cond18:                                     ; preds = %sinp.exit52.while.cond18_crit_edge, %soutp.exit44
  %15 = load i32, ptr @iommap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i45 = icmp eq i32 %15, 0
  br i1 %tobool.not.i45, label %while.cond18.sinp.exit52_crit_edge, label %if.then.i47

while.cond18.sinp.exit52_crit_edge:               ; preds = %while.cond18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sinp.exit52

if.then.i47:                                      ; preds = %while.cond18
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load i32, ptr @ioshift, align 4
  %shl.i46 = shl i32 5, %16
  br label %sinp.exit52

sinp.exit52:                                      ; preds = %if.then.i47, %while.cond18.sinp.exit52_crit_edge
  %offset.addr.0.i48 = phi i32 [ %shl.i46, %if.then.i47 ], [ 5, %while.cond18.sinp.exit52_crit_edge ]
  %17 = load i32, ptr @io, align 4
  %add.i49 = add i32 %17, %offset.addr.0.i48
  %and.i50 = and i32 %add.i49, 1048575
  %add1.i51 = or i32 %and.i50, -18874368
  %18 = inttoptr i32 %add1.i51 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %20 = and i8 %19, 64
  %tobool22.not = icmp eq i8 %20, 0
  br i1 %tobool22.not, label %sinp.exit52.while.cond18_crit_edge, label %sinp.exit52.if.end26_crit_edge

sinp.exit52.if.end26_crit_edge:                   ; preds = %sinp.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

sinp.exit52.while.cond18_crit_edge:               ; preds = %sinp.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond18

if.end26:                                         ; preds = %sinp.exit52.if.end26_crit_edge, %for.end.if.end26_crit_edge, %entry.if.end26_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @send_space_irdeo() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @serial_ir_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @serial_ir_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef 0) #8
  store ptr %call1, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 2), align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.exit_driver_unregister_crit_edge, label %if.end4

if.end.exit_driver_unregister_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_driver_unregister

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @platform_device_add(ptr noundef nonnull %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %exit_device_put

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

exit_device_put:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr getelementptr inbounds (%struct.serial_ir, ptr @serial_ir, i32 0, i32 2), align 4
  tail call void @platform_device_put(ptr noundef %0) #8
  br label %exit_driver_unregister

exit_driver_unregister:                           ; preds = %exit_device_put, %if.end.exit_driver_unregister_crit_edge
  %result.0 = phi i32 [ %call5, %exit_device_put ], [ -12, %if.end.exit_driver_unregister_crit_edge ]
  tail call void @platform_driver_unregister(ptr noundef nonnull @serial_ir_driver) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_driver_unregister, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %exit_driver_unregister ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !31, !33, !34, !36, !38, !39, !41, !43, !44, !46, !48, !49, !51, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !96, !97, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !128, !129, !131, !132, !133, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !153, !154, !155, !157, !158, !160, !161, !162, !164, !166, !168, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !182, !183, !184}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @__initcall__kmod_serial_ir__234_804_serial_ir_init_module6, !1, !"__initcall__kmod_serial_ir__234_804_serial_ir_init_module6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/serial_ir.c", i32 804, i32 1}
!2 = !{ptr @__exitcall_serial_ir_exit_module, !3, !"__exitcall_serial_ir_exit_module", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/serial_ir.c", i32 805, i32 1}
!4 = !{ptr @__UNIQUE_ID_description235, !5, !"__UNIQUE_ID_description235", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/serial_ir.c", i32 807, i32 1}
!6 = !{ptr @__UNIQUE_ID_author236, !7, !"__UNIQUE_ID_author236", i1 false, i1 false}
!7 = !{!"../drivers/media/rc/serial_ir.c", i32 808, i32 1}
!8 = !{ptr @__UNIQUE_ID_file237, !9, !"__UNIQUE_ID_file237", i1 false, i1 false}
!9 = !{!"../drivers/media/rc/serial_ir.c", i32 809, i32 1}
!10 = !{ptr @__UNIQUE_ID_license238, !9, !"__UNIQUE_ID_license238", i1 false, i1 false}
!11 = !{ptr @__param_type, !12, !"__param_type", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/serial_ir.c", i32 811, i32 1}
!13 = !{ptr @__UNIQUE_ID_typetype239, !12, !"__UNIQUE_ID_typetype239", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_type240, !15, !"__UNIQUE_ID_type240", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/serial_ir.c", i32 812, i32 1}
!16 = !{ptr @__param_io, !17, !"__param_io", i1 false, i1 false}
!17 = !{!"../drivers/media/rc/serial_ir.c", i32 814, i32 1}
!18 = !{ptr @__UNIQUE_ID_iotype241, !17, !"__UNIQUE_ID_iotype241", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_io242, !20, !"__UNIQUE_ID_io242", i1 false, i1 false}
!20 = !{!"../drivers/media/rc/serial_ir.c", i32 815, i32 1}
!21 = !{ptr @__param_iommap, !22, !"__param_iommap", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/serial_ir.c", i32 818, i32 1}
!23 = !{ptr @__UNIQUE_ID_iommaptype243, !22, !"__UNIQUE_ID_iommaptype243", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_iommap244, !25, !"__UNIQUE_ID_iommap244", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/serial_ir.c", i32 819, i32 1}
!26 = !{ptr @__param_ioshift, !27, !"__param_ioshift", i1 false, i1 false}
!27 = !{!"../drivers/media/rc/serial_ir.c", i32 826, i32 1}
!28 = !{ptr @__UNIQUE_ID_ioshifttype245, !27, !"__UNIQUE_ID_ioshifttype245", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_ioshift246, !30, !"__UNIQUE_ID_ioshift246", i1 false, i1 false}
!30 = !{!"../drivers/media/rc/serial_ir.c", i32 827, i32 1}
!31 = !{ptr @__param_irq, !32, !"__param_irq", i1 false, i1 false}
!32 = !{!"../drivers/media/rc/serial_ir.c", i32 829, i32 1}
!33 = !{ptr @__UNIQUE_ID_irqtype247, !32, !"__UNIQUE_ID_irqtype247", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_irq248, !35, !"__UNIQUE_ID_irq248", i1 false, i1 false}
!35 = !{!"../drivers/media/rc/serial_ir.c", i32 830, i32 1}
!36 = !{ptr @__param_share_irq, !37, !"__param_share_irq", i1 false, i1 false}
!37 = !{!"../drivers/media/rc/serial_ir.c", i32 832, i32 1}
!38 = !{ptr @__UNIQUE_ID_share_irqtype249, !37, !"__UNIQUE_ID_share_irqtype249", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_share_irq250, !40, !"__UNIQUE_ID_share_irq250", i1 false, i1 false}
!40 = !{!"../drivers/media/rc/serial_ir.c", i32 833, i32 1}
!41 = !{ptr @__param_sense, !42, !"__param_sense", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/serial_ir.c", i32 835, i32 1}
!43 = !{ptr @__UNIQUE_ID_sensetype251, !42, !"__UNIQUE_ID_sensetype251", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_sense252, !45, !"__UNIQUE_ID_sense252", i1 false, i1 false}
!45 = !{!"../drivers/media/rc/serial_ir.c", i32 836, i32 1}
!46 = !{ptr @__param_txsense, !47, !"__param_txsense", i1 false, i1 false}
!47 = !{!"../drivers/media/rc/serial_ir.c", i32 839, i32 1}
!48 = !{ptr @__UNIQUE_ID_txsensetype253, !47, !"__UNIQUE_ID_txsensetype253", i1 false, i1 false}
!49 = !{ptr @__UNIQUE_ID_txsense254, !50, !"__UNIQUE_ID_txsense254", i1 false, i1 false}
!50 = !{!"../drivers/media/rc/serial_ir.c", i32 840, i32 1}
!51 = !{ptr @__param_softcarrier, !52, !"__param_softcarrier", i1 false, i1 false}
!52 = !{!"../drivers/media/rc/serial_ir.c", i32 843, i32 1}
!53 = !{ptr @__UNIQUE_ID_softcarriertype255, !52, !"__UNIQUE_ID_softcarriertype255", i1 false, i1 false}
!54 = !{ptr @__UNIQUE_ID_softcarrier256, !55, !"__UNIQUE_ID_softcarrier256", i1 false, i1 false}
!55 = !{!"../drivers/media/rc/serial_ir.c", i32 844, i32 1}
!56 = !{ptr @type, !57, !"type", i1 false, i1 false}
!57 = !{!"../drivers/media/rc/serial_ir.c", i32 48, i32 12}
!58 = !{ptr @io, !59, !"io", i1 false, i1 false}
!59 = !{!"../drivers/media/rc/serial_ir.c", i32 49, i32 12}
!60 = !{ptr @irq, !61, !"irq", i1 false, i1 false}
!61 = !{!"../drivers/media/rc/serial_ir.c", i32 50, i32 12}
!62 = !{ptr @iommap, !63, !"iommap", i1 false, i1 false}
!63 = !{!"../drivers/media/rc/serial_ir.c", i32 51, i32 14}
!64 = !{ptr @ioshift, !65, !"ioshift", i1 false, i1 false}
!65 = !{!"../drivers/media/rc/serial_ir.c", i32 52, i32 12}
!66 = !{ptr @share_irq, !67, !"share_irq", i1 false, i1 false}
!67 = !{!"../drivers/media/rc/serial_ir.c", i32 54, i32 13}
!68 = !{ptr @txsense, !69, !"txsense", i1 false, i1 false}
!69 = !{!"../drivers/media/rc/serial_ir.c", i32 56, i32 13}
!70 = !{ptr @serial_ir, !71, !"serial_ir", i1 false, i1 false}
!71 = !{!"../drivers/media/rc/serial_ir.c", i32 138, i32 25}
!72 = !{ptr @.str, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/rc/serial_ir.c", i32 729, i32 11}
!74 = !{ptr @serial_ir_driver, !75, !"serial_ir_driver", i1 false, i1 false}
!75 = !{!"../drivers/media/rc/serial_ir.c", i32 724, i32 31}
!76 = !{ptr @.str.1, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/rc/serial_ir.c", i32 501, i32 24}
!78 = !{ptr @.str.2, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/rc/serial_ir.c", i32 504, i32 24}
!80 = !{ptr @.str.3, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/rc/serial_ir.c", i32 507, i32 24}
!82 = !{ptr @.str.4, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/rc/serial_ir.c", i32 510, i32 24}
!84 = !{ptr @.str.5, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/rc/serial_ir.c", i32 513, i32 24}
!86 = !{ptr @.str.6, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/rc/serial_ir.c", i32 517, i32 22}
!88 = !{ptr @.str.7, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/rc/serial_ir.c", i32 527, i32 20}
!90 = !{ptr @serial_ir_probe.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/media/rc/serial_ir.c", i32 535, i32 2}
!92 = !{ptr @.str.8, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.9, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/rc/serial_ir.c", i32 542, i32 4}
!95 = !{ptr @.str.10, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.11, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.12, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.13, !94, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @serial_ir_probe._entry, !94, !"_entry", i1 false, i1 false}
!100 = !{ptr @serial_ir_probe._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.15, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/rc/serial_ir.c", i32 544, i32 4}
!103 = !{ptr @serial_ir_probe._entry.14, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @serial_ir_probe._entry_ptr.16, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.18, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/rc/serial_ir.c", i32 554, i32 3}
!107 = !{ptr @serial_ir_probe._entry.17, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @serial_ir_probe._entry_ptr.19, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.21, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/rc/serial_ir.c", i32 555, i32 3}
!111 = !{ptr @.str.22, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @serial_ir_probe._entry.20, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @serial_ir_probe._entry_ptr.23, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.25, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/rc/serial_ir.c", i32 556, i32 3}
!116 = !{ptr @serial_ir_probe._entry.24, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @serial_ir_probe._entry_ptr.26, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.28, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/rc/serial_ir.c", i32 558, i32 3}
!120 = !{ptr @serial_ir_probe._entry.27, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @serial_ir_probe._entry_ptr.29, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.31, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/rc/serial_ir.c", i32 589, i32 3}
!124 = !{ptr @.str.32, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @serial_ir_probe._entry.30, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @serial_ir_probe._entry_ptr.33, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.34, !123, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.35, !123, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.37, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/rc/serial_ir.c", i32 592, i32 3}
!131 = !{ptr @serial_ir_probe._entry.36, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @serial_ir_probe._entry_ptr.38, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.39, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/rc/serial_ir.c", i32 595, i32 2}
!135 = !{ptr @serial_ir_probe.__UNIQUE_ID_ddebug233, !134, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!136 = !{ptr @.str.40, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/rc/serial_ir.c", i32 68, i32 11}
!138 = !{ptr @.str.41, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/rc/serial_ir.c", i32 82, i32 11}
!140 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/rc/serial_ir.c", i32 93, i32 11}
!142 = !{ptr @.str.43, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/rc/serial_ir.c", i32 104, i32 11}
!144 = !{ptr @.str.44, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/rc/serial_ir.c", i32 112, i32 11}
!146 = !{ptr @hardware, !147, !"hardware", i1 false, i1 false}
!147 = !{!"../drivers/media/rc/serial_ir.c", i32 66, i32 28}
!148 = !{ptr @serial_ir_irq_handler.last_dcd, !149, !"last_dcd", i1 false, i1 false}
!149 = !{!"../drivers/media/rc/serial_ir.c", i32 326, i32 13}
!150 = !{ptr @.str.45, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/rc/serial_ir.c", i32 338, i32 4}
!152 = !{ptr @.str.46, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @serial_ir_irq_handler._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @serial_ir_irq_handler._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.47, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/rc/serial_ir.c", i32 356, i32 5}
!157 = !{ptr @serial_ir_irq_handler.__UNIQUE_ID_ddebug232, !156, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!158 = !{ptr @.str.49, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/rc/serial_ir.c", i32 368, i32 6}
!160 = !{ptr @serial_ir_irq_handler._entry.48, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @serial_ir_irq_handler._entry_ptr.50, !159, !"_entry_ptr", i1 false, i1 false}
!162 = distinct !{null, !163, !"ptr", i1 false, i1 false}
!163 = !{!"../drivers/media/rc/serial_ir.c", i32 267, i32 22}
!164 = !{ptr @frbwrite.pulse, !165, !"pulse", i1 false, i1 false}
!165 = !{!"../drivers/media/rc/serial_ir.c", i32 267, i32 27}
!166 = !{ptr @frbwrite.space, !167, !"space", i1 false, i1 false}
!167 = !{!"../drivers/media/rc/serial_ir.c", i32 267, i32 34}
!168 = !{ptr @.str.51, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/rc/serial_ir.c", i32 417, i32 3}
!170 = !{ptr @.str.52, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @hardware_init_port._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @hardware_init_port._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @__param_str_type, !12, !"__param_str_type", i1 false, i1 false}
!174 = !{ptr @__param_str_io, !17, !"__param_str_io", i1 false, i1 false}
!175 = !{ptr @__param_str_iommap, !22, !"__param_str_iommap", i1 false, i1 false}
!176 = !{ptr @__param_str_ioshift, !27, !"__param_str_ioshift", i1 false, i1 false}
!177 = !{ptr @__param_str_irq, !32, !"__param_str_irq", i1 false, i1 false}
!178 = !{ptr @__param_str_share_irq, !37, !"__param_str_share_irq", i1 false, i1 false}
!179 = !{ptr @__param_str_sense, !42, !"__param_str_sense", i1 false, i1 false}
!180 = !{ptr @sense, !181, !"sense", i1 false, i1 false}
!181 = !{!"../drivers/media/rc/serial_ir.c", i32 55, i32 12}
!182 = !{ptr @__param_str_txsense, !47, !"__param_str_txsense", i1 false, i1 false}
!183 = !{ptr @__param_str_softcarrier, !52, !"__param_str_softcarrier", i1 false, i1 false}
!184 = !{ptr @softcarrier, !185, !"softcarrier", i1 false, i1 false}
!185 = !{!"../drivers/media/rc/serial_ir.c", i32 53, i32 13}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{i8 0, i8 2}
!196 = !{i64 4634809}
!197 = !{i64 2154279251}
!198 = !{i64 2148972106, i64 2148972111, i64 2148972124, i64 2148972168, i64 2148972202, i64 2148972223}
!199 = !{i64 2154279465}
!200 = !{i64 4634414}
!201 = !{i64 719609, i64 719636, i64 719658, i64 719686}
!202 = !{i64 720017, i64 720044, i64 720077, i64 720098, i64 720125, i64 720151}
!203 = !{!"auto-init"}
