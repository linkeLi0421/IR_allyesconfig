; ModuleID = '/llk/IR_all_yes/drivers/watchdog/wdt_pci.c_pt.bc'
source_filename = "../drivers/watchdog/wdt_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_heartbeat = internal constant [18 x i8] c"wdt_pci.heartbeat\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@heartbeat = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype236 = internal constant [31 x i8] c"wdt_pci.parmtype=heartbeat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat237 = internal constant [86 x i8] c"wdt_pci.parm=heartbeat:Watchdog heartbeat in seconds. (0<heartbeat<65536, default=60)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [17 x i8] c"wdt_pci.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype238 = internal constant [31 x i8] c"wdt_pci.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout239 = internal constant [74 x i8] c"wdt_pci.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__param_str_tachometer = internal constant [19 x i8] c"wdt_pci.tachometer\00", align 1
@tachometer = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tachometer = internal constant %struct.kernel_param { ptr @__param_str_tachometer, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @tachometer } }, section "__param", align 4
@__UNIQUE_ID_tachometertype240 = internal constant [32 x i8] c"wdt_pci.parmtype=tachometer:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tachometer241 = internal constant [81 x i8] c"wdt_pci.parm=tachometer:PCI-WDT501 Fan Tachometer support (0=disable, default=0)\00", section ".modinfo", align 1
@__param_str_type = internal constant [13 x i8] c"wdt_pci.type\00", align 1
@type = internal global { i32, [28 x i8] } { i32 500, [28 x i8] zeroinitializer }, align 32
@__param_type = internal constant %struct.kernel_param { ptr @__param_str_type, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @type } }, section "__param", align 4
@__UNIQUE_ID_typetype242 = internal constant [26 x i8] c"wdt_pci.parmtype=type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_type243 = internal constant [66 x i8] c"wdt_pci.parm=type:PCI-WDT501 Card type (500 or 501 , default=500)\00", section ".modinfo", align 1
@__initcall__kmod_wdt_pci__244_738_wdtpci_driver_init6 = internal global ptr @wdtpci_driver_init, section ".initcall6.init", align 4
@wdtpci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @wdtpci_pci_tbl, ptr @wdtpci_init_one, ptr @wdtpci_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_wdtpci_driver_exit = internal global ptr @wdtpci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author245 = internal constant [37 x i8] c"wdt_pci.author=JP Nollmann, Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [69 x i8] c"wdt_pci.description=Driver for the ICS PCI-WDT500/501 watchdog cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [38 x i8] c"wdt_pci.file=drivers/watchdog/wdt_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [20 x i8] c"wdt_pci.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wdt_pci\00", [24 x i8] zeroinitializer }, align 32
@wdtpci_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 18767, i32 8896, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dev_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@wdtpci_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wdt_pci: This driver only supports one device\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wdtpci_init_one\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/watchdog/wdt_pci.c\00", [37 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry_ptr = internal global ptr @wdtpci_init_one._entry, section ".printk_index", align 4
@wdtpci_init_one._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013wdt_pci: unknown card type '%d'\0A\00", [61 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry_ptr.6 = internal global ptr @wdtpci_init_one._entry.4, section ".printk_index", align 4
@wdtpci_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013wdt_pci: Not possible to enable PCI Device\0A\00", [50 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry_ptr.9 = internal global ptr @wdtpci_init_one._entry.7, section ".printk_index", align 4
@wdtpci_init_one._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013wdt_pci: No I/O-Address for card detected\0A\00", [51 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry_ptr.12 = internal global ptr @wdtpci_init_one._entry.10, section ".printk_index", align 4
@wdtpci_init_one._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013wdt_pci: I/O address 0x%llx already in use\0A\00", [50 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry_ptr.15 = internal global ptr @wdtpci_init_one._entry.13, section ".printk_index", align 4
@irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@io = internal global { i32, [28 x i8] } zeroinitializer, align 32
@wdtpci_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 130, ptr @.str.59, ptr @wdtpci_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013wdt_pci: IRQ %d is not free\0A\00", [33 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry_ptr.18 = internal global ptr @wdtpci_init_one._entry.16, section ".printk_index", align 4
@wdtpci_init_one._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016wdt_pci: PCI-WDT500/501 (PCI-WDG-CSM) driver 0.10 at 0x%llx (Interrupt %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry_ptr.21 = internal global ptr @wdtpci_init_one._entry.19, section ".printk_index", align 4
@wdtpci_init_one._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016wdt_pci: heartbeat value must be 0 < heartbeat < 65536, using %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry_ptr.24 = internal global ptr @wdtpci_init_one._entry.22, section ".printk_index", align 4
@wdtpci_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @wdtpci_notify_sys, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013wdt_pci: cannot register reboot notifier (err=%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry_ptr.27 = internal global ptr @wdtpci_init_one._entry.25, section ".printk_index", align 4
@temp_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 131, ptr @.str.65, ptr @wdtpci_temp_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013wdt_pci: cannot register miscdev on minor=%d (err=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry_ptr.30 = internal global ptr @wdtpci_init_one._entry.28, section ".printk_index", align 4
@wdtpci_init_one._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry_ptr.32 = internal global ptr @wdtpci_init_one._entry.31, section ".printk_index", align 4
@wdtpci_init_one._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016wdt_pci: initialized. heartbeat=%d sec (nowayout=%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry_ptr.35 = internal global ptr @wdtpci_init_one._entry.33, section ".printk_index", align 4
@wdtpci_init_one._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016wdt_pci: Fan Tachometer is %s\0A\00", [63 x i8] zeroinitializer }, align 32
@wdtpci_init_one._entry_ptr.38 = internal global ptr @wdtpci_init_one._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@wdtpci_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.58, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wdtpci_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\012wdt_pci: status %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wdtpci_interrupt\00", [47 x i8] zeroinitializer }, align 32
@wdtpci_interrupt._entry_ptr = internal global ptr @wdtpci_interrupt._entry, section ".printk_index", align 4
@wdtpci_interrupt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\012wdt_pci: Overheat alarm (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@wdtpci_interrupt._entry_ptr.45 = internal global ptr @wdtpci_interrupt._entry.43, section ".printk_index", align 4
@wdtpci_interrupt._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\012wdt_pci: PSU over voltage\0A\00", [35 x i8] zeroinitializer }, align 32
@wdtpci_interrupt._entry_ptr.48 = internal global ptr @wdtpci_interrupt._entry.46, section ".printk_index", align 4
@wdtpci_interrupt._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.3, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\012wdt_pci: PSU under voltage\0A\00", [34 x i8] zeroinitializer }, align 32
@wdtpci_interrupt._entry_ptr.51 = internal global ptr @wdtpci_interrupt._entry.49, section ".printk_index", align 4
@wdtpci_interrupt._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.3, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\012wdt_pci: Possible fan fault\0A\00", [33 x i8] zeroinitializer }, align 32
@wdtpci_interrupt._entry_ptr.54 = internal global ptr @wdtpci_interrupt._entry.52, section ".printk_index", align 4
@wdtpci_interrupt._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.42, ptr @.str.3, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\012wdt_pci: Reset in 5ms\0A\00", [39 x i8] zeroinitializer }, align 32
@wdtpci_interrupt._entry_ptr.57 = internal global ptr @wdtpci_interrupt._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wdtpci_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@wdtpci_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @wdtpci_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wdtpci_ioctl, ptr null, ptr null, i32 0, ptr @wdtpci_open, ptr null, ptr @wdtpci_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@expect_close = internal global { i1, [31 x i8] } zeroinitializer, align 32
@wd_heartbeat = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__const.wdtpci_ioctl.ident = private unnamed_addr constant %struct.watchdog_info { i32 33152, i32 1, [32 x i8] c"PCI-WDT500/501\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@open_lock = internal global { i32, [28 x i8] } zeroinitializer, align 32
@wdtpci_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\012wdt_pci: Unexpected close, not stopping timer!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdtpci_release\00", [17 x i8] zeroinitializer }, align 32
@wdtpci_release._entry_ptr = internal global ptr @wdtpci_release._entry, section ".printk_index", align 4
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temperature\00", [20 x i8] zeroinitializer }, align 32
@wdtpci_temp_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @wdtpci_temp_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wdtpci_temp_open, ptr null, ptr @wdtpci_temp_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 2147768065, i64 2147768066, i64 2147768069, i64 2147768071, i64 2150127360, i64 3221509894]
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 70, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 77, i32 13 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"tachometer\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 84, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 89, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"wdtpci_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 731, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 738, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"wdtpci_pci_tbl\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 719, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"dev_count\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 58, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 611, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 616, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 621, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 626, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 632, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 65, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 64, i32 24 }
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"wdtpci_miscdev\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 574, i32 26 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 642, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 646, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 653, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"wdtpci_notifier\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 599, i32 30 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 659, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [13 x i8] c"temp_miscdev\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 588, i32 26 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 666, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 674, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 679, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 682, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"wdtpci_lock\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 309, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 313, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 317, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 319, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 322, i32 5 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 334, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 61, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 576, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant [12 x i8] c"wdtpci_fops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 564, i32 37 }
@___asan_gen_.243 = private unnamed_addr constant [13 x i8] c"expect_close\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [13 x i8] c"wd_heartbeat\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 71, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 174, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [10 x i8] c"open_lock\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 60, i32 22 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 480, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 590, i32 10 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"wdtpci_temp_fops\00", align 1
@___asan_gen_.266 = private constant [30 x i8] c"../drivers/watchdog/wdt_pci.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 580, i32 37 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_heartbeat237, ptr @__UNIQUE_ID_heartbeattype236, ptr @__UNIQUE_ID_license248, ptr @__UNIQUE_ID_nowayout239, ptr @__UNIQUE_ID_nowayouttype238, ptr @__UNIQUE_ID_tachometer241, ptr @__UNIQUE_ID_tachometertype240, ptr @__UNIQUE_ID_type243, ptr @__UNIQUE_ID_typetype242, ptr @__exitcall_wdtpci_driver_exit, ptr @__initcall__kmod_wdt_pci__244_738_wdtpci_driver_init6, ptr @__param_heartbeat, ptr @__param_nowayout, ptr @__param_tachometer, ptr @__param_type, ptr @wdtpci_driver_exit, ptr @wdtpci_init_one._entry, ptr @wdtpci_init_one._entry.10, ptr @wdtpci_init_one._entry.13, ptr @wdtpci_init_one._entry.16, ptr @wdtpci_init_one._entry.19, ptr @wdtpci_init_one._entry.22, ptr @wdtpci_init_one._entry.25, ptr @wdtpci_init_one._entry.28, ptr @wdtpci_init_one._entry.31, ptr @wdtpci_init_one._entry.33, ptr @wdtpci_init_one._entry.36, ptr @wdtpci_init_one._entry.4, ptr @wdtpci_init_one._entry.7, ptr @wdtpci_init_one._entry_ptr, ptr @wdtpci_init_one._entry_ptr.12, ptr @wdtpci_init_one._entry_ptr.15, ptr @wdtpci_init_one._entry_ptr.18, ptr @wdtpci_init_one._entry_ptr.21, ptr @wdtpci_init_one._entry_ptr.24, ptr @wdtpci_init_one._entry_ptr.27, ptr @wdtpci_init_one._entry_ptr.30, ptr @wdtpci_init_one._entry_ptr.32, ptr @wdtpci_init_one._entry_ptr.35, ptr @wdtpci_init_one._entry_ptr.38, ptr @wdtpci_init_one._entry_ptr.6, ptr @wdtpci_init_one._entry_ptr.9, ptr @wdtpci_interrupt._entry, ptr @wdtpci_interrupt._entry.43, ptr @wdtpci_interrupt._entry.46, ptr @wdtpci_interrupt._entry.49, ptr @wdtpci_interrupt._entry.52, ptr @wdtpci_interrupt._entry.55, ptr @wdtpci_interrupt._entry_ptr, ptr @wdtpci_interrupt._entry_ptr.45, ptr @wdtpci_interrupt._entry_ptr.48, ptr @wdtpci_interrupt._entry_ptr.51, ptr @wdtpci_interrupt._entry_ptr.54, ptr @wdtpci_interrupt._entry_ptr.57, ptr @wdtpci_release._entry, ptr @wdtpci_release._entry_ptr, ptr @heartbeat, ptr @nowayout, ptr @tachometer, ptr @type, ptr @wdtpci_driver, ptr @.str, ptr @wdtpci_pci_tbl, ptr @dev_count, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @irq, ptr @io, ptr @wdtpci_miscdev, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @wdtpci_notifier, ptr @.str.26, ptr @temp_miscdev, ptr @.str.29, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @wdtpci_lock, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @wdtpci_fops, ptr @expect_close, ptr @wd_heartbeat, ptr @.str.62, ptr @open_lock, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @wdtpci_temp_fops], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tachometer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_init_one._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_init_one._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_init_one._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_init_one._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_init_one._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_init_one._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_init_one._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_init_one._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_init_one._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_init_one._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_init_one._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_interrupt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_interrupt._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_interrupt._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_interrupt._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_interrupt._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expect_close to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd_heartbeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_lock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtpci_temp_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wdtpci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @wdtpci_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wdtpci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @wdtpci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdtpci_init_one(ptr noundef %dev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dev_count, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @dev_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp = icmp sgt i32 %inc, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @type, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %2)
  %switch = icmp eq i32 %2, 500
  br i1 %switch, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @pci_enable_device(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp18 = icmp eq i32 %4, 0
  br i1 %cmp18, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %out_pci

if.end25:                                         ; preds = %if.end17
  %call26 = tail call i32 @pci_request_region(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end37, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 8
  %conv = zext i32 %6 to i64
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i64 noundef %conv) #10
  br label %out_pci

if.end37:                                         ; preds = %if.end25
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  store i32 %8, ptr @irq, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 8
  store i32 %10, ptr @io, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef nonnull @wdtpci_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @wdtpci_miscdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool42.not = icmp eq i32 %call.i, 0
  br i1 %tobool42.not, label %do.end52, label %do.end46

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load i32, ptr @irq, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %11) #10
  br label %out_reg

do.end52:                                         ; preds = %if.end37
  %12 = load i32, ptr @io, align 4
  %conv54 = zext i32 %12 to i64
  %13 = load i32, ptr @irq, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i64 noundef %conv54, i32 noundef %13) #10
  %14 = load i32, ptr @heartbeat, align 4
  %15 = add i32 %14, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %15)
  %16 = icmp ult i32 %15, -65535
  br i1 %16, label %if.then58, label %wdtpci_set_heartbeat.exit.thread

wdtpci_set_heartbeat.exit.thread:                 ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = mul nuw nsw i32 %14, 100
  store i32 %mul.i, ptr @wd_heartbeat, align 4
  br label %if.end65

if.then58:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  store i32 60, ptr @heartbeat, align 4
  store i32 6000, ptr @wd_heartbeat, align 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef 60) #10
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %wdtpci_set_heartbeat.exit.thread
  %call66 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @wdtpci_notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end74, label %do.end71

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call66) #10
  br label %out_irq

