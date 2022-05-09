; ModuleID = '/llk/IR_all_yes/drivers/watchdog/pcwd_pci.c_pt.bc'
source_filename = "../drivers/watchdog/pcwd_pci.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.72 = type { i32, i32, i32, %struct.spinlock, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.atomic_t = type { i32 }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_debug = internal constant [15 x i8] c"pcwd_pci.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype236 = internal constant [28 x i8] c"pcwd_pci.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug237 = internal constant [73 x i8] c"pcwd_pci.parm=debug:Debug level: 0=Quiet, 1=Verbose, 2=Debug (default=0)\00", section ".modinfo", align 1
@__param_str_heartbeat = internal constant [19 x i8] c"pcwd_pci.heartbeat\00", align 1
@heartbeat = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype238 = internal constant [32 x i8] c"pcwd_pci.parmtype=heartbeat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat239 = internal constant [120 x i8] c"pcwd_pci.parm=heartbeat:Watchdog heartbeat in seconds. (0<heartbeat<65536 or 0=delay-time from dip-switches, default=0)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [18 x i8] c"pcwd_pci.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype240 = internal constant [32 x i8] c"pcwd_pci.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout241 = internal constant [75 x i8] c"pcwd_pci.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_pcwd_pci__256_815_pcipcwd_driver_init6 = internal global ptr @pcipcwd_driver_init, section ".initcall6.init", align 4
@pcipcwd_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pcipcwd_pci_tbl, ptr @pcipcwd_card_init, ptr @pcipcwd_card_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pcipcwd_driver_exit = internal global ptr @pcipcwd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author257 = internal constant [49 x i8] c"pcwd_pci.author=Wim Van Sebroeck <wim@iguana.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [54 x i8] c"pcwd_pci.description=Berkshire PCI-PC Watchdog driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file259 = internal constant [40 x i8] c"pcwd_pci.file=drivers/watchdog/pcwd_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [21 x i8] c"pcwd_pci.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcwd_pci\00", [23 x i8] zeroinitializer }, align 32
@pcipcwd_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4579, i32 20528, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cards_found = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pcipcwd_card_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016pcwd_pci: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcipcwd_card_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/watchdog/pcwd_pci.c\00", [36 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry_ptr = internal global ptr @pcipcwd_card_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCI-PC Watchdog driver, v1.03\00", [34 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013pcwd_pci: This driver only supports 1 device\0A\00", [48 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry_ptr.7 = internal global ptr @pcipcwd_card_init._entry.5, section ".printk_index", align 4
@pcipcwd_card_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013pcwd_pci: Not possible to enable PCI Device\0A\00", [49 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry_ptr.10 = internal global ptr @pcipcwd_card_init._entry.8, section ".printk_index", align 4
@pcipcwd_card_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013pcwd_pci: No I/O-Address for card detected\0A\00", [50 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry_ptr.13 = internal global ptr @pcipcwd_card_init._entry.11, section ".printk_index", align 4
@pcipcwd_card_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pcipcwd_private = internal global { %struct.anon.72, [36 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&pcipcwd_private.io_lock\00", [39 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013pcwd_pci: I/O address 0x%04x already in use\0A\00", [49 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry_ptr.17 = internal global ptr @pcipcwd_card_init._entry.15, section ".printk_index", align 4
@heartbeat_tbl = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 5, i32 10, i32 30, i32 60, i32 300, i32 600, i32 1800, i32 3600], [32 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016pcwd_pci: heartbeat value must be 0<heartbeat<65536, using %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry_ptr.20 = internal global ptr @pcipcwd_card_init._entry.18, section ".printk_index", align 4
@pcipcwd_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @pcipcwd_notify_sys, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013pcwd_pci: cannot register reboot notifier (err=%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry_ptr.23 = internal global ptr @pcipcwd_card_init._entry.21, section ".printk_index", align 4
@pcipcwd_temp_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 131, ptr @.str.80, ptr @pcipcwd_temp_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013pcwd_pci: cannot register miscdev on minor=%d (err=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry_ptr.26 = internal global ptr @pcipcwd_card_init._entry.24, section ".printk_index", align 4
@pcipcwd_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 130, ptr @.str.87, ptr @pcipcwd_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry_ptr.28 = internal global ptr @pcipcwd_card_init._entry.27, section ".printk_index", align 4
@pcipcwd_card_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016pcwd_pci: initialized. heartbeat=%d sec (nowayout=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@pcipcwd_card_init._entry_ptr.31 = internal global ptr @pcipcwd_card_init._entry.29, section ".printk_index", align 4
@temp_panic = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pcwd_pci: Temperature overheat trip!\0A\00", [58 x i8] zeroinitializer }, align 32
@pcipcwd_get_status.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcipcwd_get_status\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Control Status #1: 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pcwd_pci: Control Status #1: 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@pcipcwd_clear_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016pcwd_pci: clearing watchdog trip status & LED\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcipcwd_clear_status\00", [43 x i8] zeroinitializer }, align 32
@pcipcwd_clear_status._entry_ptr = internal global ptr @pcipcwd_clear_status._entry, section ".printk_index", align 4
@pcipcwd_clear_status.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"status was: 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pcwd_pci: status was: 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@pcipcwd_clear_status.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.40, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sending: 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pcwd_pci: sending: 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@pcipcwd_clear_status.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.42, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reset count was: 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pcwd_pci: reset count was: 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@send_command.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"send_command\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sending following data cmd=0x%02x msb=0x%02x lsb=0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"pcwd_pci: sending following data cmd=0x%02x msb=0x%02x lsb=0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@send_command.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.47, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"time to process command was: %d ms\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"pcwd_pci: time to process command was: %d ms\0A\00", [50 x i8] zeroinitializer }, align 32
@send_command.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.49, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"card did not respond on command!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pcwd_pci: card did not respond on command!\0A\00", [52 x i8] zeroinitializer }, align 32
@send_command.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.51, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"received following data for cmd=0x%02x: msb=0x%02x lsb=0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"pcwd_pci: received following data for cmd=0x%02x: msb=0x%02x lsb=0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@pcipcwd_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013pcwd_pci: Card did not acknowledge disable attempt\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcipcwd_stop\00", [19 x i8] zeroinitializer }, align 32
@pcipcwd_stop._entry_ptr = internal global ptr @pcipcwd_stop._entry, section ".printk_index", align 4
@pcipcwd_stop.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Watchdog stopped\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pcwd_pci: Watchdog stopped\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%u.%02u\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"<card no answer>\00", [47 x i8] zeroinitializer }, align 32
@pcipcwd_show_card_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016pcwd_pci: Found card at port 0x%04x (Firmware: %s) %s temp option\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcipcwd_show_card_info\00", [41 x i8] zeroinitializer }, align 32
@pcipcwd_show_card_info._entry_ptr = internal global ptr @pcipcwd_show_card_info._entry, section ".printk_index", align 4
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"with\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"without\00", [24 x i8] zeroinitializer }, align 32
@pcipcwd_show_card_info._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.60, ptr @.str.3, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016pcwd_pci: Option switches (0x%02x): Temperature Reset Enable=%s, Power On Delay=%s\0A\00", [42 x i8] zeroinitializer }, align 32
@pcipcwd_show_card_info._entry_ptr.65 = internal global ptr @pcipcwd_show_card_info._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@pcipcwd_show_card_info._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.60, ptr @.str.3, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016pcwd_pci: Previous reset was caused by the Watchdog card\0A\00", [36 x i8] zeroinitializer }, align 32
@pcipcwd_show_card_info._entry_ptr.70 = internal global ptr @pcipcwd_show_card_info._entry.68, section ".printk_index", align 4
@pcipcwd_show_card_info._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.60, ptr @.str.3, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016pcwd_pci: Card sensed a CPU Overheat\0A\00", [56 x i8] zeroinitializer }, align 32
@pcipcwd_show_card_info._entry_ptr.73 = internal global ptr @pcipcwd_show_card_info._entry.71, section ".printk_index", align 4
@pcipcwd_show_card_info._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.60, ptr @.str.3, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016pcwd_pci: No previous trip detected - Cold boot or reset\0A\00", [36 x i8] zeroinitializer }, align 32
@pcipcwd_show_card_info._entry_ptr.76 = internal global ptr @pcipcwd_show_card_info._entry.74, section ".printk_index", align 4
@pcipcwd_set_heartbeat.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcipcwd_set_heartbeat\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"New heartbeat: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pcwd_pci: New heartbeat: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temperature\00", [20 x i8] zeroinitializer }, align 32
@pcipcwd_temp_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @pcipcwd_temp_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pcipcwd_temp_open, ptr null, ptr @pcipcwd_temp_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pcipcwd_get_temperature.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.3, ptr @.str.82, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcipcwd_get_temperature\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temperature is: %d F\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pcwd_pci: temperature is: %d F\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@pcipcwd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @pcipcwd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcipcwd_ioctl, ptr null, ptr null, i32 0, ptr @pcipcwd_open, ptr null, ptr @pcipcwd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@expect_release = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pcipcwd_keepalive.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.3, ptr @.str.89, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcipcwd_keepalive\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Watchdog keepalive signal send\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pcwd_pci: Watchdog keepalive signal send\0A\00", [54 x i8] zeroinitializer }, align 32
@pcipcwd_ioctl.ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33185, i32 1, [32 x i8] c"PCI-PC Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@pcipcwd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013pcwd_pci: Card timer not enabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcipcwd_start\00", [18 x i8] zeroinitializer }, align 32
@pcipcwd_start._entry_ptr = internal global ptr @pcipcwd_start._entry, section ".printk_index", align 4
@pcipcwd_start.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.3, ptr @.str.93, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Watchdog started\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pcwd_pci: Watchdog started\0A\00", [36 x i8] zeroinitializer }, align 32
@pcipcwd_get_timeleft.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcipcwd_get_timeleft\00", [43 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Time left before next reboot: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pcwd_pci: Time left before next reboot: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@is_active = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pcipcwd_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013pcwd_pci: Attempt to open already opened device\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcipcwd_open\00", [19 x i8] zeroinitializer }, align 32
@pcipcwd_open._entry_ptr = internal global ptr @pcipcwd_open._entry, section ".printk_index", align 4
@pcipcwd_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\012pcwd_pci: Unexpected close, not stopping watchdog!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcipcwd_release\00", [16 x i8] zeroinitializer }, align 32
@pcipcwd_release._entry_ptr = internal global ptr @pcipcwd_release._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 2147768065, i64 2147768066, i64 2147768067, i64 2147768068, i64 2147768069, i64 2147768071, i64 2147768074, i64 2150127360, i64 3221509894]
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 133, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 139, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 145, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"pcipcwd_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 808, i32 26 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 815, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"pcipcwd_pci_tbl\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 801, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"cards_found\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 109, i32 12 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 689, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 692, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 697, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 702, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"pcipcwd_private\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 127, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 707, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 712, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [14 x i8] c"heartbeat_tbl\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 97, i32 18 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 742, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"pcipcwd_notifier\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 674, i32 30 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 748, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [21 x i8] c"pcipcwd_temp_miscdev\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 668, i32 26 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 755, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"pcipcwd_miscdev\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 654, i32 26 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 763, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 768, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [11 x i8] c"temp_panic\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 348, i32 10 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 352, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 364, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 369, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 370, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 384, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 159, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 185, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 188, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 201, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 296, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 301, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 233, i32 23 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 235, i32 23 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 240, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 244, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 250, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 253, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 256, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 332, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 670, i32 11 }
@___asan_gen_.355 = private unnamed_addr constant [18 x i8] c"pcipcwd_temp_fops\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 660, i32 37 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 407, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 174, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 656, i32 11 }
@___asan_gen_.373 = private unnamed_addr constant [13 x i8] c"pcipcwd_fops\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 644, i32 37 }
@___asan_gen_.376 = private unnamed_addr constant [15 x i8] c"expect_release\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 314, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 468, i32 36 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 271, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 276, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 425, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant [10 x i8] c"is_active\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 113, i32 22 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 570, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.432 = private constant [31 x i8] c"../drivers/watchdog/pcwd_pci.c\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 588, i32 3 }
@llvm.compiler.used = appending global [148 x ptr] [ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_debug237, ptr @__UNIQUE_ID_debugtype236, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_heartbeat239, ptr @__UNIQUE_ID_heartbeattype238, ptr @__UNIQUE_ID_license260, ptr @__UNIQUE_ID_nowayout241, ptr @__UNIQUE_ID_nowayouttype240, ptr @__exitcall_pcipcwd_driver_exit, ptr @__initcall__kmod_pcwd_pci__256_815_pcipcwd_driver_init6, ptr @__param_debug, ptr @__param_heartbeat, ptr @__param_nowayout, ptr @pcipcwd_card_init._entry, ptr @pcipcwd_card_init._entry.11, ptr @pcipcwd_card_init._entry.15, ptr @pcipcwd_card_init._entry.18, ptr @pcipcwd_card_init._entry.21, ptr @pcipcwd_card_init._entry.24, ptr @pcipcwd_card_init._entry.27, ptr @pcipcwd_card_init._entry.29, ptr @pcipcwd_card_init._entry.5, ptr @pcipcwd_card_init._entry.8, ptr @pcipcwd_card_init._entry_ptr, ptr @pcipcwd_card_init._entry_ptr.10, ptr @pcipcwd_card_init._entry_ptr.13, ptr @pcipcwd_card_init._entry_ptr.17, ptr @pcipcwd_card_init._entry_ptr.20, ptr @pcipcwd_card_init._entry_ptr.23, ptr @pcipcwd_card_init._entry_ptr.26, ptr @pcipcwd_card_init._entry_ptr.28, ptr @pcipcwd_card_init._entry_ptr.31, ptr @pcipcwd_card_init._entry_ptr.7, ptr @pcipcwd_clear_status._entry, ptr @pcipcwd_clear_status._entry_ptr, ptr @pcipcwd_driver_exit, ptr @pcipcwd_open._entry, ptr @pcipcwd_open._entry_ptr, ptr @pcipcwd_release._entry, ptr @pcipcwd_release._entry_ptr, ptr @pcipcwd_show_card_info._entry, ptr @pcipcwd_show_card_info._entry.63, ptr @pcipcwd_show_card_info._entry.68, ptr @pcipcwd_show_card_info._entry.71, ptr @pcipcwd_show_card_info._entry.74, ptr @pcipcwd_show_card_info._entry_ptr, ptr @pcipcwd_show_card_info._entry_ptr.65, ptr @pcipcwd_show_card_info._entry_ptr.70, ptr @pcipcwd_show_card_info._entry_ptr.73, ptr @pcipcwd_show_card_info._entry_ptr.76, ptr @pcipcwd_start._entry, ptr @pcipcwd_start._entry_ptr, ptr @pcipcwd_stop._entry, ptr @pcipcwd_stop._entry_ptr, ptr @debug, ptr @heartbeat, ptr @nowayout, ptr @pcipcwd_driver, ptr @.str, ptr @pcipcwd_pci_tbl, ptr @cards_found, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @pcipcwd_card_init.__key, ptr @pcipcwd_private, ptr @.str.14, ptr @.str.16, ptr @heartbeat_tbl, ptr @.str.19, ptr @pcipcwd_notifier, ptr @.str.22, ptr @pcipcwd_temp_miscdev, ptr @.str.25, ptr @pcipcwd_miscdev, ptr @.str.30, ptr @temp_panic, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @pcipcwd_temp_fops, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.86, ptr @.str.87, ptr @pcipcwd_fops, ptr @expect_release, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @pcipcwd_ioctl.ident, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @is_active, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cards_found to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_card_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_card_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_card_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_card_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_card_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_private to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_card_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_card_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_card_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_temp_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_card_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_card_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_card_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_panic to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_clear_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_show_card_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_show_card_info._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_show_card_info._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_show_card_info._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_show_card_info._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_temp_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expect_release to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_ioctl.ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_active to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcipcwd_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcipcwd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pcipcwd_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcipcwd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @pcipcwd_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcipcwd_card_init(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %t_msb.i = alloca i32, align 4
  %t_lsb.i = alloca i32, align 4
  %fw_rev_major.i = alloca i32, align 4
  %fw_rev_minor.i = alloca i32, align 4
  %fw_ver_str.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cards_found, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @cards_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #12
  %.pr = load i32, ptr @cards_found, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = phi i32 [ %.pr, %do.end ], [ %inc, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp sgt i32 %1, 1
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17 = icmp eq i32 %3, 0
  br i1 %cmp17, label %do.end21, label %do.body25

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %err_out_disable_device

do.body25:                                        ; preds = %if.end16
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3), ptr noundef nonnull @.str.14, ptr noundef nonnull @pcipcwd_card_init.__key, i16 noundef signext 3) #9
  store ptr %pdev, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 4), align 4
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource, align 8
  store i32 %5, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %call32 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %6) #12
  br label %err_out_disable_device

