; ModuleID = '/llk/IR_all_yes/drivers/watchdog/alim7101_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/alim7101_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_timeout = internal constant [21 x i8] c"alim7101_wdt.timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } { i32 30, [28 x i8] zeroinitializer }, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype236 = internal constant [34 x i8] c"alim7101_wdt.parmtype=timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout237 = internal constant [86 x i8] c"alim7101_wdt.parm=timeout:Watchdog timeout in seconds. (1<=timeout<=3600, default=30)\00", section ".modinfo", align 1
@__param_str_use_gpio = internal constant [22 x i8] c"alim7101_wdt.use_gpio\00", align 1
@use_gpio = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_use_gpio = internal constant %struct.kernel_param { ptr @__param_str_use_gpio, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @use_gpio } }, section "__param", align 4
@__UNIQUE_ID_use_gpiotype238 = internal constant [35 x i8] c"alim7101_wdt.parmtype=use_gpio:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_gpio239 = internal constant [82 x i8] c"alim7101_wdt.parm=use_gpio:Use the gpio watchdog (required by old cobalt boards).\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [22 x i8] c"alim7101_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype240 = internal constant [36 x i8] c"alim7101_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout241 = internal constant [79 x i8] c"alim7101_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@wdt_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 130, ptr @.str.6, ptr @wdt_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@wdt_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @wdt_notify_sys, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@wdt_restart_handler = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @wdt_restart_handle, ptr null, i32 128 }, [20 x i8] zeroinitializer }, align 32
@alim7101_pmu = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_alim7101_wdt__242_438_alim7101_wdt_init6 = internal global ptr @alim7101_wdt_init, section ".initcall6.init", align 4
@__exitcall_alim7101_wdt_unload = internal global ptr @alim7101_wdt_unload, section ".exitcall.exit", align 4
@alim7101_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4281, i32 5427, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4281, i32 28929, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author243 = internal constant [31 x i8] c"alim7101_wdt.author=Steve Hill\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [70 x i8] c"alim7101_wdt.description=ALi M7101 PMU Computer Watchdog Timer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [48 x i8] c"alim7101_wdt.file=drivers/watchdog/alim7101_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [25 x i8] c"alim7101_wdt.license=GPL\00", section ".modinfo", align 1
@timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @wdt_timer_ping, i32 0, %struct.lockdep_map { ptr @.str.3, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@wdt_turnoff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016alim7101_wdt: Watchdog timer is now disabled...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wdt_turnoff\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/watchdog/alim7101_wdt.c\00", [32 x i8] zeroinitializer }, align 32
@wdt_turnoff._entry_ptr = internal global ptr @wdt_turnoff._entry, section ".printk_index", align 4
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/watchdog/alim7101_wdt.c:75\00", [61 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@next_heartbeat = internal global { i32, [28 x i8] } zeroinitializer, align 32
@wdt_timer_ping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014alim7101_wdt: Heartbeat lost! Will not ping the watchdog\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdt_timer_ping\00", [17 x i8] zeroinitializer }, align 32
@wdt_timer_ping._entry_ptr = internal global ptr @wdt_timer_ping._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@wdt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @fop_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fop_ioctl, ptr null, ptr null, i32 0, ptr @fop_open, ptr null, ptr @fop_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@wdt_expect_close = internal global { i1, [31 x i8] } zeroinitializer, align 32
@fop_ioctl.ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 1, [32 x i8] c"ALiM7101\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@wdt_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016alim7101_wdt: Watchdog timer is now enabled\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wdt_startup\00", [20 x i8] zeroinitializer }, align 32
@wdt_startup._entry_ptr = internal global ptr @wdt_startup._entry, section ".printk_index", align 4
@wdt_is_open = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fop_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\012alim7101_wdt: device file closed unexpectedly. Will not stop the WDT!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fop_close\00", [22 x i8] zeroinitializer }, align 32
@fop_close._entry_ptr = internal global ptr @fop_close._entry, section ".printk_index", align 4
@alim7101_wdt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016alim7101_wdt: Steve Hill <steve@navaho.co.uk>\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alim7101_wdt_init\00", [46 x i8] zeroinitializer }, align 32
@alim7101_wdt_init._entry_ptr = internal global ptr @alim7101_wdt_init._entry, section ".printk_index", align 4
@alim7101_wdt_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016alim7101_wdt: ALi M7101 PMU not present - WDT not set\0A\00", [39 x i8] zeroinitializer }, align 32
@alim7101_wdt_init._entry_ptr.18 = internal global ptr @alim7101_wdt_init._entry.16, section ".printk_index", align 4
@alim7101_wdt_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016alim7101_wdt: ALi 1543 South-Bridge not present - WDT not set\0A\00", [63 x i8] zeroinitializer }, align 32
@alim7101_wdt_init._entry_ptr.21 = internal global ptr @alim7101_wdt_init._entry.19, section ".printk_index", align 4
@alim7101_wdt_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"\016alim7101_wdt: Detected old alim7101 revision 'a1d'.  If this is a cobalt board, set the 'use_gpio' module parameter.\0A\00", [40 x i8] zeroinitializer }, align 32
@alim7101_wdt_init._entry_ptr.24 = internal global ptr @alim7101_wdt_init._entry.22, section ".printk_index", align 4
@alim7101_wdt_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\016alim7101_wdt: ALi 1543 South-Bridge does not have the correct revision number (???1001?) - WDT not set\0A\00", [54 x i8] zeroinitializer }, align 32
@alim7101_wdt_init._entry_ptr.27 = internal global ptr @alim7101_wdt_init._entry.25, section ".printk_index", align 4
@alim7101_wdt_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016alim7101_wdt: timeout value must be 1 <= x <= 3600, using %d\0A\00", [32 x i8] zeroinitializer }, align 32
@alim7101_wdt_init._entry_ptr.30 = internal global ptr @alim7101_wdt_init._entry.28, section ".printk_index", align 4
@alim7101_wdt_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.15, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013alim7101_wdt: cannot register reboot notifier (err=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@alim7101_wdt_init._entry_ptr.33 = internal global ptr @alim7101_wdt_init._entry.31, section ".printk_index", align 4
@alim7101_wdt_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013alim7101_wdt: cannot register restart handler (err=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@alim7101_wdt_init._entry_ptr.36 = internal global ptr @alim7101_wdt_init._entry.34, section ".printk_index", align 4
@alim7101_wdt_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.15, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013alim7101_wdt: cannot register miscdev on minor=%d (err=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@alim7101_wdt_init._entry_ptr.39 = internal global ptr @alim7101_wdt_init._entry.37, section ".printk_index", align 4
@alim7101_wdt_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.15, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016alim7101_wdt: WDT driver for ALi M7101 initialised. timeout=%d sec (nowayout=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@alim7101_wdt_init._entry_ptr.42 = internal global ptr @alim7101_wdt_init._entry.40, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 5, i64 0, i64 18]
@__sancov_gen_cov_switch_values.43 = internal global [9 x i64] [i64 7, i64 32, i64 2147768065, i64 2147768066, i64 2147768068, i64 2147768069, i64 2147768071, i64 2150127360, i64 3221509894]
@___asan_gen_.44 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 63, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [9 x i8] c"use_gpio\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 69, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 81, i32 13 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"wdt_miscdev\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 300, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"wdt_notifier\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 346, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"wdt_restart_handler\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 323, i32 30 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"alim7101_pmu\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 79, i32 24 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"alim7101_pci_tbl\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 441, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 171, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 75, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"next_heartbeat\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 76, i32 22 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 114, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 302, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant [9 x i8] c"wdt_fops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 290, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"wdt_expect_close\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 238, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 174, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 163, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"wdt_is_open\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 77, i32 22 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 227, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 366, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 370, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 380, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 387, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 392, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 399, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 405, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 411, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 417, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [35 x i8] c"../drivers/watchdog/alim7101_wdt.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 425, i32 2 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__UNIQUE_ID_nowayout241, ptr @__UNIQUE_ID_nowayouttype240, ptr @__UNIQUE_ID_timeout237, ptr @__UNIQUE_ID_timeouttype236, ptr @__UNIQUE_ID_use_gpio239, ptr @__UNIQUE_ID_use_gpiotype238, ptr @__exitcall_alim7101_wdt_unload, ptr @__initcall__kmod_alim7101_wdt__242_438_alim7101_wdt_init6, ptr @__param_nowayout, ptr @__param_timeout, ptr @__param_use_gpio, ptr @alim7101_pci_tbl, ptr @alim7101_wdt_init._entry, ptr @alim7101_wdt_init._entry.16, ptr @alim7101_wdt_init._entry.19, ptr @alim7101_wdt_init._entry.22, ptr @alim7101_wdt_init._entry.25, ptr @alim7101_wdt_init._entry.28, ptr @alim7101_wdt_init._entry.31, ptr @alim7101_wdt_init._entry.34, ptr @alim7101_wdt_init._entry.37, ptr @alim7101_wdt_init._entry.40, ptr @alim7101_wdt_init._entry_ptr, ptr @alim7101_wdt_init._entry_ptr.18, ptr @alim7101_wdt_init._entry_ptr.21, ptr @alim7101_wdt_init._entry_ptr.24, ptr @alim7101_wdt_init._entry_ptr.27, ptr @alim7101_wdt_init._entry_ptr.30, ptr @alim7101_wdt_init._entry_ptr.33, ptr @alim7101_wdt_init._entry_ptr.36, ptr @alim7101_wdt_init._entry_ptr.39, ptr @alim7101_wdt_init._entry_ptr.42, ptr @alim7101_wdt_unload, ptr @fop_close._entry, ptr @fop_close._entry_ptr, ptr @wdt_startup._entry, ptr @wdt_startup._entry_ptr, ptr @wdt_timer_ping._entry, ptr @wdt_timer_ping._entry_ptr, ptr @wdt_turnoff._entry, ptr @wdt_turnoff._entry_ptr, ptr @timeout, ptr @use_gpio, ptr @nowayout, ptr @wdt_miscdev, ptr @wdt_notifier, ptr @wdt_restart_handler, ptr @alim7101_pmu, ptr @timer, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @next_heartbeat, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @wdt_fops, ptr @wdt_expect_close, ptr @fop_ioctl.ident, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @wdt_is_open, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_gpio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_restart_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alim7101_pmu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alim7101_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_turnoff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @next_heartbeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_timer_ping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_expect_close to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fop_ioctl.ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_is_open to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fop_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alim7101_wdt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alim7101_wdt_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alim7101_wdt_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alim7101_wdt_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alim7101_wdt_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alim7101_wdt_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alim7101_wdt_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alim7101_wdt_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alim7101_wdt_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alim7101_wdt_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alim7101_wdt_unload() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @wdt_turnoff()
  tail call void @misc_deregister(ptr noundef nonnull @wdt_miscdev) #7
  %call = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @wdt_notifier) #7
  %call1 = tail call i32 @unregister_restart_handler(ptr noundef nonnull @wdt_restart_handler) #7
  %0 = load ptr, ptr @alim7101_pmu, align 4
  tail call void @pci_dev_put(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wdt_turnoff() unnamed_addr #1 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @del_timer_sync(ptr noundef nonnull @timer) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp.i, align 1, !annotation !139
  %1 = load ptr, ptr @alim7101_pmu, align 4
  %call.i = call i32 @pci_read_config_byte(ptr noundef %1, i32 noundef 146, ptr noundef nonnull %tmp.i) #7
  %2 = load ptr, ptr @alim7101_pmu, align 4
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tmp.i, align 1
  %5 = and i8 %4, -2
  %call11.i = call i32 @pci_write_config_byte(ptr noundef %2, i32 noundef 146, i8 noundef zeroext %5) #7
  %6 = load i32, ptr @use_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not.i = icmp eq i32 %6, 0
  br i1 %tobool12.not.i, label %entry.wdt_change.exit_crit_edge, label %if.then13.i

entry.wdt_change.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_change.exit

if.then13.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load ptr, ptr @alim7101_pmu, align 4
  %call14.i = call i32 @pci_read_config_byte(ptr noundef %7, i32 noundef 126, ptr noundef nonnull %tmp.i) #7
  %8 = load ptr, ptr @alim7101_pmu, align 4
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmp.i, align 1
  %11 = or i8 %10, 32
  %call18.i = call i32 @pci_write_config_byte(ptr noundef %8, i32 noundef 126, i8 noundef zeroext %11) #7
  br label %wdt_change.exit

wdt_change.exit:                                  ; preds = %if.then13.i, %entry.wdt_change.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_restart_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alim7101_wdt_init() #0 section ".init.text" align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !139
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  %call2 = tail call ptr @pci_get_device(i32 noundef 4281, i32 noundef 28929, ptr noundef null) #7
  store ptr %call2, ptr @alim7101_pmu, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end5, label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call i32 @pci_write_config_byte(ptr noundef nonnull %call2, i32 noundef 146, i8 noundef zeroext 2) #7
  %call9 = tail call ptr @pci_get_device(i32 noundef 4281, i32 noundef 5427, ptr noundef null) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %err_out

if.end17:                                         ; preds = %if.end
  %call18 = call i32 @pci_read_config_byte(ptr noundef nonnull %call9, i32 noundef 94, ptr noundef nonnull %tmp) #7
  call void @pci_dev_put(ptr noundef nonnull %call9) #7
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp, align 1
  %3 = trunc i8 %2 to i5
  %trunc = and i5 %3, -2
  %4 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i5 %trunc, label %do.end40 [
    i5 0, label %if.then20
    i5 -14, label %if.end17.if.end44_crit_edge
  ]

if.end17.if.end44_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then20:                                        ; preds = %if.end17
  %5 = load i32, ptr @use_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool21.not = icmp eq i32 %5, 0
  br i1 %tobool21.not, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %err_out

if.end28:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  store i8 1, ptr @nowayout, align 1
  br label %if.end44

do.end40:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #10
  br label %err_out

if.end44:                                         ; preds = %if.end28, %if.end17.if.end44_crit_edge
  %6 = load i32, ptr @timeout, align 4
  %7 = add i32 %6, -3601
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3600, i32 %7)
  %8 = icmp ult i32 %7, -3600
  br i1 %8, label %if.then49, label %if.end44.if.end55_crit_edge

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  store i32 30, ptr @timeout, align 4
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 30) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %if.end44.if.end55_crit_edge
  %call56 = call i32 @register_reboot_notifier(ptr noundef nonnull @wdt_notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end64, label %do.end61

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %call56) #10
  br label %err_out

if.end64:                                         ; preds = %if.end55
  %call65 = call i32 @register_restart_handler(ptr noundef nonnull @wdt_restart_handler) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end73, label %do.end70

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %call65) #10
  br label %err_out_reboot

