; ModuleID = '/llk/IR_all_yes/drivers/opp/debugfs.c_pt.bc'
source_filename = "../drivers/opp/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_pm_opp = type { %struct.list_head, %struct.kref, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.opp_table = type { %struct.list_head, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i8, i8, i8, ptr, ptr, ptr, ptr, [255 x i8] }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_pm_opp_supply = type { i32, i32, i32, i32 }
%struct.dev_pm_opp_icc_bw = type { i32, i32 }
%struct.opp_device = type { %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"opp:%lu\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"available\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dynamic\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"turbo\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"performance_state\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rate_hz\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clock_latency_ns\00", [47 x i8] zeroinitializer }, align 32
@__initcall__kmod_debugfs__223_249_opp_debug_init1 = internal global ptr @opp_debug_init, section ".initcall1.init", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"supply-%d\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"u_volt_target\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"u_volt_min\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"u_volt_max\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"u_amp\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"icc-path-%.1d\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@bw_name_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @bw_name_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"peak_bw\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"avg_bw\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%.62s\0A\00", [25 x i8] zeroinitializer }, align 32
@rootdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@opp_migrate_dentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 209, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Failed to rename link from: %s to %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"opp_migrate_dentry\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/opp/debugfs.c\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@opp_migrate_dentry._entry_ptr = internal global ptr @opp_migrate_dentry._entry, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"opp\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 123, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 128, i32 22 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 129, i32 22 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 130, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 131, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 132, i32 21 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 133, i32 23 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 134, i32 23 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 86, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 91, i32 24 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 94, i32 24 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 97, i32 24 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 100, i32 24 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 62, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 67, i32 23 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"bw_name_fops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 47, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 69, i32 22 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 71, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 42, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [8 x i8] c"rootdir\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 19, i32 23 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 24, i32 28 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 27, i32 28 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 208, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [25 x i8] c"../drivers/opp/debugfs.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 245, i32 31 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__initcall__kmod_debugfs__223_249_opp_debug_init1, ptr @opp_migrate_dentry._entry, ptr @opp_migrate_dentry._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @bw_name_fops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @rootdir, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bw_name_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rootdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_migrate_dentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @opp_debug_remove_one(ptr nocapture noundef readonly %opp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.dev_pm_opp, ptr %opp, i32 0, i32 16
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  tail call void @debugfs_remove(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @opp_debug_create_one(ptr noundef %opp, ptr noundef %opp_table) local_unnamed_addr #0 align 64 {
entry:
  %name.i32 = alloca [11 x i8], align 1
  %name.i = alloca [15 x i8], align 1
  %name = alloca [25 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.opp_table, ptr %opp_table, i32 0, i32 33
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %name) #6
  %rate = getelementptr inbounds %struct.dev_pm_opp, ptr %opp, i32 0, i32 8
  %2 = call ptr @memset(ptr %name, i32 255, i32 25)
  %3 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge, !prof !65

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @_get_opp_count(ptr noundef %opp_table) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %id.0 = phi i32 [ %call, %if.else ], [ %4, %entry.if.end_crit_edge ]
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 25, ptr noundef nonnull @.str, i32 noundef %id.0)
  %call6 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %1) #6
  %available = getelementptr inbounds %struct.dev_pm_opp, ptr %opp, i32 0, i32 2
  call void @debugfs_create_bool(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %call6, ptr noundef %available) #6
  %dynamic = getelementptr inbounds %struct.dev_pm_opp, ptr %opp, i32 0, i32 3
  call void @debugfs_create_bool(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %call6, ptr noundef %dynamic) #6
  %turbo = getelementptr inbounds %struct.dev_pm_opp, ptr %opp, i32 0, i32 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %call6, ptr noundef %turbo) #6
  %suspend = getelementptr inbounds %struct.dev_pm_opp, ptr %opp, i32 0, i32 5
  call void @debugfs_create_bool(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %call6, ptr noundef %suspend) #6
  %pstate = getelementptr inbounds %struct.dev_pm_opp, ptr %opp, i32 0, i32 7
  call void @debugfs_create_u32(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %call6, ptr noundef %pstate) #6
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %call6, ptr noundef %rate) #6
  %clock_latency_ns = getelementptr inbounds %struct.dev_pm_opp, ptr %opp, i32 0, i32 12
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %call6, ptr noundef %clock_latency_ns) #6
  %regulator_count.i = getelementptr inbounds %struct.opp_table, ptr %opp_table, i32 0, i32 24
  %5 = ptrtoint ptr %regulator_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regulator_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp21.i = icmp sgt i32 %6, 0
  br i1 %cmp21.i, label %for.body.lr.ph.i, label %if.end.opp_debug_create_supplies.exit_crit_edge

