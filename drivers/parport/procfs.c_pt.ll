; ModuleID = '/llk/IR_all_yes/drivers/parport/procfs.c_pt.bc'
source_filename = "../drivers/parport/procfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.parport_sysctl_table = type { ptr, [12 x %struct.ctl_table], [2 x %struct.ctl_table], [2 x %struct.ctl_table], [2 x %struct.ctl_table], [2 x %struct.ctl_table] }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.parport_device_sysctl_table = type { ptr, [2 x %struct.ctl_table], [2 x %struct.ctl_table], [2 x %struct.ctl_table], [2 x %struct.ctl_table], [2 x %struct.ctl_table], [2 x %struct.ctl_table] }
%struct.parport_default_sysctl_table = type { ptr, [3 x %struct.ctl_table], [2 x %struct.ctl_table], [2 x %struct.ctl_table], [2 x %struct.ctl_table] }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }

@parport_sysctl_template = internal constant { %struct.parport_sysctl_table, [172 x i8] } { %struct.parport_sysctl_table { ptr null, [12 x %struct.ctl_table] [%struct.ctl_table { ptr @.str, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @parport_min_spintime_value, ptr @parport_max_spintime_value }, %struct.ctl_table { ptr @.str.1, ptr null, i32 0, i16 292, ptr null, ptr @do_hardware_base_addr, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.2, ptr null, i32 0, i16 292, ptr null, ptr @do_hardware_irq, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.3, ptr null, i32 0, i16 292, ptr null, ptr @do_hardware_dma, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr null, i32 0, i16 292, ptr null, ptr @do_hardware_modes, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.5, ptr null, i32 0, i16 365, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.6, ptr null, i32 0, i16 292, ptr null, ptr @do_autoprobe, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.7, ptr null, i32 0, i16 292, ptr null, ptr @do_autoprobe, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.8, ptr null, i32 0, i16 292, ptr null, ptr @do_autoprobe, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.9, ptr null, i32 0, i16 292, ptr null, ptr @do_autoprobe, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.10, ptr null, i32 0, i16 292, ptr null, ptr @do_autoprobe, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.11, ptr null, i32 0, i16 292, ptr null, ptr @do_active_device, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [2 x %struct.ctl_table] [%struct.ctl_table { ptr null, ptr null, i32 0, i16 365, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.12, ptr null, i32 0, i16 365, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.13, ptr null, i32 0, i16 365, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer] }, [172 x i8] zeroinitializer }, align 32
@parport_device_sysctl_template = internal constant { %struct.parport_device_sysctl_table, [108 x i8] } { %struct.parport_device_sysctl_table { ptr null, [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.32, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_ms_jiffies_minmax, ptr null, ptr @parport_min_timeslice_value, ptr @parport_max_timeslice_value }, %struct.ctl_table zeroinitializer], [2 x %struct.ctl_table] [%struct.ctl_table { ptr null, ptr null, i32 0, i16 365, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.5, ptr null, i32 0, i16 365, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [2 x %struct.ctl_table] [%struct.ctl_table { ptr null, ptr null, i32 0, i16 365, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.12, ptr null, i32 0, i16 365, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.13, ptr null, i32 0, i16 365, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer] }, [108 x i8] zeroinitializer }, align 32
@parport_default_sysctl_table = internal global { %struct.parport_default_sysctl_table, [88 x i8] } { %struct.parport_default_sysctl_table { ptr null, [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.32, ptr @parport_default_timeslice, i32 4, i16 420, ptr null, ptr @proc_doulongvec_ms_jiffies_minmax, ptr null, ptr @parport_min_timeslice_value, ptr @parport_max_timeslice_value }, %struct.ctl_table { ptr @.str, ptr @parport_default_spintime, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @parport_min_spintime_value, ptr @parport_max_spintime_value }, %struct.ctl_table zeroinitializer], [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.33, ptr null, i32 0, i16 365, ptr getelementptr (i8, ptr @parport_default_sysctl_table, i64 4), ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.12, ptr null, i32 0, i16 365, ptr getelementptr (i8, ptr @parport_default_sysctl_table, i64 112), ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.13, ptr null, i32 0, i16 365, ptr getelementptr (i8, ptr @parport_default_sysctl_table, i64 184), ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer] }, [88 x i8] zeroinitializer }, align 32
@__initcall__kmod_parport__223_622_parport_default_proc_register4 = internal global ptr @parport_default_proc_register, section ".initcall4.init", align 4
@__exitcall_parport_default_proc_unregister = internal global ptr @parport_default_proc_unregister, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spintime\00", [23 x i8] zeroinitializer }, align 32
@parport_min_spintime_value = internal constant { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@parport_max_spintime_value = internal constant { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"base-addr\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"modes\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"autoprobe\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autoprobe0\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autoprobe1\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autoprobe2\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autoprobe3\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"parport\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%lu\09%lu\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCSPP\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TRISTATE\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"COMPAT\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EPP\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ECP\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLASS:%s;\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODEL:%s;\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MANUFACTURER:%s;\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DESCRIPTION:%s;\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"COMMAND SET:%s;\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timeslice\00", [22 x i8] zeroinitializer }, align 32
@parport_min_timeslice_value = internal constant { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@parport_max_timeslice_value = internal constant { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@parport_default_timeslice = external dso_local global i32, align 4
@parport_default_spintime = external dso_local global i32, align 4
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"parport_sysctl_template\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 268, i32 42 }
@___asan_gen_.37 = private unnamed_addr constant [31 x i8] c"parport_device_sysctl_template\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 384, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [29 x i8] c"parport_default_sysctl_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 435, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 272, i32 16 }
@___asan_gen_.46 = private unnamed_addr constant [27 x i8] c"parport_min_spintime_value\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 252, i32 19 }
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"parport_max_spintime_value\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 255, i32 18 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 281, i32 16 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 288, i32 16 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 295, i32 16 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 302, i32 16 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 308, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 311, i32 16 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 318, i32 16 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 325, i32 16 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 332, i32 16 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 339, i32 16 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 350, i32 16 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 363, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 367, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 131, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 158, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 219, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 220, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 221, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 222, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 223, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 224, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 90, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 93, i32 33 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 96, i32 33 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 99, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 102, i32 33 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 54, i32 27 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 59, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 388, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant [28 x i8] c"parport_min_timeslice_value\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 246, i32 28 }
@___asan_gen_.151 = private unnamed_addr constant [28 x i8] c"parport_max_timeslice_value\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 249, i32 28 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [28 x i8] c"../drivers/parport/procfs.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 460, i32 16 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__exitcall_parport_default_proc_unregister, ptr @__initcall__kmod_parport__223_622_parport_default_proc_register4, ptr @parport_default_proc_unregister, ptr @parport_sysctl_template, ptr @parport_device_sysctl_template, ptr @parport_default_sysctl_table, ptr @.str, ptr @parport_min_spintime_value, ptr @parport_max_spintime_value, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @parport_min_timeslice_value, ptr @parport_max_timeslice_value, ptr @.str.33], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_sysctl_template to i32), i32 724, i32 896, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_device_sysctl_template to i32), i32 436, i32 544, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_default_sysctl_table to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_min_spintime_value to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_max_spintime_value to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_min_timeslice_value to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_max_timeslice_value to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parport_proc_register(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef nonnull @parport_sysctl_template, i32 noundef 724, i32 noundef 3264) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %extra1 = getelementptr inbounds %struct.parport_sysctl_table, ptr %call, i32 0, i32 2, i32 0, i32 7
  %0 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %port, ptr %extra1, align 4
  %extra13 = getelementptr %struct.parport_sysctl_table, ptr %call, i32 0, i32 1, i32 0, i32 7
  %1 = ptrtoint ptr %extra13 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %port, ptr %extra13, align 4
  %extra13.1 = getelementptr %struct.parport_sysctl_table, ptr %call, i32 0, i32 1, i32 1, i32 7
  %2 = ptrtoint ptr %extra13.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %port, ptr %extra13.1, align 4
  %extra13.2 = getelementptr %struct.parport_sysctl_table, ptr %call, i32 0, i32 1, i32 2, i32 7
  %3 = ptrtoint ptr %extra13.2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %port, ptr %extra13.2, align 4
  %extra13.3 = getelementptr %struct.parport_sysctl_table, ptr %call, i32 0, i32 1, i32 3, i32 7
  %4 = ptrtoint ptr %extra13.3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %port, ptr %extra13.3, align 4
  %extra13.4 = getelementptr %struct.parport_sysctl_table, ptr %call, i32 0, i32 1, i32 4, i32 7
  %5 = ptrtoint ptr %extra13.4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %port, ptr %extra13.4, align 4
  %device_dir = getelementptr inbounds %struct.parport_sysctl_table, ptr %call, i32 0, i32 2
  %spintime = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 30
  %data = getelementptr inbounds %struct.parport_sysctl_table, ptr %call, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spintime, ptr %data, align 4
  %child = getelementptr %struct.parport_sysctl_table, ptr %call, i32 0, i32 1, i32 5, i32 4
  %7 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %device_dir, ptr %child, align 4
  %arrayidx12 = getelementptr %struct.parport, ptr %port, i32 0, i32 22, i32 0
  %extra2 = getelementptr %struct.parport_sysctl_table, ptr %call, i32 0, i32 1, i32 6, i32 8
  %8 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx12, ptr %extra2, align 4
  %arrayidx12.1 = getelementptr %struct.parport, ptr %port, i32 0, i32 22, i32 1
  %extra2.1 = getelementptr %struct.parport_sysctl_table, ptr %call, i32 0, i32 1, i32 7, i32 8
  %9 = ptrtoint ptr %extra2.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx12.1, ptr %extra2.1, align 4
  %arrayidx12.2 = getelementptr %struct.parport, ptr %port, i32 0, i32 22, i32 2
  %extra2.2 = getelementptr %struct.parport_sysctl_table, ptr %call, i32 0, i32 1, i32 8, i32 8
  %10 = ptrtoint ptr %extra2.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx12.2, ptr %extra2.2, align 4
  %arrayidx12.3 = getelementptr %struct.parport, ptr %port, i32 0, i32 22, i32 3
  %extra2.3 = getelementptr %struct.parport_sysctl_table, ptr %call, i32 0, i32 1, i32 9, i32 8
  %11 = ptrtoint ptr %extra2.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx12.3, ptr %extra2.3, align 4
  %arrayidx12.4 = getelementptr %struct.parport, ptr %port, i32 0, i32 22, i32 4
  %extra2.4 = getelementptr %struct.parport_sysctl_table, ptr %call, i32 0, i32 1, i32 10, i32 8
  %12 = ptrtoint ptr %extra2.4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx12.4, ptr %extra2.4, align 4
  %vars4 = getelementptr inbounds %struct.parport_sysctl_table, ptr %call, i32 0, i32 1
  %name = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %port_dir = getelementptr inbounds %struct.parport_sysctl_table, ptr %call, i32 0, i32 3
  %15 = ptrtoint ptr %port_dir to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %port_dir, align 4
  %child23 = getelementptr inbounds %struct.parport_sysctl_table, ptr %call, i32 0, i32 3, i32 0, i32 4
  %16 = ptrtoint ptr %child23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vars4, ptr %child23, align 4
  %parport_dir = getelementptr inbounds %struct.parport_sysctl_table, ptr %call, i32 0, i32 4
  %child27 = getelementptr inbounds %struct.parport_sysctl_table, ptr %call, i32 0, i32 4, i32 0, i32 4
  %17 = ptrtoint ptr %child27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %port_dir, ptr %child27, align 4
  %dev_dir = getelementptr inbounds %struct.parport_sysctl_table, ptr %call, i32 0, i32 5
  %child31 = getelementptr inbounds %struct.parport_sysctl_table, ptr %call, i32 0, i32 5, i32 0, i32 4
  %18 = ptrtoint ptr %child31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %parport_dir, ptr %child31, align 4
  %call34 = tail call ptr @register_sysctl_table(ptr noundef %dev_dir) #6
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call34, ptr %call, align 4
  %cmp36 = icmp eq ptr %call34, null
  br i1 %cmp36, label %if.then37, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end.if.end38_crit_edge
  %t.0 = phi ptr [ null, %if.then37 ], [ %call, %if.end.if.end38_crit_edge ]
  %sysctl_table = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 21
  %20 = ptrtoint ptr %sysctl_table to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %t.0, ptr %sysctl_table, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parport_proc_unregister(ptr nocapture noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sysctl_table = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 21
  %0 = ptrtoint ptr %sysctl_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysctl_table, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %sysctl_table to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sysctl_table, align 8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @unregister_sysctl_table(ptr noundef %4) #6
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parport_device_proc_register(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.pardevice, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %call = tail call ptr @kmemdup(ptr noundef nonnull @parport_device_sysctl_template, i32 noundef 436, i32 noundef 3264) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parport_dir = getelementptr inbounds %struct.parport_device_sysctl_table, ptr %call, i32 0, i32 5
  %dev_dir = getelementptr inbounds %struct.parport_device_sysctl_table, ptr %call, i32 0, i32 6
  %child = getelementptr inbounds %struct.parport_device_sysctl_table, ptr %call, i32 0, i32 6, i32 0, i32 4
  %2 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %parport_dir, ptr %child, align 4
  %port_dir = getelementptr inbounds %struct.parport_device_sysctl_table, ptr %call, i32 0, i32 4
  %child5 = getelementptr inbounds %struct.parport_device_sysctl_table, ptr %call, i32 0, i32 5, i32 0, i32 4
  %3 = ptrtoint ptr %child5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %port_dir, ptr %child5, align 4
  %name = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %6 = ptrtoint ptr %port_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %port_dir, align 4
  %devices_root_dir = getelementptr inbounds %struct.parport_device_sysctl_table, ptr %call, i32 0, i32 3
  %child11 = getelementptr inbounds %struct.parport_device_sysctl_table, ptr %call, i32 0, i32 4, i32 0, i32 4
  %7 = ptrtoint ptr %child11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %devices_root_dir, ptr %child11, align 4
  %device_dir = getelementptr inbounds %struct.parport_device_sysctl_table, ptr %call, i32 0, i32 2
  %child15 = getelementptr inbounds %struct.parport_device_sysctl_table, ptr %call, i32 0, i32 3, i32 0, i32 4
  %8 = ptrtoint ptr %child15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %device_dir, ptr %child15, align 4
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 8
  %11 = ptrtoint ptr %device_dir to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %device_dir, align 4
  %vars = getelementptr inbounds %struct.parport_device_sysctl_table, ptr %call, i32 0, i32 1
  %child23 = getelementptr inbounds %struct.parport_device_sysctl_table, ptr %call, i32 0, i32 2, i32 0, i32 4
  %12 = ptrtoint ptr %child23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vars, ptr %child23, align 4
  %timeslice = getelementptr inbounds %struct.pardevice, ptr %device, i32 0, i32 15
  %data = getelementptr inbounds %struct.parport_device_sysctl_table, ptr %call, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %timeslice, ptr %data, align 4
  %call28 = tail call ptr @register_sysctl_table(ptr noundef %dev_dir) #6
  %14 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call28, ptr %call, align 4
  %cmp30 = icmp eq ptr %call28, null
  br i1 %cmp30, label %if.then31, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end.if.end32_crit_edge
  %t.0 = phi ptr [ null, %if.then31 ], [ %call, %if.end.if.end32_crit_edge ]
  %sysctl_table = getelementptr inbounds %struct.pardevice, ptr %device, i32 0, i32 20
  %15 = ptrtoint ptr %sysctl_table to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %t.0, ptr %sysctl_table, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parport_device_proc_unregister(ptr nocapture noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sysctl_table = getelementptr inbounds %struct.pardevice, ptr %device, i32 0, i32 20
  %0 = ptrtoint ptr %sysctl_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysctl_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %sysctl_table to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sysctl_table, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @unregister_sysctl_table(ptr noundef %4) #6
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @parport_default_proc_unregister() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @parport_default_sysctl_table, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unregister_sysctl_table(ptr noundef nonnull %0) #6
  store ptr null, ptr @parport_default_sysctl_table, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @parport_bus_exit() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_bus_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_default_proc_register() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_sysctl_table(ptr noundef getelementptr inbounds (%struct.parport_default_sysctl_table, ptr @parport_default_sysctl_table, i32 0, i32 4)) #6
  store ptr %call, ptr @parport_default_sysctl_table, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @parport_bus_init() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @parport_default_sysctl_table, align 4
  tail call void @unregister_sysctl_table(ptr noundef %0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_hardware_base_addr(ptr nocapture noundef readonly %table, i32 noundef %write, ptr nocapture noundef writeonly %result, ptr nocapture noundef %lenp, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  %buffer = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %0 = ptrtoint ptr %extra1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buffer) #6
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 20)
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %base_hi = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_hi, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.14, i32 noundef %7, i32 noundef %9)
  %10 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %11)
  %cmp = icmp ugt i32 %call, %11
  br i1 %cmp, label %if.end3.if.end5_crit_edge, label %if.else

if.end3.if.end5_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %lenp, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end3.if.end5_crit_edge
  %len.0 = phi i32 [ %call, %if.else ], [ %11, %if.end3.if.end5_crit_edge ]
  %conv = sext i32 %len.0 to i64
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ppos, align 8
  %add6 = add i64 %14, %conv
  store i64 %add6, ptr %ppos, align 8
  %15 = call ptr @memcpy(ptr %result, ptr %buffer, i32 %len.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end5 ], [ -13, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_hardware_irq(ptr nocapture noundef readonly %table, i32 noundef %write, ptr nocapture noundef writeonly %result, ptr nocapture noundef %lenp, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  %buffer = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %0 = ptrtoint ptr %extra1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buffer) #6
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 20)
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.15, i32 noundef %7)
  %8 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %9)
  %cmp = icmp ugt i32 %call, %9
  br i1 %cmp, label %if.end3.if.end5_crit_edge, label %if.else

if.end3.if.end5_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %lenp, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end3.if.end5_crit_edge
  %len.0 = phi i32 [ %call, %if.else ], [ %9, %if.end3.if.end5_crit_edge ]
  %conv = sext i32 %len.0 to i64
  %11 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ppos, align 8
  %add6 = add i64 %12, %conv
  store i64 %add6, ptr %ppos, align 8
  %13 = call ptr @memcpy(ptr %result, ptr %buffer, i32 %len.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end5 ], [ -13, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_hardware_dma(ptr nocapture noundef readonly %table, i32 noundef %write, ptr nocapture noundef writeonly %result, ptr nocapture noundef %lenp, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  %buffer = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %0 = ptrtoint ptr %extra1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buffer) #6
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 20)
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dma = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 8
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.15, i32 noundef %7)
  %8 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %9)
  %cmp = icmp ugt i32 %call, %9
  br i1 %cmp, label %if.end3.if.end5_crit_edge, label %if.else

