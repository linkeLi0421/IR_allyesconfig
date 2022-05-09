; ModuleID = '/llk/IR_all_yes/drivers/watchdog/wdt977.c_pt.bc'
source_filename = "../drivers/watchdog/wdt977.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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

@__param_str_timeout = internal constant [15 x i8] c"wdt977.timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype210 = internal constant [28 x i8] c"wdt977.parmtype=timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout211 = internal constant [72 x i8] c"wdt977.parm=timeout:Watchdog timeout in seconds (60..15300, default=60)\00", section ".modinfo", align 1
@__param_str_testmode = internal constant [16 x i8] c"wdt977.testmode\00", align 1
@testmode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_testmode = internal constant %struct.kernel_param { ptr @__param_str_testmode, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @testmode } }, section "__param", align 4
@__UNIQUE_ID_testmodetype212 = internal constant [29 x i8] c"wdt977.parmtype=testmode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_testmode213 = internal constant [66 x i8] c"wdt977.parm=testmode:Watchdog testmode (1 = no reboot), default=0\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [16 x i8] c"wdt977.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype214 = internal constant [30 x i8] c"wdt977.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout215 = internal constant [73 x i8] c"wdt977.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@wdt977_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 130, ptr @.str.4, ptr @wdt977_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@wdt977_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @wdt977_notify_sys, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@__initcall__kmod_wdt977__216_501_wd977_init6 = internal global ptr @wd977_init, section ".initcall6.init", align 4
@__exitcall_wd977_exit = internal global ptr @wd977_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author217 = internal constant [50 x i8] c"wdt977.author=Woody Suwalski <woodys@xandros.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description218 = internal constant [44 x i8] c"wdt977.description=W83977AF Watchdog driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file219 = internal constant [36 x i8] c"wdt977.file=drivers/watchdog/wdt977\00", section ".modinfo", align 1
@__UNIQUE_ID_license220 = internal constant [19 x i8] c"wdt977.license=GPL\00", section ".modinfo", align 1
@spinlock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@wdt977_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016wdt977: shutdown\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wdt977_stop\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/watchdog/wdt977.c\00", [38 x i8] zeroinitializer }, align 32
@wdt977_stop._entry_ptr = internal global ptr @wdt977_stop._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spinlock\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@wdt977_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @wdt977_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wdt977_ioctl, ptr null, ptr null, i32 0, ptr @wdt977_open, ptr null, ptr @wdt977_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@expect_close = internal global { i1, [31 x i8] } zeroinitializer, align 32
@timeoutM = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 1, [32 x i8] c"Wdt977\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@wdt977_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016wdt977: activated\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wdt977_start\00", [19 x i8] zeroinitializer }, align 32
@wdt977_start._entry_ptr = internal global ptr @wdt977_start._entry, section ".printk_index", align 4
@timer_alive = internal global { i32, [28 x i8] } zeroinitializer, align 32
@wdt977_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\012wdt977: Unexpected close, not stopping watchdog!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdt977_release\00", [17 x i8] zeroinitializer }, align 32
@wdt977_release._entry_ptr = internal global ptr @wdt977_release._entry, section ".printk_index", align 4
@wd977_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016wdt977: driver v%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wd977_init\00", [21 x i8] zeroinitializer }, align 32
@wd977_init._entry_ptr = internal global ptr @wd977_init._entry, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.04\00", [27 x i8] zeroinitializer }, align 32
@wd977_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016wdt977: timeout value must be 60 < timeout < 15300, using %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wd977_init._entry_ptr.17 = internal global ptr @wd977_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Wdt977\00", [25 x i8] zeroinitializer }, align 32
@wd977_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013wdt977: I/O address 0x%04x already in use\0A\00", [51 x i8] zeroinitializer }, align 32
@wd977_init._entry_ptr.21 = internal global ptr @wd977_init._entry.19, section ".printk_index", align 4
@wd977_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.13, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013wdt977: cannot register reboot notifier (err=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@wd977_init._entry_ptr.24 = internal global ptr @wd977_init._entry.22, section ".printk_index", align 4
@wd977_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wdt977: cannot register miscdev on minor=%d (err=%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@wd977_init._entry_ptr.27 = internal global ptr @wd977_init._entry.25, section ".printk_index", align 4
@wd977_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.13, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016wdt977: initialized. timeout=%d sec (nowayout=%d, testmode=%i)\0A\00", [62 x i8] zeroinitializer }, align 32
@wd977_init._entry_ptr.30 = internal global ptr @wd977_init._entry.28, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 2147768065, i64 2147768066, i64 2147768068, i64 2147768069, i64 2147768071, i64 2150127360, i64 3221509894]
@___asan_gen_.31 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 53, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"testmode\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 56, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 66, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"wdt977_miscdev\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 430, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"wdt977_notifier\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 436, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [9 x i8] c"spinlock\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 162, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 58, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 432, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"wdt977_fops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 420, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"expect_close\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"timeoutM\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 54, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 329, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 174, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 117, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"timer_alive\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 55, i32 22 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 286, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 444, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 450, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 458, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 459, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 468, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 474, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [29 x i8] c"../drivers/watchdog/wdt977.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 479, i32 2 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author217, ptr @__UNIQUE_ID_description218, ptr @__UNIQUE_ID_file219, ptr @__UNIQUE_ID_license220, ptr @__UNIQUE_ID_nowayout215, ptr @__UNIQUE_ID_nowayouttype214, ptr @__UNIQUE_ID_testmode213, ptr @__UNIQUE_ID_testmodetype212, ptr @__UNIQUE_ID_timeout211, ptr @__UNIQUE_ID_timeouttype210, ptr @__exitcall_wd977_exit, ptr @__initcall__kmod_wdt977__216_501_wd977_init6, ptr @__param_nowayout, ptr @__param_testmode, ptr @__param_timeout, ptr @wd977_exit, ptr @wd977_init._entry, ptr @wd977_init._entry.15, ptr @wd977_init._entry.19, ptr @wd977_init._entry.22, ptr @wd977_init._entry.25, ptr @wd977_init._entry.28, ptr @wd977_init._entry_ptr, ptr @wd977_init._entry_ptr.17, ptr @wd977_init._entry_ptr.21, ptr @wd977_init._entry_ptr.24, ptr @wd977_init._entry_ptr.27, ptr @wd977_init._entry_ptr.30, ptr @wdt977_release._entry, ptr @wdt977_release._entry_ptr, ptr @wdt977_start._entry, ptr @wdt977_start._entry_ptr, ptr @wdt977_stop._entry, ptr @wdt977_stop._entry_ptr, ptr @timeout, ptr @testmode, ptr @nowayout, ptr @wdt977_miscdev, ptr @wdt977_notifier, ptr @spinlock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @wdt977_fops, ptr @expect_close, ptr @timeoutM, ptr @ident, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @timer_alive, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt977_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt977_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt977_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt977_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expect_close to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeoutM to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt977_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_alive to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt977_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd977_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd977_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd977_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd977_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd977_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd977_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wd977_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wdt977_stop()
  tail call void @misc_deregister(ptr noundef nonnull @wdt977_miscdev) #5
  %call1 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @wdt977_notifier) #5
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 880, i32 noundef 2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wdt977_stop() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @spinlock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -121) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -121) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 7) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 8) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -14) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 -1) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -13) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 0) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -12) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 0) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -14) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 0) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 7) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 7) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -26) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 8) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -86) #5, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @spinlock, i32 noundef %call2) #5
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wd977_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14) #8
  %0 = load i32, ptr @timeout, align 4
  %1 = add i32 %0, -15301
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15300, i32 %1)
  %2 = icmp ult i32 %1, -15300
  br i1 %2, label %if.then, label %wdt977_set_timeout.exit.thread