if.end73:                                         ; preds = %if.end64
  %call74 = call i32 @misc_register(ptr noundef nonnull @wdt_miscdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end82, label %do.end79

do.end79:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load i32, ptr @wdt_miscdev, align 4
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %9, i32 noundef %call74) #10
  %call93 = call i32 @unregister_restart_handler(ptr noundef nonnull @wdt_restart_handler) #7
  br label %err_out_reboot

if.end82:                                         ; preds = %if.end73
  %10 = load i8, ptr @nowayout, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool83.not = icmp eq i8 %10, 0
  br i1 %tobool83.not, label %if.end82.do.end88_crit_edge, label %if.then84

if.end82.do.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end88

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  call void @__module_get(ptr noundef null) #7
  br label %do.end88

do.end88:                                         ; preds = %if.then84, %if.end82.do.end88_crit_edge
  %11 = load i32, ptr @timeout, align 4
  %12 = load i8, ptr @nowayout, align 1, !range !140
  %13 = zext i8 %12 to i32
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %11, i32 noundef %13) #10
  br label %cleanup

err_out_reboot:                                   ; preds = %do.end79, %do.end70
  %rc.0 = phi i32 [ %call65, %do.end70 ], [ %call74, %do.end79 ]
  %call94 = call i32 @unregister_reboot_notifier(ptr noundef nonnull @wdt_notifier) #7
  br label %err_out