if.end3.if.end5_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %lenp, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end3.if.end5_crit_edge
  %len.0 = phi i32 [ %call, %if.else ], [ %9, %if.end3.if.end5_crit_edge ]
  %conv = sext i32 %len.0 to i64
  %11 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ppos, align 8
  %add6 = add i64 %12, %conv
  store i64 %add6, ptr %ppos, align 8
  %13 = call ptr @memcpy(ptr %result, ptr %buffer, i32 %len.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end5 ], [ -13, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_hardware_modes(ptr nocapture noundef readonly %table, i32 noundef %write, ptr nocapture noundef writeonly %result, ptr nocapture noundef %lenp, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  %buffer = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %0 = ptrtoint ptr %extra1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buffer) #6
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 40)
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %modes = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modes, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.do.body8_crit_edge, label %if.then5

if.end3.do.body8_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19)
  br label %do.body8

do.body8:                                         ; preds = %if.then5, %if.end3.do.body8_crit_edge
  %len.0 = phi i32 [ %call, %if.then5 ], [ 0, %if.end3.do.body8_crit_edge ]
  %f.0 = phi i32 [ 1, %if.then5 ], [ 0, %if.end3.do.body8_crit_edge ]
  %8 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %modes, align 8
  %and10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body8.do.body23_crit_edge, label %if.then12