if.end40:                                         ; preds = %do.body25
  store i32 0, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 1), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add.i = add i32 %7, 1
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add.i.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %conv.i = zext i8 %9 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end40.if.end.i_crit_edge, label %if.then.i

if.end40.if.end.i_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %10 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 1), align 4
  %or.i = or i32 %10, 32
  store i32 %or.i, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 1), align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end40.if.end.i_crit_edge
  %and1.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then3.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i
  %11 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 1), align 4
  %or4.i = or i32 %11, 1
  store i32 %or4.i, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 1), align 4
  %.b.i = load i1, ptr @temp_panic, align 4
  br i1 %.b.i, label %if.then6.i, label %if.then3.i.if.end8.i_crit_edge

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.32) #13
  unreachable

if.end8.i:                                        ; preds = %if.then3.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp sgt i32 %12, 1
  br i1 %cmp.i, label %do.body.i, label %if.end8.i.pcipcwd_get_status.exit_crit_edge

if.end8.i.pcipcwd_get_status.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcipcwd_get_status.exit

do.body.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_get_status.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_card_init, %if.then15.i)) #9
          to label %pcipcwd_get_status.exit [label %if.then15.i], !srcloc !249

if.then15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_get_status.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.35, i32 noundef %conv.i) #9
  br label %pcipcwd_get_status.exit

pcipcwd_get_status.exit:                          ; preds = %if.then15.i, %do.body.i, %if.end8.i.pcipcwd_get_status.exit_crit_edge
  tail call fastcc void @pcipcwd_clear_status()
  %call43 = tail call fastcc i32 @pcipcwd_stop()
  %13 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %and.i.i111 = and i32 %13, 1048575
  %add.i.i112 = or i32 %and.i.i111, -18874368
  %14 = inttoptr i32 %add.i.i112 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %15)
  %cmp.not.i = icmp eq i8 %15, -16
  br i1 %cmp.not.i, label %pcipcwd_get_status.exit.pcipcwd_check_temperature_support.exit_crit_edge, label %if.then.i113

