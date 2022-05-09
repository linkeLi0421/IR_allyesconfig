; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_of.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_of.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_serial_info = type { ptr, ptr, i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }

@__initcall__kmod_8250_of__235_350_of_platform_serial_driver_init6 = internal global ptr @of_platform_serial_driver_init, section ".initcall6.init", align 4
@of_platform_serial_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @of_platform_serial_probe, ptr @of_platform_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_platform_serial_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @of_serial_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_of_platform_serial_driver_exit = internal global ptr @of_platform_serial_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [45 x i8] c"8250_of.author=Arnd Bergmann <arnd@arndb.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [45 x i8] c"8250_of.file=drivers/tty/serial/8250/8250_of\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [20 x i8] c"8250_of.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [74 x i8] c"8250_of.description=Serial Port driver for Open Firmware platform devices\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"of_serial\00", [22 x i8] zeroinitializer }, align 32
@of_platform_serial_table = internal constant { [18 x %struct.of_device_id], [888 x i8] } { [18 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ns8250\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ns16450\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ns16550a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ns16550\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ns16750\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ns16850\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc3220-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ralink,rt2880-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 29 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,xscale-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 15 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,16550-FIFO32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 26 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,16550-FIFO64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 27 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,16550-FIFO128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 28 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mtk-btif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 117 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,mmp-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 15 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da830-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 95 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,wpcm450-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 40 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npcm750-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 40 to ptr) }, %struct.of_device_id zeroinitializer], [888 x i8] zeroinitializer }, align 32
@of_serial_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @of_serial_suspend, ptr @of_serial_resume, ptr @of_serial_suspend, ptr @of_serial_resume, ptr @of_serial_suspend, ptr @of_serial_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm,bcm7271-uart\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"used-by-rtas\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx-threshold\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"auto-flow-control\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"overrun-throttle-ms\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@of_platform_serial_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 54, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"of_platform_serial_setup\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/tty/serial/8250/8250_of.c\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_platform_serial_setup._entry_ptr = internal global ptr @of_platform_serial_setup._entry, section ".printk_index", align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"current-speed\00", [18 x i8] zeroinitializer }, align 32
@of_platform_serial_setup._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.9, i32 70, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid address\0A\00", [47 x i8] zeroinitializer }, align 32
@of_platform_serial_setup._entry_ptr.15 = internal global ptr @of_platform_serial_setup._entry.13, section ".printk_index", align 4
@of_platform_serial_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg-offset\00", [21 x i8] zeroinitializer }, align 32
@of_platform_serial_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.9, i32 89, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"reg-offset %u exceeds region size %pa\0A\00", [57 x i8] zeroinitializer }, align 32
@of_platform_serial_setup._entry_ptr.20 = internal global ptr @of_platform_serial_setup._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg-io-width\00", [19 x i8] zeroinitializer }, align 32
@of_platform_serial_setup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.9, i32 113, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported reg-io-width (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@of_platform_serial_setup._entry_ptr.24 = internal global ptr @of_platform_serial_setup._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mrvl,mmp-uart\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-shift\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fifo-size\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no-loopback-test\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl,ns16550\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,16550-FIFO64\00", [47 x i8] zeroinitializer }, align 32
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"of_platform_serial_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 340, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 342, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"of_platform_serial_table\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 313, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"of_serial_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 308, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 205, i32 50 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 212, i32 48 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 228, i32 48 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 233, i32 48 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 237, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 46, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 53, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 65, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 70, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 76, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 86, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 88, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 99, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 112, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 122, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 126, i32 31 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 130, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 134, i32 28 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 163, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 178, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [37 x i8] c"../drivers/tty/serial/8250/8250_of.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 179, i32 35 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_of_platform_serial_driver_exit, ptr @__initcall__kmod_8250_of__235_350_of_platform_serial_driver_init6, ptr @of_platform_serial_driver_exit, ptr @of_platform_serial_setup._entry, ptr @of_platform_serial_setup._entry.13, ptr @of_platform_serial_setup._entry.18, ptr @of_platform_serial_setup._entry.22, ptr @of_platform_serial_setup._entry_ptr, ptr @of_platform_serial_setup._entry_ptr.15, ptr @of_platform_serial_setup._entry_ptr.20, ptr @of_platform_serial_setup._entry_ptr.24, ptr @of_platform_serial_driver, ptr @.str, ptr @of_platform_serial_table, ptr @of_serial_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @of_platform_serial_setup.__key, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_platform_serial_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_platform_serial_table to i32), i32 3528, i32 4416, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_serial_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_platform_serial_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_platform_serial_setup._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_platform_serial_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_platform_serial_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_platform_serial_setup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @of_platform_serial_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @of_platform_serial_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_platform_serial_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @of_platform_serial_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_platform_serial_probe(ptr noundef %ofdev) #2 align 64 {
entry:
  %resource.i = alloca %struct.resource, align 4
  %clk.i = alloca i32, align 4
  %spd.i = alloca i32, align 4
  %prop.i = alloca i32, align 4
  %port8250 = alloca %struct.uart_8250_port, align 4
  %tx_threshold = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %port8250) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_threshold) #6
  %0 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tx_threshold, align 4, !annotation !82
  %dev = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %3 = ptrtoint ptr %call2 to i32
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #9
  %cmp11 = icmp eq ptr %call7.i.i, null
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %7 = getelementptr inbounds i8, ptr %port8250, i32 360
  %8 = call ptr @memset(ptr %7, i32 0, i32 224)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %resource.i) #6
  %9 = getelementptr inbounds %struct.resource, ptr %resource.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.resource, ptr %resource.i, i32 0, i32 3
  %11 = call ptr @memset(ptr %resource.i, i32 255, i32 32)
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk.i) #6
  %14 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %clk.i, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spd.i) #6
  %15 = ptrtoint ptr %spd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %spd.i, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #6
  %16 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %prop.i, align 4, !annotation !82
  %17 = call ptr @memset(ptr %port8250, i32 0, i32 360)
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.6, ptr noundef nonnull %clk.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end13.if.end23.i_crit_edge, label %if.then.i