wdt977_set_timeout.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = trunc i32 %0 to i16
  %div5.lhs.trunc.i = add nuw nsw i16 %3, 59
  %div56.i = udiv i16 %div5.lhs.trunc.i, 60
  %div5.zext.i = zext i16 %div56.i to i32
  store i32 %div5.zext.i, ptr @timeoutM, align 4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i32 60, ptr @timeout, align 4
  store i32 1, ptr @timeoutM, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 60) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %wdt977_set_timeout.exit.thread
  %call8 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 880, i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 0) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef 880) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @wdt977_notifier) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call17) #8
  br label %err_out_region

if.end25:                                         ; preds = %if.end16
  %call26 = tail call i32 @misc_register(ptr noundef nonnull @wdt977_miscdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.end37, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %4 = load i32, ptr @wdt977_miscdev, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %4, i32 noundef %call26) #8
  %call41 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @wdt977_notifier) #5
  br label %err_out_region

do.end37:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %5 = load i32, ptr @timeout, align 4
  %6 = load i8, ptr @nowayout, align 1, !range !117
  %7 = zext i8 %6 to i32
  %8 = load i32, ptr @testmode, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %5, i32 noundef %7, i32 noundef %8) #8
  br label %cleanup

err_out_region:                                   ; preds = %do.end31, %do.end22
  %rc.0 = phi i32 [ %call17, %do.end22 ], [ %call26, %do.end31 ]
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 880, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %err_out_region, %do.end37, %do.end13
  %retval.0 = phi i32 [ 0, %do.end37 ], [ %rc.0, %err_out_region ], [ -5, %do.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt977_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  %0 = load i8, ptr @nowayout, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %for.body.preheader, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.body.preheader:                               ; preds = %if.then
  store i1 false, ptr @expect_close, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 316) #5
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.025
  %1 = tail call i32 @llvm.read_register.i32(metadata !105) #5
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !118
  %and.i = and i32 %3, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #5, !srcloc !121
  %asmresult = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #5, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool5.not = icmp eq i32 %asmresult, 0
  br i1 %tobool5.not, label %if.end, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %for.body
  %asmresult3 = extractvalue { i32, i32 } %4, 1
  %conv7 = and i32 %asmresult3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %conv7)
  %cmp8 = icmp eq i32 %conv7, 86
  br i1 %cmp8, label %if.then10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @expect_close, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.025, 1
  %cmp.not = icmp eq i32 %inc, %count
  br i1 %cmp.not, label %for.inc.if.end15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end15:                                         ; preds = %for.inc.if.end15_crit_edge, %if.then.if.end15_crit_edge
  tail call fastcc void @wdt977_keepalive()
  br label %return

