; ModuleID = '/llk/IR_all_yes/drivers/watchdog/sc520_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/sc520_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_timeout = internal constant [18 x i8] c"sc520_wdt.timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } { i32 30, [28 x i8] zeroinitializer }, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype210 = internal constant [31 x i8] c"sc520_wdt.parmtype=timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout211 = internal constant [87 x i8] c"sc520_wdt.parm=timeout:Watchdog timeout in seconds. (1 <= timeout <= 3600, default=30)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [19 x i8] c"sc520_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype212 = internal constant [33 x i8] c"sc520_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout213 = internal constant [76 x i8] c"sc520_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@wdt_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 130, ptr @.str.7, ptr @wdt_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@wdt_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @wdt_notify_sys, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@wdtmrctl = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_sc520_wdt__214_425_sc520_wdt_init6 = internal global ptr @sc520_wdt_init, section ".initcall6.init", align 4
@__exitcall_sc520_wdt_unload = internal global ptr @sc520_wdt_unload, section ".exitcall.exit", align 4
@__UNIQUE_ID_author215 = internal constant [41 x i8] c"sc520_wdt.author=Scott and Bill Jennings\00", section ".modinfo", align 1
@__UNIQUE_ID_description216 = internal constant [79 x i8] c"sc520_wdt.description=Driver for watchdog timer in AMD \22Elan\22 SC520 uProcessor\00", section ".modinfo", align 1
@__UNIQUE_ID_file217 = internal constant [42 x i8] c"sc520_wdt.file=drivers/watchdog/sc520_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license218 = internal constant [22 x i8] c"sc520_wdt.license=GPL\00", section ".modinfo", align 1
@timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @wdt_timer_ping, i32 0, %struct.lockdep_map { ptr @.str.3, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@wdt_turnoff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016sc520_wdt: Watchdog timer is now disabled...\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wdt_turnoff\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/watchdog/sc520_wdt.c\00", [35 x i8] zeroinitializer }, align 32
@wdt_turnoff._entry_ptr = internal global ptr @wdt_turnoff._entry, section ".printk_index", align 4
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/watchdog/sc520_wdt.c:123\00", [63 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@next_heartbeat = internal global { i32, [28 x i8] } zeroinitializer, align 32
@wdt_spinlock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@wdt_timer_ping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014sc520_wdt: Heartbeat lost! Will not ping the watchdog\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdt_timer_ping\00", [17 x i8] zeroinitializer }, align 32
@wdt_timer_ping._entry_ptr = internal global ptr @wdt_timer_ping._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wdt_spinlock\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@wdt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @fop_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fop_ioctl, ptr null, ptr null, i32 0, ptr @fop_open, ptr null, ptr @fop_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@wdt_expect_close = internal global { i1, [31 x i8] } zeroinitializer, align 32
@fop_ioctl.ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 1, [32 x i8] c"SC520\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@wdt_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016sc520_wdt: Watchdog timer is now enabled\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wdt_startup\00", [20 x i8] zeroinitializer }, align 32
@wdt_startup._entry_ptr = internal global ptr @wdt_startup._entry, section ".printk_index", align 4
@wdt_is_open = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fop_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\012sc520_wdt: Unexpected close, not stopping watchdog!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fop_close\00", [22 x i8] zeroinitializer }, align 32
@fop_close._entry_ptr = internal global ptr @fop_close._entry, section ".printk_index", align 4
@sc520_wdt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016sc520_wdt: timeout value must be 1 <= timeout <= 3600, using %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sc520_wdt_init\00", [17 x i8] zeroinitializer }, align 32
@sc520_wdt_init._entry_ptr = internal global ptr @sc520_wdt_init._entry, section ".printk_index", align 4
@sc520_wdt_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013sc520_wdt: Unable to remap memory\0A\00", [59 x i8] zeroinitializer }, align 32
@sc520_wdt_init._entry_ptr.19 = internal global ptr @sc520_wdt_init._entry.17, section ".printk_index", align 4
@sc520_wdt_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013sc520_wdt: cannot register reboot notifier (err=%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@sc520_wdt_init._entry_ptr.22 = internal global ptr @sc520_wdt_init._entry.20, section ".printk_index", align 4
@sc520_wdt_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013sc520_wdt: cannot register miscdev on minor=%d (err=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@sc520_wdt_init._entry_ptr.25 = internal global ptr @sc520_wdt_init._entry.23, section ".printk_index", align 4
@sc520_wdt_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016sc520_wdt: WDT driver for SC520 initialised. timeout=%d sec (nowayout=%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@sc520_wdt_init._entry_ptr.28 = internal global ptr @sc520_wdt_init._entry.26, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 2147768065, i64 2147768066, i64 2147768068, i64 2147768069, i64 2147768071, i64 2150127360, i64 3221509894]
@___asan_gen_.29 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 89, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 95, i32 13 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"wdt_miscdev\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 342, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"wdt_notifier\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 365, i32 30 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"wdtmrctl\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 120, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 194, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 123, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"next_heartbeat\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 124, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"wdt_spinlock\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 148, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 127, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 344, i32 10 }
@___asan_gen_.83 = private unnamed_addr constant [9 x i8] c"wdt_fops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 332, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"wdt_expect_close\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 277, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 174, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 182, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [12 x i8] c"wdt_is_open\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 125, i32 22 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 265, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 388, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 394, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 401, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 407, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [32 x i8] c"../drivers/watchdog/sc520_wdt.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 412, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author215, ptr @__UNIQUE_ID_description216, ptr @__UNIQUE_ID_file217, ptr @__UNIQUE_ID_license218, ptr @__UNIQUE_ID_nowayout213, ptr @__UNIQUE_ID_nowayouttype212, ptr @__UNIQUE_ID_timeout211, ptr @__UNIQUE_ID_timeouttype210, ptr @__exitcall_sc520_wdt_unload, ptr @__initcall__kmod_sc520_wdt__214_425_sc520_wdt_init6, ptr @__param_nowayout, ptr @__param_timeout, ptr @fop_close._entry, ptr @fop_close._entry_ptr, ptr @sc520_wdt_init._entry, ptr @sc520_wdt_init._entry.17, ptr @sc520_wdt_init._entry.20, ptr @sc520_wdt_init._entry.23, ptr @sc520_wdt_init._entry.26, ptr @sc520_wdt_init._entry_ptr, ptr @sc520_wdt_init._entry_ptr.19, ptr @sc520_wdt_init._entry_ptr.22, ptr @sc520_wdt_init._entry_ptr.25, ptr @sc520_wdt_init._entry_ptr.28, ptr @sc520_wdt_unload, ptr @wdt_startup._entry, ptr @wdt_startup._entry_ptr, ptr @wdt_timer_ping._entry, ptr @wdt_timer_ping._entry_ptr, ptr @wdt_turnoff._entry, ptr @wdt_turnoff._entry_ptr, ptr @timeout, ptr @nowayout, ptr @wdt_miscdev, ptr @wdt_notifier, ptr @wdtmrctl, ptr @timer, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @next_heartbeat, ptr @wdt_spinlock, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @wdt_fops, ptr @wdt_expect_close, ptr @fop_ioctl.ident, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @wdt_is_open, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdtmrctl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_turnoff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @next_heartbeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_spinlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_timer_ping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_expect_close to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fop_ioctl.ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_is_open to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fop_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc520_wdt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc520_wdt_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc520_wdt_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc520_wdt_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc520_wdt_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc520_wdt_unload() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load i8, ptr @nowayout, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @del_timer_sync(ptr noundef nonnull @timer) #6
  tail call fastcc void @wdt_config(i32 noundef 0) #6
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @misc_deregister(ptr noundef nonnull @wdt_miscdev) #6
  %call1 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @wdt_notifier) #6
  %1 = load ptr, ptr @wdtmrctl, align 4
  tail call void @iounmap(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc520_wdt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @timeout, align 4
  %1 = add i32 %0, -3601
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3600, i32 %1)
  %2 = icmp ult i32 %1, -3600
  br i1 %2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i32 30, ptr @timeout, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 30) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call ptr @ioremap(i32 noundef -66384, i32 noundef 2) #6
  store ptr %call3, ptr @wdtmrctl, align 4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @wdt_notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call12) #9
  br label %err_out_ioremap

