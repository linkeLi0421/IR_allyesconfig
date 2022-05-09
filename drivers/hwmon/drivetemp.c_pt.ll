; ModuleID = '/llk/IR_all_yes/drivers/hwmon/drivetemp.c_pt.bc'
source_filename = "../drivers/hwmon/drivetemp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.drivetemp_data = type { %struct.list_head, %struct.mutex, ptr, ptr, ptr, [512 x i8], ptr, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scsi_vpd = type { %struct.callback_head, i32, [0 x i8] }
%struct.callback_head = type { ptr, ptr }

@drivetemp_interface = internal global { %struct.class_interface, [44 x i8] } { %struct.class_interface { %struct.list_head zeroinitializer, ptr null, ptr @drivetemp_add, ptr @drivetemp_remove }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_drivetemp__284_618_drivetemp_init6 = internal global ptr @drivetemp_init, section ".initcall6.init", align 4
@__exitcall_drivetemp_exit = internal global ptr @drivetemp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author285 = internal constant [52 x i8] c"drivetemp.author=Guenter Roeck <linus@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description286 = internal constant [53 x i8] c"drivetemp.description=Hard drive temperature monitor\00", section ".modinfo", align 1
@__UNIQUE_ID_file287 = internal constant [39 x i8] c"drivetemp.file=drivers/hwmon/drivetemp\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [22 x i8] c"drivetemp.license=GPL\00", section ".modinfo", align 1
@drivetemp_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"drivetemp\00", [22 x i8] zeroinitializer }, align 32
@drivetemp_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @drivetemp_ops, ptr @drivetemp_info }, [24 x i8] zeroinitializer }, align 32
@drivetemp_devlist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @drivetemp_devlist, ptr @drivetemp_devlist }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@drivetemp_identify_sata.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/hwmon/drivetemp.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@drivetemp_identify_sata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 368, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"will avoid using SCT for temperature monitoring\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivetemp_identify_sata\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@drivetemp_identify_sata._entry_ptr = internal global ptr @drivetemp_identify_sata._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TOSHIBA DT01ACA\00", [16 x i8] zeroinitializer }, align 32
@drivetemp_get_smarttemp.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 56, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivetemp_get_smarttemp\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"checksum error reading SMART values\0A\00", [59 x i8] zeroinitializer }, align 32
@drivetemp_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @drivetemp_is_visible, ptr @drivetemp_read, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@drivetemp_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.14, ptr @.compoundliteral.16, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 12583594, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.15 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 20]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 22, i64 23]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 190, i64 194]
@__sancov_gen_cov_switch_values.19 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9, i64 22, i64 23]
@__sancov_gen_cov_switch_values.20 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9, i64 22, i64 23]
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"drivetemp_interface\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 603, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 566, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 573, i32 59 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"drivetemp_chip_info\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 545, i32 37 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"drivetemp_devlist\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 131, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 341, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 367, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 695, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 723, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 300, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 226, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"drivetemp_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 540, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"drivetemp_info\00", align 1
@___asan_gen_.82 = private constant [29 x i8] c"../drivers/hwmon/drivetemp.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 530, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__exitcall_drivetemp_exit, ptr @__initcall__kmod_drivetemp__284_618_drivetemp_init6, ptr @drivetemp_exit, ptr @drivetemp_identify_sata._entry, ptr @drivetemp_identify_sata._entry_ptr, ptr @drivetemp_interface, ptr @drivetemp_add.__key, ptr @.str, ptr @.str.1, ptr @drivetemp_chip_info, ptr @drivetemp_devlist, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @drivetemp_ops, ptr @drivetemp_info, ptr @.compoundliteral, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivetemp_interface to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivetemp_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivetemp_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivetemp_devlist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivetemp_identify_sata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivetemp_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivetemp_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @drivetemp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @class_interface_unregister(ptr noundef nonnull @drivetemp_interface) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_interface_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @drivetemp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_register_interface(ptr noundef nonnull @drivetemp_interface) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drivetemp_add(ptr noundef %dev, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  %scsi_cmd.i.i20.i = alloca [16 x i8], align 1
  %scsi_cmd.i.i16.i = alloca [16 x i8], align 1
  %scsi_cmd.i.i.i = alloca [16 x i8], align 1
  %temp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 652) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -408
  %sdev1 = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %sdev1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %sdev1, align 4
  %dev2 = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev2, align 8
  %lock = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @drivetemp_add.__key) #10
  %5 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev1, align 4
  %inquiry.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 29
  %7 = ptrtoint ptr %inquiry.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inquiry.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.abort_crit_edge, label %lor.lhs.false.i

if.end.abort_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

lor.lhs.false.i:                                  ; preds = %if.end
  %inquiry_len.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 27
  %9 = ptrtoint ptr %inquiry_len.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %inquiry_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %10)
  %cmp.i = icmp ult i8 %10, 16
  br i1 %cmp.i, label %lor.lhs.false.i.abort_crit_edge, label %if.end.i

lor.lhs.false.i.abort_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end.i:                                         ; preds = %lor.lhs.false.i
  %type.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 22
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %if.end.i.abort_crit_edge [
    i8 0, label %if.end.i.if.end11.i_crit_edge
    i8 20, label %if.end.i.if.end11.i_crit_edge40
  ]

if.end.i.if.end11.i_crit_edge40:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.end.i.abort_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end11.i:                                       ; preds = %if.end.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge40
  %smartdata.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i.i) #10
  %14 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %temp.i.i, align 4, !annotation !62
  %15 = tail call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %if.end11.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end11.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end11.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end11.i.rcu_read_lock.exit.i.i_crit_edge
  %vpd_pg89.i.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 36
  %19 = ptrtoint ptr %vpd_pg89.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %vpd_pg89.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b207.i.i = load i1, ptr @drivetemp_identify_sata.__warned, align 1
  br i1 %.b207.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @drivetemp_identify_sata.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 341, ptr noundef nonnull @.str.3) #10
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %20, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.if.then20.i.i_crit_edge, label %lor.lhs.false.i.i

do.end8.i.i.if.then20.i.i_crit_edge:              ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i.i

