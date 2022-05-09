; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/cypress_ps2.c_pt.bc'
source_filename = "../drivers/input/mouse/cypress_ps2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cytp_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cytp_report_data = type { i32, [2 x %struct.cytp_contact], i8 }
%struct.cytp_contact = type { i32, i32, i32 }
%struct.input_mt_pos = type { i16, i16 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Cypress\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Trackpad\00", [23 x i8] zeroinitializer }, align 32
@cypress_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 672, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cypress_ps2: Unable to query Trackpad hardware.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cypress_init\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/input/mouse/cypress_ps2.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cypress_init._entry_ptr = internal global ptr @cypress_init._entry, section ".printk_index", align 4
@cypress_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 677, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"cypress_ps2: init: Unable to initialize Cypress absolute mode.\0A\00", [32 x i8] zeroinitializer }, align 32
@cypress_init._entry_ptr.9 = internal global ptr @cypress_init._entry.7, section ".printk_index", align 4
@cypress_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 682, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cypress_ps2: init: Unable to set input params.\0A\00", [48 x i8] zeroinitializer }, align 32
@cypress_init._entry_ptr.12 = internal global ptr @cypress_init._entry.10, section ".printk_index", align 4
@cypress_send_ext_cmd.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"psmouse\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cypress_send_ext_cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"cypress_ps2: send extension cmd 0x%02x, [%d %d %d %d]\0A\00", [41 x i8] zeroinitializer }, align 32
@cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cypress_ps2_sendbyte\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"cypress_ps2: sending command 0x%02x failed, resp 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@cypress_ps2_read_cmd_status.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cypress_ps2_read_cmd_status\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"cypress_ps2: Command 0x%02x response data (0x): %*ph\0A\00", [42 x i8] zeroinitializer }, align 32
@cypress_verify_cmd_state.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cypress_verify_cmd_state\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cypress_ps2: verify cmd state failed.\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cypress_read_fw_version.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cypress_read_fw_version\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cypress_ps2: cytp->fw_version = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cypress_read_fw_version.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.22, ptr @.str.4, ptr @.str.24, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cypress_ps2: cytp->tp_metrics_supported = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cypress_reconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 646, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"cypress_ps2: Reconnect: unable to detect trackpad.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cypress_reconnect\00", [46 x i8] zeroinitializer }, align 32
@cypress_reconnect._entry_ptr = internal global ptr @cypress_reconnect._entry, section ".printk_index", align 4
@cypress_reconnect._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 651, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"cypress_ps2: Reconnect: Unable to initialize Cypress absolute mode.\0A\00", [59 x i8] zeroinitializer }, align 32
@cypress_reconnect._entry_ptr.29 = internal global ptr @cypress_reconnect._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 213, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 214, i32 19 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 672, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 677, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 682, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 175, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 43, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 126, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 165, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 242, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 243, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 646, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [37 x i8] c"../drivers/input/mouse/cypress_ps2.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 651, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @cypress_init._entry, ptr @cypress_init._entry.10, ptr @cypress_init._entry.7, ptr @cypress_init._entry_ptr, ptr @cypress_init._entry_ptr.12, ptr @cypress_init._entry_ptr.9, ptr @cypress_reconnect._entry, ptr @cypress_reconnect._entry.27, ptr @cypress_reconnect._entry_ptr, ptr @cypress_reconnect._entry_ptr.29, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_reconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_reconnect._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param) #6
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %param, align 1, !annotation !66
  %1 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !66
  %3 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !66
  %call = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext 0, ptr noundef nonnull %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %6)
  %cmp.not = icmp eq i8 %6, 51
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %8)
  %cmp4.not = icmp ne i8 %8, -52
  %set_properties.not = xor i1 %set_properties, true
  %brmerge = or i1 %cmp4.not, %set_properties.not
  %.mux = select i1 %cmp4.not, i32 -19, i32 0
  br i1 %brmerge, label %lor.lhs.false.cleanup_crit_edge, label %if.then9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %9 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str, ptr %vendor, align 4
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.1, ptr %name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %.mux, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.then9 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cypress_send_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext %cmd, ptr noundef %param) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_send_ext_cmd.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_send_ext_cmd, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  %conv = zext i8 %cmd to i32
  %2 = lshr i32 %conv, 4
  %and6 = and i32 %2, 3
  %3 = lshr i32 %conv, 2
  %and9 = and i32 %3, 3
  %and11 = and i32 %conv, 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_send_ext_cmd.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef 0, i32 noundef %and6, i32 noundef %and9, i32 noundef %and11) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and14 = and i8 %cmd, 3
  %4 = lshr i8 %cmd, 2
  %and19 = and i8 %4, 3
  %5 = lshr i8 %cmd, 4
  %6 = and i8 %5, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %cmd)
  %switch.i = icmp ult i8 %cmd, 2
  %arrayidx22.i = getelementptr i8, ptr %param, i32 1
  %arrayidx34.i = getelementptr i8, ptr %param, i32 2
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  br label %do.body12

do.body12:                                        ; preds = %do.cond39.do.body12_crit_edge, %do.end
  %tries.0 = phi i32 [ 3, %do.end ], [ %dec, %do.cond39.do.body12_crit_edge ]
  tail call fastcc void @cypress_ps2_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext %and14)
  tail call fastcc void @cypress_ps2_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext %and19)
  tail call fastcc void @cypress_ps2_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext %6)
  tail call fastcc void @cypress_ps2_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext 0)
  %call32 = tail call fastcc i32 @cypress_ps2_read_cmd_status(ptr noundef %psmouse, i8 noundef zeroext %cmd, ptr noundef %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %do.body12.do.cond39_crit_edge

do.body12.do.cond39_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond39

if.end35:                                         ; preds = %do.body12
  br i1 %switch.i, label %if.end35.cleanup_crit_edge, label %if.end.i

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end35
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %param, align 1
  %9 = and i8 %8, -56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %for.cond.preheader.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %11 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx22.i, align 1
  %13 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %14)
  %cmp36.i = icmp eq i8 %14, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %14)
  %cmp36.1.i = icmp eq i8 %14, 20
  %spec.select69.1.i = or i1 %cmp36.1.i, %cmp36.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %14)
  %cmp36.2.i = icmp eq i8 %14, 40
  %spec.select69.2.i = or i1 %cmp36.2.i, %spec.select69.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %14)
  %cmp36.3.i = icmp eq i8 %14, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %14)
  %cmp36.4.i = icmp eq i8 %14, 100
  %15 = or i1 %cmp36.4.i, %cmp36.3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -56, i8 %14)
  %cmp36.5.i = icmp eq i8 %14, -56
  %16 = or i1 %cmp36.5.i, %15
  %spec.select69.5.i = select i1 %16, i1 true, i1 %spec.select69.2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %17 = icmp ult i8 %12, 4
  %18 = select i1 %17, i1 %spec.select69.5.i, i1 false
  br i1 %18, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.do.body.i_crit_edge

for.cond.preheader.i.do.body.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %for.cond.preheader.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_verify_cmd_state.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_send_ext_cmd, %if.then53.i)) #6
          to label %do.cond39 [label %if.then53.i], !srcloc !67

if.then53.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_verify_cmd_state.__UNIQUE_ID_ddebug229, ptr noundef %dev.i, ptr noundef nonnull @.str.21) #6
  br label %do.cond39

do.cond39:                                        ; preds = %if.then53.i, %do.body.i, %do.body12.do.cond39_crit_edge
  %dec = add nsw i32 %tries.0, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %do.cond39.cleanup_crit_edge, label %do.cond39.do.body12_crit_edge

do.cond39.do.body12_crit_edge:                    ; preds = %do.cond39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