pcipcwd_get_status.exit.pcipcwd_check_temperature_support.exit_crit_edge: ; preds = %pcipcwd_get_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcipcwd_check_temperature_support.exit

if.then.i113:                                     ; preds = %pcipcwd_get_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  store i32 1, ptr @pcipcwd_private, align 4
  br label %pcipcwd_check_temperature_support.exit

pcipcwd_check_temperature_support.exit:           ; preds = %if.then.i113, %pcipcwd_get_status.exit.pcipcwd_check_temperature_support.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_rev_major.i) #9
  %16 = ptrtoint ptr %fw_rev_major.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %fw_rev_major.i, align 4, !annotation !250
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_rev_minor.i) #9
  %17 = ptrtoint ptr %fw_rev_minor.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %fw_rev_minor.i, align 4, !annotation !250
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fw_ver_str.i) #9
  %18 = call ptr @memset(ptr %fw_ver_str.i, i32 255, i32 20)
  %call.i = call fastcc i32 @send_command(i32 noundef 8, ptr noundef nonnull %fw_rev_major.i, ptr noundef nonnull %fw_rev_minor.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i115 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i115, label %if.else.i, label %if.then.i116

if.then.i116:                                     ; preds = %pcipcwd_check_temperature_support.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %fw_rev_major.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_rev_major.i, align 4
  %21 = ptrtoint ptr %fw_rev_minor.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_rev_minor.i, align 4
  %call1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fw_ver_str.i, ptr noundef nonnull @.str.57, i32 noundef %20, i32 noundef %22) #9
  br label %if.end.i119

if.else.i:                                        ; preds = %pcipcwd_check_temperature_support.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = call ptr @memcpy(ptr %fw_ver_str.i, ptr @.str.58, i32 17)
  br label %if.end.i119

if.end.i119:                                      ; preds = %if.else.i, %if.then.i116
  %24 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add.i.i117 = add i32 %24, 3
  %and.i.i.i = and i32 %add.i.i117, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %25 = inttoptr i32 %add.i.i.i to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %conv.i.i = zext i8 %26 to i32
  %27 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %28 = load i32, ptr @pcipcwd_private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool6.not.i = icmp eq i32 %28, 0
  %cond.i = select i1 %tobool6.not.i, ptr @.str.62, ptr @.str.61
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %27, ptr noundef nonnull %fw_ver_str.i, ptr noundef nonnull %cond.i) #12
  %and.i118 = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %tobool12.not.i = icmp eq i32 %and.i118, 0
  %cond13.i = select i1 %tobool12.not.i, ptr @.str.67, ptr @.str.66
  %and14.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %cond16.i = select i1 %tobool15.not.i, ptr @.str.67, ptr @.str.66
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv.i.i, ptr noundef nonnull %cond13.i, ptr noundef nonnull %cond16.i) #12
  %29 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 1), align 4
  %and18.i = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end.i119.if.end26.i_crit_edge, label %do.end23.i

if.end.i119.if.end26.i_crit_edge:                 ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

do.end23.i:                                       ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #11
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #12
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end23.i, %if.end.i119.if.end26.i_crit_edge
  %30 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 1), align 4
  %and27.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end35.i_crit_edge, label %do.end32.i

if.end26.i.if.end35.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

do.end32.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #12
  %.pr.i = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 1), align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end32.i, %if.end26.i.if.end35.i_crit_edge
  %31 = phi i32 [ %.pr.i, %do.end32.i ], [ %30, %if.end26.i.if.end35.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i120 = icmp eq i32 %31, 0
  br i1 %cmp.i120, label %do.end39.i, label %if.end35.i.pcipcwd_show_card_info.exit_crit_edge

if.end35.i.pcipcwd_show_card_info.exit_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcipcwd_show_card_info.exit

do.end39.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #12
  br label %pcipcwd_show_card_info.exit

pcipcwd_show_card_info.exit:                      ; preds = %do.end39.i, %if.end35.i.pcipcwd_show_card_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fw_ver_str.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_rev_minor.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_rev_major.i) #9
  %32 = load i32, ptr @heartbeat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp44 = icmp eq i32 %32, 0
  br i1 %cmp44, label %if.then45, label %pcipcwd_show_card_info.exit.if.end48_crit_edge

pcipcwd_show_card_info.exit.if.end48_crit_edge:   ; preds = %pcipcwd_show_card_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then45:                                        ; preds = %pcipcwd_show_card_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  %33 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add.i121 = add i32 %33, 3
  %and.i.i122 = and i32 %add.i121, 1048575
  %add.i.i123 = or i32 %and.i.i122, -18874368
  %34 = inttoptr i32 %add.i.i123 to ptr
  %35 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #9, !srcloc !247
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %36 = and i8 %35, 7
  %and = zext i8 %36 to i32
  %arrayidx47 = getelementptr [8 x i32], ptr @heartbeat_tbl, i32 0, i32 %and
  %37 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx47, align 4
  store i32 %38, ptr @heartbeat, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %pcipcwd_show_card_info.exit.if.end48_crit_edge
  %39 = load i32, ptr @heartbeat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t_msb.i) #9
  %.frozen = freeze i32 %39
  %div.i = sdiv i32 %.frozen, 256
  %40 = ptrtoint ptr %t_msb.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div.i, ptr %t_msb.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t_lsb.i) #9
  %41 = mul i32 %div.i, 256
  %rem.i.decomposed = sub i32 %.frozen, %41
  %42 = ptrtoint ptr %t_lsb.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %rem.i.decomposed, ptr %t_lsb.i, align 4
  %43 = add i32 %39, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %43)
  %44 = icmp ult i32 %43, -65535
  br i1 %44, label %if.then51, label %if.end.i126

if.end.i126:                                      ; preds = %if.end48
  %call.i125 = call fastcc i32 @send_command(i32 noundef 25, ptr noundef nonnull %t_msb.i, ptr noundef nonnull %t_lsb.i) #9
  store i32 %39, ptr @heartbeat, align 4
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp2.i = icmp sgt i32 %45, 0
  br i1 %cmp2.i, label %do.body.i127, label %if.end.i126.pcipcwd_set_heartbeat.exit.thread_crit_edge

if.end.i126.pcipcwd_set_heartbeat.exit.thread_crit_edge: ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcipcwd_set_heartbeat.exit.thread

do.body.i127:                                     ; preds = %if.end.i126
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_set_heartbeat.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_card_init, %if.then7.i)) #9
          to label %pcipcwd_set_heartbeat.exit [label %if.then7.i], !srcloc !249

if.then7.i:                                       ; preds = %do.body.i127
  call void @__sanitizer_cov_trace_pc() #11
  %46 = load i32, ptr @heartbeat, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_set_heartbeat.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.79, i32 noundef %46) #9
  br label %pcipcwd_set_heartbeat.exit.thread

pcipcwd_set_heartbeat.exit.thread:                ; preds = %if.then7.i, %if.end.i126.pcipcwd_set_heartbeat.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_lsb.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_msb.i) #9
  br label %if.end58

pcipcwd_set_heartbeat.exit:                       ; preds = %do.body.i127
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_lsb.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_msb.i) #9
  br label %if.end58

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_lsb.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_msb.i) #9
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 0) #12
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %pcipcwd_set_heartbeat.exit, %pcipcwd_set_heartbeat.exit.thread
  %call59 = call i32 @register_reboot_notifier(ptr noundef nonnull @pcipcwd_notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60.not = icmp eq i32 %call59, 0
  br i1 %cmp60.not, label %if.end67, label %do.end64

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call59) #12
  br label %err_out_release_region

if.end67:                                         ; preds = %if.end58
  %47 = load i32, ptr @pcipcwd_private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool68.not = icmp eq i32 %47, 0
  br i1 %tobool68.not, label %if.end67.if.end79_crit_edge, label %if.then69

if.end67.if.end79_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then69:                                        ; preds = %if.end67
  %call70 = call i32 @misc_register(ptr noundef nonnull @pcipcwd_temp_miscdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71.not = icmp eq i32 %call70, 0
  br i1 %cmp71.not, label %if.then69.if.end79_crit_edge, label %do.end75

if.then69.if.end79_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

do.end75:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 131, i32 noundef %call70) #12
  br label %err_out_unregister_reboot

if.end79:                                         ; preds = %if.then69.if.end79_crit_edge, %if.end67.if.end79_crit_edge
  %call80 = call i32 @misc_register(ptr noundef nonnull @pcipcwd_miscdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81.not = icmp eq i32 %call80, 0
  br i1 %cmp81.not, label %do.end91, label %do.end85

do.end85:                                         ; preds = %if.end79
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 130, i32 noundef %call80) #12
  %48 = load i32, ptr @pcipcwd_private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool95.not = icmp eq i32 %48, 0
  br i1 %tobool95.not, label %do.end85.err_out_unregister_reboot_crit_edge, label %if.then96

do.end85.err_out_unregister_reboot_crit_edge:     ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_unregister_reboot

do.end91:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %49 = load i32, ptr @heartbeat, align 4
  %50 = load i8, ptr @nowayout, align 1, !range !251
  %51 = zext i8 %50 to i32
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %49, i32 noundef %51) #12
  br label %cleanup