do.body8.do.body23_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr14 = getelementptr i8, ptr %buffer, i32 %len.0
  %inc15 = add nuw nsw i32 %f.0, 1
  %cond17 = select i1 %tobool4.not, ptr @.str.18, ptr @.str.17
  %call18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond17, ptr noundef nonnull @.str.20)
  %add19 = add i32 %call18, %len.0
  br label %do.body23

do.body23:                                        ; preds = %if.then12, %do.body8.do.body23_crit_edge
  %len.1 = phi i32 [ %add19, %if.then12 ], [ %len.0, %do.body8.do.body23_crit_edge ]
  %f.1 = phi i32 [ %inc15, %if.then12 ], [ %f.0, %do.body8.do.body23_crit_edge ]
  %10 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %modes, align 8
  %and25 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body23.do.body38_crit_edge, label %if.then27

do.body23.do.body38_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body38

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr29 = getelementptr i8, ptr %buffer, i32 %len.1
  %inc30 = add nuw nsw i32 %f.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.1)
  %tobool31.not = icmp eq i32 %f.1, 0
  %cond32 = select i1 %tobool31.not, ptr @.str.18, ptr @.str.17
  %call33 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr29, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond32, ptr noundef nonnull @.str.21)
  %add34 = add i32 %call33, %len.1
  br label %do.body38

