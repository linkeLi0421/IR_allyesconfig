; ModuleID = '/llk/IR_all_yes/drivers/bus/tegra-gmi.c_pt.bc'
source_filename = "../drivers/bus/tegra-gmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_core_opp_params = type { i8 }
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
%struct.tegra_gmi = type { ptr, ptr, ptr, ptr, i32, i32, i32 }

@__initcall__kmod_tegra_gmi__171_318_tegra_gmi_driver_init6 = internal global ptr @tegra_gmi_driver_init, section ".initcall6.init", align 4
@tegra_gmi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_gmi_probe, ptr @tegra_gmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_gmi_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_gmi_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_gmi_driver_exit = internal global ptr @tegra_gmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author172 = internal constant [50 x i8] c"tegra_gmi.author=Mirza Krak <mirza.krak@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [50 x i8] c"tegra_gmi.description=NVIDIA Tegra GMI Bus Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [37 x i8] c"tegra_gmi.file=drivers/bus/tegra-gmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [25 x i8] c"tegra_gmi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-gmi\00", [22 x i8] zeroinitializer }, align 32
@tegra_gmi_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-gmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-gmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tegra_gmi_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_gmi_runtime_suspend, ptr @tegra_gmi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gmi\00", [28 x i8] zeroinitializer }, align 32
@tegra_gmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 232, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can not get clock\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_gmi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/bus/tegra-gmi.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_gmi_probe._entry_ptr = internal global ptr @tegra_gmi_probe._entry, section ".printk_index", align 4
@tegra_gmi_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can not get reset\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_gmi_probe._entry_ptr.9 = internal global ptr @tegra_gmi_probe._entry.7, section ".printk_index", align 4
@tegra_gmi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 256, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fail to create devices.\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_gmi_probe._entry_ptr.12 = internal global ptr @tegra_gmi_probe._entry.10, section ".printk_index", align 4
@tegra_gmi_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 103, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no child nodes found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_gmi_parse_dt\00", [45 x i8] zeroinitializer }, align 32
@tegra_gmi_parse_dt._entry_ptr = internal global ptr @tegra_gmi_parse_dt._entry, section ".printk_index", align 4
@tegra_gmi_parse_dt._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 113, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"only one child device is supported.\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_gmi_parse_dt._entry_ptr.18 = internal global ptr @tegra_gmi_parse_dt._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvidia,snor-data-width-32bit\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,snor-mux-mode\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nvidia,snor-rdy-active-before-data\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvidia,snor-rdy-active-high\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvidia,snor-adv-active-high\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvidia,snor-oe-active-high\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvidia,snor-cs-active-high\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ranges\00", [25 x i8] zeroinitializer }, align 32
@tegra_gmi_parse_dt._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.4, i32 142, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to decode CS: invalid ranges length\0A\00", [52 x i8] zeroinitializer }, align 32
@tegra_gmi_parse_dt._entry_ptr.29 = internal global ptr @tegra_gmi_parse_dt._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@tegra_gmi_parse_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.14, ptr @.str.4, i32 154, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to decode CS: no reg property found\0A\00", [52 x i8] zeroinitializer }, align 32
@tegra_gmi_parse_dt._entry_ptr.33 = internal global ptr @tegra_gmi_parse_dt._entry.31, section ".printk_index", align 4
@tegra_gmi_parse_dt._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.14, ptr @.str.4, i32 163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid chip select: %d\00", [40 x i8] zeroinitializer }, align 32
@tegra_gmi_parse_dt._entry_ptr.36 = internal global ptr @tegra_gmi_parse_dt._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvidia,snor-muxed-width\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,snor-hold-width\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvidia,snor-adv-width\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,snor-ce-width\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,snor-we-width\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,snor-oe-width\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,snor-wait-width\00", [41 x i8] zeroinitializer }, align 32
@tegra_gmi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_gmi_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@tegra_gmi_runtime_resume._entry_ptr = internal global ptr @tegra_gmi_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"tegra_gmi_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 309, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 313, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"tegra_gmi_id_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 302, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"tegra_gmi_pm\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 297, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 230, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 232, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 238, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 256, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 103, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 113, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 115, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 118, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 121, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 124, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 127, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 130, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 133, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 137, i32 42 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 141, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 151, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 153, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 163, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 171, i32 35 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 176, i32 35 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 181, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 186, i32 35 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 191, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 196, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 201, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [27 x i8] c"../drivers/bus/tegra-gmi.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 281, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_tegra_gmi_driver_exit, ptr @__initcall__kmod_tegra_gmi__171_318_tegra_gmi_driver_init6, ptr @tegra_gmi_driver_exit, ptr @tegra_gmi_parse_dt._entry, ptr @tegra_gmi_parse_dt._entry.15, ptr @tegra_gmi_parse_dt._entry.27, ptr @tegra_gmi_parse_dt._entry.31, ptr @tegra_gmi_parse_dt._entry.34, ptr @tegra_gmi_parse_dt._entry_ptr, ptr @tegra_gmi_parse_dt._entry_ptr.18, ptr @tegra_gmi_parse_dt._entry_ptr.29, ptr @tegra_gmi_parse_dt._entry_ptr.33, ptr @tegra_gmi_parse_dt._entry_ptr.36, ptr @tegra_gmi_probe._entry, ptr @tegra_gmi_probe._entry.10, ptr @tegra_gmi_probe._entry.7, ptr @tegra_gmi_probe._entry_ptr, ptr @tegra_gmi_probe._entry_ptr.12, ptr @tegra_gmi_probe._entry_ptr.9, ptr @tegra_gmi_runtime_resume._entry, ptr @tegra_gmi_runtime_resume._entry_ptr, ptr @tegra_gmi_driver, ptr @.str, ptr @tegra_gmi_id_table, ptr @tegra_gmi_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gmi_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gmi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gmi_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gmi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gmi_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gmi_parse_dt._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gmi_parse_dt._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gmi_parse_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gmi_parse_dt._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gmi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gmi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_gmi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_gmi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_gmi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gmi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %property.i = alloca i32, align 4
  %ranges.i = alloca [4 x i32], align 4
  %opp_params.i = alloca %struct.tegra_core_opp_params, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #7
  %base = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %clk = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %clk, align 4
  %cmp.i83 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i84 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  %9 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rst, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opp_params.i) #7
  %12 = ptrtoint ptr %opp_params.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %opp_params.i, align 1
  %call.i85 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %dev1, ptr noundef nonnull %opp_params.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i85)
  %cmp.not.i = icmp eq i32 %call.i85, -19
  %.call.i = select i1 %cmp.not.i, i32 0, i32 %call.i85
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.call.i)
  %tobool30.not = icmp eq i32 %.call.i, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property.i) #7
  %13 = ptrtoint ptr %property.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %property.i, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ranges.i) #7
  %14 = getelementptr inbounds [4 x i32], ptr %ranges.i, i32 0, i32 1
  %15 = call ptr @memset(ptr %ranges.i, i32 255, i32 16)
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node.i, align 8
  %call.i86 = call ptr @of_get_next_available_child(ptr noundef %19, ptr noundef null) #7
  %tobool.not.i = icmp eq ptr %call.i86, null
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i, label %tegra_gmi_parse_dt.exit.thread, label %if.end.i