if.end13.if.end23.i_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then.i:                                        ; preds = %if.end13
  %call6.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call6.i, ptr %call7.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.i, label %if.end15.i

if.then10.i:                                      ; preds = %if.then.i
  %cmp.not.i = icmp eq ptr %call6.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then10.i.of_platform_serial_setup.exit_crit_edge, label %do.end.i

if.then10.i.of_platform_serial_setup.exit_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_platform_serial_setup.exit

do.end.i:                                         ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call6.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %19) #10
  br label %of_platform_serial_setup.exit

if.end15.i:                                       ; preds = %if.then.i
  %call.i224.i = call i32 @clk_prepare(ptr noundef %call6.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224.i)
  %tobool.not.i.i = icmp eq i32 %call.i224.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end15.i.clk_prepare_enable.exit.i_crit_edge

if.end15.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end15.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %call6.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end20.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end20.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call6.i) #6
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end15.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i224.i, %if.end15.i.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp18.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp18.i, label %clk_prepare_enable.exit.i.of_platform_serial_setup.exit_crit_edge, label %clk_prepare_enable.exit.i.if.end20.i_crit_edge

clk_prepare_enable.exit.i.if.end20.i_crit_edge:   ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

clk_prepare_enable.exit.i.of_platform_serial_setup.exit_crit_edge: ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_platform_serial_setup.exit