if.end20:                                         ; preds = %if.end11
  %call21 = tail call i32 @misc_register(ptr noundef nonnull @wdt_miscdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.end32, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 130, i32 noundef %call21) #9
  %call36 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @wdt_notifier) #6
  br label %err_out_ioremap

do.end32:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %3 = load i32, ptr @timeout, align 4
  %4 = load i8, ptr @nowayout, align 1, !range !110
  %5 = zext i8 %4 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %3, i32 noundef %5) #9
  br label %cleanup

err_out_ioremap:                                  ; preds = %do.end26, %do.end17
  %rc.0 = phi i32 [ %call12, %do.end17 ], [ %call21, %do.end26 ]
  %6 = load ptr, ptr @wdtmrctl, align 4
  tail call void @iounmap(ptr noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %err_out_ioremap, %do.end32, %do.end8
  %retval.0 = phi i32 [ 0, %do.end32 ], [ %rc.0, %err_out_ioremap ], [ -12, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wdt_config(i32 noundef %writeval) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wdt_spinlock) #6
  %0 = load ptr, ptr @wdtmrctl, align 4
  %1 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %0) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %2 = load ptr, ptr @wdtmrctl, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %2, i16 -21846) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %3 = load ptr, ptr @wdtmrctl, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 21845) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %4 = load ptr, ptr @wdtmrctl, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %4, i16 13107) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %5 = load ptr, ptr @wdtmrctl, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 -13108) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %conv23 = trunc i32 %writeval to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv23)
  %7 = load ptr, ptr @wdtmrctl, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %6) #6, !srcloc !114
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wdt_spinlock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wdt_timer_ping(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i32, ptr @next_heartbeat, align 4
  %sub = sub i32 %0, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %do.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @wdt_spinlock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %2 = load ptr, ptr @wdtmrctl, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %2, i16 -21846) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %3 = load ptr, ptr @wdtmrctl, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 21845) #6, !srcloc !114
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wdt_spinlock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 26
  %call = tail call i32 @mod_timer(ptr noundef nonnull @timer, i32 noundef %add) #6
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %if.end