if.then96:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  call void @misc_deregister(ptr noundef nonnull @pcipcwd_temp_miscdev) #9
  br label %err_out_unregister_reboot

err_out_unregister_reboot:                        ; preds = %if.then96, %do.end85.err_out_unregister_reboot_crit_edge, %do.end75
  %ret.0 = phi i32 [ %call70, %do.end75 ], [ %call80, %if.then96 ], [ %call80, %do.end85.err_out_unregister_reboot_crit_edge ]
  %call98 = call i32 @unregister_reboot_notifier(ptr noundef nonnull @pcipcwd_notifier) #9
  br label %err_out_release_region

err_out_release_region:                           ; preds = %err_out_unregister_reboot, %do.end64
  %ret.1 = phi i32 [ %call59, %do.end64 ], [ %ret.0, %err_out_unregister_reboot ]
  call void @pci_release_regions(ptr noundef %pdev) #9
  br label %err_out_disable_device

err_out_disable_device:                           ; preds = %err_out_release_region, %do.end37, %do.end21
  %ret.2 = phi i32 [ -19, %do.end21 ], [ -5, %do.end37 ], [ %ret.1, %err_out_release_region ]
  call void @pci_disable_device(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %err_out_disable_device, %do.end91, %do.end13, %do.end5
  %retval.0 = phi i32 [ -19, %do.end5 ], [ -19, %do.end13 ], [ %ret.2, %err_out_disable_device ], [ 0, %do.end91 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcipcwd_card_exit(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @nowayout, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @pcipcwd_stop()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @misc_deregister(ptr noundef nonnull @pcipcwd_miscdev) #9
  %1 = load i32, ptr @pcipcwd_private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @misc_deregister(ptr noundef nonnull @pcipcwd_temp_miscdev) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @pcipcwd_notifier) #9
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  %2 = load i32, ptr @cards_found, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr @cards_found, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcipcwd_clear_status() unnamed_addr #2 align 64 {
entry:
  %msb = alloca i32, align 4
  %reset_counter = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msb) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_counter) #9
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add = add i32 %1, 1
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %conv = zext i8 %3 to i32
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2 = icmp sgt i32 %4, 1
  br i1 %cmp2, label %do.body5, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_clear_status.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_clear_status, %if.then10)) #9
          to label %do.body14 [label %if.then10], !srcloc !249

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_clear_status.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.39, i32 noundef %conv) #9
  br label %do.body14

do.body14:                                        ; preds = %if.then10, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_clear_status.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_clear_status, %if.then26)) #9
          to label %if.end30 [label %if.then26], !srcloc !249

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %conv, 64
  %or = or i32 %and, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_clear_status.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.41, i32 noundef %or) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %do.body14, %if.end.if.end30_crit_edge
  %and31 = and i8 %3, 64
  %or32 = or i8 %and31, 1
  %5 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add34 = add i32 %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %and.i7 = and i32 %add34, 1048575
  %add.i8 = or i32 %and.i7, -18874368
  %6 = inttoptr i32 %add.i8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %or32) #9, !srcloc !253
  %7 = ptrtoint ptr %msb to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %msb, align 4
  %8 = ptrtoint ptr %reset_counter to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 255, ptr %reset_counter, align 4
  %call35 = call fastcc i32 @send_command(i32 noundef 132, ptr noundef nonnull %msb, ptr noundef nonnull %reset_counter)
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp36 = icmp sgt i32 %9, 1
  br i1 %cmp36, label %do.body39, label %if.end30.if.end55_crit_edge

if.end30.if.end55_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.body39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_clear_status.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_clear_status, %if.then51)) #9
          to label %if.end55 [label %if.then51], !srcloc !249

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %reset_counter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reset_counter, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_clear_status.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.43, i32 noundef %11) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %do.body39, %if.end30.if.end55_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_counter) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msb) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcipcwd_stop() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %0 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add = add i32 %0, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 -91) #9, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #9
  %3 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add1 = add i32 %3, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %and.i17 = and i32 %add1, 1048575
  %add.i18 = or i32 %and.i17, -18874368
  %4 = inttoptr i32 %add.i18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -91) #9, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  %6 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add2 = add i32 %6, 2
  %and.i19 = and i32 %add2, 1048575
  %add.i20 = or i32 %and.i19, -18874368
  %7 = inttoptr i32 %add.i20 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %9 = and i8 %8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %do.body6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_stop.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_stop, %if.then12)) #9
          to label %cleanup [label %if.then12], !srcloc !249

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_stop.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.56) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.then12 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.body6 ]
  ret i32 %retval.0
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
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_command(i32 noundef %cmd, ptr nocapture noundef %msb, ptr nocapture noundef %lsb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.body, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_command.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_command, %if.then3)) #9
          to label %if.end4 [label %if.then3], !srcloc !249

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %msb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msb, align 4
  %3 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lsb, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_command.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.46, i32 noundef %cmd, i32 noundef %2, i32 noundef %4) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.body, %entry.if.end4_crit_edge
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %5 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lsb, align 4
  %conv = trunc i32 %6 to i8
  %7 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add = add i32 %7, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #9, !srcloc !253
  %9 = ptrtoint ptr %msb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msb, align 4
  %conv5 = trunc i32 %10 to i8
  %11 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add6 = add i32 %11, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %and.i113 = and i32 %add6, 1048575
  %add.i114 = or i32 %and.i113, -18874368
  %12 = inttoptr i32 %add.i114 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv5) #9, !srcloc !253
  %conv7 = trunc i32 %cmd to i8
  %13 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add8 = add i32 %13, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %and.i115 = and i32 %add8, 1048575
  %add.i116 = or i32 %and.i115, -18874368
  %14 = inttoptr i32 %add.i116 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv7) #9, !srcloc !253
  %15 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add9 = add i32 %15, 2
  %and.i117 = and i32 %add9, 1048575
  %add.i118 = or i32 %and.i117, -18874368
  %16 = inttoptr i32 %add.i118 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %got_response.0.in132 = and i8 %17, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %got_response.0.in132)
  %tobool14.not133 = icmp eq i8 %got_response.0.in132, 0
  br i1 %tobool14.not133, label %if.end4.for.body_crit_edge, label %for.end.thread

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %count.0134 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #9
  %19 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add17 = add i32 %19, 2
  %and.i119 = and i32 %add17, 1048575
  %add.i120 = or i32 %and.i119, -18874368
  %20 = inttoptr i32 %add.i120 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %inc = add nuw nsw i32 %count.0134, 1
  %got_response.0.in = and i8 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 149, i32 %count.0134)
  %cmp12 = icmp ult i32 %count.0134, 149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %got_response.0.in)
  %tobool14.not = icmp eq i8 %got_response.0.in, 0
  %or.cond = select i1 %cmp12, i1 %tobool14.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp21 = icmp sgt i32 %22, 1
  br i1 %cmp21, label %if.then23, label %if.end59

for.end.thread:                                   ; preds = %if.end4
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp21142 = icmp sgt i32 %23, 1
  br i1 %cmp21142, label %for.end.thread.do.body26_crit_edge, label %for.end.thread.if.then61_crit_edge

for.end.thread.if.then61_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then61

for.end.thread.do.body26_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

if.then23:                                        ; preds = %for.end
  br i1 %tobool14.not, label %do.body42, label %if.then23.do.body26_crit_edge

if.then23.do.body26_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

do.body26:                                        ; preds = %if.then23.do.body26_crit_edge, %for.end.thread.do.body26_crit_edge
  %count.0.lcssa143154 = phi i32 [ %inc, %if.then23.do.body26_crit_edge ], [ 0, %for.end.thread.do.body26_crit_edge ]
  %got_response.0.in.lcssa147153 = phi i8 [ %got_response.0.in, %if.then23.do.body26_crit_edge ], [ %got_response.0.in132, %for.end.thread.do.body26_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_command.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_command, %if.end59.thread130)) #9
          to label %if.then61 [label %if.end59.thread130], !srcloc !249

if.end59.thread130:                               ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_command.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.48, i32 noundef %count.0.lcssa143154) #9
  br label %if.then61

do.body42:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_command.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_command, %if.end59.thread)) #9
          to label %if.end90 [label %if.end59.thread], !srcloc !249

if.end59.thread:                                  ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_command.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.50) #9
  br label %if.end90

if.end59:                                         ; preds = %for.end
  br i1 %tobool14.not, label %if.end59.if.end90_crit_edge, label %if.end59.if.then61_crit_edge

if.end59.if.then61_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then61

if.end59.if.end90_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then61:                                        ; preds = %if.end59.if.then61_crit_edge, %if.end59.thread130, %do.body26, %for.end.thread.if.then61_crit_edge
  %got_response.0.in.lcssa144 = phi i8 [ %got_response.0.in.lcssa147153, %do.body26 ], [ %got_response.0.in.lcssa147153, %if.end59.thread130 ], [ %got_response.0.in, %if.end59.if.then61_crit_edge ], [ %got_response.0.in132, %for.end.thread.if.then61_crit_edge ]
  %24 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add62 = add i32 %24, 4
  %and.i121 = and i32 %add62, 1048575
  %add.i122 = or i32 %and.i121, -18874368
  %25 = inttoptr i32 %add.i122 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %conv64 = zext i8 %26 to i32
  %27 = ptrtoint ptr %lsb to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv64, ptr %lsb, align 4
  %28 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add65 = add i32 %28, 5
  %and.i123 = and i32 %add65, 1048575
  %add.i124 = or i32 %and.i123, -18874368
  %29 = inttoptr i32 %add.i124 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %conv67 = zext i8 %30 to i32
  %31 = ptrtoint ptr %msb to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv67, ptr %msb, align 4
  %32 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add68 = add i32 %32, 6
  %and.i125 = and i32 %add68, 1048575
  %add.i126 = or i32 %and.i125, -18874368
  %33 = inttoptr i32 %add.i126 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp70 = icmp sgt i32 %35, 1
  br i1 %cmp70, label %do.body73, label %if.then61.if.end90_crit_edge