tegra_gmi_parse_dt.exit.thread:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.13) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ranges.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end32
  %of_node3.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %of_node3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node3.i, align 8
  %call.i.i87 = call ptr @of_get_next_child(ptr noundef %23, ptr noundef null) #7
  %cmp.not5.i.i = icmp eq ptr %call.i.i87, null
  br i1 %cmp.not5.i.i, label %if.end.i.if.end10.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i87, %if.end.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_child(ptr noundef %23, ptr noundef nonnull %child.06.i.i) #7
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i.i)
  %cmp.i88 = icmp sgt i32 %inc.i.i, 1
  br i1 %cmp.i88, label %do.end8.i, label %of_get_child_count.exit.i.if.end10.i_crit_edge

of_get_child_count.exit.i.if.end10.i_crit_edge:   ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

do.end8.i:                                        ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.16) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end8.i, %of_get_child_count.exit.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %call.i196.i = call ptr @of_find_property(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.19, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i196.i, null
  br i1 %tobool.i.not.i, label %if.end10.i.if.end13.i_crit_edge, label %if.then12.i

if.end10.i.if.end13.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %snor_config.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %snor_config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %snor_config.i, align 4
  %or.i = or i32 %27, 1073741824
  store i32 %or.i, ptr %snor_config.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end13.i_crit_edge
  %call.i197.i = call ptr @of_find_property(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.20, ptr noundef null) #7
  %tobool.i198.not.i = icmp eq ptr %call.i197.i, null
  br i1 %tobool.i198.not.i, label %if.end13.i.if.end18.i_crit_edge, label %if.then15.i

if.end13.i.if.end18.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %snor_config16.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %snor_config16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %snor_config16.i, align 4
  %or17.i = or i32 %29, 268435456
  store i32 %or17.i, ptr %snor_config16.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end13.i.if.end18.i_crit_edge
  %call.i199.i = call ptr @of_find_property(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.21, ptr noundef null) #7
  %tobool.i200.not.i = icmp eq ptr %call.i199.i, null
  br i1 %tobool.i200.not.i, label %if.end18.i.if.end23.i_crit_edge, label %if.then20.i

if.end18.i.if.end23.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %snor_config21.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %snor_config21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %snor_config21.i, align 4
  %or22.i = or i32 %31, 16777216
  store i32 %or22.i, ptr %snor_config21.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end18.i.if.end23.i_crit_edge
  %call.i201.i = call ptr @of_find_property(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.22, ptr noundef null) #7
  %tobool.i202.not.i = icmp eq ptr %call.i201.i, null
  br i1 %tobool.i202.not.i, label %if.end23.i.if.end28.i_crit_edge, label %if.then25.i

if.end23.i.if.end28.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %snor_config26.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %snor_config26.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %snor_config26.i, align 4
  %or27.i = or i32 %33, 8388608
  store i32 %or27.i, ptr %snor_config26.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end23.i.if.end28.i_crit_edge
  %call.i203.i = call ptr @of_find_property(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.23, ptr noundef null) #7
  %tobool.i204.not.i = icmp eq ptr %call.i203.i, null
  br i1 %tobool.i204.not.i, label %if.end28.i.if.end33.i_crit_edge, label %if.then30.i

if.end28.i.if.end33.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %snor_config31.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %snor_config31.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %snor_config31.i, align 4
  %or32.i = or i32 %35, 4194304
  store i32 %or32.i, ptr %snor_config31.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end28.i.if.end33.i_crit_edge
  %call.i205.i = call ptr @of_find_property(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.24, ptr noundef null) #7
  %tobool.i206.not.i = icmp eq ptr %call.i205.i, null
  br i1 %tobool.i206.not.i, label %if.end33.i.if.end38.i_crit_edge, label %if.then35.i

if.end33.i.if.end38.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %snor_config36.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %snor_config36.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %snor_config36.i, align 4
  %or37.i = or i32 %37, 2097152
  store i32 %or37.i, ptr %snor_config36.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.end33.i.if.end38.i_crit_edge
  %call.i207.i = call ptr @of_find_property(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.25, ptr noundef null) #7
  %tobool.i208.not.i = icmp eq ptr %call.i207.i, null
  br i1 %tobool.i208.not.i, label %if.end38.i.if.end43.i_crit_edge, label %if.then40.i

if.end38.i.if.end43.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then40.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  %snor_config41.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %snor_config41.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %snor_config41.i, align 4
  %or42.i = or i32 %39, 1048576
  store i32 %or42.i, ptr %snor_config41.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %if.end38.i.if.end43.i_crit_edge
  %call.i209.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.26, ptr noundef nonnull %ranges.i, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209.i)
  %cmp45.i = icmp slt i32 %call.i209.i, 0
  br i1 %cmp45.i, label %if.then46.i, label %if.else.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -75, i32 %call.i209.i)
  %cmp47.i = icmp eq i32 %call.i209.i, -75
  br i1 %cmp47.i, label %do.end51.i, label %if.end53.i

