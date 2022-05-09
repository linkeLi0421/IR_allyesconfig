; ModuleID = '/llk/IR_all_yes/drivers/phy/motorola/phy-cpcap-usb.c_pt.bc'
source_filename = "../drivers/phy/motorola/phy-cpcap-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cpcap_phy_ddata = type { ptr, ptr, %struct.usb_phy, %struct.delayed_work, ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, ptr, %struct.atomic_t, i8 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_cpcap_usb__300_731_cpcap_usb_phy_driver_init6 = internal global ptr @cpcap_usb_phy_driver_init, section ".initcall6.init", align 4
@cpcap_usb_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cpcap_usb_phy_probe, ptr @cpcap_usb_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_usb_phy_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cpcap_usb_phy_driver_exit = internal global ptr @cpcap_usb_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias301 = internal constant [39 x i8] c"phy_cpcap_usb.alias=platform:cpcap_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [54 x i8] c"phy_cpcap_usb.author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [47 x i8] c"phy_cpcap_usb.description=CPCAP usb phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [54 x i8] c"phy_cpcap_usb.file=drivers/phy/motorola/phy-cpcap-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [29 x i8] c"phy_cpcap_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpcap-usb-phy\00", [18 x i8] zeroinitializer }, align 32
@cpcap_usb_phy_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,mapphone-cpcap-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpcap_usb_phy\00", [18 x i8] zeroinitializer }, align 32
@cpcap_usb_phy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&ddata->detect_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@cpcap_usb_phy_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&ddata->detect_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vusb\00", [27 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.phy_ops, [44 x i8] } zeroinitializer, align 32
@cpcap_usb_detect.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy_cpcap_usb\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpcap_usb_detect\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/phy/motorola/phy-cpcap-usb.c\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"still in USB A-host mode, kicking VBUS\0A\00", [56 x i8] zeroinitializer }, align 32
@cpcap_usb_detect.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"still docked as A-host, signal ID down\0A\00", [56 x i8] zeroinitializer }, align 32
@cpcap_usb_detect.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"connected to a dock\0A\00", [43 x i8] zeroinitializer }, align 32
@cpcap_usb_detect.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.12, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"id ground, USB host mode\0A\00", [38 x i8] zeroinitializer }, align 32
@cpcap_usb_detect.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.13, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"connected to USB host\0A\00", [41 x i8] zeroinitializer }, align 32
@cpcap_usb_detect.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.14, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set UART mode\0A\00", [17 x i8] zeroinitializer }, align 32
@cpcap_usb_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 340, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error setting cable state: %i\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpcap_usb_detect._entry_ptr = internal global ptr @cpcap_usb_detect._entry, section ".printk_index", align 4
@cpcap_usb_vbus_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.8, i32 148, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error reading VBUS: %i\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpcap_usb_vbus_valid\00", [43 x i8] zeroinitializer }, align 32
@cpcap_usb_vbus_valid._entry_ptr = internal global ptr @cpcap_usb_vbus_valid._entry, section ".printk_index", align 4
@cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.20, ptr @.str.8, ptr @.str.21, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cpcap_usb_try_musb_mailbox\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: musb_mailbox failed: %i\0A\00", [35 x i8] zeroinitializer }, align 32
@cpcap_usb_set_usb_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.8, i32 481, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not set usb mode: %i\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpcap_usb_set_usb_mode\00", [41 x i8] zeroinitializer }, align 32
@cpcap_usb_set_usb_mode._entry_ptr = internal global ptr @cpcap_usb_set_usb_mode._entry, section ".printk_index", align 4
@cpcap_usb_set_usb_mode._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.8, i32 515, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s failed with %i\0A\00", [45 x i8] zeroinitializer }, align 32
@cpcap_usb_set_usb_mode._entry_ptr.26 = internal global ptr @cpcap_usb_set_usb_mode._entry.24, section ".printk_index", align 4
@cpcap_usb_set_uart_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.27, ptr @.str.8, i32 463, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpcap_usb_set_uart_mode\00", [40 x i8] zeroinitializer }, align 32
@cpcap_usb_set_uart_mode._entry_ptr = internal global ptr @cpcap_usb_set_uart_mode._entry, section ".printk_index", align 4
@cpcap_usb_init_optional_pins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.8, i32 525, ptr @.str.30, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"default pins not configured: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cpcap_usb_init_optional_pins\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cpcap_usb_init_optional_pins._entry_ptr = internal global ptr @cpcap_usb_init_optional_pins._entry, section ".printk_index", align 4
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ulpi\00", [27 x i8] zeroinitializer }, align 32
@cpcap_usb_init_optional_pins._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.8, i32 533, ptr @.str.30, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ulpi pins not configured\0A\00", [38 x i8] zeroinitializer }, align 32
@cpcap_usb_init_optional_pins._entry_ptr.34 = internal global ptr @cpcap_usb_init_optional_pins._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utmi\00", [27 x i8] zeroinitializer }, align 32
@cpcap_usb_init_optional_pins._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.8, i32 539, ptr @.str.30, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"utmi pins not configured\0A\00", [38 x i8] zeroinitializer }, align 32
@cpcap_usb_init_optional_pins._entry_ptr.38 = internal global ptr @cpcap_usb_init_optional_pins._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@cpcap_usb_init_optional_pins._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.29, ptr @.str.8, i32 545, ptr @.str.30, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uart pins not configured\0A\00", [38 x i8] zeroinitializer }, align 32
@cpcap_usb_init_optional_pins._entry_ptr.42 = internal global ptr @cpcap_usb_init_optional_pins._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@cpcap_usb_init_optional_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.8, i32 564, ptr @.str.30, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no mode change GPIO%i: %li\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cpcap_usb_init_optional_gpios\00", [34 x i8] zeroinitializer }, align 32
@cpcap_usb_init_optional_gpios._entry_ptr = internal global ptr @cpcap_usb_init_optional_gpios._entry, section ".printk_index", align 4
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@cpcap_usb_init_iio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.8, i32 599, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not initialize VBUS or ID IIO: %i\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpcap_usb_init_iio\00", [45 x i8] zeroinitializer }, align 32
@cpcap_usb_init_iio._entry_ptr = internal global ptr @cpcap_usb_init_iio._entry, section ".printk_index", align 4
@cpcap_phy_irqs = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [60 x i8] zeroinitializer }, align 32
@cpcap_usb_init_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.8, i32 372, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not get irq %s: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpcap_usb_init_irq\00", [45 x i8] zeroinitializer }, align 32
@cpcap_usb_init_irq._entry_ptr = internal global ptr @cpcap_usb_init_irq._entry, section ".printk_index", align 4
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"id_ground\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"id_float\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"se0conn\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vbusvld\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sessvld\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sessend\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"se1\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dm\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dp\00", [29 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cpcap_usb_phy_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.8, i32 711, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not set UART mode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpcap_usb_phy_remove\00", [43 x i8] zeroinitializer }, align 32
@cpcap_usb_phy_remove._entry_ptr = internal global ptr @cpcap_usb_phy_remove._entry, section ".printk_index", align 4
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"cpcap_usb_phy_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 722, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 726, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [23 x i8] c"cpcap_usb_phy_id_table\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 605, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 645, i32 21 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 651, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 654, i32 47 }
@___asan_gen_.89 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 172, i32 29 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 241, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 256, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 265, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 287, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 317, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 335, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 340, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 148, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 220, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 480, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 515, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 463, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 524, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 531, i32 55 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 533, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 537, i32 55 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 539, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 543, i32 55 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 545, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 560, i32 53 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 563, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 575, i32 49 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 598, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [15 x i8] c"cpcap_phy_irqs\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 380, i32 27 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 371, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 382, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 382, i32 15 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 385, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 385, i32 13 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 385, i32 24 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 385, i32 35 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 385, i32 46 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 388, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 388, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.276 = private constant [40 x i8] c"../drivers/phy/motorola/phy-cpcap-usb.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 711, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_cpcap_usb_phy_driver_exit, ptr @__initcall__kmod_phy_cpcap_usb__300_731_cpcap_usb_phy_driver_init6, ptr @cpcap_usb_detect._entry, ptr @cpcap_usb_detect._entry_ptr, ptr @cpcap_usb_init_iio._entry, ptr @cpcap_usb_init_iio._entry_ptr, ptr @cpcap_usb_init_irq._entry, ptr @cpcap_usb_init_irq._entry_ptr, ptr @cpcap_usb_init_optional_gpios._entry, ptr @cpcap_usb_init_optional_gpios._entry_ptr, ptr @cpcap_usb_init_optional_pins._entry, ptr @cpcap_usb_init_optional_pins._entry.32, ptr @cpcap_usb_init_optional_pins._entry.36, ptr @cpcap_usb_init_optional_pins._entry.40, ptr @cpcap_usb_init_optional_pins._entry_ptr, ptr @cpcap_usb_init_optional_pins._entry_ptr.34, ptr @cpcap_usb_init_optional_pins._entry_ptr.38, ptr @cpcap_usb_init_optional_pins._entry_ptr.42, ptr @cpcap_usb_phy_driver_exit, ptr @cpcap_usb_phy_remove._entry, ptr @cpcap_usb_phy_remove._entry_ptr, ptr @cpcap_usb_set_uart_mode._entry, ptr @cpcap_usb_set_uart_mode._entry_ptr, ptr @cpcap_usb_set_usb_mode._entry, ptr @cpcap_usb_set_usb_mode._entry.24, ptr @cpcap_usb_set_usb_mode._entry_ptr, ptr @cpcap_usb_set_usb_mode._entry_ptr.26, ptr @cpcap_usb_vbus_valid._entry, ptr @cpcap_usb_vbus_valid._entry_ptr, ptr @cpcap_usb_phy_driver, ptr @.str, ptr @cpcap_usb_phy_id_table, ptr @.str.1, ptr @cpcap_usb_phy_probe.__key, ptr @.str.2, ptr @cpcap_usb_phy_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @cpcap_phy_irqs, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_phy_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_phy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_phy_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_vbus_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_set_usb_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_set_usb_mode._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_set_uart_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_init_optional_pins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_init_optional_pins._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_init_optional_pins._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_init_optional_pins._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_init_optional_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_init_iio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_phy_irqs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_init_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_phy_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_usb_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_usb_phy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpcap_usb_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_usb_phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_usb_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @cpcap_usb_phy_id_table, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 412, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call7 = tail call ptr @dev_get_regmap(ptr noundef %1, ptr noundef null) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %call.i, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %call.i141 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool14.not = icmp eq ptr %call.i141, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %dev18 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev18, align 4
  %phy = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %phy, align 4
  %label = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %call.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.1, ptr %label, align 4
  %otg23 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %call.i, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %otg23 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i141, ptr %otg23, align 4
  %type = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %call.i, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type, align 4
  %set_host = getelementptr inbounds %struct.usb_otg, ptr %call.i141, i32 0, i32 6
  %8 = ptrtoint ptr %set_host to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cpcap_usb_phy_set_host, ptr %set_host, align 4
  %set_peripheral = getelementptr inbounds %struct.usb_otg, ptr %call.i141, i32 0, i32 7
  %9 = ptrtoint ptr %set_peripheral to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cpcap_usb_phy_set_peripheral, ptr %set_peripheral, align 4
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %call.i141, i32 0, i32 2
  %10 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %phy, ptr %usb_phy, align 4
  %detect_work = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %call.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %detect_work, i32 noundef 0) #6
  %11 = ptrtoint ptr %detect_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %detect_work, align 4
  %lockdep_map = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @cpcap_usb_phy_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry33 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %call.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry33, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @cpcap_usb_detect, ptr %func, align 4
  %timer = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @cpcap_usb_phy_probe.__key.3) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call43 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #6
  %vusb = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %call.i, i32 0, i32 11
  %16 = ptrtoint ptr %vusb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call43, ptr %vusb, align 4
  %cmp.i = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call43 to i32
  br label %cleanup