err_out:                                          ; preds = %err_out_reboot, %do.end61, %do.end40, %do.end25, %do.end14
  %rc.1 = phi i32 [ %call56, %do.end61 ], [ %rc.0, %err_out_reboot ], [ -16, %do.end25 ], [ -16, %do.end40 ], [ -16, %do.end14 ]
  %14 = load ptr, ptr @alim7101_pmu, align 4
  call void @pci_dev_put(ptr noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out, %do.end88, %do.end5
  %retval.0 = phi i32 [ %rc.1, %err_out ], [ 0, %do.end88 ], [ -16, %do.end5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wdt_timer_ping(ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %2 = load i32, ptr @next_heartbeat, align 4
  %sub = sub i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @alim7101_pmu, align 4
  %call = call i32 @pci_read_config_byte(ptr noundef %3, i32 noundef 146, ptr noundef nonnull %tmp) #7
  %4 = load ptr, ptr @alim7101_pmu, align 4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp, align 1
  %7 = and i8 %6, -2
  %call2 = call i32 @pci_write_config_byte(ptr noundef %4, i32 noundef 146, i8 noundef zeroext %7) #7
  %8 = load ptr, ptr @alim7101_pmu, align 4
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmp, align 1
  %11 = or i8 %10, 1
  %call5 = call i32 @pci_write_config_byte(ptr noundef %8, i32 noundef 146, i8 noundef zeroext %11) #7
  %12 = load i32, ptr @use_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then.if.end18_crit_edge, label %if.then6

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load ptr, ptr @alim7101_pmu, align 4
  %call7 = call i32 @pci_read_config_byte(ptr noundef %13, i32 noundef 126, ptr noundef nonnull %tmp) #7
  %14 = load ptr, ptr @alim7101_pmu, align 4
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tmp, align 1
  %17 = or i8 %16, 32
  %call11 = call i32 @pci_write_config_byte(ptr noundef %14, i32 noundef 126, i8 noundef zeroext %17) #7
  %18 = load ptr, ptr @alim7101_pmu, align 4
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmp, align 1
  %21 = and i8 %20, -33
  %call15 = call i32 @pci_write_config_byte(ptr noundef %18, i32 noundef 126, i8 noundef zeroext %21) #7
  br label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.then6, %if.then.if.end18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %22, 26
  %call19 = call i32 @mod_timer(ptr noundef nonnull @timer, i32 noundef %add) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fop_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #1 align 64 {
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
  %0 = load i8, ptr @nowayout, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %for.body.preheader, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

for.body.preheader:                               ; preds = %if.then
  store i1 false, ptr @wdt_expect_close, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %ofs.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 199) #7
  %add.ptr = getelementptr i8, ptr %buf, i32 %ofs.024
  %1 = tail call i32 @llvm.read_register.i32(metadata !129) #7
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !141
  %and.i = and i32 %3, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #7, !srcloc !144
  %asmresult = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
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
  store i1 true, ptr @wdt_expect_close, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %ofs.024, 1
  %cmp.not = icmp eq i32 %inc, %count
  br i1 %cmp.not, label %for.inc.if.end15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %for.inc.if.end15_crit_edge, %if.then.if.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %6 = load i32, ptr @timeout, align 4
  %mul.i = mul i32 %6, 100
  %add.i = add i32 %mul.i, %5
  store i32 %add.i, ptr @next_heartbeat, align 4
  br label %return

return:                                           ; preds = %if.end15, %for.body.return_crit_edge, %entry.return_crit_edge
  %retval.3 = phi i32 [ %count, %if.end15 ], [ 0, %entry.return_crit_edge ], [ -14, %for.body.return_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fop_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %cmd, label %entry.cleanup62_crit_edge [
    i32 -2144839936, label %sw.bb
    i32 -2147199231, label %entry.sw.bb1_crit_edge
    i32 -2147199230, label %entry.sw.bb1_crit_edge90
    i32 -2147199228, label %sw.bb4
    i32 -2147199227, label %sw.bb25
    i32 -1073457402, label %sw.bb26
    i32 -2147199225, label %entry.sw.bb46_crit_edge
  ]

entry.sw.bb46_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb46

entry.sw.bb1_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup62

sw.bb:                                            ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %sw.bb.cleanup62_crit_edge, label %if.end.i.i

sw.bb.cleanup62_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup62

if.end.i.i:                                       ; preds = %sw.bb
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 40, i32 -1226833920) #11, !srcloc !145
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup62_crit_edge

if.end.i.i.cleanup62_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup62

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fop_ioctl.ident, i32 noundef 40) #7
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull @fop_ioctl.ident, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup62

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge90
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 250) #7
  %3 = tail call i32 @llvm.read_register.i32(metadata !129) #7
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !141
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %6 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 0, i32 -1226833921) #7, !srcloc !146
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  br label %cleanup62