do.body38:                                        ; preds = %if.then27, %do.body23.do.body38_crit_edge
  %len.2 = phi i32 [ %add34, %if.then27 ], [ %len.1, %do.body23.do.body38_crit_edge ]
  %f.2 = phi i32 [ %inc30, %if.then27 ], [ %f.1, %do.body23.do.body38_crit_edge ]
  %12 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %modes, align 8
  %and40 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body38.do.body53_crit_edge, label %if.then42

do.body38.do.body53_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body53

if.then42:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr44 = getelementptr i8, ptr %buffer, i32 %len.2
  %inc45 = add nuw nsw i32 %f.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.2)
  %tobool46.not = icmp eq i32 %f.2, 0
  %cond47 = select i1 %tobool46.not, ptr @.str.18, ptr @.str.17
  %call48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr44, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond47, ptr noundef nonnull @.str.22)
  %add49 = add i32 %call48, %len.2
  br label %do.body53

do.body53:                                        ; preds = %if.then42, %do.body38.do.body53_crit_edge
  %len.3 = phi i32 [ %add49, %if.then42 ], [ %len.2, %do.body38.do.body53_crit_edge ]
  %f.3 = phi i32 [ %inc45, %if.then42 ], [ %f.2, %do.body38.do.body53_crit_edge ]
  %14 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %modes, align 8
  %and55 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body53.do.body68_crit_edge, label %if.then57