if.end49:                                         ; preds = %if.end16
  %call51 = tail call i32 @regulator_enable(ptr noundef %call43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  %18 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev18, align 4
  %call56 = tail call ptr @devm_phy_create(ptr noundef %19, ptr noundef null, ptr noundef nonnull @ops) #6
  %cmp.i142 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call56 to i32
  br label %out_reg_disable

if.end60:                                         ; preds = %if.end54
  %driver_data.i.i143 = getelementptr inbounds %struct.device, ptr %call56, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i.i143 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i143, align 4
  %22 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev18, align 4
  %call62 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %23, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %cmp.i144 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call62 to i32
  br label %out_reg_disable

if.end66:                                         ; preds = %if.end60
  %call67 = tail call fastcc i32 @cpcap_usb_init_optional_pins(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.out_reg_disable_crit_edge

if.end66.out_reg_disable_crit_edge:               ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_reg_disable

if.end70:                                         ; preds = %if.end66
  tail call fastcc void @cpcap_usb_init_optional_gpios(ptr noundef nonnull %call.i)
  %call71 = tail call fastcc i32 @cpcap_usb_init_iio(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.out_reg_disable_crit_edge

if.end70.out_reg_disable_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_reg_disable

if.end74:                                         ; preds = %if.end70
  %call75 = tail call fastcc i32 @cpcap_usb_init_interrupts(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end74.out_reg_disable_crit_edge

if.end74.out_reg_disable_crit_edge:               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_reg_disable

if.end78:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %call80 = tail call i32 @usb_add_phy_dev(ptr noundef %phy) #6
  %active = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %call.i, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #6
  %25 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %active, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i145 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %detect_work, i32 noundef 1) #6
  br label %cleanup

out_reg_disable:                                  ; preds = %if.end74.out_reg_disable_crit_edge, %if.end70.out_reg_disable_crit_edge, %if.end66.out_reg_disable_crit_edge, %if.then64, %if.then58
  %error.0 = phi i32 [ %20, %if.then58 ], [ %24, %if.then64 ], [ %call67, %if.end66.out_reg_disable_crit_edge ], [ %call71, %if.end70.out_reg_disable_crit_edge ], [ %call75, %if.end74.out_reg_disable_crit_edge ]
  %27 = ptrtoint ptr %vusb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vusb, align 4
  %call85 = tail call i32 @regulator_disable(ptr noundef %28) #6
  br label %cleanup

cleanup:                                          ; preds = %out_reg_disable, %if.end78, %if.end49.cleanup_crit_edge, %if.then46, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then46 ], [ %error.0, %out_reg_disable ], [ 0, %if.end78 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ %call51, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_usb_phy_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %active = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #6
  %2 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %active, align 4
  %call1 = tail call fastcc i32 @cpcap_usb_set_uart_mode(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.60) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i = tail call i32 @musb_mailbox(i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cpcap_usb_try_musb_mailbox.exit_crit_edge, label %do.body.i

if.end.cpcap_usb_try_musb_mailbox.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpcap_usb_try_musb_mailbox.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_usb_phy_remove, %if.then5.i)) #6
          to label %cpcap_usb_try_musb_mailbox.exit [label %if.then5.i], !srcloc !155

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, ptr noundef %6, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %call.i) #6
  br label %cpcap_usb_try_musb_mailbox.exit

cpcap_usb_try_musb_mailbox.exit:                  ; preds = %if.then5.i, %do.body.i, %if.end.cpcap_usb_try_musb_mailbox.exit_crit_edge
  %phy = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %1, i32 0, i32 2
  tail call void @usb_remove_phy(ptr noundef %phy) #6
  %detect_work = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %1, i32 0, i32 3
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %detect_work) #6
  %vusb = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %vusb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vusb, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %8) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cpcap_usb_phy_set_host(ptr nocapture noundef writeonly %otg, ptr noundef %host) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 3
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %host, ptr %host1, align 4
  %tobool.not = icmp eq ptr %host, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 5
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cpcap_usb_phy_set_peripheral(ptr nocapture noundef writeonly %otg, ptr noundef %gadget) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget1 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 4
  %0 = ptrtoint ptr %gadget1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %gadget, ptr %gadget1, align 4
  %tobool.not = icmp eq ptr %gadget, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 5
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpcap_usb_detect(ptr noundef %work) #2 align 64 {
entry:
  %value.i277 = alloca i32, align 4
  %value.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !156
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 32, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cpcap_phy_get_ints_state.exit.thread_crit_edge