sw.bb4:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 255) #7
  %7 = tail call i32 @llvm.read_register.i32(metadata !129) #7
  %and.i.i.i72 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i72 to ptr
  %cpu_domain.i.i73 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i73) #5, !srcloc !141
  %and.i74 = and i32 %9, -13
  %or.i75 = or i32 %and.i74, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i75) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #7, !srcloc !147
  %asmresult = extractvalue { i32, i32 } %10, 0
  %asmresult14 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool16.not = icmp eq i32 %asmresult, 0
  br i1 %tobool16.not, label %if.end, label %sw.bb4.cleanup62_crit_edge

sw.bb4.cleanup62_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup62

if.end:                                           ; preds = %sw.bb4
  %and = and i32 %asmresult14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end.if.end19_crit_edge, label %if.then18

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @wdt_turnoff()
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end.if.end19_crit_edge
  %retval5.0 = phi i32 [ 0, %if.then18 ], [ -22, %if.end.if.end19_crit_edge ]
  %and20 = and i32 %asmresult14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.cleanup62_crit_edge, label %if.then22

if.end19.cleanup62_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup62

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @wdt_startup()
  br label %cleanup62

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = load i32, ptr @timeout, align 4
  %mul.i = mul i32 %12, 100
  %add.i = add i32 %mul.i, %11
  store i32 %add.i, ptr @next_heartbeat, align 4
  br label %cleanup62