if.end74:                                         ; preds = %if.end65
  %17 = load i32, ptr @type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %17)
  %cmp75 = icmp eq i32 %17, 501
  br i1 %cmp75, label %if.then77, label %if.end74.if.end87_crit_edge

if.end74.if.end87_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then77:                                        ; preds = %if.end74
  %call78 = tail call i32 @misc_register(ptr noundef nonnull @temp_miscdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then77.if.end87_crit_edge, label %do.end83

if.then77.if.end87_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

do.end83:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 131, i32 noundef %call78) #10
  br label %out_rbt

if.end87:                                         ; preds = %if.then77.if.end87_crit_edge, %if.end74.if.end87_crit_edge
  %call88 = tail call i32 @misc_register(ptr noundef nonnull @wdtpci_miscdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %do.end99, label %do.end93

do.end93:                                         ; preds = %if.end87
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 130, i32 noundef %call88) #10
  %18 = load i32, ptr @type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %18)
  %cmp114 = icmp eq i32 %18, 501
  br i1 %cmp114, label %if.then116, label %do.end93.out_rbt_crit_edge

do.end93.out_rbt_crit_edge:                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_rbt

do.end99:                                         ; preds = %if.end87
  %19 = load i32, ptr @heartbeat, align 4
  %20 = load i8, ptr @nowayout, align 1, !range !178
  %21 = zext i8 %20 to i32
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %19, i32 noundef %21) #10
  %22 = load i32, ptr @type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %22)
  %cmp104 = icmp eq i32 %22, 501
  br i1 %cmp104, label %do.end109, label %do.end99.cleanup_crit_edge