if.end.opp_debug_create_supplies.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %opp_debug_create_supplies.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %supplies.i = getelementptr inbounds %struct.dev_pm_opp, ptr %opp, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %name.i) #6
  %7 = call ptr @memset(ptr %name.i, i32 255, i32 15)
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 15, ptr noundef nonnull @.str.8, i32 noundef %i.022.i) #6
  %call2.i = call ptr @debugfs_create_dir(ptr noundef nonnull %name.i, ptr noundef %call6) #6
  %8 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %supplies.i, align 4
  %arrayidx.i = getelementptr %struct.dev_pm_opp_supply, ptr %9, i32 %i.022.i
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %arrayidx.i) #6
  %10 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %supplies.i, align 4
  %u_volt_min.i = getelementptr %struct.dev_pm_opp_supply, ptr %11, i32 %i.022.i, i32 1
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.10, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %u_volt_min.i) #6
  %12 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %supplies.i, align 4
  %u_volt_max.i = getelementptr %struct.dev_pm_opp_supply, ptr %13, i32 %i.022.i, i32 2
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.11, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %u_volt_max.i) #6
  %14 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %supplies.i, align 4
  %u_amp.i = getelementptr %struct.dev_pm_opp_supply, ptr %15, i32 %i.022.i, i32 3
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.12, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %u_amp.i) #6
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %name.i) #6
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %16 = ptrtoint ptr %regulator_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regulator_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.opp_debug_create_supplies.exit_crit_edge

for.body.i.opp_debug_create_supplies.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %opp_debug_create_supplies.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

opp_debug_create_supplies.exit:                   ; preds = %for.body.i.opp_debug_create_supplies.exit_crit_edge, %if.end.opp_debug_create_supplies.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %name.i32) #6
  %path_count.i = getelementptr inbounds %struct.opp_table, ptr %opp_table, i32 0, i32 26
  %18 = call ptr @memset(ptr %name.i32, i32 255, i32 11)
  %19 = ptrtoint ptr %path_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %path_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp16.not.i = icmp eq i32 %20, 0
  br i1 %cmp16.not.i, label %opp_debug_create_supplies.exit.opp_debug_create_bw.exit_crit_edge, label %for.body.lr.ph.i33

opp_debug_create_supplies.exit.opp_debug_create_bw.exit_crit_edge: ; preds = %opp_debug_create_supplies.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %opp_debug_create_bw.exit

for.body.lr.ph.i33:                               ; preds = %opp_debug_create_supplies.exit
  %paths.i = getelementptr inbounds %struct.opp_table, ptr %opp_table, i32 0, i32 25
  %bandwidth.i = getelementptr inbounds %struct.dev_pm_opp, ptr %opp, i32 0, i32 11
  br label %for.body.i39

for.body.i39:                                     ; preds = %for.body.i39.for.body.i39_crit_edge, %for.body.lr.ph.i33
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i33 ], [ %inc.i37, %for.body.i39.for.body.i39_crit_edge ]
  %call.i34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i32, i32 noundef 11, ptr noundef nonnull @.str.13, i32 noundef %i.017.i) #6
  %call2.i35 = call ptr @debugfs_create_dir(ptr noundef nonnull %name.i32, ptr noundef %call6) #6
  %21 = ptrtoint ptr %paths.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %paths.i, align 4
  %arrayidx.i36 = getelementptr ptr, ptr %22, i32 %i.017.i
  %23 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i36, align 4
  %call3.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 292, ptr noundef %call2.i35, ptr noundef %24, ptr noundef nonnull @bw_name_fops) #6
  %25 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bandwidth.i, align 4
  %peak.i = getelementptr %struct.dev_pm_opp_icc_bw, ptr %26, i32 %i.017.i, i32 1
  call void @debugfs_create_u32(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %call2.i35, ptr noundef %peak.i) #6
  %27 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bandwidth.i, align 4
  %arrayidx6.i = getelementptr %struct.dev_pm_opp_icc_bw, ptr %28, i32 %i.017.i
  call void @debugfs_create_u32(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %call2.i35, ptr noundef %arrayidx6.i) #6
  %inc.i37 = add nuw i32 %i.017.i, 1
  %29 = ptrtoint ptr %path_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %path_count.i, align 4
  %cmp.i38 = icmp ult i32 %inc.i37, %30
  br i1 %cmp.i38, label %for.body.i39.for.body.i39_crit_edge, label %for.body.i39.opp_debug_create_bw.exit_crit_edge