do.body53.do.body68_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

if.then57:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr59 = getelementptr i8, ptr %buffer, i32 %len.3
  %inc60 = add nuw nsw i32 %f.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.3)
  %tobool61.not = icmp eq i32 %f.3, 0
  %cond62 = select i1 %tobool61.not, ptr @.str.18, ptr @.str.17
  %call63 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr59, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond62, ptr noundef nonnull @.str.23)
  %add64 = add i32 %call63, %len.3
  br label %do.body68

do.body68:                                        ; preds = %if.then57, %do.body53.do.body68_crit_edge
  %len.4 = phi i32 [ %add64, %if.then57 ], [ %len.3, %do.body53.do.body68_crit_edge ]
  %f.4 = phi i32 [ %inc60, %if.then57 ], [ %f.3, %do.body53.do.body68_crit_edge ]
  %16 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %modes, align 8
  %and70 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body68.do.end82_crit_edge, label %if.then72

do.body68.do.end82_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end82

if.then72:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr74 = getelementptr i8, ptr %buffer, i32 %len.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.4)
  %tobool76.not = icmp eq i32 %f.4, 0
  %cond77 = select i1 %tobool76.not, ptr @.str.18, ptr @.str.17
  %call78 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr74, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond77, ptr noundef nonnull @.str.24)
  %add79 = add i32 %call78, %len.4
  br label %do.end82