entry.cpcap_phy_get_ints_state.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpcap_phy_get_ints_state.exit.thread

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %and.i = lshr i32 %4, 15
  %5 = trunc i32 %and.i to i8
  %6 = and i8 %5, 1
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %call9.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 36, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end.i.cpcap_phy_get_ints_state.exit.thread_crit_edge

if.end.i.cpcap_phy_get_ints_state.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpcap_phy_get_ints_state.exit.thread

if.end12.i:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %call26.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 44, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end, label %if.end12.i.cpcap_phy_get_ints_state.exit.thread_crit_edge

if.end12.i.cpcap_phy_get_ints_state.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpcap_phy_get_ints_state.exit.thread

cpcap_phy_get_ints_state.exit.thread:             ; preds = %if.end12.i.cpcap_phy_get_ints_state.exit.thread_crit_edge, %if.end.i.cpcap_phy_get_ints_state.exit.thread_crit_edge, %entry.cpcap_phy_get_ints_state.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end12.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %value.i, align 4
  %vbus.i = getelementptr i8, ptr %work, i32 124
  %12 = ptrtoint ptr %vbus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vbus.i, align 4
  %call.i251 = call i32 @iio_read_channel_processed(ptr noundef %13, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i251)
  %cmp.i = icmp sgt i32 %call.i251, -1
  br i1 %cmp.i, label %cpcap_usb_vbus_valid.exit, label %cpcap_usb_vbus_valid.exit.thread

cpcap_usb_vbus_valid.exit:                        ; preds = %if.end
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3900, i32 %15)
  %cmp1.i = icmp sgt i32 %15, 3900
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %cpcap_usb_vbus_valid.exit.if.end124_crit_edge, label %land.lhs.true

cpcap_usb_vbus_valid.exit.if.end124_crit_edge:    ; preds = %cpcap_usb_vbus_valid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

cpcap_usb_vbus_valid.exit.thread:                 ; preds = %if.end
  %dev.i = getelementptr i8, ptr %work, i32 -264
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.18, i32 noundef %call.i251) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not313 = icmp eq i8 %6, 0
  br i1 %tobool2.not313, label %cpcap_usb_vbus_valid.exit.thread.if.end124_crit_edge, label %land.lhs.true.thread

cpcap_usb_vbus_valid.exit.thread.if.end124_crit_edge: ; preds = %cpcap_usb_vbus_valid.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

land.lhs.true:                                    ; preds = %cpcap_usb_vbus_valid.exit
  %vbus_provider = getelementptr i8, ptr %work, i32 140
  %18 = ptrtoint ptr %vbus_provider to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %vbus_provider, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool3.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool3.not, label %if.end17.thread, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true.thread:                             ; preds = %cpcap_usb_vbus_valid.exit.thread
  %vbus_provider322 = getelementptr i8, ptr %work, i32 140
  %19 = ptrtoint ptr %vbus_provider322 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load323 = load i8, ptr %vbus_provider322, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load323)
  %tobool3.not324 = icmp sgt i8 %bf.load323, -1
  br i1 %tobool3.not324, label %land.lhs.true.thread.land.lhs.true86_crit_edge, label %land.lhs.true.thread.do.body_crit_edge

land.lhs.true.thread.do.body_crit_edge:           ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true.thread.land.lhs.true86_crit_edge:   ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true86

