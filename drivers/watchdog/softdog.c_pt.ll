; ModuleID = '/llk/IR_all_yes/drivers/watchdog/softdog.c_pt.bc'
source_filename = "../drivers/watchdog/softdog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_soft_margin = internal constant [20 x i8] c"softdog.soft_margin\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@soft_margin = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_soft_margin = internal constant %struct.kernel_param { ptr @__param_str_soft_margin, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @soft_margin } }, section "__param", align 4
@__UNIQUE_ID_soft_margintype170 = internal constant [34 x i8] c"softdog.parmtype=soft_margin:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_soft_margin171 = internal constant [96 x i8] c"softdog.parm=soft_margin:Watchdog soft_margin in seconds. (0 < soft_margin < 65536, default=60)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [17 x i8] c"softdog.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype172 = internal constant [31 x i8] c"softdog.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout173 = internal constant [74 x i8] c"softdog.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__param_str_soft_noboot = internal constant [20 x i8] c"softdog.soft_noboot\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@soft_noboot = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_soft_noboot = internal constant %struct.kernel_param { ptr @__param_str_soft_noboot, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @soft_noboot } }, section "__param", align 4
@__UNIQUE_ID_soft_noboottype174 = internal constant [33 x i8] c"softdog.parmtype=soft_noboot:int\00", section ".modinfo", align 1
@__UNIQUE_ID_soft_noboot175 = internal constant [93 x i8] c"softdog.parm=soft_noboot:Softdog action, set to 1 to ignore reboots, 0 to reboot (default=0)\00", section ".modinfo", align 1
@__param_str_soft_panic = internal constant [19 x i8] c"softdog.soft_panic\00", align 1
@soft_panic = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_soft_panic = internal constant %struct.kernel_param { ptr @__param_str_soft_panic, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @soft_panic } }, section "__param", align 4
@__UNIQUE_ID_soft_panictype176 = internal constant [32 x i8] c"softdog.parmtype=soft_panic:int\00", section ".modinfo", align 1
@__UNIQUE_ID_soft_panic177 = internal constant [83 x i8] c"softdog.parm=soft_panic:Softdog action, set to 1 to panic, 0 to reboot (default=0)\00", section ".modinfo", align 1
@__param_str_soft_reboot_cmd = internal constant [24 x i8] c"softdog.soft_reboot_cmd\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@soft_reboot_cmd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_soft_reboot_cmd = internal constant %struct.kernel_param { ptr @__param_str_soft_reboot_cmd, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @soft_reboot_cmd } }, section "__param", align 4
@__UNIQUE_ID_soft_reboot_cmdtype178 = internal constant [39 x i8] c"softdog.parmtype=soft_reboot_cmd:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_soft_reboot_cmd179 = internal constant [87 x i8] c"softdog.parm=soft_reboot_cmd:Set reboot command. Emergency reboot takes place if unset\00", section ".modinfo", align 1
@__param_str_soft_active_on_boot = internal constant [28 x i8] c"softdog.soft_active_on_boot\00", align 1
@soft_active_on_boot = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_soft_active_on_boot = internal constant %struct.kernel_param { ptr @__param_str_soft_active_on_boot, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @soft_active_on_boot } }, section "__param", align 4
@__UNIQUE_ID_soft_active_on_boottype180 = internal constant [42 x i8] c"softdog.parmtype=soft_active_on_boot:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_soft_active_on_boot181 = internal constant [87 x i8] c"softdog.parm=soft_active_on_boot:Set to true to active Softdog on boot (default=false)\00", section ".modinfo", align 1
@__initcall__kmod_softdog__182_214_softdog_init6 = internal global ptr @softdog_init, section ".initcall6.init", align 4
@softdog_dev = internal global { %struct.watchdog_device, [52 x i8] } { %struct.watchdog_device { i32 0, ptr null, ptr null, ptr @softdog_info, ptr @softdog_ops, ptr null, i32 0, i32 60, i32 0, i32 1, i32 65535, i32 0, i32 0, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_softdog_exit = internal global ptr @softdog_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author183 = internal constant [24 x i8] c"softdog.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description184 = internal constant [52 x i8] c"softdog.description=Software Watchdog Device Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [38 x i8] c"softdog.file=drivers/watchdog/softdog\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [20 x i8] c"softdog.license=GPL\00", section ".modinfo", align 1
@softdog_ticktock = internal global { %struct.hrtimer, [48 x i8] } zeroinitializer, align 32
@softdog_info = internal global { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Software Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@softdog_preticktock = internal global { %struct.hrtimer, [48 x i8] } zeroinitializer, align 32
@softdog_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\016softdog: initialized. soft_noboot=%d soft_margin=%d sec soft_panic=%d (nowayout=%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"softdog_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/watchdog/softdog.c\00", [37 x i8] zeroinitializer }, align 32
@softdog_init._entry_ptr = internal global ptr @softdog_init._entry, section ".printk_index", align 4
@softdog_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016softdog:              soft_reboot_cmd=%s soft_active_on_boot=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@softdog_init._entry_ptr.5 = internal global ptr @softdog_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<not set>\00", [22 x i8] zeroinitializer }, align 32
@softdog_fire.soft_reboot_fired = internal global { i1, [31 x i8] } zeroinitializer, align 32
@softdog_fire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\012softdog: Triggered - Reboot ignored\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"softdog_fire\00", [19 x i8] zeroinitializer }, align 32
@softdog_fire._entry_ptr = internal global ptr @softdog_fire._entry, section ".printk_index", align 4
@softdog_fire._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\012softdog: Initiating panic\0A\00", [35 x i8] zeroinitializer }, align 32
@softdog_fire._entry_ptr.11 = internal global ptr @softdog_fire._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Software Watchdog Timer expired\00", [32 x i8] zeroinitializer }, align 32
@softdog_fire._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\012softdog: Initiating system reboot\0A\00", [59 x i8] zeroinitializer }, align 32
@softdog_fire._entry_ptr.15 = internal global ptr @softdog_fire._entry.13, section ".printk_index", align 4
@softdog_fire.reboot_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @softdog_fire.reboot_work, i64 4), ptr getelementptr (i8, ptr @softdog_fire.reboot_work, i64 4) }, ptr @reboot_work_fn, %struct.lockdep_map { ptr @softdog_fire.reboot_work, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reboot_work\00", [20 x i8] zeroinitializer }, align 32
@softdog_fire._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\012softdog: Reboot didn't ?????\0A\00", [32 x i8] zeroinitializer }, align 32
@softdog_fire._entry_ptr.19 = internal global ptr @softdog_fire._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"softdog_reboot\00", [17 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@softdog_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @softdog_ping, ptr @softdog_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"soft_margin\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 32, i32 21 }
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 38, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"soft_noboot\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 44, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [11 x i8] c"soft_panic\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 49, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"soft_reboot_cmd\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 54, i32 14 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"soft_active_on_boot\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 59, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"softdog_dev\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 174, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"softdog_ticktock\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 64, i32 23 }
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"softdog_info\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 163, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"softdog_preticktock\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 65, i32 23 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 207, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 209, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [31 x i8] c"softdog_fire.soft_reboot_fired\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 84, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 86, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 87, i32 9 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 89, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"reboot_work\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 91, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 118, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 75, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"softdog_ops\00", align 1
@___asan_gen_.113 = private constant [30 x i8] c"../drivers/watchdog/softdog.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 168, i32 34 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author183, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__UNIQUE_ID_nowayout173, ptr @__UNIQUE_ID_nowayouttype172, ptr @__UNIQUE_ID_soft_active_on_boot181, ptr @__UNIQUE_ID_soft_active_on_boottype180, ptr @__UNIQUE_ID_soft_margin171, ptr @__UNIQUE_ID_soft_margintype170, ptr @__UNIQUE_ID_soft_noboot175, ptr @__UNIQUE_ID_soft_noboottype174, ptr @__UNIQUE_ID_soft_panic177, ptr @__UNIQUE_ID_soft_panictype176, ptr @__UNIQUE_ID_soft_reboot_cmd179, ptr @__UNIQUE_ID_soft_reboot_cmdtype178, ptr @__exitcall_softdog_exit, ptr @__initcall__kmod_softdog__182_214_softdog_init6, ptr @__param_nowayout, ptr @__param_soft_active_on_boot, ptr @__param_soft_margin, ptr @__param_soft_noboot, ptr @__param_soft_panic, ptr @__param_soft_reboot_cmd, ptr @softdog_exit, ptr @softdog_fire._entry, ptr @softdog_fire._entry.13, ptr @softdog_fire._entry.17, ptr @softdog_fire._entry.9, ptr @softdog_fire._entry_ptr, ptr @softdog_fire._entry_ptr.11, ptr @softdog_fire._entry_ptr.15, ptr @softdog_fire._entry_ptr.19, ptr @softdog_init._entry, ptr @softdog_init._entry.3, ptr @softdog_init._entry_ptr, ptr @softdog_init._entry_ptr.5, ptr @soft_margin, ptr @nowayout, ptr @soft_noboot, ptr @soft_panic, ptr @soft_reboot_cmd, ptr @soft_active_on_boot, ptr @softdog_dev, ptr @softdog_ticktock, ptr @softdog_info, ptr @softdog_preticktock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @softdog_fire.soft_reboot_fired, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @softdog_fire.reboot_work, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @softdog_ops], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_margin to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_noboot to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_panic to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_reboot_cmd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_active_on_boot to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softdog_dev to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softdog_ticktock to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softdog_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softdog_preticktock to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softdog_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softdog_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softdog_fire.soft_reboot_fired to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softdog_fire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softdog_fire._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softdog_fire._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softdog_fire.reboot_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softdog_fire._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softdog_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @softdog_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @soft_margin, align 4
  %call = tail call i32 @watchdog_init_timeout(ptr noundef nonnull @softdog_dev, i32 noundef %0, ptr noundef null) #5
  %1 = load i8, ptr @nowayout, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

entry.watchdog_set_nowayout.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 1, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @softdog_dev, i32 0, i32 18)) #5
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %entry.watchdog_set_nowayout.exit_crit_edge
  tail call void @_set_bit(i32 noundef 2, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @softdog_dev, i32 0, i32 18)) #5
  tail call void @hrtimer_init(ptr noundef nonnull @softdog_ticktock, i32 noundef 1, i32 noundef 1) #5
  store ptr @softdog_fire, ptr getelementptr inbounds (%struct.hrtimer, ptr @softdog_ticktock, i32 0, i32 2), align 8
  %2 = load i32, ptr @softdog_info, align 4
  %or = or i32 %2, 512
  store i32 %or, ptr @softdog_info, align 4
  tail call void @hrtimer_init(ptr noundef nonnull @softdog_preticktock, i32 noundef 1, i32 noundef 1) #5
  store ptr @softdog_pretimeout, ptr getelementptr inbounds (%struct.hrtimer, ptr @softdog_preticktock, i32 0, i32 2), align 8
  %3 = load i8, ptr @soft_active_on_boot, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %watchdog_set_nowayout.exit.if.end_crit_edge, label %if.then