if.then61.if.end90_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

do.body73:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_command.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_command, %if.then85)) #9
          to label %if.end90 [label %if.then85], !srcloc !249

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %msb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msb, align 4
  %38 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lsb, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_command.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.52, i32 noundef %cmd, i32 noundef %37, i32 noundef %39) #9
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %do.body73, %if.then61.if.end90_crit_edge, %if.end59.if.end90_crit_edge, %if.end59.thread, %do.body42
  %got_response.0.in.lcssa145 = phi i8 [ 0, %do.body42 ], [ %got_response.0.in.lcssa144, %do.body73 ], [ 0, %if.end59.thread ], [ %got_response.0.in.lcssa144, %if.then61.if.end90_crit_edge ], [ %got_response.0.in.lcssa144, %if.then85 ], [ %got_response.0.in, %if.end59.if.end90_crit_edge ]
  %got_response.0 = zext i8 %got_response.0.in.lcssa145 to i32
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  ret i32 %got_response.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcipcwd_notify_sys(ptr nocapture noundef readnone %this, i32 noundef %code, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %code.off = add i32 %code, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %code.off)
  %switch = icmp ult i32 %code.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @pcipcwd_stop()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcipcwd_temp_read(ptr nocapture noundef readnone %file, ptr noundef %data, i32 noundef %len, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #9
  %0 = load i32, ptr @pcipcwd_private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %and.i.i = and i32 %1, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add.i.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %conv.i = zext i8 %3 to i16
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %mul.i = mul nuw nsw i16 %conv.i, 9
  %div.i12 = udiv i16 %mul.i, 5
  %narrow = add nuw nsw i16 %div.i12, 32
  %add.i = zext i16 %narrow to i32
  %4 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.i, ptr %temperature, align 4
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp sgt i32 %5, 1
  br i1 %cmp.i, label %do.body.i, label %if.end.i.if.end59.i.i_crit_edge

if.end.i.if.end59.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_get_temperature.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_temp_read, %if.then7.i)) #9
          to label %if.end59.i.i [label %if.then7.i], !srcloc !249

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %temperature, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_get_temperature.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.83, i32 noundef %7) #9
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.then7.i, %do.body.i, %if.end.i.if.end59.i.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.86, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end59.i.i.cleanup_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup_crit_edge:                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end59.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 1, i32 -1226833920) #14, !srcloc !254
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %temperature, i32 noundef 1) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %temperature, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool2.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool2.not, i32 1, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end59.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ -14, %if.end59.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcipcwd_temp_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pcipcwd_private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcipcwd_temp_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcipcwd_write(ptr nocapture noundef readnone %file, ptr noundef %data, i32 noundef %len, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  %0 = load i8, ptr @nowayout, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %for.body.preheader, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.body.preheader:                               ; preds = %if.then
  store i1 false, ptr @expect_release, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 450) #9
  %add.ptr = getelementptr i8, ptr %data, i32 %i.025
  %1 = tail call i32 @llvm.read_register.i32(metadata !237) #9
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !255
  %and.i = and i32 %3, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #9, !srcloc !258
  %asmresult = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool5.not = icmp eq i32 %asmresult, 0
  br i1 %tobool5.not, label %if.end, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %for.body
  %asmresult3 = extractvalue { i32, i32 } %4, 1
  %conv7 = and i32 %asmresult3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %conv7)
  %cmp8 = icmp eq i32 %conv7, 86
  br i1 %cmp8, label %if.then10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @expect_release, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.025, 1
  %cmp.not = icmp eq i32 %inc, %len
  br i1 %cmp.not, label %for.inc.if.end15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %for.inc.if.end15_crit_edge, %if.then.if.end15_crit_edge
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %5 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %and.i.i = and i32 %5, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 66) #9, !srcloc !253
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp sgt i32 %7, 1
  br i1 %cmp.i, label %do.body.i, label %if.end15.return_crit_edge

if.end15.return_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_keepalive.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_write, %if.then3.i)) #9
          to label %return [label %if.then3.i], !srcloc !249

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_keepalive.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.90) #9
  br label %return

return:                                           ; preds = %if.then3.i, %do.body.i, %if.end15.return_crit_edge, %for.body.return_crit_edge, %entry.return_crit_edge
  %retval.3 = phi i32 [ 0, %entry.return_crit_edge ], [ %len, %if.end15.return_crit_edge ], [ %len, %do.body.i ], [ %len, %if.then3.i ], [ -14, %for.body.return_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcipcwd_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %msb.i = alloca i32, align 4
  %lsb.i = alloca i32, align 4
  %t_msb.i = alloca i32, align 4
  %t_lsb.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup136_crit_edge [
    i32 -2144839936, label %if.end59.i.i
    i32 -2147199231, label %sw.bb1
    i32 -2147199230, label %sw.bb5
    i32 -2147199229, label %sw.bb21
    i32 -2147199228, label %sw.bb39
    i32 -2147199227, label %sw.bb75
    i32 -1073457402, label %sw.bb77
    i32 -2147199225, label %entry.sw.bb99_crit_edge
    i32 -2147199222, label %sw.bb115
  ]

entry.sw.bb99_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99

entry.cleanup136_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.86, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end59.i.i.cleanup136_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup136_crit_edge:                ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.end.i.i:                                       ; preds = %if.end59.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 40, i32 -1226833920) #14, !srcloc !254
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup136_crit_edge

if.end.i.i.cleanup136_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @pcipcwd_ioctl.ident, i32 noundef 40) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull @pcipcwd_ioctl.ident, i32 noundef 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup136

sw.bb1:                                           ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add.i = add i32 %3, 1
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %4 = inttoptr i32 %add.i.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %conv.i = zext i8 %5 to i32
  %and.i172 = shl nuw nsw i32 %conv.i, 5
  %6 = and i32 %and.i172, 32
  %and1.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %sw.bb1.if.end8.i_crit_edge, label %if.then3.i

sw.bb1.if.end8.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then3.i:                                       ; preds = %sw.bb1
  %or4.i = or i32 %6, 1
  %.b.i = load i1, ptr @temp_panic, align 4
  br i1 %.b.i, label %if.then6.i, label %if.then3.i.if.end8.i_crit_edge

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.32) #13
  unreachable

if.end8.i:                                        ; preds = %if.then3.i.if.end8.i_crit_edge, %sw.bb1.if.end8.i_crit_edge
  %status.1 = phi i32 [ %6, %sw.bb1.if.end8.i_crit_edge ], [ %or4.i, %if.then3.i.if.end8.i_crit_edge ]
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp sgt i32 %7, 1
  br i1 %cmp.i, label %do.body.i, label %if.end8.i.pcipcwd_get_status.exit_crit_edge

if.end8.i.pcipcwd_get_status.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcipcwd_get_status.exit

do.body.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_get_status.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_ioctl, %if.then15.i)) #9
          to label %pcipcwd_get_status.exit [label %if.then15.i], !srcloc !249

if.then15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_get_status.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.35, i32 noundef %conv.i) #9
  br label %pcipcwd_get_status.exit

pcipcwd_get_status.exit:                          ; preds = %if.then15.i, %do.body.i, %if.end8.i.pcipcwd_get_status.exit_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 486) #9
  %8 = tail call i32 @llvm.read_register.i32(metadata !237) #9
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !255
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %11 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %status.1, i32 -1226833921) #9, !srcloc !259
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  br label %cleanup136

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 1), align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 490) #9
  %13 = tail call i32 @llvm.read_register.i32(metadata !237) #9
  %and.i.i.i148 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i148 to ptr
  %cpu_domain.i.i149 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i149) #8, !srcloc !255
  %and.i150 = and i32 %15, -13
  %or.i151 = or i32 %and.i150, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i151) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %12, i32 -1226833921) #9, !srcloc !260
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  br label %cleanup136

sw.bb21:                                          ; preds = %entry
  %17 = load i32, ptr @pcipcwd_private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i174 = icmp eq i32 %17, 0
  br i1 %tobool.not.i174, label %sw.bb21.cleanup136_crit_edge, label %if.end.i180

sw.bb21.cleanup136_crit_edge:                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.end.i180:                                      ; preds = %sw.bb21
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %18 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %and.i.i175 = and i32 %18, 1048575
  %add.i.i176 = or i32 %and.i.i175, -18874368
  %19 = inttoptr i32 %add.i.i176 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %conv.i177 = zext i8 %20 to i16
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %mul.i = mul nuw nsw i16 %conv.i177, 9
  %div.i218219 = udiv i16 %mul.i, 5
  %narrow = add nuw nsw i16 %div.i218219, 32
  %add.i178 = zext i16 %narrow to i32
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i179 = icmp sgt i32 %21, 1
  br i1 %cmp.i179, label %do.body.i181, label %if.end.i180.if.end_crit_edge