do.end51.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.28) #10
  br label %tegra_gmi_parse_dt.exit.thread98

if.end53.i:                                       ; preds = %if.then46.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.30, ptr noundef nonnull %property.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp55.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp55.i, label %do.end59.i, label %if.end62thread-pre-split.i

do.end59.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.32) #10
  br label %tegra_gmi_parse_dt.exit.thread98

if.else.i:                                        ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %14, align 4
  %46 = ptrtoint ptr %property.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %property.i, align 4
  br label %if.end62.i

if.end62thread-pre-split.i:                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr.i = load i32, ptr %property.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.end62thread-pre-split.i, %if.else.i
  %48 = phi i32 [ %.pr.i, %if.end62thread-pre-split.i ], [ %45, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %48)
  %cmp63.i = icmp ugt i32 %48, 7
  br i1 %cmp63.i, label %do.end67.i, label %if.end69.i

do.end67.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.35, i32 noundef %48) #10
  br label %tegra_gmi_parse_dt.exit.thread98

if.end69.i:                                       ; preds = %if.end62.i
  %and.i = shl nuw nsw i32 %48, 4
  %shl.i = and i32 %and.i, 112
  %snor_config70.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 4
  %51 = ptrtoint ptr %snor_config70.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %snor_config70.i, align 4
  %or71.i = or i32 %52, %shl.i
  store i32 %or71.i, ptr %snor_config70.i, align 4
  %call.i.i210.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.37, ptr noundef nonnull %property.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i210.i)
  %tobool73.not.i = icmp sgt i32 %call.i.i210.i, -1
  br i1 %tobool73.not.i, label %if.then74.i, label %if.else78.i