do.end99.cleanup_crit_edge:                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end109:                                        ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #9
  %23 = load i32, ptr @tachometer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool111.not = icmp eq i32 %23, 0
  %cond = select i1 %tobool111.not, ptr @.str.40, ptr @.str.39
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull %cond) #10
  br label %cleanup

if.then116:                                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @misc_deregister(ptr noundef nonnull @temp_miscdev) #7
  br label %out_rbt

out_rbt:                                          ; preds = %if.then116, %do.end93.out_rbt_crit_edge, %do.end83
  %ret.1 = phi i32 [ %call78, %do.end83 ], [ %call88, %if.then116 ], [ %call88, %do.end93.out_rbt_crit_edge ]
  %call118 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @wdtpci_notifier) #7
  br label %out_irq

out_irq:                                          ; preds = %out_rbt, %do.end71
  %ret.2 = phi i32 [ %call66, %do.end71 ], [ %ret.1, %out_rbt ]
  %24 = load i32, ptr @irq, align 4
  %call119 = tail call ptr @free_irq(i32 noundef %24, ptr noundef nonnull @wdtpci_miscdev) #7
  br label %out_reg

out_reg:                                          ; preds = %out_irq, %do.end46
  %ret.3 = phi i32 [ -5, %do.end46 ], [ %ret.2, %out_irq ]
  tail call void @pci_release_region(ptr noundef %dev, i32 noundef 2) #7
  br label %out_pci