if.end:                                           ; preds = %do.end4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fop_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  %0 = load i8, ptr @nowayout, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %for.body.preheader, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

for.body.preheader:                               ; preds = %if.then
  store i1 false, ptr @wdt_expect_close, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %ofs.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 233) #6
  %add.ptr = getelementptr i8, ptr %buf, i32 %ofs.025
  %1 = tail call i32 @llvm.read_register.i32(metadata !100) #6
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !121
  %and.i = and i32 %3, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #6, !srcloc !124
  %asmresult = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #6, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool5.not = icmp eq i32 %asmresult, 0
  br i1 %tobool5.not, label %if.end, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %for.body
  %asmresult3 = extractvalue { i32, i32 } %4, 1
  %conv7 = and i32 %asmresult3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %conv7)
  %cmp8 = icmp eq i32 %conv7, 86
  br i1 %cmp8, label %if.then10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @wdt_expect_close, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %ofs.025, 1
  %cmp.not = icmp eq i32 %inc, %count
  br i1 %cmp.not, label %for.inc.if.end15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
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
define internal i32 @fop_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup67_crit_edge [
    i32 -2144839936, label %sw.bb
    i32 -2147199231, label %entry.sw.bb1_crit_edge
    i32 -2147199230, label %entry.sw.bb1_crit_edge98
    i32 -2147199228, label %sw.bb4
    i32 -2147199227, label %sw.bb27
    i32 -1073457402, label %sw.bb29
    i32 -2147199225, label %entry.sw.bb51_crit_edge
  ]

entry.sw.bb51_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb51

entry.sw.bb1_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

sw.bb:                                            ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %sw.bb.cleanup67_crit_edge, label %if.end.i.i

sw.bb.cleanup67_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

if.end.i.i:                                       ; preds = %sw.bb
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 40, i32 -1226833920) #10, !srcloc !125
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup67_crit_edge

if.end.i.i.cleanup67_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fop_ioctl.ident, i32 noundef 40) #6
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull @fop_ioctl.ident, i32 noundef 40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup67

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge98
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 289) #6
  %3 = tail call i32 @llvm.read_register.i32(metadata !100) #6
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !121
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %6 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 0, i32 -1226833921) #6, !srcloc !126
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #6, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  br label %cleanup67

sw.bb4:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 294) #6
  %7 = tail call i32 @llvm.read_register.i32(metadata !100) #6
  %and.i.i.i75 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i75 to ptr
  %cpu_domain.i.i76 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i76) #5, !srcloc !121
  %and.i77 = and i32 %9, -13
  %or.i78 = or i32 %and.i77, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i78) #6, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #6, !srcloc !127
  %asmresult = extractvalue { i32, i32 } %10, 0
  %asmresult14 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #6, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool16.not = icmp eq i32 %asmresult, 0
  br i1 %tobool16.not, label %if.end, label %sw.bb4.cleanup67_crit_edge