do.cond39.cleanup_crit_edge:                      ; preds = %do.cond39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.cond39.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.cond39.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_init(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  %param.i = alloca [3 x i8], align 1
  %param.i.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup26_crit_edge, label %if.end

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup26

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %psmouse, align 4
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %2 = ptrtoint ptr %pktsize to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %pktsize, align 2
  %mode.i = getelementptr inbounds %struct.cytp_data, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %mode.i, align 8
  %call.i = tail call i32 @psmouse_reset(ptr noundef %psmouse) #6
  %call.i47 = tail call fastcc i32 @cypress_read_fw_version(ptr noundef %psmouse) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.err_exit_crit_edge

if.end.err_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %param.i.i) #6
  %6 = getelementptr inbounds [8 x i8], ptr %param.i.i, i32 0, i32 1
  %7 = getelementptr inbounds [8 x i8], ptr %param.i.i, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i8], ptr %param.i.i, i32 0, i32 3
  %9 = getelementptr inbounds [8 x i8], ptr %param.i.i, i32 0, i32 4
  %10 = getelementptr inbounds [8 x i8], ptr %param.i.i, i32 0, i32 5
  %tp_width.i.i = getelementptr inbounds %struct.cytp_data, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %tp_width.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 97, ptr %tp_width.i.i, align 4
  %tp_high.i.i = getelementptr inbounds %struct.cytp_data, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %tp_high.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 59, ptr %tp_high.i.i, align 4
  %tp_max_abs_x.i.i = getelementptr inbounds %struct.cytp_data, ptr %5, i32 0, i32 7
  %13 = ptrtoint ptr %tp_max_abs_x.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1600, ptr %tp_max_abs_x.i.i, align 4
  %tp_max_abs_y.i.i = getelementptr inbounds %struct.cytp_data, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %tp_max_abs_y.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 900, ptr %tp_max_abs_y.i.i, align 4
  %tp_min_pressure.i.i = getelementptr inbounds %struct.cytp_data, ptr %5, i32 0, i32 3
  %15 = ptrtoint ptr %tp_min_pressure.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tp_min_pressure.i.i, align 4
  %tp_max_pressure.i.i = getelementptr inbounds %struct.cytp_data, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %tp_max_pressure.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 255, ptr %tp_max_pressure.i.i, align 4
  %tp_res_x.i.i = getelementptr inbounds %struct.cytp_data, ptr %5, i32 0, i32 9
  %17 = ptrtoint ptr %tp_res_x.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %tp_res_x.i.i, align 4
  %tp_res_y.i.i = getelementptr inbounds %struct.cytp_data, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %tp_res_y.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 15, ptr %tp_res_y.i.i, align 4
  %tp_metrics_supported.i.i = getelementptr inbounds %struct.cytp_data, ptr %5, i32 0, i32 11
  %19 = ptrtoint ptr %tp_metrics_supported.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tp_metrics_supported.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end4_crit_edge, label %if.end.i.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.i.i:                                       ; preds = %if.end.i
  %21 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %param.i.i, align 8
  %call.i.i = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext 1, ptr noundef nonnull %param.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then7.i.i, label %if.end24thread-pre-split.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %6, align 1
  %conv.i.i = zext i8 %23 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %24 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %param.i.i, align 8
  %conv9.i.i = zext i8 %25 to i32
  %or.i.i = or i32 %shl.i.i, %conv9.i.i
  %26 = ptrtoint ptr %tp_max_abs_x.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i.i, ptr %tp_max_abs_x.i.i, align 4
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %8, align 1
  %conv12.i.i = zext i8 %28 to i32
  %shl13.i.i = shl nuw nsw i32 %conv12.i.i, 8
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %7, align 2
  %conv15.i.i = zext i8 %30 to i32
  %or16.i.i = or i32 %shl13.i.i, %conv15.i.i
  %31 = ptrtoint ptr %tp_max_abs_y.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or16.i.i, ptr %tp_max_abs_y.i.i, align 4
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %9, align 4
  %conv19.i.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %tp_min_pressure.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv19.i.i, ptr %tp_min_pressure.i.i, align 4
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %10, align 1
  %conv22.i.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %tp_max_pressure.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv22.i.i, ptr %tp_max_pressure.i.i, align 4
  br label %if.end24.i.i

if.end24thread-pre-split.i.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %tp_max_pressure.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr.i.i = load i32, ptr %tp_max_pressure.i.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.end24thread-pre-split.i.i, %if.then7.i.i
  %39 = phi i32 [ %.pr.i.i, %if.end24thread-pre-split.i.i ], [ %conv22.i.i, %if.then7.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool26.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool26.not.i.i, label %if.end24.i.i.cypress_query_hardware.exit.thread63_crit_edge, label %lor.lhs.false.i.i

if.end24.i.i.cypress_query_hardware.exit.thread63_crit_edge: ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_query_hardware.exit.thread63

lor.lhs.false.i.i:                                ; preds = %if.end24.i.i
  %40 = ptrtoint ptr %tp_min_pressure.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tp_min_pressure.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp29.i.i = icmp slt i32 %39, %41
  br i1 %cmp29.i.i, label %lor.lhs.false.i.i.cypress_query_hardware.exit.thread63_crit_edge, label %lor.lhs.false31.i.i

lor.lhs.false.i.i.cypress_query_hardware.exit.thread63_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_query_hardware.exit.thread63

lor.lhs.false31.i.i:                              ; preds = %lor.lhs.false.i.i
  %42 = ptrtoint ptr %tp_width.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tp_width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool33.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool33.not.i.i, label %lor.lhs.false31.i.i.cypress_query_hardware.exit.thread63_crit_edge, label %lor.lhs.false34.i.i

lor.lhs.false31.i.i.cypress_query_hardware.exit.thread63_crit_edge: ; preds = %lor.lhs.false31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_query_hardware.exit.thread63

lor.lhs.false34.i.i:                              ; preds = %lor.lhs.false31.i.i
  %44 = ptrtoint ptr %tp_high.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tp_high.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool36.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool36.not.i.i, label %lor.lhs.false34.i.i.cypress_query_hardware.exit.thread63_crit_edge, label %lor.lhs.false37.i.i

lor.lhs.false34.i.i.cypress_query_hardware.exit.thread63_crit_edge: ; preds = %lor.lhs.false34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_query_hardware.exit.thread63

lor.lhs.false37.i.i:                              ; preds = %lor.lhs.false34.i.i
  %46 = ptrtoint ptr %tp_max_abs_x.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tp_max_abs_x.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool39.not.i.i = icmp eq i32 %47, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %43)
  %cmp43.i.i = icmp slt i32 %47, %43
  %or.cond.i.i = select i1 %tobool39.not.i.i, i1 true, i1 %cmp43.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false37.i.i.cypress_query_hardware.exit.thread63_crit_edge, label %lor.lhs.false45.i.i

lor.lhs.false37.i.i.cypress_query_hardware.exit.thread63_crit_edge: ; preds = %lor.lhs.false37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_query_hardware.exit.thread63

lor.lhs.false45.i.i:                              ; preds = %lor.lhs.false37.i.i
  %48 = ptrtoint ptr %tp_max_abs_y.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tp_max_abs_y.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool47.not.i.i = icmp eq i32 %49, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %45)
  %cmp51.i.i = icmp slt i32 %49, %45
  %or.cond102.i.i = select i1 %tobool47.not.i.i, i1 true, i1 %cmp51.i.i
  br i1 %or.cond102.i.i, label %lor.lhs.false45.i.i.cypress_query_hardware.exit.thread63_crit_edge, label %if.end54.i.i

lor.lhs.false45.i.i.cypress_query_hardware.exit.thread63_crit_edge: ; preds = %lor.lhs.false45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_query_hardware.exit.thread63

if.end54.i.i:                                     ; preds = %lor.lhs.false45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div57.i.i = sdiv i32 %47, %43
  %50 = ptrtoint ptr %tp_res_x.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div57.i.i, ptr %tp_res_x.i.i, align 4
  %div61.i.i = sdiv i32 %49, %45
  %51 = ptrtoint ptr %tp_res_y.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div61.i.i, ptr %tp_res_y.i.i, align 4
  br label %if.end4

cypress_query_hardware.exit.thread63:             ; preds = %lor.lhs.false45.i.i.cypress_query_hardware.exit.thread63_crit_edge, %lor.lhs.false37.i.i.cypress_query_hardware.exit.thread63_crit_edge, %lor.lhs.false34.i.i.cypress_query_hardware.exit.thread63_crit_edge, %lor.lhs.false31.i.i.cypress_query_hardware.exit.thread63_crit_edge, %lor.lhs.false.i.i.cypress_query_hardware.exit.thread63_crit_edge, %if.end24.i.i.cypress_query_hardware.exit.thread63_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param.i.i) #6
  br label %err_exit

if.end4:                                          ; preds = %if.end54.i.i, %if.end.i.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param.i.i) #6
  %52 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i) #6
  %54 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %param.i, align 1, !annotation !66
  %55 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %55, align 1, !annotation !66
  %57 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %57, align 1, !annotation !66
  %call.i48 = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext 17, ptr noundef nonnull %param.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i = icmp slt i32 %call.i48, 0
  br i1 %cmp.i, label %do.end10, label %if.end14

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i) #6
  br label %err_exit

if.end14:                                         ; preds = %if.end4
  %mode.i49 = getelementptr inbounds %struct.cytp_data, ptr %53, i32 0, i32 2
  %59 = ptrtoint ptr %mode.i49 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mode.i49, align 4
  %and.i = and i32 %60, -16
  %or.i = or i32 %and.i, 8
  store i32 %or.i, ptr %mode.i49, align 4
  %61 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %psmouse, align 4
  %pkt_size.i.i = getelementptr inbounds %struct.cytp_data, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 5, ptr %pkt_size.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i) #6
  %dev15 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %64 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev15, align 4
  %tp_res_x.i = getelementptr inbounds %struct.cytp_data, ptr %call7.i.i, i32 0, i32 9
  %66 = ptrtoint ptr %tp_res_x.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tp_res_x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i52 = icmp eq i32 %67, 0
  br i1 %tobool.not.i52, label %if.end14.err_exit_crit_edge, label %lor.lhs.false.i