for.body.i39.opp_debug_create_bw.exit_crit_edge:  ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %opp_debug_create_bw.exit

for.body.i39.for.body.i39_crit_edge:              ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i39

opp_debug_create_bw.exit:                         ; preds = %for.body.i39.opp_debug_create_bw.exit_crit_edge, %opp_debug_create_supplies.exit.opp_debug_create_bw.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %name.i32) #6
  %dentry8 = getelementptr inbounds %struct.dev_pm_opp, ptr %opp, i32 0, i32 16
  %31 = ptrtoint ptr %dentry8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call6, ptr %dentry8, align 4
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %name) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_ulong(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @opp_debug_register(ptr nocapture noundef %opp_dev, ptr noundef %opp_table) local_unnamed_addr #0 align 64 {
entry:
  %name.i = alloca [255 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.opp_table, ptr %opp_table, i32 0, i32 33
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %name.i) #6
  %2 = call ptr @memset(ptr %name.i, i32 255, i32 255)
  %dev.i = getelementptr inbounds %struct.opp_device, ptr %opp_dev, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %10, %if.end.i.i.i ], [ %8, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  %init_name.i10.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i10.i.i, align 8
  %tobool.not.i11.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i11.i.i, label %if.end.i12.i.i, label %dev_name.exit.i.i.dev_name.exit14.i.i_crit_edge

dev_name.exit.i.i.dev_name.exit14.i.i_crit_edge:  ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit14.i.i

if.end.i12.i.i:                                   ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  br label %dev_name.exit14.i.i

dev_name.exit14.i.i:                              ; preds = %if.end.i12.i.i, %dev_name.exit.i.i.dev_name.exit14.i.i_crit_edge
  %retval.0.i13.i.i = phi ptr [ %14, %if.end.i12.i.i ], [ %12, %dev_name.exit.i.i.dev_name.exit14.i.i_crit_edge ]
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 255, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i.i.i, ptr noundef %retval.0.i13.i.i) #6
  br label %opp_list_debug_create_link.exit

if.else.i.i:                                      ; preds = %if.then
  %init_name.i15.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i15.i.i, align 8
  %tobool.not.i16.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i16.i.i, label %if.end.i17.i.i, label %if.else.i.i.dev_name.exit19.i.i_crit_edge

if.else.i.i.dev_name.exit19.i.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit19.i.i

if.end.i17.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 4
  br label %dev_name.exit19.i.i

dev_name.exit19.i.i:                              ; preds = %if.end.i17.i.i, %if.else.i.i.dev_name.exit19.i.i_crit_edge
  %retval.0.i18.i.i = phi ptr [ %18, %if.end.i17.i.i ], [ %16, %if.else.i.i.dev_name.exit19.i.i_crit_edge ]
  %call5.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 255, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i18.i.i) #6
  br label %opp_list_debug_create_link.exit

opp_list_debug_create_link.exit:                  ; preds = %dev_name.exit19.i.i, %dev_name.exit14.i.i
  %19 = load ptr, ptr @rootdir, align 4
  %dentry_name.i = getelementptr inbounds %struct.opp_table, ptr %opp_table, i32 0, i32 34
  %call.i = call ptr @debugfs_create_symlink(ptr noundef nonnull %name.i, ptr noundef %19, ptr noundef %dentry_name.i) #6
  %dentry.i = getelementptr inbounds %struct.opp_device, ptr %opp_dev, i32 0, i32 2
  %20 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %dentry.i, align 4
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %name.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.opp_device, ptr %opp_dev, i32 0, i32 1
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i, align 4
  %dentry_name.i4 = getelementptr inbounds %struct.opp_table, ptr %opp_table, i32 0, i32 34
  %parent.i.i5 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %parent.i.i5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i.i5, align 8
  %tobool.not.i.i6 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i6, label %if.else.i.i21, label %if.then.i.i9

if.then.i.i9:                                     ; preds = %if.else
  %init_name.i.i.i7 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %init_name.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i.i7, align 8
  %tobool.not.i.i.i8 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i8, label %if.end.i.i.i10, label %if.then.i.i9.dev_name.exit.i.i14_crit_edge