if.end20.i:                                       ; preds = %clk_prepare_enable.exit.i.if.end20.i_crit_edge, %if.end.i.i.if.end20.i_crit_edge
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %call22.i = call i32 @clk_get_rate(ptr noundef %21) #6
  %22 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call22.i, ptr %clk.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end20.i, %if.end13.if.end23.i_crit_edge
  %call.i.i225.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef nonnull %spd.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i225.i)
  %cmp25.i = icmp sgt i32 %call.i.i225.i, -1
  br i1 %cmp25.i, label %if.then26.i, label %if.end23.i.if.end27.i_crit_edge

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk.i, align 4
  %25 = ptrtoint ptr %spd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %spd.i, align 4
  %mul.i = shl i32 %26, 4
  %div.i = udiv i32 %24, %mul.i
  %custom_divisor.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 40
  %27 = ptrtoint ptr %custom_divisor.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div.i, ptr %custom_divisor.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end27.i_crit_edge
  %call28.i = call i32 @of_address_to_resource(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %resource.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end35.i, label %do.end33.i

do.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %err_unprepare.i

if.end35.i:                                       ; preds = %if.end27.i
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 33
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 956301312, ptr %flags.i, align 4
  call void @__raw_spin_lock_init(ptr noundef nonnull %port8250, ptr noundef nonnull @.str.16, ptr noundef nonnull @of_platform_serial_setup.__key, i16 noundef signext 3) #6
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %10, align 4
  %and.i.i = and i32 %30, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i.i)
  %cmp41.i = icmp eq i32 %and.i.i, 256
  br i1 %cmp41.i, label %if.then42.i, label %if.else.i

if.then42.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 26
  %31 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %iotype.i, align 2
  %32 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %resource.i, align 4
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 1
  %34 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %iobase.i, align 4
  br label %if.end76.i

if.else.i:                                        ; preds = %if.end35.i
  %35 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %resource.i, align 4
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 43
  %37 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %mapbase.i, align 4
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %9, align 4
  %sub.i.i = sub i32 1, %36
  %add.i.i = add i32 %sub.i.i, %39
  %mapsize.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 44
  %40 = ptrtoint ptr %mapsize.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i.i, ptr %mapsize.i, align 4
  %call.i.i226.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i226.i)
  %cmp46.i = icmp sgt i32 %call.i.i226.i, -1
  br i1 %cmp46.i, label %if.then47.i, label %if.else.i.if.end59.i_crit_edge

if.else.i.if.end59.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.then47.i:                                      ; preds = %if.else.i
  %41 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %prop.i, align 4
  %43 = ptrtoint ptr %mapsize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mapsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp49.not.i = icmp ugt i32 %44, %42
  br i1 %cmp49.not.i, label %if.end56.i, label %do.end53.i

do.end53.i:                                       ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %42, ptr noundef %mapsize.i) #10
  br label %err_unprepare.i

if.end56.i:                                       ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mapbase.i, align 4
  %add.i = add i32 %46, %42
  store i32 %add.i, ptr %mapbase.i, align 4
  %sub.i = sub i32 %44, %42
  %47 = ptrtoint ptr %mapsize.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i, ptr %mapsize.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end56.i, %if.else.i.if.end59.i_crit_edge
  %iotype60.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 26
  %48 = ptrtoint ptr %iotype60.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %iotype60.i, align 2
  %call.i.i227.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.21, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i227.i)
  %cmp62.i = icmp sgt i32 %call.i.i227.i, -1
  br i1 %cmp62.i, label %if.then63.i, label %if.end59.i.if.end74.i_crit_edge

if.end59.i.if.end74.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.i

if.then63.i:                                      ; preds = %if.end59.i
  %49 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %prop.i, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %50, label %do.end72.i [
    i32 1, label %if.then63.i.if.end74.sink.split.i_crit_edge
    i32 2, label %sw.bb65.i
    i32 4, label %sw.bb67.i
  ]

if.then63.i.if.end74.sink.split.i_crit_edge:      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.sink.split.i

sw.bb65.i:                                        ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.sink.split.i

sw.bb67.i:                                        ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #8
  %call68.i = call zeroext i1 @of_device_is_big_endian(ptr noundef %13) #6
  %conv.i = select i1 %call68.i, i8 6, i8 3
  br label %if.end74.sink.split.i

do.end72.i:                                       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %50) #10
  br label %err_unprepare.i