lor.lhs.false.i.i:                                ; preds = %do.end8.i.i
  %len.i.i = getelementptr inbounds %struct.scsi_vpd, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 572, i32 %22)
  %cmp.i.i = icmp slt i32 %22, 572
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.if.then20.i.i_crit_edge, label %lor.lhs.false11.i.i

lor.lhs.false.i.i.if.then20.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i.i

lor.lhs.false11.i.i:                              ; preds = %lor.lhs.false.i.i
  %arrayidx.i.i = getelementptr %struct.scsi_vpd, ptr %20, i32 5, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %24)
  %cmp12.not.i.i = icmp eq i8 %24, -20
  br i1 %cmp12.not.i.i, label %lor.lhs.false14.i.i, label %lor.lhs.false11.i.i.if.then20.i.i_crit_edge

lor.lhs.false11.i.i.if.then20.i.i_crit_edge:      ; preds = %lor.lhs.false11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i.i

lor.lhs.false14.i.i:                              ; preds = %lor.lhs.false11.i.i
  %arrayidx16.i.i = getelementptr %struct.scsi_vpd, ptr %20, i32 4
  %25 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %26)
  %cmp18.not.i.i = icmp eq i8 %26, 52
  br i1 %cmp18.not.i.i, label %if.end21.i.i, label %lor.lhs.false14.i.i.if.then20.i.i_crit_edge

lor.lhs.false14.i.i.if.then20.i.i_crit_edge:      ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i.i

if.then20.i.i:                                    ; preds = %lor.lhs.false14.i.i.if.then20.i.i_crit_edge, %lor.lhs.false11.i.i.if.then20.i.i_crit_edge, %lor.lhs.false.i.i.if.then20.i.i_crit_edge, %do.end8.i.i.if.then20.i.i_crit_edge
  %call.i209.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i209.i.i, label %if.then20.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i212.i.i

if.then20.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i212.i.i:                           ; preds = %if.then20.i.i
  %call1.i210.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i210.i.i)
  %tobool.not.i211.i.i = icmp eq i32 %call1.i210.i.i, 0
  br i1 %tobool.not.i211.i.i, label %land.lhs.true.i212.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i214.i.i

land.lhs.true.i212.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i212.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i214.i.i:                          ; preds = %land.lhs.true.i212.i.i
  %.b4.i213.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i213.i.i, label %land.lhs.true2.i214.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i215.i.i

land.lhs.true2.i214.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i214.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

if.then.i215.i.i:                                 ; preds = %land.lhs.true2.i214.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i215.i.i, %land.lhs.true2.i214.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i212.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.then20.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !64
  %27 = tail call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i.i.i.i216.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i216.i.i to ptr
  %preempt_count.i.i.i.i217.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i217.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i217.i.i, align 4
  %sub.i.i.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i217.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %drivetemp_identify.exit.thread34

if.end21.i.i:                                     ; preds = %lor.lhs.false14.i.i
  %arrayidx23.i.i = getelementptr %struct.scsi_vpd, ptr %20, i32 6
  %31 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx23.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp26.i.i = icmp slt i16 %32, 0
  %arrayidx.i.i.i = getelementptr i16, ptr %arrayidx23.i.i, i32 93
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp.i.i.i = icmp eq i16 %34, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i218.i.i, label %if.end21.i.i.if.end.i.i.i_crit_edge

if.end21.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

land.lhs.true.i218.i.i:                           ; preds = %if.end21.i.i
  %arrayidx2.i.i.i = getelementptr %struct.scsi_vpd, ptr %20, i32 19, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx2.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %36)
  %cmp4.i.i.i = icmp sgt i16 %36, 31
  br i1 %cmp4.i.i.i, label %land.lhs.true.i218.i.i.ata_id_is_sata.exit.i.i_crit_edge, label %land.lhs.true.i218.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i218.i.i.if.end.i.i.i_crit_edge:    ; preds = %land.lhs.true.i218.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

land.lhs.true.i218.i.i.ata_id_is_sata.exit.i.i_crit_edge: ; preds = %land.lhs.true.i218.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_id_is_sata.exit.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i218.i.i.if.end.i.i.i_crit_edge, %if.end21.i.i.if.end.i.i.i_crit_edge
  br label %ata_id_is_sata.exit.i.i

ata_id_is_sata.exit.i.i:                          ; preds = %if.end.i.i.i, %land.lhs.true.i218.i.i.ata_id_is_sata.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i1 [ true, %if.end.i.i.i ], [ false, %land.lhs.true.i218.i.i.ata_id_is_sata.exit.i.i_crit_edge ]
  %arrayidx.i219.i.i = getelementptr %struct.scsi_vpd, ptr %20, i32 40, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx.i219.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i219.i.i, align 2
  %39 = and i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.i.not.i.i = icmp eq i16 %39, 0
  %40 = and i16 %38, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.i221.not.i.i = icmp eq i16 %40, 0
  %arrayidx.i222.i.i = getelementptr %struct.scsi_vpd, ptr %20, i32 19, i32 1
  %41 = ptrtoint ptr %arrayidx.i222.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i222.i.i, align 2
  %43 = and i16 %42, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.i223.not.i.i = icmp eq i16 %43, 0
  br i1 %tobool.i223.not.i.i, label %ata_id_is_sata.exit.i.i.land.end.i.i_crit_edge, label %land.rhs.i.i

ata_id_is_sata.exit.i.i.land.end.i.i_crit_edge:   ; preds = %ata_id_is_sata.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i.i

land.rhs.i.i:                                     ; preds = %ata_id_is_sata.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i224.i.i = getelementptr i16, ptr %arrayidx23.i.i, i32 85
  %44 = ptrtoint ptr %arrayidx.i224.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i224.i.i, align 2
  %46 = and i16 %45, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.i225.i.i = icmp ne i16 %46, 0
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %ata_id_is_sata.exit.i.i.land.end.i.i_crit_edge
  %47 = phi i1 [ false, %ata_id_is_sata.exit.i.i.land.end.i.i_crit_edge ], [ %tobool.i225.i.i, %land.rhs.i.i ]
  %call.i226.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i226.i.i, label %land.end.i.i.rcu_read_unlock.exit236.i.i_crit_edge, label %land.lhs.true.i229.i.i

