; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/qcom_stats.c_pt.bc'
source_filename = "../drivers/soc/qcom/qcom_stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.subsystem_data = type { ptr, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stats_config = type { i32, i32, i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.stats_data = type { i8, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.sleep_stats = type { i32, i32, i64, i64, i64 }
%struct.appended_stats = type { i32, [3 x i32] }

@__initcall__kmod_qcom_stats__210_281_qcom_stats_init7 = internal global ptr @qcom_stats_init, section ".initcall7.init", align 4
@qcom_stats = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_stats_probe, ptr @qcom_stats_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_stats_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_stats_exit = internal global ptr @qcom_stats_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description211 = internal constant [70 x i8] c"qcom_stats.description=Qualcomm Technologies, Inc. (QTI) Stats driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file212 = internal constant [44 x i8] c"qcom_stats.file=drivers/soc/qcom/qcom_stats\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [26 x i8] c"qcom_stats.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_stats\00", [21 x i8] zeroinitializer }, align 32
@qcom_stats_table = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,apq8084-rpm-stats\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_data_dba0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8226-rpm-stats\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_data_dba0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8916-rpm-stats\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_data_dba0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974-rpm-stats\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_data_dba0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-stats\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmh-stats\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpmh_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@subsystems = internal constant { [9 x %struct.subsystem_data], [52 x i8] } { [9 x %struct.subsystem_data] [%struct.subsystem_data { ptr @.str.1, i32 605, i32 1 }, %struct.subsystem_data { ptr @.str.2, i32 605, i32 13 }, %struct.subsystem_data { ptr @.str.3, i32 606, i32 2 }, %struct.subsystem_data { ptr @.str.4, i32 607, i32 5 }, %struct.subsystem_data { ptr @.str.5, i32 608, i32 3 }, %struct.subsystem_data { ptr @.str.6, i32 609, i32 0 }, %struct.subsystem_data { ptr @.str.7, i32 610, i32 0 }, %struct.subsystem_data { ptr @.str.8, i32 613, i32 2 }, %struct.subsystem_data { ptr @.str.9, i32 613, i32 3 }], [52 x i8] zeroinitializer }, align 32
@qcom_subsystem_sleep_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qcom_subsystem_sleep_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"modem\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wpss\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adsp\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cdsp\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slpi\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"display\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adsp_island\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slpi_island\00", [20 x i8] zeroinitializer }, align 32
@arch_timer_read_counter = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Count: %u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Last Entered At: %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Last Exited At: %llu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Accumulated Duration: %llu\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_soc_sleep_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qcom_soc_sleep_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Client Votes: %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@rpm_data_dba0 = internal constant { %struct.stats_config, [20 x i8] } { %struct.stats_config { i32 56224, i32 2, i8 1, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@rpm_data = internal constant { %struct.stats_config, [20 x i8] } { %struct.stats_config { i32 0, i32 2, i8 1, i8 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@rpmh_data = internal constant { %struct.stats_config, [20 x i8] } { %struct.stats_config { i32 72, i32 3, i8 0, i8 0, i8 1 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [11 x i8] c"qcom_stats\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 268, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 272, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"qcom_stats_table\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 257, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"subsystems\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 33, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant [32 x i8] c"qcom_subsystem_sleep_stats_fops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 122, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 34, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 35, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 36, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 37, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 38, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 39, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 40, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 41, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 42, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 81, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 82, i32 16 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 83, i32 16 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 84, i32 16 }
@___asan_gen_.69 = private unnamed_addr constant [26 x i8] c"qcom_soc_sleep_stats_fops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 121, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 115, i32 17 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"rpm_data_dba0\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 241, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant [9 x i8] c"rpm_data\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 232, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"rpmh_data\00", align 1
@___asan_gen_.82 = private constant [33 x i8] c"../drivers/soc/qcom/qcom_stats.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 249, i32 34 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file212, ptr @__UNIQUE_ID_license213, ptr @__exitcall_qcom_stats_exit, ptr @__initcall__kmod_qcom_stats__210_281_qcom_stats_init7, ptr @qcom_stats_exit, ptr @qcom_stats, ptr @.str, ptr @qcom_stats_table, ptr @subsystems, ptr @qcom_subsystem_sleep_stats_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @qcom_soc_sleep_stats_fops, ptr @.str.14, ptr @rpm_data_dba0, ptr @rpm_data, ptr @rpmh_data], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_stats to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_stats_table to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subsystems to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_subsystem_sleep_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_soc_sleep_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_data_dba0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_stats_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_stats, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_stats_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_stats) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_stats_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %stat_type.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %num_records = getelementptr inbounds %struct.stats_config, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %num_records to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_records, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 8) #5
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.end4.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !64

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end4
  %4 = extractvalue { i32, i1 } %2, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %4, i32 noundef 3520) #5
  %tobool7.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool7.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %5 = ptrtoint ptr %num_records to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_records, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp39.not = icmp eq i32 %6, 0
  br i1 %cmp39.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %appended_stats_avail = getelementptr inbounds %struct.stats_config, ptr %call, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %appended_stats_avail to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %appended_stats_avail, align 4, !range !65
  %arrayidx = getelementptr %struct.stats_data, ptr %call5.i.i, i32 %i.040
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.040, 1
  %10 = ptrtoint ptr %num_records to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_records, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call13 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #5
  %subsystem_stats_in_smem.i = getelementptr inbounds %struct.stats_config, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %subsystem_stats_in_smem.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %subsystem_stats_in_smem.i, align 2, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %for.end.qcom_create_subsystem_stat_files.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.qcom_create_subsystem_stat_files.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_create_subsystem_stat_files.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %pid.i = getelementptr [9 x %struct.subsystem_data], ptr @subsystems, i32 0, i32 %i.014.i, i32 2
  %14 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i, align 4
  %smem_item.i = getelementptr [9 x %struct.subsystem_data], ptr @subsystems, i32 0, i32 %i.014.i, i32 1
  %16 = ptrtoint ptr %smem_item.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smem_item.i, align 4
  %call.i = tail call ptr @qcom_smem_get(i32 noundef %15, i32 noundef %17, ptr noundef null) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [9 x %struct.subsystem_data], ptr @subsystems, i32 0, i32 %i.014.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %call7.i = tail call ptr @debugfs_create_file(ptr noundef %19, i16 noundef zeroext 256, ptr noundef %call13, ptr noundef %arrayidx.i, ptr noundef nonnull @qcom_subsystem_sleep_stats_fops) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end4.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %for.inc.i.qcom_create_subsystem_stat_files.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.qcom_create_subsystem_stat_files.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_create_subsystem_stat_files.exit

qcom_create_subsystem_stat_files.exit:            ; preds = %for.inc.i.qcom_create_subsystem_stat_files.exit_crit_edge, %for.end.qcom_create_subsystem_stat_files.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %stat_type.i) #5
  %20 = call ptr @memset(ptr %stat_type.i, i32 0, i32 5)
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call, align 4
  %dynamic_offset.i = getelementptr inbounds %struct.stats_config, ptr %call, i32 0, i32 3
  %23 = ptrtoint ptr %dynamic_offset.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dynamic_offset.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i33 = icmp eq i8 %24, 0
  br i1 %tobool.not.i33, label %qcom_create_subsystem_stat_files.exit.if.end.i_crit_edge, label %if.then.i

qcom_create_subsystem_stat_files.exit.if.end.i_crit_edge: ; preds = %qcom_create_subsystem_stat_files.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %qcom_create_subsystem_stat_files.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %call1, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %26 = and i32 %25, -65536
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %qcom_create_subsystem_stat_files.exit.if.end.i_crit_edge
  %stats_offset.0.i = phi i32 [ %27, %if.then.i ], [ %22, %qcom_create_subsystem_stat_files.exit.if.end.i_crit_edge ]
  %28 = ptrtoint ptr %num_records to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_records, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp48.not.i = icmp eq i32 %29, 0
  br i1 %cmp48.not.i, label %if.end.i.qcom_create_soc_sleep_stat_files.exit_crit_edge, label %for.body.preheader.i

if.end.i.qcom_create_soc_sleep_stat_files.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_create_soc_sleep_stat_files.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %add.ptr3.i = getelementptr i8, ptr %call1, i32 %stats_offset.0.i
  %arrayidx16.1.i = getelementptr inbounds [5 x i8], ptr %stat_type.i, i32 0, i32 1
  %arrayidx16.2.i = getelementptr inbounds [5 x i8], ptr %stat_type.i, i32 0, i32 2
  %arrayidx16.3.i = getelementptr inbounds [5 x i8], ptr %stat_type.i, i32 0, i32 3
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %for.body.preheader.i
  %offset.050.i = phi i32 [ %spec.select.i, %for.body.i36.for.body.i36_crit_edge ], [ 0, %for.body.preheader.i ]
  %i.049.i = phi i32 [ %inc27.i, %for.body.i36.for.body.i36_crit_edge ], [ 0, %for.body.preheader.i ]
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i, i32 %offset.050.i
  %base.i = getelementptr %struct.stats_data, ptr %call5.i.i, i32 %i.049.i, i32 1
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr4.i, ptr %base.i, align 4
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !66
  %32 = call i32 @llvm.bswap.i32(i32 %31) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %conv.i = trunc i32 %32 to i8
  %33 = ptrtoint ptr %stat_type.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %stat_type.i, align 1
  %shr.i = lshr i32 %32, 8
  %conv.1.i = trunc i32 %shr.i to i8
  %34 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.1.i, ptr %arrayidx16.1.i, align 1
  %shr.1.i = lshr i32 %32, 16
  %conv.2.i = trunc i32 %shr.1.i to i8
  %35 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.2.i, ptr %arrayidx16.2.i, align 1
  %shr.2.i = lshr i32 %32, 24
  %conv.3.i = trunc i32 %shr.2.i to i8
  %36 = ptrtoint ptr %arrayidx16.3.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.3.i, ptr %arrayidx16.3.i, align 1
  %arrayidx.i34 = getelementptr %struct.stats_data, ptr %call5.i.i, i32 %i.049.i
  %call17.i = call ptr @strim(ptr noundef nonnull %stat_type.i) #5
  %call20.i = call ptr @debugfs_create_file(ptr noundef nonnull %stat_type.i, i16 noundef zeroext 256, ptr noundef %call13, ptr noundef %arrayidx.i34, ptr noundef nonnull @qcom_soc_sleep_stats_fops) #5
  %37 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i34, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool22.not.i = icmp eq i8 %38, 0
  %spec.select.v.i = select i1 %tobool22.not.i, i32 32, i32 48
  %spec.select.i = add i32 %spec.select.v.i, %offset.050.i
  %inc27.i = add nuw i32 %i.049.i, 1
  %39 = ptrtoint ptr %num_records to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_records, align 4
  %cmp.i35 = icmp ult i32 %inc27.i, %40
  br i1 %cmp.i35, label %for.body.i36.for.body.i36_crit_edge, label %for.body.i36.qcom_create_soc_sleep_stat_files.exit_crit_edge

for.body.i36.qcom_create_soc_sleep_stat_files.exit_crit_edge: ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_create_soc_sleep_stat_files.exit

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i36

qcom_create_soc_sleep_stat_files.exit:            ; preds = %for.body.i36.qcom_create_soc_sleep_stat_files.exit_crit_edge, %if.end.i.qcom_create_soc_sleep_stat_files.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %stat_type.i) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call13, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %qcom_create_soc_sleep_stat_files.exit, %devm_kcalloc.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qcom_create_soc_sleep_stat_files.exit ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_stats_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @debugfs_remove(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_get(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_subsystem_sleep_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qcom_subsystem_sleep_stats_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_subsystem_sleep_stats_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %pid = getelementptr inbounds %struct.subsystem_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid, align 4
  %smem_item = getelementptr inbounds %struct.subsystem_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %smem_item to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smem_item, align 4
  %call = tail call ptr @qcom_smem_get(i32 noundef %3, i32 noundef %5, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %accumulated1.i = getelementptr inbounds %struct.sleep_stats, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %accumulated1.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %accumulated1.i, align 8
  %last_entered_at.i = getelementptr inbounds %struct.sleep_stats, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %last_entered_at.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %last_entered_at.i, align 8
  %last_exited_at.i = getelementptr inbounds %struct.sleep_stats, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %last_exited_at.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %last_exited_at.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp.i6 = icmp ugt i64 %9, %11
  br i1 %cmp.i6, label %if.then.i, label %if.end.qcom_print_stats.exit_crit_edge

if.end.qcom_print_stats.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_print_stats.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arch_timer_read_counter to i32))
  %12 = load ptr, ptr @arch_timer_read_counter, align 4
  %call.i = tail call i64 %12() #5
  %13 = ptrtoint ptr %last_entered_at.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %last_entered_at.i, align 8
  %sub.i = add i64 %call.i, %7
  %add.i = sub i64 %sub.i, %14
  br label %qcom_print_stats.exit

qcom_print_stats.exit:                            ; preds = %if.then.i, %if.end.qcom_print_stats.exit_crit_edge
  %accumulated.0.i = phi i64 [ %add.i, %if.then.i ], [ %7, %if.end.qcom_print_stats.exit_crit_edge ]
  %count.i = getelementptr inbounds %struct.sleep_stats, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.10, i32 noundef %16) #5
  %17 = ptrtoint ptr %last_entered_at.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %last_entered_at.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i64 noundef %18) #5
  %19 = ptrtoint ptr %last_exited_at.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %last_exited_at.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, i64 noundef %20) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.13, i64 noundef %accumulated.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %qcom_print_stats.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qcom_print_stats.exit ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_soc_sleep_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qcom_soc_sleep_stats_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_soc_sleep_stats_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  %stat = alloca %struct.sleep_stats, align 8
  %votes = alloca %struct.appended_stats, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %base = getelementptr inbounds %struct.stats_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %stat) #5
  %4 = getelementptr inbounds %struct.sleep_stats, ptr %stat, i32 0, i32 1
  %5 = getelementptr inbounds %struct.sleep_stats, ptr %stat, i32 0, i32 2
  %6 = getelementptr inbounds %struct.sleep_stats, ptr %stat, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sleep_stats, ptr %stat, i32 0, i32 4
  %8 = call ptr @memset(ptr %stat, i32 255, i32 32)
  call void @mmiocpy(ptr noundef nonnull %stat, ptr noundef %3, i32 noundef 32) #5
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %7, align 8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %5, align 8
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp.i = icmp ugt i64 %12, %14
  br i1 %cmp.i, label %if.then.i, label %entry.qcom_print_stats.exit_crit_edge