do.body:                                          ; preds = %land.lhs.true.thread.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_usb_detect.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_usb_detect, %if.then11)) #6
          to label %do.end [label %if.then11], !srcloc !155

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %work, i32 -264
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_usb_detect.__UNIQUE_ID_ddebug294, ptr noundef %21, ptr noundef nonnull @.str.9) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %call.i253 = call i32 @musb_mailbox(i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool.not.i254 = icmp eq i32 %call.i253, 0
  br i1 %tobool.not.i254, label %do.end.cpcap_usb_try_musb_mailbox.exit_crit_edge, label %do.body.i

do.end.cpcap_usb_try_musb_mailbox.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpcap_usb_try_musb_mailbox.exit

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_usb_detect, %if.then5.i)) #6
          to label %cpcap_usb_try_musb_mailbox.exit [label %if.then5.i], !srcloc !155

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i255 = getelementptr i8, ptr %work, i32 -264
  %22 = ptrtoint ptr %dev.i255 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i255, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, ptr noundef %23, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %call.i253) #6
  br label %cpcap_usb_try_musb_mailbox.exit

cpcap_usb_try_musb_mailbox.exit:                  ; preds = %if.then5.i, %do.body.i, %do.end.cpcap_usb_try_musb_mailbox.exit_crit_edge
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %call.i256 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 3592, i32 noundef 384, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i256)
  %tobool14.not = icmp eq i32 %call.i256, 0
  br i1 %tobool14.not, label %cpcap_usb_try_musb_mailbox.exit.cleanup_crit_edge, label %cpcap_usb_try_musb_mailbox.exit.do.end187_crit_edge

cpcap_usb_try_musb_mailbox.exit.do.end187_crit_edge: ; preds = %cpcap_usb_try_musb_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end187

cpcap_usb_try_musb_mailbox.exit.cleanup_crit_edge: ; preds = %cpcap_usb_try_musb_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.thread:                                  ; preds = %land.lhs.true
  br i1 %cmp1.i, label %land.lhs.true22, label %if.end17.thread.land.lhs.true86_crit_edge

if.end17.thread.land.lhs.true86_crit_edge:        ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true86

land.lhs.true22:                                  ; preds = %if.end17.thread
  %26 = ptrtoint ptr %vbus_provider to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load23 = load i8, ptr %vbus_provider, align 4
  %27 = and i8 %bf.load23, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool26.not = icmp eq i8 %27, 0
  br i1 %tobool26.not, label %land.lhs.true50, label %do.body28

do.body28:                                        ; preds = %land.lhs.true22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_usb_detect.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_usb_detect, %if.then40)) #6
          to label %do.end44 [label %if.then40], !srcloc !155

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %dev41 = getelementptr i8, ptr %work, i32 -264
  %28 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev41, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_usb_detect.__UNIQUE_ID_ddebug295, ptr noundef %29, ptr noundef nonnull @.str.10) #6
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body28
  %call.i257 = call i32 @musb_mailbox(i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %tobool.not.i258 = icmp eq i32 %call.i257, 0
  br i1 %tobool.not.i258, label %do.end44.cleanup_crit_edge, label %do.body.i259

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i259:                                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_usb_detect, %if.then5.i261)) #6
          to label %cleanup [label %if.then5.i261], !srcloc !155

if.then5.i261:                                    ; preds = %do.body.i259
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i260 = getelementptr i8, ptr %work, i32 -264
  %30 = ptrtoint ptr %dev.i260 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i260, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, ptr noundef %31, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %call.i257) #6
  br label %cleanup

land.lhs.true50:                                  ; preds = %land.lhs.true22
  %32 = ptrtoint ptr %vbus_provider to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load52 = load i8, ptr %vbus_provider, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load52)
  %tobool55.not = icmp sgt i8 %bf.load52, -1
  br i1 %tobool55.not, label %do.body57, label %land.lhs.true50.land.lhs.true86_crit_edge

land.lhs.true50.land.lhs.true86_crit_edge:        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true86

do.body57:                                        ; preds = %land.lhs.true50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_usb_detect.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_usb_detect, %if.then69)) #6
          to label %do.end73 [label %if.then69], !srcloc !155

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  %dev70 = getelementptr i8, ptr %work, i32 -264
  %33 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev70, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_usb_detect.__UNIQUE_ID_ddebug296, ptr noundef %34, ptr noundef nonnull @.str.11) #6
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %do.body57
  %35 = ptrtoint ptr %vbus_provider to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load75 = load i8, ptr %vbus_provider, align 4
  %bf.set = or i8 %bf.load75, 64
  store i8 %bf.set, ptr %vbus_provider, align 4
  %call77 = call fastcc i32 @cpcap_usb_set_usb_mode(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %do.end73.do.end187_crit_edge

do.end73.do.end187_crit_edge:                     ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end187

if.end80:                                         ; preds = %do.end73
  %call.i263 = call i32 @musb_mailbox(i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %tobool.not.i264 = icmp eq i32 %call.i263, 0
  br i1 %tobool.not.i264, label %if.end80.cpcap_usb_try_musb_mailbox.exit268_crit_edge, label %do.body.i265

if.end80.cpcap_usb_try_musb_mailbox.exit268_crit_edge: ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpcap_usb_try_musb_mailbox.exit268

do.body.i265:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_usb_detect, %if.then5.i267)) #6
          to label %cpcap_usb_try_musb_mailbox.exit268 [label %if.then5.i267], !srcloc !155

if.then5.i267:                                    ; preds = %do.body.i265
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i266 = getelementptr i8, ptr %work, i32 -264
  %36 = ptrtoint ptr %dev.i266 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i266, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, ptr noundef %37, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %call.i263) #6
  br label %cpcap_usb_try_musb_mailbox.exit268

cpcap_usb_try_musb_mailbox.exit268:               ; preds = %if.then5.i267, %do.body.i265, %if.end80.cpcap_usb_try_musb_mailbox.exit268_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %work, i32 noundef 100) #6
  br label %cleanup

land.lhs.true86:                                  ; preds = %land.lhs.true50.land.lhs.true86_crit_edge, %if.end17.thread.land.lhs.true86_crit_edge, %land.lhs.true.thread.land.lhs.true86_crit_edge
  %docked87 = getelementptr i8, ptr %work, i32 140
  %39 = ptrtoint ptr %docked87 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load88 = load i8, ptr %docked87, align 4
  %40 = and i8 %bf.load88, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool92.not = icmp eq i8 %40, 0
  br i1 %tobool92.not, label %do.body94, label %land.lhs.true86.if.end124_crit_edge

land.lhs.true86.if.end124_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