if.then.i.i9.dev_name.exit.i.i14_crit_edge:       ; preds = %if.then.i.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i14

if.end.i.i.i10:                                   ; preds = %if.then.i.i9
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  br label %dev_name.exit.i.i14

dev_name.exit.i.i14:                              ; preds = %if.end.i.i.i10, %if.then.i.i9.dev_name.exit.i.i14_crit_edge
  %retval.0.i.i.i11 = phi ptr [ %28, %if.end.i.i.i10 ], [ %26, %if.then.i.i9.dev_name.exit.i.i14_crit_edge ]
  %init_name.i10.i.i12 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i10.i.i12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i10.i.i12, align 8
  %tobool.not.i11.i.i13 = icmp eq ptr %30, null
  br i1 %tobool.not.i11.i.i13, label %if.end.i12.i.i15, label %dev_name.exit.i.i14.dev_name.exit14.i.i18_crit_edge

dev_name.exit.i.i14.dev_name.exit14.i.i18_crit_edge: ; preds = %dev_name.exit.i.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit14.i.i18

if.end.i12.i.i15:                                 ; preds = %dev_name.exit.i.i14
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %22, align 4
  br label %dev_name.exit14.i.i18

dev_name.exit14.i.i18:                            ; preds = %if.end.i12.i.i15, %dev_name.exit.i.i14.dev_name.exit14.i.i18_crit_edge
  %retval.0.i13.i.i16 = phi ptr [ %32, %if.end.i12.i.i15 ], [ %30, %dev_name.exit.i.i14.dev_name.exit14.i.i18_crit_edge ]
  %call3.i.i17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dentry_name.i4, i32 noundef 255, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i.i.i11, ptr noundef %retval.0.i13.i.i16) #6
  br label %opp_list_debug_create_dir.exit

if.else.i.i21:                                    ; preds = %if.else
  %init_name.i15.i.i19 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i15.i.i19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i15.i.i19, align 8
  %tobool.not.i16.i.i20 = icmp eq ptr %34, null
  br i1 %tobool.not.i16.i.i20, label %if.end.i17.i.i22, label %if.else.i.i21.dev_name.exit19.i.i25_crit_edge

if.else.i.i21.dev_name.exit19.i.i25_crit_edge:    ; preds = %if.else.i.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit19.i.i25

if.end.i17.i.i22:                                 ; preds = %if.else.i.i21
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %22, align 4
  br label %dev_name.exit19.i.i25

dev_name.exit19.i.i25:                            ; preds = %if.end.i17.i.i22, %if.else.i.i21.dev_name.exit19.i.i25_crit_edge
  %retval.0.i18.i.i23 = phi ptr [ %36, %if.end.i17.i.i22 ], [ %34, %if.else.i.i21.dev_name.exit19.i.i25_crit_edge ]
  %call5.i.i24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dentry_name.i4, i32 noundef 255, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i18.i.i23) #6
  br label %opp_list_debug_create_dir.exit

opp_list_debug_create_dir.exit:                   ; preds = %dev_name.exit19.i.i25, %dev_name.exit14.i.i18
  %37 = load ptr, ptr @rootdir, align 4
  %call.i26 = tail call ptr @debugfs_create_dir(ptr noundef %dentry_name.i4, ptr noundef %37) #6
  %dentry.i27 = getelementptr inbounds %struct.opp_device, ptr %opp_dev, i32 0, i32 2
  %38 = ptrtoint ptr %dentry.i27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i26, ptr %dentry.i27, align 4
  %39 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i26, ptr %dentry, align 4
  br label %if.end