land.end.i.i.rcu_read_unlock.exit236.i.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit236.i.i

land.lhs.true.i229.i.i:                           ; preds = %land.end.i.i
  %call1.i227.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i227.i.i)
  %tobool.not.i228.i.i = icmp eq i32 %call1.i227.i.i, 0
  br i1 %tobool.not.i228.i.i, label %land.lhs.true.i229.i.i.rcu_read_unlock.exit236.i.i_crit_edge, label %land.lhs.true2.i231.i.i

land.lhs.true.i229.i.i.rcu_read_unlock.exit236.i.i_crit_edge: ; preds = %land.lhs.true.i229.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit236.i.i

land.lhs.true2.i231.i.i:                          ; preds = %land.lhs.true.i229.i.i
  %.b4.i230.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i230.i.i, label %land.lhs.true2.i231.i.i.rcu_read_unlock.exit236.i.i_crit_edge, label %if.then.i232.i.i

land.lhs.true2.i231.i.i.rcu_read_unlock.exit236.i.i_crit_edge: ; preds = %land.lhs.true2.i231.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit236.i.i

if.then.i232.i.i:                                 ; preds = %land.lhs.true2.i231.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit236.i.i

rcu_read_unlock.exit236.i.i:                      ; preds = %if.then.i232.i.i, %land.lhs.true2.i231.i.i.rcu_read_unlock.exit236.i.i_crit_edge, %land.lhs.true.i229.i.i.rcu_read_unlock.exit236.i.i_crit_edge, %land.end.i.i.rcu_read_unlock.exit236.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !64
  %48 = tail call i32 @llvm.read_register.i32(metadata !52) #10
  %and.i.i.i.i.i233.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i233.i.i to ptr
  %preempt_count.i.i.i.i234.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i234.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i234.i.i, align 4
  %sub.i.i.i235.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i235.i.i, ptr %preempt_count.i.i.i.i234.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %brmerge.i.i = or i1 %cmp26.i.i, %retval.0.i.i.i
  br i1 %brmerge.i.i, label %rcu_read_unlock.exit236.i.i.drivetemp_identify.exit.thread34_crit_edge, label %if.end43.i.i

rcu_read_unlock.exit236.i.i.drivetemp_identify.exit.thread34_crit_edge: ; preds = %rcu_read_unlock.exit236.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drivetemp_identify.exit.thread34

if.end43.i.i:                                     ; preds = %rcu_read_unlock.exit236.i.i
  br i1 %tobool.i.not.i.i, label %if.end43.i.i.skip_sct.i.i_crit_edge, label %land.lhs.true46.i.i

if.end43.i.i.skip_sct.i.i_crit_edge:              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_sct.i.i

land.lhs.true46.i.i:                              ; preds = %if.end43.i.i
  %52 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sdev1, align 4
  %model.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %53, i32 0, i32 31
  %54 = ptrtoint ptr %model.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %model.i.i.i, align 8
  %tobool.not.i237.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i237.i.i, label %land.lhs.true46.i.i.if.end56.critedge.i.i_crit_edge, label %drivetemp_sct_avoid.exit.i.i

land.lhs.true46.i.i.if.end56.critedge.i.i_crit_edge: ; preds = %land.lhs.true46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.critedge.i.i

drivetemp_sct_avoid.exit.i.i:                     ; preds = %land.lhs.true46.i.i
  %call4.i.i.i = tail call i32 @strncmp(ptr noundef nonnull %55, ptr noundef nonnull dereferenceable(16) @.str.11, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %do.end52.i.i, label %drivetemp_sct_avoid.exit.i.i.if.end56.critedge.i.i_crit_edge

drivetemp_sct_avoid.exit.i.i.if.end56.critedge.i.i_crit_edge: ; preds = %drivetemp_sct_avoid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.critedge.i.i

do.end52.i.i:                                     ; preds = %drivetemp_sct_avoid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sdev_gendev.i.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %sdev_gendev.i.i, ptr noundef nonnull @.str.4) #14
  br label %skip_sct.i.i

if.end56.critedge.i.i:                            ; preds = %drivetemp_sct_avoid.exit.i.i.if.end56.critedge.i.i_crit_edge, %land.lhs.true46.i.i.if.end56.critedge.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scsi_cmd.i.i20.i) #10
  %56 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i20.i, i32 0, i32 1
  %57 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i20.i, i32 0, i32 2
  %58 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i20.i, i32 0, i32 4
  %59 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i20.i, i32 0, i32 6
  %60 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i20.i, i32 0, i32 8
  %61 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i20.i, i32 0, i32 10
  %62 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i20.i, i32 0, i32 12
  %63 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i20.i, i32 0, i32 14
  %64 = getelementptr inbounds i8, ptr %scsi_cmd.i.i20.i, i32 3
  %65 = call ptr @memset(ptr %64, i32 0, i32 13)
  %66 = ptrtoint ptr %scsi_cmd.i.i20.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -123, ptr %scsi_cmd.i.i20.i, align 1
  %67 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 8, ptr %56, align 1
  %68 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 14, ptr %57, align 1
  %69 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -43, ptr %58, align 1
  %70 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %59, align 1
  %71 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -32, ptr %60, align 1
  %72 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 79, ptr %61, align 1
  %73 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -62, ptr %62, align 1
  %74 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -80, ptr %63, align 1
  %call.i.i.i23.i = call i32 @__scsi_execute(ptr noundef %53, ptr noundef nonnull %scsi_cmd.i.i20.i, i32 noundef 2, ptr noundef %smartdata.i.i, i32 noundef 512, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 5, i64 noundef 0, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd.i.i20.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i23.i)
  %tobool58.not.i.i = icmp eq i32 %call.i.i.i23.i, 0
  br i1 %tobool58.not.i.i, label %if.end60.i.i, label %if.end56.critedge.i.i.skip_sct.i.i_crit_edge

if.end56.critedge.i.i.skip_sct.i.i_crit_edge:     ; preds = %if.end56.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_sct.i.i