sw.bb4.cleanup67_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

if.end:                                           ; preds = %sw.bb4
  %and = and i32 %asmresult14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end.if.end20_crit_edge, label %if.then18

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @del_timer_sync(ptr noundef nonnull @timer) #6
  tail call fastcc void @wdt_config(i32 noundef 0) #6
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end.if.end20_crit_edge
  %retval5.0 = phi i32 [ 0, %if.then18 ], [ -22, %if.end.if.end20_crit_edge ]
  %and21 = and i32 %asmresult14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.cleanup67_crit_edge, label %if.then23

if.end20.cleanup67_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = load i32, ptr @timeout, align 4
  %mul.i = mul i32 %12, 100
  %add.i = add i32 %mul.i, %11
  store i32 %add.i, ptr @next_heartbeat, align 4
  %13 = load volatile i32, ptr @jiffies, align 128
  %add1.i = add i32 %13, 26
  %call.i87 = tail call i32 @mod_timer(ptr noundef nonnull @timer, i32 noundef %add1.i) #6
  tail call fastcc void @wdt_config(i32 noundef 49160) #6
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  br label %cleanup67

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = load i32, ptr @timeout, align 4
  %mul.i88 = mul i32 %15, 100
  %add.i89 = add i32 %mul.i88, %14
  store i32 %add.i89, ptr @next_heartbeat, align 4
  br label %cleanup67

sw.bb29:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 316) #6
  %16 = tail call i32 @llvm.read_register.i32(metadata !100) #6
  %and.i.i.i79 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i79 to ptr
  %cpu_domain.i.i80 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i80) #5, !srcloc !121
  %and.i81 = and i32 %18, -13
  %or.i82 = or i32 %and.i81, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i82) #6, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %19 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #6, !srcloc !128
  %asmresult39 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #6, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult39)
  %tobool42.not = icmp eq i32 %asmresult39, 0
  br i1 %tobool42.not, label %if.end44, label %sw.bb29.cleanup67_crit_edge

sw.bb29.cleanup67_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

if.end44:                                         ; preds = %sw.bb29
  %asmresult40 = extractvalue { i32, i32 } %19, 1
  %20 = add i32 %asmresult40, -3601
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3600, i32 %20)
  %21 = icmp ult i32 %20, -3600
  br i1 %21, label %if.end44.cleanup67_crit_edge, label %cleanup50

if.end44.cleanup67_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

cleanup50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %asmresult40, ptr @timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %mul.i90 = mul nuw nsw i32 %asmresult40, 100
  %add.i91 = add i32 %22, %mul.i90
  store i32 %add.i91, ptr @next_heartbeat, align 4
  br label %sw.bb51

sw.bb51:                                          ; preds = %cleanup50, %entry.sw.bb51_crit_edge
  %23 = load i32, ptr @timeout, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 326) #6
  %24 = tail call i32 @llvm.read_register.i32(metadata !100) #6
  %and.i.i.i83 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i83 to ptr
  %cpu_domain.i.i84 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i84) #5, !srcloc !121
  %and.i85 = and i32 %26, -13
  %or.i86 = or i32 %and.i85, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i86) #6, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %27 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %23, i32 -1226833921) #6, !srcloc !129
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #6, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  br label %cleanup67