watchdog_set_nowayout.exit.if.end_crit_edge:      ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @softdog_ping(ptr noundef nonnull @softdog_dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %watchdog_set_nowayout.exit.if.end_crit_edge
  %call3 = tail call i32 @watchdog_register_device(ptr noundef nonnull @softdog_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = load i32, ptr @soft_noboot, align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.watchdog_device, ptr @softdog_dev, i32 0, i32 7), align 4
  %6 = load i32, ptr @soft_panic, align 4
  %7 = load i8, ptr @nowayout, align 1, !range !115
  %8 = zext i8 %7 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %8) #8
  %9 = load ptr, ptr @soft_reboot_cmd, align 4
  %tobool13.not = icmp eq ptr %9, null
  %cond = select i1 %tobool13.not, ptr @.str.6, ptr %9
  %10 = load i8, ptr @soft_active_on_boot, align 1, !range !115
  %11 = zext i8 %10 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %cond, i32 noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @softdog_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @watchdog_unregister_device(ptr noundef nonnull @softdog_dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softdog_fire(ptr nocapture noundef %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @module_put(ptr noundef null) #5
  %0 = load i32, ptr @soft_noboot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, ptr @soft_panic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %do.end9, label %do.end4

do.end4:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.12) #9
  unreachable

do.end9:                                          ; preds = %if.else
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  %.b21 = load i1, ptr @softdog_fire.soft_reboot_fired, align 1
  br i1 %.b21, label %do.end9.if.end_crit_edge, label %land.lhs.true

do.end9.if.end_crit_edge:                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %do.end9
  %2 = load ptr, ptr @soft_reboot_cmd, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then13

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @softdog_fire.soft_reboot_fired, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef nonnull @softdog_fire.reboot_work) #5
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  %4 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %expires.i, align 8
  %add.i = add i64 %5, 60000000000
  store i64 %add.i, ptr %expires.i, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 1
  %6 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %_softexpires.i, align 8
  %add3.i = add i64 %7, 60000000000
  store i64 %add3.i, ptr %_softexpires.i, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %do.end9.if.end_crit_edge
  tail call void @emergency_restart() #5
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #8
  br label %return