if.end60.i.i:                                     ; preds = %if.end56.critedge.i.i
  %arrayidx61.i.i = getelementptr %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 5, i32 1
  %75 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx61.i.i, align 1
  %conv62.i.i = zext i8 %76 to i32
  %shl.i.i = shl nuw nsw i32 %conv62.i.i, 8
  %77 = ptrtoint ptr %smartdata.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %smartdata.i.i, align 8
  %79 = and i8 %78, -2
  %conv64.masked.i.i = zext i8 %79 to i32
  %80 = or i32 %shl.i.i, %conv64.masked.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %switch.i.i = icmp eq i32 %80, 2
  br i1 %switch.i.i, label %if.end74.i.i, label %if.end60.i.i.skip_sct.i.i_crit_edge

if.end60.i.i.skip_sct.i.i_crit_edge:              ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_sct.i.i

if.end74.i.i:                                     ; preds = %if.end60.i.i
  %arrayidx75.i.i = getelementptr %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 5, i32 200
  %81 = ptrtoint ptr %arrayidx75.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx75.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %82)
  %cmp77.not.i.i = icmp eq i8 %82, -128
  br i1 %cmp77.not.i.i, label %if.end74.i.i.skip_sct.i.i_crit_edge, label %if.end82.i.i

if.end74.i.i.skip_sct.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_sct.i.i

if.end82.i.i:                                     ; preds = %if.end74.i.i
  %arrayidx83.i.i = getelementptr %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 5, i32 201
  %83 = ptrtoint ptr %arrayidx83.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx83.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %84)
  %cmp85.i.i = icmp ne i8 %84, -128
  %have_temp_lowest.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 7
  %frombool87.i.i = zext i1 %cmp85.i.i to i8
  %85 = ptrtoint ptr %have_temp_lowest.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %frombool87.i.i, ptr %have_temp_lowest.i.i, align 4
  %arrayidx88.i.i = getelementptr %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 5, i32 202
  %86 = ptrtoint ptr %arrayidx88.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx88.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %87)
  %cmp90.i.i = icmp ne i8 %87, -128
  %have_temp_highest.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 8
  %frombool92.i.i = zext i1 %cmp90.i.i to i8
  %88 = ptrtoint ptr %have_temp_highest.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %frombool92.i.i, ptr %have_temp_highest.i.i, align 1
  br i1 %tobool.i221.not.i.i, label %if.end82.i.i.drivetemp_identify.exit.thread37_crit_edge, label %if.end95.i.i

if.end82.i.i.drivetemp_identify.exit.thread37_crit_edge: ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drivetemp_identify.exit.thread37

if.end95.i.i:                                     ; preds = %if.end82.i.i
  %89 = call ptr @memset(ptr %arrayidx61.i.i, i32 0, i32 511)
  %90 = ptrtoint ptr %smartdata.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 5, ptr %smartdata.i.i, align 8
  %arrayidx97.i.i = getelementptr %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 5, i32 2
  %91 = ptrtoint ptr %arrayidx97.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %arrayidx97.i.i, align 2
  %arrayidx98.i.i = getelementptr %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 5, i32 4
  %92 = ptrtoint ptr %arrayidx98.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 2, ptr %arrayidx98.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scsi_cmd.i.i16.i) #10
  %93 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i16.i, i32 0, i32 1
  %94 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i16.i, i32 0, i32 2
  %95 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i16.i, i32 0, i32 4
  %96 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i16.i, i32 0, i32 6
  %97 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i16.i, i32 0, i32 8
  %98 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i16.i, i32 0, i32 10
  %99 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i16.i, i32 0, i32 12
  %100 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i16.i, i32 0, i32 14
  %101 = getelementptr inbounds i8, ptr %scsi_cmd.i.i16.i, i32 3
  %102 = call ptr @memset(ptr %101, i32 0, i32 13)
  %103 = ptrtoint ptr %scsi_cmd.i.i16.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -123, ptr %scsi_cmd.i.i16.i, align 1
  %104 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 10, ptr %93, align 1
  %105 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 6, ptr %94, align 1
  %106 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -42, ptr %95, align 1
  %107 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %96, align 1
  %108 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -32, ptr %97, align 1
  %109 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 79, ptr %98, align 1
  %110 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -62, ptr %99, align 1
  %111 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -80, ptr %100, align 1
  %112 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sdev1, align 4
  %call.i.i.i19.i = call i32 @__scsi_execute(ptr noundef %113, ptr noundef nonnull %scsi_cmd.i.i16.i, i32 noundef 1, ptr noundef %smartdata.i.i, i32 noundef 512, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 5, i64 noundef 0, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd.i.i16.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i19.i)
  %tobool100.not.i.i = icmp eq i32 %call.i.i.i19.i, 0
  br i1 %tobool100.not.i.i, label %if.end102.i.i, label %if.end95.i.i.drivetemp_identify.exit.thread37_crit_edge

if.end95.i.i.drivetemp_identify.exit.thread37_crit_edge: ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drivetemp_identify.exit.thread37