return:                                           ; preds = %if.end15, %for.body.return_crit_edge, %entry.return_crit_edge
  %retval.3 = phi i32 [ %count, %if.end15 ], [ 0, %entry.return_crit_edge ], [ -14, %for.body.return_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt977_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2144839936, label %sw.bb
    i32 -2147199231, label %sw.bb2
    i32 -2147199230, label %sw.bb6
    i32 -2147199228, label %sw.bb22
    i32 -2147199227, label %sw.bb43
    i32 -1073457402, label %sw.bb45
    i32 -2147199225, label %entry.sw.bb66_crit_edge
  ]

entry.sw.bb66_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb66

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %sw.bb.cleanup_crit_edge, label %if.end.i.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 40, i32 -1226833920) #9, !srcloc !122
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ident, i32 noundef 40) #5
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull @ident, i32 noundef 40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @spinlock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -121) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -121) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 7) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 8) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -12) #5, !srcloc !116
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr)) #5, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -86) #5, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @spinlock, i32 noundef %call2.i) #5
  %4 = shl i8 %3, 5
  %5 = and i8 %4, 32
  %6 = zext i8 %5 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 368) #5
  %7 = tail call i32 @llvm.read_register.i32(metadata !105) #5
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !118
  %and.i = and i32 %9, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %10 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %6, i32 -1226833921) #5, !srcloc !125
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #5, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 371) #5
  %11 = tail call i32 @llvm.read_register.i32(metadata !105) #5
  %and.i.i.i92 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i92 to ptr
  %cpu_domain.i.i93 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i93) #4, !srcloc !118
  %and.i94 = and i32 %13, -13
  %or.i95 = or i32 %and.i94, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i95) #5, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 0, i32 -1226833921) #5, !srcloc !126
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #5, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 374) #5
  %15 = tail call i32 @llvm.read_register.i32(metadata !105) #5
  %and.i.i.i96 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i96 to ptr
  %cpu_domain.i.i97 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i97) #4, !srcloc !118
  %and.i98 = and i32 %17, -13
  %or.i99 = or i32 %and.i98, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i99) #5, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #5, !srcloc !127
  %asmresult = extractvalue { i32, i32 } %18, 0
  %asmresult31 = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #5, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool33.not = icmp eq i32 %asmresult, 0
  br i1 %tobool33.not, label %if.end, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb22
  %and = and i32 %asmresult31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end.if.end37_crit_edge, label %if.then35

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wdt977_stop()
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end.if.end37_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then35 ], [ -22, %if.end.if.end37_crit_edge ]
  %and38 = and i32 %asmresult31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.then40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wdt977_start()
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wdt977_keepalive()
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 394) #5
  %19 = tail call i32 @llvm.read_register.i32(metadata !105) #5
  %and.i.i.i100 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i100 to ptr
  %cpu_domain.i.i101 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i101) #4, !srcloc !118
  %and.i102 = and i32 %21, -13
  %or.i103 = or i32 %and.i102, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i103) #5, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %22 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #5, !srcloc !128
  %asmresult55 = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #5, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult55)
  %tobool58.not = icmp eq i32 %asmresult55, 0
  br i1 %tobool58.not, label %if.end60, label %sw.bb45.cleanup_crit_edge

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %sw.bb45
  %asmresult56 = extractvalue { i32, i32 } %22, 1
  %23 = add i32 %asmresult56, -15301
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15300, i32 %23)
  %24 = icmp ult i32 %23, -15300
  br i1 %24, label %if.end60.cleanup_crit_edge, label %if.end64

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %25 = trunc i32 %asmresult56 to i16
  %div5.lhs.trunc.i = add nuw nsw i16 %25, 59
  %div56.i = udiv i16 %div5.lhs.trunc.i, 60
  %div5.zext.i = zext i16 %div56.i to i32
  store i32 %asmresult56, ptr @timeout, align 4
  store i32 %div5.zext.i, ptr @timeoutM, align 4
  tail call fastcc void @wdt977_keepalive()
  br label %sw.bb66