sw.bb26:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 274) #7
  %13 = tail call i32 @llvm.read_register.i32(metadata !129) #7
  %and.i.i.i76 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i76 to ptr
  %cpu_domain.i.i77 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i77) #5, !srcloc !141
  %and.i78 = and i32 %15, -13
  %or.i79 = or i32 %and.i78, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i79) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %16 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #7, !srcloc !148
  %asmresult36 = extractvalue { i32, i32 } %16, 0
  %asmresult37 = extractvalue { i32, i32 } %16, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult36)
  %tobool39.not = icmp eq i32 %asmresult36, 0
  br i1 %tobool39.not, label %if.end41, label %sw.bb26.cleanup62_crit_edge

sw.bb26.cleanup62_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup62

if.end41:                                         ; preds = %sw.bb26
  %17 = add i32 %asmresult37, -3601
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3600, i32 %17)
  %18 = icmp ult i32 %17, -3600
  br i1 %18, label %if.end41.cleanup62_crit_edge, label %cleanup45

if.end41.cleanup62_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup62

cleanup45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %asmresult37, ptr @timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %mul.i84 = mul nuw nsw i32 %asmresult37, 100
  %add.i85 = add i32 %19, %mul.i84
  store i32 %add.i85, ptr @next_heartbeat, align 4
  br label %sw.bb46