out_pci:                                          ; preds = %out_reg, %do.end31, %do.end22
  %ret.4 = phi i32 [ -19, %do.end22 ], [ -5, %do.end31 ], [ %ret.3, %out_reg ]
  tail call void @pci_disable_device(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %out_pci, %do.end109, %do.end99.cleanup_crit_edge, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end6 ], [ -19, %do.end14 ], [ %ret.4, %out_pci ], [ 0, %do.end109 ], [ 0, %do.end99.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wdtpci_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @misc_deregister(ptr noundef nonnull @wdtpci_miscdev) #7
  %0 = load i32, ptr @type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %0)
  %cmp = icmp eq i32 %0, 501
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @misc_deregister(ptr noundef nonnull @temp_miscdev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @wdtpci_notifier) #7
  %1 = load i32, ptr @irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %1, ptr noundef nonnull @wdtpci_miscdev) #7
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 2) #7
  tail call void @pci_disable_device(ptr noundef %pdev) #7
  %2 = load i32, ptr @dev_count, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr @dev_count, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdtpci_interrupt(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @wdtpci_lock) #7
  %0 = load i32, ptr @io, align 4
  %add = add i32 %0, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 1717984) #7
  %conv = zext i8 %2 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %conv) #10
  %4 = load i32, ptr @type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %4)
  %cmp = icmp eq i32 %4, 501
  br i1 %cmp, label %if.then, label %entry.if.end55_crit_edge

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then:                                          ; preds = %entry
  %and7 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %do.end11, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr @io, align 4
  %add14 = add i32 %5, 5
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %6 = inttoptr i32 %add16 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  %conv20 = zext i8 %7 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv20) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1717984) #7
  br label %if.end

if.end:                                           ; preds = %do.end11, %if.then.if.end_crit_edge
  %and23 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.end28, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #10
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %if.end.if.end31_crit_edge
  %and33 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.end38, label %if.end31.if.end41_crit_edge

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #10
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %if.end31.if.end41_crit_edge
  %9 = load i32, ptr @tachometer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool42.not = icmp ne i32 %9, 0
  %and45 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %or.cond = and i1 %tobool46.not, %tobool42.not
  br i1 %or.cond, label %do.end50, label %if.end41.if.end55_crit_edge

if.end41.if.end55_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

do.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #10
  br label %if.end55

if.end55:                                         ; preds = %do.end50, %if.end41.if.end55_crit_edge, %entry.if.end55_crit_edge
  %and57 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.end62, label %if.end55.if.end65_crit_edge

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #10
  br label %if.end65

if.end65:                                         ; preds = %do.end62, %if.end55.if.end65_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wdtpci_lock) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdtpci_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  %0 = load i8, ptr @nowayout, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %for.body.preheader, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

for.body.preheader:                               ; preds = %if.then
  store i1 false, ptr @expect_close, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 365) #7
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.025
  %1 = tail call i32 @llvm.read_register.i32(metadata !168) #7
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !182
  %and.i = and i32 %3, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #7, !srcloc !185
  %asmresult = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool5.not = icmp eq i32 %asmresult, 0
  br i1 %tobool5.not, label %if.end, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %for.body
  %asmresult3 = extractvalue { i32, i32 } %4, 1
  %conv7 = and i32 %asmresult3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %conv7)
  %cmp8 = icmp eq i32 %conv7, 86
  br i1 %cmp8, label %if.then10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @expect_close, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.025, 1
  %cmp.not = icmp eq i32 %inc, %count
  br i1 %cmp.not, label %for.inc.if.end15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %for.inc.if.end15_crit_edge, %if.then.if.end15_crit_edge
  tail call fastcc void @wdtpci_ping()
  br label %return

return:                                           ; preds = %if.end15, %for.body.return_crit_edge, %entry.return_crit_edge
  %retval.3 = phi i32 [ %count, %if.end15 ], [ 0, %entry.return_crit_edge ], [ -14, %for.body.return_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdtpci_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %ident = alloca %struct.watchdog_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ident) #7
  %1 = call ptr @memcpy(ptr %ident, ptr @__const.wdtpci_ioctl.ident, i32 40)
  %2 = ptrtoint ptr %ident to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 33164, ptr %ident, align 4
  %3 = load i32, ptr @type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %3)
  %cmp = icmp eq i32 %3, 501
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ident to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 33245, ptr %ident, align 4
  %5 = load i32, ptr @tachometer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.store.select = select i1 %tobool.not, i32 33245, i32 33247
  %6 = ptrtoint ptr %ident to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.store.select, ptr %ident, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end6.cleanup_crit_edge [
    i32 -2144839936, label %if.end59.i.i
    i32 -2147199231, label %sw.bb8
    i32 -2147199230, label %sw.bb12
    i32 -2147199227, label %sw.bb28
    i32 -1073457402, label %sw.bb30
    i32 -2147199225, label %if.end6.sw.bb49_crit_edge
  ]

if.end6.sw.bb49_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb49

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.end6
  tail call void @__might_fault(ptr noundef nonnull @.str.62, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end59.i.i.cleanup_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup_crit_edge:                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end59.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 40, i32 -1226833920) #11, !srcloc !186
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ident, i32 noundef 40) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %ident, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool7.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 -14
  br label %cleanup

sw.bb8:                                           ; preds = %if.end6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wdtpci_lock) #7
  %9 = load i32, ptr @io, align 4
  %add.i = add i32 %9, 4
  %and.i85 = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i85, -18874368
  %10 = inttoptr i32 %add5.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wdtpci_lock, i32 noundef %call2.i) #7
  %conv9.i = zext i8 %11 to i32
  %12 = and i32 %conv9.i, 12
  %13 = load i32, ptr @type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %13)
  %cmp17.i = icmp eq i32 %13, 501
  br i1 %cmp17.i, label %if.then19.i, label %sw.bb8.wdtpci_get_status.exit_crit_edge