do.body94:                                        ; preds = %land.lhs.true86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_usb_detect.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_usb_detect, %if.then106)) #6
          to label %do.end110 [label %if.then106], !srcloc !155

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  %dev107 = getelementptr i8, ptr %work, i32 -264
  %41 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev107, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_usb_detect.__UNIQUE_ID_ddebug297, ptr noundef %42, ptr noundef nonnull @.str.12) #6
  br label %do.end110

do.end110:                                        ; preds = %if.then106, %do.body94
  %43 = ptrtoint ptr %docked87 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load112 = load i8, ptr %docked87, align 4
  %bf.set114 = or i8 %bf.load112, -128
  store i8 %bf.set114, ptr %docked87, align 4
  %call115 = call fastcc i32 @cpcap_usb_set_usb_mode(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %do.end110.do.end187_crit_edge

do.end110.do.end187_crit_edge:                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end187

if.end118:                                        ; preds = %do.end110
  %call.i269 = call i32 @musb_mailbox(i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %tobool.not.i270 = icmp eq i32 %call.i269, 0
  br i1 %tobool.not.i270, label %if.end118.cpcap_usb_try_musb_mailbox.exit274_crit_edge, label %do.body.i271

if.end118.cpcap_usb_try_musb_mailbox.exit274_crit_edge: ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpcap_usb_try_musb_mailbox.exit274

do.body.i271:                                     ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_usb_detect, %if.then5.i273)) #6
          to label %cpcap_usb_try_musb_mailbox.exit274 [label %if.then5.i273], !srcloc !155

if.then5.i273:                                    ; preds = %do.body.i271
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i272 = getelementptr i8, ptr %work, i32 -264
  %44 = ptrtoint ptr %dev.i272 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i272, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, ptr noundef %45, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %call.i269) #6
  br label %cpcap_usb_try_musb_mailbox.exit274

cpcap_usb_try_musb_mailbox.exit274:               ; preds = %if.then5.i273, %do.body.i271, %if.end118.cpcap_usb_try_musb_mailbox.exit274_crit_edge
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 4
  %call.i275 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 3592, i32 noundef 384, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool121.not = icmp eq i32 %call.i275, 0
  br i1 %tobool121.not, label %cpcap_usb_try_musb_mailbox.exit274.cleanup_crit_edge, label %cpcap_usb_try_musb_mailbox.exit274.do.end187_crit_edge

cpcap_usb_try_musb_mailbox.exit274.do.end187_crit_edge: ; preds = %cpcap_usb_try_musb_mailbox.exit274
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end187

cpcap_usb_try_musb_mailbox.exit274.cleanup_crit_edge: ; preds = %cpcap_usb_try_musb_mailbox.exit274
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end124:                                        ; preds = %land.lhs.true86.if.end124_crit_edge, %cpcap_usb_vbus_valid.exit.thread.if.end124_crit_edge, %cpcap_usb_vbus_valid.exit.if.end124_crit_edge
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 4
  %call.i276 = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 3592, i32 noundef 384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool127.not = icmp eq i32 %call.i276, 0
  br i1 %tobool127.not, label %if.end129, label %if.end124.do.end187_crit_edge

if.end124.do.end187_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end187

if.end129:                                        ; preds = %if.end124
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i277) #6
  %50 = ptrtoint ptr %value.i277 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %value.i277, align 4
  %51 = ptrtoint ptr %vbus.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vbus.i, align 4
  %call.i279 = call i32 @iio_read_channel_processed(ptr noundef %52, ptr noundef nonnull %value.i277) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i279)
  %cmp.i280 = icmp sgt i32 %call.i279, -1
  br i1 %cmp.i280, label %cpcap_usb_vbus_valid.exit286, label %cpcap_usb_vbus_valid.exit286.thread

cpcap_usb_vbus_valid.exit286.thread:              ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i283 = getelementptr i8, ptr %work, i32 -264
  %53 = ptrtoint ptr %dev.i283 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i283, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.18, i32 noundef %call.i279) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i277) #6
  br label %if.end155

cpcap_usb_vbus_valid.exit286:                     ; preds = %if.end129
  %55 = ptrtoint ptr %value.i277 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %value.i277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3900, i32 %56)
  %cmp1.i281 = icmp sgt i32 %56, 3900
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i277) #6
  br i1 %cmp1.i281, label %do.body134, label %cpcap_usb_vbus_valid.exit286.if.end155_crit_edge

cpcap_usb_vbus_valid.exit286.if.end155_crit_edge: ; preds = %cpcap_usb_vbus_valid.exit286
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155

do.body134:                                       ; preds = %cpcap_usb_vbus_valid.exit286
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_usb_detect.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_usb_detect, %if.then146)) #6
          to label %do.end150 [label %if.then146], !srcloc !155

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #8
  %dev147 = getelementptr i8, ptr %work, i32 -264
  %57 = ptrtoint ptr %dev147 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev147, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_usb_detect.__UNIQUE_ID_ddebug298, ptr noundef %58, ptr noundef nonnull @.str.13) #6
  br label %do.end150

do.end150:                                        ; preds = %if.then146, %do.body134
  %call151 = call fastcc i32 @cpcap_usb_set_usb_mode(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %do.end150.do.end187_crit_edge

do.end150.do.end187_crit_edge:                    ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end187

if.end154:                                        ; preds = %do.end150
  %call.i287 = call i32 @musb_mailbox(i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287)
  %tobool.not.i288 = icmp eq i32 %call.i287, 0
  br i1 %tobool.not.i288, label %if.end154.cleanup_crit_edge, label %do.body.i289

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i289:                                     ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_usb_detect, %if.then5.i291)) #6
          to label %cleanup [label %if.then5.i291], !srcloc !155

if.then5.i291:                                    ; preds = %do.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i290 = getelementptr i8, ptr %work, i32 -264
  %59 = ptrtoint ptr %dev.i290 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i290, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, ptr noundef %60, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %call.i287) #6
  br label %cleanup

if.end155:                                        ; preds = %cpcap_usb_vbus_valid.exit286.if.end155_crit_edge, %cpcap_usb_vbus_valid.exit286.thread
  %vbus_provider156 = getelementptr i8, ptr %work, i32 140
  %61 = ptrtoint ptr %vbus_provider156 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load157 = load i8, ptr %vbus_provider156, align 4
  %bf.clear162 = and i8 %bf.load157, 63
  store i8 %bf.clear162, ptr %vbus_provider156, align 4
  %call.i293 = call i32 @musb_mailbox(i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293)
  %tobool.not.i294 = icmp eq i32 %call.i293, 0
  br i1 %tobool.not.i294, label %if.end155.cpcap_usb_try_musb_mailbox.exit298_crit_edge, label %do.body.i295