sw.bb66:                                          ; preds = %if.end64, %entry.sw.bb66_crit_edge
  %26 = load i32, ptr @timeout, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 404) #5
  %27 = tail call i32 @llvm.read_register.i32(metadata !105) #5
  %and.i.i.i104 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i104 to ptr
  %cpu_domain.i.i105 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i105) #4, !srcloc !118
  %and.i106 = and i32 %29, -13
  %or.i107 = or i32 %and.i106, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i107) #5, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %30 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %26, i32 -1226833921) #5, !srcloc !129
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #5, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %sw.bb66, %if.end60.cleanup_crit_edge, %sw.bb45.cleanup_crit_edge, %sw.bb43, %if.then40, %if.end37.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %sw.bb6, %sw.bb2, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %sw.bb66 ], [ 0, %sw.bb43 ], [ %14, %sw.bb6 ], [ %10, %sw.bb2 ], [ -14, %sw.bb22.cleanup_crit_edge ], [ 0, %if.then40 ], [ %retval1.0, %if.end37.cleanup_crit_edge ], [ -14, %sw.bb45.cleanup_crit_edge ], [ -25, %entry.cleanup_crit_edge ], [ -22, %if.end60.cleanup_crit_edge ], [ -14, %sw.bb.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt977_open(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @timer_alive) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @nowayout, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__module_get(ptr noundef null) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call fastcc void @wdt977_start()
  %call5 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #5
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt977_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @expect_close, align 1
  br i1 %.b, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wdt977_stop()
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @timer_alive) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wdt977_keepalive()
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i1 false, ptr @expect_close, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wdt977_keepalive() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @spinlock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -121) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -121) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 7) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 8) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -14) #5, !srcloc !116
  %0 = load i32, ptr @timeoutM, align 4
  %conv5 = trunc i32 %0 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 %conv5) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -86) #5, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @spinlock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wdt977_start() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @spinlock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -121) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -121) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 7) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 8) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -14) #5, !srcloc !116
  %0 = load i32, ptr @timeoutM, align 4
  %conv5 = trunc i32 %0 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 %conv5) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -13) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 0) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -12) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 0) #5, !srcloc !116
  %1 = load i32, ptr @testmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 7) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 7) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -26) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873487 to ptr), i8 8) #5, !srcloc !116
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873488 to ptr), i8 -86) #5, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @spinlock, i32 noundef %call2) #5
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
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
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt977_notify_sys(ptr nocapture noundef readnone %this, i32 noundef %code, ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %code.off = add i32 %code, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %code.off)
  %switch = icmp ult i32 %code.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wdt977_stop()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !66, !67, !68, !70, !72, !73, !74, !75, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104}