sw.bb8.wdtpci_get_status.exit_crit_edge:          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdtpci_get_status.exit

if.then19.i:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %and21.i = lshr i32 %conv9.i, 1
  %14 = and i32 %and21.i, 1
  %15 = or i32 %14, %12
  %and27.i = shl nuw nsw i32 %conv9.i, 1
  %16 = and i32 %and27.i, 64
  %17 = or i32 %15, %16
  %and33.i = lshr i32 %conv9.i, 2
  %18 = and i32 %and33.i, 16
  %19 = or i32 %17, %18
  %20 = xor i32 %19, 81
  %21 = load i32, ptr @tachometer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool38.not.i = icmp ne i32 %21, 0
  %and41.i = and i32 %conv9.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  %or.cond.i = select i1 %tobool38.not.i, i1 %tobool42.not.i, i1 false
  %or44.i = or i32 %20, 2
  %spec.select95 = select i1 %or.cond.i, i32 %or44.i, i32 %20
  br label %wdtpci_get_status.exit

wdtpci_get_status.exit:                           ; preds = %if.then19.i, %sw.bb8.wdtpci_get_status.exit_crit_edge
  %status.3 = phi i32 [ %12, %sw.bb8.wdtpci_get_status.exit_crit_edge ], [ %spec.select95, %if.then19.i ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 417) #7
  %22 = tail call i32 @llvm.read_register.i32(metadata !168) #7
  %and.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !182
  %and.i = and i32 %24, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %25 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %status.3, i32 -1226833921) #7, !srcloc !188
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  br label %cleanup

sw.bb12:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 419) #7
  %26 = tail call i32 @llvm.read_register.i32(metadata !168) #7
  %and.i.i.i73 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i73 to ptr
  %cpu_domain.i.i74 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i74) #5, !srcloc !182
  %and.i75 = and i32 %28, -13
  %or.i76 = or i32 %and.i75, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i76) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %29 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 0, i32 -1226833921) #7, !srcloc !189
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  br label %cleanup

sw.bb28:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @wdtpci_ping()
  br label %cleanup

sw.bb30:                                          ; preds = %if.end6
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 424) #7
  %30 = tail call i32 @llvm.read_register.i32(metadata !168) #7
  %and.i.i.i77 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i77 to ptr
  %cpu_domain.i.i78 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i78) #5, !srcloc !182
  %and.i79 = and i32 %32, -13
  %or.i80 = or i32 %and.i79, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i80) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %33 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #7, !srcloc !190
  %asmresult = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool41.not = icmp eq i32 %asmresult, 0
  br i1 %tobool41.not, label %if.end43, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43:                                         ; preds = %sw.bb30
  %asmresult39 = extractvalue { i32, i32 } %33, 1
  %34 = add i32 %asmresult39, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %34)
  %35 = icmp ult i32 %34, -65535
  br i1 %35, label %if.end43.cleanup_crit_edge, label %if.end47

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %asmresult39, ptr @heartbeat, align 4
  %mul.i = mul nuw nsw i32 %asmresult39, 100
  store i32 %mul.i, ptr @wd_heartbeat, align 4
  tail call fastcc void @wdtpci_ping()
  br label %sw.bb49

sw.bb49:                                          ; preds = %if.end47, %if.end6.sw.bb49_crit_edge
  %36 = load i32, ptr @heartbeat, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 431) #7
  %37 = tail call i32 @llvm.read_register.i32(metadata !168) #7
  %and.i.i.i81 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i81 to ptr
  %cpu_domain.i.i82 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i82) #5, !srcloc !182
  %and.i83 = and i32 %39, -13
  %or.i84 = or i32 %and.i83, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i84) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %40 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %36, i32 -1226833921) #7, !srcloc !191
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  br label %cleanup