if.end102.i.i:                                    ; preds = %if.end95.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scsi_cmd.i.i.i) #10
  %114 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i.i, i32 0, i32 1
  %115 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i.i, i32 0, i32 2
  %116 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i.i, i32 0, i32 4
  %117 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i.i, i32 0, i32 6
  %118 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i.i, i32 0, i32 8
  %119 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i.i, i32 0, i32 10
  %120 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i.i, i32 0, i32 12
  %121 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i.i, i32 0, i32 14
  %122 = getelementptr inbounds i8, ptr %scsi_cmd.i.i.i, i32 3
  %123 = call ptr @memset(ptr %122, i32 0, i32 13)
  %124 = ptrtoint ptr %scsi_cmd.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -123, ptr %scsi_cmd.i.i.i, align 1
  %125 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 8, ptr %114, align 1
  %126 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 14, ptr %115, align 1
  %127 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -43, ptr %116, align 1
  %128 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %117, align 1
  %129 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -31, ptr %118, align 1
  %130 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 79, ptr %119, align 1
  %131 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -62, ptr %120, align 1
  %132 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -80, ptr %121, align 1
  %133 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %sdev1, align 4
  %call.i.i.i.i = call i32 @__scsi_execute(ptr noundef %134, ptr noundef nonnull %scsi_cmd.i.i.i, i32 noundef 2, ptr noundef %smartdata.i.i, i32 noundef 512, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 5, i64 noundef 0, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool104.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool104.not.i.i, label %if.end106.i.i, label %if.end102.i.i.drivetemp_identify.exit.thread37_crit_edge

if.end102.i.i.drivetemp_identify.exit.thread37_crit_edge: ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drivetemp_identify.exit.thread37

if.end106.i.i:                                    ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx107.i.i = getelementptr %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 5, i32 6
  %135 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx107.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %136)
  %cmp109.i.i = icmp ne i8 %136, -128
  %have_temp_max.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 10
  %frombool111.i.i = zext i1 %cmp109.i.i to i8
  %137 = ptrtoint ptr %have_temp_max.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %frombool111.i.i, ptr %have_temp_max.i.i, align 1
  %arrayidx112.i.i = getelementptr %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 5, i32 7
  %138 = ptrtoint ptr %arrayidx112.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx112.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %139)
  %cmp114.i.i = icmp ne i8 %139, -128
  %have_temp_crit.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 12
  %frombool116.i.i = zext i1 %cmp114.i.i to i8
  %140 = ptrtoint ptr %have_temp_crit.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %frombool116.i.i, ptr %have_temp_crit.i.i, align 1
  %arrayidx117.i.i = getelementptr %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 5, i32 8
  %141 = ptrtoint ptr %arrayidx117.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx117.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %142)
  %cmp119.i.i = icmp ne i8 %142, -128
  %have_temp_min.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 9
  %frombool121.i.i = zext i1 %cmp119.i.i to i8
  %143 = ptrtoint ptr %have_temp_min.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %frombool121.i.i, ptr %have_temp_min.i.i, align 2
  %arrayidx122.i.i = getelementptr %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 5, i32 9
  %144 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx122.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %145)
  %cmp124.i.i = icmp ne i8 %145, -128
  %have_temp_lcrit.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 11
  %frombool126.i.i = zext i1 %cmp124.i.i to i8
  %146 = ptrtoint ptr %have_temp_lcrit.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %frombool126.i.i, ptr %have_temp_lcrit.i.i, align 8
  %conv128.i.i = sext i8 %136 to i32
  %mul.i.i = mul nsw i32 %conv128.i.i, 1000
  %temp_max.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 14
  %147 = ptrtoint ptr %temp_max.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %mul.i.i, ptr %temp_max.i.i, align 8
  %conv130.i.i = sext i8 %139 to i32
  %mul131.i.i = mul nsw i32 %conv130.i.i, 1000
  %temp_crit.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 16
  %148 = ptrtoint ptr %temp_crit.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %mul131.i.i, ptr %temp_crit.i.i, align 8
  %conv133.i.i = sext i8 %142 to i32
  %mul134.i.i = mul nsw i32 %conv133.i.i, 1000
  %temp_min.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 13
  %149 = ptrtoint ptr %temp_min.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %mul134.i.i, ptr %temp_min.i.i, align 4
  %conv136.i.i = sext i8 %145 to i32
  %mul137.i.i = mul nsw i32 %conv136.i.i, 1000
  %temp_lcrit.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 15
  %150 = ptrtoint ptr %temp_lcrit.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %mul137.i.i, ptr %temp_lcrit.i.i, align 4
  br label %drivetemp_identify.exit.thread37

drivetemp_identify.exit.thread37:                 ; preds = %if.end106.i.i, %if.end102.i.i.drivetemp_identify.exit.thread37_crit_edge, %if.end95.i.i.drivetemp_identify.exit.thread37_crit_edge, %if.end82.i.i.drivetemp_identify.exit.thread37_crit_edge
  %get_temp.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 6
  %151 = ptrtoint ptr %get_temp.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @drivetemp_get_scttemp, ptr %get_temp.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i) #10
  br label %if.end6

skip_sct.i.i:                                     ; preds = %if.end74.i.i.skip_sct.i.i_crit_edge, %if.end60.i.i.skip_sct.i.i_crit_edge, %if.end56.critedge.i.i.skip_sct.i.i_crit_edge, %do.end52.i.i, %if.end43.i.i.skip_sct.i.i_crit_edge
  br i1 %47, label %drivetemp_identify.exit, label %skip_sct.i.i.drivetemp_identify.exit.thread34_crit_edge

skip_sct.i.i.drivetemp_identify.exit.thread34_crit_edge: ; preds = %skip_sct.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drivetemp_identify.exit.thread34

drivetemp_identify.exit.thread34:                 ; preds = %skip_sct.i.i.drivetemp_identify.exit.thread34_crit_edge, %rcu_read_unlock.exit236.i.i.drivetemp_identify.exit.thread34_crit_edge, %rcu_read_unlock.exit.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i) #10
  br label %abort

drivetemp_identify.exit:                          ; preds = %skip_sct.i.i
  %get_temp144.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 6
  %152 = ptrtoint ptr %get_temp144.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @drivetemp_get_smarttemp, ptr %get_temp144.i.i, align 8
  %call145.i.i = call i32 @drivetemp_get_smarttemp(ptr noundef nonnull %call7.i.i, i32 noundef 1, ptr noundef nonnull %temp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i.i)
  %tobool4.not = icmp eq i32 %call145.i.i, 0
  br i1 %tobool4.not, label %drivetemp_identify.exit.if.end6_crit_edge, label %drivetemp_identify.exit.abort_crit_edge

drivetemp_identify.exit.abort_crit_edge:          ; preds = %drivetemp_identify.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

drivetemp_identify.exit.if.end6_crit_edge:        ; preds = %drivetemp_identify.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end6:                                          ; preds = %drivetemp_identify.exit.if.end6_crit_edge, %drivetemp_identify.exit.thread37
  %153 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %parent, align 8
  %call8 = call ptr @hwmon_device_register_with_info(ptr noundef %154, ptr noundef nonnull @.str.1, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @drivetemp_chip_info, ptr noundef null) #10
  %hwdev = getelementptr inbounds %struct.drivetemp_data, ptr %call7.i.i, i32 0, i32 4
  %155 = ptrtoint ptr %hwdev to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call8, ptr %hwdev, align 4
  %cmp.i29 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %call8 to i32
  br label %abort