if.end74.sink.split.i:                            ; preds = %sw.bb67.i, %sw.bb65.i, %if.then63.i.if.end74.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 7, %sw.bb65.i ], [ %conv.i, %sw.bb67.i ], [ 2, %if.then63.i.if.end74.sink.split.i_crit_edge ]
  %52 = ptrtoint ptr %iotype60.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %.sink.i, ptr %iotype60.i, align 2
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end74.sink.split.i, %if.end59.i.if.end74.i_crit_edge
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %54, -2147483648
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.end74.i, %if.then42.i
  %call77.i = call i32 @of_device_is_compatible(ptr noundef %13, ptr noundef nonnull @.str.25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.end76.i.if.end80.i_crit_edge, label %if.then79.i

if.end76.i.if.end80.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80.i

if.then79.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 25
  %55 = ptrtoint ptr %regshift.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %regshift.i, align 1
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then79.i, %if.end76.i.if.end80.i_crit_edge
  %call.i.i228.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.26, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i228.i)
  %cmp82.i = icmp sgt i32 %call.i.i228.i, -1
  br i1 %cmp82.i, label %if.then84.i, label %if.end80.i.if.end87.i_crit_edge

if.end80.i.if.end87.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.i

if.then84.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %prop.i, align 4
  %conv85.i = trunc i32 %57 to i8
  %regshift86.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 25
  %58 = ptrtoint ptr %regshift86.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv85.i, ptr %regshift86.i, align 1
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then84.i, %if.end80.i.if.end87.i_crit_edge
  %call.i.i229.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.27, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i229.i)
  %cmp89.i = icmp sgt i32 %call.i.i229.i, -1
  br i1 %cmp89.i, label %if.then91.i, label %if.end87.i.if.end92.i_crit_edge

if.end87.i.if.end92.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92.i

if.then91.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %prop.i, align 4
  %fifosize.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 23
  %61 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %fifosize.i, align 4
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then91.i, %if.end87.i.if.end92.i_crit_edge
  %call93.i = call i32 @of_alias_get_id(ptr noundef %13, ptr noundef nonnull @.str.28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call93.i)
  %cmp94.i = icmp sgt i32 %call93.i, -1
  br i1 %cmp94.i, label %if.then96.i, label %if.end92.i.if.end97.i_crit_edge

if.end92.i.if.end97.i_crit_edge:                  ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97.i

if.then96.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  %line.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 41
  %62 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call93.i, ptr %line.i, align 4
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then96.i, %if.end92.i.if.end97.i_crit_edge
  %call98.i = call i32 @of_irq_get(ptr noundef %13, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %cmp99.i = icmp slt i32 %call98.i, 0
  br i1 %cmp99.i, label %if.then101.i, label %if.end97.i.if.end106.i_crit_edge

if.end97.i.if.end106.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.i

if.then101.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call98.i)
  %cmp102.i = icmp eq i32 %call98.i, -517
  br i1 %cmp102.i, label %if.then101.i.err_unprepare.i_crit_edge, label %if.then101.i.if.end106.i_crit_edge

if.then101.i.if.end106.i_crit_edge:               ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.i

if.then101.i.err_unprepare.i_crit_edge:           ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unprepare.i

if.end106.i:                                      ; preds = %if.then101.i.if.end106.i_crit_edge, %if.end97.i.if.end106.i_crit_edge
  %irq.0.i = phi i32 [ %call98.i, %if.end97.i.if.end106.i_crit_edge ], [ 0, %if.then101.i.if.end106.i_crit_edge ]
  %irq107.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 20
  %63 = ptrtoint ptr %irq107.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %irq.0.i, ptr %irq107.i, align 4
  %call.i230.i = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %rst.i = getelementptr inbounds %struct.of_serial_info, ptr %call7.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %rst.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i230.i, ptr %rst.i, align 4
  %cmp.i231.i = icmp ugt ptr %call.i230.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231.i, label %if.then112.i, label %if.end115.i

if.then112.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %call.i230.i to i32
  br label %err_unprepare.i

if.end115.i:                                      ; preds = %if.end106.i
  %call117.i = call i32 @reset_control_deassert(ptr noundef %call.i230.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117.i)
  %tobool118.not.i = icmp eq i32 %call117.i, 0
  br i1 %tobool118.not.i, label %if.end120.i, label %if.end115.i.err_unprepare.i_crit_edge

if.end115.i.err_unprepare.i_crit_edge:            ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unprepare.i