if.end:                                           ; preds = %opp_list_debug_create_dir.exit, %opp_list_debug_create_link.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @opp_debug_unregister(ptr noundef %opp_dev, ptr noundef %opp_table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.opp_device, ptr %opp_dev, i32 0, i32 2
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %dentry1 = getelementptr inbounds %struct.opp_table, ptr %opp_table, i32 0, i32 33
  %2 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry1, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %dev_list = getelementptr inbounds %struct.opp_table, ptr %opp_table, i32 0, i32 3
  %4 = ptrtoint ptr %dev_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %dev_list, align 4
  %cmp.i.not.i = icmp eq ptr %5, %dev_list
  br i1 %cmp.i.not.i, label %if.then.if.then2_crit_edge, label %list_is_singular.exit

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

list_is_singular.exit:                            ; preds = %if.then
  %prev.i = getelementptr inbounds %struct.opp_table, ptr %opp_table, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %5, %7
  br i1 %cmp.i.not, label %if.end, label %list_is_singular.exit.if.then2_crit_edge

list_is_singular.exit.if.then2_crit_edge:         ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then2:                                         ; preds = %list_is_singular.exit.if.then2_crit_edge, %if.then.if.then2_crit_edge
  %8 = ptrtoint ptr %dev_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %new_dev.0.i.peel = load ptr, ptr %dev_list, align 4
  %cmp.not.i.peel = icmp ne ptr %new_dev.0.i.peel, %dev_list
  %cmp2.not.i.peel = icmp eq ptr %new_dev.0.i.peel, %opp_dev
  %or.cond.i.peel = and i1 %cmp.not.i.peel, %cmp2.not.i.peel
  br i1 %or.cond.i.peel, label %for.cond.i.peel.next, label %if.then2.for.end.i_crit_edge

if.then2.for.end.i_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond.i.peel.next:                             ; preds = %if.then2
  %9 = ptrtoint ptr %opp_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %new_dev.0.i = load ptr, ptr %opp_dev, align 4
  %cmp.not.i = icmp ne ptr %new_dev.0.i, %dev_list
  %cmp2.not.i = icmp eq ptr %new_dev.0.i, %opp_dev
  %or.cond.i = and i1 %cmp.not.i, %cmp2.not.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.cond.i.peel.next
  br i1 %or.cond.i, label %for.cond.i.for.cond.i_crit_edge, label %for.cond.i.for.end.i_crit_edge, !llvm.loop !66

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.then2.for.end.i_crit_edge
  %new_dev.0.i.lcssa = phi ptr [ %new_dev.0.i.peel, %if.then2.for.end.i_crit_edge ], [ %new_dev.0.i, %for.cond.i.for.end.i_crit_edge ]
  %dev8.i = getelementptr inbounds %struct.opp_device, ptr %new_dev.0.i.lcssa, i32 0, i32 1
  %10 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8.i, align 4
  %dentry9.i = getelementptr inbounds %struct.opp_device, ptr %new_dev.0.i.lcssa, i32 0, i32 2
  %12 = ptrtoint ptr %dentry9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry9.i, align 4
  tail call void @debugfs_remove(ptr noundef %13) #6
  %dentry_name.i = getelementptr inbounds %struct.opp_table, ptr %opp_table, i32 0, i32 34
  %parent.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end.i
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %19, %if.end.i.i.i ], [ %17, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  %init_name.i10.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i10.i.i, align 8
  %tobool.not.i11.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i11.i.i, label %if.end.i12.i.i, label %dev_name.exit.i.i.dev_name.exit14.i.i_crit_edge

dev_name.exit.i.i.dev_name.exit14.i.i_crit_edge:  ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit14.i.i

if.end.i12.i.i:                                   ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %11, align 4
  br label %dev_name.exit14.i.i

dev_name.exit14.i.i:                              ; preds = %if.end.i12.i.i, %dev_name.exit.i.i.dev_name.exit14.i.i_crit_edge
  %retval.0.i13.i.i = phi ptr [ %23, %if.end.i12.i.i ], [ %21, %dev_name.exit.i.i.dev_name.exit14.i.i_crit_edge ]
  %call3.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dentry_name.i, i32 noundef 255, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i.i.i, ptr noundef %retval.0.i13.i.i) #6
  br label %opp_set_dev_name.exit.i

if.else.i.i:                                      ; preds = %for.end.i
  %init_name.i15.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i15.i.i, align 8
  %tobool.not.i16.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i16.i.i, label %if.end.i17.i.i, label %if.else.i.i.dev_name.exit19.i.i_crit_edge

if.else.i.i.dev_name.exit19.i.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit19.i.i

if.end.i17.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %11, align 4
  br label %dev_name.exit19.i.i

dev_name.exit19.i.i:                              ; preds = %if.end.i17.i.i, %if.else.i.i.dev_name.exit19.i.i_crit_edge
  %retval.0.i18.i.i = phi ptr [ %27, %if.end.i17.i.i ], [ %25, %if.else.i.i.dev_name.exit19.i.i_crit_edge ]
  %call5.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dentry_name.i, i32 noundef 255, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i18.i.i) #6
  br label %opp_set_dev_name.exit.i