if.end14.err_exit_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

lor.lhs.false.i:                                  ; preds = %if.end14
  %tp_res_y.i = getelementptr inbounds %struct.cytp_data, ptr %call7.i.i, i32 0, i32 10
  %68 = ptrtoint ptr %tp_res_y.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tp_res_y.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool1.not.i = icmp eq i32 %69, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.err_exit_crit_edge, label %if.end.i56

lor.lhs.false.i.err_exit_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end.i56:                                       ; preds = %lor.lhs.false.i
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %65, i32 0, i32 5
  %70 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %evbit.i, align 4
  %or.i.i53 = or i32 %71, 8
  store i32 %or.i.i53, ptr %evbit.i, align 4
  %tp_max_abs_x.i = getelementptr inbounds %struct.cytp_data, ptr %call7.i.i, i32 0, i32 7
  %72 = ptrtoint ptr %tp_max_abs_x.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tp_max_abs_x.i, align 4
  call void @input_set_abs_params(ptr noundef %65, i32 noundef 0, i32 noundef 0, i32 noundef %73, i32 noundef 0, i32 noundef 0) #6
  %tp_max_abs_y.i = getelementptr inbounds %struct.cytp_data, ptr %call7.i.i, i32 0, i32 8
  %74 = ptrtoint ptr %tp_max_abs_y.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tp_max_abs_y.i, align 8
  call void @input_set_abs_params(ptr noundef %65, i32 noundef 1, i32 noundef 0, i32 noundef %75, i32 noundef 0, i32 noundef 0) #6
  %tp_min_pressure.i = getelementptr inbounds %struct.cytp_data, ptr %call7.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %tp_min_pressure.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tp_min_pressure.i, align 4
  %tp_max_pressure.i = getelementptr inbounds %struct.cytp_data, ptr %call7.i.i, i32 0, i32 4
  %78 = ptrtoint ptr %tp_max_pressure.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tp_max_pressure.i, align 8
  call void @input_set_abs_params(ptr noundef %65, i32 noundef 24, i32 noundef %77, i32 noundef %79, i32 noundef 0, i32 noundef 0) #6
  call void @input_set_abs_params(ptr noundef %65, i32 noundef 28, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #6
  %80 = ptrtoint ptr %tp_max_abs_x.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tp_max_abs_x.i, align 4
  call void @input_set_abs_params(ptr noundef %65, i32 noundef 53, i32 noundef 0, i32 noundef %81, i32 noundef 0, i32 noundef 0) #6
  %82 = ptrtoint ptr %tp_max_abs_y.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tp_max_abs_y.i, align 8
  call void @input_set_abs_params(ptr noundef %65, i32 noundef 54, i32 noundef 0, i32 noundef %83, i32 noundef 0, i32 noundef 0) #6
  call void @input_set_abs_params(ptr noundef %65, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #6
  %call.i54 = call i32 @input_mt_init_slots(ptr noundef %65, i32 noundef 2, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp.i55 = icmp slt i32 %call.i54, 0
  br i1 %cmp.i55, label %if.end.i56.err_exit_crit_edge, label %if.end5.i

if.end.i56.err_exit_crit_edge:                    ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end5.i:                                        ; preds = %if.end.i56
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %65, i32 0, i32 4
  %84 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %propbit.i, align 4
  %or.i73.i = or i32 %85, 8
  store i32 %or.i73.i, ptr %propbit.i, align 4
  %86 = ptrtoint ptr %tp_res_x.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tp_res_x.i, align 4
  call void @input_alloc_absinfo(ptr noundef %65) #6
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %65, i32 0, i32 26
  %88 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i57 = icmp eq ptr %89, null
  br i1 %tobool.not.i.i57, label %if.end5.i.input_abs_set_res.exit.i_crit_edge, label %if.then.i.i

if.end5.i.input_abs_set_res.exit.i_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_abs_set_res.exit.i

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %resolution.i.i = getelementptr %struct.input_absinfo, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %resolution.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %87, ptr %resolution.i.i, align 4
  br label %input_abs_set_res.exit.i

input_abs_set_res.exit.i:                         ; preds = %if.then.i.i, %if.end5.i.input_abs_set_res.exit.i_crit_edge
  %91 = ptrtoint ptr %tp_res_y.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tp_res_y.i, align 8
  call void @input_alloc_absinfo(ptr noundef %65) #6
  %93 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i95.i = icmp eq ptr %94, null
  br i1 %tobool.not.i95.i, label %input_abs_set_res.exit.i.input_abs_set_res.exit98.i_crit_edge, label %if.then.i97.i

input_abs_set_res.exit.i.input_abs_set_res.exit98.i_crit_edge: ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_abs_set_res.exit98.i

if.then.i97.i:                                    ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %resolution.i96.i = getelementptr %struct.input_absinfo, ptr %94, i32 1, i32 5
  %95 = ptrtoint ptr %resolution.i96.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %92, ptr %resolution.i96.i, align 4
  br label %input_abs_set_res.exit98.i

input_abs_set_res.exit98.i:                       ; preds = %if.then.i97.i, %input_abs_set_res.exit.i.input_abs_set_res.exit98.i_crit_edge
  %96 = ptrtoint ptr %tp_res_x.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tp_res_x.i, align 4
  call void @input_alloc_absinfo(ptr noundef %65) #6
  %98 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i100.i = icmp eq ptr %99, null
  br i1 %tobool.not.i100.i, label %input_abs_set_res.exit98.i.input_abs_set_res.exit103.i_crit_edge, label %if.then.i102.i

input_abs_set_res.exit98.i.input_abs_set_res.exit103.i_crit_edge: ; preds = %input_abs_set_res.exit98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_abs_set_res.exit103.i

if.then.i102.i:                                   ; preds = %input_abs_set_res.exit98.i
  call void @__sanitizer_cov_trace_pc() #8
  %resolution.i101.i = getelementptr %struct.input_absinfo, ptr %99, i32 53, i32 5
  %100 = ptrtoint ptr %resolution.i101.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %97, ptr %resolution.i101.i, align 4
  br label %input_abs_set_res.exit103.i

input_abs_set_res.exit103.i:                      ; preds = %if.then.i102.i, %input_abs_set_res.exit98.i.input_abs_set_res.exit103.i_crit_edge
  %101 = ptrtoint ptr %tp_res_y.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tp_res_y.i, align 8
  call void @input_alloc_absinfo(ptr noundef %65) #6
  %103 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i105.i = icmp eq ptr %104, null
  br i1 %tobool.not.i105.i, label %input_abs_set_res.exit103.i.if.end24_crit_edge, label %if.then.i107.i

input_abs_set_res.exit103.i.if.end24_crit_edge:   ; preds = %input_abs_set_res.exit103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then.i107.i:                                   ; preds = %input_abs_set_res.exit103.i
  call void @__sanitizer_cov_trace_pc() #8
  %resolution.i106.i = getelementptr %struct.input_absinfo, ptr %104, i32 54, i32 5
  %105 = ptrtoint ptr %resolution.i106.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %102, ptr %resolution.i106.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then.i107.i, %input_abs_set_res.exit103.i.if.end24_crit_edge
  %add.ptr.i.i = getelementptr %struct.input_dev, ptr %65, i32 0, i32 6, i32 10
  %106 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr.i.i, align 4
  %or.i84.i = or i32 %107, 58656
  store i32 %or.i84.i, ptr %add.ptr.i.i, align 4
  %108 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %evbit.i, align 4
  %and.i.i = and i32 %109, -7
  %relbit.i = getelementptr inbounds %struct.input_dev, ptr %65, i32 0, i32 7
  %110 = ptrtoint ptr %relbit.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %relbit.i, align 4
  %and.i86.i = and i32 %111, -4
  store i32 %and.i86.i, ptr %relbit.i, align 4
  %or.i87.i = or i32 %and.i.i, 2
  store i32 %or.i87.i, ptr %evbit.i, align 4
  %add.ptr.i88.i = getelementptr %struct.input_dev, ptr %65, i32 0, i32 6, i32 8
  %112 = ptrtoint ptr %add.ptr.i88.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i88.i, align 4
  %or.i93.i = or i32 %113, 458752
  store i32 %or.i93.i, ptr %add.ptr.i88.i, align 4
  %model = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 14
  %114 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %model, align 4
  %protocol_handler = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %115 = ptrtoint ptr %protocol_handler to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @cypress_protocol_handler, ptr %protocol_handler, align 4
  %set_rate = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %116 = ptrtoint ptr %set_rate to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @cypress_set_rate, ptr %set_rate, align 4
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 32
  %117 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @cypress_disconnect, ptr %disconnect, align 4
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %118 = ptrtoint ptr %reconnect to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @cypress_reconnect, ptr %reconnect, align 4
  %cleanup = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 33
  %119 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @cypress_reset, ptr %cleanup, align 4
  %resync_time = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 24
  %120 = ptrtoint ptr %resync_time to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %resync_time, align 4
  br label %cleanup26

err_exit:                                         ; preds = %if.end.i56.err_exit_crit_edge, %lor.lhs.false.i.err_exit_crit_edge, %if.end14.err_exit_crit_edge, %do.end10, %cypress_query_hardware.exit.thread63, %if.end.err_exit_crit_edge
  %.str.11.sink = phi ptr [ @.str.8, %do.end10 ], [ @.str.2, %if.end.err_exit_crit_edge ], [ @.str.2, %cypress_query_hardware.exit.thread63 ], [ @.str.11, %lor.lhs.false.i.err_exit_crit_edge ], [ @.str.11, %if.end14.err_exit_crit_edge ], [ @.str.11, %if.end.i56.err_exit_crit_edge ]
  %ps2dev21 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %121 = ptrtoint ptr %ps2dev21 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ps2dev21, align 4
  %dev23 = getelementptr inbounds %struct.serio, ptr %122, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull %.str.11.sink) #10
  %123 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %psmouse, align 4
  %mode.i59 = getelementptr inbounds %struct.cytp_data, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %mode.i59 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %mode.i59, align 4
  %call.i60 = call i32 @psmouse_reset(ptr noundef %psmouse) #6
  %126 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %psmouse, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup26

cleanup26:                                        ; preds = %err_exit, %if.end24, %entry.cleanup26_crit_edge
  %retval.0 = phi i32 [ -1, %err_exit ], [ 0, %if.end24 ], [ -12, %entry.cleanup26_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cypress_reset(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %mode = getelementptr inbounds %struct.cytp_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mode, align 4
  %call = tail call i32 @psmouse_reset(ptr noundef %psmouse) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cypress_protocol_handler(ptr nocapture noundef readonly %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %2 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pktcnt, align 1
  %conv = zext i8 %3 to i32
  %pkt_size = getelementptr inbounds %struct.cytp_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pkt_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pkt_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp sgt i32 %5, %conv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cypress_process_packet(ptr noundef %psmouse)
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.i = add nsw i32 %conv, -1
  %packet1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp3.i = icmp sgt i32 %sub.i, %5
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp3.i
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cond54.i = icmp eq i32 %sub.i, 0
  br i1 %cond54.i, label %land.lhs.true.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %6 = ptrtoint ptr %packet1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %packet1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp8.i = icmp ult i8 %7, 4
  br i1 %cmp8.i, label %if.then10.i, label %if.end15.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cypress_process_packet(ptr noundef %psmouse) #6
  br label %cleanup

if.end15.i:                                       ; preds = %land.lhs.true.i
  %mode.i = getelementptr inbounds %struct.cytp_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode.i, align 4
  %and16.i = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %cmp17.i = icmp eq i32 %and16.i, 0
  br i1 %cmp17.i, label %if.end15.i.cleanup_crit_edge, label %if.end20.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.i:                                       ; preds = %if.end15.i
  %10 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp24.not.i = icmp eq i8 %10, 0
  br i1 %cmp24.not.i, label %if.end27.i, label %if.end20.i.cleanup_crit_edge

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27.i:                                       ; preds = %if.end20.i
  %11 = lshr i8 %7, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i.i = icmp eq i8 %11, 1
  br i1 %cmp.i.i, label %if.end27.i.cypress_get_finger_count.exit.i_crit_edge, label %if.end.i.i

if.end27.i.cypress_get_finger_count.exit.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_finger_count.exit.i

if.end.i.i:                                       ; preds = %if.end27.i
  %conv2.i.i = zext i8 %11 to i32
  %12 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.cypress_get_finger_count.exit.i_crit_edge, label %if.then6.i.i

if.end.i.i.cypress_get_finger_count.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_finger_count.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %switch.selectcmp.i.i = icmp eq i8 %11, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 5, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %7)
  %switch.selectcmp13.i.i = icmp ult i8 %7, 64
  %switch.select14.i.i = select i1 %switch.selectcmp13.i.i, i32 4, i32 %switch.select.i.i
  br label %cypress_get_finger_count.exit.i

cypress_get_finger_count.exit.i:                  ; preds = %if.then6.i.i, %if.end.i.i.cypress_get_finger_count.exit.i_crit_edge, %if.end27.i.cypress_get_finger_count.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end27.i.cypress_get_finger_count.exit.i_crit_edge ], [ %switch.select14.i.i, %if.then6.i.i ], [ %conv2.i.i, %if.end.i.i.cypress_get_finger_count.exit.i_crit_edge ]
  %and30.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool.not.i = icmp eq i32 %and30.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i.i)
  %cmp34.i = icmp eq i32 %retval.0.i.i, 2
  br i1 %tobool.not.i, label %if.else.i, label %if.then31.i

if.then31.i:                                      ; preds = %cypress_get_finger_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond.i = select i1 %cmp34.i, i32 7, i32 4
  %13 = ptrtoint ptr %pkt_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i, ptr %pkt_size, align 4
  br label %cleanup

if.else.i:                                        ; preds = %cypress_get_finger_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond36.i = select i1 %cmp34.i, i32 8, i32 5
  %14 = ptrtoint ptr %pkt_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond36.i, ptr %pkt_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then31.i, %if.end20.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.then10.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 2, %if.then ], [ 2, %if.then10.i ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.end15.i.cleanup_crit_edge ], [ 0, %if.end20.i.cleanup_crit_edge ], [ 1, %if.else.i ], [ 1, %if.then31.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cypress_set_rate(ptr noundef %psmouse, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %rate)
  %cmp = icmp ugt i32 %rate, 79
  %rate1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 21
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %rate1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 80, ptr %rate1, align 4
  %mode = getelementptr inbounds %struct.cytp_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  %or = or i32 %4, 16
  store i32 %or, ptr %mode, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %rate1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 40, ptr %rate1, align 4
  %mode3 = getelementptr inbounds %struct.cytp_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode3, align 4
  %and = and i32 %7, -17
  store i32 %and, ptr %mode3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %rate4 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 21
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef %rate4, i32 noundef 4339) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cypress_disconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %mode.i = getelementptr inbounds %struct.cytp_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mode.i, align 4
  %call.i = tail call i32 @psmouse_reset(ptr noundef %psmouse) #6
  %3 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %psmouse, align 4
  tail call void @kfree(ptr noundef %4) #6
  %5 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %psmouse, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cypress_reconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  %param.i22 = alloca [3 x i8], align 1
  %param.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 2
  %2 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psmouse, align 4
  %mode.i = getelementptr inbounds %struct.cytp_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mode.i, align 4
  %call.i = call i32 @psmouse_reset(ptr noundef %psmouse) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i) #6
  %5 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %param.i, align 1, !annotation !66
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %0, align 1, !annotation !66
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %1, align 1, !annotation !66
  %call.i21 = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext 0, ptr noundef nonnull %param.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cypress_detect.exit_crit_edge