if.end120.i:                                      ; preds = %if.end115.i
  %type121.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 38
  %66 = ptrtoint ptr %type121.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %3, ptr %type121.i, align 4
  %67 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %clk.i, align 4
  %uartclk.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 22
  %69 = ptrtoint ptr %uartclk.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %uartclk.i, align 4
  %call.i232.i = call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.29, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i232.i, null
  br i1 %tobool.i.not.i, label %if.end120.i.if.end126.i_crit_edge, label %if.then123.i

if.end120.i.if.end126.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126.i

if.then123.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags.i, align 4
  %or125.i = or i32 %71, 64
  store i32 %or125.i, ptr %flags.i, align 4
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then123.i, %if.end120.i.if.end126.i_crit_edge
  %dev128.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 45
  %72 = ptrtoint ptr %dev128.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %dev, ptr %dev128.i, align 4
  %rs485_config.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 18
  %73 = ptrtoint ptr %rs485_config.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @serial8250_em485_config, ptr %rs485_config.i, align 4
  %rs485_start_tx.i = getelementptr inbounds %struct.uart_8250_port, ptr %port8250, i32 0, i32 24
  %74 = ptrtoint ptr %rs485_start_tx.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @serial8250_em485_start_tx, ptr %rs485_start_tx.i, align 4
  %rs485_stop_tx.i = getelementptr inbounds %struct.uart_8250_port, ptr %port8250, i32 0, i32 25
  %75 = ptrtoint ptr %rs485_stop_tx.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @serial8250_em485_stop_tx, ptr %rs485_stop_tx.i, align 4
  %cond149.i = icmp eq ptr %call2, inttoptr (i32 29 to ptr)
  br i1 %cond149.i, label %sw.bb129.i, label %if.end126.i.sw.epilog131.i_crit_edge

if.end126.i.sw.epilog131.i_crit_edge:             ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog131.i

sw.bb129.i:                                       ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #8
  %iotype130.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 26
  %76 = ptrtoint ptr %iotype130.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 4, ptr %iotype130.i, align 2
  br label %sw.epilog131.i

sw.epilog131.i:                                   ; preds = %sw.bb129.i, %if.end126.i.sw.epilog131.i_crit_edge
  %call132.i = call i32 @of_device_is_compatible(ptr noundef %13, ptr noundef nonnull @.str.30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.i)
  %tobool133.not.i = icmp eq i32 %call132.i, 0
  br i1 %tobool133.not.i, label %lor.lhs.false.i, label %sw.epilog131.i.if.then136.i_crit_edge

sw.epilog131.i.if.then136.i_crit_edge:            ; preds = %sw.epilog131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then136.i

lor.lhs.false.i:                                  ; preds = %sw.epilog131.i
  %call134.i = call i32 @of_device_is_compatible(ptr noundef %13, ptr noundef nonnull @.str.31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.i)
  %tobool135.not.i = icmp eq i32 %call134.i, 0
  br i1 %tobool135.not.i, label %lor.lhs.false.i.of_platform_serial_setup.exit.thread_crit_edge, label %lor.lhs.false.i.if.then136.i_crit_edge

lor.lhs.false.i.if.then136.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then136.i

lor.lhs.false.i.of_platform_serial_setup.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_platform_serial_setup.exit.thread

if.then136.i:                                     ; preds = %lor.lhs.false.i.if.then136.i_crit_edge, %sw.epilog131.i.if.then136.i_crit_edge
  %handle_irq.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 15
  %77 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @fsl8250_handle_irq, ptr %handle_irq.i, align 4
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 48
  %78 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %has_sysrq.i, align 4
  br label %of_platform_serial_setup.exit.thread

err_unprepare.i:                                  ; preds = %if.end115.i.err_unprepare.i_crit_edge, %if.then112.i, %if.then101.i.err_unprepare.i_crit_edge, %do.end72.i, %do.end53.i, %do.end33.i
  %ret.0.i = phi i32 [ %call28.i, %do.end33.i ], [ %65, %if.then112.i ], [ %call117.i, %if.end115.i.err_unprepare.i_crit_edge ], [ -22, %do.end53.i ], [ -22, %do.end72.i ], [ -517, %if.then101.i.err_unprepare.i_crit_edge ]
  %79 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call7.i.i, align 8
  call void @clk_disable(ptr noundef %80) #6
  call void @clk_unprepare(ptr noundef %80) #6
  br label %of_platform_serial_setup.exit