if.end155.cpcap_usb_try_musb_mailbox.exit298_crit_edge: ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpcap_usb_try_musb_mailbox.exit298

do.body.i295:                                     ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_usb_detect, %if.then5.i297)) #6
          to label %cpcap_usb_try_musb_mailbox.exit298 [label %if.then5.i297], !srcloc !155

if.then5.i297:                                    ; preds = %do.body.i295
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i296 = getelementptr i8, ptr %work, i32 -264
  %62 = ptrtoint ptr %dev.i296 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i296, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, ptr noundef %63, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %call.i293) #6
  br label %cpcap_usb_try_musb_mailbox.exit298

cpcap_usb_try_musb_mailbox.exit298:               ; preds = %if.then5.i297, %do.body.i295, %if.end155.cpcap_usb_try_musb_mailbox.exit298_crit_edge
  %call164 = call fastcc i32 @cpcap_usb_set_uart_mode(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %do.body168, label %cpcap_usb_try_musb_mailbox.exit298.do.end187_crit_edge

cpcap_usb_try_musb_mailbox.exit298.do.end187_crit_edge: ; preds = %cpcap_usb_try_musb_mailbox.exit298
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end187

do.body168:                                       ; preds = %cpcap_usb_try_musb_mailbox.exit298
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_usb_detect.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_usb_detect, %if.then180)) #6
          to label %cleanup [label %if.then180], !srcloc !155

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #8
  %dev181 = getelementptr i8, ptr %work, i32 -264
  %64 = ptrtoint ptr %dev181 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev181, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_usb_detect.__UNIQUE_ID_ddebug299, ptr noundef %65, ptr noundef nonnull @.str.14) #6
  br label %cleanup

do.end187:                                        ; preds = %cpcap_usb_try_musb_mailbox.exit298.do.end187_crit_edge, %do.end150.do.end187_crit_edge, %if.end124.do.end187_crit_edge, %cpcap_usb_try_musb_mailbox.exit274.do.end187_crit_edge, %do.end110.do.end187_crit_edge, %do.end73.do.end187_crit_edge, %cpcap_usb_try_musb_mailbox.exit.do.end187_crit_edge
  %error.0 = phi i32 [ %call.i256, %cpcap_usb_try_musb_mailbox.exit.do.end187_crit_edge ], [ %call.i276, %if.end124.do.end187_crit_edge ], [ %call151, %do.end150.do.end187_crit_edge ], [ %call164, %cpcap_usb_try_musb_mailbox.exit298.do.end187_crit_edge ], [ %call115, %do.end110.do.end187_crit_edge ], [ %call.i275, %cpcap_usb_try_musb_mailbox.exit274.do.end187_crit_edge ], [ %call77, %do.end73.do.end187_crit_edge ]
  %dev188 = getelementptr i8, ptr %work, i32 -264
  %66 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev188, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.15, i32 noundef %error.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end187, %if.then180, %do.body168, %if.then5.i291, %do.body.i289, %if.end154.cleanup_crit_edge, %cpcap_usb_try_musb_mailbox.exit274.cleanup_crit_edge, %cpcap_usb_try_musb_mailbox.exit268, %if.then5.i261, %do.body.i259, %do.end44.cleanup_crit_edge, %cpcap_usb_try_musb_mailbox.exit.cleanup_crit_edge, %cpcap_phy_get_ints_state.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_usb_init_optional_pins(ptr nocapture noundef %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @devm_pinctrl_get(ptr noundef %1) #6
  %pins = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 4
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %pins, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef %5) #9
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pins, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call8 = tail call ptr @pinctrl_lookup_state(ptr noundef %call, ptr noundef nonnull @.str.31) #6
  %pins_ulpi = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 5
  %7 = ptrtoint ptr %pins_ulpi to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %pins_ulpi, align 4
  %cmp.i66 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %do.end13, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.33) #9
  %10 = ptrtoint ptr %pins_ulpi to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pins_ulpi, align 4
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end.if.end16_crit_edge
  %11 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pins, align 4
  %call18 = tail call ptr @pinctrl_lookup_state(ptr noundef %12, ptr noundef nonnull @.str.35) #6
  %pins_utmi = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 6
  %13 = ptrtoint ptr %pins_utmi to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %pins_utmi, align 4
  %cmp.i67 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %do.end23, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.37) #9
  %16 = ptrtoint ptr %pins_utmi to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pins_utmi, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.end16.if.end26_crit_edge
  %17 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pins, align 4
  %call28 = tail call ptr @pinctrl_lookup_state(ptr noundef %18, ptr noundef nonnull @.str.39) #6
  %pins_uart = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 7
  %19 = ptrtoint ptr %pins_uart to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call28, ptr %pins_uart, align 4
  %cmp.i68 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.end36.thread, label %if.end36

if.end36.thread:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.41) #9
  %22 = ptrtoint ptr %pins_uart to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pins_uart, align 4
  br label %return

if.end36:                                         ; preds = %if.end26
  %tobool.not = icmp eq ptr %call28, null
  br i1 %tobool.not, label %if.end36.return_crit_edge, label %if.then38

if.end36.return_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pins, align 4
  %call41 = tail call i32 @pinctrl_select_state(ptr noundef %24, ptr noundef nonnull %call28) #6
  br label %return