cleanup67:                                        ; preds = %sw.bb51, %if.end44.cleanup67_crit_edge, %sw.bb29.cleanup67_crit_edge, %sw.bb27, %if.then23, %if.end20.cleanup67_crit_edge, %sw.bb4.cleanup67_crit_edge, %sw.bb1, %copy_to_user.exit, %if.end.i.i.cleanup67_crit_edge, %sw.bb.cleanup67_crit_edge, %entry.cleanup67_crit_edge
  %retval.2 = phi i32 [ %27, %sw.bb51 ], [ 0, %sw.bb27 ], [ %6, %sw.bb1 ], [ -14, %sw.bb4.cleanup67_crit_edge ], [ 0, %if.then23 ], [ %retval5.0, %if.end20.cleanup67_crit_edge ], [ -25, %entry.cleanup67_crit_edge ], [ -14, %sw.bb.cleanup67_crit_edge ], [ -14, %if.end.i.i.cleanup67_crit_edge ], [ -22, %if.end44.cleanup67_crit_edge ], [ -14, %sw.bb29.cleanup67_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fop_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @wdt_is_open) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @nowayout, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__module_get(ptr noundef null) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %2 = load i32, ptr @timeout, align 4
  %mul.i = mul i32 %2, 100
  %add.i = add i32 %mul.i, %1
  store i32 %add.i, ptr @next_heartbeat, align 4
  %3 = load volatile i32, ptr @jiffies, align 128
  %add1.i = add i32 %3, 26
  %call.i = tail call i32 @mod_timer(ptr noundef nonnull @timer, i32 noundef %add1.i) #6
  tail call fastcc void @wdt_config(i32 noundef 49160) #6
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  %call5 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #6
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fop_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @wdt_expect_close, align 1
  br i1 %.b, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @del_timer_sync(ptr noundef nonnull @timer) #6
  tail call fastcc void @wdt_config(i32 noundef 0) #6
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i32, ptr @timeout, align 4
  %mul.i = mul i32 %1, 100
  %add.i = add i32 %mul.i, %0
  store i32 %add.i, ptr @next_heartbeat, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @wdt_is_open) #6
  store i1 false, ptr @wdt_expect_close, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

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
define internal i32 @wdt_notify_sys(ptr nocapture noundef readnone %this, i32 noundef %code, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %code.off = add i32 %code, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %code.off)
  %switch = icmp ult i32 %code.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @del_timer_sync(ptr noundef nonnull @timer) #6
  tail call fastcc void @wdt_config(i32 noundef 0) #6
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !27, !29, !31, !32, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !68, !69, !70, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99}
!llvm.named.register.sp = !{!100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__param_timeout, !1, !"__param_timeout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/sc520_wdt.c", i32 90, i32 1}
!2 = !{ptr @__UNIQUE_ID_timeouttype210, !1, !"__UNIQUE_ID_timeouttype210", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_timeout211, !4, !"__UNIQUE_ID_timeout211", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/sc520_wdt.c", i32 91, i32 1}
!5 = !{ptr @__param_nowayout, !6, !"__param_nowayout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/sc520_wdt.c", i32 96, i32 1}
!7 = !{ptr @__UNIQUE_ID_nowayouttype212, !6, !"__UNIQUE_ID_nowayouttype212", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nowayout213, !9, !"__UNIQUE_ID_nowayout213", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/sc520_wdt.c", i32 97, i32 1}
!10 = !{ptr @__initcall__kmod_sc520_wdt__214_425_sc520_wdt_init6, !11, !"__initcall__kmod_sc520_wdt__214_425_sc520_wdt_init6", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/sc520_wdt.c", i32 425, i32 1}
!12 = !{ptr @__exitcall_sc520_wdt_unload, !13, !"__exitcall_sc520_wdt_unload", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/sc520_wdt.c", i32 426, i32 1}
!14 = !{ptr @__UNIQUE_ID_author215, !15, !"__UNIQUE_ID_author215", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/sc520_wdt.c", i32 428, i32 1}
!16 = !{ptr @__UNIQUE_ID_description216, !17, !"__UNIQUE_ID_description216", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/sc520_wdt.c", i32 429, i32 1}
!18 = !{ptr @__UNIQUE_ID_file217, !19, !"__UNIQUE_ID_file217", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/sc520_wdt.c", i32 431, i32 1}
!20 = !{ptr @__UNIQUE_ID_license218, !19, !"__UNIQUE_ID_license218", i1 false, i1 false}
!21 = !{ptr @wdtmrctl, !22, !"wdtmrctl", i1 false, i1 false}
!22 = !{!"../drivers/watchdog/sc520_wdt.c", i32 120, i32 23}
!23 = !{ptr @__param_str_timeout, !1, !"__param_str_timeout", i1 false, i1 false}
!24 = !{ptr @timeout, !25, !"timeout", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/sc520_wdt.c", i32 89, i32 12}
!26 = !{ptr @__param_str_nowayout, !6, !"__param_str_nowayout", i1 false, i1 false}
!27 = !{ptr @nowayout, !28, !"nowayout", i1 false, i1 false}
!28 = !{!"../drivers/watchdog/sc520_wdt.c", i32 95, i32 13}
!29 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/watchdog/sc520_wdt.c", i32 194, i32 2}
!31 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wdt_turnoff._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @wdt_turnoff._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/watchdog/sc520_wdt.c", i32 123, i32 8}
!37 = !{ptr @timer, !36, !"timer", i1 false, i1 false}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/sc520_wdt.c", i32 148, i32 3}
!40 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @wdt_timer_ping._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @wdt_timer_ping._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @next_heartbeat, !44, !"next_heartbeat", i1 false, i1 false}
!44 = !{!"../drivers/watchdog/sc520_wdt.c", i32 124, i32 22}
!45 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/sc520_wdt.c", i32 127, i32 8}
!47 = !{ptr @wdt_spinlock, !46, !"wdt_spinlock", i1 false, i1 false}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/sc520_wdt.c", i32 344, i32 10}
!50 = !{ptr @wdt_miscdev, !51, !"wdt_miscdev", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/sc520_wdt.c", i32 342, i32 26}
!52 = !{ptr @wdt_fops, !53, !"wdt_fops", i1 false, i1 false}
!53 = !{!"../drivers/watchdog/sc520_wdt.c", i32 332, i32 37}
!54 = distinct !{null, !55, !"wdt_expect_close", i1 false, i1 false}
!55 = !{!"../drivers/watchdog/sc520_wdt.c", i32 126, i32 13}
!56 = !{ptr @fop_ioctl.ident, !57, !"ident", i1 false, i1 false}
!57 = !{!"../drivers/watchdog/sc520_wdt.c", i32 277, i32 36}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!60 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!63 = !{ptr @.str.10, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!65 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/sc520_wdt.c", i32 182, i32 2}
!67 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @wdt_startup._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @wdt_startup._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @wdt_is_open, !71, !"wdt_is_open", i1 false, i1 false}
!71 = !{!"../drivers/watchdog/sc520_wdt.c", i32 125, i32 22}
!72 = !{ptr @.str.13, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/watchdog/sc520_wdt.c", i32 265, i32 3}
!74 = !{ptr @.str.14, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @fop_close._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @fop_close._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @wdt_notifier, !78, !"wdt_notifier", i1 false, i1 false}
!78 = !{!"../drivers/watchdog/sc520_wdt.c", i32 365, i32 30}
!79 = !{ptr @.str.15, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/watchdog/sc520_wdt.c", i32 388, i32 3}
!81 = !{ptr @.str.16, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sc520_wdt_init._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @sc520_wdt_init._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.18, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/watchdog/sc520_wdt.c", i32 394, i32 3}
!86 = !{ptr @sc520_wdt_init._entry.17, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sc520_wdt_init._entry_ptr.19, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/watchdog/sc520_wdt.c", i32 401, i32 3}
!90 = !{ptr @sc520_wdt_init._entry.20, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sc520_wdt_init._entry_ptr.22, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/watchdog/sc520_wdt.c", i32 407, i32 3}
!94 = !{ptr @sc520_wdt_init._entry.23, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @sc520_wdt_init._entry_ptr.25, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/watchdog/sc520_wdt.c", i32 412, i32 2}
!98 = !{ptr @sc520_wdt_init._entry.26, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @sc520_wdt_init._entry_ptr.28, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{!"sp"}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i8 0, i8 2}
!111 = !{i64 5540325}
!112 = !{i64 2153111921}
!113 = !{i64 2153112129}
!114 = !{i64 5540125}
!115 = !{i64 2153112512}
!116 = !{i64 2153112895}
!117 = !{i64 2153113278}
!118 = !{i64 2153113663}
!119 = !{i64 2153108719}
!120 = !{i64 2153109102}
!121 = !{i64 5174391}
!122 = !{i64 5174588}
!123 = !{i64 2152659821}
!124 = !{i64 2153120842, i64 2153121122, i64 2153121456, i64 2153121790}
!125 = !{i64 2152679517, i64 2152679542}
!126 = !{i64 2153139751, i64 2153140031, i64 2153140365, i64 2153140699}
!127 = !{i64 2153151998, i64 2153152278, i64 2153152612, i64 2153152946}
!128 = !{i64 2153165674, i64 2153165954, i64 2153166288, i64 2153166622}
!129 = !{i64 2153175882, i64 2153176162, i64 2153176496, i64 2153176830}