if.end14:                                         ; preds = %if.end6
  %157 = load ptr, ptr @drivetemp_devlist, align 4
  %call.i.i30 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @drivetemp_devlist, ptr noundef %157) #10
  br i1 %call.i.i30, label %if.end.i.i, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %159 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %157, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %160 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @drivetemp_devlist, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @drivetemp_devlist, align 4
  br label %cleanup

abort:                                            ; preds = %if.then11, %drivetemp_identify.exit.abort_crit_edge, %drivetemp_identify.exit.thread34, %if.end.i.abort_crit_edge, %lor.lhs.false.i.abort_crit_edge, %if.end.abort_crit_edge
  %err.0 = phi i32 [ %156, %if.then11 ], [ -19, %drivetemp_identify.exit.abort_crit_edge ], [ -19, %drivetemp_identify.exit.thread34 ], [ -19, %lor.lhs.false.i.abort_crit_edge ], [ -19, %if.end.abort_crit_edge ], [ -19, %if.end.i.abort_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %abort, %if.end.i.i, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %abort ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drivetemp_remove(ptr noundef readnone %dev, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %st.0.in = phi ptr [ @drivetemp_devlist, %entry ], [ %st.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %st.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %st.0 = load ptr, ptr %st.0.in, align 4
  %cmp.not = icmp eq ptr %st.0, @drivetemp_devlist
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %dev6 = getelementptr inbounds %struct.drivetemp_data, ptr %st.0, i32 0, i32 3
  %1 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev6, align 4
  %cmp7 = icmp eq ptr %2, %dev
  br i1 %cmp7, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %st.0) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %st.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %st.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %st.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %st.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %st.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %st.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %hwdev = getelementptr inbounds %struct.drivetemp_data, ptr %st.0, i32 0, i32 4
  %11 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwdev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %12) #10
  tail call void @kfree(ptr noundef %st.0) #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drivetemp_get_scttemp(ptr noundef %st, i32 noundef %attr, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %scsi_cmd.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scsi_cmd.i.i) #10
  %0 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 4
  %3 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 6
  %4 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 8
  %5 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 10
  %6 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 12
  %7 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 14
  %8 = getelementptr inbounds i8, ptr %scsi_cmd.i.i, i32 3
  %9 = call ptr @memset(ptr %8, i32 0, i32 13)
  %10 = ptrtoint ptr %scsi_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -123, ptr %scsi_cmd.i.i, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %0, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 14, ptr %1, align 1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -43, ptr %2, align 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %3, align 1
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -32, ptr %4, align 1
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 79, ptr %5, align 1
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -62, ptr %6, align 1
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -80, ptr %7, align 1
  %sdev.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %st, i32 0, i32 2
  %19 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdev.i.i, align 4
  %smartdata.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %st, i32 0, i32 5
  %call.i.i.i = call i32 @__scsi_execute(ptr noundef %20, ptr noundef nonnull %scsi_cmd.i.i, i32 noundef 2, ptr noundef %smartdata.i.i, i32 noundef 512, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 5, i64 noundef 0, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 22, label %sw.bb6
    i32 23, label %sw.bb16
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %arrayidx = getelementptr %struct.drivetemp_data, ptr %st, i32 0, i32 5, i32 200
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %23)
  %cmp.not = icmp eq i8 %23, -128
  br i1 %cmp.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %arrayidx7 = getelementptr %struct.drivetemp_data, ptr %st, i32 0, i32 5, i32 201
  %24 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %25)
  %cmp9.not = icmp eq i8 %25, -128
  br i1 %cmp9.not, label %sw.bb6.cleanup_crit_edge, label %sw.bb6.cleanup.sink.split_crit_edge

sw.bb6.cleanup.sink.split_crit_edge:              ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  %arrayidx17 = getelementptr %struct.drivetemp_data, ptr %st, i32 0, i32 5, i32 202
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %27)
  %cmp19.not = icmp eq i8 %27, -128
  br i1 %cmp19.not, label %sw.bb16.cleanup_crit_edge, label %sw.bb16.cleanup.sink.split_crit_edge

sw.bb16.cleanup.sink.split_crit_edge:             ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb16.cleanup.sink.split_crit_edge, %sw.bb6.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ %23, %sw.bb.cleanup.sink.split_crit_edge ], [ %25, %sw.bb6.cleanup.sink.split_crit_edge ], [ %27, %sw.bb16.cleanup.sink.split_crit_edge ]
  %conv5 = sext i8 %.sink to i32
  %mul = mul nsw i32 %conv5, 1000
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb16.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %entry.cleanup_crit_edge ], [ -61, %sw.bb.cleanup_crit_edge ], [ -61, %sw.bb6.cleanup_crit_edge ], [ -61, %sw.bb16.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drivetemp_get_smarttemp(ptr noundef %st, i32 noundef %attr, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  %scsi_cmd.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smartdata = getelementptr inbounds %struct.drivetemp_data, ptr %st, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scsi_cmd.i.i) #10
  %0 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 4
  %3 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 6
  %4 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 10
  %5 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 12
  %6 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i.i, i32 0, i32 14
  %7 = getelementptr inbounds i8, ptr %scsi_cmd.i.i, i32 3
  %8 = call ptr @memset(ptr %7, i32 0, i32 13)
  %9 = ptrtoint ptr %scsi_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -123, ptr %scsi_cmd.i.i, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 14, ptr %1, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -48, ptr %2, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %3, align 1
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 79, ptr %4, align 1
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -62, ptr %5, align 1
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -80, ptr %6, align 1
  %sdev.i.i = getelementptr inbounds %struct.drivetemp_data, ptr %st, i32 0, i32 2
  %17 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev.i.i, align 4
  %call.i.i.i = call i32 @__scsi_execute(ptr noundef %18, ptr noundef nonnull %scsi_cmd.i.i, i32 noundef 2, ptr noundef %smartdata, i32 noundef 512, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 5, i64 noundef 0, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup42_crit_edge

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.084 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %csum.083 = phi i8 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %smartdata, i32 %i.084
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %add = add i8 %20, %csum.083
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add)
  %tobool3.not = icmp eq i8 %add, 0
  br i1 %tobool3.not, label %for.end.for.body16.outer_crit_edge, label %do.body

for.end.for.body16.outer_crit_edge:               ; preds = %for.end
  br label %for.body16.outer

for.body16.outer:                                 ; preds = %for.inc34.thread.for.body16.outer_crit_edge, %for.end.for.body16.outer_crit_edge
  %i.187.ph = phi i32 [ %inc3592, %for.inc34.thread.for.body16.outer_crit_edge ], [ 0, %for.end.for.body16.outer_crit_edge ]
  %temp_raw.086.ph = phi i8 [ %29, %for.inc34.thread.for.body16.outer_crit_edge ], [ -1, %for.end.for.body16.outer_crit_edge ]
  %have_temp.0.off085.ph = phi i1 [ true, %for.inc34.thread.for.body16.outer_crit_edge ], [ false, %for.end.for.body16.outer_crit_edge ]
  br label %for.body16

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @drivetemp_get_smarttemp.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@drivetemp_get_smarttemp, %cleanup42)) #10
          to label %if.then10 [label %cleanup42], !srcloc !65

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdev.i.i, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %22, i32 0, i32 55
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @drivetemp_get_smarttemp.__UNIQUE_ID_ddebug281, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.13) #10
  br label %cleanup42