of_platform_serial_setup.exit.thread:             ; preds = %if.then136.i, %lor.lhs.false.i.of_platform_serial_setup.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spd.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resource.i) #6
  br label %if.end17

of_platform_serial_setup.exit:                    ; preds = %err_unprepare.i, %clk_prepare_enable.exit.i.of_platform_serial_setup.exit_crit_edge, %do.end.i, %if.then10.i.of_platform_serial_setup.exit_crit_edge
  %ret.1.i = phi i32 [ %19, %do.end.i ], [ -517, %if.then10.i.of_platform_serial_setup.exit_crit_edge ], [ %retval.0.i.i, %clk_prepare_enable.exit.i.of_platform_serial_setup.exit_crit_edge ], [ %ret.0.i, %err_unprepare.i ]
  %call.i233.i = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spd.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resource.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool15.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool15.not, label %of_platform_serial_setup.exit.if.end17_crit_edge, label %of_platform_serial_setup.exit.err_free_crit_edge

of_platform_serial_setup.exit.err_free_crit_edge: ; preds = %of_platform_serial_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

of_platform_serial_setup.exit.if.end17_crit_edge: ; preds = %of_platform_serial_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %of_platform_serial_setup.exit.if.end17_crit_edge, %of_platform_serial_setup.exit.thread
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 23
  %81 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool18.not = icmp eq i32 %82, 0
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %port8250, i32 0, i32 3
  %83 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 256, ptr %capabilities, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %84 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %of_node, align 8
  %call.i.i79 = call i32 @of_property_read_variable_u32_array(ptr noundef %85, ptr noundef nonnull @.str.3, ptr noundef nonnull %tx_threshold, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i79)
  %cmp24 = icmp sgt i32 %call.i.i79, -1
  br i1 %cmp24, label %land.lhs.true, label %if.end20.if.end31_crit_edge

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end20
  %86 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_threshold, align 4
  %88 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %87)
  %cmp27 = icmp ugt i32 %89, %87
  br i1 %cmp27, label %if.then28, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %89, %87
  %tx_loadsz = getelementptr inbounds %struct.uart_8250_port, ptr %port8250, i32 0, i32 6
  %90 = ptrtoint ptr %tx_loadsz to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %sub, ptr %tx_loadsz, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %land.lhs.true.if.end31_crit_edge, %if.end20.if.end31_crit_edge
  %91 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %of_node, align 8
  %call.i80 = call ptr @of_find_property(ptr noundef %92, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %tobool.i81.not = icmp eq ptr %call.i80, null
  br i1 %tobool.i81.not, label %if.end31.if.end37_crit_edge, label %if.then35

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %capabilities36 = getelementptr inbounds %struct.uart_8250_port, ptr %port8250, i32 0, i32 3
  %93 = ptrtoint ptr %capabilities36 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %capabilities36, align 4
  %or = or i32 %94, 2048
  store i32 %or, ptr %capabilities36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end31.if.end37_crit_edge
  %95 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %of_node, align 8
  %overrun_backoff_time_ms = getelementptr inbounds %struct.uart_8250_port, ptr %port8250, i32 0, i32 27
  %call.i.i82 = call i32 @of_property_read_variable_u32_array(ptr noundef %96, ptr noundef nonnull @.str.5, ptr noundef %overrun_backoff_time_ms, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i82)
  %cmp41.not = icmp sgt i32 %call.i.i82, -1
  br i1 %cmp41.not, label %if.end37.if.end44_crit_edge, label %if.then42

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %overrun_backoff_time_ms to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %overrun_backoff_time_ms, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end37.if.end44_crit_edge
  %call45 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %port8250) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %err_dispose, label %if.end48

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.of_serial_info, ptr %call7.i.i, i32 0, i32 2
  %98 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %3, ptr %type, align 8
  %line = getelementptr inbounds %struct.of_serial_info, ptr %call7.i.i, i32 0, i32 3
  %99 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call45, ptr %line, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %100 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_dispose:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 20
  %101 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %irq, align 4
  call void @irq_dispose_mapping(i32 noundef %102) #6
  %call.i83 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %103 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call7.i.i, align 8
  call void @clk_disable(ptr noundef %104) #6
  call void @clk_unprepare(ptr noundef %104) #6
  br label %err_free