!llvm.named.register.sp = !{!105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__param_timeout, !1, !"__param_timeout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/wdt977.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_timeouttype210, !1, !"__UNIQUE_ID_timeouttype210", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_timeout211, !4, !"__UNIQUE_ID_timeout211", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/wdt977.c", i32 61, i32 1}
!5 = !{ptr @__param_testmode, !6, !"__param_testmode", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/wdt977.c", i32 63, i32 1}
!7 = !{ptr @__UNIQUE_ID_testmodetype212, !6, !"__UNIQUE_ID_testmodetype212", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_testmode213, !9, !"__UNIQUE_ID_testmode213", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/wdt977.c", i32 64, i32 1}
!10 = !{ptr @__param_nowayout, !11, !"__param_nowayout", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/wdt977.c", i32 67, i32 1}
!12 = !{ptr @__UNIQUE_ID_nowayouttype214, !11, !"__UNIQUE_ID_nowayouttype214", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_nowayout215, !14, !"__UNIQUE_ID_nowayout215", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/wdt977.c", i32 68, i32 1}
!15 = !{ptr @__initcall__kmod_wdt977__216_501_wd977_init6, !16, !"__initcall__kmod_wdt977__216_501_wd977_init6", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/wdt977.c", i32 501, i32 1}
!17 = !{ptr @__exitcall_wd977_exit, !18, !"__exitcall_wd977_exit", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/wdt977.c", i32 502, i32 1}
!19 = !{ptr @__UNIQUE_ID_author217, !20, !"__UNIQUE_ID_author217", i1 false, i1 false}
!20 = !{!"../drivers/watchdog/wdt977.c", i32 504, i32 1}
!21 = !{ptr @__UNIQUE_ID_description218, !22, !"__UNIQUE_ID_description218", i1 false, i1 false}
!22 = !{!"../drivers/watchdog/wdt977.c", i32 505, i32 1}
!23 = !{ptr @__UNIQUE_ID_file219, !24, !"__UNIQUE_ID_file219", i1 false, i1 false}
!24 = !{!"../drivers/watchdog/wdt977.c", i32 506, i32 1}
!25 = !{ptr @__UNIQUE_ID_license220, !24, !"__UNIQUE_ID_license220", i1 false, i1 false}
!26 = !{ptr @testmode, !27, !"testmode", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/wdt977.c", i32 56, i32 12}
!28 = !{ptr @__param_str_timeout, !1, !"__param_str_timeout", i1 false, i1 false}
!29 = !{ptr @timeout, !30, !"timeout", i1 false, i1 false}
!30 = !{!"../drivers/watchdog/wdt977.c", i32 53, i32 12}
!31 = !{ptr @__param_str_testmode, !6, !"__param_str_testmode", i1 false, i1 false}
!32 = !{ptr @__param_str_nowayout, !11, !"__param_str_nowayout", i1 false, i1 false}
!33 = !{ptr @nowayout, !34, !"nowayout", i1 false, i1 false}
!34 = !{!"../drivers/watchdog/wdt977.c", i32 66, i32 13}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/watchdog/wdt977.c", i32 162, i32 2}
!37 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @wdt977_stop._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @wdt977_stop._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/watchdog/wdt977.c", i32 58, i32 8}
!43 = !{ptr @spinlock, !42, !"spinlock", i1 false, i1 false}
!44 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/wdt977.c", i32 432, i32 11}
!46 = !{ptr @wdt977_miscdev, !47, !"wdt977_miscdev", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/wdt977.c", i32 430, i32 26}
!48 = !{ptr @wdt977_fops, !49, !"wdt977_fops", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/wdt977.c", i32 420, i32 37}
!50 = distinct !{null, !51, !"expect_close", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/wdt977.c", i32 57, i32 13}
!52 = !{ptr @timeoutM, !53, !"timeoutM", i1 false, i1 false}
!53 = !{!"../drivers/watchdog/wdt977.c", i32 54, i32 12}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!56 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!59 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!61 = !{ptr @ident, !62, !"ident", i1 false, i1 false}
!62 = !{!"../drivers/watchdog/wdt977.c", i32 329, i32 35}
!63 = !{ptr @.str.8, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/watchdog/wdt977.c", i32 117, i32 2}
!65 = !{ptr @.str.9, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @wdt977_start._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @wdt977_start._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @timer_alive, !69, !"timer_alive", i1 false, i1 false}
!69 = !{!"../drivers/watchdog/wdt977.c", i32 55, i32 22}
!70 = !{ptr @.str.10, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/watchdog/wdt977.c", i32 286, i32 3}
!72 = !{ptr @.str.11, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @wdt977_release._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @wdt977_release._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @wdt977_notifier, !76, !"wdt977_notifier", i1 false, i1 false}
!76 = !{!"../drivers/watchdog/wdt977.c", i32 436, i32 30}
!77 = !{ptr @.str.12, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/watchdog/wdt977.c", i32 444, i32 2}
!79 = !{ptr @.str.13, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @wd977_init._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @wd977_init._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.16, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/watchdog/wdt977.c", i32 450, i32 3}
!85 = !{ptr @wd977_init._entry.15, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @wd977_init._entry_ptr.17, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.18, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/watchdog/wdt977.c", i32 458, i32 8}
!89 = !{ptr @.str.20, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/watchdog/wdt977.c", i32 459, i32 4}
!91 = !{ptr @wd977_init._entry.19, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @wd977_init._entry_ptr.21, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/watchdog/wdt977.c", i32 468, i32 3}
!95 = !{ptr @wd977_init._entry.22, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @wd977_init._entry_ptr.24, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.26, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/watchdog/wdt977.c", i32 474, i32 3}
!99 = !{ptr @wd977_init._entry.25, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @wd977_init._entry_ptr.27, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/watchdog/wdt977.c", i32 479, i32 2}
!103 = !{ptr @wd977_init._entry.28, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @wd977_init._entry_ptr.30, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{!"sp"}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 2153077566}
!116 = !{i64 5541510}
!117 = !{i8 0, i8 2}
!118 = !{i64 4910153}
!119 = !{i64 4910350}
!120 = !{i64 2152395583}
!121 = !{i64 2153331795, i64 2153332075, i64 2153332409, i64 2153332743}
!122 = !{i64 2152415279, i64 2152415304}
!123 = !{i64 5541905}
!124 = !{i64 2153075581}
!125 = !{i64 2153348009, i64 2153348289, i64 2153348623, i64 2153348957}
!126 = !{i64 2153357505, i64 2153357785, i64 2153358119, i64 2153358453}
!127 = !{i64 2153369766, i64 2153370046, i64 2153370380, i64 2153370714}
!128 = !{i64 2153387520, i64 2153387800, i64 2153388134, i64 2153388468}
!129 = !{i64 2153397750, i64 2153398030, i64 2153398364, i64 2153398698}