if.then74.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %property.i, align 4
  %and75.i = shl i32 %54, 12
  %shl76.i = and i32 %and75.i, 61440
  %snor_timing0.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 5
  %55 = ptrtoint ptr %snor_timing0.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %snor_timing0.i, align 4
  br label %if.end81.i

if.else78.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  %snor_timing079.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 5
  %57 = ptrtoint ptr %snor_timing079.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %snor_timing079.i, align 4
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.else78.i, %if.then74.i
  %.sink219.i = phi i32 [ 4096, %if.else78.i ], [ %56, %if.then74.i ]
  %.sink.i = phi i32 [ %58, %if.else78.i ], [ %shl76.i, %if.then74.i ]
  %snor_timing079.sink.i = phi ptr [ %snor_timing079.i, %if.else78.i ], [ %snor_timing0.i, %if.then74.i ]
  %or80.i = or i32 %.sink.i, %.sink219.i
  %59 = ptrtoint ptr %snor_timing079.sink.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or80.i, ptr %snor_timing079.sink.i, align 4
  %call.i.i211.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.38, ptr noundef nonnull %property.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i211.i)
  %tobool83.not.i = icmp sgt i32 %call.i.i211.i, -1
  br i1 %tobool83.not.i, label %if.then84.i, label %if.else89.i

if.then84.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %property.i, align 4
  %and85.i = shl i32 %61, 8
  %shl86.i = and i32 %and85.i, 3840
  %snor_timing087.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 5
  %62 = ptrtoint ptr %snor_timing087.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %snor_timing087.i, align 4
  br label %if.end92.i