for.body16:                                       ; preds = %for.inc34.for.body16_crit_edge, %for.body16.outer
  %i.187 = phi i32 [ %inc35, %for.inc34.for.body16_crit_edge ], [ %i.187.ph, %for.body16.outer ]
  %mul = mul nuw nsw i32 %i.187, 12
  %add.ptr = getelementptr i8, ptr %smartdata, i32 %mul
  %arrayidx18 = getelementptr i8, ptr %add.ptr, i32 2
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx18, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %24, label %for.inc34 [
    i8 -62, label %for.end36.thread
    i8 -66, label %for.inc34.thread
  ]

for.end36.thread:                                 ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx31 = getelementptr i8, ptr %add.ptr, i32 7
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx31, align 1
  br label %if.then38

for.inc34:                                        ; preds = %for.body16
  %inc35 = add nuw nsw i32 %i.187, 1
  %exitcond89.not = icmp eq i32 %inc35, 30
  br i1 %exitcond89.not, label %for.end36, label %for.inc34.for.body16_crit_edge

for.inc34.for.body16_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16

for.inc34.thread:                                 ; preds = %for.body16
  %arrayidx26 = getelementptr i8, ptr %add.ptr, i32 7
  %28 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx26, align 1
  %inc3592 = add nuw nsw i32 %i.187, 1
  %exitcond89.not93 = icmp eq i32 %inc3592, 30
  br i1 %exitcond89.not93, label %for.inc34.thread.if.then38_crit_edge, label %for.inc34.thread.for.body16.outer_crit_edge

for.inc34.thread.for.body16.outer_crit_edge:      ; preds = %for.inc34.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16.outer

for.inc34.thread.if.then38_crit_edge:             ; preds = %for.inc34.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

for.end36:                                        ; preds = %for.inc34
  br i1 %have_temp.0.off085.ph, label %for.end36.if.then38_crit_edge, label %for.end36.cleanup42_crit_edge

for.end36.cleanup42_crit_edge:                    ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

for.end36.if.then38_crit_edge:                    ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

if.then38:                                        ; preds = %for.end36.if.then38_crit_edge, %for.inc34.thread.if.then38_crit_edge, %for.end36.thread
  %temp_raw.380 = phi i8 [ %27, %for.end36.thread ], [ %temp_raw.086.ph, %for.end36.if.then38_crit_edge ], [ %29, %for.inc34.thread.if.then38_crit_edge ]
  %conv39 = zext i8 %temp_raw.380 to i32
  %mul40 = mul nuw nsw i32 %conv39, 1000
  %30 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul40, ptr %temp, align 4
  br label %cleanup42