if.end.i180.if.end_crit_edge:                     ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i181:                                     ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_get_temperature.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_ioctl, %if.then7.i)) #9
          to label %if.end [label %if.then7.i], !srcloc !249

if.then7.i:                                       ; preds = %do.body.i181
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_get_temperature.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.83, i32 noundef %add.i178) #9
  br label %if.end

if.end:                                           ; preds = %if.then7.i, %do.body.i181, %if.end.i180.if.end_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 499) #9
  %22 = tail call i32 @llvm.read_register.i32(metadata !237) #9
  %and.i.i.i152 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i152 to ptr
  %cpu_domain.i.i153 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i153) #8, !srcloc !255
  %and.i154 = and i32 %24, -13
  %or.i155 = or i32 %and.i154, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i155) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %25 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %add.i178, i32 -1226833921) #9, !srcloc !261
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  br label %cleanup136

sw.bb39:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 506) #9
  %26 = tail call i32 @llvm.read_register.i32(metadata !237) #9
  %and.i.i.i156 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i156 to ptr
  %cpu_domain.i.i157 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i157) #8, !srcloc !255
  %and.i158 = and i32 %28, -13
  %or.i159 = or i32 %and.i158, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i159) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %29 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #9, !srcloc !262
  %asmresult = extractvalue { i32, i32 } %29, 0
  %asmresult49 = extractvalue { i32, i32 } %29, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool51.not = icmp eq i32 %asmresult, 0
  br i1 %tobool51.not, label %if.end53, label %sw.bb39.cleanup136_crit_edge

sw.bb39.cleanup136_crit_edge:                     ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.end53:                                         ; preds = %sw.bb39
  %and = and i32 %asmresult49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %if.end53.if.end60_crit_edge, label %if.then55

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then55:                                        ; preds = %if.end53
  %call56 = tail call fastcc i32 @pcipcwd_stop()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.if.end60_crit_edge, label %if.then55.cleanup136_crit_edge

if.then55.cleanup136_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then55.if.end60_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.end60:                                         ; preds = %if.then55.if.end60_crit_edge, %if.end53.if.end60_crit_edge
  %retval40.0 = phi i32 [ -22, %if.end53.if.end60_crit_edge ], [ 0, %if.then55.if.end60_crit_edge ]
  %and61 = and i32 %asmresult49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end68_crit_edge, label %if.then63

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then63:                                        ; preds = %if.end60
  %call64 = tail call fastcc i32 @pcipcwd_start()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then63.if.end68_crit_edge, label %if.then63.cleanup136_crit_edge

if.then63.cleanup136_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then63.if.end68_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.end68:                                         ; preds = %if.then63.if.end68_crit_edge, %if.end60.if.end68_crit_edge
  %retval40.1 = phi i32 [ %retval40.0, %if.end60.if.end68_crit_edge ], [ 0, %if.then63.if.end68_crit_edge ]
  %and69 = and i32 %asmresult49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.cleanup136_crit_edge, label %if.then71

if.end68.cleanup136_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @temp_panic, align 4
  br label %cleanup136

sw.bb75:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %30 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %and.i.i182 = and i32 %30, 1048575
  %add.i.i183 = or i32 %and.i.i182, -18874368
  %31 = inttoptr i32 %add.i.i183 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 66) #9, !srcloc !253
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i184 = icmp sgt i32 %32, 1
  br i1 %cmp.i184, label %do.body.i185, label %sw.bb75.cleanup136_crit_edge

sw.bb75.cleanup136_crit_edge:                     ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

do.body.i185:                                     ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_keepalive.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_ioctl, %if.then3.i186)) #9
          to label %cleanup136 [label %if.then3.i186], !srcloc !249

if.then3.i186:                                    ; preds = %do.body.i185
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_keepalive.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.90) #9
  br label %cleanup136

sw.bb77:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 537) #9
  %33 = tail call i32 @llvm.read_register.i32(metadata !237) #9
  %and.i.i.i160 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i160 to ptr
  %cpu_domain.i.i161 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i161) #8, !srcloc !255
  %and.i162 = and i32 %35, -13
  %or.i163 = or i32 %and.i162, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i163) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %36 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #9, !srcloc !263
  %asmresult87 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult87)
  %tobool90.not = icmp eq i32 %asmresult87, 0
  br i1 %tobool90.not, label %if.end92, label %sw.bb77.cleanup136_crit_edge

sw.bb77.cleanup136_crit_edge:                     ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.end92:                                         ; preds = %sw.bb77
  %asmresult88 = extractvalue { i32, i32 } %36, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t_msb.i) #9
  %asmresult88.frozen = freeze i32 %asmresult88
  %div.i187 = sdiv i32 %asmresult88.frozen, 256
  %37 = ptrtoint ptr %t_msb.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div.i187, ptr %t_msb.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t_lsb.i) #9
  %38 = mul i32 %div.i187, 256
  %rem.i.decomposed = sub i32 %asmresult88.frozen, %38
  %39 = ptrtoint ptr %t_lsb.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %rem.i.decomposed, ptr %t_lsb.i, align 4
  %40 = add i32 %asmresult88, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %40)
  %41 = icmp ult i32 %40, -65535
  br i1 %41, label %pcipcwd_set_heartbeat.exit.thread213, label %if.end.i188

pcipcwd_set_heartbeat.exit.thread213:             ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_lsb.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_msb.i) #9
  br label %cleanup136

if.end.i188:                                      ; preds = %if.end92
  %call.i = call fastcc i32 @send_command(i32 noundef 25, ptr noundef nonnull %t_msb.i, ptr noundef nonnull %t_lsb.i) #9
  store i32 %asmresult88, ptr @heartbeat, align 4
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp2.i = icmp sgt i32 %42, 0
  br i1 %cmp2.i, label %do.body.i189, label %if.end.i188.pcipcwd_set_heartbeat.exit.thread_crit_edge

if.end.i188.pcipcwd_set_heartbeat.exit.thread_crit_edge: ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcipcwd_set_heartbeat.exit.thread

do.body.i189:                                     ; preds = %if.end.i188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_set_heartbeat.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_ioctl, %if.then7.i190)) #9
          to label %pcipcwd_set_heartbeat.exit [label %if.then7.i190], !srcloc !249

if.then7.i190:                                    ; preds = %do.body.i189
  call void @__sanitizer_cov_trace_pc() #11
  %43 = load i32, ptr @heartbeat, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_set_heartbeat.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.79, i32 noundef %43) #9
  br label %pcipcwd_set_heartbeat.exit.thread

pcipcwd_set_heartbeat.exit.thread:                ; preds = %if.then7.i190, %if.end.i188.pcipcwd_set_heartbeat.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_lsb.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_msb.i) #9
  br label %cleanup98

pcipcwd_set_heartbeat.exit:                       ; preds = %do.body.i189
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_lsb.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_msb.i) #9
  br label %cleanup98

cleanup98:                                        ; preds = %pcipcwd_set_heartbeat.exit, %pcipcwd_set_heartbeat.exit.thread
  tail call fastcc void @pcipcwd_keepalive()
  br label %sw.bb99

sw.bb99:                                          ; preds = %cleanup98, %entry.sw.bb99_crit_edge
  %44 = load i32, ptr @heartbeat, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 548) #9
  %45 = tail call i32 @llvm.read_register.i32(metadata !237) #9
  %and.i.i.i164 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i164 to ptr
  %cpu_domain.i.i165 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i165) #8, !srcloc !255
  %and.i166 = and i32 %47, -13
  %or.i167 = or i32 %and.i166, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i167) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %48 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %44, i32 -1226833921) #9, !srcloc !264
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  br label %cleanup136

sw.bb115:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msb.i) #9
  %49 = ptrtoint ptr %msb.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %msb.i, align 4, !annotation !250
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lsb.i) #9
  %50 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %lsb.i, align 4, !annotation !250
  %call.i192 = call fastcc i32 @send_command(i32 noundef 24, ptr noundef nonnull %msb.i, ptr noundef nonnull %lsb.i) #9
  %51 = ptrtoint ptr %msb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msb.i, align 4
  %shl.i = shl i32 %52, 8
  %53 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lsb.i, align 4
  %add.i193 = add i32 %shl.i, %54
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i194 = icmp sgt i32 %55, 0
  br i1 %cmp.i194, label %do.body.i195, label %sw.bb115.pcipcwd_get_timeleft.exit_crit_edge

sw.bb115.pcipcwd_get_timeleft.exit_crit_edge:     ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcipcwd_get_timeleft.exit

do.body.i195:                                     ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_get_timeleft.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_ioctl, %if.then4.i)) #9
          to label %pcipcwd_get_timeleft.exit [label %if.then4.i], !srcloc !249

if.then4.i:                                       ; preds = %do.body.i195
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_get_timeleft.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.97, i32 noundef %add.i193) #9
  br label %pcipcwd_get_timeleft.exit

pcipcwd_get_timeleft.exit:                        ; preds = %if.then4.i, %do.body.i195, %sw.bb115.pcipcwd_get_timeleft.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsb.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msb.i) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 557) #9
  %56 = tail call i32 @llvm.read_register.i32(metadata !237) #9
  %and.i.i.i168 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i168 to ptr
  %cpu_domain.i.i169 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i169) #8, !srcloc !255
  %and.i170 = and i32 %58, -13
  %or.i171 = or i32 %and.i170, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i171) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %59 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %add.i193, i32 -1226833921) #9, !srcloc !265
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  br label %cleanup136