if.else89.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  %snor_timing090.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 5
  %64 = ptrtoint ptr %snor_timing090.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %snor_timing090.i, align 4
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else89.i, %if.then84.i
  %.sink221.i = phi i32 [ 256, %if.else89.i ], [ %63, %if.then84.i ]
  %.sink220.i = phi i32 [ %65, %if.else89.i ], [ %shl86.i, %if.then84.i ]
  %snor_timing090.sink.i = phi ptr [ %snor_timing090.i, %if.else89.i ], [ %snor_timing087.i, %if.then84.i ]
  %or91.i = or i32 %.sink220.i, %.sink221.i
  %66 = ptrtoint ptr %snor_timing090.sink.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or91.i, ptr %snor_timing090.sink.i, align 4
  %call.i.i212.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.39, ptr noundef nonnull %property.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i212.i)
  %tobool94.not.i = icmp sgt i32 %call.i.i212.i, -1
  br i1 %tobool94.not.i, label %if.then95.i, label %if.else100.i

if.then95.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %property.i, align 4
  %and96.i = shl i32 %68, 4
  %shl97.i = and i32 %and96.i, 240
  %snor_timing098.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 5
  %69 = ptrtoint ptr %snor_timing098.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %snor_timing098.i, align 4
  br label %if.end103.i

if.else100.i:                                     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  %snor_timing0101.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 5
  %71 = ptrtoint ptr %snor_timing0101.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %snor_timing0101.i, align 4
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.else100.i, %if.then95.i
  %.sink223.i = phi i32 [ 16, %if.else100.i ], [ %70, %if.then95.i ]
  %.sink222.i = phi i32 [ %72, %if.else100.i ], [ %shl97.i, %if.then95.i ]
  %snor_timing0101.sink.i = phi ptr [ %snor_timing0101.i, %if.else100.i ], [ %snor_timing098.i, %if.then95.i ]
  %or102.i = or i32 %.sink222.i, %.sink223.i
  %73 = ptrtoint ptr %snor_timing0101.sink.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or102.i, ptr %snor_timing0101.sink.i, align 4
  %call.i.i213.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.40, ptr noundef nonnull %property.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i213.i)
  %tobool105.not.i = icmp sgt i32 %call.i.i213.i, -1
  br i1 %tobool105.not.i, label %if.then106.i, label %if.end103.i.if.end113.i_crit_edge

if.end103.i.if.end113.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i

if.then106.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %property.i, align 4
  %and107.i = and i32 %75, 15
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then106.i, %if.end103.i.if.end113.i_crit_edge
  %.sink225.i = phi i32 [ %and107.i, %if.then106.i ], [ 4, %if.end103.i.if.end113.i_crit_edge ]
  %snor_timing0111.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 5
  %76 = ptrtoint ptr %snor_timing0111.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %snor_timing0111.i, align 4
  %or112.i = or i32 %77, %.sink225.i
  store i32 %or112.i, ptr %snor_timing0111.i, align 4
  %call.i.i214.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.41, ptr noundef nonnull %property.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i214.i)
  %tobool115.not.i = icmp sgt i32 %call.i.i214.i, -1
  br i1 %tobool115.not.i, label %if.then116.i, label %if.else120.i

if.then116.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %property.i, align 4
  %and117.i = shl i32 %79, 16
  %shl118.i = and i32 %and117.i, 16711680
  %snor_timing1.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 6
  %80 = ptrtoint ptr %snor_timing1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %snor_timing1.i, align 4
  br label %if.end123.i

if.else120.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  %snor_timing1121.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 6
  %82 = ptrtoint ptr %snor_timing1121.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %snor_timing1121.i, align 4
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.else120.i, %if.then116.i
  %.sink228.i = phi i32 [ 65536, %if.else120.i ], [ %81, %if.then116.i ]
  %.sink227.i = phi i32 [ %83, %if.else120.i ], [ %shl118.i, %if.then116.i ]
  %snor_timing1121.sink.i = phi ptr [ %snor_timing1121.i, %if.else120.i ], [ %snor_timing1.i, %if.then116.i ]
  %or122.i = or i32 %.sink227.i, %.sink228.i
  %84 = ptrtoint ptr %snor_timing1121.sink.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or122.i, ptr %snor_timing1121.sink.i, align 4
  %call.i.i215.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.42, ptr noundef nonnull %property.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i215.i)
  %tobool125.not.i = icmp sgt i32 %call.i.i215.i, -1
  br i1 %tobool125.not.i, label %if.then126.i, label %if.else131.i