opp_set_dev_name.exit.i:                          ; preds = %dev_name.exit19.i.i, %dev_name.exit14.i.i
  %28 = load ptr, ptr @rootdir, align 4
  %29 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dentry, align 4
  %call.i = tail call ptr @debugfs_rename(ptr noundef %28, ptr noundef %30, ptr noundef %28, ptr noundef %dentry_name.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end17.i

do.end.i:                                         ; preds = %opp_set_dev_name.exit.i
  %dev14.i = getelementptr inbounds %struct.opp_device, ptr %opp_dev, i32 0, i32 1
  %31 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev14.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i37.i = icmp eq ptr %34, null
  br i1 %tobool.not.i37.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %36, %if.end.i.i ], [ %34, %do.end.i.dev_name.exit.i_crit_edge ]
  %init_name.i38.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i38.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i38.i, align 8
  %tobool.not.i39.i = icmp eq ptr %38, null
  br i1 %tobool.not.i39.i, label %if.end.i40.i, label %dev_name.exit.i.dev_name.exit42.i_crit_edge

dev_name.exit.i.dev_name.exit42.i_crit_edge:      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit42.i

if.end.i40.i:                                     ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %11, align 4
  br label %dev_name.exit42.i

dev_name.exit42.i:                                ; preds = %if.end.i40.i, %dev_name.exit.i.dev_name.exit42.i_crit_edge
  %retval.0.i41.i = phi ptr [ %40, %if.end.i40.i ], [ %38, %dev_name.exit.i.dev_name.exit42.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i41.i) #9
  br label %out

if.end17.i:                                       ; preds = %opp_set_dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %dentry9.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %dentry9.i, align 4
  %42 = ptrtoint ptr %dentry1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %dentry1, align 4
  br label %out

if.end:                                           ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %dentry1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %dentry1, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %44 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dentry, align 4
  tail call void @debugfs_remove(ptr noundef %45) #6
  br label %out

out:                                              ; preds = %if.end4, %if.end17.i, %dev_name.exit42.i
  %46 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %dentry, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @opp_debug_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.25, ptr noundef null) #6
  store ptr %call, ptr @rootdir, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bw_name_read(ptr nocapture noundef readonly %fp, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #6
  %2 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %call = tail call ptr @icc_get_name(ptr noundef %1) #6
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.17, ptr noundef %call) #6
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call1) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icc_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/opp/debugfs.c", i32 123, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/opp/debugfs.c", i32 128, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/opp/debugfs.c", i32 129, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/opp/debugfs.c", i32 130, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/opp/debugfs.c", i32 131, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/opp/debugfs.c", i32 132, i32 21}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/opp/debugfs.c", i32 133, i32 23}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/opp/debugfs.c", i32 134, i32 23}
!16 = !{ptr @__initcall__kmod_debugfs__223_249_opp_debug_init1, !17, !"__initcall__kmod_debugfs__223_249_opp_debug_init1", i1 false, i1 false}
!17 = !{!"../drivers/opp/debugfs.c", i32 249, i32 1}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/opp/debugfs.c", i32 86, i32 32}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/opp/debugfs.c", i32 91, i32 24}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/opp/debugfs.c", i32 94, i32 24}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/opp/debugfs.c", i32 97, i32 24}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/opp/debugfs.c", i32 100, i32 24}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/opp/debugfs.c", i32 62, i32 32}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/opp/debugfs.c", i32 67, i32 23}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/opp/debugfs.c", i32 69, i32 22}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/opp/debugfs.c", i32 71, i32 22}
!36 = !{ptr @bw_name_fops, !37, !"bw_name_fops", i1 false, i1 false}
!37 = !{!"../drivers/opp/debugfs.c", i32 47, i32 37}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/opp/debugfs.c", i32 42, i32 34}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/opp/debugfs.c", i32 24, i32 28}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/opp/debugfs.c", i32 27, i32 28}
!44 = !{ptr @rootdir, !45, !"rootdir", i1 false, i1 false}
!45 = !{!"../drivers/opp/debugfs.c", i32 19, i32 23}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/opp/debugfs.c", i32 208, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @opp_migrate_dentry._entry, !47, !"_entry", i1 false, i1 false}
!53 = !{ptr @opp_migrate_dentry._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/opp/debugfs.c", i32 245, i32 31}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.peeled.count", i32 1}