cleanup136:                                       ; preds = %pcipcwd_get_timeleft.exit, %sw.bb99, %pcipcwd_set_heartbeat.exit.thread213, %sw.bb77.cleanup136_crit_edge, %if.then3.i186, %do.body.i185, %sw.bb75.cleanup136_crit_edge, %if.then71, %if.end68.cleanup136_crit_edge, %if.then63.cleanup136_crit_edge, %if.then55.cleanup136_crit_edge, %sw.bb39.cleanup136_crit_edge, %if.end, %sw.bb21.cleanup136_crit_edge, %sw.bb5, %pcipcwd_get_status.exit, %copy_to_user.exit, %if.end.i.i.cleanup136_crit_edge, %if.end59.i.i.cleanup136_crit_edge, %entry.cleanup136_crit_edge
  %retval.4 = phi i32 [ %59, %pcipcwd_get_timeleft.exit ], [ %48, %sw.bb99 ], [ %16, %sw.bb5 ], [ %11, %pcipcwd_get_status.exit ], [ -14, %sw.bb39.cleanup136_crit_edge ], [ -5, %if.then55.cleanup136_crit_edge ], [ -5, %if.then63.cleanup136_crit_edge ], [ 0, %if.then71 ], [ %retval40.1, %if.end68.cleanup136_crit_edge ], [ -25, %entry.cleanup136_crit_edge ], [ %25, %if.end ], [ 0, %sw.bb75.cleanup136_crit_edge ], [ 0, %do.body.i185 ], [ 0, %if.then3.i186 ], [ -14, %if.end59.i.i.cleanup136_crit_edge ], [ -14, %if.end.i.i.cleanup136_crit_edge ], [ -14, %sw.bb21.cleanup136_crit_edge ], [ -22, %pcipcwd_set_heartbeat.exit.thread213 ], [ -14, %sw.bb77.cleanup136_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcipcwd_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @is_active) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  br label %return

if.end3:                                          ; preds = %entry
  %call4 = tail call fastcc i32 @pcipcwd_start()
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %and.i.i = and i32 %1, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 66) #9, !srcloc !253
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp sgt i32 %3, 1
  br i1 %cmp.i, label %do.body.i, label %if.end3.pcipcwd_keepalive.exit_crit_edge

if.end3.pcipcwd_keepalive.exit_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcipcwd_keepalive.exit

do.body.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_keepalive.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_open, %if.then3.i)) #9
          to label %pcipcwd_keepalive.exit [label %if.then3.i], !srcloc !249

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_keepalive.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.90) #9
  br label %pcipcwd_keepalive.exit

pcipcwd_keepalive.exit:                           ; preds = %if.then3.i, %do.body.i, %if.end3.pcipcwd_keepalive.exit_crit_edge
  %call6 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #9
  br label %return