sw.bb46:                                          ; preds = %cleanup45, %entry.sw.bb46_crit_edge
  %20 = load i32, ptr @timeout, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 284) #7
  %21 = tail call i32 @llvm.read_register.i32(metadata !129) #7
  %and.i.i.i80 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i80 to ptr
  %cpu_domain.i.i81 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i81) #5, !srcloc !141
  %and.i82 = and i32 %23, -13
  %or.i83 = or i32 %and.i82, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i83) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %20, i32 -1226833921) #7, !srcloc !149
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  br label %cleanup62

cleanup62:                                        ; preds = %sw.bb46, %if.end41.cleanup62_crit_edge, %sw.bb26.cleanup62_crit_edge, %sw.bb25, %if.then22, %if.end19.cleanup62_crit_edge, %sw.bb4.cleanup62_crit_edge, %sw.bb1, %copy_to_user.exit, %if.end.i.i.cleanup62_crit_edge, %sw.bb.cleanup62_crit_edge, %entry.cleanup62_crit_edge
  %retval.2 = phi i32 [ %24, %sw.bb46 ], [ 0, %sw.bb25 ], [ %6, %sw.bb1 ], [ -14, %sw.bb4.cleanup62_crit_edge ], [ 0, %if.then22 ], [ %retval5.0, %if.end19.cleanup62_crit_edge ], [ -25, %entry.cleanup62_crit_edge ], [ -14, %sw.bb.cleanup62_crit_edge ], [ -14, %if.end.i.i.cleanup62_crit_edge ], [ -22, %if.end41.cleanup62_crit_edge ], [ -14, %sw.bb26.cleanup62_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fop_open(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @wdt_is_open) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @wdt_startup()
  %call1 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fop_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @wdt_expect_close, align 1
  br i1 %.b, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @wdt_turnoff()
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @wdt_is_open) #7
  store i1 false, ptr @wdt_expect_close, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wdt_startup() unnamed_addr #1 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i32, ptr @timeout, align 4
  %mul = mul i32 %1, 100
  %add = add i32 %mul, %0
  store i32 %add, ptr @next_heartbeat, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp.i, align 1, !annotation !139
  %3 = load ptr, ptr @alim7101_pmu, align 4
  %call.i = call i32 @pci_read_config_byte(ptr noundef %3, i32 noundef 146, ptr noundef nonnull %tmp.i) #7
  %4 = load ptr, ptr @alim7101_pmu, align 4
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp.i, align 1
  %7 = or i8 %6, 1
  %call2.i = call i32 @pci_write_config_byte(ptr noundef %4, i32 noundef 146, i8 noundef zeroext %7) #7
  %8 = load i32, ptr @use_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.wdt_change.exit_crit_edge, label %if.then3.i

entry.wdt_change.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_change.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load ptr, ptr @alim7101_pmu, align 4
  %call4.i = call i32 @pci_read_config_byte(ptr noundef %9, i32 noundef 126, ptr noundef nonnull %tmp.i) #7
  %10 = load ptr, ptr @alim7101_pmu, align 4
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tmp.i, align 1
  %13 = and i8 %12, -33
  %call7.i = call i32 @pci_write_config_byte(ptr noundef %10, i32 noundef 126, i8 noundef zeroext %13) #7
  br label %wdt_change.exit