return:                                           ; preds = %if.end, %if.then13, %do.end
  %retval.0 = phi i32 [ 1, %if.then13 ], [ 0, %if.end ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softdog_pretimeout(ptr nocapture noundef readnone %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @watchdog_notify_pretimeout(ptr noundef nonnull @softdog_dev) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softdog_ping(ptr nocapture noundef readonly %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @hrtimer_active(ptr noundef nonnull @softdog_ticktock) #5
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__module_get(ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %w, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %conv = zext i32 %1 to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000000
  tail call void @hrtimer_start_range_ns(ptr noundef nonnull @softdog_ticktock, i64 noundef %mul.i, i64 noundef 0, i32 noundef 1) #5
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %w, i32 0, i32 8
  %2 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pretimeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  %sub = sub i32 %5, %3
  %conv5 = zext i32 %sub to i64
  %mul.i12 = mul nuw nsw i64 %conv5, 1000000000
  tail call void @hrtimer_start_range_ns(ptr noundef nonnull @softdog_preticktock, i64 noundef %mul.i12, i64 noundef 0, i32 noundef 1) #5
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @hrtimer_cancel(ptr noundef nonnull @softdog_preticktock) #5
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reboot_work_fn(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @reboot_kthread_fn, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.20) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @wake_up_process(ptr noundef %call) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_restart() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reboot_kthread_fn(ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @soft_reboot_cmd, align 4
  tail call void @kernel_restart(ptr noundef %0) #5
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_notify_pretimeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softdog_stop(ptr nocapture noundef readnone %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hrtimer_cancel(ptr noundef nonnull @softdog_ticktock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @module_put(ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call i32 @hrtimer_cancel(ptr noundef nonnull @softdog_preticktock) #5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !50, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !100, !102, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__param_soft_margin, !1, !"__param_soft_margin", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/softdog.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_soft_margintype170, !1, !"__UNIQUE_ID_soft_margintype170", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_soft_margin171, !4, !"__UNIQUE_ID_soft_margin171", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/softdog.c", i32 34, i32 1}
!5 = !{ptr @__param_nowayout, !6, !"__param_nowayout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/softdog.c", i32 39, i32 1}
!7 = !{ptr @__UNIQUE_ID_nowayouttype172, !6, !"__UNIQUE_ID_nowayouttype172", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nowayout173, !9, !"__UNIQUE_ID_nowayout173", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/softdog.c", i32 40, i32 1}
!10 = !{ptr @__param_soft_noboot, !11, !"__param_soft_noboot", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/softdog.c", i32 45, i32 1}
!12 = !{ptr @__UNIQUE_ID_soft_noboottype174, !11, !"__UNIQUE_ID_soft_noboottype174", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_soft_noboot175, !14, !"__UNIQUE_ID_soft_noboot175", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/softdog.c", i32 46, i32 1}
!15 = !{ptr @__param_soft_panic, !16, !"__param_soft_panic", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/softdog.c", i32 50, i32 1}
!17 = !{ptr @__UNIQUE_ID_soft_panictype176, !16, !"__UNIQUE_ID_soft_panictype176", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_soft_panic177, !19, !"__UNIQUE_ID_soft_panic177", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/softdog.c", i32 51, i32 1}
!20 = !{ptr @__param_soft_reboot_cmd, !21, !"__param_soft_reboot_cmd", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/softdog.c", i32 55, i32 1}
!22 = !{ptr @__UNIQUE_ID_soft_reboot_cmdtype178, !21, !"__UNIQUE_ID_soft_reboot_cmdtype178", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_soft_reboot_cmd179, !24, !"__UNIQUE_ID_soft_reboot_cmd179", i1 false, i1 false}
!24 = !{!"../drivers/watchdog/softdog.c", i32 56, i32 1}
!25 = !{ptr @__param_soft_active_on_boot, !26, !"__param_soft_active_on_boot", i1 false, i1 false}
!26 = !{!"../drivers/watchdog/softdog.c", i32 60, i32 1}
!27 = !{ptr @__UNIQUE_ID_soft_active_on_boottype180, !26, !"__UNIQUE_ID_soft_active_on_boottype180", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_soft_active_on_boot181, !29, !"__UNIQUE_ID_soft_active_on_boot181", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/softdog.c", i32 61, i32 1}
!30 = !{ptr @__initcall__kmod_softdog__182_214_softdog_init6, !31, !"__initcall__kmod_softdog__182_214_softdog_init6", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/softdog.c", i32 214, i32 1}
!32 = !{ptr @__exitcall_softdog_exit, !33, !"__exitcall_softdog_exit", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/softdog.c", i32 220, i32 1}
!34 = !{ptr @__UNIQUE_ID_author183, !35, !"__UNIQUE_ID_author183", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/softdog.c", i32 222, i32 1}
!36 = !{ptr @__UNIQUE_ID_description184, !37, !"__UNIQUE_ID_description184", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/softdog.c", i32 223, i32 1}
!38 = !{ptr @__UNIQUE_ID_file185, !39, !"__UNIQUE_ID_file185", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/softdog.c", i32 224, i32 1}
!40 = !{ptr @__UNIQUE_ID_license186, !39, !"__UNIQUE_ID_license186", i1 false, i1 false}
!41 = !{ptr @soft_noboot, !42, !"soft_noboot", i1 false, i1 false}
!42 = !{!"../drivers/watchdog/softdog.c", i32 44, i32 12}
!43 = !{ptr @soft_panic, !44, !"soft_panic", i1 false, i1 false}
!44 = !{!"../drivers/watchdog/softdog.c", i32 49, i32 12}
!45 = !{ptr @soft_reboot_cmd, !46, !"soft_reboot_cmd", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/softdog.c", i32 54, i32 14}
!47 = !{ptr @soft_active_on_boot, !48, !"soft_active_on_boot", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/softdog.c", i32 59, i32 13}
!49 = !{ptr @__param_str_soft_margin, !1, !"__param_str_soft_margin", i1 false, i1 false}
!50 = !{ptr @soft_margin, !51, !"soft_margin", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/softdog.c", i32 32, i32 21}
!52 = !{ptr @__param_str_nowayout, !6, !"__param_str_nowayout", i1 false, i1 false}
!53 = !{ptr @nowayout, !54, !"nowayout", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/softdog.c", i32 38, i32 13}
!55 = !{ptr @__param_str_soft_noboot, !11, !"__param_str_soft_noboot", i1 false, i1 false}
!56 = !{ptr @__param_str_soft_panic, !16, !"__param_str_soft_panic", i1 false, i1 false}
!57 = !{ptr @__param_str_soft_reboot_cmd, !21, !"__param_str_soft_reboot_cmd", i1 false, i1 false}
!58 = !{ptr @__param_str_soft_active_on_boot, !26, !"__param_str_soft_active_on_boot", i1 false, i1 false}
!59 = !{ptr @.str, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/watchdog/softdog.c", i32 207, i32 2}
!61 = !{ptr @.str.1, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.2, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @softdog_init._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @softdog_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.4, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/softdog.c", i32 209, i32 2}
!67 = !{ptr @softdog_init._entry.3, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @softdog_init._entry_ptr.5, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.6, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @softdog_ticktock, !71, !"softdog_ticktock", i1 false, i1 false}
!71 = !{!"../drivers/watchdog/softdog.c", i32 64, i32 23}
!72 = distinct !{null, !73, !"soft_reboot_fired", i1 false, i1 false}
!73 = !{!"../drivers/watchdog/softdog.c", i32 80, i32 14}
!74 = !{ptr @.str.7, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/watchdog/softdog.c", i32 84, i32 3}
!76 = !{ptr @.str.8, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @softdog_fire._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @softdog_fire._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.10, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/watchdog/softdog.c", i32 86, i32 3}
!81 = !{ptr @softdog_fire._entry.9, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @softdog_fire._entry_ptr.11, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.12, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/watchdog/softdog.c", i32 87, i32 9}
!85 = !{ptr @.str.14, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/watchdog/softdog.c", i32 89, i32 3}
!87 = !{ptr @softdog_fire._entry.13, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @softdog_fire._entry_ptr.15, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.16, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/watchdog/softdog.c", i32 91, i32 11}
!91 = !{ptr @softdog_fire.reboot_work, !90, !"reboot_work", i1 false, i1 false}
!92 = !{ptr @.str.18, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/watchdog/softdog.c", i32 118, i32 3}
!94 = !{ptr @softdog_fire._entry.17, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @softdog_fire._entry_ptr.19, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.20, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/watchdog/softdog.c", i32 75, i32 2}
!98 = !{ptr @softdog_info, !99, !"softdog_info", i1 false, i1 false}
!99 = !{!"../drivers/watchdog/softdog.c", i32 163, i32 29}
!100 = !{ptr @softdog_preticktock, !101, !"softdog_preticktock", i1 false, i1 false}
!101 = !{!"../drivers/watchdog/softdog.c", i32 65, i32 23}
!102 = !{ptr @softdog_dev, !103, !"softdog_dev", i1 false, i1 false}
!103 = !{!"../drivers/watchdog/softdog.c", i32 174, i32 31}
!104 = !{ptr @softdog_ops, !105, !"softdog_ops", i1 false, i1 false}
!105 = !{!"../drivers/watchdog/softdog.c", i32 168, i32 34}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i8 0, i8 2}