err_free:                                         ; preds = %err_dispose, %of_platform_serial_setup.exit.err_free_crit_edge
  %ret.0 = phi i32 [ %ret.1.i, %of_platform_serial_setup.exit.err_free_crit_edge ], [ %call45, %err_dispose ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end48, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free ], [ 0, %if.end48 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.end4.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_threshold) #6
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %port8250) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_platform_serial_remove(ptr noundef %ofdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %line = getelementptr inbounds %struct.of_serial_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void @serial8250_unregister_port(i32 noundef %3) #6
  %rst = getelementptr inbounds %struct.of_serial_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %5) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_em485_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_em485_start_tx(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_em485_stop_tx(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl8250_handle_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_serial_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %line = getelementptr inbounds %struct.of_serial_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  %call1 = tail call ptr @serial8250_get_port(i32 noundef %3) #6
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  tail call void @serial8250_suspend_port(i32 noundef %5) #6
  %cons = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 32
  %6 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %land.lhs.true

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %index, align 2
  %conv = sext i16 %9 to i32
  %line5 = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 41
  %10 = ptrtoint ptr %line5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp = icmp eq i32 %11, %conv
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %12 = load i8, ptr @console_suspend_enabled, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_serial_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %line = getelementptr inbounds %struct.of_serial_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  %call1 = tail call ptr @serial8250_get_port(i32 noundef %3) #6
  %cons = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 32
  %4 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %land.lhs.true

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index, align 2
  %conv = sext i16 %7 to i32
  %line4 = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 41
  %8 = ptrtoint ptr %line4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp = icmp eq i32 %9, %conv
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %10 = load i8, ptr @console_suspend_enabled, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i16 = tail call i32 @clk_prepare(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %13 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %line, align 4
  tail call void @serial8250_resume_port(i32 noundef %14) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_8250_of__235_350_of_platform_serial_driver_init6, !1, !"__initcall__kmod_8250_of__235_350_of_platform_serial_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 350, i32 1}
!2 = !{ptr @__exitcall_of_platform_serial_driver_exit, !1, !"__exitcall_of_platform_serial_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author236, !4, !"__UNIQUE_ID_author236", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 352, i32 1}
!5 = !{ptr @__UNIQUE_ID_file237, !6, !"__UNIQUE_ID_file237", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 353, i32 1}
!7 = !{ptr @__UNIQUE_ID_license238, !6, !"__UNIQUE_ID_license238", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description239, !9, !"__UNIQUE_ID_description239", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 354, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 342, i32 11}
!12 = !{ptr @of_platform_serial_driver, !13, !"of_platform_serial_driver", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 340, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 205, i32 50}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 212, i32 48}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 228, i32 48}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 233, i32 48}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 237, i32 4}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 46, i32 31}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 53, i32 5}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @of_platform_serial_setup._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @of_platform_serial_setup._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 65, i32 31}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 70, i32 3}
!38 = !{ptr @of_platform_serial_setup._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @of_platform_serial_setup._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @of_platform_serial_setup.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 76, i32 2}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 86, i32 32}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 88, i32 5}
!47 = !{ptr @of_platform_serial_setup._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @of_platform_serial_setup._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 99, i32 32}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 112, i32 5}
!53 = !{ptr @of_platform_serial_setup._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @of_platform_serial_setup._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 122, i32 34}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 126, i32 31}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 130, i32 31}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 134, i32 28}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 163, i32 32}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 178, i32 35}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 179, i32 35}
!69 = !{ptr @of_platform_serial_table, !70, !"of_platform_serial_table", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 313, i32 34}
!71 = !{ptr @of_serial_pm_ops, !72, !"of_serial_pm_ops", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/8250/8250_of.c", i32 308, i32 8}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{i8 0, i8 2}