entry.qcom_print_stats.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_print_stats.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arch_timer_read_counter to i32))
  %15 = load ptr, ptr @arch_timer_read_counter, align 4
  %call.i = call i64 %15() #5
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %5, align 8
  %sub.i = add i64 %call.i, %10
  %add.i = sub i64 %sub.i, %17
  br label %qcom_print_stats.exit

qcom_print_stats.exit:                            ; preds = %if.then.i, %entry.qcom_print_stats.exit_crit_edge
  %accumulated.0.i = phi i64 [ %add.i, %if.then.i ], [ %10, %entry.qcom_print_stats.exit_crit_edge ]
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.10, i32 noundef %19) #5
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %5, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i64 noundef %21) #5
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %6, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, i64 noundef %23) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.13, i64 noundef %accumulated.0.i) #5
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %qcom_print_stats.exit.if.end_crit_edge, label %if.then

qcom_print_stats.exit.if.end_crit_edge:           ; preds = %qcom_print_stats.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %qcom_print_stats.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %votes) #5
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %26 = call ptr @memset(ptr %votes, i32 255, i32 16)
  call void @mmiocpy(ptr noundef nonnull %votes, ptr noundef %add.ptr, i32 noundef 16) #5
  %27 = ptrtoint ptr %votes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %votes, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef %28) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %votes) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %qcom_print_stats.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %stat) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_qcom_stats__210_281_qcom_stats_init7, !1, !"__initcall__kmod_qcom_stats__210_281_qcom_stats_init7", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 281, i32 1}