cleanup:                                          ; preds = %sw.bb49, %if.end43.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %sw.bb28, %sw.bb12, %wdtpci_get_status.exit, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end59.i.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %40, %sw.bb49 ], [ 0, %sw.bb28 ], [ %29, %sw.bb12 ], [ %25, %wdtpci_get_status.exit ], [ -14, %sw.bb30.cleanup_crit_edge ], [ -25, %if.end6.cleanup_crit_edge ], [ -22, %if.end43.cleanup_crit_edge ], [ -14, %if.end59.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ident) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdtpci_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @open_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @nowayout, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__module_get(ptr noundef null) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wdtpci_lock) #7
  %1 = load i32, ptr @io, align 4
  %add.i = add i32 %1, 7
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add5.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %5 = load i32, ptr @io, align 4
  %add.i.i = add i32 %5, 3
  %and.i.i = and i32 %add.i.i, 1048575
  %add3.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add3.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -80) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  tail call void @arm_heavy_mb() #7
  %8 = load i32, ptr @io, align 4
  %add12.i = add i32 %8, 7
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %9 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1717984) #7
  %11 = load i32, ptr @io, align 4
  %add17.i = add i32 %11, 7
  %and18.i = and i32 %add17.i, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %12 = inttoptr i32 %add19.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %15 = load i32, ptr @io, align 4
  %add26.i = add i32 %15, 12
  %and27.i = and i32 %add26.i, 1048575
  %add28.i = or i32 %and27.i, -18874368
  %16 = inttoptr i32 %add28.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1717984) #7
  %18 = load i32, ptr @io, align 4
  %add31.i = add i32 %18, 6
  %and32.i = and i32 %add31.i, 1048575
  %add33.i = or i32 %and32.i, -18874368
  %19 = inttoptr i32 %add33.i to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1717984) #7
  %22 = load i32, ptr @io, align 4
  %add38.i = add i32 %22, 13
  %and39.i = and i32 %add38.i, 1048575
  %add40.i = or i32 %and39.i, -18874368
  %23 = inttoptr i32 %add40.i to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 1717984) #7
  %26 = load i32, ptr @io, align 4
  %add45.i = add i32 %26, 14
  %and46.i = and i32 %add45.i, 1048575
  %add47.i = or i32 %and46.i, -18874368
  %27 = inttoptr i32 %add47.i to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1717984) #7
  %30 = load i32, ptr @io, align 4
  %add52.i = add i32 %30, 15
  %and53.i = and i32 %add52.i, 1048575
  %add54.i = or i32 %and53.i, -18874368
  %31 = inttoptr i32 %add54.i to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %34 = load i32, ptr @io, align 4
  %add.i1.i = add i32 %34, 3
  %and.i2.i = and i32 %add.i1.i, 1048575
  %add3.i3.i = or i32 %and.i2.i, -18874368
  %35 = inttoptr i32 %add3.i3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 54) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %37 = load i32, ptr @io, align 4
  %add.i4.i = add i32 %37, 3
  %and.i5.i = and i32 %add.i4.i, 1048575
  %add3.i6.i = or i32 %and.i5.i, -18874368
  %38 = inttoptr i32 %add3.i6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 116) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %40 = load i32, ptr @io, align 4
  %add.i7.i = add i32 %40, 3
  %and.i8.i = and i32 %add.i7.i, 1048575
  %add3.i9.i = or i32 %and.i8.i, -18874368
  %41 = inttoptr i32 %add3.i9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 -78) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %43 = load i32, ptr @io, align 4
  %and2.i.i = and i32 %43, 1048575
  %add3.i10.i = or i32 %and2.i.i, -18874368
  %44 = inttoptr i32 %add3.i10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 97) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %46 = load i32, ptr @io, align 4
  %and9.i.i = and i32 %46, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %47 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 81) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 1717984) #7
  %49 = load i32, ptr @wd_heartbeat, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %conv.i.i = trunc i32 %49 to i8
  %50 = load i32, ptr @io, align 4
  %add1.i.i = add i32 %50, 1
  %and2.i11.i = and i32 %add1.i.i, 1048575
  %add3.i12.i = or i32 %and2.i11.i, -18874368
  %51 = inttoptr i32 %add3.i12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %conv.i.i) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %53 = lshr i32 %49, 8
  %conv6.i.i = trunc i32 %53 to i8
  %54 = load i32, ptr @io, align 4
  %add8.i.i = add i32 %54, 1
  %and9.i13.i = and i32 %add8.i.i, 1048575
  %add10.i14.i = or i32 %and9.i13.i, -18874368
  %55 = inttoptr i32 %add10.i14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 %conv6.i.i) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  tail call void @arm_heavy_mb() #7
  %57 = load i32, ptr @io, align 4
  %add61.i = add i32 %57, 7
  %and62.i = and i32 %add61.i, 1048575
  %add63.i = or i32 %and62.i, -18874368
  %58 = inttoptr i32 %add63.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 0) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 1717984) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wdtpci_lock, i32 noundef %call2.i) #7
  %call5 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #7
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdtpci_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @expect_close, align 1
  br i1 %.b, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wdtpci_lock) #7
  %0 = load i32, ptr @io, align 4
  %add.i = add i32 %0, 7
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add5.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %4 = load i32, ptr @io, align 4
  %add1.i.i = add i32 %4, 2
  %and2.i.i = and i32 %add1.i.i, 1048575
  %add3.i.i = or i32 %and2.i.i, -18874368
  %5 = inttoptr i32 %add3.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %7 = load i32, ptr @io, align 4
  %add8.i.i = add i32 %7, 2
  %and9.i.i = and i32 %add8.i.i, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %8 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1717984) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wdtpci_lock, i32 noundef %call2.i) #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #10
  tail call fastcc void @wdtpci_ping()
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  store i1 false, ptr @expect_close, align 1
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @open_lock) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wdtpci_ping() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wdtpci_lock) #7
  %0 = load i32, ptr @io, align 4
  %add = add i32 %0, 7
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %1 = inttoptr i32 %add5 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %4 = load i32, ptr @io, align 4
  %add.i = add i32 %4, 3
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 116) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 1717984) #7
  %7 = load i32, ptr @wd_heartbeat, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %conv.i = trunc i32 %7 to i8
  %8 = load i32, ptr @io, align 4
  %add1.i = add i32 %8, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i1 = or i32 %and2.i, -18874368
  %9 = inttoptr i32 %add3.i1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv.i) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %11 = lshr i32 %7, 8
  %conv6.i = trunc i32 %11 to i8
  %12 = load i32, ptr @io, align 4
  %add8.i = add i32 %12, 1
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %13 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv6.i) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  tail call void @arm_heavy_mb() #7
  %15 = load i32, ptr @io, align 4
  %add12 = add i32 %15, 7
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %16 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1717984) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wdtpci_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdtpci_notify_sys(ptr nocapture noundef readnone %this, i32 noundef %code, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %code.off = add i32 %code, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %code.off)
  %switch = icmp ult i32 %code.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wdtpci_lock) #7
  %0 = load i32, ptr @io, align 4
  %add.i = add i32 %0, 7
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add5.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %4 = load i32, ptr @io, align 4
  %add1.i.i = add i32 %4, 2
  %and2.i.i = and i32 %add1.i.i, 1048575
  %add3.i.i = or i32 %and2.i.i, -18874368
  %5 = inttoptr i32 %add3.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 1717984) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %7 = load i32, ptr @io, align 4
  %add8.i.i = add i32 %7, 2
  %and9.i.i = and i32 %add8.i.i, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %8 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #7, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1717984) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wdtpci_lock, i32 noundef %call2.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdtpci_temp_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wdtpci_lock) #7
  %0 = load i32, ptr @io, align 4
  %add.i = add i32 %0, 5
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add5.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 1717984) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wdtpci_lock, i32 noundef %call2.i) #7
  %conv10.i = zext i8 %2 to i16
  %mul.i = mul nuw nsw i16 %conv10.i, 11
  %div1.i = udiv i16 %mul.i, 15
  %narrow.i = add nuw nsw i16 %div1.i, 7
  %add11.i = zext i16 %narrow.i to i32
  %4 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add11.i, ptr %temperature, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.62, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 1, i32 -1226833920) #11, !srcloc !186
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %temperature, i32 noundef 1) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %temperature, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool2.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool2.not, i32 1, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %6 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdtpci_temp_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wdtpci_temp_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !100, !101, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !138, !140, !142, !144, !146, !148, !149, !151, !153, !155, !157, !158, !159, !160, !162, !164, !166}
!llvm.named.register.sp = !{!168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @__param_heartbeat, !1, !"__param_heartbeat", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/wdt_pci.c", i32 72, i32 1}
!2 = !{ptr @__UNIQUE_ID_heartbeattype236, !1, !"__UNIQUE_ID_heartbeattype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_heartbeat237, !4, !"__UNIQUE_ID_heartbeat237", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/wdt_pci.c", i32 73, i32 1}
!5 = !{ptr @__param_nowayout, !6, !"__param_nowayout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/wdt_pci.c", i32 78, i32 1}
!7 = !{ptr @__UNIQUE_ID_nowayouttype238, !6, !"__UNIQUE_ID_nowayouttype238", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nowayout239, !9, !"__UNIQUE_ID_nowayout239", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/wdt_pci.c", i32 79, i32 1}
!10 = !{ptr @__param_tachometer, !11, !"__param_tachometer", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/wdt_pci.c", i32 85, i32 1}
!12 = !{ptr @__UNIQUE_ID_tachometertype240, !11, !"__UNIQUE_ID_tachometertype240", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_tachometer241, !14, !"__UNIQUE_ID_tachometer241", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/wdt_pci.c", i32 86, i32 1}
!15 = !{ptr @__param_type, !16, !"__param_type", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/wdt_pci.c", i32 90, i32 1}
!17 = !{ptr @__UNIQUE_ID_typetype242, !16, !"__UNIQUE_ID_typetype242", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_type243, !19, !"__UNIQUE_ID_type243", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/wdt_pci.c", i32 91, i32 1}
!20 = !{ptr @__initcall__kmod_wdt_pci__244_738_wdtpci_driver_init6, !21, !"__initcall__kmod_wdt_pci__244_738_wdtpci_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/wdt_pci.c", i32 738, i32 1}
!22 = !{ptr @__exitcall_wdtpci_driver_exit, !21, !"__exitcall_wdtpci_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author245, !24, !"__UNIQUE_ID_author245", i1 false, i1 false}
!24 = !{!"../drivers/watchdog/wdt_pci.c", i32 740, i32 1}
!25 = !{ptr @__UNIQUE_ID_description246, !26, !"__UNIQUE_ID_description246", i1 false, i1 false}
!26 = !{!"../drivers/watchdog/wdt_pci.c", i32 741, i32 1}
!27 = !{ptr @__UNIQUE_ID_file247, !28, !"__UNIQUE_ID_file247", i1 false, i1 false}
!28 = !{!"../drivers/watchdog/wdt_pci.c", i32 742, i32 1}
!29 = !{ptr @__UNIQUE_ID_license248, !28, !"__UNIQUE_ID_license248", i1 false, i1 false}
!30 = !{ptr @tachometer, !31, !"tachometer", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/wdt_pci.c", i32 84, i32 12}
!32 = !{ptr @__param_str_heartbeat, !1, !"__param_str_heartbeat", i1 false, i1 false}
!33 = !{ptr @heartbeat, !34, !"heartbeat", i1 false, i1 false}
!34 = !{!"../drivers/watchdog/wdt_pci.c", i32 70, i32 12}
!35 = !{ptr @__param_str_nowayout, !6, !"__param_str_nowayout", i1 false, i1 false}
!36 = !{ptr @nowayout, !37, !"nowayout", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/wdt_pci.c", i32 77, i32 13}
!38 = !{ptr @__param_str_tachometer, !11, !"__param_str_tachometer", i1 false, i1 false}
!39 = !{ptr @__param_str_type, !16, !"__param_str_type", i1 false, i1 false}
!40 = !{ptr @type, !41, !"type", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/wdt_pci.c", i32 89, i32 12}
!42 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @wdtpci_driver, !44, !"wdtpci_driver", i1 false, i1 false}
!44 = !{!"../drivers/watchdog/wdt_pci.c", i32 731, i32 26}
!45 = !{ptr @wdtpci_pci_tbl, !46, !"wdtpci_pci_tbl", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/wdt_pci.c", i32 719, i32 35}
!47 = !{ptr @.str.1, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/wdt_pci.c", i32 611, i32 3}
!49 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.3, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @wdtpci_init_one._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @wdtpci_init_one._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.5, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/wdt_pci.c", i32 616, i32 3}
!55 = !{ptr @wdtpci_init_one._entry.4, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @wdtpci_init_one._entry_ptr.6, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/watchdog/wdt_pci.c", i32 621, i32 3}
!59 = !{ptr @wdtpci_init_one._entry.7, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @wdtpci_init_one._entry_ptr.9, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/watchdog/wdt_pci.c", i32 626, i32 3}
!63 = !{ptr @wdtpci_init_one._entry.10, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @wdtpci_init_one._entry_ptr.12, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/wdt_pci.c", i32 632, i32 3}
!67 = !{ptr @wdtpci_init_one._entry.13, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @wdtpci_init_one._entry_ptr.15, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/watchdog/wdt_pci.c", i32 642, i32 3}
!71 = !{ptr @wdtpci_init_one._entry.16, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @wdtpci_init_one._entry_ptr.18, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/watchdog/wdt_pci.c", i32 646, i32 2}
!75 = !{ptr @wdtpci_init_one._entry.19, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @wdtpci_init_one._entry_ptr.21, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/watchdog/wdt_pci.c", i32 653, i32 3}
!79 = !{ptr @wdtpci_init_one._entry.22, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @wdtpci_init_one._entry_ptr.24, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/watchdog/wdt_pci.c", i32 659, i32 3}
!83 = !{ptr @wdtpci_init_one._entry.25, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @wdtpci_init_one._entry_ptr.27, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/watchdog/wdt_pci.c", i32 666, i32 4}
!87 = !{ptr @wdtpci_init_one._entry.28, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @wdtpci_init_one._entry_ptr.30, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @wdtpci_init_one._entry.31, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/watchdog/wdt_pci.c", i32 674, i32 3}
!91 = !{ptr @wdtpci_init_one._entry_ptr.32, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/watchdog/wdt_pci.c", i32 679, i32 2}
!94 = !{ptr @wdtpci_init_one._entry.33, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @wdtpci_init_one._entry_ptr.35, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/watchdog/wdt_pci.c", i32 682, i32 3}
!98 = !{ptr @wdtpci_init_one._entry.36, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @wdtpci_init_one._entry_ptr.38, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @dev_count, !103, !"dev_count", i1 false, i1 false}
!103 = !{!"../drivers/watchdog/wdt_pci.c", i32 58, i32 12}
!104 = !{ptr @irq, !105, !"irq", i1 false, i1 false}
!105 = !{!"../drivers/watchdog/wdt_pci.c", i32 65, i32 12}
!106 = !{ptr @io, !107, !"io", i1 false, i1 false}
!107 = !{!"../drivers/watchdog/wdt_pci.c", i32 64, i32 24}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/watchdog/wdt_pci.c", i32 309, i32 2}
!110 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @wdtpci_interrupt._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @wdtpci_interrupt._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/watchdog/wdt_pci.c", i32 313, i32 4}
!115 = !{ptr @wdtpci_interrupt._entry.43, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @wdtpci_interrupt._entry_ptr.45, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/watchdog/wdt_pci.c", i32 317, i32 4}
!119 = !{ptr @wdtpci_interrupt._entry.46, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @wdtpci_interrupt._entry_ptr.48, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/watchdog/wdt_pci.c", i32 319, i32 4}
!123 = !{ptr @wdtpci_interrupt._entry.49, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @wdtpci_interrupt._entry_ptr.51, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/watchdog/wdt_pci.c", i32 322, i32 5}
!127 = !{ptr @wdtpci_interrupt._entry.52, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @wdtpci_interrupt._entry_ptr.54, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/watchdog/wdt_pci.c", i32 334, i32 3}
!131 = !{ptr @wdtpci_interrupt._entry.55, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @wdtpci_interrupt._entry_ptr.57, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/watchdog/wdt_pci.c", i32 61, i32 8}
!135 = !{ptr @wdtpci_lock, !134, !"wdtpci_lock", i1 false, i1 false}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/watchdog/wdt_pci.c", i32 576, i32 10}
!138 = !{ptr @wdtpci_miscdev, !139, !"wdtpci_miscdev", i1 false, i1 false}
!139 = !{!"../drivers/watchdog/wdt_pci.c", i32 574, i32 26}
!140 = !{ptr @wdtpci_fops, !141, !"wdtpci_fops", i1 false, i1 false}
!141 = !{!"../drivers/watchdog/wdt_pci.c", i32 564, i32 37}
!142 = distinct !{null, !143, !"expect_close", i1 false, i1 false}
!143 = !{!"../drivers/watchdog/wdt_pci.c", i32 62, i32 13}
!144 = !{ptr @wd_heartbeat, !145, !"wd_heartbeat", i1 false, i1 false}
!145 = !{!"../drivers/watchdog/wdt_pci.c", i32 71, i32 12}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!148 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!149 = distinct !{null, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!153 = !{ptr @open_lock, !154, !"open_lock", i1 false, i1 false}
!154 = !{!"../drivers/watchdog/wdt_pci.c", i32 60, i32 22}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/watchdog/wdt_pci.c", i32 480, i32 3}
!157 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @wdtpci_release._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @wdtpci_release._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @wdtpci_notifier, !161, !"wdtpci_notifier", i1 false, i1 false}
!161 = !{!"../drivers/watchdog/wdt_pci.c", i32 599, i32 30}
!162 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/watchdog/wdt_pci.c", i32 590, i32 10}
!164 = !{ptr @temp_miscdev, !165, !"temp_miscdev", i1 false, i1 false}
!165 = !{!"../drivers/watchdog/wdt_pci.c", i32 588, i32 26}
!166 = !{ptr @wdtpci_temp_fops, !167, !"wdtpci_temp_fops", i1 false, i1 false}
!167 = !{!"../drivers/watchdog/wdt_pci.c", i32 580, i32 37}
!168 = !{!"sp"}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{i8 0, i8 2}
!179 = !{i64 4213765}
!180 = !{i64 2154498300}
!181 = !{i64 2154502315}
!182 = !{i64 5903238}
!183 = !{i64 5903435}
!184 = !{i64 2153388668}
!185 = !{i64 2154512667, i64 2154512947, i64 2154513281, i64 2154513615}
!186 = !{i64 2153408364, i64 2153408389}
!187 = !{i64 2154496791}
!188 = !{i64 2154528887, i64 2154529167, i64 2154529501, i64 2154529835}
!189 = !{i64 2154538359, i64 2154538639, i64 2154538973, i64 2154539307}
!190 = !{i64 2154551349, i64 2154551629, i64 2154551963, i64 2154552297}
!191 = !{i64 2154561559, i64 2154561839, i64 2154562173, i64 2154562507}
!192 = !{i64 2154485728}
!193 = !{i64 2154482675}
!194 = !{i64 4213370}
!195 = !{i64 2154486476}
!196 = !{i64 2154487407}
!197 = !{i64 2154488157}
!198 = !{i64 2154489089}
!199 = !{i64 2154489908}
!200 = !{i64 2154490727}
!201 = !{i64 2154491546}
!202 = !{i64 2154483553}
!203 = !{i64 2154484435}
!204 = !{i64 2154492294}
!205 = !{i64 2154493581}
!206 = !{i64 2154494753}
!207 = !{i64 2154495501}
!208 = !{i64 2154497484}