entry.cypress_detect.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_detect.exit

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %param.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 51
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.cypress_detect.exit_crit_edge

if.end.i.cypress_detect.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_detect.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %11)
  %cmp4.not.i.not = icmp eq i8 %11, -52
  br label %cypress_detect.exit

cypress_detect.exit:                              ; preds = %lor.lhs.false.i, %if.end.i.cypress_detect.exit_crit_edge, %entry.cypress_detect.exit_crit_edge
  %retval.0.i = phi i1 [ false, %entry.cypress_detect.exit_crit_edge ], [ %cmp4.not.i.not, %lor.lhs.false.i ], [ false, %if.end.i.cypress_detect.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i) #6
  br i1 %retval.0.i, label %cypress_detect.exit.do.end_crit_edge, label %do.body.1

cypress_detect.exit.do.end_crit_edge:             ; preds = %cypress_detect.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.1:                                        ; preds = %cypress_detect.exit
  %12 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %psmouse, align 4
  %mode.i.1 = getelementptr inbounds %struct.cytp_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %mode.i.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mode.i.1, align 4
  %call.i.1 = call i32 @psmouse_reset(ptr noundef %psmouse) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i) #6
  %15 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %param.i, align 1, !annotation !66
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %0, align 1, !annotation !66
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %1, align 1, !annotation !66
  %call.i21.1 = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext 0, ptr noundef nonnull %param.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.1)
  %tobool.not.i.1 = icmp eq i32 %call.i21.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %do.body.1.cypress_detect.exit.1_crit_edge

do.body.1.cypress_detect.exit.1_crit_edge:        ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_detect.exit.1

if.end.i.1:                                       ; preds = %do.body.1
  %18 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %param.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %19)
  %cmp.not.i.1 = icmp eq i8 %19, 51
  br i1 %cmp.not.i.1, label %lor.lhs.false.i.1, label %if.end.i.1.cypress_detect.exit.1_crit_edge

if.end.i.1.cypress_detect.exit.1_crit_edge:       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_detect.exit.1