return:                                           ; preds = %pcipcwd_keepalive.exit, %do.end, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call6, %pcipcwd_keepalive.exit ], [ -16, %do.end ], [ -16, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcipcwd_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @expect_release, align 1
  br i1 %.b, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @pcipcwd_stop()
  br label %if.end

do.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #12
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %0 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %and.i.i = and i32 %0, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %1 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 66) #9, !srcloc !253
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp sgt i32 %2, 1
  br i1 %cmp.i, label %do.body.i, label %do.end.if.end_crit_edge

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_keepalive.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_release, %if.then3.i)) #9
          to label %if.end [label %if.then3.i], !srcloc !249

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_keepalive.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.90) #9
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %do.body.i, %do.end.if.end_crit_edge, %if.then
  store i1 false, ptr @expect_release, align 1
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @is_active) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcipcwd_keepalive() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %0 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %0, 1048575
  %add.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 66) #9, !srcloc !253
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.body, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_keepalive.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_keepalive, %if.then3)) #9
          to label %if.end4 [label %if.then3], !srcloc !249

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_keepalive.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.90) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.body, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcipcwd_start() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %0 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add = add i32 %0, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 0) #9, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #9
  %3 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 2), align 4
  %add1 = add i32 %3, 2
  %and.i16 = and i32 %add1, 1048575
  %add.i17 = or i32 %and.i16, -18874368
  %4 = inttoptr i32 %add.i17 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @pcipcwd_private, i32 0, i32 3)) #9
  %6 = and i8 %5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %do.body5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcipcwd_start.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcipcwd_start, %if.then11)) #9
          to label %cleanup [label %if.then11], !srcloc !249

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcipcwd_start.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.94) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %do.body5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.then11 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.body5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !39, !41, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !88, !90, !92, !93, !94, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !144, !146, !147, !148, !149, !150, !151, !153, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !173, !174, !175, !176, !178, !180, !182, !184, !186, !187, !188, !189, !191, !192, !194, !196, !198, !200, !202, !204, !206, !207, !208, !209, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !230, !232, !234, !235, !236}
!llvm.named.register.sp = !{!237}
!llvm.module.flags = !{!238, !239, !240, !241, !242, !243, !244, !245}
!llvm.ident = !{!246}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/pcwd_pci.c", i32 134, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype236, !1, !"__UNIQUE_ID_debugtype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug237, !4, !"__UNIQUE_ID_debug237", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/pcwd_pci.c", i32 135, i32 1}
!5 = !{ptr @__param_heartbeat, !6, !"__param_heartbeat", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/pcwd_pci.c", i32 140, i32 1}
!7 = !{ptr @__UNIQUE_ID_heartbeattype238, !6, !"__UNIQUE_ID_heartbeattype238", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_heartbeat239, !9, !"__UNIQUE_ID_heartbeat239", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/pcwd_pci.c", i32 141, i32 1}
!10 = !{ptr @__param_nowayout, !11, !"__param_nowayout", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/pcwd_pci.c", i32 146, i32 1}
!12 = !{ptr @__UNIQUE_ID_nowayouttype240, !11, !"__UNIQUE_ID_nowayouttype240", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_nowayout241, !14, !"__UNIQUE_ID_nowayout241", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/pcwd_pci.c", i32 147, i32 1}
!15 = !{ptr @__initcall__kmod_pcwd_pci__256_815_pcipcwd_driver_init6, !16, !"__initcall__kmod_pcwd_pci__256_815_pcipcwd_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/pcwd_pci.c", i32 815, i32 1}
!17 = !{ptr @__exitcall_pcipcwd_driver_exit, !16, !"__exitcall_pcipcwd_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author257, !19, !"__UNIQUE_ID_author257", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/pcwd_pci.c", i32 817, i32 1}
!20 = !{ptr @__UNIQUE_ID_description258, !21, !"__UNIQUE_ID_description258", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/pcwd_pci.c", i32 818, i32 1}
!22 = !{ptr @__UNIQUE_ID_file259, !23, !"__UNIQUE_ID_file259", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/pcwd_pci.c", i32 819, i32 1}
!24 = !{ptr @__UNIQUE_ID_license260, !23, !"__UNIQUE_ID_license260", i1 false, i1 false}
!25 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!26 = !{ptr @debug, !27, !"debug", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/pcwd_pci.c", i32 133, i32 12}
!28 = !{ptr @__param_str_heartbeat, !6, !"__param_str_heartbeat", i1 false, i1 false}
!29 = !{ptr @heartbeat, !30, !"heartbeat", i1 false, i1 false}
!30 = !{!"../drivers/watchdog/pcwd_pci.c", i32 139, i32 12}
!31 = !{ptr @__param_str_nowayout, !11, !"__param_str_nowayout", i1 false, i1 false}
!32 = !{ptr @nowayout, !33, !"nowayout", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/pcwd_pci.c", i32 145, i32 13}
!34 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pcipcwd_driver, !36, !"pcipcwd_driver", i1 false, i1 false}
!36 = !{!"../drivers/watchdog/pcwd_pci.c", i32 808, i32 26}
!37 = !{ptr @pcipcwd_pci_tbl, !38, !"pcipcwd_pci_tbl", i1 false, i1 false}
!38 = !{!"../drivers/watchdog/pcwd_pci.c", i32 801, i32 35}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/watchdog/pcwd_pci.c", i32 689, i32 3}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pcipcwd_card_init._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @pcipcwd_card_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.6, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/pcwd_pci.c", i32 692, i32 3}
!48 = !{ptr @pcipcwd_card_init._entry.5, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pcipcwd_card_init._entry_ptr.7, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/pcwd_pci.c", i32 697, i32 3}
!52 = !{ptr @pcipcwd_card_init._entry.8, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pcipcwd_card_init._entry_ptr.10, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/watchdog/pcwd_pci.c", i32 702, i32 3}
!56 = !{ptr @pcipcwd_card_init._entry.11, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pcipcwd_card_init._entry_ptr.13, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @pcipcwd_card_init.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/watchdog/pcwd_pci.c", i32 707, i32 2}
!60 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/watchdog/pcwd_pci.c", i32 712, i32 3}
!63 = !{ptr @pcipcwd_card_init._entry.15, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @pcipcwd_card_init._entry_ptr.17, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/pcwd_pci.c", i32 742, i32 3}
!67 = !{ptr @pcipcwd_card_init._entry.18, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @pcipcwd_card_init._entry_ptr.20, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/watchdog/pcwd_pci.c", i32 748, i32 3}
!71 = !{ptr @pcipcwd_card_init._entry.21, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @pcipcwd_card_init._entry_ptr.23, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/watchdog/pcwd_pci.c", i32 755, i32 4}
!75 = !{ptr @pcipcwd_card_init._entry.24, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @pcipcwd_card_init._entry_ptr.26, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @pcipcwd_card_init._entry.27, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/watchdog/pcwd_pci.c", i32 763, i32 3}
!79 = !{ptr @pcipcwd_card_init._entry_ptr.28, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/watchdog/pcwd_pci.c", i32 768, i32 2}
!82 = !{ptr @pcipcwd_card_init._entry.29, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @pcipcwd_card_init._entry_ptr.31, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @cards_found, !85, !"cards_found", i1 false, i1 false}
!85 = !{!"../drivers/watchdog/pcwd_pci.c", i32 109, i32 12}
!86 = !{ptr @pcipcwd_private, !87, !"pcipcwd_private", i1 false, i1 false}
!87 = !{!"../drivers/watchdog/pcwd_pci.c", i32 127, i32 3}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/watchdog/pcwd_pci.c", i32 348, i32 10}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/watchdog/pcwd_pci.c", i32 352, i32 3}
!92 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @pcipcwd_get_status.__UNIQUE_ID_ddebug250, !91, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!94 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"temp_panic", i1 false, i1 false}
!96 = !{!"../drivers/watchdog/pcwd_pci.c", i32 112, i32 12}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/watchdog/pcwd_pci.c", i32 364, i32 3}
!99 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @pcipcwd_clear_status._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @pcipcwd_clear_status._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/watchdog/pcwd_pci.c", i32 369, i32 3}
!104 = !{ptr @pcipcwd_clear_status.__UNIQUE_ID_ddebug251, !103, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!105 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/watchdog/pcwd_pci.c", i32 370, i32 3}
!108 = !{ptr @pcipcwd_clear_status.__UNIQUE_ID_ddebug252, !107, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!109 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/watchdog/pcwd_pci.c", i32 384, i32 3}
!112 = !{ptr @pcipcwd_clear_status.__UNIQUE_ID_ddebug253, !111, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!113 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/watchdog/pcwd_pci.c", i32 159, i32 3}
!116 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @send_command.__UNIQUE_ID_ddebug242, !115, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!118 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/watchdog/pcwd_pci.c", i32 185, i32 4}
!121 = !{ptr @send_command.__UNIQUE_ID_ddebug243, !120, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!122 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/watchdog/pcwd_pci.c", i32 188, i32 4}
!125 = !{ptr @send_command.__UNIQUE_ID_ddebug244, !124, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!126 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/watchdog/pcwd_pci.c", i32 201, i32 4}
!129 = !{ptr @send_command.__UNIQUE_ID_ddebug245, !128, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!130 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/watchdog/pcwd_pci.c", i32 296, i32 3}
!133 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @pcipcwd_stop._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @pcipcwd_stop._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/watchdog/pcwd_pci.c", i32 301, i32 3}
!138 = !{ptr @pcipcwd_stop.__UNIQUE_ID_ddebug247, !137, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!139 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/watchdog/pcwd_pci.c", i32 233, i32 23}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/watchdog/pcwd_pci.c", i32 235, i32 23}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/watchdog/pcwd_pci.c", i32 240, i32 2}
!146 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @pcipcwd_show_card_info._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @pcipcwd_show_card_info._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/watchdog/pcwd_pci.c", i32 244, i32 2}
!153 = !{ptr @pcipcwd_show_card_info._entry.63, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @pcipcwd_show_card_info._entry_ptr.65, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/watchdog/pcwd_pci.c", i32 250, i32 3}
!159 = !{ptr @pcipcwd_show_card_info._entry.68, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @pcipcwd_show_card_info._entry_ptr.70, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/watchdog/pcwd_pci.c", i32 253, i32 3}
!163 = !{ptr @pcipcwd_show_card_info._entry.71, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @pcipcwd_show_card_info._entry_ptr.73, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/watchdog/pcwd_pci.c", i32 256, i32 3}
!167 = !{ptr @pcipcwd_show_card_info._entry.74, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @pcipcwd_show_card_info._entry_ptr.76, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @heartbeat_tbl, !170, !"heartbeat_tbl", i1 false, i1 false}
!170 = !{!"../drivers/watchdog/pcwd_pci.c", i32 97, i32 18}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/watchdog/pcwd_pci.c", i32 332, i32 3}
!173 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @pcipcwd_set_heartbeat.__UNIQUE_ID_ddebug249, !172, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!175 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @pcipcwd_notifier, !177, !"pcipcwd_notifier", i1 false, i1 false}
!177 = !{!"../drivers/watchdog/pcwd_pci.c", i32 674, i32 30}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/watchdog/pcwd_pci.c", i32 670, i32 11}
!180 = !{ptr @pcipcwd_temp_miscdev, !181, !"pcipcwd_temp_miscdev", i1 false, i1 false}
!181 = !{!"../drivers/watchdog/pcwd_pci.c", i32 668, i32 26}
!182 = !{ptr @pcipcwd_temp_fops, !183, !"pcipcwd_temp_fops", i1 false, i1 false}
!183 = !{!"../drivers/watchdog/pcwd_pci.c", i32 660, i32 37}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/watchdog/pcwd_pci.c", i32 407, i32 3}
!186 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @pcipcwd_get_temperature.__UNIQUE_ID_ddebug254, !185, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!188 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!189 = distinct !{null, !190, !"__already_done", i1 false, i1 false}
!190 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!191 = distinct !{null, !190, !"<string literal>", i1 false, i1 false}
!192 = distinct !{null, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/watchdog/pcwd_pci.c", i32 656, i32 11}
!198 = !{ptr @pcipcwd_miscdev, !199, !"pcipcwd_miscdev", i1 false, i1 false}
!199 = !{!"../drivers/watchdog/pcwd_pci.c", i32 654, i32 26}
!200 = !{ptr @pcipcwd_fops, !201, !"pcipcwd_fops", i1 false, i1 false}
!201 = !{!"../drivers/watchdog/pcwd_pci.c", i32 644, i32 37}
!202 = distinct !{null, !203, !"expect_release", i1 false, i1 false}
!203 = !{!"../drivers/watchdog/pcwd_pci.c", i32 114, i32 13}
!204 = !{ptr @.str.88, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/watchdog/pcwd_pci.c", i32 314, i32 3}
!206 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @pcipcwd_keepalive.__UNIQUE_ID_ddebug248, !205, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!208 = !{ptr @.str.90, !205, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @pcipcwd_ioctl.ident, !210, !"ident", i1 false, i1 false}
!210 = !{!"../drivers/watchdog/pcwd_pci.c", i32 468, i32 36}
!211 = !{ptr @.str.91, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/watchdog/pcwd_pci.c", i32 271, i32 3}
!213 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @pcipcwd_start._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @pcipcwd_start._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.93, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/watchdog/pcwd_pci.c", i32 276, i32 3}
!218 = !{ptr @pcipcwd_start.__UNIQUE_ID_ddebug246, !217, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!219 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.95, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/watchdog/pcwd_pci.c", i32 425, i32 3}
!222 = !{ptr @.str.96, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @pcipcwd_get_timeleft.__UNIQUE_ID_ddebug255, !221, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!224 = !{ptr @.str.97, !221, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.98, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/watchdog/pcwd_pci.c", i32 570, i32 4}
!227 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @pcipcwd_open._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @pcipcwd_open._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @is_active, !231, !"is_active", i1 false, i1 false}
!231 = !{!"../drivers/watchdog/pcwd_pci.c", i32 113, i32 22}
!232 = !{ptr @.str.100, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/watchdog/pcwd_pci.c", i32 588, i32 3}
!234 = !{ptr @.str.101, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @pcipcwd_release._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @pcipcwd_release._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{!"sp"}
!238 = !{i32 1, !"wchar_size", i32 2}
!239 = !{i32 1, !"min_enum_size", i32 4}
!240 = !{i32 8, !"branch-target-enforcement", i32 0}
!241 = !{i32 8, !"sign-return-address", i32 0}
!242 = !{i32 8, !"sign-return-address-all", i32 0}
!243 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!244 = !{i32 7, !"uwtable", i32 1}
!245 = !{i32 7, !"frame-pointer", i32 2}
!246 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!247 = !{i64 5761784}
!248 = !{i64 2153295460}
!249 = !{i64 2148971652, i64 2148971657, i64 2148971670, i64 2148971714, i64 2148971748, i64 2148971769}
!250 = !{!"auto-init"}
!251 = !{i8 0, i8 2}
!252 = !{i64 2153297445}
!253 = !{i64 5761389}
!254 = !{i64 2152704669, i64 2152704694}
!255 = !{i64 5195482}
!256 = !{i64 5195679}
!257 = !{i64 2152680912}
!258 = !{i64 2154534215, i64 2154534495, i64 2154534829, i64 2154535163}
!259 = !{i64 2154554487, i64 2154554767, i64 2154555101, i64 2154555435}
!260 = !{i64 2154564012, i64 2154564292, i64 2154564626, i64 2154564960}
!261 = !{i64 2154573508, i64 2154573788, i64 2154574122, i64 2154574456}
!262 = !{i64 2154585754, i64 2154586034, i64 2154586368, i64 2154586702}
!263 = !{i64 2154599456, i64 2154599736, i64 2154600070, i64 2154600404}
!264 = !{i64 2154609667, i64 2154609947, i64 2154610281, i64 2154610615}
!265 = !{i64 2154619162, i64 2154619442, i64 2154619776, i64 2154620110}