wdt_change.exit:                                  ; preds = %if.then3.i, %entry.wdt_change.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add1 = add i32 %14, 26
  %call = call i32 @mod_timer(ptr noundef nonnull @timer, i32 noundef %add1) #7
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt_notify_sys(ptr nocapture noundef readnone %this, i32 noundef %code, ptr nocapture noundef readnone %unused) #1 align 64 {
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
  tail call fastcc void @wdt_turnoff()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt_restart_handle(ptr nocapture noundef readnone %this, i32 noundef %mode, ptr nocapture noundef readnone %cmd) #6 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp.i, align 1, !annotation !139
  %1 = load ptr, ptr @alim7101_pmu, align 4
  %call.i = call i32 @pci_read_config_byte(ptr noundef %1, i32 noundef 146, ptr noundef nonnull %tmp.i) #7
  %2 = load ptr, ptr @alim7101_pmu, align 4
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tmp.i, align 1
  %5 = or i8 %4, 1
  %call2.i = call i32 @pci_write_config_byte(ptr noundef %2, i32 noundef 146, i8 noundef zeroext %5) #7
  %6 = load i32, ptr @use_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.wdt_change.exit_crit_edge, label %if.then3.i

entry.wdt_change.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt_change.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load ptr, ptr @alim7101_pmu, align 4
  %call4.i = call i32 @pci_read_config_byte(ptr noundef %7, i32 noundef 126, ptr noundef nonnull %tmp.i) #7
  %8 = load ptr, ptr @alim7101_pmu, align 4
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmp.i, align 1
  %11 = and i8 %10, -33
  %call7.i = call i32 @pci_write_config_byte(ptr noundef %8, i32 noundef 126, i8 noundef zeroext %11) #7
  br label %wdt_change.exit

wdt_change.exit:                                  ; preds = %if.then3.i, %entry.wdt_change.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  br label %while.body