if.then126.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %property.i, align 4
  %and127.i = shl i32 %86, 8
  %shl128.i = and i32 %and127.i, 65280
  %snor_timing1129.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 6
  %87 = ptrtoint ptr %snor_timing1129.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %snor_timing1129.i, align 4
  br label %if.end134.i

if.else131.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  %snor_timing1132.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 6
  %89 = ptrtoint ptr %snor_timing1132.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %snor_timing1132.i, align 4
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.else131.i, %if.then126.i
  %.sink230.i = phi i32 [ 256, %if.else131.i ], [ %88, %if.then126.i ]
  %.sink229.i = phi i32 [ %90, %if.else131.i ], [ %shl128.i, %if.then126.i ]
  %snor_timing1132.sink.i = phi ptr [ %snor_timing1132.i, %if.else131.i ], [ %snor_timing1129.i, %if.then126.i ]
  %or133.i = or i32 %.sink229.i, %.sink230.i
  %91 = ptrtoint ptr %snor_timing1132.sink.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or133.i, ptr %snor_timing1132.sink.i, align 4
  %call.i.i216.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i86, ptr noundef nonnull @.str.43, ptr noundef nonnull %property.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i216.i)
  %tobool136.not.i = icmp sgt i32 %call.i.i216.i, -1
  br i1 %tobool136.not.i, label %if.then137.i, label %if.end134.i.if.end36_crit_edge

if.end134.i.if.end36_crit_edge:                   ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then137.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %property.i, align 4
  %and138.i = and i32 %93, 255
  br label %if.end36

tegra_gmi_parse_dt.exit.thread98:                 ; preds = %do.end67.i, %do.end59.i, %do.end51.i
  %err.1.i.ph = phi i32 [ -22, %do.end67.i ], [ %call.i.i.i, %do.end59.i ], [ -75, %do.end51.i ]
  call void @of_node_put(ptr noundef nonnull %call.i86) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ranges.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i) #7
  br label %cleanup