lor.lhs.false.i.1:                                ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %21)
  %cmp4.not.i.not.1 = icmp eq i8 %21, -52
  br label %cypress_detect.exit.1

cypress_detect.exit.1:                            ; preds = %lor.lhs.false.i.1, %if.end.i.1.cypress_detect.exit.1_crit_edge, %do.body.1.cypress_detect.exit.1_crit_edge
  %retval.0.i.1 = phi i1 [ false, %do.body.1.cypress_detect.exit.1_crit_edge ], [ %cmp4.not.i.not.1, %lor.lhs.false.i.1 ], [ false, %if.end.i.1.cypress_detect.exit.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i) #6
  br i1 %retval.0.i.1, label %cypress_detect.exit.1.do.end_crit_edge, label %do.body.2

cypress_detect.exit.1.do.end_crit_edge:           ; preds = %cypress_detect.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.2:                                        ; preds = %cypress_detect.exit.1
  %22 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %psmouse, align 4
  %mode.i.2 = getelementptr inbounds %struct.cytp_data, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %mode.i.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %mode.i.2, align 4
  %call.i.2 = call i32 @psmouse_reset(ptr noundef %psmouse) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i) #6
  %25 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %param.i, align 1, !annotation !66
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %0, align 1, !annotation !66
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %1, align 1, !annotation !66
  %call.i21.2 = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext 0, ptr noundef nonnull %param.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.2)
  %tobool.not.i.2 = icmp eq i32 %call.i21.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %do.body.2.cypress_detect.exit.2_crit_edge

do.body.2.cypress_detect.exit.2_crit_edge:        ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_detect.exit.2

if.end.i.2:                                       ; preds = %do.body.2
  %28 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %param.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %29)
  %cmp.not.i.2 = icmp eq i8 %29, 51
  br i1 %cmp.not.i.2, label %lor.lhs.false.i.2, label %if.end.i.2.cypress_detect.exit.2_crit_edge

if.end.i.2.cypress_detect.exit.2_crit_edge:       ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_detect.exit.2

lor.lhs.false.i.2:                                ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %31)
  %cmp4.not.i.not.2 = icmp eq i8 %31, -52
  br label %cypress_detect.exit.2

cypress_detect.exit.2:                            ; preds = %lor.lhs.false.i.2, %if.end.i.2.cypress_detect.exit.2_crit_edge, %do.body.2.cypress_detect.exit.2_crit_edge
  %retval.0.i.2 = phi i1 [ false, %do.body.2.cypress_detect.exit.2_crit_edge ], [ %cmp4.not.i.not.2, %lor.lhs.false.i.2 ], [ false, %if.end.i.2.cypress_detect.exit.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i) #6
  br label %do.end

do.end:                                           ; preds = %cypress_detect.exit.2, %cypress_detect.exit.1.do.end_crit_edge, %cypress_detect.exit.do.end_crit_edge
  %tobool.not.lcssa = phi i1 [ %retval.0.i, %cypress_detect.exit.do.end_crit_edge ], [ %retval.0.i.1, %cypress_detect.exit.1.do.end_crit_edge ], [ %retval.0.i.2, %cypress_detect.exit.2 ]
  br i1 %tobool.not.lcssa, label %if.end, label %do.end4

do.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %32 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %33, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #10
  br label %cleanup

if.end:                                           ; preds = %do.end
  %34 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i22) #6
  %36 = ptrtoint ptr %param.i22 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %param.i22, align 1, !annotation !66
  %37 = getelementptr inbounds [3 x i8], ptr %param.i22, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %37, align 1, !annotation !66
  %39 = getelementptr inbounds [3 x i8], ptr %param.i22, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %39, align 1, !annotation !66
  %call.i23 = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext 17, ptr noundef nonnull %param.i22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp.i = icmp slt i32 %call.i23, 0
  br i1 %cmp.i, label %do.end10, label %cypress_set_absolute_mode.exit.thread

cypress_set_absolute_mode.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mode.i24 = getelementptr inbounds %struct.cytp_data, ptr %35, i32 0, i32 2
  %41 = ptrtoint ptr %mode.i24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mode.i24, align 4
  %and.i = and i32 %42, -16
  %or.i = or i32 %and.i, 8
  store i32 %or.i, ptr %mode.i24, align 4
  %43 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %psmouse, align 4
  %pkt_size.i.i = getelementptr inbounds %struct.cytp_data, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 5, ptr %pkt_size.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i22) #6
  br label %cleanup

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i22) #6
  %ps2dev11 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %46 = ptrtoint ptr %ps2dev11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ps2dev11, align 4
  %dev13 = getelementptr inbounds %struct.serio, ptr %47, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.28) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %cypress_set_absolute_mode.exit.thread, %do.end4
  %retval.0 = phi i32 [ -1, %do.end4 ], [ -1, %do.end10 ], [ 0, %cypress_set_absolute_mode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cypress_ps2_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  tail call void @ps2_begin_command(ptr noundef %ps2dev1) #6
  %nak.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2, i32 6
  %conv13 = zext i8 %data to i32
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %tries.0 = phi i32 [ 3, %entry ], [ %tries.0.be, %do.body.backedge ]
  %call.i = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -24, i32 noundef 200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %do.body.if.end12_crit_edge

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.body.i:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_ps2_ext_cmd, %if.then6.i)) #6
          to label %do.end.i [label %if.then6.i], !srcloc !67

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev1, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %nak.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nak.i, align 1
  %conv9.i = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227, ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef 232, i32 noundef %conv9.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %4 = ptrtoint ptr %nak.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nak.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %5)
  %cmp12.i = icmp eq i8 %5, -2
  br i1 %cmp12.i, label %if.then, label %do.end.i.do.cond_crit_edge

do.end.i.do.cond_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond

if.then:                                          ; preds = %do.end.i
  %call.i2 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext 0, i32 noundef 200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp.i3 = icmp slt i32 %call.i2, 0
  br i1 %cmp.i3, label %do.body.i4, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.body.i4:                                       ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_ps2_ext_cmd, %if.then6.i8)) #6
          to label %do.end.i12 [label %if.then6.i8], !srcloc !67

if.then6.i8:                                      ; preds = %do.body.i4
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev1, align 4
  %dev.i5 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %nak.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nak.i, align 1
  %conv9.i7 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227, ptr noundef %dev.i5, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %conv9.i7) #6
  br label %do.end.i12

do.end.i12:                                       ; preds = %if.then6.i8, %do.body.i4
  %10 = ptrtoint ptr %nak.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nak.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %11)
  %cmp12.i10 = icmp eq i8 %11, -2
  br i1 %cmp12.i10, label %if.then6, label %do.end.i12.do.cond_crit_edge

do.end.i12.do.cond_crit_edge:                     ; preds = %do.end.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond

if.then6:                                         ; preds = %do.end.i12
  %call.i16 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext 10, i32 noundef 200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.i17 = icmp slt i32 %call.i16, 0
  br i1 %cmp.i17, label %do.body.i18, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.body.i18:                                      ; preds = %if.then6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_ps2_ext_cmd, %if.then6.i22)) #6
          to label %do.end.i26 [label %if.then6.i22], !srcloc !67

if.then6.i22:                                     ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ps2dev1, align 4
  %dev.i19 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %nak.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nak.i, align 1
  %conv9.i21 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227, ptr noundef %dev.i19, ptr noundef nonnull @.str.17, i32 noundef 10, i32 noundef %conv9.i21) #6
  br label %do.end.i26

do.end.i26:                                       ; preds = %if.then6.i22, %do.body.i18
  %16 = ptrtoint ptr %nak.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nak.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %17)
  %cmp12.i24 = icmp eq i8 %17, -2
  br i1 %cmp12.i24, label %do.end.i26.if.end12_crit_edge, label %do.end.i26.do.cond_crit_edge

do.end.i26.do.cond_crit_edge:                     ; preds = %do.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond

do.end.i26.if.end12_crit_edge:                    ; preds = %do.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %do.end.i26.if.end12_crit_edge, %if.then6.if.end12_crit_edge, %if.then.if.end12_crit_edge, %do.body.if.end12_crit_edge
  %call.i30 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext %data, i32 noundef 200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp.i31 = icmp slt i32 %call.i30, 0
  br i1 %cmp.i31, label %do.body.i32, label %if.end12.do.end_crit_edge

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.i32:                                      ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_ps2_ext_cmd, %if.then6.i36)) #6
          to label %do.end.i40 [label %if.then6.i36], !srcloc !67

if.then6.i36:                                     ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ps2dev1, align 4
  %dev.i33 = getelementptr inbounds %struct.serio, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %nak.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nak.i, align 1
  %conv9.i35 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227, ptr noundef %dev.i33, ptr noundef nonnull @.str.17, i32 noundef %conv13, i32 noundef %conv9.i35) #6
  br label %do.end.i40