cleanup42:                                        ; preds = %if.then38, %for.end36.cleanup42_crit_edge, %if.then10, %do.body, %entry.cleanup42_crit_edge
  %retval.0 = phi i32 [ 0, %if.then38 ], [ %call.i.i.i, %entry.cleanup42_crit_edge ], [ -5, %if.then10 ], [ -6, %for.end36.cleanup42_crit_edge ], [ -5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @drivetemp_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond = icmp eq i32 %type, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog24_crit_edge

entry.sw.epilog24_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.bb:                                            ; preds = %entry
  %0 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %attr, label %sw.bb.sw.epilog24_crit_edge [
    i32 1, label %sw.bb.cleanup_crit_edge
    i32 22, label %sw.bb2
    i32 23, label %sw.bb3
    i32 5, label %sw.bb7
    i32 7, label %sw.bb11
    i32 3, label %sw.bb15
    i32 9, label %sw.bb19
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.sw.epilog24_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.bb2:                                           ; preds = %sw.bb
  %have_temp_lowest = getelementptr inbounds %struct.drivetemp_data, ptr %data, i32 0, i32 7
  %1 = ptrtoint ptr %have_temp_lowest to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %have_temp_lowest, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %sw.bb2.sw.epilog24_crit_edge, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2.sw.epilog24_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.bb3:                                           ; preds = %sw.bb
  %have_temp_highest = getelementptr inbounds %struct.drivetemp_data, ptr %data, i32 0, i32 8
  %3 = ptrtoint ptr %have_temp_highest to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %have_temp_highest, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %sw.bb3.sw.epilog24_crit_edge, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3.sw.epilog24_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.bb7:                                           ; preds = %sw.bb
  %have_temp_min = getelementptr inbounds %struct.drivetemp_data, ptr %data, i32 0, i32 9
  %5 = ptrtoint ptr %have_temp_min to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %have_temp_min, align 2, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %sw.bb7.sw.epilog24_crit_edge, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb7.sw.epilog24_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.bb11:                                          ; preds = %sw.bb
  %have_temp_max = getelementptr inbounds %struct.drivetemp_data, ptr %data, i32 0, i32 10
  %7 = ptrtoint ptr %have_temp_max to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %have_temp_max, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool12.not = icmp eq i8 %8, 0
  br i1 %tobool12.not, label %sw.bb11.sw.epilog24_crit_edge, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb11.sw.epilog24_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.bb15:                                          ; preds = %sw.bb
  %have_temp_lcrit = getelementptr inbounds %struct.drivetemp_data, ptr %data, i32 0, i32 11
  %9 = ptrtoint ptr %have_temp_lcrit to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %have_temp_lcrit, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  br i1 %tobool16.not, label %sw.bb15.sw.epilog24_crit_edge, label %sw.bb15.cleanup_crit_edge

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb15.sw.epilog24_crit_edge:                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.bb19:                                          ; preds = %sw.bb
  %have_temp_crit = getelementptr inbounds %struct.drivetemp_data, ptr %data, i32 0, i32 12
  %11 = ptrtoint ptr %have_temp_crit to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %have_temp_crit, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool20.not = icmp eq i8 %12, 0
  br i1 %tobool20.not, label %sw.bb19.sw.epilog24_crit_edge, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb19.sw.epilog24_crit_edge:                    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %sw.bb19.sw.epilog24_crit_edge, %sw.bb15.sw.epilog24_crit_edge, %sw.bb11.sw.epilog24_crit_edge, %sw.bb7.sw.epilog24_crit_edge, %sw.bb3.sw.epilog24_crit_edge, %sw.bb2.sw.epilog24_crit_edge, %sw.bb.sw.epilog24_crit_edge, %entry.sw.epilog24_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog24, %sw.bb19.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %sw.epilog24 ], [ 292, %sw.bb.cleanup_crit_edge ], [ 292, %sw.bb2.cleanup_crit_edge ], [ 292, %sw.bb3.cleanup_crit_edge ], [ 292, %sw.bb7.cleanup_crit_edge ], [ 292, %sw.bb11.cleanup_crit_edge ], [ 292, %sw.bb15.cleanup_crit_edge ], [ 292, %sw.bb19.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drivetemp_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 22, label %if.end.sw.bb_crit_edge20
    i32 23, label %if.end.sw.bb_crit_edge21
    i32 3, label %sw.bb3
    i32 5, label %sw.bb4
    i32 7, label %sw.bb5
    i32 9, label %sw.bb6
  ]

if.end.sw.bb_crit_edge21:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge20:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge20, %if.end.sw.bb_crit_edge21
  %lock = getelementptr inbounds %struct.drivetemp_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %get_temp = getelementptr inbounds %struct.drivetemp_data, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %get_temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_temp, align 4
  %call1 = tail call i32 %4(ptr noundef %1, i32 noundef %attr, ptr noundef %val) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %temp_lcrit = getelementptr inbounds %struct.drivetemp_data, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %temp_lcrit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp_lcrit, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %temp_min = getelementptr inbounds %struct.drivetemp_data, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %temp_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp_min, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %temp_max = getelementptr inbounds %struct.drivetemp_data, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %temp_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %temp_max, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %temp_crit = getelementptr inbounds %struct.drivetemp_data, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %temp_crit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temp_crit, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ %call1, %sw.bb ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_register_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !21, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !42, !43, !44, !46, !48, !50}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_drivetemp__284_618_drivetemp_init6, !1, !"__initcall__kmod_drivetemp__284_618_drivetemp_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/drivetemp.c", i32 618, i32 1}
!2 = !{ptr @__exitcall_drivetemp_exit, !3, !"__exitcall_drivetemp_exit", i1 false, i1 false}
!3 = !{!"../drivers/hwmon/drivetemp.c", i32 619, i32 1}
!4 = !{ptr @__UNIQUE_ID_author285, !5, !"__UNIQUE_ID_author285", i1 false, i1 false}
!5 = !{!"../drivers/hwmon/drivetemp.c", i32 621, i32 1}
!6 = !{ptr @__UNIQUE_ID_description286, !7, !"__UNIQUE_ID_description286", i1 false, i1 false}
!7 = !{!"../drivers/hwmon/drivetemp.c", i32 622, i32 1}
!8 = !{ptr @__UNIQUE_ID_file287, !9, !"__UNIQUE_ID_file287", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/drivetemp.c", i32 623, i32 1}
!10 = !{ptr @__UNIQUE_ID_license288, !9, !"__UNIQUE_ID_license288", i1 false, i1 false}
!11 = !{ptr @drivetemp_interface, !12, !"drivetemp_interface", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/drivetemp.c", i32 603, i32 31}
!13 = !{ptr @drivetemp_add.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/drivetemp.c", i32 566, i32 2}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/drivetemp.c", i32 573, i32 59}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/drivetemp.c", i32 341, i32 8}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/drivetemp.c", i32 367, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @drivetemp_identify_sata._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @drivetemp_identify_sata._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/drivetemp.c", i32 300, i32 2}
!38 = distinct !{null, !39, !"sct_avoid_models", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/drivetemp.c", i32 288, i32 27}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/drivetemp.c", i32 226, i32 3}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @drivetemp_get_smarttemp.__UNIQUE_ID_ddebug281, !41, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!44 = !{ptr @drivetemp_chip_info, !45, !"drivetemp_chip_info", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/drivetemp.c", i32 545, i32 37}
!46 = !{ptr @drivetemp_ops, !47, !"drivetemp_ops", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/drivetemp.c", i32 540, i32 31}
!48 = !{ptr @drivetemp_info, !49, !"drivetemp_info", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/drivetemp.c", i32 530, i32 41}
!50 = !{ptr @drivetemp_devlist, !51, !"drivetemp_devlist", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/drivetemp.c", i32 131, i32 8}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{i64 2149351147}
!64 = !{i64 2149351413}
!65 = !{i64 2148376681, i64 2148376686, i64 2148376699, i64 2148376743, i64 2148376777, i64 2148376798}
!66 = !{i8 0, i8 2}