return:                                           ; preds = %if.then38, %if.end36.return_crit_edge, %if.end36.thread, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call41, %if.then38 ], [ 0, %if.end36.return_crit_edge ], [ 0, %if.end36.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpcap_usb_init_optional_gpios(ptr nocapture noundef %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @devm_gpiod_get_index(ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 7) #6
  %arrayidx = getelementptr %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 8, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef %5) #9
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end, %entry.for.inc_crit_edge
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.1 = tail call ptr @devm_gpiod_get_index(ptr noundef %8, ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef 7) #6
  %arrayidx.1 = getelementptr %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.1, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %call.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %do.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %call.1 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.44, i32 noundef 1, i32 noundef %12) #9
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_usb_init_iio(ptr nocapture noundef %ddata) unnamed_addr #2 align 64 {
entry:
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %type, align 4, !annotation !156
  %dev = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call = tail call ptr @devm_iio_channel_get(ptr noundef %2, ptr noundef nonnull @.str.46) #6
  %vbus = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 9
  %3 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %vbus, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call to i32
  br label %do.end

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.end7

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end7:                                          ; preds = %if.end
  %call9 = call i32 @iio_get_channel_type(ptr noundef %call, ptr noundef nonnull %type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end7.do.end_crit_edge, label %if.end11

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end11:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp12.not = icmp eq i32 %8, 0
  br i1 %cmp12.not, label %if.end11.cleanup_crit_edge, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end11.do.end_crit_edge, %if.end7.do.end_crit_edge, %if.end.do.end_crit_edge, %if.then
  %error.0 = phi i32 [ %4, %if.then ], [ %call9, %if.end7.do.end_crit_edge ], [ -6, %if.end.do.end_crit_edge ], [ -22, %if.end11.do.end_crit_edge ]
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.47, i32 noundef %error.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %do.end ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_usb_init_interrupts(ptr noundef %pdev, ptr noundef %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x ptr], ptr @cpcap_phy_irqs, i32 0, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call1.i = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %call.i, ptr noundef null, ptr noundef nonnull @cpcap_phy_irq_thread, i32 noundef 8320, ptr noundef %1, ptr noundef %ddata) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.cond, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef %1, i32 noundef %call1.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %do.end.i ], [ -19, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_usb_set_usb_mode(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio.i = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 8
  %0 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cpcap_usb_gpio_set_mode.exit_crit_edge, label %lor.lhs.false.i

entry.cpcap_usb_gpio_set_mode.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpcap_usb_gpio_set_mode.exit

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %3, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.cpcap_usb_gpio_set_mode.exit_crit_edge, label %if.end.i

lor.lhs.false.i.cpcap_usb_gpio_set_mode.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpcap_usb_gpio_set_mode.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef nonnull %1, i32 noundef 0) #6
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #6
  br label %cpcap_usb_gpio_set_mode.exit

cpcap_usb_gpio_set_mode.exit:                     ; preds = %if.end.i, %lor.lhs.false.i.cpcap_usb_gpio_set_mode.exit_crit_edge, %entry.cpcap_usb_gpio_set_mode.exit_crit_edge
  %pins_utmi = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 6
  %6 = ptrtoint ptr %pins_utmi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins_utmi, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %cpcap_usb_gpio_set_mode.exit.if.end8_crit_edge, label %if.then2

cpcap_usb_gpio_set_mode.exit.if.end8_crit_edge:   ; preds = %cpcap_usb_gpio_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then2:                                         ; preds = %cpcap_usb_gpio_set_mode.exit
  %pins = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 4
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins, align 4
  %call4 = tail call i32 @pinctrl_select_state(ptr noundef %9, ptr noundef nonnull %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %do.end

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.22, i32 noundef %call4) #9
  br label %cleanup

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %cpcap_usb_gpio_set_mode.exit.if.end8_crit_edge
  %12 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddata, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 3584, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.do.end29_crit_edge

if.end8.do.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

if.end12:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddata, align 4
  %call.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 3592, i32 noundef 31, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool15.not = icmp eq i32 %call.i50, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.do.end29_crit_edge

if.end12.do.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

if.end17:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddata, align 4
  %call.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 3588, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool20.not = icmp eq i32 %call.i51, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.do.end29_crit_edge

if.end17.do.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

if.end22:                                         ; preds = %if.end17
  %18 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpio.i, align 4
  %tobool.not.i53 = icmp eq ptr %19, null
  br i1 %tobool.not.i53, label %if.end22.cleanup_crit_edge, label %lor.lhs.false.i56

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i56:                                ; preds = %if.end22
  %arrayidx2.i54 = getelementptr %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %arrayidx2.i54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx2.i54, align 4
  %tobool3.not.i55 = icmp eq ptr %21, null
  br i1 %tobool3.not.i55, label %lor.lhs.false.i56.cleanup_crit_edge, label %if.end.i57

lor.lhs.false.i56.cleanup_crit_edge:              ; preds = %lor.lhs.false.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i57:                                       ; preds = %lor.lhs.false.i56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef nonnull %19, i32 noundef 1) #6
  %22 = ptrtoint ptr %arrayidx2.i54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx2.i54, align 4
  tail call void @gpiod_set_value(ptr noundef %23, i32 noundef 1) #6
  br label %cleanup