do.end.i40:                                       ; preds = %if.then6.i36, %do.body.i32
  %22 = ptrtoint ptr %nak.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nak.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %23)
  %cmp12.i38 = icmp eq i8 %23, -2
  br i1 %cmp12.i38, label %if.then17, label %do.end.i40.if.end20_crit_edge

do.end.i40.if.end20_crit_edge:                    ; preds = %do.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %do.end.i40
  %call.i45 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext %data, i32 noundef 200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp.i46, label %do.body.i47, label %if.then17.do.end_crit_edge

if.then17.do.end_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.i47:                                      ; preds = %if.then17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_ps2_ext_cmd, %if.then6.i51)) #6
          to label %do.end.i55 [label %if.then6.i51], !srcloc !67

if.then6.i51:                                     ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ps2dev1, align 4
  %dev.i48 = getelementptr inbounds %struct.serio, ptr %25, i32 0, i32 18
  %26 = ptrtoint ptr %nak.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nak.i, align 1
  %conv9.i50 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227, ptr noundef %dev.i48, ptr noundef nonnull @.str.17, i32 noundef %conv13, i32 noundef %conv9.i50) #6
  br label %do.end.i55

do.end.i55:                                       ; preds = %if.then6.i51, %do.body.i47
  %28 = ptrtoint ptr %nak.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nak.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %29)
  %cmp12.i53 = icmp eq i8 %29, -2
  %..i54 = select i1 %cmp12.i53, i32 254, i32 252
  br label %if.end20

if.end20:                                         ; preds = %do.end.i55, %do.end.i40.if.end20_crit_edge
  %rc.1 = phi i32 [ %..i54, %do.end.i55 ], [ 252, %do.end.i40.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %rc.1)
  %cmp21 = icmp eq i32 %rc.1, 252
  %dec = add nsw i32 %tries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp24 = icmp ne i32 %dec, 0
  %or.cond = select i1 %cmp21, i1 %cmp24, i1 false
  br i1 %or.cond, label %if.end20.do.body.backedge_crit_edge, label %if.end20.do.end_crit_edge

if.end20.do.end_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end20.do.body.backedge_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.backedge

do.cond:                                          ; preds = %do.end.i26.do.cond_crit_edge, %do.end.i12.do.cond_crit_edge, %do.end.i.do.cond_crit_edge
  %dec.old = add i32 %tries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.old)
  %cmp24.old = icmp sgt i32 %dec.old, 0
  br i1 %cmp24.old, label %do.cond.do.body.backedge_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.cond.do.body.backedge_crit_edge:               ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %do.cond.do.body.backedge_crit_edge, %if.end20.do.body.backedge_crit_edge
  %tries.0.be = phi i32 [ %dec.old, %do.cond.do.body.backedge_crit_edge ], [ %dec, %if.end20.do.body.backedge_crit_edge ]
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.end20.do.end_crit_edge, %if.then17.do.end_crit_edge, %if.end12.do.end_crit_edge
  tail call void @ps2_end_command(ptr noundef %ps2dev1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cypress_ps2_read_cmd_status(ptr noundef %psmouse, i8 noundef zeroext %cmd, ptr noundef %param) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  tail call void @ps2_begin_command(ptr noundef %ps2dev1) #6
  %state = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 18
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  store i32 3, ptr %state, align 4
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %2 = ptrtoint ptr %pktcnt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pktcnt, align 1
  %conv = zext i8 %cmd to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cmd)
  %cmp = icmp eq i8 %cmd, 1
  %cond = select i1 %cmp, i32 8, i32 3
  %3 = call ptr @memset(ptr %param, i32 0, i32 %cond)
  %call.i = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -23, i32 noundef 200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.cypress_ps2_sendbyte.exit_crit_edge

entry.cypress_ps2_sendbyte.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_ps2_sendbyte.exit

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_ps2_read_cmd_status, %if.then6.i)) #6
          to label %do.end.i [label %if.then6.i], !srcloc !67

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps2dev1, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18
  %nak.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2, i32 6
  %6 = ptrtoint ptr %nak.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nak.i, align 1
  %conv9.i = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227, ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef 233, i32 noundef %conv9.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %nak10.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %nak10.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nak10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %9)
  %cmp12.i = icmp eq i8 %9, -2
  %..i = select i1 %cmp12.i, i32 254, i32 252
  br label %cypress_ps2_sendbyte.exit

cypress_ps2_sendbyte.exit:                        ; preds = %do.end.i, %entry.cypress_ps2_sendbyte.exit_crit_edge
  %retval.0.i103 = phi i32 [ %..i, %do.end.i ], [ 0, %entry.cypress_ps2_sendbyte.exit_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 122) #6
  %10 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pktcnt, align 1
  %conv11 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv11)
  %cmp12.not = icmp ugt i32 %cond, %conv11
  br i1 %cmp12.not, label %if.then22, label %cypress_ps2_sendbyte.exit.if.end52_crit_edge

cypress_ps2_sendbyte.exit.if.end52_crit_edge:     ; preds = %cypress_ps2_sendbyte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then22:                                        ; preds = %cypress_ps2_sendbyte.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %wait = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2, i32 2
  %call25108 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %13 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pktcnt, align 1
  %conv28109 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv28109)
  %cmp29.not110.not = icmp ugt i32 %cond, %conv28109
  br i1 %cmp29.not110.not, label %if.then22.cleanup_crit_edge, label %if.then22.for.end_crit_edge

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then22.cleanup_crit_edge
  %__ret23.1112 = phi i32 [ %__ret23.1, %cleanup.cleanup_crit_edge ], [ 20, %if.then22.cleanup_crit_edge ]
  %call49 = call i32 @schedule_timeout(i32 noundef %__ret23.1112) #6
  %call25 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %15 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pktcnt, align 1
  %conv28 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv28)
  %cmp29.not = icmp ugt i32 %cond, %conv28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool35.not = icmp eq i32 %call49, 0
  %spec.store.select74 = select i1 %tobool35.not, i32 1, i32 %call49
  %__ret23.1 = select i1 %cmp29.not, i32 %call49, i32 %spec.store.select74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.1)
  %tobool42.not = icmp eq i32 %__ret23.1, 0
  %not.cmp29.not = xor i1 %cmp29.not, true
  %17 = select i1 %not.cmp29.not, i1 true, i1 %tobool42.not
  br i1 %17, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then22.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end52

if.end52:                                         ; preds = %for.end, %cypress_ps2_sendbyte.exit.if.end52_crit_edge
  %packet = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %18 = call ptr @memcpy(ptr %param, ptr %packet, i32 %cond)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_ps2_read_cmd_status.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_ps2_read_cmd_status, %if.then62)) #6
          to label %out [label %if.then62], !srcloc !67

if.then62:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_ps2_read_cmd_status.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %cond, ptr noundef %param) #6
  br label %out

out:                                              ; preds = %if.then62, %if.end52
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %1, ptr %state, align 4
  %22 = ptrtoint ptr %pktcnt to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %pktcnt, align 1
  call void @ps2_end_command(ptr noundef %ps2dev1) #6
  ret i32 %retval.0.i103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_begin_command(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_end_command(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_sendbyte(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cypress_read_fw_version(ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  %param = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param) #6
  %2 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %param, align 1, !annotation !66
  %3 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !66
  %5 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !66
  %call = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext 0, ptr noundef nonnull %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %8)
  %cmp.not = icmp eq i8 %8, 51
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %10)
  %cmp4.not = icmp eq i8 %10, -52
  br i1 %cmp4.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %5, align 1
  %13 = and i8 %12, 127
  %and = zext i8 %13 to i32
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %1, align 4
  %.lobit = lshr i8 %12, 7
  %tp_metrics_supported = getelementptr inbounds %struct.cytp_data, ptr %1, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp15 = icmp ugt i8 %13, 10
  %narrow = select i1 %cmp15, i8 0, i8 %.lobit
  %spec.select = zext i8 %narrow to i32
  %15 = ptrtoint ptr %tp_metrics_supported to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select, ptr %tp_metrics_supported, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_read_fw_version.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_read_fw_version, %if.then24)) #6
          to label %do.body27 [label %if.then24], !srcloc !67

if.then24:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %16 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_read_fw_version.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %19) #6
  br label %do.body27

do.body27:                                        ; preds = %if.then24, %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cypress_read_fw_version.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cypress_read_fw_version, %if.then39)) #6
          to label %cleanup [label %if.then39], !srcloc !67

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %ps2dev40 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %20 = ptrtoint ptr %ps2dev40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ps2dev40, align 4
  %dev42 = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %tp_metrics_supported to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tp_metrics_supported, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cypress_read_fw_version.__UNIQUE_ID_ddebug232, ptr noundef %dev42, ptr noundef nonnull @.str.24, i32 noundef %23) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body27, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %do.body27 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cypress_process_packet(ptr nocapture noundef readonly %psmouse) unnamed_addr #0 align 64 {