!2 = !{ptr @__exitcall_qcom_stats_exit, !3, !"__exitcall_qcom_stats_exit", i1 false, i1 false}
!3 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 287, i32 1}
!4 = !{ptr @__UNIQUE_ID_description211, !5, !"__UNIQUE_ID_description211", i1 false, i1 false}
!5 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 289, i32 1}
!6 = !{ptr @__UNIQUE_ID_file212, !7, !"__UNIQUE_ID_file212", i1 false, i1 false}
!7 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 290, i32 1}
!8 = !{ptr @__UNIQUE_ID_license213, !7, !"__UNIQUE_ID_license213", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 272, i32 11}
!11 = !{ptr @qcom_stats, !12, !"qcom_stats", i1 false, i1 false}
!12 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 268, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 34, i32 4}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 35, i32 4}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 36, i32 4}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 37, i32 4}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 38, i32 4}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 39, i32 4}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 40, i32 4}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 41, i32 4}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 42, i32 4}
!31 = !{ptr @subsystems, !32, !"subsystems", i1 false, i1 false}
!32 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 33, i32 36}
!33 = !{ptr @qcom_subsystem_sleep_stats_fops, !34, !"qcom_subsystem_sleep_stats_fops", i1 false, i1 false}
!34 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 122, i32 1}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 81, i32 16}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 82, i32 16}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 83, i32 16}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 84, i32 16}
!43 = !{ptr @qcom_soc_sleep_stats_fops, !44, !"qcom_soc_sleep_stats_fops", i1 false, i1 false}
!44 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 121, i32 1}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 115, i32 17}
!47 = !{ptr @qcom_stats_table, !48, !"qcom_stats_table", i1 false, i1 false}
!48 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 257, i32 34}
!49 = !{ptr @rpm_data_dba0, !50, !"rpm_data_dba0", i1 false, i1 false}
!50 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 241, i32 34}
!51 = !{ptr @rpm_data, !52, !"rpm_data", i1 false, i1 false}
!52 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 232, i32 34}
!53 = !{ptr @rpmh_data, !54, !"rpmh_data", i1 false, i1 false}
!54 = !{!"../drivers/soc/qcom/qcom_stats.c", i32 249, i32 34}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i8 0, i8 2}
!66 = !{i64 5545729}
!67 = !{i64 2153227586}
!68 = !{i64 2153228047}