do.end29:                                         ; preds = %if.end17.do.end29_crit_edge, %if.end12.do.end29_crit_edge, %if.end8.do.end29_crit_edge
  %error.0 = phi i32 [ %call.i, %if.end8.do.end29_crit_edge ], [ %call.i50, %if.end12.do.end29_crit_edge ], [ %call.i51, %if.end17.do.end29_crit_edge ]
  %dev30 = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 1
  %24 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %error.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end.i57, %lor.lhs.false.i56.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %error.0, %do.end29 ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %lor.lhs.false.i56.cleanup_crit_edge ], [ 0, %if.end.i57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_usb_set_uart_mode(ptr nocapture noundef readonly %ddata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio.i = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 8
  %0 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cpcap_usb_gpio_set_mode.exit_crit_edge, label %lor.lhs.false.i

entry.cpcap_usb_gpio_set_mode.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpcap_usb_gpio_set_mode.exit

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %3, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.cpcap_usb_gpio_set_mode.exit_crit_edge, label %if.end.i

lor.lhs.false.i.cpcap_usb_gpio_set_mode.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpcap_usb_gpio_set_mode.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef nonnull %1, i32 noundef 0) #6
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #6
  br label %cpcap_usb_gpio_set_mode.exit

cpcap_usb_gpio_set_mode.exit:                     ; preds = %if.end.i, %lor.lhs.false.i.cpcap_usb_gpio_set_mode.exit_crit_edge, %entry.cpcap_usb_gpio_set_mode.exit_crit_edge
  %pins_uart = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 7
  %6 = ptrtoint ptr %pins_uart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins_uart, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %cpcap_usb_gpio_set_mode.exit.if.end8_crit_edge, label %if.then2

cpcap_usb_gpio_set_mode.exit.if.end8_crit_edge:   ; preds = %cpcap_usb_gpio_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then2:                                         ; preds = %cpcap_usb_gpio_set_mode.exit
  %pins = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 4
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins, align 4
  %call4 = tail call i32 @pinctrl_select_state(ptr noundef %9, ptr noundef nonnull %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then2.do.end_crit_edge

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %cpcap_usb_gpio_set_mode.exit.if.end8_crit_edge
  %10 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddata, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 3584, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.do.end_crit_edge

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end12:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddata, align 4
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 3588, i32 noundef 65535, i32 noundef 257, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool15.not = icmp eq i32 %call.i42, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.do.end_crit_edge

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end17:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddata, align 4
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 3592, i32 noundef 32767, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool20.not = icmp eq i32 %call.i43, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.do.end_crit_edge

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end22:                                         ; preds = %if.end17
  %16 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpio.i, align 4
  %tobool.not.i45 = icmp eq ptr %17, null
  br i1 %tobool.not.i45, label %if.end22.cleanup_crit_edge, label %lor.lhs.false.i48

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i48:                                ; preds = %if.end22
  %arrayidx2.i46 = getelementptr %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %arrayidx2.i46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx2.i46, align 4
  %tobool3.not.i47 = icmp eq ptr %19, null
  br i1 %tobool3.not.i47, label %lor.lhs.false.i48.cleanup_crit_edge, label %if.end.i49

lor.lhs.false.i48.cleanup_crit_edge:              ; preds = %lor.lhs.false.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i49:                                       ; preds = %lor.lhs.false.i48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef nonnull %17, i32 noundef 0) #6
  %20 = ptrtoint ptr %arrayidx2.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx2.i46, align 4
  tail call void @gpiod_set_value(ptr noundef %21, i32 noundef 0) #6
  br label %cleanup

do.end:                                           ; preds = %if.end17.do.end_crit_edge, %if.end12.do.end_crit_edge, %if.end8.do.end_crit_edge, %if.then2.do.end_crit_edge
  %error.0 = phi i32 [ %call4, %if.then2.do.end_crit_edge ], [ %call.i, %if.end8.do.end_crit_edge ], [ %call.i42, %if.end12.do.end_crit_edge ], [ %call.i43, %if.end17.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %ddata, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27, i32 noundef %error.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i49, %lor.lhs.false.i48.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %do.end ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %lor.lhs.false.i48.cleanup_crit_edge ], [ 0, %if.end.i49 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_mailbox(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_phy_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %data, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #6
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %detect_work = getelementptr inbounds %struct.cpcap_phy_ddata, ptr %data, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i4 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %detect_work, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !81, !82, !84, !86, !87, !88, !90, !92, !93, !94, !96, !98, !99, !100, !102, !104, !105, !106, !107, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !143, !144}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__initcall__kmod_phy_cpcap_usb__300_731_cpcap_usb_phy_driver_init6, !1, !"__initcall__kmod_phy_cpcap_usb__300_731_cpcap_usb_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 731, i32 1}
!2 = !{ptr @__exitcall_cpcap_usb_phy_driver_exit, !1, !"__exitcall_cpcap_usb_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias301, !4, !"__UNIQUE_ID_alias301", i1 false, i1 false}
!4 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 733, i32 1}
!5 = !{ptr @__UNIQUE_ID_author302, !6, !"__UNIQUE_ID_author302", i1 false, i1 false}
!6 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 734, i32 1}
!7 = !{ptr @__UNIQUE_ID_description303, !8, !"__UNIQUE_ID_description303", i1 false, i1 false}
!8 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 735, i32 1}
!9 = !{ptr @__UNIQUE_ID_file304, !10, !"__UNIQUE_ID_file304", i1 false, i1 false}
!10 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 736, i32 1}
!11 = !{ptr @__UNIQUE_ID_license305, !10, !"__UNIQUE_ID_license305", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 726, i32 11}
!14 = !{ptr @cpcap_usb_phy_driver, !15, !"cpcap_usb_phy_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 722, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 645, i32 21}
!18 = !{ptr @cpcap_usb_phy_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 651, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cpcap_usb_phy_probe.__key.3, !19, !"__key", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 654, i32 47}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 241, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cpcap_usb_detect.__UNIQUE_ID_ddebug294, !26, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 256, i32 3}
!33 = !{ptr @cpcap_usb_detect.__UNIQUE_ID_ddebug295, !32, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 265, i32 3}
!36 = !{ptr @cpcap_usb_detect.__UNIQUE_ID_ddebug296, !35, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 287, i32 3}
!39 = !{ptr @cpcap_usb_detect.__UNIQUE_ID_ddebug297, !38, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 317, i32 3}
!42 = !{ptr @cpcap_usb_detect.__UNIQUE_ID_ddebug298, !41, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 335, i32 2}
!45 = !{ptr @cpcap_usb_detect.__UNIQUE_ID_ddebug299, !44, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 340, i32 2}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cpcap_usb_detect._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @cpcap_usb_detect._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 148, i32 2}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @cpcap_usb_vbus_valid._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @cpcap_usb_vbus_valid._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 220, i32 2}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cpcap_usb_try_musb_mailbox.__UNIQUE_ID_ddebug293, !58, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 480, i32 4}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @cpcap_usb_set_usb_mode._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @cpcap_usb_set_usb_mode._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 515, i32 2}
!68 = !{ptr @cpcap_usb_set_usb_mode._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cpcap_usb_set_usb_mode._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 463, i32 2}
!72 = !{ptr @cpcap_usb_set_uart_mode._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @cpcap_usb_set_uart_mode._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @ops, !75, !"ops", i1 false, i1 false}
!75 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 172, i32 29}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 524, i32 3}
!78 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cpcap_usb_init_optional_pins._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @cpcap_usb_init_optional_pins._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 531, i32 55}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 533, i32 3}
!86 = !{ptr @cpcap_usb_init_optional_pins._entry.32, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @cpcap_usb_init_optional_pins._entry_ptr.34, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 537, i32 55}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 539, i32 3}
!92 = !{ptr @cpcap_usb_init_optional_pins._entry.36, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @cpcap_usb_init_optional_pins._entry_ptr.38, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 543, i32 55}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 545, i32 3}
!98 = !{ptr @cpcap_usb_init_optional_pins._entry.40, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @cpcap_usb_init_optional_pins._entry_ptr.42, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 560, i32 53}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 563, i32 4}
!104 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @cpcap_usb_init_optional_gpios._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @cpcap_usb_init_optional_gpios._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 575, i32 49}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 598, i32 2}
!111 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @cpcap_usb_init_iio._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @cpcap_usb_init_iio._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 371, i32 3}
!116 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cpcap_usb_init_irq._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @cpcap_usb_init_irq._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 382, i32 2}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 382, i32 15}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 385, i32 2}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 385, i32 13}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 385, i32 24}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 385, i32 35}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 385, i32 46}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 388, i32 2}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 388, i32 8}
!137 = !{ptr @cpcap_phy_irqs, !138, !"cpcap_phy_irqs", i1 false, i1 false}
!138 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 380, i32 27}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 711, i32 3}
!141 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @cpcap_usb_phy_remove._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @cpcap_usb_phy_remove._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @cpcap_usb_phy_id_table, !145, !"cpcap_usb_phy_id_table", i1 false, i1 false}
!145 = !{!"../drivers/phy/motorola/phy-cpcap-usb.c", i32 605, i32 34}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{i64 2148737000, i64 2148737005, i64 2148737018, i64 2148737062, i64 2148737096, i64 2148737117}
!156 = !{!"auto-init"}