entry:
  %report_data = alloca %struct.cytp_report_data, align 4
  %pos = alloca [2 x %struct.input_mt_pos], align 8
  %slots = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %report_data) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #6
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %pos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %slots) #6
  %5 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %slots, align 4, !annotation !66
  %6 = getelementptr inbounds [2 x i32], ptr %slots, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !66
  %packet1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %8 = ptrtoint ptr %packet1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %packet1.i, align 1
  %10 = call ptr @memset(ptr %report_data, i32 0, i32 32)
  %11 = lshr i8 %9, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i.i = icmp eq i8 %11, 1
  br i1 %cmp.i.i, label %cypress_get_finger_count.exit.thread14.i, label %if.end.i.i

cypress_get_finger_count.exit.thread14.i:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %report_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %report_data, align 4
  %tap16.i = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 2
  %13 = ptrtoint ptr %tap16.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load17.i = load i8, ptr %tap16.i, align 4
  %14 = shl i8 %9, 2
  %bf.shl18.i = and i8 %14, 16
  %bf.clear19.i = and i8 %bf.load17.i, -17
  %bf.set20.i = or i8 %bf.clear19.i, %bf.shl18.i
  store i8 %bf.set20.i, ptr %tap16.i, align 4
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  %conv2.i.i = zext i8 %11 to i32
  %15 = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.cypress_get_finger_count.exit.i_crit_edge, label %if.then6.i.i

if.end.i.i.cypress_get_finger_count.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_finger_count.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %switch.selectcmp.i.i = icmp eq i8 %11, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 5, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %9)
  %switch.selectcmp13.i.i = icmp ult i8 %9, 64
  br i1 %switch.selectcmp13.i.i, label %cypress_get_finger_count.exit.thread.i, label %if.then6.i.i.cypress_get_finger_count.exit.i_crit_edge

if.then6.i.i.cypress_get_finger_count.exit.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_finger_count.exit.i

cypress_get_finger_count.exit.thread.i:           ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %report_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %report_data, align 4
  %tap3.i = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 2
  %17 = ptrtoint ptr %tap3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load4.i = load i8, ptr %tap3.i, align 4
  %18 = shl nuw i8 %9, 2
  %bf.shl5.i = and i8 %18, 16
  %bf.clear6.i = and i8 %bf.load4.i, -17
  %bf.set7.i = or i8 %bf.clear6.i, %bf.shl5.i
  store i8 %bf.set7.i, ptr %tap3.i, align 4
  br label %if.then29.i

cypress_get_finger_count.exit.i:                  ; preds = %if.then6.i.i.cypress_get_finger_count.exit.i_crit_edge, %if.end.i.i.cypress_get_finger_count.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv2.i.i, %if.end.i.i.cypress_get_finger_count.exit.i_crit_edge ], [ %switch.select.i.i, %if.then6.i.i.cypress_get_finger_count.exit.i_crit_edge ]
  %19 = ptrtoint ptr %report_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i.i, ptr %report_data, align 4
  %tap.i = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 2
  %20 = ptrtoint ptr %tap.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %tap.i, align 4
  %21 = shl i8 %9, 2
  %bf.shl.i = and i8 %21, 16
  %bf.clear.i = and i8 %bf.load.i, -17
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %tap.i, align 4
  %trunc.i = trunc i32 %retval.0.i.i to i8
  %22 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %cypress_get_finger_count.exit.i.if.then29.i_crit_edge [
    i8 1, label %cypress_get_finger_count.exit.i.if.then.i_crit_edge
    i8 0, label %cypress_get_finger_count.exit.i.cypress_parse_packet.exit_crit_edge
  ]

cypress_get_finger_count.exit.i.cypress_parse_packet.exit_crit_edge: ; preds = %cypress_get_finger_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_parse_packet.exit

cypress_get_finger_count.exit.i.if.then.i_crit_edge: ; preds = %cypress_get_finger_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

cypress_get_finger_count.exit.i.if.then29.i_crit_edge: ; preds = %cypress_get_finger_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29.i