do.end82:                                         ; preds = %if.then72, %do.body68.do.end82_crit_edge
  %len.5 = phi i32 [ %add79, %if.then72 ], [ %len.4, %do.body68.do.end82_crit_edge ]
  %inc83 = add i32 %len.5, 1
  %arrayidx = getelementptr [40 x i8], ptr %buffer, i32 0, i32 %len.5
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %arrayidx, align 1
  %19 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc83, i32 %20)
  %cmp = icmp ugt i32 %inc83, %20
  br i1 %cmp, label %do.end82.if.end85_crit_edge, label %if.else

do.end82.if.end85_crit_edge:                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.else:                                          ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc83, ptr %lenp, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else, %do.end82.if.end85_crit_edge
  %len.6 = phi i32 [ %inc83, %if.else ], [ %20, %do.end82.if.end85_crit_edge ]
  %conv = sext i32 %len.6 to i64
  %22 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ppos, align 8
  %add86 = add i64 %23, %conv
  store i64 %add86, ptr %ppos, align 8
  %24 = call ptr @memcpy(ptr %result, ptr %buffer, i32 %len.6)
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end85 ], [ -13, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_autoprobe(ptr nocapture noundef readonly %table, i32 noundef %write, ptr nocapture noundef writeonly %result, ptr nocapture noundef %lenp, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  %buffer = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 8
  %0 = ptrtoint ptr %extra2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra2, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buffer) #6
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool1.not = icmp eq i64 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %class_name = getelementptr inbounds %struct.parport_device_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %class_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_name, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %if.end3.if.end5_crit_edge, label %if.then4

if.end3.if.end5_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.25, ptr noundef nonnull %7)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end3.if.end5_crit_edge
  %len.0 = phi i32 [ %call, %if.then4 ], [ 0, %if.end3.if.end5_crit_edge ]
  %model = getelementptr inbounds %struct.parport_device_info, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %model, align 4
  %cmp6.not = icmp eq ptr %9, null
  br i1 %cmp6.not, label %if.end5.if.end12_crit_edge, label %if.then7

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr9 = getelementptr i8, ptr %buffer, i32 %len.0
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr9, ptr noundef nonnull @.str.26, ptr noundef nonnull %9)
  %add11 = add i32 %call10, %len.0
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end5.if.end12_crit_edge
  %len.1 = phi i32 [ %add11, %if.then7 ], [ %len.0, %if.end5.if.end12_crit_edge ]
  %mfr = getelementptr inbounds %struct.parport_device_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mfr, align 4
  %cmp13.not = icmp eq ptr %11, null
  br i1 %cmp13.not, label %if.end12.if.end19_crit_edge, label %if.then14

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr16 = getelementptr i8, ptr %buffer, i32 %len.1
  %call17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16, ptr noundef nonnull @.str.27, ptr noundef nonnull %11)
  %add18 = add i32 %call17, %len.1
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end12.if.end19_crit_edge
  %len.2 = phi i32 [ %add18, %if.then14 ], [ %len.1, %if.end12.if.end19_crit_edge ]
  %description = getelementptr inbounds %struct.parport_device_info, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %description, align 4
  %cmp20.not = icmp eq ptr %13, null
  br i1 %cmp20.not, label %if.end19.if.end26_crit_edge, label %if.then21

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr23 = getelementptr i8, ptr %buffer, i32 %len.2
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr23, ptr noundef nonnull @.str.28, ptr noundef nonnull %13)
  %add25 = add i32 %call24, %len.2
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end19.if.end26_crit_edge
  %len.3 = phi i32 [ %add25, %if.then21 ], [ %len.2, %if.end19.if.end26_crit_edge ]
  %cmdset = getelementptr inbounds %struct.parport_device_info, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %cmdset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmdset, align 4
  %cmp27.not = icmp eq ptr %15, null
  br i1 %cmp27.not, label %if.end26.if.end33_crit_edge, label %if.then28

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr30 = getelementptr i8, ptr %buffer, i32 %len.3
  %call31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr30, ptr noundef nonnull @.str.29, ptr noundef nonnull %15)
  %add32 = add i32 %call31, %len.3
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end26.if.end33_crit_edge
  %len.4 = phi i32 [ %add32, %if.then28 ], [ %len.3, %if.end26.if.end33_crit_edge ]
  %16 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.4, i32 %17)
  %cmp34 = icmp ugt i32 %len.4, %17
  br i1 %cmp34, label %if.end33.if.end36_crit_edge, label %if.else

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %len.4, ptr %lenp, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end33.if.end36_crit_edge
  %len.5 = phi i32 [ %len.4, %if.else ], [ %17, %if.end33.if.end36_crit_edge ]
  %conv = sext i32 %len.5 to i64
  %19 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ppos, align 8
  %add37 = add i64 %20, %conv
  store i64 %add37, ptr %ppos, align 8
  %21 = call ptr @memcpy(ptr %result, ptr %buffer, i32 %len.5)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end36 ], [ -13, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_active_device(ptr nocapture noundef readonly %table, i32 noundef %write, ptr nocapture noundef writeonly %result, ptr nocapture noundef %lenp, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  %buffer = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %0 = ptrtoint ptr %extra1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra1, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buffer) #6
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool1.not = icmp eq i64 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %devices = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %6)
  %dev.035 = load ptr, ptr %devices, align 4
  %tobool4.not36 = icmp eq ptr %dev.035, null
  br i1 %tobool4.not36, label %if.end3.if.then8_crit_edge, label %for.body.lr.ph