if.end36:                                         ; preds = %if.then137.i, %if.end134.i.if.end36_crit_edge
  %.sink103 = phi i32 [ %and138.i, %if.then137.i ], [ 3, %if.end134.i.if.end36_crit_edge ]
  %snor_timing1142.i = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 6
  %94 = ptrtoint ptr %snor_timing1142.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %snor_timing1142.i, align 4
  %or143.i = or i32 %95, %.sink103
  store i32 %or143.i, ptr %snor_timing1142.i, align 4
  call void @of_node_put(ptr noundef nonnull %call.i86) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ranges.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i) #7
  %96 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call.i, align 4
  call void @pm_runtime_enable(ptr noundef %97) #7
  %98 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call.i, align 4
  %call.i.i89 = call i32 @__pm_runtime_resume(ptr noundef %99, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %cmp.i.i = icmp slt i32 %call.i.i89, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end39

if.then.i.i:                                      ; preds = %if.end36
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %99, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #7
  %100 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #7, !srcloc !106
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.tegra_gmi_enable.exit.thread_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.tegra_gmi_enable.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_gmi_enable.exit.thread

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !107
  br label %tegra_gmi_enable.exit.thread

tegra_gmi_enable.exit.thread:                     ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.tegra_gmi_enable.exit.thread_crit_edge
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 4
  call void @__pm_runtime_disable(ptr noundef %102, i1 noundef zeroext true) #7
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  %103 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rst, align 4
  %call3.i = call i32 @reset_control_assert(ptr noundef %104) #7
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #7
  %105 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rst, align 4
  %call5.i = call i32 @reset_control_deassert(ptr noundef %106) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  call void @arm_heavy_mb() #7
  %107 = ptrtoint ptr %snor_timing0111.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %snor_timing0111.i, align 4
  %109 = call i32 @llvm.bswap.i32(i32 %108) #7
  %110 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %111, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %109) #7, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  call void @arm_heavy_mb() #7
  %snor_timing1.i91 = getelementptr inbounds %struct.tegra_gmi, ptr %call.i, i32 0, i32 6
  %112 = ptrtoint ptr %snor_timing1.i91 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %snor_timing1.i91, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113) #7
  %115 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base, align 4
  %add.ptr10.i = getelementptr i8, ptr %116, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %114) #7, !srcloc !109
  %117 = ptrtoint ptr %snor_config70.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %snor_config70.i, align 4
  %or.i93 = or i32 %118, -2147483648
  store i32 %or.i93, ptr %snor_config70.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  call void @arm_heavy_mb() #7
  %119 = ptrtoint ptr %snor_config70.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %snor_config70.i, align 4
  %121 = call i32 @llvm.bswap.i32(i32 %120) #7
  %122 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #7, !srcloc !109
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %124 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %of_node, align 8
  %call40 = call i32 @of_platform_default_populate(ptr noundef %125, ptr noundef null, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end45, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  call fastcc void @tegra_gmi_disable(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end39.cleanup_crit_edge, %tegra_gmi_enable.exit.thread, %tegra_gmi_parse_dt.exit.thread98, %tegra_gmi_parse_dt.exit.thread, %if.end27.cleanup_crit_edge, %do.end24, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %7, %do.end ], [ %11, %do.end24 ], [ %call40, %do.end45 ], [ -12, %entry.cleanup_crit_edge ], [ %.call.i, %if.end27.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ -19, %tegra_gmi_parse_dt.exit.thread ], [ %err.1.i.ph, %tegra_gmi_parse_dt.exit.thread98 ], [ %call.i.i89, %tegra_gmi_enable.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gmi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @of_platform_depopulate(ptr noundef %3) #7
  %base.i = getelementptr inbounds %struct.tegra_gmi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %7 = and i32 %6, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !109
  %rst.i = getelementptr inbounds %struct.tegra_gmi, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst.i, align 4
  %call4.i = tail call i32 @reset_control_assert(ptr noundef %11) #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 4) #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call7.i = tail call i32 @pm_runtime_force_suspend(ptr noundef %15) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_gmi_disable(ptr nocapture noundef readonly %gmi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.tegra_gmi, ptr %gmi, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %3 = and i32 %2, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !109
  %rst = getelementptr inbounds %struct.tegra_gmi, ptr %gmi, i32 0, i32 3
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst, align 4
  %call4 = tail call i32 @reset_control_assert(ptr noundef %7) #7
  %8 = ptrtoint ptr %gmi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gmi, align 4
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 4) #7
  %10 = ptrtoint ptr %gmi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gmi, align 4
  %call7 = tail call i32 @pm_runtime_force_suspend(ptr noundef %11) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gmi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.tegra_gmi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gmi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.tegra_gmi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.cleanup_crit_edge

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.44, i32 noundef %retval.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %clk_prepare_enable.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_tegra_gmi__171_318_tegra_gmi_driver_init6, !1, !"__initcall__kmod_tegra_gmi__171_318_tegra_gmi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bus/tegra-gmi.c", i32 318, i32 1}
!2 = !{ptr @__exitcall_tegra_gmi_driver_exit, !1, !"__exitcall_tegra_gmi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author172, !4, !"__UNIQUE_ID_author172", i1 false, i1 false}
!4 = !{!"../drivers/bus/tegra-gmi.c", i32 320, i32 1}
!5 = !{ptr @__UNIQUE_ID_description173, !6, !"__UNIQUE_ID_description173", i1 false, i1 false}
!6 = !{!"../drivers/bus/tegra-gmi.c", i32 321, i32 1}
!7 = !{ptr @__UNIQUE_ID_file174, !8, !"__UNIQUE_ID_file174", i1 false, i1 false}
!8 = !{!"../drivers/bus/tegra-gmi.c", i32 322, i32 1}
!9 = !{ptr @__UNIQUE_ID_license175, !8, !"__UNIQUE_ID_license175", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bus/tegra-gmi.c", i32 313, i32 12}
!12 = !{ptr @tegra_gmi_driver, !13, !"tegra_gmi_driver", i1 false, i1 false}
!13 = !{!"../drivers/bus/tegra-gmi.c", i32 309, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bus/tegra-gmi.c", i32 230, i32 31}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bus/tegra-gmi.c", i32 232, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra_gmi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_gmi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bus/tegra-gmi.c", i32 238, i32 3}
!26 = !{ptr @tegra_gmi_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra_gmi_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/bus/tegra-gmi.c", i32 256, i32 3}
!30 = !{ptr @tegra_gmi_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_gmi_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bus/tegra-gmi.c", i32 103, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tegra_gmi_parse_dt._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @tegra_gmi_parse_dt._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/bus/tegra-gmi.c", i32 113, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tegra_gmi_parse_dt._entry.15, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @tegra_gmi_parse_dt._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bus/tegra-gmi.c", i32 115, i32 35}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bus/tegra-gmi.c", i32 118, i32 35}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bus/tegra-gmi.c", i32 121, i32 35}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bus/tegra-gmi.c", i32 124, i32 35}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bus/tegra-gmi.c", i32 127, i32 35}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bus/tegra-gmi.c", i32 130, i32 35}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bus/tegra-gmi.c", i32 133, i32 35}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bus/tegra-gmi.c", i32 137, i32 42}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bus/tegra-gmi.c", i32 141, i32 4}
!60 = !{ptr @tegra_gmi_parse_dt._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tegra_gmi_parse_dt._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bus/tegra-gmi.c", i32 151, i32 37}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bus/tegra-gmi.c", i32 153, i32 4}
!66 = !{ptr @tegra_gmi_parse_dt._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tegra_gmi_parse_dt._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bus/tegra-gmi.c", i32 163, i32 3}
!70 = !{ptr @tegra_gmi_parse_dt._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tegra_gmi_parse_dt._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/bus/tegra-gmi.c", i32 171, i32 35}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/bus/tegra-gmi.c", i32 176, i32 35}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/bus/tegra-gmi.c", i32 181, i32 35}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bus/tegra-gmi.c", i32 186, i32 35}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/bus/tegra-gmi.c", i32 191, i32 35}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/bus/tegra-gmi.c", i32 196, i32 35}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/bus/tegra-gmi.c", i32 201, i32 35}
!86 = !{ptr @tegra_gmi_id_table, !87, !"tegra_gmi_id_table", i1 false, i1 false}
!87 = !{!"../drivers/bus/tegra-gmi.c", i32 302, i32 34}
!88 = !{ptr @tegra_gmi_pm, !89, !"tegra_gmi_pm", i1 false, i1 false}
!89 = !{!"../drivers/bus/tegra-gmi.c", i32 297, i32 32}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/bus/tegra-gmi.c", i32 281, i32 3}
!92 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @tegra_gmi_runtime_resume._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @tegra_gmi_runtime_resume._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"auto-init"}
!105 = !{i64 2148245943}
!106 = !{i64 730766, i64 730791, i64 730813, i64 730829, i64 730841, i64 730861, i64 730885, i64 730901, i64 730913}
!107 = !{i64 2148246131}
!108 = !{i64 2152610618}
!109 = !{i64 3075929}
!110 = !{i64 2152611066}
!111 = !{i64 2152611597}
!112 = !{i64 3076347}
!113 = !{i64 2152612297}
!114 = !{i64 2152612602}