while.body:                                       ; preds = %while.body, %wdt_change.exit
  br label %while.body
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !33, !35, !36, !37, !39, !41, !42, !43, !44, !45, !47, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128}
!llvm.named.register.sp = !{!129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__param_timeout, !1, !"__param_timeout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 64, i32 1}
!2 = !{ptr @__UNIQUE_ID_timeouttype236, !1, !"__UNIQUE_ID_timeouttype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_timeout237, !4, !"__UNIQUE_ID_timeout237", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 65, i32 1}
!5 = !{ptr @__param_use_gpio, !6, !"__param_use_gpio", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 70, i32 1}
!7 = !{ptr @__UNIQUE_ID_use_gpiotype238, !6, !"__UNIQUE_ID_use_gpiotype238", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_use_gpio239, !9, !"__UNIQUE_ID_use_gpio239", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 71, i32 1}
!10 = !{ptr @__param_nowayout, !11, !"__param_nowayout", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 82, i32 1}
!12 = !{ptr @__UNIQUE_ID_nowayouttype240, !11, !"__UNIQUE_ID_nowayouttype240", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_nowayout241, !14, !"__UNIQUE_ID_nowayout241", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 83, i32 1}
!15 = !{ptr @__initcall__kmod_alim7101_wdt__242_438_alim7101_wdt_init6, !16, !"__initcall__kmod_alim7101_wdt__242_438_alim7101_wdt_init6", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 438, i32 1}
!17 = !{ptr @__exitcall_alim7101_wdt_unload, !18, !"__exitcall_alim7101_wdt_unload", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 439, i32 1}
!19 = !{ptr @alim7101_pci_tbl, !20, !"alim7101_pci_tbl", i1 false, i1 false}
!20 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 441, i32 35}
!21 = !{ptr @__UNIQUE_ID_author243, !22, !"__UNIQUE_ID_author243", i1 false, i1 false}
!22 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 449, i32 1}
!23 = !{ptr @__UNIQUE_ID_description244, !24, !"__UNIQUE_ID_description244", i1 false, i1 false}
!24 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 450, i32 1}
!25 = !{ptr @__UNIQUE_ID_file245, !26, !"__UNIQUE_ID_file245", i1 false, i1 false}
!26 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 451, i32 1}
!27 = !{ptr @__UNIQUE_ID_license246, !26, !"__UNIQUE_ID_license246", i1 false, i1 false}
!28 = !{ptr @use_gpio, !29, !"use_gpio", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 69, i32 12}
!30 = !{ptr @alim7101_pmu, !31, !"alim7101_pmu", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 79, i32 24}
!32 = !{ptr @__param_str_timeout, !1, !"__param_str_timeout", i1 false, i1 false}
!33 = !{ptr @timeout, !34, !"timeout", i1 false, i1 false}
!34 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 63, i32 12}
!35 = !{ptr @__param_str_use_gpio, !6, !"__param_str_use_gpio", i1 false, i1 false}
!36 = !{ptr @__param_str_nowayout, !11, !"__param_str_nowayout", i1 false, i1 false}
!37 = !{ptr @nowayout, !38, !"nowayout", i1 false, i1 false}
!38 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 81, i32 13}
!39 = !{ptr @.str, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 171, i32 2}
!41 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @wdt_turnoff._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @wdt_turnoff._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 75, i32 8}
!47 = !{ptr @timer, !46, !"timer", i1 false, i1 false}
!48 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 114, i32 3}
!50 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @wdt_timer_ping._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @wdt_timer_ping._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @next_heartbeat, !54, !"next_heartbeat", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 76, i32 22}
!55 = !{ptr @.str.6, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 302, i32 10}
!57 = !{ptr @wdt_miscdev, !58, !"wdt_miscdev", i1 false, i1 false}
!58 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 300, i32 26}
!59 = !{ptr @wdt_fops, !60, !"wdt_fops", i1 false, i1 false}
!60 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 290, i32 37}
!61 = distinct !{null, !62, !"wdt_expect_close", i1 false, i1 false}
!62 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 78, i32 13}
!63 = !{ptr @fop_ioctl.ident, !64, !"ident", i1 false, i1 false}
!64 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 238, i32 36}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!67 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!70 = !{ptr @.str.9, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!72 = !{ptr @.str.10, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 163, i32 2}
!74 = !{ptr @.str.11, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @wdt_startup._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @wdt_startup._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @wdt_is_open, !78, !"wdt_is_open", i1 false, i1 false}
!78 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 77, i32 22}
!79 = !{ptr @.str.12, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 227, i32 3}
!81 = !{ptr @.str.13, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @fop_close._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @fop_close._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @wdt_notifier, !85, !"wdt_notifier", i1 false, i1 false}
!85 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 346, i32 30}
!86 = !{ptr @wdt_restart_handler, !87, !"wdt_restart_handler", i1 false, i1 false}
!87 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 323, i32 30}
!88 = !{ptr @.str.14, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 366, i32 2}
!90 = !{ptr @.str.15, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @alim7101_wdt_init._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @alim7101_wdt_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.17, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 370, i32 3}
!95 = !{ptr @alim7101_wdt_init._entry.16, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @alim7101_wdt_init._entry_ptr.18, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.20, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 380, i32 3}
!99 = !{ptr @alim7101_wdt_init._entry.19, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @alim7101_wdt_init._entry_ptr.21, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.23, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 387, i32 4}
!103 = !{ptr @alim7101_wdt_init._entry.22, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @alim7101_wdt_init._entry_ptr.24, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.26, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 392, i32 3}
!107 = !{ptr @alim7101_wdt_init._entry.25, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @alim7101_wdt_init._entry_ptr.27, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 399, i32 3}
!111 = !{ptr @alim7101_wdt_init._entry.28, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @alim7101_wdt_init._entry_ptr.30, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.32, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 405, i32 3}
!115 = !{ptr @alim7101_wdt_init._entry.31, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @alim7101_wdt_init._entry_ptr.33, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.35, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 411, i32 3}
!119 = !{ptr @alim7101_wdt_init._entry.34, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @alim7101_wdt_init._entry_ptr.36, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 417, i32 3}
!123 = !{ptr @alim7101_wdt_init._entry.37, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @alim7101_wdt_init._entry_ptr.39, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/watchdog/alim7101_wdt.c", i32 425, i32 2}
!127 = !{ptr @alim7101_wdt_init._entry.40, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @alim7101_wdt_init._entry_ptr.42, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{!"sp"}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"auto-init"}
!140 = !{i8 0, i8 2}
!141 = !{i64 5178831}
!142 = !{i64 5179028}
!143 = !{i64 2152664261}
!144 = !{i64 2154472776, i64 2154473056, i64 2154473390, i64 2154473724}
!145 = !{i64 2152683957, i64 2152683982}
!146 = !{i64 2154491811, i64 2154492091, i64 2154492425, i64 2154492759}
!147 = !{i64 2154504061, i64 2154504341, i64 2154504675, i64 2154505009}
!148 = !{i64 2154517740, i64 2154518020, i64 2154518354, i64 2154518688}
!149 = !{i64 2154527951, i64 2154528231, i64 2154528565, i64 2154528899}