if.end3.if.then8_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

for.body.lr.ph:                                   ; preds = %if.end3
  %cad = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dev.038 = phi ptr [ %dev.035, %for.body.lr.ph ], [ %dev.0, %for.inc.for.body_crit_edge ]
  %len.037 = phi i32 [ 0, %for.body.lr.ph ], [ %len.1, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cad, align 8
  %cmp = icmp eq ptr %dev.038, %8
  br i1 %cmp, label %if.then5, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev.038 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.038, align 8
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.30, ptr noundef %10)
  %add = add i32 %call, %len.037
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body.for.inc_crit_edge
  %len.1 = phi i32 [ %add, %if.then5 ], [ %len.037, %for.body.for.inc_crit_edge ]
  %next = getelementptr inbounds %struct.pardevice, ptr %dev.038, i32 0, i32 8
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %11)
  %dev.0 = load ptr, ptr %next, align 4
  %tobool4.not = icmp eq ptr %dev.0, null
  br i1 %tobool4.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %tobool7.not = icmp eq i32 %len.1, 0
  br i1 %tobool7.not, label %for.end.if.then8_crit_edge, label %for.end.if.end12_crit_edge

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.end.if.then8_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %for.end.if.then8_crit_edge, %if.end3.if.then8_crit_edge
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %for.end.if.end12_crit_edge
  %len.2 = phi i32 [ %len.1, %for.end.if.end12_crit_edge ], [ %call10, %if.then8 ]
  %12 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.2, i32 %13)
  %cmp13 = icmp ugt i32 %len.2, %13
  br i1 %cmp13, label %if.end12.if.end15_crit_edge, label %if.else

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %len.2, ptr %lenp, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end12.if.end15_crit_edge
  %len.3 = phi i32 [ %len.2, %if.else ], [ %13, %if.end12.if.end15_crit_edge ]
  %conv = sext i32 %len.3 to i64
  %15 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ppos, align 8
  %add16 = add i64 %16, %conv
  store i64 %add16, ptr %ppos, align 8
  %17 = call ptr @memcpy(ptr %result, ptr %buffer, i32 %len.3)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end15 ], [ -13, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_ms_jiffies_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_bus_init() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_parport__223_622_parport_default_proc_register4, !1, !"__initcall__kmod_parport__223_622_parport_default_proc_register4", i1 false, i1 false}