if.then.i:                                        ; preds = %cypress_get_finger_count.exit.i.if.then.i_crit_edge, %cypress_get_finger_count.exit.thread14.i
  %bf.set23.i = phi i8 [ %bf.set20.i, %cypress_get_finger_count.exit.thread14.i ], [ %bf.set.i, %cypress_get_finger_count.exit.i.if.then.i_crit_edge ]
  %bf.shl22.i = phi i8 [ %bf.shl18.i, %cypress_get_finger_count.exit.thread14.i ], [ %bf.shl.i, %cypress_get_finger_count.exit.i.if.then.i_crit_edge ]
  %tap21.i = phi ptr [ %tap16.i, %cypress_get_finger_count.exit.thread14.i ], [ %tap.i, %cypress_get_finger_count.exit.i.if.then.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx4.i, align 1
  %25 = and i8 %24, 112
  %and6.i = zext i8 %25 to i32
  %shl.i = shl nuw nsw i32 %and6.i, 4
  %arrayidx7.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %27 to i32
  %or.i = or i32 %shl.i, %conv8.i
  %contacts.i = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1
  %28 = ptrtoint ptr %contacts.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i, ptr %contacts.i, align 4
  %29 = and i8 %24, 7
  %and12.i = zext i8 %29 to i32
  %shl13.i = shl nuw nsw i32 %and12.i, 8
  %arrayidx14.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %30 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %31 to i32
  %or16.i = or i32 %shl13.i, %conv15.i
  %y.i = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or16.i, ptr %y.i, align 4
  %mode.i = getelementptr inbounds %struct.cytp_data, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode.i, align 4
  %and19.i = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then.i.cypress_parse_packet.exit_crit_edge, label %if.then21.i

if.then.i.cypress_parse_packet.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_parse_packet.exit

if.then21.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %35 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %36 to i32
  %z.i = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 0, i32 2
  %37 = ptrtoint ptr %z.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv23.i, ptr %z.i, align 4
  br label %cypress_parse_packet.exit

if.then29.i:                                      ; preds = %cypress_get_finger_count.exit.i.if.then29.i_crit_edge, %cypress_get_finger_count.exit.thread.i
  %bf.set13.i = phi i8 [ %bf.set7.i, %cypress_get_finger_count.exit.thread.i ], [ %bf.set.i, %cypress_get_finger_count.exit.i.if.then29.i_crit_edge ]
  %bf.shl11.i = phi i8 [ %bf.shl5.i, %cypress_get_finger_count.exit.thread.i ], [ %bf.shl.i, %cypress_get_finger_count.exit.i.if.then29.i_crit_edge ]
  %tap9.i = phi ptr [ %tap3.i, %cypress_get_finger_count.exit.thread.i ], [ %tap.i, %cypress_get_finger_count.exit.i.if.then29.i_crit_edge ]
  %arrayidx30.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx30.i, align 1
  %40 = and i8 %39, 112
  %and32.i = zext i8 %40 to i32
  %shl33.i = shl nuw nsw i32 %and32.i, 4
  %arrayidx34.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %41 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %42 to i32
  %or36.i = or i32 %shl33.i, %conv35.i
  %contacts37.i = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1
  %43 = ptrtoint ptr %contacts37.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or36.i, ptr %contacts37.i, align 4
  %44 = and i8 %39, 7
  %and42.i = zext i8 %44 to i32
  %shl43.i = shl nuw nsw i32 %and42.i, 8
  %arrayidx44.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %45 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %46 to i32
  %or46.i = or i32 %shl43.i, %conv45.i
  %y49.i = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %y49.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or46.i, ptr %y49.i, align 4
  %mode50.i = getelementptr inbounds %struct.cytp_data, ptr %3, i32 0, i32 2
  %48 = ptrtoint ptr %mode50.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mode50.i, align 4
  %and51.i = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.then29.i.if.end59.i_crit_edge, label %if.then53.i

if.then29.i.if.end59.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.then53.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx54.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %50 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = zext i8 %51 to i32
  %z58.i = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 0, i32 2
  %52 = ptrtoint ptr %z58.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv55.i, ptr %z58.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then53.i, %if.then29.i.if.end59.i_crit_edge
  %arrayidx60.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %53 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx60.i, align 1
  %55 = and i8 %54, -16
  %and62.i = zext i8 %55 to i32
  %shl63.i = shl nuw nsw i32 %and62.i, 4
  %arrayidx64.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 6
  %56 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx64.i, align 1
  %conv65.i = zext i8 %57 to i32
  %or66.i = or i32 %shl63.i, %conv65.i
  %arrayidx68.i = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or66.i, ptr %arrayidx68.i, align 4
  %59 = and i8 %54, 15
  %and72.i = zext i8 %59 to i32
  %shl73.i = shl nuw nsw i32 %and72.i, 8
  %arrayidx74.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 7
  %60 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx74.i, align 1
  %conv75.i = zext i8 %61 to i32
  %or76.i = or i32 %shl73.i, %conv75.i
  %y79.i = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 1, i32 1
  %62 = ptrtoint ptr %y79.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or76.i, ptr %y79.i, align 4
  %63 = ptrtoint ptr %mode50.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mode50.i, align 4
  %and81.i = and i32 %64, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.end59.i.cypress_parse_packet.exit_crit_edge, label %if.then83.i

if.end59.i.cypress_parse_packet.exit_crit_edge:   ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_parse_packet.exit

if.then83.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  %z86.i = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 0, i32 2
  %65 = ptrtoint ptr %z86.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %z86.i, align 4
  %z89.i = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 1, i32 2
  %67 = ptrtoint ptr %z89.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %z89.i, align 4
  br label %cypress_parse_packet.exit

cypress_parse_packet.exit:                        ; preds = %if.then83.i, %if.end59.i.cypress_parse_packet.exit_crit_edge, %if.then21.i, %if.then.i.cypress_parse_packet.exit_crit_edge, %cypress_get_finger_count.exit.i.cypress_parse_packet.exit_crit_edge
  %bf.set12.i = phi i8 [ %bf.set.i, %cypress_get_finger_count.exit.i.cypress_parse_packet.exit_crit_edge ], [ %bf.set13.i, %if.then83.i ], [ %bf.set13.i, %if.end59.i.cypress_parse_packet.exit_crit_edge ], [ %bf.set23.i, %if.then.i.cypress_parse_packet.exit_crit_edge ], [ %bf.set23.i, %if.then21.i ]
  %bf.shl10.i = phi i8 [ %bf.shl.i, %cypress_get_finger_count.exit.i.cypress_parse_packet.exit_crit_edge ], [ %bf.shl11.i, %if.then83.i ], [ %bf.shl11.i, %if.end59.i.cypress_parse_packet.exit_crit_edge ], [ %bf.shl22.i, %if.then.i.cypress_parse_packet.exit_crit_edge ], [ %bf.shl22.i, %if.then21.i ]
  %tap8.i = phi ptr [ %tap.i, %cypress_get_finger_count.exit.i.cypress_parse_packet.exit_crit_edge ], [ %tap9.i, %if.then83.i ], [ %tap9.i, %if.end59.i.cypress_parse_packet.exit_crit_edge ], [ %tap21.i, %if.then.i.cypress_parse_packet.exit_crit_edge ], [ %tap21.i, %if.then21.i ]
  %bf.shl99.i = shl i8 %9, 7
  %bf.clear100.i = and i8 %bf.set12.i, 63
  %bf.set101.i = or i8 %bf.clear100.i, %bf.shl99.i
  %68 = shl i8 %9, 5
  %bf.shl109.i = and i8 %68, 64
  %bf.set111.i = or i8 %bf.set101.i, %bf.shl109.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl10.i)
  %tobool116.not.i = icmp eq i8 %bf.shl10.i, 0
  %bf.clear120.i = and i8 %bf.set111.i, 127
  %spec.select.i = select i1 %tobool116.not.i, i8 %bf.set111.i, i8 %bf.clear120.i
  %69 = ptrtoint ptr %tap8.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %spec.select.i, ptr %tap8.i, align 4
  %70 = ptrtoint ptr %report_data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %report_data, align 4
  %72 = tail call i32 @llvm.smin.i32(i32 %71, i32 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp16 = icmp sgt i32 %71, 0
  br i1 %cmp16, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %cypress_parse_packet.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call812 = call i32 @input_mt_assign_slots(ptr noundef %1, ptr noundef nonnull %slots, ptr noundef nonnull %pos, i32 noundef %72, i32 noundef 0) #6
  br label %for.end21

for.body:                                         ; preds = %cypress_parse_packet.exit
  %arrayidx = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 0
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %74 to i16
  %75 = ptrtoint ptr %pos to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv, ptr %pos, align 8
  %y = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 0, i32 1
  %76 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %y, align 4
  %conv4 = trunc i32 %77 to i16
  %y6 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos, i32 0, i32 0, i32 1
  %78 = ptrtoint ptr %y6 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv4, ptr %y6, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %exitcond.not = icmp slt i32 %71, 2
  br i1 %exitcond.not, label %for.body12.preheader.critedge13, label %for.body.1

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.1 = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.1, align 4
  %conv.1 = trunc i32 %80 to i16
  %arrayidx2.1 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.1, ptr %arrayidx2.1, align 4
  %y.1 = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 1, i32 1
  %82 = ptrtoint ptr %y.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %y.1, align 4
  %conv4.1 = trunc i32 %83 to i16
  %y6.1 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %y6.1 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv4.1, ptr %y6.1, align 2
  %call8.c = call i32 @input_mt_assign_slots(ptr noundef %1, ptr noundef nonnull %slots, ptr noundef nonnull %pos, i32 noundef %72, i32 noundef 0) #6
  br label %for.body12

for.body12.preheader.critedge13:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call8.c14 = call i32 @input_mt_assign_slots(ptr noundef %1, ptr noundef nonnull %slots, ptr noundef nonnull %pos, i32 noundef %72, i32 noundef 0) #6
  br label %for.body12

for.body12:                                       ; preds = %for.body12.preheader.critedge13, %for.body.1
  %arrayidx14 = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 0
  %85 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %slots, align 4
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef %86) #6
  %call16 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #6
  %87 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx14, align 4
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 53, i32 noundef %88) #6
  %y18 = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 0, i32 1
  %89 = ptrtoint ptr %y18 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %y18, align 4
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 54, i32 noundef %90) #6
  %z = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 0, i32 2
  %91 = ptrtoint ptr %z to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %z, align 4
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 58, i32 noundef %92) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %exitcond11.not = icmp slt i32 %71, 2
  br i1 %exitcond11.not, label %for.body12.for.end21_crit_edge, label %for.body12.1

for.body12.for.end21_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end21

for.body12.1:                                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx14.1 = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 1
  %arrayidx15.1 = getelementptr inbounds [2 x i32], ptr %slots, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx15.1, align 4
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef %94) #6
  %call16.1 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #6
  %95 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx14.1, align 4
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 53, i32 noundef %96) #6
  %y18.1 = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 1, i32 1
  %97 = ptrtoint ptr %y18.1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %y18.1, align 4
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 54, i32 noundef %98) #6
  %z.1 = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, i32 1, i32 2
  %99 = ptrtoint ptr %z.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %z.1, align 4
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 58, i32 noundef %100) #6
  br label %for.end21

for.end21:                                        ; preds = %for.body12.1, %for.body12.for.end21_crit_edge, %for.end.thread
  call void @input_mt_sync_frame(ptr noundef %1) #6
  %101 = ptrtoint ptr %report_data to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %report_data, align 4
  call void @input_mt_report_finger_count(ptr noundef %1, i32 noundef %102) #6
  %left = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 2
  %103 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load = load i8, ptr %left, align 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  %104 = zext i8 %bf.load.lobit to i32
  call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 272, i32 noundef %104) #6
  %105 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load23 = load i8, ptr %left, align 4
  %106 = lshr i8 %bf.load23, 6
  %.lobit = and i8 %106, 1
  %107 = zext i8 %.lobit to i32
  call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 273, i32 noundef %107) #6
  %108 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load26 = load i8, ptr %left, align 4
  %109 = lshr i8 %bf.load26, 5
  %.lobit5 = and i8 %109, 1
  %110 = zext i8 %.lobit5 to i32
  call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 274, i32 noundef %110) #6
  call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %slots) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %report_data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_finger_count(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !44, !45, !47, !48, !50, !51, !52, !53, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 213, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 214, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 672, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @cypress_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @cypress_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 677, i32 3}
!14 = !{ptr @cypress_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cypress_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 682, i32 3}
!18 = !{ptr @cypress_init._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cypress_init._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 175, i32 2}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cypress_send_ext_cmd.__UNIQUE_ID_ddebug230, !21, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 43, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cypress_ps2_sendbyte.__UNIQUE_ID_ddebug227, !26, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 126, i32 2}
!31 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cypress_ps2_read_cmd_status.__UNIQUE_ID_ddebug228, !30, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 165, i32 2}
!35 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cypress_verify_cmd_state.__UNIQUE_ID_ddebug229, !34, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!37 = distinct !{null, !38, !"cytp_resolution", i1 false, i1 false}
!38 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 36, i32 28}
!39 = distinct !{null, !40, !"cytp_rate", i1 false, i1 false}
!40 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 35, i32 28}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 242, i32 2}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cypress_read_fw_version.__UNIQUE_ID_ddebug231, !42, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 243, i32 2}
!47 = !{ptr @cypress_read_fw_version.__UNIQUE_ID_ddebug232, !46, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 646, i32 3}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cypress_reconnect._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @cypress_reconnect._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/mouse/cypress_ps2.c", i32 651, i32 3}
!55 = !{ptr @cypress_reconnect._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cypress_reconnect._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
!67 = !{i64 2148970367, i64 2148970372, i64 2148970385, i64 2148970429, i64 2148970463, i64 2148970484}