!1 = !{!"../drivers/parport/procfs.c", i32 622, i32 1}
!2 = !{ptr @__exitcall_parport_default_proc_unregister, !3, !"__exitcall_parport_default_proc_unregister", i1 false, i1 false}
!3 = !{!"../drivers/parport/procfs.c", i32 623, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/parport/procfs.c", i32 272, i32 16}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/parport/procfs.c", i32 281, i32 16}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/parport/procfs.c", i32 288, i32 16}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/parport/procfs.c", i32 295, i32 16}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/parport/procfs.c", i32 302, i32 16}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/parport/procfs.c", i32 308, i32 3}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/parport/procfs.c", i32 311, i32 16}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/parport/procfs.c", i32 318, i32 16}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/parport/procfs.c", i32 325, i32 16}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/parport/procfs.c", i32 332, i32 16}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/parport/procfs.c", i32 339, i32 16}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/parport/procfs.c", i32 350, i32 16}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/parport/procfs.c", i32 363, i32 3}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/parport/procfs.c", i32 367, i32 3}
!32 = !{ptr @parport_sysctl_template, !33, !"parport_sysctl_template", i1 false, i1 false}
!33 = !{!"../drivers/parport/procfs.c", i32 268, i32 42}
!34 = !{ptr @parport_min_spintime_value, !35, !"parport_min_spintime_value", i1 false, i1 false}
!35 = !{!"../drivers/parport/procfs.c", i32 252, i32 19}
!36 = !{ptr @parport_max_spintime_value, !37, !"parport_max_spintime_value", i1 false, i1 false}
!37 = !{!"../drivers/parport/procfs.c", i32 255, i32 18}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/parport/procfs.c", i32 131, i32 26}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/parport/procfs.c", i32 158, i32 26}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/parport/procfs.c", i32 219, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/parport/procfs.c", i32 220, i32 3}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/parport/procfs.c", i32 221, i32 3}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/parport/procfs.c", i32 222, i32 3}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/parport/procfs.c", i32 223, i32 3}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/parport/procfs.c", i32 224, i32 3}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/parport/procfs.c", i32 90, i32 33}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/parport/procfs.c", i32 93, i32 33}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/parport/procfs.c", i32 96, i32 33}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/parport/procfs.c", i32 99, i32 33}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/parport/procfs.c", i32 102, i32 33}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/parport/procfs.c", i32 54, i32 27}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/parport/procfs.c", i32 59, i32 34}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/parport/procfs.c", i32 388, i32 17}
!73 = !{ptr @parport_device_sysctl_template, !74, !"parport_device_sysctl_template", i1 false, i1 false}
!74 = !{!"../drivers/parport/procfs.c", i32 384, i32 1}
!75 = !{ptr @parport_min_timeslice_value, !76, !"parport_min_timeslice_value", i1 false, i1 false}
!76 = !{!"../drivers/parport/procfs.c", i32 246, i32 28}
!77 = !{ptr @parport_max_timeslice_value, !78, !"parport_max_timeslice_value", i1 false, i1 false}
!78 = !{!"../drivers/parport/procfs.c", i32 249, i32 28}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/parport/procfs.c", i32 460, i32 16}
!81 = !{ptr @parport_default_sysctl_table, !82, !"parport_default_sysctl_table", i1 false, i1 false}
!82 = !{!"../drivers/parport/procfs.c", i32 435, i32 1}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
